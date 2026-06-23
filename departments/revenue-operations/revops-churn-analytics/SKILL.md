---
name: revops-churn-analytics
description: "Analyze churn patterns for MBL Partners portfolio entities. Use when the user says 'churn', 'churn analysis', 'churn analytics', 'churn rate', 'why are clients leaving', 'why did we lose that client', 'churn report', 'churn data', 'churn patterns', 'churn reasons', 'churn risk', 'churn prevention', 'client attrition', 'customer attrition', 'employer churn', 'agency churn', 'account churn', 'churn cohort', 'churn by source', 'churn by size', 'churn by tenure', 'churn forecast', 'churn root cause', 'why clients cancel', 'cancellation analysis', 'cancellation rate', 'cancel rate', 'attrition analysis', 'attrition report', 'revenue lost to churn', 'churn impact', or 'what is driving churn'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--period <90|180|365>] [--action <analyze|report|interview|forecast>]"
---

# RevOps Churn Analytics

Analyze churn patterns for MBL Partners portfolio entities — identifying systematic reasons why clients leave, segmenting churn by cohort (size, tenure, source, use pattern), and providing actionable intelligence that CS, product, and sales teams use to improve retention. Churn that isn't analyzed repeats; churn that is understood can be prevented.

## When to Use
- Quarterly churn analysis report for entity CEO or Dr. Lewis
- Investigating a specific churn event or pattern
- Identifying highest-risk churn cohorts for proactive intervention
- Building churn rate into the renewal forecast

## Churn Analytics Framework

```
CHURN DATA CAPTURE (PREREQUISITE):
  Every churned account in GoHighLevel must have:
    - Churn date (contract end date; cancellation effective date)
    - Churn reason code (from the list below)
    - ACV at time of churn
    - Tenure (months as a client)
    - Churn interview conducted? (Yes / No — for accounts >$20K ACV)
    
  CHURN REASON CODES (REQUIRED IN GOHIGHLEVEL):
    Product/Service: benefit didn't deliver expected value; low employee utilization
    Cost: pricing too high; CFO/budget pressure; cost-cutting initiative
    Competitor: switched to competing solution (name if known)
    HR/Champion Turnover: key HR contact left; new contact doesn't know Allevio
    Company Event: employer was acquired; went out of business; downsized below 25 EE
    No Decision (did not officially cancel but stopped engaging): entered long-term nurture
    Unknown: no exit interview obtained; reason not confirmed
    
CHURN SEGMENTATION ANALYSIS:
  By reason code: distribution across reason codes → which is primary driver?
  By employer size: do small employers (25-49 EE) churn more than mid-size (50-99 EE)?
  By tenure cohort: do clients churn most in months 1-6? 7-12? >12 months?
  By acquisition source: broker-referred clients vs. marketing-sourced — which retains better?
  By usage pattern: low-utilization clients churn more; what is the utilization threshold that predicts churn?
  
CHURN INTERVIEW PROGRAM (ALLEVIO — ACCOUNTS >$20K ACV):
  Interviewer: entity CEO (not CS lead — higher signal value; shows respect)
  Questions:
    1. "What ultimately drove your decision to cancel?" (open-ended)
    2. "What did we do well?" (affirm what to preserve)
    3. "What could we have done differently?" (most actionable)
    4. "Is this permanent, or is there a future where Allevio could be the right fit?"
  Findings: logged in GoHighLevel; summary to Dr. Lewis within 7 days of churn event
  
CHURN RATE CALCULATION:
  Monthly churn rate: churned ARR in month / starting ARR in month × 100
  Annual churn rate: (churned ARR over 12 months) / starting ARR × 100
  GRR = 100% - annual churn rate (used in GRR tracking)
  
CHURN EARLY WARNING SIGNALS (FEED INTO HEALTH SCORE):
  Utilization drop: employee appointment usage drops >30% from prior quarter
  NPS drop: NPS drops from ≥8 to ≤6 between check-ins
  HR contact turnover: key employer contact leaves without introduction of replacement
  Late payment: invoice late >30 days without explanation (signals financial distress)
  Competitor inbound: CS learns that employer is "evaluating alternatives"
  Response latency: employer stops responding to CS outreach within 10 business days
```

## Output Format

```markdown
# Churn Analytics Report — [Entity] — [Quarter/Year]
**Churn events:** [N] | **Total churned ARR:** $X | **GRR impact:** X%

---

## Churn Reason Distribution

| Reason | # Accounts | ARR | % of churn | Trend vs. prior period |
|--------|-----------|-----|-----------|----------------------|
| Product/Service fit | | $X | X% | ↑/↓/→ |
| Cost / Budget | | $X | X% | |
| HR Champion Turnover | | | | |
| Competitor | | | | |
| Company Event | | | | |

---

## Churn Cohort Analysis

| Cohort | Churn rate | vs. avg | Insight |
|--------|-----------|---------|---------|
| Employers 25-49 EE | X% | | Smaller employers churn more |
| Tenure <6 months | X% | | Onboarding quality indicator |
| Broker-sourced | X% | | vs. marketing-sourced |

---

## High-Risk Churn Segments
[Specific cohorts or accounts at elevated risk based on pattern analysis]

---

## Actions
1. [Action — owner — due date — expected impact]
```

