---
name: revops-sla-manager
description: "Manage and enforce revenue operations SLAs for MBL Partners portfolio entities. Use when the user says 'SLA', 'service level agreement', 'lead response SLA', 'response time', 'SLA violation', 'SLA breach', 'SLA tracking', 'SLA report', 'SLA compliance', 'SLA management', 'response SLA', 'handoff SLA', 'MQL response time', 'lead response time', 'how fast do we respond', 'response time target', 'are we hitting our SLAs', 'SLA performance', 'SLA dashboard', 'SLA by entity', 'SLA monitoring', 'SLA enforcement', 'SLA escalation', 'SLA penalty', 'SLA improvement', 'response time improvement', 'first response time', 'time to respond to leads', 'time to hand off', 'AE response time', 'CS response time', 'SLA audit', or 'response time audit'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|all>] [--sla-type <lead-response|mql-sql|handoff|cs>] [--action <report|enforce|audit|escalate>] [--period <7|30|90>]"
---

# RevOps SLA Manager

Manage and enforce revenue operations SLAs across MBL Partners portfolio entities — tracking response time targets for leads, MQL-to-SQL conversion, AE-to-CS handoffs, and customer success responses, flagging violations, and escalating persistent SLA failures. SLAs are the operational backbone of a revenue machine; when they slip, pipeline slows before anyone notices in the revenue numbers.

## When to Use
- Weekly SLA compliance check
- Investigating a pipeline slowdown or dropped lead
- Reporting SLA performance to entity CEO
- Escalating persistent SLA violations

## SLA Framework

```
SLA DEFINITIONS BY ENTITY:

  ALLEVIO:
    Lead response SLA (inbound — form/event/referral): ≤4 business hours to first contact attempt
    Lead response SLA (broker-referred): ≤8 business hours (broker relationship courtesy)
    Lead response SLA (cold outbound): no SLA — AE-managed cadence
    MQL → SQL determination: ≤48 hours from MQL tag creation (does this meet SQL criteria?)
    AE → CS handoff: ≤48 hours after Closed Won (handoff document delivered to CS lead)
    CS acknowledgment: ≤24 hours after receiving handoff document
    CS kickoff scheduled: ≤5 business days from contract signature
    CS kickoff delivered: ≤10 business days from contract signature
    CS to employer inquiry response: ≤4 business hours during business hours
    
  COLUMN6:
    Lead response SLA (inbound — agency inquiry): ≤2 hours (agency moves fast)
    Tier 1 named account (entity CEO owns): ≤1 hour (high-value relationship)
    MQL → SQL determination: ≤24 hours
    AE → CS handoff: ≤48 hours after IO signature
    CS acknowledgment: ≤24 hours
    CS kickoff scheduled: ≤3 business days (agencies run on tight campaign timelines)
    Agency inquiry response (live campaign): ≤1 business hour
    
  HIVE (minimal pipeline SLAs — LP/investor relations):
    LP distribution notice response: ≤24 hours (when LP acknowledges receipt)
    LP inquiry response (operational question): ≤48 hours
    WTI trigger alert response: ≤4 hours (acquisition pause decision — Dr. Lewis)

SLA MEASUREMENT:
  Source: GoHighLevel activity log timestamps (first contact attempt logged vs. MQL creation time)
  Limitation: GHL timestamps are only as accurate as AE logging discipline
  Weekly check: Dr. Lewis pulls SLA report from GHL → flag any inbound MQL >4 hours without logged activity
  
SLA COMPLIANCE SCORING:
  Weekly SLA compliance = (SLAs met in period) / (total SLAs triggered in period)
  Target: ≥90% SLA compliance weekly across all entity types
  At Risk: <80% compliance for 2+ consecutive weeks → entity CEO escalation
  Green: ≥90% | Yellow: 80-89% | Red: <80%

SLA VIOLATION ESCALATION PROTOCOL:
  First violation: AE/CS lead acknowledgment + root cause (logged in GHL notes)
  Second violation (same rep or type in same month): entity CEO notified
  Third violation or systemic pattern (>20% of SLAs): entity CEO + Dr. Lewis review; process intervention
  HIPAA note: for Allevio, SLA violations that affect employer onboarding timeliness are logged separately from clinical data — no PHI in SLA tracking
```

## Output Format

```markdown
# SLA Compliance Report — [Entity] — Week of [Date]
**Reviewed by:** Dr. Lewis | **Source:** GoHighLevel activity log

---

## SLA Compliance Summary

| SLA Type | Triggered | Met | Violated | Compliance | Status |
|----------|----------|-----|---------|-----------|--------|
| Inbound lead response (≤4hr) | [N] | [N] | [N] | X% | ✅/⚠️/🔴 |
| MQL → SQL determination (≤48hr) | [N] | [N] | [N] | X% | |
| AE → CS handoff (≤48hr) | [N] | [N] | [N] | X% | |
| CS kickoff scheduled (≤5 days) | [N] | [N] | [N] | X% | |

**Overall compliance: X% | Status: Green / Yellow / Red**

---

## Violations This Week

| Account | SLA type | SLA target | Actual | Violation by | Rep/Owner | First or Repeat? |
|---------|---------|-----------|--------|-------------|---------|-----------------|
| [Company] | Inbound response | ≤4hr | 7hr | 3hr | [AE Name] | First |

---

## Escalations Required
[None / List escalations with owner and due date]
```

