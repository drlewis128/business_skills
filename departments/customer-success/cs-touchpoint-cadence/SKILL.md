---
name: cs-touchpoint-cadence
description: "Build and enforce the customer communication cadence model for MBL portfolio companies. Use when the user says 'touchpoint cadence', 'communication cadence', 'customer cadence', 'contact cadence', 'how often to contact customers', 'CS cadence', 'account cadence', 'outreach cadence', 'CS outreach schedule', 'customer communication frequency', 'how often should we talk to customers', 'build a cadence', 'cadence model', 'contact frequency model', 'CS communication plan', 'account communication plan', 'touchpoint frequency', 'engagement cadence', 'customer engagement schedule', 'what is the right cadence', or 'CS rhythm'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--tier <A|B|C|D>] [--action <build|review|enforce|report>]"
---

# CS Touchpoint Cadence

Build and enforce the customer communication cadence model for MBL portfolio companies — defining how often the CS team contacts each account tier, through which channels, for what purpose, and how to log the activity. The cadence model is the operating rhythm of the CS function; a CS team without a defined cadence operates reactively; a CS team with a defined cadence operates proactively.

## When to Use
- New CS hire (walk them through the cadence model as part of cs-onboarding-plan)
- CS Ops Review (cs-ops-review) — validate that the cadence is being followed
- A new account is assigned (set up the cadence in CRM from Day 1)
- A CS rep is missing touchpoints (coaching conversation)

## Touchpoint Cadence Framework

```
CADENCE BY TIER (ALL ENTITIES):

  PRIORITY A — Strategic Accounts:
    Weekly:
      □ Health score review and update (internal; not customer-facing)
      □ Review any open action items from last customer interaction
    
    Bi-weekly (every 2 weeks):
      □ Pulse check: brief email or call (cs-pulse-check) — "Anything on your mind?"
        Exception: Skip if a QBR occurred in the prior 2 weeks
    
    Monthly:
      □ Formal report delivery (Allevio: claim ratio report; Column6: campaign pacing/completion;
        HIVE: royalty statement accompaniment — see cs-claim-ratio-reporter; cs-campaign-performance-reporter;
        cs-landowner-communicator)
      □ Review renewal status (cs-renewal-coordinator) if within 120-day window
    
    Quarterly:
      □ QBR or equivalent (cs-qbr-preparer)
      □ Stakeholder map review (cs-stakeholder-mapper) — is relationship depth still sufficient?
      □ Success plan review (cs-success-plan-builder) — are goals on track?
    
    Annual:
      □ ROI validation report (cs-roi-validator)
      □ Health score annual trend review
      □ Tier assignment review (cs-segmentation-model)
      
  PRIORITY B — Core Accounts:
    Weekly:
      □ Health score review and update (internal)
    
    Monthly:
      □ Formal report delivery (same as Priority A)
      □ Pulse check: brief email check-in (cs-pulse-check)
    
    Quarterly:
      □ QBR (abbreviated format — 30 minutes vs. 45-60 for Priority A)
        Note: If customer declines a formal QBR, send the QBR data package as a PDF
        and follow up with a 15-minute call
      □ Renewal status review if within 90-day window
    
    Annual:
      □ ROI snapshot (abbreviated version of cs-roi-validator)
      □ Tier assignment review
      
  PRIORITY C — Grow Accounts:
    Monthly:
      □ Health score review (internal)
      □ Formal report delivery (automated where possible — cs-digital-cs-builder)
    
    Quarterly:
      □ Check-in email (semi-automated; CS rep personalizes — cs-pulse-check digital version)
    
    Semi-Annual:
      □ Abbreviated review (email-based data summary + optional 15-minute call)
      □ Renewal status review if within 90-day window
    
    Annual:
      □ Tier assignment review
      
  PRIORITY D — Maintain Accounts:
    Monthly:
      □ Automated report delivery (no CS rep action)
      □ Automated health score check (triggers CS rep flag if Red)
    
    When triggered:
      □ Escalation: human response required (any tier — cs-escalation-manager)
      □ Renewal: 90-day window minimum; human-led renewal conversation
      □ Health score Red: cs-at-risk-responder protocol regardless of tier

OPEN ENROLLMENT (ALLEVIO ONLY — SEASONAL OVERRIDE):
  Priority A and B accounts: During OE season (October-November for Jan 1 plans;
    April-May for July 1 plans), the cadence is elevated to WEEKLY human touchpoints
    regardless of normal tier cadence — OE is the most complex period for HR Directors
    
CAMPAIGN FLIGHT (COLUMN6 ONLY — ACTIVE IO OVERRIDE):
  During an active campaign: Weekly pacing reports serve as the primary touchpoint —
    no additional check-ins needed unless the pacing report reveals an issue
  IO gap (no active campaign): Default to the tier cadence; if gap >60 days for Priority B+,
    pro-active outreach to surface next IO discussion (cs-pulse-check)

CADENCE LOGGING REQUIREMENTS:
  Every customer touchpoint (call; email; report delivery; QBR) is logged in CRM:
    □ Date
    □ Method (phone; email; video; in-person)
    □ Attendees (from both sides)
    □ 1-3 sentence summary of what was discussed
    □ Any action items (who; what; by when)
  
  Dr. Lewis spot-checks 5 CRM logs per CSM per month
  Accounts with no logged touchpoint in the past 30 days (Priority A) or 60 days (Priority B)
    are flagged for Dr. Lewis review
```

