---
name: cs-claim-ratio-reporter
description: "Build and deliver monthly claim ratio reports for Allevio employer group customers. Use when the user says 'claim ratio report', 'claim ratio', 'monthly claim report', 'Allevio claim report', 'employer claim ratio', 'benefits claim report', 'claims data report', 'build a claim ratio report', 'send the claim ratio report', 'claim ratio for this group', 'what is the claim ratio', 'PMPM report', 'cost per member', 'claims cost report', 'member claims data', 'employer benefits report', 'monthly benefits report', 'EOB summary', 'claims trend report', 'employer group performance report', or 'Allevio monthly report'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--account <employer group name>] [--month <YYYY-MM>] [--action <build|review|send|analyze>]"
---

# CS Claim Ratio Reporter

Build and deliver monthly claim ratio reports for Allevio employer group customers — translating AdvancedMD claims data into a clear, employer-facing summary that shows the HR Director and CFO exactly how their plan is performing, where the cost is coming from, and whether the trend is moving in the right direction. The monthly claim ratio report is the primary instrument of value demonstration for Allevio accounts; it is sent every month without exception; it is the foundation of every renewal conversation.

## When to Use
- Monthly (between the 5th and 10th of each month — prior month data)
- A specific employer group has a claim ratio spike and needs an immediate analysis
- Preparing for a QBR (the last 3 months of claim ratio reports are the QBR foundation)
- Renewal preparation (Year 1 claim ratio trend is the primary value story)

## Claim Ratio Reporting Framework

```
DATA SOURCES:
  Primary: AdvancedMD — pull the monthly claims report for the employer group
    - Active member count (as of the last day of the month)
    - Total claims paid (all claims for members in the group; aggregate — no individual member data)
    - Premium collected (PMPM × active member count × relevant month)
  
  HIPAA CONSTRAINT: The employer-facing report shows ONLY aggregate data
    □ NO individual member names in the employer report
    □ NO diagnosis codes or specific medical procedures in the employer report
    □ Claim categories are shown at the aggregate level:
        Preventive care; Primary care; Specialty care; Emergency/Urgent; Pharmacy;
        Other (do not provide subcategories that could identify an individual)
    □ Dr. Lewis reviews all Allevio reports for HIPAA compliance before they are sent
    
CLAIM RATIO CALCULATION:
  Claim ratio = Total claims paid ÷ Total premium collected × 100%
  Example: Total claims $68,000 ÷ Total premium $88,000 = 77.3% claim ratio
  
  PMPM (Per Member Per Month):
    Premium PMPM = Total premium ÷ active member count
    Claims PMPM = Total claims ÷ active member count
    Net PMPM = Premium PMPM − Claims PMPM (Allevio's margin per member per month)
    
REPORT CONTENT (5 sections):

  1. HEADLINE (1 table):
     Active members this month: [N]
     Claim ratio this month: [X]%
     YTD claim ratio: [X]% (cumulative January-[current month])
     Target claim ratio: <[X]% (from success plan)
     Status: On track ✅ / Above target ⚠️ / Significantly above target ❌
     
  2. TREND (chart or table — 6 rolling months):
     Month | Active members | Claims paid | Premium | Claim ratio
     This shows whether we're improving, stable, or worsening
     
  3. COST CATEGORY BREAKDOWN (aggregate, no PHI):
     Category | % of total claims | Trend vs. last month
     Preventive care | 8% | Stable
     Primary care | 22% | ↑ 3% (more primary care visits = clinical model working)
     Specialty care | 31% | ↓ 2%
     Emergency/Urgent | 18% | ↑ 5% ← note: high ED use is an opportunity for clinical intervention
     Pharmacy | 15% | Stable
     Other | 6% | Stable
     
  4. CONTEXT AND EXPLANATION:
     Plain English explanation of the month's results
     If above target: "Your claim ratio of 84% this month is above our 80% target. The primary
       driver is emergency care utilization, which increased 5% from last month. Our clinical team
       is reviewing the pattern and will reach out to members who are using the ED for conditions
       that could be addressed in a primary care setting. We expect to see improvement over the next
       60-90 days as clinical outreach takes effect."
     If at or below target: "Your claim ratio of 77% this month continues the positive trend —
       this is the 4th consecutive month below our 80% target. Your annualized savings vs. your
       prior carrier run rate is now $[X]K."
     
  5. NEXT STEPS:
     What is Allevio doing in response to this month's data?
     Specific, not vague: "The clinical team is scheduling outreach calls for members identified
       as high ED utilizers this month" vs. "We're monitoring the situation"

DELIVERY:
  Sent to: HR Director (primary); CFO (if requested by the employer group — ask once, note the answer)
  Format: PDF attached to a personal email from the CS rep (not a template bulk send)
  Subject line: "[Employer Group Name] — [Month Year] Benefit Plan Report"
  Email body: 2-3 sentences introducing the report; highlight one key number; offer to discuss
  Timing: By the 10th of each month (prior month data); never later than the 15th
  If delayed past the 15th: Dr. Lewis notified; personal apology email sent from Dr. Lewis or CEO

REPORTING ANOMALY PROTOCOL:
  Claim ratio spike (+5 points vs. last month): flag to Dr. Lewis before sending; Dr. Lewis
    reviews the category breakdown; determines whether to call the HR Director before the report lands
  Member count decline: flag in the report explicitly; ask the HR Director if there are organizational
    changes that should be reflected in the plan (reduction in force; facility closure)
  Zero claims month: rare but possible; confirm in AdvancedMD; note in report; explain why
```

