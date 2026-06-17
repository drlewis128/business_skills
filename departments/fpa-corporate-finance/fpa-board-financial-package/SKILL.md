---
name: fpa-board-financial-package
description: "Prepare the board financial package — investor-grade financials for board and LP meetings. Use when the user says 'board package', 'board financials', 'board financial package', 'board meeting financials', 'investor package', 'board reporting', 'board financial report', 'board presentation financials', 'prepare board package', 'board deck financials', 'LP financials', 'board materials', 'investor update financials', 'board prep financials', 'financial section for the board', 'quarterly board report', or 'investor financial report'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY-QN or YYYY-MM>] [--audience <board|lp|both>] [--action <prepare|review|deliver>]"
---

# Board Financial Package

Prepare the financial section of the board and LP meeting package for MBL portfolio companies — producing investor-grade financial reporting that is accurate, clear, and professionally formatted. The board financial package is the primary financial communication between MBL management and its investors; it is not an internal management tool — it is a document that represents the company's financial performance to the people who own it. Dr. Lewis prepares the board financial package and Matt Mathison reviews every word before it goes to the board or LPs.

## When to Use
- Quarterly board meetings — 10 business days before the meeting date
- Annual LP meeting — financial performance section of the annual LP presentation
- Any investor update that includes financial performance
- A special board call — financial context must accompany any strategic presentation
- Matt Mathison requests a financial summary for a board member inquiry

## Board Financial Package Framework

```
Board financial package sections (quarterly):

  SECTION 1 — EXECUTIVE FINANCIAL SUMMARY:
    Single page (or 2 pages maximum)
    Quarter headline: Revenue vs. plan; EBITDA vs. plan; cash position
    YTD headline: YTD actuals vs. full-year budget
    Full-year forecast: Where are we tracking to?
    Key variances: 2-3 bullets explaining the most significant variances
    
    Format: Traffic light (🟢/🟡/🔴) for each metric
    🟢 = Within 5% of plan; 🟡 = 6-15% below plan; 🔴 = >15% below plan
    Favorable variances: 🟢 regardless of direction
    
  SECTION 2 — INCOME STATEMENT:
    Quarterly P&L: Current quarter vs. prior year quarter; vs. budget
    YTD P&L: YTD vs. prior year YTD; vs. budget YTD
    Includes: Revenue, Gross Profit (with margin), EBITDA (with margin), Net Income
    Format: Clean, readable table (not the QuickBooks export — reformatted for board audience)
    
  SECTION 3 — REVENUE ANALYSIS:
    Revenue by segment (Allevio: by employer group; HIVE: production revenue vs. reimbursements; Column6: by format)
    Revenue trend chart: 8-12 quarters of revenue history with current quarter highlighted
    Key revenue drivers: Member count trend (Allevio); BOE/day production (HIVE); active campaigns (Column6)
    
  SECTION 4 — EBITDA BRIDGE:
    Shows how EBITDA moved from prior quarter to current quarter
    Shows how EBITDA moved from budget to actual
    Maximum 8 line items in the bridge — aggregate smaller items
    
  SECTION 5 — CASH AND BALANCE SHEET:
    Cash position (ending balance; days of reserve)
    Debt summary (outstanding balance; covenant compliance)
    Key balance sheet metrics: AR balance and DSO; CapEx YTD vs. plan
    
  SECTION 6 — FULL-YEAR FORECAST:
    Updated full-year forecast vs. original budget
    Forecast confidence: Is this forecast based on signed contracts or pipeline estimates?
    Key assumptions: 2-3 bullets on the most important drivers of the full-year forecast
    
  SECTION 7 — COVENANT COMPLIANCE (if applicable):
    Bank covenant metrics: DSCR, leverage, minimum cash
    Status: Compliant / At-risk / Violation (never deliver a board package with a known violation not disclosed)
    
BOARD PACKAGE QUALITY STANDARDS:

  NO SURPRISES RULE:
    Nothing in the board financial package should be new information to the board members who are paying attention
    Matt Mathison is always pre-briefed before the board meeting — he should not discover material news in the package
    If there is bad news (covenant approaching violation, EBITDA significantly below plan), Matt Mathison is briefed by phone before the package is distributed
    
  HONESTY IN THE NARRATIVE:
    The board package narrative must be honest — not spun
    "EBITDA was 18% below plan due to two delayed employer group starts" is honest
    "EBITDA was below plan due to strategic investments in member acquisition" (when the reality is execution delays) is spin and damages trust
    Dr. Lewis writes the narrative; Matt Mathison reviews for tone and accuracy; the narrative is not softened to make management look better
    
  FORWARD-LOOKING STATEMENTS:
    All forward-looking statements (full-year forecast, market outlook) must be clearly labeled as estimates
    Board members who are also LPs have liability concerns about misleading forward-looking statements
    Standard disclaimer: "All forward-looking statements are estimates and subject to change based on business conditions"

  ATTACHMENT OF GAAP FINANCIALS:
    Board package financial summary is management-prepared (not audited)
    Quarterly unaudited financial statements attached as appendix
    Annual audited financials replace the unaudited statements for Q4 (once the audit is complete)
    
  DELIVERY TIMING:
    Target: 10 business days before the board meeting
    Never less than 5 business days before the meeting (board members need time to read)
    Late delivery is a governance failure — Dr. Lewis prioritizes the board package delivery
```

