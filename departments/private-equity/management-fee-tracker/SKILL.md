---
name: management-fee-tracker
description: "Calculate, track, and bill management fees to the fund. Use when the user says 'management fee', 'management fee calculation', 'management fee billing', 'annual fee', 'fee offset', 'management company fee', 'fee on committed capital', 'fee on invested capital', or 'GP economics'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--fund <MBL-Fund-I>] [--period <Q1|Q2|Q3|Q4>] [--year <year>]"
---

# Management Fee Tracker

Calculate, bill, and track management fees owed by the fund to MBL Partners (the GP / management company). Management fees are the GP's operating revenue; they are also a fund expense that reduces LP returns. Accurate calculation, timely billing, and proper offset tracking are required by the LP Agreement and protect LP trust.

## When to Use
- Quarterly management fee billing cycle (typically quarterly in advance)
- LP reporting — management fee section of fund financials
- New LP asks about fee structure — provide calculation methodology
- Fund accounting reconciliation — verify fees billed vs. LP Agreement
- Fee offset calculation — transaction fees or board fees reduce management fee

## Management Fee Structure

```
Standard PE management fee structure (most common):

Investment period (typically years 1-5 of fund life):
  Fee base: Committed capital (total fund size)
  Fee rate: Typically 1.5%–2.0% per annum
  MBL example: 2.0% of committed capital/year = $X/year on $X fund

Post-investment period (years 6+ or after final investment):
  Fee base: Invested capital (capital actually deployed, at cost)
  Rationale: Reduces fee as portfolio is harvested
  Fee rate: Same % but on smaller base

Fee offsets (LP-friendly provision):
  Transaction fees (deal fees, closing fees, monitoring fees) from portfolio companies
  Board fees paid to GP principals by portfolio companies
  Offset amount typically: 50%–100% of such fees reduce management fee dollar-for-dollar
  Net management fee = Gross management fee – Offset amounts

Fee calculation period: Quarterly (most common) — billed at beginning of each quarter
```

## Output Format

```markdown
# Management Fee Calculation — MBL Fund I
**Period:** <Q[N] [Year]> | **Calculated by:** Dr. John Lewis
**Billing date:** <date> | **Due date:** <date + 10 business days>
**Distribution:** Matt Mathison (internal) + Fund Counsel (review)

---

## Fee Calculation

### Step 1: Fee Base

| Item | Amount |
|------|--------|
| Total committed capital | $X |
| Period: Investment period / Post-investment period | Investment period |
| Fee base: Committed capital | $X |

*(If post-investment period: Invested capital at cost = $X)*

---

### Step 2: Gross Annual Fee

| Fee rate | Fee base | Gross annual fee | Quarterly fee (÷4) |
|---------|---------|-----------------|-------------------|
| 2.0% | $X | $X | **$X** |

---

### Step 3: Fee Offsets

| Offset type | Source | Amount | Period | LPA reference |
|------------|--------|--------|--------|--------------|
| Monitoring fee — Allevio | Allevio board fee | $X | Q[N] | LPA §X.X |
| Transaction fee — [Deal Name] | Closing fee | $X | One-time, offset over [N] quarters | LPA §X.X |
| Board fee — HIVE | Matt Mathison HIVE board | $X | Q[N] | LPA §X.X |
| **Total offsets** | | **$X** | | |

**Offset rate per LPA:** [50% / 80% / 100%] of fees received
**Offset amount (at X%):** $X

---

### Step 4: Net Management Fee

| | Amount |
|-|--------|
| Gross quarterly management fee | $X |
| Less: Fee offsets (at X%) | ($X) |
| **Net management fee — Q[N] [Year]** | **$X** |

---

## LP Allocation

| LP | Commitment % | LP share of net fee | Prior Q fees | YTD fees |
|----|-------------|--------------------|----|---------|
| [LP 1] | X% | $X | $X | $X |
| [LP 2] | X% | $X | $X | $X |
| [LP 3] | X% | $X | $X | $X |
| **Total** | **100%** | **$X** | **$X** | **$X** |

*(Management fee is a fund expense — allocated pro-rata and reduces fund NAV)*

---

## Annual Fee Summary

| Quarter | Gross fee | Offsets | Net fee | YTD net |
|---------|----------|---------|---------|---------|
| Q1 [Year] | $X | ($X) | $X | $X |
| Q2 [Year] | $X | ($X) | $X | $X |
| Q3 [Year] | $X | ($X) | $X | $X |
| Q4 [Year] | $X | ($X) | $X | $X |
| **Full year** | **$X** | **($X)** | **$X** | |

**Annual gross fee rate (effective):** $X / $X committed = X.X%
**Annual net fee after offsets:** $X / $X committed = X.X%

---

## Capital Call Notice (if management fee billed via capital call)

*If management fees are billed as a separate capital call (vs. deducted from investment proceeds):*

**Fee capital call — Q[N] [Year]:**
- Total net fee due: $X
- Issue as capital call per LP pro-rata commitment
- Due date: <date>
- Treat as management fee capital call (not for investment purposes) per LPA Section [X]
```

