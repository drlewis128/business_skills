---
name: revops-sales-activity-tracker
description: "Track and analyze sales activity levels for MBL Partners portfolio entities. Use when the user says 'sales activity', 'activity tracking', 'how many calls did we make', 'call volume', 'email volume', 'meeting volume', 'activity log', 'rep activity', 'are reps being active', 'activity report', 'outbound activity', 'prospecting activity', 'activity metrics', 'activity KPIs', 'CRM activity logging', 'GoHighLevel activity', 'activity vs. pipeline', 'is the team doing enough activity', 'activity dashboard', 'activity summary', 'what did sales do this week', 'touchpoints', 'contact attempts', 'follow-up activity', 'activity by rep', 'weekly activity', 'monthly activity', 'activity targets', or 'are we prospecting enough'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--rep <name|all>] [--period <weekly|monthly>] [--action <report|review|alert>]"
---

# RevOps Sales Activity Tracker

Track and analyze sales activity levels across MBL Partners portfolio entities — monitoring outbound calls, emails, meetings, and follow-up touchpoints to ensure reps are generating enough activity to build the pipeline needed to hit quota. Activity is the leading indicator; pipeline is the lagging indicator; closed revenue is the outcome; managing only outcomes without watching activity produces quarter-end surprises.

## When to Use
- Weekly activity report for entity sales lead or CEO
- Diagnosing why pipeline is declining (activity may be the root cause)
- Comparing rep activity levels against minimums
- Setting activity targets for a new rep's ramp plan

## Sales Activity Tracking Framework

```
ACTIVITY TYPES (LOGGED IN GOHIGHLEVEL):
  Call Completed (outbound or inbound; logged with outcome: voicemail / connected / discovery scheduled)
  Email Sent (manually sent or tracked sequence step; not bulk marketing emails — those are in mktg-email-marketer)
  Meeting Completed (discovery call / demo / QBR / proposal presentation / negotiation call)
  LinkedIn Message Sent (connection or direct message with business intent)
  Proposal Sent (a specific activity type; linked to Stage 5 pipeline entry)
  Follow-Up Note (any other touchpoint not fitting above categories)

ACTIVITY MINIMUMS BY ENTITY AND ROLE:

  ALLEVIO (B2B benefits SaaS — longer cycle; relationship-driven):
    Full-cycle AE (prospecting + closing):
      Minimum per week: 15 outbound calls + 20 outbound emails + 4 meetings (discovery or demo)
      Minimum per month: 60 calls + 80 emails + 16 meetings
      Prospecting: ≥30% of activity must be in Stages 1-2 (prospecting; not just managing existing pipeline)
      
    SDR/BDR (if applicable; prospecting only):
      Minimum per week: 30 outbound calls + 40 outbound emails + 8 qualified demos set
      
  COLUMN6 (agency CTV — shorter cycle; meeting-intensive):
    Full-cycle AE:
      Minimum per week: 10 outbound calls + 15 emails + 5 agency meetings or demos
      Minimum per month: 40 calls + 60 emails + 20 agency meetings
      
ACTIVITY QUALITY STANDARDS:
  All activity must be logged in GoHighLevel within 24 hours of the activity
  Call outcome must be noted: did we reach anyone? what was the outcome?
  Meeting notes: key takeaways + next steps logged in GoHighLevel deal notes within 4 hours
  Sequence steps (automated emails via GoHighLevel) do not count toward the manual activity minimum
  Activity logged after the fact (>48 hours late): counts but flagged as late logging (hygiene issue)
  
ACTIVITY-TO-PIPELINE CONVERSION:
  Track the conversion from activity at each stage:
    Outbound contacts → Connected (Stage 2): what % of calls result in Stage 2?
    Stage 2 connected → Stage 3 discovery: what % book a discovery call?
    Stage 3 discovery → Stage 4 qualified: what % qualify after discovery?
  These conversion rates reveal where activity is most and least efficient; adjust prospecting approach accordingly
  
WEEKLY ACTIVITY REPORT CADENCE:
  Generated: every Monday (prior week activity)
  Recipients: entity sales lead + entity CEO (weekly); Dr. Lewis (monthly portfolio summary)
  Action trigger: rep below minimum for 2 consecutive weeks → entity CEO conversation
```

## Output Format

```markdown
# Sales Activity Report — [Entity] — Week of [Date]
**Prepared by:** RevOps | **Data source:** GoHighLevel

---

## Activity Summary

| Rep | Calls | Emails | Meetings | LinkedIn | GHL logged within 24hr? |
|-----|-------|--------|---------|---------|------------------------|
| [Name] | 18 | 22 | 5 | 3 | ✅ 95% |
| [Name] | 7 | 11 | 2 | 1 | ⚠️ 60% |

**Minimums:** Calls ≥15/week | Emails ≥20/week | Meetings ≥4/week

---

## Activity vs. Minimum

| Rep | Calls | Emails | Meetings | Status |
|-----|-------|--------|---------|--------|
| [Name] | 18/15 ✅ | 22/20 ✅ | 5/4 ✅ | On track |
| [Name] | 7/15 ⚠️ | 11/20 ⚠️ | 2/4 ⚠️ | Below minimum — 2nd week |

---

## Prospecting Mix
[% of activity in Stages 1-2 vs. later stages: is there enough top-of-funnel work?]

---

## Alerts
- [Rep name] — below minimum 2nd consecutive week → entity CEO conversation recommended
```

