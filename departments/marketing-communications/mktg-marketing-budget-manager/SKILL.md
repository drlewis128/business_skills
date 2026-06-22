---
name: mktg-marketing-budget-manager
description: "Plan and manage marketing budgets for MBL Partners portfolio entities. Use when the user says 'marketing budget', 'marketing spend', 'marketing investment', 'budget for marketing', 'how much should we spend on marketing', 'marketing budget allocation', 'marketing budget planning', 'marketing budget review', 'marketing spend review', 'marketing ROI', 'marketing return on investment', 'marketing cost', 'cost per lead', 'CPL', 'cost per acquisition', 'CPA', 'marketing vendor', 'marketing vendor cost', 'agency cost', 'tool cost', 'technology cost', 'SaaS marketing', 'marketing software cost', 'event budget', 'paid media budget', 'content budget', 'PR budget', 'marketing budget vs. revenue', 'marketing spend as % of revenue', 'approve marketing spend', 'marketing expense', or 'marketing budget by channel'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--action <plan|track|review|approve>] [--period <annual|quarterly|monthly>]"
---

# Marketing Budget Manager

Plan, track, and govern marketing budgets for MBL Partners portfolio entities — building annual marketing investment plans, tracking spend vs. budget in-period, and reporting marketing ROI to entity CEOs and Dr. Lewis. At portfolio company scale, marketing budgets are small and every dollar counts; Dr. Lewis requires marketing investment to be justified by pipeline and revenue contribution, not by activity or brand awareness metrics.

## When to Use
- Building the annual marketing budget for an entity
- Reviewing in-period spend vs. budget
- Evaluating whether to increase, decrease, or reallocate marketing investment
- Approving or rejecting specific marketing spend requests

## Marketing Budget Framework

```
MARKETING BUDGET BENCHMARKS:

  INDUSTRY BENCHMARKS (B2B SaaS / professional services):
    Marketing spend as % of revenue: 5-15% (early-stage); 3-8% (mature)
    At portfolio company scale (<$10M revenue): marketing spend may be $0-200K/year; quality over volume
    
  MBL PORTFOLIO GUIDELINES:
    Allevio: marketing budget approved by Allevio CEO + Dr. Lewis; Matt Mathison notified if >$50K/year
    Column6: marketing budget approved by Column6 CEO + Dr. Lewis; Matt Mathison notified if >$50K/year
    HIVE: minimal marketing budget; primarily landowner + LP communications (low-cost); Dr. Lewis + HIVE CEO approve
    MBL Partners: Dr. Lewis + Matt Mathison approve all MBL Partners marketing spend
    
  MINIMUM VIABLE MARKETING BUDGET (per entity, annual):
    Allevio: $25-75K (tools + events + content production + limited paid)
    Column6: $30-80K (IAB membership + events + content + LinkedIn ads)
    HIVE: $5-15K (landowner communication printing + Covercy fees + occasional events)
    MBL Partners: $10-25K (Matt thought leadership + ACG/NVCA events + brand assets)

BUDGET CATEGORIES (all entities):
  1. Personnel: marketing headcount or fractional/contract; North Vista allocation
  2. Technology: GoHighLevel subscription; GA4 (free); email platform; SEO tools; analytics tools
  3. Events: conference registration; sponsorship; booth; travel
  4. Paid Media: LinkedIn Ads; Google Ads; other paid channels
  5. Content Production: design; copywriting; video production; photography
  6. PR / Agency: external PR or communications agency (if used)
  7. Other: printing; materials; miscellaneous vendor costs

BUDGET APPROVAL THRESHOLDS:
  <$500 single purchase: marketing lead approves; entity CEO notified monthly in budget summary
  $500-$5,000: entity CEO approves before purchase
  $5,001-$25,000: entity CEO approves; Dr. Lewis notified
  >$25,000: entity CEO + Dr. Lewis approve; Matt Mathison notified
  Any annual budget >$50,000: Matt Mathison notified at annual planning stage

BUDGET TRACKING (monthly):
  Budget vs. actual spend by category (updated monthly)
  Pipeline attribution by spend category (quarterly)
  Any variance >15% of budget → entity CEO notified; explanation required
  Unspent budget at year-end: Dr. Lewis + entity CEO decide: reallocate to Q1; return to entity P&L; or invest in Q4 push

ROI REPORTING (quarterly):
  Marketing spend this period by category
  Pipeline attributed to marketing this period
  Revenue closed from marketing-sourced pipeline (rolling 12-month)
  ROI calculation: (Revenue from marketing-sourced deals) / (Marketing spend) × 100%
  Benchmark: target ≥3× ROI (every $1 in marketing generates ≥$3 in closed revenue, on a 12-month lag)
  CAC (Customer Acquisition Cost): total marketing spend / # new customers in period
```

