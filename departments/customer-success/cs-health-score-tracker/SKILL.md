---
name: cs-health-score-tracker
description: "Track and manage customer health scores for MBL portfolio companies. Use when the user says 'customer health', 'health score', 'account health', 'health scoring', 'customer health score', 'account health score', 'health check', 'health dashboard', 'which customers are healthy', 'at-risk customers', 'customer risk', 'customer health status', 'green yellow red', 'RAG status', 'traffic light', 'customer status', 'health metrics', 'account status', 'health score model', 'how healthy are our customers', 'flag at-risk accounts', 'health indicators', 'leading indicators of churn', or 'customer success metrics'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--action <score|update|report|alert>]"
---

# CS Health Score Tracker

Track and manage customer health scores for MBL portfolio companies — building a multi-dimension health model that gives the CS team an early warning of churn risk before customers signal dissatisfaction. Health scores are the primary instrument of proactive customer success; a rep who waits for a customer to raise a complaint is a reactive rep; a rep who sees a health score trending Yellow and calls the customer this week is a proactive rep. Dr. Lewis reviews health scores weekly.

## When to Use
- Weekly review of all active accounts (health score monitoring)
- An account shows a change in one or more health dimensions
- Building the health scoring model for a new portfolio company
- Monthly CS report (health distribution across the customer base)

## Health Score Framework

```
HEALTH SCORE DIMENSIONS (scored 1-5 each):

  ALLEVIO — Employer Group Health (5 dimensions; max 25):

    1. ENGAGEMENT (1-5):
       5: HR Director responds within 24 hours; attends QBRs; high member participation in wellness
       4: Responsive; engaged; occasional delays
       3: Responds but slow (>5 days); skips some QBRs
       2: Rarely responds; has not attended the last 2 QBRs
       1: Non-responsive; champion may have changed; relationship at risk
       
    2. PRODUCT UTILIZATION (1-5):
       5: Member count growing; >85% of employees enrolled; active wellness program use
       4: Stable member count; >75% enrollment
       3: Flat or slightly declining; 60-75% enrollment
       2: Member count declining 2+ months; <60% enrollment
       1: Active member count decline; significant disenrollment; questions about fit
       
    3. FINANCIAL HEALTH (1-5):
       5: Payments on time; no disputes; claim ratio <75%
       4: Payments on time; claim ratio 75-80%
       3: One late payment in last 6 months; claim ratio 80-85%
       2: Multiple late payments; claim ratio 85-90%; starting to question ROI
       1: Payment dispute; claim ratio >90%; formal complaint; renewal at risk
       
    4. OUTCOME ACHIEVEMENT (1-5):
       5: Claim ratio below target; documented cost savings; HR Director citing results positively
       4: On track to hit targets; no significant issues
       3: Mixed results; some months below target; trending neutral
       2: Claim ratio above target 3+ months; no clear improvement plan in place
       1: Significantly above target; employer group is losing confidence in the model
       
    5. RELATIONSHIP DEPTH (1-5):
       5: Known to CEO and HR Director; strong champion; executive sponsor engaged; references us
       4: Strong HR Director relationship; occasional CEO contact
       3: Single point of contact (HR Director only); no depth
       2: Champion recently changed; new HR Director not yet onboarded into the relationship
       1: Champion left; no active executive relationship; new contact not yet engaged
       
    Health Score Thresholds (Allevio):
      Green: 20-25 — Healthy; QBR cadence maintained; renewal expected
      Yellow: 14-19 — Monitor closely; increase contact cadence; expansion conversation on hold
      Red: ≤13 — Immediate CEO-led intervention; renewal at risk

  COLUMN6 — Agency/Brand Health (4 dimensions; max 20):

    1. BOOKING ACTIVITY (1-5):
       5: New IO booked or campaign active; cadence consistent with prior pattern
       4: IO booked in last 45 days; pipeline for next IO confirmed
       3: Last IO >45 days ago; no confirmed next booking
       2: Last IO >90 days ago; outreach not returned promptly
       1: >120 days since last IO; relationship may be cooling
       
    2. CAMPAIGN PERFORMANCE (1-5):
       5: VCR ≥95%; CPM on target; attribution results delivered; agency happy with results
       4: VCR 88-94%; minor delivery issues resolved quickly
       3: VCR 80-87%; one underperforming campaign in last 3 IOs
       2: VCR <80% on a recent IO; agency raised performance concerns
       1: Active complaint about campaign performance; agency withheld next IO pending resolution
       
    3. CONTACT RESPONSIVENESS (1-5):
       5: Media buyer responds same day; engaged in planning conversations
       4: Responds within 48 hours; generally accessible
       3: Slow to respond; requires follow-up before replying
       2: Media buyer changed; new contact not yet established
       1: No response from primary contact; agency relationship status unclear
       
    4. RELATIONSHIP BREADTH (1-5):
       5: Known to agency leadership above the media buyer; multiple brand contacts
       4: Strong media buyer relationship; some leadership awareness
       3: Single media buyer contact; no depth
       2: Media buyer recently changed; starting from scratch
       1: Unknown to agency leadership; relationship fragile
       
    Health Score Thresholds (Column6):
      Green: 16-20
      Yellow: 10-15
      Red: ≤9

  HIVE — Landowner Lease Health (3 dimensions; max 15):

    1. PAYMENT SATISFACTION (1-5):
       5: Royalty payments on time every month; no disputes; landowner happy with Covercy access
       4: Payments on time; minor question resolved quickly
       3: One payment question or delay in last 6 months
       2: Ongoing payment dispute; landowner frustrated
       1: Payment dispute not resolved; legal concern or complaint
       
    2. DEVELOPMENT RELATIONSHIP (1-5):
       5: Landowner proactively updated on development activity; positive attitude toward HIVE
       4: Good relationship; questions answered promptly
       3: Occasional questions not answered quickly enough; communication gaps
       2: Landowner has expressed frustration with communication; has complained
       1: Landowner has engaged legal counsel; relationship significantly damaged
       
    3. RENEWAL POSTURE (1-5):
       5: Landowner has explicitly expressed intent to renew; no competing conversations
       4: Positive attitude; no red flags; lease renewal not discussed yet
       3: Neutral; hasn't indicated either way
       2: Landowner has been approached by a competing operator; exploring options
       1: Landowner is unlikely to renew; or has indicated they're working with another operator

WEEKLY REVIEW PROTOCOL:
  Dr. Lewis reviews all accounts with a health score change each week
  Any account dropping to Yellow: Dr. Lewis assigns a specific action and due date to the CS rep
  Any account dropping to Red: Dr. Lewis notifies the CEO immediately; intervention within 48 hours
  Health scores updated in CRM (GoHighLevel) with the score, date, and the primary signal driving the score
```

