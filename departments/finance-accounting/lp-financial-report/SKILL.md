---
name: lp-financial-report
description: "Prepare a limited partner financial report. Use when the user says 'LP report', 'investor report', 'limited partner update', 'LP financial update', 'quarterly investor report', 'fund performance report', 'LP financial statement', 'capital account statement', 'LP distribution notice', 'investor financial package', or 'fund reporting'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <fund/company name>] [--period <quarterly|annual>] [--lp <LP name or 'all'>]"
---

# LP Financial Report

Prepare financial reports for Limited Partners (LPs) of MBL-managed funds and portfolio entities — including HIVE Partners (oil & gas) and any other LP-structured vehicles. LP reporting is a legal and fiduciary obligation: LPs have contractual rights to periodic financial information, and the quality of reporting directly affects LP trust, future fund relationships, and MBL's reputation as a capital allocator.

## When to Use
- Quarterly LP reporting cycle — reports typically due 45-60 days after quarter end
- Annual LP report — year-end financials and fund performance summary
- Distribution event — capital distributions require formal notice and calculation
- Capital call — new investment requires LP capital call notice
- Matt Mathison requests LP-ready financial communication
- A new LP asks for their capital account statement

## LP Reporting Standards

```
What LPs need:

1. Capital Account Statement
   → Their invested capital
   → Distributions received to date
   → Current estimated value (NAV)
   → IRR and MOIC (if calculable)

2. Fund/Portfolio Performance
   → Revenue and EBITDA for operating companies
   → Oil & gas production/revenue for HIVE Partners
   → Year-to-date vs. prior year

3. Distributions (if applicable)
   → Amount per unit/interest
   → Payment date
   → Tax characterization (ordinary income / capital gain / return of capital)

4. Outlook and Narrative
   → What is happening in the business?
   → What are the major risks or opportunities?

MBL-specific context:
- HIVE Partners: oil & gas, Uinta Basin, production volumes matter as
  much as revenue; track BBL/day, realized price per BBL
- Covercy is the operational system of record for HIVE distributions
```

## Output Format

```markdown
# LP Financial Report — <Fund/Entity Name>
**Period:** [Quarter / Year ending <date>]
**Report date:** <date> (within 60 days of period end)
**Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison
**Confidential — For [LP Name / All LPs] Only**

---

## Fund / Entity Overview

**Entity:** [Fund / Company name]
**Entity type:** [Oil & Gas Operating Company / Healthcare MSO / PE Fund]
**Reporting period:** [Q[N] or FY] [Year]
**Manager:** MBL Partners | **Contact:** Dr. John Lewis — jlewis@mblpartners.com

---

## Capital Account Summary — [LP Name] (or Aggregate)

| | LP [Name] | Total Fund |
|---|---|---|
| Capital commitment | $[X] | $[X] |
| Contributed capital to date | $[X] | $[X] |
| Distributions received to date | $[X] | $[X] |
| **Net invested capital** | **$[X]** | **$[X]** |
| Estimated current value (NAV) | $[X] | $[X] |
| **Estimated gain / (loss)** | **$[X]** | **$[X]** |
| **MOIC (Multiple on Invested Capital)** | **[X.X]×** | **[X.X]×** |
| **IRR (if calculable)** | **[X%]** | **[X%]** |

*NAV is management's estimate and is subject to change. This is not an audited value.*

---

## Fund / Portfolio Performance

### [For HIVE Partners — Oil & Gas]

| Metric | Q[N] | Q[N-1] | Change | YTD | Prior YTD |
|--------|-------|-------|--------|-----|---------|
| Oil production (BBL/day) | [X] | [X] | [±X%] | [X] | [X] |
| Gas production (MCF/day) | [X] | [X] | | | |
| Realized oil price ($/BBL) | $[X] | $[X] | | | |
| Realized gas price ($/MCF) | $[X] | $[X] | | | |
| Gross revenue | $[X] | $[X] | | | |
| LOE (Lease Operating Expense) | ($[X]) | ($[X]) | | | |
| Net operating income | $[X] | $[X] | | | |

**HIVE narrative:** [Production was [X BBL/day] in Q[N], [above/below] Q[N-1] by [X%] — driven by [new wells/workover/seasonal]. Realized price of $[X]/BBL reflects [hedged price / WTI - differential]. LOE of $[X]/BBL is [improving/worsening — why].]

### [For Allevio or Other Operating Company]

| Metric | Q[N] | Budget | Variance | YTD |
|--------|-------|--------|---------|-----|
| Revenue | $[X] | $[X] | $[X] | $[X] |
| Gross margin % | [X%] | [X%] | | |
| EBITDA | $[X] | $[X] | $[X] | |
| Cash position | $[X] | | | |

---

## Distributions

### Distribution for [Period]

| | Amount |
|---|---|
| Total distribution | $[X] |
| Your pro-rata interest | [X%] |
| **Your distribution** | **$[X]** |
| Payment date | [Date] |
| Payment method | ACH / Wire |

**Tax characterization:** [Ordinary income / Return of capital / Capital gain — consult your tax advisor]

*If no distribution: "No distribution is being made for [period]. [Reason — e.g., cash is being retained for [reinvestment / debt service / operations].]*

---

## Portfolio Update — Management Narrative

**Operational highlights:**
[2-4 bullet points on what happened in the business this quarter — factual and forward-looking]

**Key risks and opportunities:**
[1-3 specific items — be honest about risks; LPs respect candor]

**Outlook:**
[What management expects in the next 1-2 quarters — specific and grounded in current business state]

---

## Coming Up

| Date | Event | Implication for LPs |
|------|-------|-------------------|
| [Date] | [Q[N+1] close / board meeting / audit completion] | [Distribution expected / next report date / capital call] |
| [Date] | [Other milestone] | |

---

## Tax Information

| | Amount |
|---|---|
| Your K-1 will be distributed by | [March 15, year+1] |
| Tax year | [Year] |
| Entity type | [Partnership / S-Corp / LLC — state] |

*K-1 will be mailed and emailed to address on file. Contact jlewis@mblpartners.com with questions.*
```