## Output Contract
- Gross vs. net fee always shown separately — LPs need to see the offset impact; net fee is what actually reduces their returns
- LPA reference for every offset — fee offsets are contractual; each offset line should cite the LPA section that authorizes it
- LP allocation always included — management fees are a fund expense allocated per commitment; each LP's share must be tracked
- Annual running total always maintained — LPs track cumulative management fees; any discrepancy from LPA amounts is a compliance issue
- HITL required: Dr. Lewis calculates; Matt Mathison reviews and approves before billing; fund counsel reviews quarterly fee calculation and offset treatment; LP Agreement is governing document — any interpretation question goes to fund counsel; management fees billed to LPs require advance notice per LP Agreement

## System Dependencies
- **Reads from:** LP commitments ledger, LPA fee provisions, transaction/board fee receipts from portfolio companies, prior fee calculations
- **Writes to:** Management fee calculation (SharePoint/Fund/Management Fees); fund accounting; LP quarterly statement (expense section)
- **HITL Required:** Dr. Lewis calculates; Matt Mathison approves; fund counsel reviews quarterly; LPA governs — any dispute goes to counsel

## Test Cases
1. **Golden path:** Q3 fee calculation → Fund size $10M committed; investment period; gross fee: 2.0% × $10M / 4 = $50K/quarter; Allevio monitoring fee received: $5K; HIVE board fee: $5K; total offsets: $10K; offset rate per LPA: 80% = $8K offset; net fee: $50K - $8K = $42K; LP 1 (40%): $16.8K; LP 2 (35%): $14.7K; LP 3 (25%): $10.5K; billed as fund expense; fund NAV reduced by $42K
2. **Edge case:** Fund transitions from investment period to post-investment period (final investment made, 5-year mark reached) → switch fee base from committed capital to invested capital; communicate the change to LPs in advance per LPA requirements; recalculate from the transition date; if the transition happens mid-quarter, prorate: days in investment period at committed capital basis + days in post-investment period at invested capital basis; document the transition date clearly
3. **Adversarial:** An LP disputes that a transaction fee was not properly offset against management fees → provide the full offset calculation history; show the LPA provision that governs offset treatment; show each transaction fee received and the offset applied; if there is a genuine discrepancy, calculate and refund the error via credit to next period's management fee; LP trust is worth more than any management fee dispute

## Audit Log
All management fee calculations retained permanently per quarter. Offset documentation retained (fee receipts from portfolio companies). Matt Mathison approvals retained. Fund counsel review retained. LP communications retained.

## Deprecation
Retire when MBL has fund accounting software that automates management fee calculation, offset tracking, and LP allocation from the fund accounting system.
