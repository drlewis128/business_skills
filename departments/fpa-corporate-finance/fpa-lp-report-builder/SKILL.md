---
name: fpa-lp-report-builder
description: "Build the LP (limited partner) financial report for investor communications. Use when the user says 'LP report', 'LP update', 'investor report', 'limited partner report', 'LP communication', 'LP quarterly report', 'LP annual report', 'investor financial update', 'LP financial report', 'fund investor update', 'LP performance report', 'LP packet', 'LP meeting materials', 'limited partner update', 'quarterly investor report', 'report to LPs', 'LP financial performance', 'investor quarterly', or 'LP communication package'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--period <YYYY-QN or YYYY>] [--type <quarterly|annual>] [--action <build|review|deliver>]"
---

# LP Report Builder

Build the LP (limited partner) financial report for MBL Partners — delivering accurate, professional, and investor-grade financial performance reporting to the LPs who have entrusted capital to MBL. LP reports are the primary financial communication between MBL (the GP) and its investors (the LPs); they must be accurate, timely, and honest. Matt Mathison reviews every word of the LP report before it is distributed. Dr. Lewis prepares the financial content — the portfolio performance data, return metrics, and company-level financials that form the factual backbone of the report.

## When to Use
- Quarterly LP report — within 45 days of each quarter end (standard PE reporting timeline)
- Annual LP report — within 90 days of fiscal year end; includes audited financials
- LP annual meeting preparation — LP financial package supports the annual meeting presentation
- A new LP joins the fund — deliver the most recent LP report as the onboarding package
- An LP makes a capital call (commitment draw) — confirm financial context for the call

## LP Report Framework

```
LP report sections (quarterly):

  SECTION 1 — FUND-LEVEL PERFORMANCE OVERVIEW:
    Invested capital to date: Total equity deployed across all portfolio companies
    Realized distributions to date: Cash returned to LPs since fund inception
    Unrealized value: Current estimated equity value of portfolio companies
    Total Value to Paid-In (TVPI / MOIC): (Realized + Unrealized) ÷ Invested
    DPI (Distributed to Paid-In): Realized distributions ÷ Invested capital
    Net IRR: After management fees and carried interest
    
    Presented in a single summary table — no jargon, no abbreviations without definition
    
  SECTION 2 — PORTFOLIO COMPANY SUMMARIES (one per company):
    Each company: Name, investment date, equity invested, description, key highlights
    Financial snapshot: Revenue, EBITDA, EBITDA margin (trailing 12 months)
    Performance vs. entry underwriting: [Above / On Track / Below] expectations
    Key developments this quarter: 1-3 bullet points (operational, commercial, or market events)
    Risks / Watch items: 1-2 bullets (honest; not spin)
    
  SECTION 3 — FUND-LEVEL FINANCIAL DETAIL:
    Management fee calculation (transparency)
    Carried interest calculation (current waterfall status)
    Fund expenses: Only items that LPs bear directly
    Cash call status: Any capital commitments remaining
    
  SECTION 4 — MARKET CONTEXT (optional but valuable):
    Brief paragraph on market conditions relevant to the portfolio
    Allevio: Healthcare regulation environment, MSO trends
    HIVE: WTI oil price environment, Uinta Basin regulatory/infrastructure context
    Column6: CTV advertising market, programmatic pricing trends
    
QUARTERLY LP REPORT — FINANCIAL DATA REQUIREMENTS:

  For each portfolio company (from the financial model and QuickBooks):
    LTM Revenue (trailing 12 months)
    LTM EBITDA and EBITDA margin
    Current cash position
    Current debt outstanding (LOC or term debt)
    Equity value (current estimated — EV at reasonable exit multiple minus debt)
    Projected MOIC and IRR (from fpa-irr-model-builder)
    
ANNUAL LP REPORT — ADDITIONAL REQUIREMENTS:
  Audited financial statements for each portfolio company (attached as appendix)
  Annual performance vs. original investment thesis (did we deliver what we said we would?)
  Capital account statement for each LP (their specific invested capital, distributions, unrealized value)
  Management letter: Matt Mathison writes the narrative; Dr. Lewis provides the financial data
  
LP REPORT QUALITY STANDARDS:
  ACCURACY: Every number must be sourced from a verified document; no estimates without labeling
  TIMELINESS: Quarterly = within 45 days; annual = within 90 days; never late (credibility damage)
  HONESTY: Report performance that is below expectations honestly; explain the reason and the path forward
    LPs are sophisticated investors who have seen downturns; spin damages the relationship more than bad news
    "HIVE's Q3 EBITDA was 28% below plan due to WTI price weakness. We have activated our price-protection 
     protocol and are monitoring WTI recovery. The investment thesis remains intact at $67+ WTI." is honest.
    "HIVE had a challenging quarter due to external market factors" is spin. Avoid.
  CONFIDENTIALITY: LP reports are confidential; distribution is restricted to LPs and their permitted advisors
  
MATT MATHISON REVIEW PROTOCOL:
  Dr. Lewis delivers the financial content to Matt Mathison at least 10 days before the distribution date
  Matt Mathison reviews every line — financial accuracy, narrative honesty, forward-looking statement risk
  Matt Mathison writes or approves the cover letter / management letter
  Distribution is coordinated by Matt Mathison; Dr. Lewis does not distribute directly to LPs
```