## Output Format

```markdown
# Marketing Budget — [Entity] — [Year]
**Approved by:** Entity CEO + Dr. Lewis | **Matt Mathison notified:** [if applicable]
**Total budget:** $[X] | **% of revenue:** [X]%

---

## Budget by Category

| Category | Annual budget | Q1 | Q2 | Q3 | Q4 | Notes |
|---------|--------------|-----|-----|-----|-----|-------|
| Technology | $X | | | | | |
| Events | $X | | | | | MGMA Q3; IAB Q1 |
| Paid media | $X | | | | | |
| Content production | $X | | | | | |
| PR / Agency | $X | | | | | |
| Other | $X | | | | | |
| **Total** | **$X** | | | | | |

---

## Monthly Spend Tracker

| Category | Budget | Spent MTD | Spent QTD | Spent YTD | Variance |
|---------|--------|----------|---------|---------|---------|

---

## ROI Report (quarterly)

| Metric | This quarter | YTD | Benchmark |
|--------|------------|-----|----------|
| Marketing spend | $X | $X | |
| Pipeline attributed ($) | $X | $X | |
| Revenue closed (mktg-sourced) | $X | $X | |
| ROI | X% | X% | ≥300% |
| CAC | $X | $X | |

---

## Pending Approvals

| Item | Amount | Requested by | Threshold | Decision needed from |
|------|--------|-------------|---------|---------------------|
| [IAB sponsorship] | $5,500 | Marketing Lead | >$5K: entity CEO + Dr. Lewis notified | Entity CEO → Dr. Lewis notified |
```

## Output Contract
- Every marketing budget line is justified by a business objective, not a channel preference — "we always go to MGMA" is not a budget justification; "MGMA generated 4 employer MQLs last year at a CPL of $800; that's our best event-channel CPL; we're going again" is a budget justification; Dr. Lewis requires prior-year performance data to support any recurring marketing investment; first-time investments (new channel; new event; new vendor) require a pilot budget with explicit success metrics before the full budget is committed
- Budget approval thresholds are enforced, not suggested — a marketing lead who commits $6,000 to a conference sponsorship without entity CEO approval has bypassed the authorization process; Dr. Lewis does not retroactively approve budget overruns; if the entity CEO discovers unapproved spend, it is treated as a financial controls issue, not a marketing issue; the thresholds are clear; the marketing lead follows them; exceptions require advance written approval from the entity CEO before the spend is committed
- Marketing budget is measured by ROI, not by how "active" marketing is — an entity that spends $40,000/year on marketing and generates $200,000 in marketing-sourced revenue has a 5× ROI and is efficient; an entity that spends $80,000/year with $160,000 in marketing-sourced revenue has a 2× ROI — below the 3× benchmark — and needs channel reallocation or budget reduction; Dr. Lewis presents ROI quarterly and makes reallocation recommendations; the entity CEO decides; the recommendation is grounded in data
- HITL required: annual marketing budget → entity CEO + Dr. Lewis approve; spend >$5K → entity CEO approves; spend >$25K → entity CEO + Dr. Lewis approve; notify Matt Mathison → spend >$25K per event or annual budget >$50K; ROI below 3× (two consecutive quarters) → Dr. Lewis + entity CEO review and make budget decision; vendor contracts >$10K → entity CEO reviews before signing; any unbudgeted emergency spend → entity CEO approves before commitment

