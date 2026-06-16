---
name: it-integration-developer
description: "Design and build API integrations, webhooks, and iPaaS workflows. Use when the user says 'API integration', 'webhook', 'integration development', 'build integration', 'connect systems', 'API connector', 'Zapier integration', 'Power Automate connector', 'Krista integration', 'system integration', 'iPaaS', 'REST API', 'data sync', 'integration design', or 'API workflow'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--source <system name>] [--destination <system name>] [--type <REST|webhook|iPaaS|direct>] [--entity <company name>]"
---

# IT Integration Developer

Design and build integrations between business systems at MBL portfolio companies — connecting APIs, building webhooks, and creating iPaaS workflows that allow data to flow automatically between systems. Dr. Lewis builds integrations at the API level for the MBL AI orchestration project and at the iPaaS level (Krista.ai, Power Automate) for operational workflows. Every integration is documented, monitored, and maintained — the opposite of a "set it and forget it" point-to-point connection that breaks when either system updates.

## When to Use
- Two systems need to exchange data automatically (stop the manual export/import cycle)
- A Krista.ai integration needs to be designed or modified
- A Power Automate flow or Zapier Zap needs to be built or reviewed
- An existing integration is failing and needs diagnosis
- API credentials are expiring and need to be rotated
- New system onboarding requires integration with existing MBL systems
- OpenFang or custom Rust integration development

## Integration Development Framework

```
Integration types (choose the right tool for the job):
  Native connector: Built-in integration between systems (e.g., QuickBooks ↔ Bill.com)
    → Simplest and most reliable; prefer when available
    → No code required; maintained by the vendor
    
  iPaaS (no/low-code): Krista.ai, Power Automate, Zapier
    → Good for: Trigger → Action workflows; multi-step sequences; event-driven
    → Dr. Lewis designs; non-developers can maintain simple flows
    → Monitoring: Platform-native error logging; alerts configured
    
  API direct / webhook: Custom API calls; REST/GraphQL endpoints
    → Good for: Complex business logic; high data volumes; bidirectional sync
    → Dr. Lewis builds; requires API credentials and error handling
    → Documentation: API reference, auth method, rate limits, error codes
    
  Custom development (Rust/Python): OpenFang agent integrations, complex transformations
    → Dr. Lewis builds; follows OpenFang technical standards (see CLAUDE.md)
    → Testing: Unit tests + integration tests; live integration testing mandatory
    
MBL system integration map (known APIs/connections):
  Microsoft Graph API: M365 data (email, calendar, Teams, OneDrive, SharePoint)
    → Auth: OAuth 2.0 / Azure App Registration
    → Krista.ai: Primary integration (meeting transcripts, calendar, email)
    
  QuickBooks API (QBO): Financial data, P&L, transactions, vendors
    → Auth: OAuth 2.0 via Intuit developer portal
    → Rate limit: 500 API calls per minute
    → Webhooks: QBO supports webhooks for real-time event notification
    
  Bill.com API: AP, vendor payments, bill creation
    → Auth: API key + OAuth
    → Use case: Automated AP workflow, approval routing
    
  AdvancedMD API (Allevio): Appointment data, billing data, patient demographics
    → Auth: API key
    → PHI: Any AdvancedMD API call that returns patient data is PHI — HIPAA controls required
    → Rate limit: Check AdvancedMD developer portal for current limits
    
  Monday.com API: Board items, columns, updates
    → Auth: API v2 with Bearer token
    → Use case: Task creation, sprint tracking, deal pipeline updates
    
  GoHighLevel API: Contacts, opportunities, appointments, campaigns
    → Auth: API key
    → Use case: Lead sync, pipeline automation
    
  Covercy (HIVE): Check availability of API; may be export-only
  
Integration security standards:
  API credentials: Stored in password manager or Azure Key Vault — NEVER in code or plaintext
  Least privilege: API credentials scoped to minimum necessary operations (read-only if write not needed)
  Credential rotation: Rotate API keys annually or on personnel change
  PHI in integrations (Allevio): Minimum necessary PHI; BAA required; encrypted in transit
  Error logging: Never log sensitive data (PII, PHI, credentials) in error messages
```

