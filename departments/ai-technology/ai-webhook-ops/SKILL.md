---
name: ai-webhook-ops
description: "Manage webhook pipelines for MBL AI automation and Krista.ai orchestration. Use when the user says 'webhook', 'webhooks', 'webhook setup', 'webhook configuration', 'webhook management', 'webhook trigger', 'webhook payload', 'webhook endpoint', 'webhook URL', 'webhook secret', 'webhook security', 'webhook authentication', 'webhook failure', 'webhook not firing', 'webhook not working', 'webhook error', 'webhook debugging', 'webhook retry', 'webhook test', 'webhook log', 'webhook audit', 'trigger automation', 'event trigger', 'event-driven', 'real-time trigger', 'automation trigger', 'Zapier', 'Make', 'Integromat', 'n8n', 'Monday.com webhook', 'GoHighLevel webhook', 'GHL webhook', 'Krista webhook', 'Microsoft Teams webhook', 'incoming webhook', 'outgoing webhook', 'webhook vs API', 'polling vs webhook', 'webhook payload signature', 'HMAC', 'webhook secret key', 'webhook retry logic', 'webhook idempotency', or 'event-driven automation'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--system <monday|ghl|microsoft|krista>] [--action <setup|test|debug|audit|rotate-secret>]"
---

# AI Webhook Ops

Manage webhook pipelines for MBL AI automation and Krista.ai orchestration — setting up, securing, testing, and troubleshooting webhooks that trigger AI workflows from MBL system events. Webhooks are the event-driven triggers that make AI workflows real-time: when a meeting ends, a webhook fires; when a Monday.com item changes status, a webhook fires; when a GHL contact is tagged, a webhook fires.

## When to Use
- Setting up a new webhook to trigger a Krista.ai workflow
- Debugging a webhook that stopped firing or is delivering malformed payloads
- Quarterly webhook security audit (secret rotation; endpoint verification)
- Deciding whether to use a webhook vs. API polling for a new integration

## Webhook Operations Framework

```
MBL WEBHOOK ARCHITECTURE:

  WHERE WEBHOOKS ARE USED:
    Meeting end → Krista.ai transcription trigger:
      Source: Microsoft Teams (meeting recording webhook or calendar event completion)
      Trigger: meeting ends → webhook fires → Krista.ai initiates transcription + summarization
      
    Monday.com status change → Krista.ai action trigger:
      Source: Monday.com item status changes (webhook subscribed to board)
      Trigger: item moves to "In Review" → Krista.ai drafts update email; sends to Dr. Lewis for HITL review
      
    GHL contact event → Krista.ai workflow trigger:
      Source: GHL contact tag added; pipeline stage changed
      Trigger: contact tagged "follow-up" → Krista.ai drafts outreach message for Dr. Lewis review
      
    External → Krista.ai inbound:
      Krista.ai exposes a webhook URL for external systems to trigger specific workflows
      Only MBL-controlled systems send to Krista.ai webhook endpoints (no public-facing endpoints)
      
WEBHOOK SECURITY STANDARDS:
  Signature verification (HMAC-SHA256): REQUIRED for all incoming webhooks
    → Sending system includes X-Signature or X-Webhook-Signature header
    → Receiving system (Krista.ai or MBL middleware) verifies signature before processing
    → Reject any payload that fails signature verification; log the rejection
  Webhook secrets: treated as API keys (secure storage; quarterly rotation; per-integration)
  HTTPS only: no HTTP webhook endpoints; all endpoints must have valid TLS certificate
  Timestamp check: reject payloads with timestamp >5 minutes old (prevents replay attacks)
  
WEBHOOK TROUBLESHOOTING PROTOCOL:
  Step 1: Is the webhook firing?
    → Check source system webhook log (Monday.com → Admin → Webhooks → Activity Log)
    → If not firing: verify webhook is still subscribed and the trigger event is occurring
    
  Step 2: Is the payload arriving at Krista.ai?
    → Krista.ai webhook intake log
    → If not arriving: network issue; URL changed; SSL certificate problem
    
  Step 3: Is the payload being processed correctly?
    → Krista.ai workflow execution log
    → If failing: payload format changed; schema mismatch; signature verification failure
    
  Step 4: Is the workflow completing?
    → Check full workflow execution log (ai-integration-monitor for observability)
    
WEBHOOK VS API POLLING:
  Use webhook when:
    → Event is infrequent but time-sensitive (meeting ended; contact tagged; status changed)
    → Source system supports webhooks (Monday.com; GHL; Teams)
    → Real-time response matters (meeting summary should be ready within 2 hours of meeting end)
  Use API polling when:
    → Source system doesn't support webhooks (some QuickBooks data reads)
    → Consistency matters more than immediacy (financial report: nightly batch pull is fine)
    → Webhook volume would be too high (high-frequency events → polling is more efficient)
```

## Output Format

```markdown
# Webhook Audit Report — [Date]
**Prepared by:** Dr. Lewis

---

## Active Webhooks

| Integration | Source → Destination | Secret Rotated | Last Fired | Status |
|-------------|----------------------|---------------|------------|--------|
| Teams Meeting End → Krista | Teams → Krista.ai | [Date] | [Date] | 🟢 Active |
| Monday Status → Krista | Monday.com → Krista.ai | [Date] | [Date] | 🟢 Active |
| GHL Tag → Krista | GHL → Krista.ai | [Date] | [Date] | 🟡 Secret due |

---

## Issues
- [GHL webhook secret rotation overdue — schedule before end of week]

## Webhook Event Log (last 7 days)
| Date | Webhook | Events | Errors | Error Rate |
|------|---------|--------|--------|------------|
| [Date] | Teams → Krista | 12 | 0 | 0% |
| [Date] | Monday → Krista | 8 | 1 | 12.5% |
```

