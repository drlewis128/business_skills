---
name: cs-value-realization
description: "Quantify and present the value delivered to MBL portfolio company customers. Use when the user says 'value realization', 'value delivered', 'ROI for the customer', 'customer ROI', 'demonstrate value', 'prove value', 'show value', 'value report', 'value summary', 'what value did we deliver', 'customer value', 'business case validation', 'ROI validation', 'did we deliver on our promise', 'value story', 'value documentation', 'customer outcomes report', 'outcome report', 'results summary', 'business outcomes', 'quantify results', 'show the impact', 'measurable outcomes', 'prove the ROI', 'customer return on investment', or 'results report'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--period <annual|semi-annual|quarterly>] [--action <build|present|update>]"
---

# CS Value Realization

Quantify and present the value delivered to MBL portfolio company customers — translating operational metrics into business outcomes that the customer's executive sponsor (CFO; CEO; landowner) can see and feel. Value realization is the foundation of every renewal conversation; if the customer can clearly articulate the ROI they received, renewal is a continuation of a successful investment; if they can't, renewal is a price negotiation. Dr. Lewis owns the value realization framework for each entity.

## When to Use
- Pre-renewal value documentation (Day -90 in the cs-renewal-coordinator process)
- Annual value delivered report (Year 1 close; Year 2 renewal)
- QBR preparation (cs-qbr-preparer — section 2: performance review)
- A customer asks "are we getting our money's worth?"

## Value Realization Framework

```
TRANSLATION PRINCIPLE:
  Metrics are for CS teams; outcomes are for customers
  "Claim ratio improved from 87% to 77%" is a metric
  "Your employees' healthcare costs were $9.38 per member per month less expensive than last year
   — that's $134,568 saved for your company annually" is an outcome
  Always translate the metric into dollars and business language before presenting to the customer

ENTITY-SPECIFIC VALUE CALCULATION:

  ALLEVIO — Employer Group Value:
  
    1. CLAIM RATIO SAVINGS:
       Baseline: Prior claim ratio % (or industry benchmark if no prior data)
       Current: Allevio actual claim ratio for the plan year
       Impact: (Prior PMPM − Current PMPM) × active member count × 12
       Example: Prior $680 PMPM (87% claim ratio); Current $620 PMPM (77% ratio)
         Savings: ($680 − $620) × 120 members × 12 months = $86,400/year
       Add context: "If you had stayed with your prior carrier at the same trend rate,
         your PMPM would have been approximately $[X] this year — putting your total
         spend at $[X]. Allevio's managed care approach delivered your plan at $[X]."
         
    2. HR ADMINISTRATIVE TIME SAVINGS:
       Baseline: HR Director time on benefits (survey at Month 1 — use their estimate)
       Current: HR Director time now (survey or estimate at Month 12)
       Impact: Time saved × HR Director hourly rate (estimate: $45-65/hour for an Allevio client HR Director)
       Example: From 8 hours/week to 3 hours/week → 5 hours/week × $55/hr × 52 weeks = $14,300/year
       Present as: "Your HR Director recovered approximately 5 hours per week — that's the
         equivalent of freeing up 13% of a full-time employee to focus on other priorities."
         
    3. MEMBER HEALTH OUTCOMES (harder to quantify — use directionally):
       Clinical care engagement: How many members engaged with clinical care services?
       High-risk member management: Were any high-cost members identified and enrolled in care management?
       Present as: "X members engaged with our clinical care team this year — including Y who were
         identified as high-risk and connected with care coordination. While we can't directly
         quantify the downstream claim impact, early intervention is the primary driver of
         long-term claim ratio improvement."
       
    ALLEVIO VALUE SUMMARY CALCULATION:
      Total value = Claim savings + HR time savings + (clinical care value — directional)
      ROI = Total value ÷ total plan cost (ACV)
      Target: ROI >1.5× (for every $1 paid, the customer got $1.50 in value)
      Present: "Your total quantifiable ROI with Allevio this year was [X]×."
      
  COLUMN6 — Agency/Brand Value:
  
    1. CAMPAIGN DELIVERY VALUE:
       Delivered impressions vs. contracted: if we delivered more than contracted, quantify the bonus
       VCR vs. linear TV benchmark: industry avg VCR for CTV ≈ 92%; linear TV ≈ 40-60%
       Present: "Your Column6 CTV campaigns delivered a [X]% completion rate — compared to
         a 45% average for linear TV placements of similar value. You paid for [X] impressions
         and received [X] fully-viewed completions — an effective [X]× completion advantage over linear."
         
    2. CPM EFFICIENCY:
       CPM delivered vs. market rate (use MediaRadar or industry data for comparison)
       If Column6 CPM < market: "Your average CPM this year was $[X] — approximately [X]% below
         the [DMA]/[category] market rate of $[X]. On $[X]K of spend, that's $[X]K of impression
         efficiency vs. buying at market rate."
         
    3. ATTRIBUTION RESULTS (if applicable):
       Conversions attributed to Column6 campaigns (Nielsen OneCount or similar)
       CPA: total campaign cost ÷ attributed conversions
       Compare to the brand's other channel CPAs
       Present: "Your Q[X] campaign delivered [N] incremental conversions at a $[X] CPA —
         [X]% below your blended channel CPA of $[X]. Column6 outperformed your other channels
         on a cost-per-conversion basis."
         
    COLUMN6 VALUE SUMMARY:
      Primary value: Cost efficiency (CPM) + completion quality (VCR) + attribution results
      Present in the agency's language: "We delivered $[X]K of measurable media value on $[X]K of spend"
      
  HIVE — Landowner Value:
  
    1. LEASE BONUS:
       Total bonus received to date: $[X] (from executed leases and renewals)
       Per-acre comparison: if available, compare to county average bonus rates
       Present: "HIVE has paid you a total of $[X] in lease bonuses for [N] acres —
         an average of $[X] per acre."
         
    2. ROYALTY PAYMENTS:
       Total royalty payments received: $[X] (from Covercy — YTD and cumulative)
       Monthly royalty trend: is it growing? Stable?
       Present: "You've received $[X] in royalty payments this year — monthly royalties
         have [grown / been stable] as production from [Well name] has [increased / stabilized]."
         
    3. DEVELOPMENT ACTIVITY:
       What development activity occurred? Any new wells? Completion work?
       Present as future value context: "HIVE has drilled [N] wells on or near your acreage
         this year. As production ramps up, your royalty payments will [grow / expand]."
```

