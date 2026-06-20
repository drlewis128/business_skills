---
name: pe-fund-performance-review
description: "Conduct annual fund performance reviews for MBL Partners. Use when the user says 'fund performance review', 'annual fund review', 'fund performance', 'fund review', 'annual review fund', 'year-end fund review', 'fund performance analysis', 'fund performance assessment', 'year in review', 'fund year-end review', 'how did the fund do', 'fund performance this year', 'fund performance summary', 'GP annual review', 'GP performance', 'portfolio performance review', 'investment performance review', 'annual performance assessment', 'returns review', 'annual returns review', 'IRR review annual', 'TVPI annual review', 'DPI annual', 'fund metrics review', 'portfolio company performance annual', 'entity performance annual', 'what worked this year', 'what did not work this year', 'lessons learned', 'GP assessment', 'team performance review', 'deal performance review', 'deal outcome review', 'investment outcome review', 'exit performance review', 'realized returns review', 'unrealized returns review', 'value creation review annual', 'fund health check', or 'annual fund health'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--year <YYYY>] [--scope <full-fund|portfolio|deal-level|team>] [--action <compile|analyze|draft|present>] [--audience <internal|lp|matt>]"
---

# PE Fund Performance Review

Conduct annual fund performance reviews for MBL Partners — compiling fund-level returns, portfolio company performance vs. plan, value creation progress, deal-level outcomes, and lessons learned into a comprehensive assessment that informs the next year's strategy and is the foundation for the annual LP meeting performance section. The annual fund performance review serves two audiences: Matt Mathison (honest internal assessment of what worked and what didn't) and LPs (transparent report on performance vs. commitments made at fund close). The internal review is more rigorous and self-critical than the LP version — it includes what MBL should have done differently; the LP version reports performance with appropriate context but without excuses.

## When to Use
- Q4 or Q1 annual performance review cycle
- Matt Mathison asks "let's review this year's performance"
- Building the foundation for the annual LP meeting
- Preparing the fund strategy update for the following year

## Annual Fund Performance Review Framework

```
PERFORMANCE REVIEW SECTIONS:

  SECTION 1 — FUND-LEVEL RETURNS (as of Dec 31 or most recent quarter-end):
    TVPI: current (with benchmark comparison)
    DPI: realized returns
    RVPI: unrealized value
    Net IRR: inception-to-date (XIRR)
    PME: vs. S&P 500 and Russell 2000 (pe-benchmark-comparator)
    Capital account: committed; called; distributed; uncalled
    Management fees and carry: YTD and inception-to-date
    
  SECTION 2 — PORTFOLIO COMPANY PERFORMANCE (entity-by-entity):
    Financial performance vs. plan: revenue; EBITDA (actual vs. plan % variance)
    North Star metrics vs. targets: GRR; VCR; WTI/production; DSO
    FMV vs. prior year: $ change; % change; MOIC trend
    Value creation plan (VCP): which initiatives completed; which still open; any failed
    Management team: any changes; THRIVE rating; key hires
    Risks that materialized: what happened vs. what was predicted at investment
    Risks that didn't materialize: where we were worried but turned out to be fine
    HIPAA: Allevio review uses aggregate data only — no PHI
    
  SECTION 3 — DEAL ACTIVITY (this year):
    New investments closed: name; sector; EV; invested equity; thesis summary; current status
    Exits closed: name; sector; exit EV; MOIC; gross IRR; highlights and learnings
    Deals passed: any significant deals passed on — brief rationale (deal quality; price; thesis fit)
    Pipeline health: volume; velocity; quality trend vs. prior year
    
  SECTION 4 — WHAT WORKED / WHAT DIDN'T (internal assessment; for Matt Mathison):
    Wins: specific decisions that created value; sourcing insights; operational improvements
    Misses: investments where we underperformed vs. thesis; deals we passed that worked out
    Pricing discipline: were our LOI prices disciplined? any regret on over-paying or under-bidding?
    Operational execution: which value creation initiatives delivered vs. which fell short?
    LP relationship: any LP concerns; any communication gaps; any relationship risks
    
  SECTION 5 — LESSONS LEARNED AND NEXT YEAR PRIORITIES:
    Top 3 lessons from this year (specific; honest; actionable)
    Top 3 priorities for next year (with accountability to Matt Mathison or Dr. Lewis)
    Strategy adjustments (if any) — for Matt Mathison decision

ANNUAL REVIEW TIMING:

  Jan 1-15: Dr. Lewis compiles year-end data (QuickBooks; entity KPIs; fund accounting)
  Jan 15-25: FMV finalized (valuation committee: Dr. Lewis + Matt Mathison)
  Jan 25-Feb 5: Draft performance review prepared by Dr. Lewis
  Feb 5-10: Matt Mathison reviews internal version
  Feb 10-15: Matt Mathison provides feedback; revisions
  Feb 15: Internal annual review final
  Feb 15-28: LP version prepared (from internal review)
  Mar 1-15: Annual LP meeting materials prepared (pe-lp-annual-meeting)
  Mar 31: Audited financial statements (target completion; per pe-fund-accounting timeline)
```