## System Dependencies
- **Reads from:** mktg-analytics-manager (channel ROI data — informs budget allocation decisions); mktg-campaign-manager (campaign budgets — sub-items within marketing budget); mktg-paid-media-manager (paid media spend data); mktg-event-marketer (event cost data); QuickBooks (actual spend reconciliation — marketing expenses); pe-portfolio-monitor (entity P&L performance — marketing budget context)
- **Writes to:** Marketing budget document (SharePoint → [Entity] → Marketing → Budget → [Year]); QuickBooks expense categories (marketing spend reconciliation); monthly budget tracker; ROI report; Matt Mathison notification (when thresholds are triggered); entity CEO approval records
- **HITL Required:** Annual budget → entity CEO + Dr. Lewis; spend >$5K → entity CEO; spend >$25K → entity CEO + Dr. Lewis; Matt Mathison notification → >$25K or >$50K annual; ROI review → Dr. Lewis + entity CEO quarterly; vendor contracts >$10K → entity CEO; emergency unbudgeted spend → entity CEO

## Test Cases
1. **Golden path:** Allevio 2026 marketing budget. Total: $48,000. Category allocation: Technology $8,000 (GoHighLevel $6K; GA4 free; SEO tool $2K); Events $16,000 (MGMA $10K; SHRM AZ $6K); Paid media $10,000 (LinkedIn Ads — $2.5K/quarter test budget); Content production $8,000 (design vendor + copywriter retainer); Other $6,000 (printing; webinar platform; miscellaneous). Entity CEO approves. Matt Mathison not required (<$50K). Dr. Lewis reviews. Q2 check-in: Events spent $10,200 (MGMA actual came in at $10.2K vs $10K budget — 2% variance; acceptable). Paid media: $5,100 of $10,000 spent; 12 MQLs generated ($425 CPL — under $500 target). On track.
2. **Edge case:** Marketing lead commits to a $12,000 event sponsorship without approval → Dr. Lewis: "This sponsorship was committed above the entity CEO approval threshold without authorization. I'm treating this as a financial controls issue. Steps: (1) contact the event organizer immediately — can we negotiate a cancellation or deferral given the circumstances?; (2) entity CEO must be informed today; (3) document this as a controls failure in the marketing ops log; (4) restrict the marketing lead's commitment authority pending a conversation with the entity CEO; (5) if the event cannot be cancelled, the entity CEO must decide whether to proceed or seek reimbursement. The authorization thresholds exist to prevent exactly this situation."
3. **Adversarial:** Entity CEO wants to cut marketing budget by 50% mid-year due to revenue pressure → Dr. Lewis: "A 50% mid-year cut is possible but has consequences I need to surface before you decide. Current marketing-sourced pipeline in flight: $[X]. Cutting the budget eliminates the nurture sequence that's driving [Y] MQLs/month — those leads will go cold. I'd recommend: (1) cut paid media immediately (fastest to stop; least damage to in-flight pipeline); (2) preserve email and content (lowest cost; highest pipeline contribution per dollar); (3) eliminate or negotiate exit from lower-ROI events. That gets you approximately 35% reduction with 70% of the pipeline contribution preserved. The remaining 15% reduction requires pausing a program — I'll show you which one has the lowest pipeline impact."

## Audit Log
Annual budget documents retained. Monthly spend tracker records retained. ROI reports retained quarterly. Approval records (entity CEO; Dr. Lewis; Matt Mathison notifications). Unapproved spend incidents retained. Vendor contract records. Budget vs. actual variance records.

## Deprecation
Budget benchmarks reviewed annually. Approval thresholds reviewed when portfolio company scale changes significantly. ROI targets reviewed annually. Budget categories updated when entity marketing mix changes materially.