## Output Contract
- SLA compliance is a leading indicator of pipeline health — a lead response SLA violation means an interested employer waited 8 hours before hearing from Allevio; in a market where competing benefits consultants respond in 2 hours, that 8-hour delay has a measurable conversion cost; Dr. Lewis tracks lead response SLA compliance weekly not because it's a bureaucratic checkbox but because it's the earliest signal of a sales team that is stretched thin, poorly prioritizing, or not using GHL consistently; if the SLA report is green every week for a quarter and then goes yellow, something changed — volume increased, rep had a personal issue, or the routing process broke — and it's better to know from the SLA report than from a closed-lost deal 3 months later
- Escalation should be matter-of-fact, not punitive — when Dr. Lewis escalates a persistent SLA violation to an entity CEO, the framing is always: "here's what the data shows, here's the potential revenue impact, and here's what I'd like us to try"; it is never "your AE is not performing"; the SLA report is a diagnostic tool, not a disciplinary document; entity CEOs who receive SLA data in this spirit tend to use it productively; entity CEOs who receive it as criticism tend to get defensive; BLUF + data + recommendation = the format that works
- HITL required: SLA compliance <80% 2+ weeks → entity CEO escalation; systemic SLA pattern → entity CEO + Dr. Lewis; SLA process change → entity CEO approves; Column6 Tier 1 account SLA violation → entity CEO immediate notification; Allevio broker-referred lead SLA violation → Dr. Lewis reviews (broker relationship risk); weekly SLA report → entity CEO receives

## System Dependencies
- **Reads from:** GoHighLevel (activity logs; timestamps; MQL creation dates; handoff document dates; CS acknowledgment dates); revops-lead-routing-manager (routing rules and SLA commitments); revops-cs-handoff-ops (handoff SLA standards)
- **Writes to:** SLA compliance reports (SharePoint → [Entity] → RevOps → SLA → [Week]); entity CEO SLA summary; escalation records; SLA violation log; Dr. Lewis portfolio SLA dashboard (quarterly)
- **HITL Required:** <80% compliance → entity CEO; systemic pattern → entity CEO + Dr. Lewis; SLA process change → entity CEO; Column6 Tier 1 violation → entity CEO immediate; broker SLA violation → Dr. Lewis

## Test Cases
1. **Golden path:** Allevio Week of June 22 SLA report. Inbound lead response: 3 triggered; 3 met (100% ✅). MQL→SQL determination: 4 triggered; 3 met; 1 violated (48hr target; actual 61hr; 27% over; AE on PTO). First violation for this AE → logged in GHL notes; entity CEO notified per protocol. AE→CS handoff: 1 triggered; 1 met (✅). CS kickoff scheduled: 1 triggered; 1 met (✅). Overall compliance: 87% (Yellow ⚠️). Entity CEO receives report. No further escalation for first Yellow week.
2. **Edge case:** GoHighLevel does not have a first contact attempt logged, but the AE asserts they called the lead within 1 hour (just didn't log it) → Dr. Lewis: "I understand you made the call — but the SLA can only be measured by what's in GHL. If it's not logged, it didn't happen from a measurement standpoint. I'm not marking this as a violation that goes on your record — I'm logging it as 'unverified' and I'm also logging this as a data quality issue: SLA compliance depends on activity logging within 24 hours of every contact attempt. Going forward, if you make a call, log it in GHL immediately — even a brief note: 'Called; no answer; voicemail left.' That protects you and keeps the report accurate."
3. **Adversarial:** Entity CEO argues that SLA tracking is "micromanagement" and the team should be trusted to respond to leads in a timely fashion → Dr. Lewis: "I agree completely that the team should be trusted. The SLA report isn't about trust — it's about knowing when the system is breaking before a lead gets lost. If the report is green every week, we don't talk about it. But if a Chandler employer submitted a demo request on a Monday morning and no one called them until Thursday afternoon, I need to know that — not to discipline the AE, but to understand whether the routing broke, whether the AE was overwhelmed with late-stage deals, or whether the inbound volume spiked unexpectedly. I'll know that from the SLA report. I won't know it from the revenue number for 90 days."

## Audit Log
Weekly SLA compliance reports (archived 2 years). SLA violation records with AE/owner and root cause. Escalation records with entity CEO and resolution. SLA benchmark documentation. GHL activity log review records. Portfolio SLA dashboard (quarterly). Process intervention records.

## Deprecation
SLA targets reviewed when entity ICP or market conditions change. Measurement methodology reviewed when GHL logging practices mature. Escalation protocol reviewed when entity team size changes. Column6 SLA reviewed when agency buyer behavior changes. Cadence reviewed when entity volume grows.