## Output Format

```markdown
# Customer Health Report — [Entity] | [Month YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Total accounts:** [N]

---

## Health Distribution

| Status | Count | % of accounts | ARR at risk |
|--------|-------|--------------|------------|
| 🟢 Green | [N] | [X]% | — |
| 🟡 Yellow | [N] | [X]% | $[X]K |
| 🔴 Red | [N] | [X]% | $[X]K |

---

## Accounts Requiring Action

| Account | Score | Status change | Primary signal | Action | Owner | Due |
|---------|-------|--------------|---------------|--------|-------|-----|
| [Company A] | 12/25 | Green → Yellow | Champion departed | Re-intro call with new HR Director | Rep | This week |
| [Company B] | 8/25 | Yellow → Red | Claim ratio >90% + payment dispute | CEO-led call | CEO | 48 hours |

---

## Health Trend (Last 90 Days)

| Month | Green | Yellow | Red |
|-------|-------|--------|-----|
| [Month -2] | [N] | [N] | [N] |
| [Month -1] | [N] | [N] | [N] |
| [This month] | [N] | [N] | [N] |
```

## Output Contract
- Health scores are updated weekly, not monthly — a health score that is 30 days old is a stale health score; conditions change in days (champion departs; claim ratio spikes; IO campaign underdelivers); Dr. Lewis requires health scores to be reviewed and updated in CRM weekly for all Yellow and Red accounts, and at minimum monthly for Green accounts; a score that hasn't been touched in 30 days is flagged for review
- Score from data, not intuition — "I feel like this customer is happy" is not a health score; the score is based on specific, observable signals (payment date; response time; member count; booking cadence; VCR); Dr. Lewis reviews the primary signal driving each score to ensure it reflects reality; a CS rep who gives a Yellow account a Green score because "the QBR went well" is bypassing the system
- A Red account is a CEO event, not a CS event — when any account reaches Red health, the CEO is notified and leads the intervention; the CS rep continues to manage the day-to-day; the CEO's involvement signals to the customer that they are valued at the executive level; Dr. Lewis briefs the CEO with a one-page account summary before any CEO intervention call
- HITL required: CS rep updates health scores weekly; Dr. Lewis reviews all Yellow and Red changes; CEO is notified immediately when any account turns Red; Matt Mathison receives the monthly health distribution report if total Red ARR exceeds $150K; Dr. Lewis does not allow a Red account to sit for more than 48 hours without CEO notification; any retention action (pricing concession; service upgrade; fee waiver) offered to a Red account requires CEO authorization