## Output Format

```markdown
# Value Realization Report — [Account Name] | [Entity] | [Year YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **ACV:** $[X]K

---

## Value Summary

| Value category | Metric | Dollar value |
|---------------|--------|-------------|
| Claim ratio savings | 87% → 77% (120 members × $60 PMPM savings × 12 months) | $86,400 |
| HR time savings | 5 hrs/week recovered @ $55/hr × 52 weeks | $14,300 |
| **Total quantifiable value** | | **$100,700** |
| **Annual plan cost (ACV)** | | **$91,800** |
| **ROI** | | **1.1× (10% ROI on investment)** |

---

## Performance vs. Commitments

| Success plan commitment | Target | Actual | Status |
|------------------------|--------|--------|--------|
| Claim ratio below 80% | <80% | 77% | ✅ Achieved |
| HR time savings | >4 hrs/week | 5 hrs/week | ✅ Exceeded |
| Member enrollment | ≥85% | 89% | ✅ Exceeded |

---

## Year 2 Trajectory

**Where we're headed:** [1-2 sentences on what the next year looks like if the trend continues]
**Year 2 target:** [Specific metric target for the renewal period]
```

## Output Contract
- Every dollar claim must be auditable — the value calculation is based on actual data from the systems of record (AdvancedMD for claim ratios; Column6 campaign dashboard for VCR/CPM; Covercy for royalty totals); Dr. Lewis does not approve value reports that use estimated or projected numbers without clearly labeling them as estimates; a CFO who audits the numbers and finds they're right will trust us forever; a CFO who finds they're inflated will never trust us again
- Present the number the customer cares about first — every customer has a primary metric they care about most; for Allevio CFOs, it's money saved; for Column6 media buyers, it's VCR and CPA; for HIVE landowners, it's total royalties received; Dr. Lewis leads the value report with the customer's primary metric before any supporting data; "you saved $86,400 this year" before "your claim ratio improved from 87% to 77%"
- Acknowledge misses and contextualize them — a value report that only shows the wins and hides the misses is a marketing document, not a business review; if a success plan target was missed, the value report acknowledges it, explains why, and presents the correction plan; a customer who sees an honest miss with a clear correction plan trusts the relationship; a customer who sees a cherry-picked metric set knows they're being managed rather than served
- HITL required: Dr. Lewis reviews all value realization reports before they are presented; all dollar claims must be backed by system-of-record data; CEO reviews value reports for Priority A accounts before renewals; any ROI calculation methodology change requires Dr. Lewis approval; value realization reports used in external marketing (website; case studies) require CEO and Matt Mathison approval