## Output Format

```markdown
# Integration Documentation — <Source> → <Destination>
**Integration name:** [Descriptive name]
**Type:** [Native / iPaaS / API direct / Custom]
**Platform:** [Krista.ai / Power Automate / Zapier / Custom code]
**Owner:** Dr. John Lewis | **Built:** [Date] | **Last tested:** [Date]
**Entity:** [Company]

---

## Integration Summary

| Attribute | Value |
|-----------|-------|
| Source system | [System + what data] |
| Destination system | [System + what it does with the data] |
| Trigger | [What starts the integration: event, schedule, webhook] |
| Frequency | [Real-time / Every 15 min / Daily / On demand] |
| Data volume | [Estimated records per run] |
| PHI involved | Yes / No — [If yes: HIPAA controls documented below] |

---

## Integration Flow

```
[Trigger event]
  → [Step 1: Data fetched from Source]
  → [Step 2: Transformation / filtering]
  → [Step 3: Data written to Destination]
  → [Step 4: Confirmation / acknowledgment]
  → [Error handling: If any step fails → alert to Dr. Lewis]
```

---

## Credentials and Authentication

| Credential | System | Auth type | Storage | Expiry | Last rotated |
|------------|--------|----------|---------|--------|------------|
| [Credential name] | QuickBooks | OAuth 2.0 | Azure Key Vault | [Date] | [Date] |
| [API key] | Monday.com | Bearer token | 1Password vault | No expiry | [Date] |

**Never stored in:** Code repositories, SharePoint documents, email, chat messages

---

## Error Handling

| Error scenario | Behavior | Alert |
|---------------|---------|-------|
| Source API timeout | Retry 3× with 30-second backoff | Alert Dr. Lewis if all 3 fail |
| Destination write failure | Log failed record; retry next cycle | Alert if >5% of records fail |
| Auth failure (token expired) | Alert immediately; pause integration | Alert Dr. Lewis + halt |
| PHI data in error log | Never log PHI — sanitize before logging | N/A |

---

## Monitoring

| Metric | Target | Current | Alert threshold |
|--------|--------|---------|----------------|
| Success rate (7-day) | >99% | [X%] | Alert if <95% |
| Records processed (last run) | [Expected N] | [Actual N] | Alert if 0 |
| Last successful run | [Expected frequency] | [Date, Time] | Alert if 2× frequency missed |
| Error rate | <1% | [X%] | Alert if >5% |

---

## HIPAA Controls (Allevio PHI integrations only)

| Control | Status |
|---------|--------|
| BAA in place with destination system | Yes / No |
| PHI encrypted in transit (TLS 1.2+) | Yes / No |
| Minimum necessary PHI only | Yes / No |
| PHI never logged in error messages | Yes / No |
| Destination system HIPAA-eligible | Yes / No |
```

## Output Contract
- API credentials are never in code — credentials stored in a repository (even a private one) are a permanent security risk; the credential goes in Azure Key Vault, 1Password, or the Krista.ai credential store; the code references the vault, not the credential; this is enforced in code review; a credential accidentally committed to a repository is rotated immediately
- Error handling is required before deployment — an integration without error handling that fails silently is worse than no integration (at least without the automation, people notice manually); every integration has: retry logic, error logging (without PHI), and an alert to Dr. Lewis when a threshold is breached; "we'll add error handling later" means it never gets added
- Live integration tests after every change — unit tests verify that the code logic is correct; live integration tests verify that the end-to-end workflow actually produces the expected result in the real systems; this is mandatory per OpenFang technical standards and applies to all integration work, not just Rust code; a Krista.ai integration that passes local testing but fails in production because of a rate limit or API response format difference is caught only by live testing
- PHI integrations at Allevio require HIPAA controls before go-live — a new AdvancedMD integration is not deployed until: BAA is confirmed, data minimization is verified (only minimum necessary PHI), TLS encryption is confirmed, error logging is confirmed to exclude PHI; these are the pre-deployment gates; Dr. Lewis and the Privacy Officer sign off before the integration goes live
- HITL required: Dr. Lewis designs and builds all integrations; PHI integrations require Dr. Lewis + Privacy Officer sign-off (Allevio); credential management by Dr. Lewis; production deployment by Dr. Lewis; integration changes require documentation update; Matt Mathison for Krista.ai platform-level integration decisions