## Output Format

```markdown
# Touchpoint Cadence Plan — [Account Name] | [Entity]
**Tier:** Priority [A/B/C/D] | **Assigned CSM:** [Name]
**Cadence effective date:** [Date] | **Last reviewed:** [Date]

---

## Scheduled Touchpoints

| Cadence | Activity | Method | Next date | Owner |
|---------|---------|--------|---------|-------|
| Bi-weekly | Pulse check | Email | [Date] | CS Rep |
| Monthly | Claim ratio report delivery | Email + report | [Date] | CS Rep |
| Quarterly | QBR | Video call | [Date] | CS Rep + Dr. Lewis (Priority A renewals) |
| Annual | ROI validation | In-person or video | [Date] | Dr. Lewis |

---

## Cadence Activity Log (Last 90 Days)

| Date | Type | Method | Summary | Action items |
|------|------|--------|---------|-------------|
| [Date] | Pulse check | Email | HR Director confirmed OE prep on track | None |
| [Date] | Claim ratio report | Email | Delivered Oct report — claim ratio 77% ✅ | None |
```

## Output Contract
- The cadence is a minimum, not a maximum — the cadence model defines the floor; CS reps should exceed the minimum when the account needs it (Yellow health score; renewal window; active escalation); Dr. Lewis does not penalize CS reps for exceeding the cadence; he does penalize reps for falling below it
- Missed touchpoints are a signal, not a violation — if a CSM is consistently missing the bi-weekly pulse for Priority A accounts, the root cause is either capacity (cs-capacity-planner) or prioritization; Dr. Lewis investigates before correcting; a CSM who is missing pulses because they have 14 Priority A accounts needs relief; a CSM who is missing pulses because they spend too much time on Priority D accounts needs coaching
- Logging is as important as the touchpoint — a touchpoint that isn't logged is a touchpoint that doesn't exist for reporting, handoff, or relationship continuity purposes; if a CS rep changes jobs, their successor needs the log to pick up the relationship; if a customer disputes a commitment, the log is the evidence; Dr. Lewis enforces CRM logging as a non-negotiable process discipline
- HITL required: Dr. Lewis spot-checks CRM logs monthly (5 per CSM); accounts with no logged Priority A touchpoint in 30 days or Priority B touchpoint in 60 days trigger Dr. Lewis review; Dr. Lewis reviews the cadence compliance report at the quarterly CS Ops Review; any CSM whose cadence compliance drops below 85% enters a coaching plan (cs-coaching-framework)

