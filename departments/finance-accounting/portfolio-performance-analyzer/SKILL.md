---
name: portfolio-performance-analyzer
description: "Analyze financial performance across MBL portfolio companies. Use when the user says 'portfolio performance', 'portfolio review', 'portfolio companies performance', 'how are the portfolio companies doing', 'portfolio financial review', 'MBL portfolio update', 'cross-portfolio analysis', 'compare portfolio companies', 'portfolio reporting', 'portfolio scorecard', or 'portfolio financial summary'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <quarterly|annual|ytd>] [--focus <revenue|ebitda|cash|all>] [--compare-to <budget|prior-year|prior-quarter>]"
---

# Portfolio Performance Analyzer

Analyze and compare financial performance across MBL's portfolio companies — Allevio, HIVE Partners, Column6/Siprocal, and any other active portfolio entities. The portfolio performance analysis is how Matt Mathison sees the full picture: which companies are on track, which are struggling, and where the portfolio's aggregate value is moving. It's the managing partner's instrument panel.

## When to Use
- Monthly or quarterly — Matt Mathison wants the portfolio performance view
- Pre-board meeting — need to summarize portfolio performance across entities
- LP reporting cycle — portfolio aggregate performance for annual report
- Capital allocation decisions — where should MBL invest additional resources?
- A new portfolio company is being onboarded — baseline performance established
- Matt Mathison asks "how are we doing across the portfolio?"

## Portfolio Analysis Framework

```
MBL Portfolio (as of 2026):
  Allevio — healthcare MSO; primary metrics: revenue, gross margin, active practices, DSO
  HIVE Partners — oil & gas (Uinta Basin); primary metrics: BBL/day, realized price, LOE, NOI
  Column6/Siprocal — CTV/Media/Gaming; primary metrics: revenue, EBITDA, media spend efficiency
  MBL Partners (HoldCo) — management fees, G&A, aggregate cash

Comparison dimensions:
  1. Revenue performance (vs. budget and prior period)
  2. EBITDA performance (margin and absolute)
  3. Cash position (absolute and trend)
  4. Key operational KPIs (entity-specific)
  5. Trajectory: improving / stable / declining
```

## Output Format

```markdown
# Portfolio Performance Report — MBL Partners
**Period:** [Q[N] YYYY / YTD / Full Year YYYY]
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison
**Date:** <Date>

---

## Portfolio Scorecard

| Company | Revenue | vs. Budget | EBITDA | vs. Budget | Cash | Trajectory | Status |
|---------|---------|-----------|--------|-----------|------|-----------|--------|
| **Allevio** | $[X] | [±X%] 🟢/🟡/🔴 | $[X] ([X%]) | [±X%] 🟢/🟡/🔴 | $[X] | [↑/→/↓] | |
| **HIVE Partners** | $[X] | [±X%] 🟢/🟡/🔴 | $[X] ([X%]) | [±X%] 🟢/🟡/🔴 | $[X] | [↑/→/↓] | |
| **Column6/Siprocal** | $[X] | [±X%] 🟢/🟡/🔴 | $[X] ([X%]) | [±X%] 🟢/🟡/🔴 | $[X] | [↑/→/↓] | |
| **MBL Partners (HoldCo)** | $[X] | — | ($[X]) | — | $[X] | — | |
| **Portfolio Total** | **$[X]** | **[±X%]** | **$[X]** | **[±X%]** | **$[X]** | | |

---

## Company-Level Highlights

### Allevio (Healthcare MSO)

| KPI | Q[N] | Q[N-1] | Budget | Status |
|-----|-------|-------|--------|--------|
| Revenue | $[X] | $[X] | $[X] | 🟢/🟡/🔴 |
| Gross margin % | [X%] | [X%] | [X%] | |
| EBITDA | $[X] | $[X] | $[X] | |
| Active practices | [N] | [N] | [N] | |
| DSO | [N] days | [N] days | 35 days | |
| Cash | $[X] | $[X] | | |

**Narrative:** [2-3 bullets — what happened, what's the trend, what's the flag]

---

### HIVE Partners (Oil & Gas)

| KPI | Q[N] | Q[N-1] | Notes |
|-----|-------|-------|-------|
| Oil production (avg BBL/day) | [N] | [N] | |
| Realized price ($/BBL) | $[X] | $[X] | WTI − $[X] differential |
| Gross revenue | $[X] | $[X] | |
| LOE (Lease Operating Expense) | $[X] | $[X] | |
| Net operating income | $[X] | $[X] | |
| LP distributions (YTD) | $[X] | $[X] | |
| Cash | $[X] | $[X] | |

**Narrative:** [2-3 bullets — production trend, price environment, distribution plan]

---

### Column6 / Siprocal (CTV / Media / Gaming)

| KPI | Q[N] | Q[N-1] | Budget | Status |
|-----|-------|-------|--------|--------|
| Revenue | $[X] | $[X] | $[X] | 🟢/🟡/🔴 |
| Gross margin % | [X%] | [X%] | [X%] | |
| EBITDA | $[X] | $[X] | $[X] | |
| [Primary operational KPI] | [X] | [X] | | |
| Cash | $[X] | $[X] | | |

**Narrative:** [2-3 bullets]

---

## Portfolio-Level Observations

### Aggregate Cash Position

| Entity | Cash | % of Portfolio Cash |
|--------|------|-------------------|
| Allevio | $[X] | [X%] |
| HIVE Partners | $[X] | [X%] |
| Column6/Siprocal | $[X] | [X%] |
| MBL Partners (HoldCo) | $[X] | [X%] |
| **Portfolio Total** | **$[X]** | 100% |

**Cash concentration risk:** [Is one entity holding most of the portfolio's cash? Is cash distributed appropriately?]

---

## Key Flags for Matt Mathison

🟢 **Performing well:** [Specific company + specific win]
🟡 **Watch:** [Company + issue + what's being done]
🔴 **Action required:** [Company + issue + specific decision needed from Matt Mathison]

---

## Capital Allocation Observations

| Observation | Implication |
|------------|------------|
| [Entity A is outperforming with strong unit economics] | [Consider growth capital investment / acquisition capital] |
| [Entity B cash is below target reserve] | [Review capital structure / delay distribution] |
| [Portfolio cash available for deployment] | $[X] — [available for acquisition / growth investment / distribution to LPs] |

---

## Matt Mathison Summary (60-second read)

Portfolio performance — [Period]: Revenue $[X] ([±X%] vs. budget), EBITDA $[X] ([±X%]). Portfolio cash: $[X]. **Strongest:** [Company] — [1 sentence why]. **Weakest:** [Company] — [1 sentence why]. **Flags:** [Specific — 1-2 items requiring Matt Mathison action or awareness]. **Decisions needed:** [Specific — or "No decisions this period — Dr. Lewis managing"].
```

