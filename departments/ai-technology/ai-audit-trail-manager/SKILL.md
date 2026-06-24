---
name: ai-audit-trail-manager
description: "Manage audit trails for MBL Partners AI operations, decisions, and actions. Use when the user says 'audit trail', 'AI audit trail', 'AI audit log', 'audit log', 'AI decision log', 'AI action log', 'AI record keeping', 'AI accountability', 'AI traceability', 'AI decision traceability', 'who approved this', 'who authorized this', 'AI decision history', 'AI output history', 'audit records', 'AI compliance records', 'AI documentation', 'AI evidence', 'AI paper trail', 'AI activity log', 'AI approval records', 'HITL records', 'human approval records', 'AI oversight records', 'AI governance records', 'AI regulatory audit', 'AI audit readiness', 'AI audit defense', 'reconstruct AI decision', 'AI incident investigation', 'AI log review', 'AI log query', 'where are the AI records', 'AI recordkeeping policy', 'AI records retention', or 'AI compliance evidence'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--workflow <name>] [--entity <mbl|allevio|hive|column6>] [--action <create|query|review|retain|incident>]"
---

# AI Audit Trail Manager

Manage audit trails for MBL Partners AI operations — ensuring every significant AI decision, output, HITL approval, and action is logged, retained, and queryable. The audit trail is MBL's defense in any regulatory investigation, LP inquiry, or internal incident review; a well-maintained audit trail turns "what did the AI do?" from a crisis into a 10-minute investigation.

## When to Use
- Setting up audit logging for a new Krista workflow or Claude integration
- Querying the audit trail after a reported AI error or incident
- Quarterly audit trail completeness review
- Responding to a regulatory inquiry or LP question about AI decisions

## Audit Trail Management Framework

```
WHAT MUST BE LOGGED (for every MBL AI application):

  INPUT RECORD:
    What data entered the AI (source; timestamp; summary — not raw PHI)
    For meeting intelligence: meeting name; date; participant count (not names for external participants)
    For financial AI: entity; data type; date range (not specific financial figures in the log)
    For Allevio: aggregate data description; PHI confirmed absent (or: "PHI review required — held")
    
  OUTPUT RECORD:
    Summary of AI output produced (type; destination; timestamp)
    Quality score (if assessed)
    Whether output passed HITL review or was rejected (with rejection reason)
    
  HITL RECORD:
    Who reviewed (Dr. Lewis; entity CEO; Matt Mathison)
    When reviewed (timestamp)
    Decision: approved / approved with edits / rejected
    If rejected: reason code (accuracy; completeness; tone; compliance; scope)
    
  DISTRIBUTION RECORD:
    What was distributed (meeting summary; LP communication; employer report)
    To whom (recipients; distribution list)
    When distributed (timestamp)
    Channel (email; Teams; SharePoint)
    
  INCIDENT RECORD (if applicable):
    Incident type (PHI exposure; wrong output distributed; unauthorized action)
    Discovery: who discovered; when; how
    Immediate response: what was done in first hour
    Investigation: root cause
    Resolution: what was corrected; who was notified
    
LOG RETENTION:
  Standard AI logs: 24 months (matching meeting transcript retention)
  Financial AI logs: 7 years (matching financial record retention)
  HIPAA-related logs (Allevio): 6 years from creation or last effective date
  Incident logs: permanently retained
  
LOG STORAGE:
  Primary: SharePoint → MBL → AI Strategy → Audit Logs → [Category] → [Year]
  Entity-specific: SharePoint → [Entity] → AI → Audit Logs → [Year]
  Allevio HIPAA logs: SharePoint → Allevio → Compliance → HIPAA → AI Audit → [Year]
  
LOG QUERYING:
  By workflow: "show me all Meeting Intelligence outputs for June 2026"
  By entity: "show me all Allevio AI activity for Q2 2026"
  By decision: "who approved the LP communication sent June 15?"
  By incident: "what was the sequence of events for the June 8 PHI flag?"
  By HITL outcome: "how many outputs were rejected vs. approved in Q2?"

AUDIT READINESS (what Dr. Lewis can produce within 24 hours if asked):
  Complete list of all AI applications active at MBL
  For each application: what data it processes; who approved deployment; HITL gate structure
  6-month log of outputs, HITL decisions, and distribution records
  Any incident records with full investigation documentation
  Vendor BAA and DPA records (current and expired)
```

## Output Format

```markdown
# Audit Trail Query — [Query Type] | [Date Range]
**Queried by:** Dr. Lewis | **Query:** [What was requested]

---

## Results

| Date | Workflow | Input Summary | Output Type | HITL | Distributed To | Status |
|------|----------|--------------|-------------|------|---------------|--------|
| [Date] | Meeting Intelligence | MBL Portfolio Review | Meeting summary | Dr. Lewis ✅ | Matt M. + Jimmy | Sent |
| [Date] | Allevio Billing | June employer billing | Billing summary | Dr. Lewis ✅ | Allevio entity CEO | Sent |

---

## Incident Records in Period
[None / List any incidents]

## Compliance Status
- HIPAA logs current: ✅
- Retention policy compliant: ✅
```