## Output Contract
- Activity minimums are not vanity metrics — they are grounded in the pipeline math; if Allevio's average conversion from outbound call to connected conversation is 15%, a rep needs to make 60 calls per month to get 9 connected conversations; if connected-to-discovery conversion is 60%, that produces 5-6 discovery calls; at a 37% close rate from qualified, a rep needs 8+ qualified deals in the pipeline at any time to hit quota; that pipeline only exists if the activity is being done; Dr. Lewis uses activity minimums as a leading indicator of whether next quarter's pipeline will be healthy, not as a rep management scorecard
- Prospecting mix is as important as total activity — a rep who has 30 meetings per week but all of them are with existing pipeline (Stages 4-7) is not building new pipeline; they are managing current deals; the Stage 1-2 prospecting minimum (≥30% of activity in Stages 1-2) ensures reps are building the top of the funnel that will become next quarter's pipeline; a team that only manages existing deals will always be one bad quarter from a pipeline crisis
- HITL required: rep below minimum 2 consecutive weeks → entity CEO conversation (Dr. Lewis aware); chronic under-activity (3+ weeks below minimum) → entity CEO performance conversation; activity minimum adjustments → entity CEO + Dr. Lewis; activity reporting configuration changes in GoHighLevel → Dr. Lewis notified

## System Dependencies
- **Reads from:** GoHighLevel (activity logs; call records; email logs; meeting entries; stage progression); revops-pipeline-health-monitor (pipeline health tied to activity levels); revops-quota-design-model (quota → activity minimum derivation)
- **Writes to:** Weekly activity reports (SharePoint → [Entity] → Sales → Activity → [Week]); entity CEO activity alerts; GoHighLevel (activity quality flags for late logging); Dr. Lewis monthly portfolio activity summary
- **HITL Required:** Below minimum 2 weeks → entity CEO conversation; chronic under-activity → entity CEO performance; activity minimum changes → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio weekly activity report (Week 3 of June). AE 1: 19 calls / 24 emails / 6 meetings / 2 LinkedIn (✅ all above minimum; 32% Stage 1-2 prospecting ✅). AE 2: 11 calls / 16 emails / 3 meetings (⚠️ below minimum — first week below; entity CEO notified; AE 2 explains 2 days OOO for conference — entity CEO accepts; not escalated further). No late logging issues. Activity-to-pipeline conversion this month: 13% call-to-connected (slightly below 15% baseline — entity CEO to review script with AE 2 on next 1:1). Report sent to entity CEO Monday 9am.
2. **Edge case:** GoHighLevel shows high call volume but all calls are being logged as "voicemail" with no connected conversations — possibly rep is calling unverified numbers or calling at wrong times → Dr. Lewis: "A call-to-connected rate of <5% is a red flag. Either the contact list has bad phone numbers, the reps are calling at the wrong times (outbound calling is most effective 8-9am and 4-5pm prospect local time), or the outbound script isn't generating enough callbacks. I'd like to listen to 3 call recordings from each rep this week (with their awareness) and evaluate: are the numbers valid? Is the opening compelling? What's the talk-to-listen ratio? High activity volume with 0 conversions is not activity — it's motion."
3. **Adversarial:** Sales lead argues that GoHighLevel activity logging requirements are "adding admin time and taking away from selling time" → Dr. Lewis: "I take this seriously — admin time that doesn't produce value is a real problem. Let me quantify it: logging a call in GoHighLevel takes 45-90 seconds if done immediately after the call. At 15 calls per week, that's 11-23 minutes per week. For a full-cycle AE making $80K+ in earnings, that's a very low cost for the data quality that drives accurate forecasting, commission calculations, and coaching decisions. What I'm willing to do: audit the logging workflow and reduce friction wherever possible (e.g., GoHighLevel mobile app for on-the-go logging; voice note transcription). But 'don't log activity' is not the answer."

## Audit Log
Weekly activity reports retained 90 days. Activity minimum alerts to entity CEO. Late logging flags (GoHighLevel). Monthly portfolio activity summaries. Activity-to-pipeline conversion rates tracked monthly. Entity CEO coaching conversation records triggered by below-minimum alerts.

## Deprecation
Activity minimums reviewed when entity ICP or sales process changes significantly. Prospecting mix target reviewed annually. Activity type definitions reviewed when GoHighLevel features change. Reporting cadence reviewed when entity leadership structure changes.