## Output Contract
- All portfolio companies always present — a portfolio performance report that omits a struggling company is worse than useless; Matt Mathison needs the full picture to make capital allocation decisions; every portfolio company with active operations must appear in every report
- Entity-specific KPIs must reflect the business model — a healthcare MSO is not well-described by oil metrics; Allevio needs active practices and DSO; HIVE needs BBL/day and LOE; Column6 needs media metrics; the scorecard must use the right KPIs for each business, not a one-size-fits-all financial template
- Trajectory indicator always present — Matt Mathison needs to see direction of travel, not just a point in time; a company with revenue below budget but on an improving trend is different from one that's below budget and declining; the trajectory arrow tells the story
- Decision flag always specific — every portfolio report must end with the specific decisions Matt Mathison needs to make; "no decisions needed" is a valid answer if there are none; vague flags ("HIVE is doing OK but watch it") are not acceptable — either there's a flag or there isn't
- HITL required: Dr. Lewis prepares and distributes; each portfolio company CEO validates their section's data; Matt Mathison reviews the consolidated report; any material change in a portfolio company's performance relative to plan requires Matt Mathison notification within 24 hours, not at the next scheduled report

## System Dependencies
- **Reads from:** QuickBooks (each entity's financial data), Covercy (HIVE production and distribution), individual entity management reports, portfolio company board packages
- **Writes to:** Portfolio performance report (SharePoint/Finance/Portfolio Reports/); Matt Mathison brief; LP annual report (portfolio section)
- **HITL Required:** Dr. Lewis prepares; each CEO validates entity data; Matt Mathison reviews; material underperformance vs. plan requires immediate notification, not waiting for monthly report

## Test Cases
1. **Golden path:** MBL Portfolio Q2 2026 → Allevio: revenue $987K (+7.2% vs. budget), EBITDA $142K (14.4% margin), cash $387K, 14 active practices, DSO 37 days — 🟢 on all metrics; HIVE: production 142 BBL/day (vs. 138 plan), realized $68.40/BBL (vs. $72 budget — $3.60 price variance due to WTI softness), NOI $287K, cash $234K — 🟡 (below revenue budget due to price, not volume); Column6: revenue $2.1M (vs. $2.3M budget — 8.7% miss), EBITDA breakeven (vs. $80K budget), cash $412K — 🔴 (revenue miss and EBITDA miss; CEO to present recovery plan); Portfolio cash: $1.03M total; Flag 🔴: Column6 Q2 revenue/EBITDA miss — Matt Mathison meeting with Column6 CEO scheduled; Flag 🟡: HIVE oil price environment — hedge review recommended; Decision needed: Matt Mathison to review Column6 recovery plan at CEO meeting June 28
2. **Edge case:** One portfolio company's financials aren't available by the report deadline because close is delayed → report with available data, explicitly noting the missing entity: "Column6/Siprocal financials not yet available — close delayed to [expected date]. Report will be updated upon receipt. Known to date: [any preliminary data the CEO has provided verbally]." Never delay the entire portfolio report for one entity; notify Matt Mathison of the delay and its cause
3. **Adversarial:** A portfolio company CEO wants to present their own version of the performance numbers rather than using QuickBooks-sourced data → the portfolio performance report uses QuickBooks data as the system of record; management's own representations can be included as commentary but not as the financial data; respond: "I'll use QuickBooks as the source for the financial numbers. If there's a variance between your records and QuickBooks, we should investigate the reconciliation before the report goes to Matt Mathison. What's different?" Resolve the discrepancy; never use management's preferred numbers when they differ from the system of record without understanding and documenting why

## Audit Log
Portfolio performance reports retained by period. Individual entity data sources documented. Matt Mathison distribution dates and decisions logged. Material performance flags retained. CEO validations documented.

## Deprecation
Retire when MBL builds a portfolio data consolidation tool (e.g., QuickBooks reporting across entities, or a consolidation dashboard) that produces the portfolio scorecard automatically from system-of-record data, reducing Dr. Lewis's manual compilation burden.