## Output Format

```markdown
# Allevio Benefit Plan Report — [Employer Group Name] | [Month Year]
*Prepared by Allevio Clinical & Member Services | Confidential — Not for distribution*

---

## Monthly Summary

| Metric | This month | Last month | YTD | Target |
|--------|-----------|-----------|-----|--------|
| Active members | [N] | [N] | — | — |
| Claim ratio | [X]% | [X]% | [X]% | <80% |
| PMPM (claims) | $[X] | $[X] | $[X] | — |
| Status | ✅ On track / ⚠️ Above target / ❌ Significantly above target |

---

## 6-Month Trend

| Month | Active members | Claims paid | Claim ratio |
|-------|--------------|-------------|------------|
| [Month -5] | [N] | $[X]K | [X]% |
| [Month -4] | | | |
| [Month -3] | | | |
| [Month -2] | | | |
| [Month -1] | | | |
| [This month] | [N] | $[X]K | [X]% |

---

## Cost Category Breakdown (Aggregate)

| Category | % of total claims | vs. prior month |
|---------|------------------|----------------|
| Preventive care | [X]% | ↑↓ [X]% |
| Primary care | [X]% | |
| Specialty care | [X]% | |
| Emergency/Urgent | [X]% | |
| Pharmacy | [X]% | |
| Other | [X]% | |

---

## What This Means for Your Organization

[Plain-English narrative: 3-5 sentences]

---

## What Allevio Is Doing About It

[Specific clinical or administrative actions in response to this month's data]
```

## Output Contract
- HIPAA first, always — no individual member data appears in the employer report; Dr. Lewis reviews every Allevio claim ratio report before it is sent; any report that contains a claim category so specific it could identify an individual member is revised before delivery; the claim category breakdown must remain at the level that is clearly aggregate; if a group has only 10 members and one category represents a single high-cost member, that category is either collapsed with another or omitted with a note
- Monthly, without exception — the claim ratio report goes out every month; if the data is late from AdvancedMD, the CS rep contacts the AdvancedMD team to expedite; if the report will be late, Dr. Lewis is notified by the 8th and sends a note to the employer: "Your benefit plan report for [Month] will be with you by [specific date] — we had a data processing delay this month"; the employer is never surprised by a missing report
- Plain English, not claims jargon — HR Directors are not insurance actuaries; "incurred but not reported claims" is not plain English; the report is written at the level that an HR Director who knows nothing about claims processing can read and understand in 3 minutes; Dr. Lewis reviews reports that use jargon without explanation
- HITL required: Dr. Lewis reviews all claim ratio reports for HIPAA compliance before they are sent; any claim ratio spike (+5 points) is flagged to Dr. Lewis before the report is sent; CEO is notified if a report will be delivered after the 15th of the month; any report that includes clinical intervention plan language (what Allevio is doing) is reviewed by the Allevio clinical team before Dr. Lewis signs off