## Output Format

```markdown
# MBL Partners — Annual Fund Performance Review — [YYYY]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison | **Version:** Internal

---

## Fund Performance Summary

| Metric | [YYYY] | Prior year | Inception-to-date |
|--------|--------|-----------|------------------|
| TVPI | [X.Xx]x | [X.Xx]x | [X.Xx]x |
| DPI | [X.Xx]x | [X.Xx]x | [X.Xx]x |
| RVPI | [X.Xx]x | [X.Xx]x | [X.Xx]x |
| Net IRR | [X%] | [X%] | [X%] |
| PME (S&P 500) | [X.Xx]x | — | [X.Xx]x |

---

## Portfolio Company Performance vs. Plan

| Entity | Revenue actual | Revenue plan | Variance | EBITDA actual | EBITDA plan | Variance | FMV change | MOIC |
|--------|--------------|-------------|---------|--------------|------------|---------|-----------|------|
| Allevio | $[X] | $[X] | [X%] | $[X] | $[X] | [X%] | [+/-X%] | [X.X]x |
| HIVE | $[X] | $[X] | [X%] | $[X] | $[X] | [X%] | [+/-X%] | [X.X]x |
| Column6 | $[X] | $[X] | [X%] | $[X] | $[X] | [X%] | [+/-X%] | [X.X]x |

---

## What Worked / What Didn't (Internal)

**Wins this year:**
1. [Specific win]
2. [Specific win]

**Misses this year:**
1. [Specific miss — no excuses]
2. [Specific miss]

**Top 3 lessons:**
1. [Lesson — specific; actionable]
2. [Lesson]
3. [Lesson]

**Top 3 priorities for [next year]:**
1. [Priority — owner; timeline]
2. [Priority]
3. [Priority]
```

## Output Contract
- The internal performance review is the most honest document MBL produces — it is for Matt Mathison only (not for LP distribution), and it should include Dr. Lewis's unvarnished assessment of what worked and what did not; the purpose of the internal review is to make MBL better at every step of the investment cycle; a review that says "everything went well with some areas for improvement" is not useful; a review that says "we overpaid for [deal] because we rushed the diligence under deadline pressure; the lesson is to build 2 more weeks into our diligence timeline and never compress DD for an intermediary's artificial deadline" is useful; Matt Mathison uses these honest assessments to make the next year better
- The LP version omits internal critique but does not omit performance facts — the LP version of the annual review is derived from the internal review but removes the "what we should have done differently" section; it does not remove negative performance facts (entities that underperformed; FMV reductions; risks that materialized); the LP version has the same financial and operational data as the internal version; it simply frames the findings professionally rather than as internal critique; an LP version that removes negative performance data is misleading; Matt Mathison reviews both versions
- Plan vs. actual analysis uses the original investment plan, not an updated plan — comparing actual performance to the original investment thesis plan (not a revised plan that was updated mid-year) is the only accurate measure of whether MBL executed on its thesis; if the original plan projected 15% EBITDA CAGR and the entity delivered 8%, the variance is -7 percentage points; rationalizing the variance as "the plan was adjusted mid-year because of market conditions" may be true but it obscures the performance gap from the original thesis; Dr. Lewis maintains the original investment plan for each entity and compares actual performance to it annually
- HITL required: annual fund performance review (internal) → Matt Mathison reviews and provides feedback before it is finalized; FMV finalization → valuation committee (Dr. Lewis + Matt Mathison) approval before the review uses those numbers; LP version → Matt Mathison reviews and approves; any entity performance that is materially below plan → Matt Mathison briefing before the review is finalized; lesson 1-3 and next year priorities → Matt Mathison approves the priorities and assigns ownership