## Output Contract
- Audit logs are created at the time of the event, not reconstructed after the fact — Dr. Lewis logs AI outputs and HITL decisions in real-time (or within the same workflow session), not from memory or partial records days later; a reconstructed audit trail is not an audit trail — it is a narrative; the Krista workflow includes a logging step after every HITL gate action; the log is automated where possible and manual where needed (Dr. Lewis notes the HITL decision in the audit log when he approves or rejects a Krista output); the test for a good audit trail: if Dr. Lewis were unavailable for 6 months and someone else needed to reconstruct what AI decisions were made and why, could they do it from the logs alone? If the answer is yes, the audit trail is sufficient
- Incident logs are the highest-priority audit records — when any AI incident occurs (PHI exposure; wrong output distributed; unauthorized action attempt), the incident record is created immediately and includes: what happened; when; how discovered; what was done in the first hour; who was notified and when; root cause; resolution; prevention; incident records are never deleted and never modified after the fact; corrections are made as addenda ("Addendum [date]: additional information — [detail]")
- HITL required: audit trail setup → Dr. Lewis designs; Allevio audit trail → HIPAA retention requirements enforced (6 years); incident records → created immediately; not modifiable after creation; regulatory inquiry → Dr. Lewis coordinates response; LP inquiry about AI decisions → Matt Mathison reviews Dr. Lewis's response before providing; audit trail access → Dr. Lewis (full); Matt Mathison (full); entity CEOs (entity-specific); external parties only with legal counsel guidance

## System Dependencies
- **Reads from:** Krista.ai workflow logs (automated execution records); Claude API logs (Anthropic Console — model; token counts; timestamps); SharePoint (document creation and modification logs); Teams (meeting records; HITL approval reply logs); email (distribution confirmation records); Dr. Lewis manual log entries (HITL decisions; incident records)
- **Writes to:** Audit log files (SharePoint; by category and year); incident reports (SharePoint → AI Strategy → Incidents); HIPAA audit logs (SharePoint → Allevio → Compliance → HIPAA → AI Audit); retention schedule tracker; audit readiness summary
- **HITL Required:** Audit trail setup → Dr. Lewis designs; HIPAA logs → 6-year retention enforced; incident records → immediate creation; regulatory inquiry → Dr. Lewis + legal counsel; LP inquiry → Matt Mathison reviews Dr. Lewis response; external audit → legal counsel guides; audit trail access for external parties → legal counsel required

## Test Cases
1. **Golden path:** LP asks Matt Mathison: "Can you tell me how the quarterly LP report was prepared — was any of it AI-generated?" Matt Mathison asks Dr. Lewis to produce the audit trail. Dr. Lewis pulls from SharePoint → HIVE → AI → Audit Logs → 2026 → Q2: "HIVE Q2 LP Report — Draft created: June 15 2026; AI (Claude Sonnet-4-6) used to synthesize production data narrative; HITL review: Dr. Lewis (June 15 12:34pm); HITL review: HIVE entity CEO (June 16 9:15am); Matt Mathison approval: June 17 11:00am; distributed: June 17 2:30pm to [LP distribution list]." Full audit trail available in 5 minutes. LP satisfied with transparency. Matt Mathison notes this as a strength of MBL's AI governance.
2. **Edge case:** After a PHI incident at Allevio, Dr. Lewis needs to reconstruct the exact sequence of events for the breach risk assessment → Dr. Lewis: "Pulling from HIPAA audit log: June 8 Allevio employer meeting — transcript processed by Krista [9:15am]; meeting summary draft generated [9:20am]; Dr. Lewis HITL review [10:02am — found PHI-adjacent language; workflow suspended at 10:03am]; Allevio entity CEO notified [10:05am by Teams]; legal counsel notification email sent [10:07am]. Full chain of custody: input (meeting transcript, 47 minutes) → AI processing → draft output (PHI-adjacent language found) → immediate suspension — no external distribution. Breach risk assessment: PHI-adjacent language was in the AI draft but was caught by Dr. Lewis before any external distribution. Risk: low (contained internally). Conclusion: near-miss, not a breach. Documentation complete for legal counsel review."
3. **Adversarial:** An entity CEO asks Dr. Lewis to "clean up" the audit log for a meeting where some embarrassing business decisions were discussed, to "remove any reference to the options we discussed before settling on the final decision" → Dr. Lewis: "I can't modify the audit log — once an entry is created, it's a permanent record. The audit trail exists precisely so that decisions can be reconstructed accurately, including the options that were considered before the final decision was made. The deliberation process is part of the record. What I can do: add context to the record (an addendum noting that the final decision was [X] and the other options were not pursued) — but I can't remove the original entry. If you're concerned about the content of the meeting being discoverable in litigation, that's a conversation for legal counsel about our document retention policy — not something I can address by modifying the audit log."

## Audit Log
Audit trail setup records (all workflows; all dates). Retention schedule compliance records. Incident records (permanent; never deleted). HIPAA audit log retention records (6 years from creation). Quarterly completeness review records. Regulatory inquiry response records. LP inquiry response records. External access authorization records.

## Deprecation
Audit trail format reviewed when new AI workflows are added. Retention periods reviewed when regulations change (HIPAA; SEC; state AI regulations). Storage location reviewed when SharePoint structure changes. Incident record format reviewed after any significant incident (lessons applied). Quarterly completeness review cadence reviewed as AI fleet grows.