## Output Contract
- Signature verification is the primary webhook security control — an unsigned webhook endpoint is an open door for anyone who discovers the URL to trigger MBL's AI workflows with arbitrary payloads; a webhook trigger for meeting summaries that accepts any payload without signature verification could be used to inject false "meeting transcripts" into the meeting intelligence workflow; Dr. Lewis configures signature verification on every webhook endpoint before the endpoint goes live; the webhook secret is treated with the same security posture as an API key (stored securely; never in code; quarterly rotation); if a webhook is discovered to be running without signature verification, it is suspended immediately and reconfigured before reactivation
- Webhook failures are monitored, not ignored — a webhook that silently fails means AI workflows stop without anyone knowing; Dr. Lewis configures alerting in ai-integration-monitor for webhook failure rates >5% in a 24-hour window; a meeting-end webhook that fails means the meeting summary isn't generated, and Dr. Lewis discovers this in the Monday morning review rather than immediately; the monitoring alert catches it within 30 minutes; webhook failures are investigated against the 4-step troubleshooting protocol before assuming the source system is at fault (often the issue is a schema change in the payload)
- HITL required: new webhook endpoint → Dr. Lewis creates and tests; webhook secret → Dr. Lewis stores and rotates; webhook receiving external triggers → MBL-controlled sources only (no public-facing endpoints that accept triggers from unknown sources); webhook failure on high-priority workflow (meeting intelligence) → Dr. Lewis investigates within 2 hours; webhook security audit → Dr. Lewis quarterly; webhook changes from source system (payload schema change; URL change) → Dr. Lewis updates receiving workflow before reactivating

## System Dependencies
- **Reads from:** Microsoft Teams webhook activity (admin center); Monday.com Admin → Webhooks → Activity Log; GHL Settings → Webhooks; Krista.ai webhook intake log; Krista.ai workflow execution log; network monitoring (webhook delivery status); TLS certificate status
- **Writes to:** Webhook configuration (Krista.ai; source system admin); webhook secret rotation log (SharePoint → MBL → IT → API Management → Webhook Log); webhook audit report (quarterly; SharePoint); alert configurations (ai-integration-monitor); webhook troubleshooting records
- **HITL Required:** New webhook setup → Dr. Lewis; webhook secret rotation → Dr. Lewis; webhook enabling external triggers → Dr. Lewis approves source; high-priority workflow failure → Dr. Lewis investigates within 2 hours; webhook schema change → Dr. Lewis updates before reactivating; quarterly audit → Dr. Lewis

## Test Cases
1. **Golden path:** Setting up the Teams Meeting End → Krista.ai transcription trigger webhook. (1) In Krista.ai: create inbound webhook endpoint; Krista generates URL + secret. (2) In Microsoft Teams Admin: configure meeting ended event to POST to Krista.ai URL; configure shared secret for HMAC-SHA256 signature. (3) Test: start and end a test Teams meeting (15 seconds); verify webhook fires (Teams webhook log: ✅ delivered); verify Krista.ai receives payload (Krista intake log: ✅ received; signature: ✅ verified); verify Krista.ai initiates transcription workflow. (4) Log: webhook ID; source; destination; secret stored in MBL secrets manager; secret rotation scheduled quarterly. (5) Monitor: configure ai-integration-monitor alert for this webhook (failure rate >5% → Dr. Lewis alert).
2. **Edge case:** Monday.com changes the webhook payload schema in a platform update — the "status" field is renamed to "column_values[0].text" in the new format. Krista.ai workflow breaks (payload parsing fails; no items are being processed). Troubleshooting: Step 1 — webhook is firing (Monday log shows delivery); Step 2 — payload arriving at Krista.ai (Krista intake log shows receipt); Step 3 — payload processing fails (schema mismatch error in Krista.ai execution log; field "status" not found); Step 4 — fix: update Krista.ai workflow to parse the new payload format. Go-live: update and test with a test Monday.com item status change; verify correct processing. Log: Monday.com schema change June 22; Krista.ai workflow updated; no data loss during 4-hour outage; ai-integration-monitor alerted Dr. Lewis within 30 minutes of first failure.
3. **Adversarial:** Someone discovers the Krista.ai inbound webhook URL and begins sending test payloads to see what triggers (could be a security researcher or a malicious actor) → Dr. Lewis detects via ai-integration-monitor: sudden spike in Krista.ai inbound webhook events (32 events in 10 minutes; all from an IP not matching any MBL system; all failing signature verification). Action: "Krista.ai webhook endpoint is receiving unauthorized traffic. Actions: (1) Krista.ai team: generate a new webhook URL + secret (invalidating the old URL immediately); (2) Update the URL in all legitimate source systems (Teams; Monday.com; GHL); (3) Verify all legitimate webhooks are firing to the new URL before closing the old one; (4) Log: unauthorized webhook probing attempt — endpoint rotated; no payloads were processed (signature verification correctly rejected all attempts); Matt Mathison brief note: 'Minor security event — webhook URL discovered externally; rotated; no impact to workflows.'"

## Audit Log
Webhook configuration records (all active webhooks; source; destination; secret rotation dates; SharePoint). Secret rotation log (quarterly). Webhook activity logs (firing frequency; error rates; from monitoring). Troubleshooting records (all webhook failures investigated). Security events (unauthorized webhook delivery attempts; endpoint rotation records). Schema change adaptation records.

## Deprecation
Webhook architecture reviewed when Krista.ai or source systems change webhook implementation. Security standards reviewed when HMAC or TLS standards evolve. Troubleshooting protocol reviewed after each significant webhook failure. Webhook inventory reviewed when MBL adds or removes systems. Rotation schedule reviewed when security standards change.