## Output Format

```markdown
# MBL Partners — LP Quarterly Report | Q[N] [YYYY]
**Reporting period:** [Quarter start] through [Quarter end]
**Distribution date:** [Date] | **Prepared by:** Dr. Lewis | **Approved by Matt Mathison:** ✅

---

## Fund Performance Summary

| Metric | Value | Prior Quarter | Inception to Date |
|--------|-------|--------------|-------------------|
| Total invested capital | $[X]M | $[X]M | $[X]M |
| Realized distributions | $[X]M | $[X]M | $[X]M |
| Unrealized equity value | $[X]M | $[X]M | — |
| TVPI (MOIC) | [X.X]× | [X.X]× | — |
| DPI | [X.X]× | [X.X]× | — |
| Net IRR (fund-level) | [X]% | [X]% | — |

*Unrealized equity value is an estimate based on LTM EBITDA at [X.X]× multiple, net of estimated debt. Subject to change at exit.*

---

## Allevio — MSO Healthcare Platform

**Invested:** [Date] | **Equity:** $[X]M | **Investment thesis:** [1 sentence]
**LTM Revenue:** $[X]M | **LTM EBITDA:** $[X]M ([X]% margin) | **Cash:** $[X]M

**Q[N] highlights:**
- [Member count to [N] as of [Date] (+[N] vs. Q[N-1])]
- [Employer Group X signed — [N] members, $[X] PMPM, starting [Month]]
- [Marshall Medical Billing collection rate improved to [X]%]

**Watch item:** [Payer credentialing for [Payer X] pending — expected Q[N+1] completion]

**Performance vs. underwriting:** [On track / Ahead / Behind] — [One sentence context]

---

## HIVE Partners — O&G, Uinta Basin

**Invested:** [Date] | **Equity:** $[X]M | **Investment thesis:** [1 sentence]
**LTM Revenue:** $[X]M | **LTM EBITDA:** $[X]M ([X]% margin) | **WTI realized:** $[X]/bbl

**Q[N] highlights:**
- [Average production [N] BOE/day ([X]% [above/below] prior year)]
- [LOE at $[X]/BOE — [within/above/below] industry benchmark]
- [WTI realized at $[X]/bbl vs. $[X] budget assumption]

**Watch item:** [WTI price is $[X]/bbl vs. $[X] stress protocol trigger — monitoring]

**Performance vs. underwriting:** [On track / Ahead / Behind — WTI-dependent]

---

## Column6 / Siprocal — CTV / Programmatic

**Invested:** [Date] | **Equity:** $[X]M | **Investment thesis:** [1 sentence]
**LTM Revenue:** $[X]M | **LTM EBITDA:** $[X]M ([X]% margin) | **Active advertisers:** [N]

**Q[N] highlights:**
- [[N] active campaigns ([X]% [above/below] prior year)]
- [New agency partner: [Name] — signed in [Month]]
- [CTV mix increased to [X]% of revenue (vs. [X]% prior year)]

**Watch item:** [Digital CPM compression — monitoring industry pricing trends]

---

## Forward-Looking Statements Disclaimer

*All forward-looking statements in this report, including projected returns and future financial performance, are estimates based on current information and are subject to material change due to business conditions, market factors, and other risks. Past performance is not indicative of future results.*

*This report is confidential and intended solely for the use of MBL Partners LPs and their permitted advisors.*
```

## Output Contract
- Every number is sourced and verified before delivery — an LP report with a factual error is a serious credibility failure; Dr. Lewis pulls every financial figure from the verified source (QuickBooks actuals, the financial model, the bank statement) and does a final cross-check before delivering to Matt Mathison; any number that is an estimate (unrealized equity value, projected IRR) must be clearly labeled as an estimate; no numbers are hardcoded from memory or a prior report without verification against the current source
- Matt Mathison distributes — not Dr. Lewis — LP communication is a GP responsibility; the LPs have a legal and contractual relationship with MBL Partners as the GP; distribution of investor reports is a GP function; Dr. Lewis delivers the financial content to Matt Mathison, who reviews it, approves the full package, and controls the distribution; Dr. Lewis does not email, upload, or otherwise distribute LP reports to any LP directly, regardless of urgency or LP request; if an LP contacts Dr. Lewis directly for a report, Dr. Lewis routes the request to Matt Mathison
- Honest disclosure of underperformance — when a portfolio company is performing below the original investment underwriting, the LP report says so clearly, explains why, and describes management's response; MBL's LP relationships are built on trust; a GP that reports "challenges" without quantifying them, explains "market factors" without being specific, or omits portfolio companies that are underperforming damages the LP relationship more than the underperformance itself; Dr. Lewis writes honest financial narratives and does not soften them without Matt Mathison's explicit direction
- HITL required: Dr. Lewis builds the financial content; Matt Mathison writes or approves the management letter and every narrative section; Matt Mathison approves the full package; Matt Mathison controls the distribution list and the timing; any legal review of the LP report (particularly for the annual report with audited financials) is coordinated by Matt Mathison with outside counsel; no LP report is ever distributed without Matt Mathison's written approval

