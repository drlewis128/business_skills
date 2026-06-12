---
name: integration-pattern-advisor
description: "Advise on integration patterns between systems. Use when the user says 'how should we integrate', 'integration design', 'webhook vs polling', 'API integration pattern', 'event-driven integration', 'how do these two systems talk', 'connect these systems', 'integration architecture', 'sync vs async integration', or 'API gateway pattern'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--system-a <name>] [--system-b <name>] [--mode <design|review|troubleshoot>]"
---

# Integration Pattern Advisor

Advise on integration patterns between systems for MBL engineering. Integration design decisions are long-lived — the pattern chosen today determines the coupling, failure modes, and maintainability of the systems for years. For MBL, integrations connect the agent layer (OpenFang, Claude API) with business systems (Monday.com, Microsoft, QuickBooks, GoHighLevel) and portfolio company platforms (Allevio, HIVE Covercy).

## When to Use
- Designing how two systems should communicate for the first time
- An existing integration is brittle, slow, or failing frequently
- Evaluating webhook vs. polling for a new connection
- Adding a new system to the MBL stack — how should it connect?
- Portfolio company integration design — connecting to MBL control plane

## Integration Patterns Reference

### Synchronous Request-Response (REST API)
```
Pattern: System A calls System B; waits for response
When to use:
  - Real-time data needed in the flow (user waiting for response)
  - Simple CRUD operations
  - Low latency tolerance
Risks:
  - System A is coupled to System B's availability
  - If System B is slow, System A is slow
  - If System B is down, System A fails
Mitigation: Circuit breaker pattern; timeout + fallback
Example: Claude API call during agent loop (synchronous — output needed immediately)
```

### Asynchronous Messaging (Event-Driven)
```
Pattern: System A publishes event; System B consumes when ready
When to use:
  - Processing can be delayed (batch, background)
  - System B doesn't need to respond to System A
  - Fan-out: one event → multiple consumers
  - Decoupling is more important than latency
Risks:
  - Eventual consistency (B hasn't processed the event yet)
  - Message ordering may not be guaranteed
  - Dead letter queues must be monitored
Example: Meeting ends → event published → summarization happens in background
```

### Webhook (Server-to-Server Push)
```
Pattern: System B registers a URL; System A calls it when events occur
When to use:
  - System A is the source of events (external platform with webhook support)
  - Near-real-time notification needed
  - Don't want to poll constantly
Risks:
  - Your endpoint must be publicly accessible
  - System A may retry on failure — must be idempotent
  - System A may not retry — must have DLQ or acknowledgment
Example: Krista.ai pushes meeting-ended webhook to MBL endpoint
```

### Polling
```
Pattern: System A periodically queries System B for new data
When to use:
  - System B doesn't support webhooks
  - Batch data expected (daily export, hourly feed)
  - Acceptable to miss events between poll cycles
Risks:
  - Latency = poll interval (not real-time)
  - Wasted API calls when nothing changed
  - Rate limit consumption even with no data
Mitigation: Use ETag/Last-Modified headers; back off when nothing changes
Example: Daily QuickBooks data pull via scheduled function
```

### API Gateway / Facade
```
Pattern: Single entry point aggregates multiple backend systems
When to use:
  - Multiple consumers need data from multiple sources
  - Want to decouple consumer from backend changes
  - Rate limiting, auth, and caching at the boundary
Example: MBL agent gateway: single endpoint that routes to QuickBooks, Monday.com, GoHighLevel
```

## MBL Integration Map

| Integration | Source | Destination | Pattern | Notes |
|------------|--------|-------------|---------|-------|
| Meeting Intelligence | Krista.ai | Claude → Monday.com | Webhook + async | Meeting end event → pipeline |
| Task automation | Claude Agent | Monday.com | REST API (sync) | Direct write on agent decision |
| Financial data | QuickBooks | MBL Reporting | Polling (daily) | No webhook support in QuickBooks |
| CRM data | GoHighLevel | Agent context | REST API (sync) | On-demand lookup |
| Allevio data | AdvancedMD | Allevio reports | Polling (within Allevio env) | PHI — no MBL access |

## Output Format