## System Dependencies
- **Reads from:** API documentation for all integrated systems, Azure Key Vault / 1Password (credentials), OpenFang codebase (for Rust integrations), Krista.ai admin (for Krista integrations), Microsoft Graph API, QBO API, Monday.com API, GoHighLevel API, AdvancedMD API (Allevio)
- **Writes to:** Integration documentation (SharePoint/Ops/<Company>/IT/Integrations/); integration monitoring configuration; credential vault; PHI integration controls log (Allevio)
- **HITL Required:** Dr. Lewis builds and deploys; PHI integration sign-off by Dr. Lewis + Privacy Officer (Allevio); credential rotation by Dr. Lewis; production deployment by Dr. Lewis; Krista.ai platform decisions with Matt Mathison

## Test Cases
1. **Golden path:** New Krista.ai → Monday.com integration: meeting transcript action items pushed to a Monday.com sprint board → Design: Krista receives Teams meeting transcript; extracts action items (LLM call via Krista skill); creates Monday.com tasks via Monday API (bearer token stored in Krista credential store); trigger: meeting ends in Teams; auth: Monday.com API v2, bearer token, read from Krista credential store ✅; Error handling: Monday API timeout → retry 3×; auth failure → alert Dr. Lewis immediately; no PHI involved ✅; Live test: Join a test Teams meeting; have Krista process; verify Monday task created with correct content ✅; Monitoring: Krista integration logs reviewed weekly; alert if 0 tasks created in 48 hours (likely indicates trigger failure); documentation filed
2. **Edge case:** QuickBooks OAuth token expires — all QB integrations fail → OAuth tokens expire; QBO tokens expire after 100 days; the expiry alert should have fired 14 days before expiry (if monitoring is configured correctly); check if the alert was configured: yes — but went to a deprecated email; fix: re-authorize the OAuth connection (5-minute process); update the alert routing; add the QBO token expiry to the IT calendar with a 30-day advance reminder; update Krista.ai credential with the new token; test integration with 1 QB API call ✅; note: all impacted integrations should have been halted with clear error messages rather than silent failures — verify error handling worked correctly
3. **Adversarial:** "This integration is urgent — we need to skip the PHI review and go live now at Allevio" → The PHI pre-deployment review at Allevio takes 1-2 hours; the risk of deploying a PHI integration without it is a potential HIPAA violation that requires breach notification and legal involvement; there is no business urgency that justifies this risk; the correct response: "I can have the PHI controls review completed today and deploy tomorrow; what I cannot do is deploy an AdvancedMD integration before confirming that PHI is handled correctly — the consequences of skipping that step are worse than the 24-hour delay"

## Audit Log
Integration documentation retained permanently. Credential rotation history retained. Live integration test records retained. PHI integration sign-off records retained permanently (Allevio). Error incident records retained 90 days. API rate limit incidents retained. Integration change history retained.

## Deprecation
Retire when MBL Partners has dedicated integration engineers or a managed iPaaS platform that handles integration development and maintenance — with Dr. Lewis owning Krista.ai integration architecture and PHI integration governance at Allevio. OpenFang integration development remains Dr. Lewis's domain.