## System Dependencies
- **Reads from:** GoHighLevel CRM (account tier; last touchpoint date; cadence schedule; log entries); cs-segmentation-model (which accounts are in which tier? — determines the cadence requirement); cs-health-score-tracker (health score — may require cadence escalation for Yellow/Red accounts); cs-renewal-coordinator (renewal window — triggers cadence increase as renewal approaches)
- **Writes to:** Cadence plan document (GoHighLevel CRM — touchpoint schedule for each account); CRM log entries (every touchpoint logged); Dr. Lewis cadence compliance review (monthly spot-check results); cs-ops-review (Section 2 process audit — cadence compliance data); cs-coaching-framework (if CSM cadence compliance drops below 85%)
- **HITL Required:** Dr. Lewis monthly spot-check (5 CRM logs per CSM); accounts with no Priority A log in 30 days flagged to Dr. Lewis; accounts with no Priority B log in 60 days flagged to Dr. Lewis; cadence compliance below 85% triggers coaching plan; annual cadence model review approved by Dr. Lewis

## Test Cases
1. **Golden path:** Monthly cadence compliance review — CSM1; Dr. Lewis spot-checks 5 CRM logs from the last 30 days; all 5 are logged within 24 hours of the touchpoint; summaries are specific (not "called, no issues"); action items are documented with owners and due dates; Priority A touchpoint compliance: 100% (all bi-weekly pulses completed; all monthly reports logged); Priority B: 100% (all monthly reports delivered; quarterly QBRs on schedule); Dr. Lewis: "Excellent compliance. One feedback: the November 3 log for Account A is vague — 'called and everything is fine' — I need to know: what specifically did they say? What was the sentiment? What's the next touchpoint date? Three sentences minimum for Priority A logs." CSM updates log; standards reinforced
2. **Edge case:** CSM2 is missing bi-weekly pulses for 3 of their 8 Priority A accounts — Dr. Lewis reviews: the 3 accounts are all above $150K ACV; the CSM has 9 total Priority A accounts and an open enrollment season running → Dr. Lewis: "This is a capacity issue, not a motivation issue. With 9 Priority A accounts and OE season, the bi-weekly pulse requirement is genuinely difficult to execute at quality. Here's the short-term fix: I'm personally running the bi-weekly pulse for the 2 largest accounts ($185K and $162K) until OE closes. That reduces the pressure by 2 Priority A slots. The long-term fix is that 9 Priority A accounts is too many — we're starting the hire process for a second CSM. But we don't let the accounts go without a touchpoint while we figure that out." Capacity relief implemented; no missed touchpoints for Priority A accounts; hire process initiated
3. **Adversarial:** A CS rep argues that the bi-weekly pulse for a specific Priority A account "isn't necessary — they hate being called all the time" → Dr. Lewis: "If the customer has explicitly told you they prefer less contact, that's valid — and I want to hear that from you proactively, not as a reason for missing the requirement. Here's the solution: change the method, not the frequency. If they don't want phone calls, do bi-weekly emails with a relevant piece of data or insight. 'Here's your October claim ratio — 77%, on track.' Two lines. No call. But we're still touching them bi-weekly. The purpose of the bi-weekly touchpoint is to catch early signals, not to chat — and those signals don't care whether the customer likes calls." Touchpoint method changed to email; frequency maintained

## Audit Log
All touchpoint cadence plans retained by account and date. Dr. Lewis spot-check records retained (which accounts reviewed; compliance status). Cadence compliance monthly reports retained. Below-85% compliance coaching records retained. Cadence model update records retained.

## Deprecation
Retire when each portfolio company has a CS platform that auto-schedules touchpoints based on tier and flags overdue activities — with Dr. Lewis reviewing the cadence model quarterly and the CEO approving any changes to the tier cadence requirements.