```markdown
# Integration Pattern Recommendation — <System A> ↔ <System B>
**Date:** <date> | **Advisor:** Dr. John Lewis
**Systems:** <A> → <B>
**Use case:** <what data needs to flow and why>

---

## Recommendation

**Pattern:** Webhook / REST / Async messaging / Polling
**Rationale:** <2-3 sentences — why this pattern for this use case>
**Key trade-off:** <what we're giving up for what we're gaining>

---

## Integration Design

### Authentication
- **System A → B auth:** Bearer token / API key / OAuth 2.0 / HMAC signature
- **Token storage:** Azure Key Vault (never in code or config files)
- **Rotation:** 90 days or on compromise

### Data Contract
**What data flows:**
```json
{
  "event_type": "meeting.ended",
  "meeting_id": "uuid",
  "transcript_url": "string",
  "participants": ["array"]
}
```

**Validation:** Schema validated at ingestion; reject and alert on malformed payload

### Error Handling
| Error | Action | Escalation |
|-------|--------|-----------|
| Network timeout | Retry × 3 with exponential backoff | Alert Dr. Lewis after 3 failures |
| 4xx response | Dead letter; investigate | Alert immediately |
| 5xx response | Retry; then dead letter | Alert after 3 failures |

### Idempotency
**Idempotency key:** `meeting_id` — processing the same meeting twice produces the same result (no duplicate summaries)
**Implementation:** Check `meeting_id` in processed table before processing

---

## Failure Modes and Mitigations

| Failure | Impact | Mitigation |
|---------|--------|-----------|
| Krista.ai webhook delivery fails | Meeting not summarized | Retry with backoff; DLQ for manual review |
| Monday.com API rate limited | Action items not created | Queue with retry; alert if backlog >50 items |
| Claude API unavailable | Summarization fails | DLQ; retry in 15 min; alert if >30 min down |

---

## Compliance Notes

**PHI:** Not in scope (transcripts contain no PHI for MBL meetings)
**Audit log:** Every integration call logged: timestamp, source, destination, payload hash, response code, duration

---

## Implementation Estimate

| Component | Effort | Notes |
|-----------|--------|-------|
| Webhook receiver (Azure Function) | 3 days | Auth + validation + error handling |
| Claude API integration | 2 days | Prompt + tool use + caching |
| Monday.com writer | 2 days | Action item creation API |
| Monitoring + alerts | 1 day | Pipeline health dashboard |
**Total:** ~8 engineer-days
```

## Output Contract
- Pattern recommendation always justified — "use webhooks" without "because..." is incomplete
- Idempotency always addressed — an integration that creates duplicates on retry is broken
- Error handling always designed — happy path only is not a production integration
- Compliance always addressed when PHI or financial data flows
- HITL required: Dr. Lewis approves integration design before implementation; integrations touching Allevio require compliance review; third-party API keys and tokens require Dr. Lewis provisioning

## System Dependencies
- **Reads from:** Source and destination API documentation; existing integration configurations
- **Writes to:** Integration design document (SharePoint/Engineering); ADR for significant integration decisions
- **HITL Required:** Dr. Lewis approves design; Allevio integrations require compliance review; API credentials provisioned by Dr. Lewis

## Test Cases
1. **Golden path:** Design Krista.ai → Claude → Monday.com integration → webhook pattern (Krista.ai pushes event on meeting end); async processing (Azure Function queue); Claude API with prompt caching; Monday.com REST API write; idempotent (meeting_id check); DLQ + alert; audit log; compliance: no PHI; 8 engineer-days
2. **Edge case:** QuickBooks doesn't support webhooks → polling pattern; daily scheduled pull (Azure Function timer trigger); ETag-based change detection (avoid pulling full data set daily); idempotent (upsert by QB transaction ID); alert on pull failure
3. **Adversarial:** Engineer wants to store API credentials in the `.env` file committed to git → credentials in git = credentials compromised; any committed secret is treated as compromised and must be rotated immediately; provision all credentials to Azure Key Vault; reference via environment variable at runtime; never in code or config files

## Audit Log
Integration designs retained. API credential provisioning events logged. Integration health logs maintained.

## Deprecation
Retire when MBL adopts an enterprise integration platform (Azure Integration Services, Mulesoft, or equivalent) that standardizes integration patterns across all portfolio company connections.