## Output Contract
- Capital account statement must be mathematically accurate — every LP report is a financial obligation; the capital account math must tie to the fund's books; contributed capital + distributions + current value must reconcile to the fund's general ledger; any discrepancy is a material error
- Distributions always calculated and communicated in writing — no verbal distribution notices; every distribution must have a written notice with the amount, date, and tax characterization; retain copies permanently
- IRR and MOIC flagged as estimates when not audited — LP reports are often used in LP investment committee presentations; management estimates of NAV and IRR must be clearly marked as estimates to avoid misleading representations
- Candid narrative required — LP reports that only report good news destroy trust when something goes wrong; the narrative must be honest about operational challenges and risks; Matt Mathison is the final authority on what is disclosed, but sanitized reports that hide material issues are a legal and relationship risk
- HITL required: Dr. Lewis prepares; CPA reviews all numbers (especially distributions and tax characterization); Matt Mathison approves all LP communications before distribution; any capital account restatement or material adjustment requires Matt Mathison and legal counsel

## System Dependencies
- **Reads from:** QuickBooks (financial SOR), Covercy (HIVE distributions and production data), capital account ledger, LP agreement, fund formation documents
- **Writes to:** LP report (SharePoint/Finance/LP Reports/<Entity>/<Period>); distribution notices; K-1 tracking
- **HITL Required:** Dr. Lewis prepares; CPA reviews; Matt Mathison approves; legal review for any material disclosures or adjustments; distribution payments require separate authorization

## Test Cases
1. **Golden path:** HIVE Partners Q2 2026 LP report → Production: 142 BBL/day (vs. 138 Q1 — +2.9%); Realized price: $68.40/BBL (WTI less $4.20 differential); Net operating income: $287K; Distribution: $0 (retained for Q3 workover program); Capital account: LP1 committed $500K, contributed $500K, distributions to date $42K, NAV estimate $618K, MOIC 1.24×, IRR estimate 19.2%; Narrative: "Production increased slightly in Q2 due to pump optimization on Well 7. We are retaining cash for a Q3 workover on Wells 3 and 4, expected to increase production 25-30 BBL/day upon completion. Key risk: oil price; current hedges provide floor of $62/BBL through Q4 2026." K-1 delivery by March 15, 2027
2. **Edge case:** A production decline in HIVE Partners is larger than expected — management wants to present the number without highlighting it → the narrative must address the decline directly: "Production declined from [X] to [Y] BBL/day in Q[N], a decrease of [X%]. The decline was caused by [natural decline rate / pump failure / workover downtime]. Management's plan to address the decline: [specific action with timeline]." Omitting or minimizing a material production decline is a disclosure failure; LPs who discover it independently will question all future reporting
3. **Adversarial:** LP requests audited financial statements that MBL is not contractually required to provide → review the LP agreement first; if audited statements are not required by the agreement, respond: "The LP agreement for [entity] provides for [quarterly/annual] management-prepared financial reports. Audited statements are not required by the agreement. If you would like to discuss the financial reporting or request additional information, please contact Dr. John Lewis." If the LP has a legitimate request that creates audit obligations, escalate to Matt Mathison and legal counsel

## Audit Log
All LP reports retained permanently by entity, period, and version. Distribution notices retained permanently. Matt Mathison and CPA approval documentation retained. Capital account reconciliation maintained. K-1 delivery confirmations retained.

## Deprecation
Retire when MBL establishes a fund administration function or outsources LP reporting to a third-party fund administrator with automated LP portal capabilities.