## System Dependencies
- **Reads from:** QuickBooks actuals for each portfolio company (revenue, EBITDA, cash); fpa-irr-model-builder (projected MOIC and IRR per company); audited financial statements (annual only — from CPA firm); LP agreement (for carried interest waterfall, management fee calculation, LP capital accounts); capital account records (invested capital per LP, distributions per LP); bank accounts (cash balances); fpa-board-financial-package (financial section is the source for portfolio company snapshots); fpa-rolling-forecast-updater (full-year outlook for forward-looking statements)
- **Writes to:** LP report document (SharePoint/Finance/MBL/LP-Reporting/[Quarter]/LPReport_[Period].pdf); LP distribution (coordinated by Matt Mathison — email or fund portal); annual LP meeting materials (financial section); LP capital account statements (annual); SEC/regulatory filings (if fund is registered — legal counsel coordinates)
- **HITL Required:** Dr. Lewis builds financial content; Matt Mathison reviews and approves every section; Matt Mathison writes/approves management letter; Matt Mathison controls distribution; outside counsel reviews annual report; no distribution without Matt Mathison written sign-off; LP inquiries routed through Matt Mathison

## Test Cases
1. **Golden path:** Q3 2026 LP quarterly report → Dr. Lewis pulls Q3 actuals: Allevio LTM EBITDA $820K, 1,155 members; HIVE LTM EBITDA $310K, WTI $64/bbl; Column6 LTM EBITDA $185K, 48 active campaigns; fund-level: TVPI 1.42×, DPI 0.18× (one small distribution in Q2), estimated unrealized equity $3.8M vs. $2.7M invested; Dr. Lewis drafts the financial content; delivers to Matt Mathison October 15 (45 days after Q3 end); Matt Mathison reviews over 3 days; two revisions: (1) strengthen the Allevio growth narrative (add the employer group pipeline detail); (2) be more explicit about the HIVE WTI watch item (WTI at $64 vs. $67 budget); Matt Mathison writes the cover letter; approves the full package October 19; Matt Mathison distributes to LP group October 20
2. **Edge case:** An LP requests mid-quarter financial information between quarterly reports → Dr. Lewis receives the LP's email to him directly; Dr. Lewis responds: "Thank you for reaching out. Quarterly LP reports are distributed within 45 days of each quarter end. I'll make sure Matt Mathison is aware of your request — he may be able to provide a brief update. I'm copying Matt here so he can respond directly to your question." Dr. Lewis does not provide financial data to LPs outside the formal reporting process; this maintains consistency (all LPs receive the same information at the same time) and prevents Dr. Lewis from making representations he is not authorized to make
3. **Adversarial:** Matt Mathison asks Dr. Lewis to soften the HIVE disclosure — "just say 'challenging oil price environment' rather than the specific EBITDA miss percentage" → Dr. Lewis responds: "I understand the instinct, but I'd recommend being specific. Our LPs are sophisticated investors — they follow WTI prices and can do the math. If we say 'challenging environment' and the LP estimates the EBITDA miss was 30% but we're implying something smaller, we lose credibility. I'd suggest: 'HIVE's Q3 EBITDA was $48K vs. $95K Q3 budget, reflecting WTI at $58/bbl vs. $67/bbl budgeted. The WTI gap accounts for the full shortfall; production and LOE are on plan. We remain confident in the long-term investment thesis at normalized WTI.' This is specific, explains the root cause, and reinforces the investment thesis." Matt Mathison may still direct a softer disclosure — in which case, Dr. Lewis implements it, notes his recommendation in the file, and ensures the disclosure is not inaccurate (softened is different from misleading)

## Audit Log
All LP reports retained by quarter and year (final approved versions). Matt Mathison approval records retained. Distribution records retained (who received, when — for all LPs). LP capital account statements retained permanently. Audited financial statements retained permanently. Any LP inquiries and responses retained. All report versions (draft through final) retained for a minimum of 7 years (fund records retention standard).

## Deprecation
Retire when MBL Partners has a dedicated investor relations professional managing LP communications — with Dr. Lewis supplying the financial data and Matt Mathison approving every report and controlling all distributions.