## Output Format

```markdown
# Board Financial Package — [Entity] Q[N] [YYYY]
**Meeting date:** [Date] | **Package prepared:** [Date]
**Prepared by:** Dr. Lewis | **Reviewed by Matt Mathison:** ✅ | **Distributed:** [Date]

---

## Executive Financial Summary — Q[N] [YYYY]

| Metric | Q[N] Actual | Q[N] Budget | Variance | Status |
|--------|------------|------------|---------|--------|
| Revenue | $[X]K | $[X]K | +/−$[X]K ([X]%) | 🟢/🟡/🔴 |
| Gross Profit | $[X]K | $[X]K | +/−$[X]K | 🟢/🟡/🔴 |
| EBITDA | $[X]K | $[X]K | +/−$[X]K ([X]%) | 🟢/🟡/🔴 |
| Cash (period end) | $[X]K | $[X]K budget | +/−$[X]K | 🟢/🟡/🔴 |

**YTD:** Revenue $[X]K vs. $[X]K YTD budget (+/−$[X]K, [X]%). EBITDA $[X]K vs. $[X]K (+/−$[X]K).
**Full-year forecast:** $[X]K revenue; $[X]K EBITDA ([X]% [above/below] budget of $[X]K).

**Key variances this quarter:**
1. [Revenue: specific driver, amount, forward outlook]
2. [EBITDA: specific driver, amount, management response]
3. [Cash: any notable movement — distributions, CapEx, LOC activity]

---

## Q[N] Income Statement

| | Q[N] Actual | Q[N] Budget | Variance | Q[N] Prior Year |
|--|------------|------------|---------|----------------|
| Revenue | $[X]K | $[X]K | +/−$[X]K | $[X]K |
| Gross Profit | $[X]K | $[X]K | +/−$[X]K | $[X]K |
| **Gross Margin** | **[X]%** | **[X]%** | **[X] bps** | **[X]%** |
| Operating Expenses | ($[X]K) | ($[X]K) | +/−$[X]K | ($[X]K) |
| **EBITDA** | **$[X]K** | **$[X]K** | **+/−$[X]K** | **$[X]K** |
| **EBITDA Margin** | **[X]%** | **[X]%** | **[X] bps** | **[X]%** |
| Net Income | $[X]K | $[X]K | +/−$[X]K | $[X]K |

---

## Cash and Covenant Summary

**Ending cash:** $[X]K ([X] days of operating reserve)
**LOC:** $[X]K outstanding of $[X]K facility | Rate: Prime + [X]%

| Covenant | Threshold | Current | Status |
|---------|-----------|---------|--------|
| DSCR | ≥1.20× | [X.XX]× | 🟢/🟡/🔴 |
| Minimum cash | ≥$[X]K | $[X]K | 🟢/🟡/🔴 |

---

## Full-Year Forecast

| Metric | FY Budget | Q[N] Forecast | Variance | Confidence |
|--------|----------|--------------|---------|-----------|
| Revenue | $[X]K | $[X]K | +/−$[X]K | High/Medium/Low |
| EBITDA | $[X]K | $[X]K | +/−$[X]K | High/Medium/Low |
| Cash (EOY) | $[X]K | $[X]K | +/−$[X]K | High/Medium/Low |

*All forward-looking statements are estimates subject to business conditions.*

**Appendix:** Unaudited quarterly financial statements (P&L, Balance Sheet, Cash Flow)
```