## System Dependencies
- **Reads from:** AdvancedMD claim ratio data (Allevio — monthly actuals; year-over-year comparison); QuickBooks (ACV for ROI denominator; PMPM cost vs. prior carrier from account setup data); AdvancedMD member count (enrollment rate); Column6 campaign dashboard (VCR; CPM; impression delivery; attribution data); Covercy (royalty payments — YTD and cumulative; monthly trend); cs-success-plan-builder (what were the original success plan targets? — comparison baseline)
- **Writes to:** Value realization report (SharePoint/CustomerSuccess/<Company>/ValueReports/[Account]_[Year]_ValueDelivered.pdf); renewal documentation (cs-renewal-coordinator — Day -90 value documentation uses this framework); QBR section 2 data (cs-qbr-preparer); case study pipeline (cs-advocacy-builder — strong ROI stories may become case study candidates); cs-kpi-dashboard (avg customer ROI as a CS portfolio metric)
- **HITL Required:** Dr. Lewis reviews all value reports before presentation; all dollar claims backed by system data; CEO reviews Priority A value reports before renewals; ROI methodology changes require Dr. Lewis approval; external use (marketing; investor reporting) requires CEO and Matt Mathison approval

## Test Cases
1. **Golden path:** Allevio — 120-member group; Year 1 complete; value report built: claim ratio 87% → 77% (10-point improvement); prior carrier PMPM was $680; current Allevio PMPM is $614 (claim savings + care management fee); savings: ($680 − $614) × 120 × 12 = $95,040; HR Director time savings: baseline survey showed 8 hrs/week; current estimate 3 hrs/week = 5 hrs saved × $55/hr × 52 wks = $14,300; total value: $109,340; ACV: $88,416 (614 × 120 × 12); ROI: 1.24× → Dr. Lewis presents to HR Director and CFO: "In Year 1, Allevio delivered $109,340 in measurable value against your $88,416 investment — a 1.24× return. The primary driver was a 10-point claim ratio improvement. In Year 2, with a full year of clinical care intervention data, we project reaching 73-75%, which would add another $35-45K in savings." CFO: "That's the first time any benefits vendor has ever shown us that math." Renewal signed early
2. **Edge case:** Column6 — value report building reveals that CPM delivered ($24.50) was actually slightly above the market benchmark ($22.00) for that DMA and audience segment → Dr. Lewis: "We can't hide from this — the CPM was above market this quarter. Here's what we include in the value report: (1) Acknowledge it; (2) Show the VCR offset — our VCR was 94% vs. an industry avg of 62% for linear, meaning each impression had dramatically more completion value; (3) Show the attribution results — CPA was $47 vs. the agency's blended channel CPA of $68. The story is: we cost slightly more per impression but delivered dramatically more per completed view and per conversion. That's the real value narrative — effective CPM (eCPM per completed view) where Column6 wins." Report built with the honest data and the complete story; agency appreciates the transparency; Q3 IO booked
3. **Adversarial:** A CS rep builds a value report using a prior PMPM estimate that wasn't sourced from the actual prior carrier's invoices — the estimate was higher than the actual rate, inflating the savings calculation → Dr. Lewis: "Stop. This number is wrong — and if the CFO fact-checks it against their prior carrier's invoices, we lose all credibility. The savings calculation must use the actual prior PMPM from the employee benefits statement the HR Director provided during onboarding. Go pull that document from SharePoint now. If we used an estimate in the sales ROI calculator, that's fine — but the value report uses actual data only. I'd rather show a smaller ROI that's accurate than a larger one that's not." Correct PMPM sourced; savings calculation corrected from $95K to $72K; report rebuilt; presented with actual data; CFO specifically says "I like that this is based on our real numbers"

## Audit Log
All value realization reports retained by account, entity, and year. Source data citations retained (which system; which date; what number). Dr. Lewis review records retained. CEO review records for Priority A accounts retained. External use approvals retained.

## Deprecation
Retire when each portfolio company has a CS platform that auto-generates value reports from live system data — with Dr. Lewis reviewing the ROI calculation methodology annually and the CEO approving any changes to how value is measured.