## System Dependencies
- **Reads from:** CRM account activity (GoHighLevel — contact frequency; last activity); AdvancedMD member count (Allevio — active members; enrollment trend); AdvancedMD claim ratio (Allevio — monthly claims vs. premium); QuickBooks payment history (late payments; disputes); Column6 campaign dashboard (VCR; pacing; completion rate; IO booking cadence); Covercy royalty payment records (HIVE — payment status; landowner portal access); QBR notes (cs-qbr-preparer — what did the customer say?)
- **Writes to:** Health score record (GoHighLevel CRM — score; date; primary signal; status color); CEO Red account alert (immediate email/Teams notification); monthly health report (SharePoint/CustomerSuccess/<Company>/HealthReports/[YYYY-MM]_HealthReport.pdf); sales-retention-tracker (health scores feed the retention tracking framework); cs-kpi-dashboard (health distribution metrics)
- **HITL Required:** CS rep monitors and updates weekly; Dr. Lewis reviews all status changes; CEO notified immediately for any Red account; Matt Mathison receives monthly report if total Red ARR >$150K; Dr. Lewis does not let a Red account sit >48 hours without CEO notification; CEO authorizes all retention actions offered to Red accounts

## Test Cases
1. **Golden path:** Weekly Allevio health review — 22 accounts → Dr. Lewis scans: 18 Green (no action); 3 Yellow (all known, actions in place); 1 new change: Account A dropped from Green (22/25) to Yellow (17/25) because the HR Director left the company last week and the new HR Director hasn't been contacted yet → Dr. Lewis assigns: "Rep calls the CFO (secondary contact) today; introduces themselves; requests an intro call with the new HR Director this week; logs the contact in CRM." Rep calls within 2 hours; meeting with new HR Director scheduled; health score returns to Green at next month's review
2. **Edge case:** Column6 account has a VCR of 72% on the most recent IO (below the 80% threshold) AND the media buyer responded to the last email 6 days ago (slower than usual) — individually neither is a Red flag, but together they push the score from Green (17/20) to Yellow (11/20) → Dr. Lewis: "The combination of underperformance and slowed responsiveness is a Yellow signal — not a crisis yet, but we need to get ahead of it. I want a performance call this week — not a 'we want your feedback' call, but a 'here's what we saw in the data and here's our plan to address it' call. Own the performance issue; show the agency what we're doing to fix it. I'll prepare the talking points." Performance call scheduled; VCR issue attributed to targeting parameters; adjustment made; next IO completion rate: 91%
3. **Adversarial:** A CS rep argues that their largest account (28/25 — hypothetically strong Green) doesn't need a health score update because "they're obviously doing great — they just renewed for 2 years" → Dr. Lewis: "I understand the instinct, but 'they just renewed' is last month's news. Health scores track current signals — and right now I see: the CFO who championed the renewal retired 3 weeks ago (that's a relationship depth signal); member count is flat for 4 months (that's a utilization signal); and we haven't had a QBR since the renewal signed (that's an engagement signal). I'd score this account at 19/25 — Yellow, not Green. That 2-year commitment doesn't mean the relationship is healthy; it means we have time to fix it without a renewal deadline. Let's schedule a QBR and get re-introduced to the incoming CFO." Rep updates the score; QBR scheduled; new CFO relationship established

## Audit Log
All health score records retained by account, entity, and date. Score change records retained with primary signal. Red account CEO notification records retained. Monthly health reports retained. Retention action authorization records retained (what was offered; CEO approval; outcome).

## Deprecation
Retire when each portfolio company has a dedicated CS platform (Gainsight; Totango; ChurnZero) that automates health score calculation from system signals — with Dr. Lewis reviewing the health model annually and the CEO receiving a monthly summary of Red account status.