## Output Contract
- "Unknown" reason code is unacceptable for accounts above $20K ACV — a $35K employer who churns without a recorded reason is a missed learning; Dr. Lewis requires the entity CEO to conduct a churn interview within 14 days of any churn event above $20K ACV; the interview may be difficult; the answer may be uncomfortable; but knowing why is always better than not knowing; a pattern of "Unknown" reason codes in the churn data signals that the churn interview program is not being executed and is a performance gap Dr. Lewis addresses with the entity CEO directly
- Cohort analysis reveals structural risk that aggregate churn rate hides — if aggregate churn rate is 7% (below the 9% threshold) but tenure <6 month cohort is churning at 18%, there is a systematic onboarding failure that will compound as the client base grows; if employer size <35 EE cohort is churning at 22%, the ICP may be wrong (small employers may not get enough value from Allevio's benefit model); Dr. Lewis uses cohort analysis to identify structural risks before they become rate problems
- HITL required: churn event >$20K ACV → entity CEO interviews within 14 days; churn event >$50K ACV → Dr. Lewis notified within 24 hours; churn rate above 9% annual (GRR <91%) for 2 months → entity CEO + Dr. Lewis action plan; churn interview findings → Dr. Lewis summary within 7 days; new churn reason code trend emerging → entity CEO + Dr. Lewis

## System Dependencies
- **Reads from:** GoHighLevel (churn records; reason codes; tenure; ACV; acquisition source); revops-renewal-ops-manager (health score → churn prediction); revops-win-loss-tracker (similar methodology; churn interview mirrors loss interview); fpa-rolling-forecast-updater (churn rate inputs to financial model)
- **Writes to:** Churn analytics reports (SharePoint → [Entity] → CS → Churn → [Quarter]); GoHighLevel (churn record updates; early warning signal flags); entity CEO churn interview records; Dr. Lewis portfolio churn summary; revops-renewal-ops-manager (high-risk cohort flags for renewal ops intervention)
- **HITL Required:** Churn >$20K → entity CEO interview; churn >$50K → Dr. Lewis within 24hr; GRR <91% 2 months → entity CEO + Dr. Lewis; interview findings → Dr. Lewis; new pattern emerging → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio Q2 churn analytics. 2 churn events. Event 1: $24K ACV employer — churn reason: "HR champion left; new HR director chose a different vendor" (HR Champion Turnover). Entity CEO conducted exit interview: "We didn't know anyone at Allevio — the new HR director said the relationship wasn't established." Learning: introduce new HR contacts to entity CEO within 30 days of learning about HR turnover. Event 2: $18K ACV employer — reason: "CFO budget cut benefits line" (Cost). No interview opportunity (employer ghosted outreach). Cohort analysis: of 6 churned accounts over past 12 months: 4 were in tenure <8 months; 3 were <35 EE size. Action: (1) tighten ICP minimum to 30 EE (remove 25-30 EE from active targeting); (2) add HR contact monitoring to health score (detect turnover signal earlier). Entity CEO + Dr. Lewis: actions approved.
2. **Edge case:** Two Allevio employers churn in the same week citing "benefit wasn't used enough — employees didn't know it existed" → Dr. Lewis: "Two 'low utilization' churns in the same week is a signal, not a coincidence. Both are Product/Service reason codes but the root cause is member communication — employees didn't know the benefit existed. This is an onboarding quality failure, not a product failure. I want to look at: (1) what did the employer onboarding process look like for these two accounts? Did they receive the employee communication kit? (2) What was utilization at month 3 and month 6? If utilization was low at month 3, we didn't catch it early enough. (3) Are there other accounts with utilization <15% at month 3 that need proactive intervention now? This is not a churn analytics question — it's a CS onboarding quality question that churn analytics surfaced."
3. **Adversarial:** Entity CEO argues against conducting churn interviews because "it's embarrassing to call clients who already left" → Dr. Lewis: "I understand the discomfort — but not calling is more expensive. Each churned employer we don't interview is $X ARR we may have been able to save, and a pattern we may be blind to. In my experience, clients who leave are often more candid than active clients — they have nothing to lose and often appreciate the call. The framing is not 'I'm calling because you left' — it's 'I value the relationship and I want to understand what we could have done better; that feedback directly shapes how we serve our next employer.' I'll do the first interview alongside the entity CEO this week — let's model the approach together."

## Audit Log
Churn analytics reports (quarterly; permanent). Churn reason codes in GoHighLevel (permanent). Entity CEO churn interview records (permanent). Dr. Lewis churn notifications for >$50K events. GRR tracking with churn contribution (monthly). Cohort analysis records (quarterly). Action plan records from churn reviews.

## Deprecation
Churn reason code taxonomy reviewed annually. Cohort analysis dimensions reviewed when entity ICP changes. GRR threshold reviewed when entity growth stage changes. Interview program trigger threshold reviewed when entity ACV distribution changes. Early warning signals reviewed when health score model changes.