## Output Contract
- Matt Mathison reviews every word before distribution — the board financial package goes to investors who hold fiduciary interests in the company; errors, spin, or misleading statements in the board package damage MBL's investor relationships and can create legal exposure; Dr. Lewis prepares the draft and delivers it to Matt Mathison at least 3 business days before the target distribution date; Matt Mathison reviews for accuracy, tone, and completeness; any changes Matt Mathison requests are incorporated before distribution; the package does not go to the board until Matt Mathison has signed off
- No surprises to the board — bad news in the board package that Matt Mathison didn't know about before the meeting is a governance failure; any material negative development (EBITDA >15% below plan, covenant approaching violation, loss of a major customer) is communicated to Matt Mathison by phone as soon as Dr. Lewis becomes aware, not saved for the board package; the board package then documents the issue, the management response, and the current status — it does not deliver the news
- The financial summary is 1-2 pages maximum — board members are experienced investors who read many board packages; a 20-page financial package will not be read carefully; the executive financial summary, the income statement comparison, and the full-year forecast fit on 2 pages; supporting schedules (detailed P&L, balance sheet) go in the appendix; Dr. Lewis disciplines himself to summarize, not to overwhelm
- HITL required: Dr. Lewis prepares; Matt Mathison reviews and approves; package distributed only after Matt Mathison approval; board meeting Q&A on financials led by Dr. Lewis (available to answer detailed questions); any covenant violation or near-violation disclosed in the board package requires legal counsel review before distribution; distribution list managed by Matt Mathison

## System Dependencies
- **Reads from:** Monthly financial statements (fin-ops-financial-statement-preparer); rolling forecast (fpa-rolling-forecast-updater); budget (fpa-annual-budget-builder); variance analysis (fpa-variance-analyzer); covenant compliance data (fin-ops-bank-relationship-manager); DSO and cash position (fin-ops-cash-flow-tracker); prior board package (for trend comparisons)
- **Writes to:** Board financial package (SharePoint/Finance/<Company>/BoardReporting/[Quarter]/); board meeting distribution (email or board portal); LP report (quarterly); data room (board packages retained as due diligence materials); annual audited financial statement supplement (once available)
- **HITL Required:** Dr. Lewis prepares; Matt Mathison reviews and approves; distribution list managed by Matt Mathison; no distribution without Matt Mathison sign-off; any material negative development pre-briefed to Matt Mathison by phone before the package is drafted

## Test Cases
1. **Golden path:** Allevio Q2 2026 board package — board meeting scheduled for July 22 → Dr. Lewis prepares the draft by July 8 (10 business days before meeting); executive summary: Revenue $928K (+3.2% vs. $899K Q2 budget 🟢); EBITDA $192K vs. $185K budget (+$7K, +3.8% 🟢); cash $151K (47 days of reserve 🟢); no covenant issues; full-year forecast $780K EBITDA (on track with budget); key variances: one employer group start timing (positive news for Q3), one below-budget PMPM rate on a renewing group (minor); appendix: Q2 unaudited financial statements; Dr. Lewis delivers to Matt Mathison on July 8; Matt Mathison reviews July 9-10 — one comment: "soften the language on the rate miss — it was a conscious negotiating decision to preserve the relationship"; Dr. Lewis revises the language to be accurate and honest: "PMPM rate on [Group X] renewal was set at $82 vs. $85 budget, reflecting the strategic decision to secure the multi-year renewal; impact: −$8.4K full-year revenue; accepted by management as a relationship investment."; Matt Mathison approves July 11; package distributed to board July 12 (10 days before meeting)
2. **Edge case:** HIVE EBITDA is 28% below plan going into the Q3 board meeting → No surprises rule: Dr. Lewis briefed Matt Mathison by phone in August when the WTI price drop became clear; Matt Mathison is already aware; board package reflects the situation honestly: "HIVE Q3 EBITDA was $48K vs. $95K budget (−51% for the quarter, −28% YTD). The shortfall is driven entirely by WTI price: realized $58/bbl vs. $67/bbl budget. Production is on plan. At current WTI, full-year HIVE EBITDA forecast is $180K vs. $380K budget. The WTI stress protocol (pause discretionary CapEx, maximize cash conservation) has been activated. The LOC ($200K facility) is available if needed. No distribution is recommended this quarter." The board receives an honest, fully-documented picture; management has a response; no surprises; the board meeting discusses the response plan, not the numbers
3. **Adversarial:** A board member requests the board package be emailed to them 3 days before the meeting → Dr. Lewis communicates: "We target distribution 10 business days before the meeting. I'll do everything I can to have the package ready on that schedule. If there's a particular section you'd like to review earlier [e.g., the financial summary], I can share a draft of that section once Matt has reviewed it. The full package distribution is coordinated by Matt Mathison, so I'll flag your request to him." Dr. Lewis does not distribute the board package (even in draft form) without Matt Mathison's review and approval, regardless of board member requests; the board member request is handled by Matt Mathison directly

## Audit Log
All board packages retained by quarter (final approved version). Matt Mathison approval records retained. Distribution records retained (who received, when). Pre-briefing records for material negative events retained. Board meeting attendance and Q&A notes retained. Any board member inquiries and responses retained.

## Deprecation
Retire when each portfolio company has a CFO who prepares the board financial package — with Dr. Lewis reviewing the financial content and Matt Mathison approving every package before distribution.