## System Dependencies
- **Reads from:** AdvancedMD (monthly claims data — total claims paid by category; active member count; premium collected); QuickBooks (PMPM rate for the account — confirms the premium figure); cs-success-plan-builder (target claim ratio for this account — what is "on track" vs. "above target"?); prior month reports (SharePoint/CustomerSuccess/Allevio/ClaimReports/[Account]/ — for trend comparison)
- **Writes to:** Monthly claim ratio report PDF (SharePoint/CustomerSuccess/Allevio/ClaimReports/[Account]/[YYYY-MM]_ClaimReport.pdf); personal email to HR Director (and CFO if on distribution); cs-health-score-tracker (financial health dimension update — if claim ratio is above target); cs-kpi-dashboard (portfolio-level claim ratio trend); GoHighLevel CRM (activity log — report sent; date; any flags)
- **HITL Required:** Dr. Lewis reviews all reports for HIPAA compliance before sending; claim ratio spike (+5 points) flagged to Dr. Lewis; CEO notified if report will be late; clinical intervention language reviewed by Allevio clinical team before Dr. Lewis approval

## Test Cases
1. **Golden path:** October claim ratio report — 135-member employer group; AdvancedMD data pulled by November 5; claims paid $83,200; premium collected $108,000; claim ratio 77% (target <80% ✅); breakdown: Preventive 9%; Primary 24%; Specialty 28%; ED 14%; Pharmacy 19%; Other 6%; trend: 6 consecutive months between 75-79% — stable and on target; Dr. Lewis reviews: no HIPAA issues; narrative: "Your October claim ratio of 77% continues the positive trend. This is the 6th consecutive month below your 80% target. Your annualized savings vs. your prior carrier run rate is now $72,000. Our clinical team noted that primary care utilization has increased 4% year-over-year — this reflects members engaging with preventive and primary care instead of emergency care, which is exactly the model working as intended." Sent November 8; HR Director responds: "This is fantastic — thank you!"
2. **Edge case:** June claim ratio spikes from 78% to 86% (+8 points); category breakdown shows ED utilization jumped from 14% to 26% → Dr. Lewis flagged before report is sent; Dr. Lewis reviews: "Before this report goes out, I want to call the HR Director — not send an email. An 8-point spike is a call, not a report. I'll call tomorrow morning, walk her through what we're seeing, explain the clinical outreach plan, and then send the written report as a follow-up. She should hear about this from me directly, not from opening a PDF." Call made; HR Director is concerned but appreciative of the proactive outreach; clinical team initiates ED utilization outreach; report sent with the clinical intervention plan included; claim ratio returns to 79% within 90 days
3. **Adversarial:** CS rep proposes including the age distribution of high-cost members in the employer report ("the CFO is asking what's driving the specialty care costs") → Dr. Lewis: "Stop. Age distribution of high-cost members — even without names — could be enough to identify individuals in a small group. A group with 15 members where 2 are in the specialty care high-cost category and we say '80% of specialty care cost was from members aged 55-65' is one step from telling the employer who their sick employees are. We cannot include this. What we can tell the CFO: the specialty care utilization is concentrated in [X]% of members; we are engaging those members in care management to reduce unnecessary specialist visits; the clinical team will have an update in 60 days. That's HIPAA-compliant and still answers the business question." Report revised; CFO receives the compliant version

## Audit Log
All monthly claim ratio reports retained by account and month. Dr. Lewis HIPAA compliance review records retained. Clinical spike notification records retained. Late delivery records and CEO notifications retained. CFO distribution list records retained (which accounts have the CFO on distribution).

## Deprecation
Retire when Allevio has a dedicated member services reporting team that manages employer-facing claim data reporting — with Dr. Lewis reviewing the report template annually for HIPAA compliance and the clinical team reviewing all intervention-related content before publication.