## System Dependencies
- **Reads from:** pe-irr-tracker (net IRR; fund-level returns); pe-moic-calculator (TVPI; DPI; RVPI); pe-benchmark-comparator (PME; benchmark comparison); pe-portfolio-kpi-dashboard (entity KPI actuals); pe-value-creation-tracker (VCP completion status); pe-valuation-model (approved FMV for each entity); pe-fund-accounting (capital account; management fees; carry); pe-deal-screener (pipeline metrics for the year); original investment plans (per entity — maintained in SharePoint)
- **Writes to:** Annual fund performance review — internal version (SharePoint → Strategy → Annual Reviews → [YYYY]); annual fund performance review — LP version; annual LP meeting performance section; Matt Mathison year-end briefing; pe-investment-strategy (lessons that affect the thesis); pe-lp-annual-meeting (Section 1 source)
- **HITL Required:** Internal review → Matt reviews; FMV finalization → valuation committee approves; LP version → Matt approves; below-plan entities → Matt briefing before review finalized; priorities → Matt approves and assigns ownership

## Test Cases
1. **Golden path:** Year-end performance review. Fund TVPI: 1.42x (up from 1.28x prior year); DPI: 0.18x (first distribution made from HIVE royalties); RVPI: 1.24x; Net IRR: 14.2%; PME: 1.24x vs. S&P 500. Allevio: revenue +12% vs. plan +10% (2% ahead); EBITDA +18% vs. plan +12% (6% ahead; claim ratio improvement); FMV up 12%. HIVE: revenue -3% vs. plan +5% (WTI softness in Q2-Q3; recovered in Q4); EBITDA -5% vs. plan (WTI impact); FMV flat. Column6: revenue +9% vs. plan +15% (6% behind; VCR softness caused 1 major agency to reduce spend); EBITDA -8% vs. plan; FMV -4%. Lessons: (1) HIVE WTI sensitivity risk is real — we need a WTI derivative hedge option analysis for next year; (2) Column6 VCR is the leading indicator to watch — we should get monthly VCR data not quarterly; (3) Allevio EBITDA outperformance came from claims management discipline — replicable model for next acquisition.
2. **Edge case:** One portfolio company dramatically underperformed its plan (EBITDA 40% below plan) → Dr. Lewis: "I'm presenting this plainly: [Entity] EBITDA came in 40% below the original investment plan. The original thesis assumed revenue growth of 15% CAGR and EBITDA margin expansion of 3 points; actual was 2% revenue growth and margin contraction. The primary driver was [specific cause — customer churn; cost overrun; market decline]. This is not what we underwriting at entry. In the internal review, I want to capture: what signals did we miss in diligence? what should we have caught? and what is the action plan to recover? I'll prepare a specific section for Matt Mathison that addresses these questions honestly rather than softening what happened."
3. **Adversarial:** Matt Mathison asks Dr. Lewis to present the fund performance review at the annual LP meeting without disclosing that one entity was 40% below plan, because "we've got a plan to recover and we don't want to alarm LPs" → Dr. Lewis: "I want to discuss this with you before we finalize the LP materials. My concern: (1) the quarterly reports already disclosed the FMV reduction — LPs are aware something happened; (2) the annual review that doesn't address it directly creates a bigger credibility problem when LPs compare the quarterly reports to the annual review; (3) the plan to recover is actually a strong message — 'here is what happened; here is why; here is our specific 3-point plan for recovery' is a GP who is in control; a report that doesn't mention it looks like a GP who is hiding it. My recommendation: disclose it directly with the recovery plan. I'll draft language for your review. But if after that you still want to omit it, that's your call as Managing Partner — I'll note my position in the record."

## Audit Log
All annual fund performance reviews retained permanently — internal version and LP version separately. Original investment plan documents retained (for plan vs. actual comparison). Matt Mathison review and approval records retained. FMV approval records retained (valuation committee). LP version distribution records retained.

## Deprecation
Annual fund performance review is a permanent function for the life of each fund. The internal review format is updated when Matt Mathison requests changes or when new metrics are added.
