---
name: distribution-waterfall-calculator
description: "Calculate private equity distribution waterfall — preferred return, GP catch-up, and carried interest. Use when the user says 'distribution waterfall', 'carried interest', 'carry calculation', 'preferred return', 'hurdle rate', 'GP catch-up', 'LP distribution', 'how much carry', 'distribution calculation', or 'fund economics'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--fund <MBL-Fund-I>] [--proceeds <dollar>] [--mode <deal|fund>]"
---

# Distribution Waterfall Calculator

Calculate the PE distribution waterfall — the ordered sequence by which exit proceeds or fund distributions are allocated between LPs and the GP (carried interest). Getting the waterfall wrong means either paying carry before it's earned (LP harm) or not paying carry when it is earned (GP harm). Both are legal and relationship problems.

## When to Use
- Portfolio company exit — how much do LPs get vs. GP?
- Dividend recapitalization — how are proceeds split?
- Quarterly distribution — run waterfall before wiring to LPs
- Matt Mathison asks "how much carry would we earn on this deal?"
- LP asks how the distribution waterfall works — need clear explanation

## Standard PE Waterfall Structure

```
Most common PE waterfall (American-style / deal-by-deal):

Tier 1: Return of Capital
  LPs receive 100% of distributions until they have received back 100% of their invested capital
  (Some funds: return of management fees as well)

Tier 2: Preferred Return (Hurdle Rate)
  LPs receive 100% of distributions until they have received their preferred return
  Standard: 8% IRR per annum (compounded) on invested capital
  Until LPs have earned 8% annualized, no carry

Tier 3: GP Catch-Up
  GP receives 100% (or 80%) of distributions until GP has received X% of total profits distributed so far
  Catch-up = (Carry rate × total profits) / (1 - carry rate)
  Standard: GP catches up to 20% of total profits (if 20% carry and 100% catch-up)
  Example: LP pref earned = $1M profits → GP catch-up = $250K (so GP gets 20% of $1.25M total)

Tier 4: Carried Interest Split
  Remaining proceeds split: 80% LP / 20% GP (standard carry)
  (Or 85/15, 70/30, etc. per the LPA)

European-style (fund-level waterfall):
  LPs must receive return of ALL invested capital across ALL deals before GP gets any carry
  More LP-friendly; common in European and institutional PE funds
  Eliminates "early carry" problem where GP earns carry on winners before losers realized
```

## Output Format

```markdown
# Distribution Waterfall Calculation
**Date:** <date> | **Owner:** Dr. John Lewis (reviewed by Matt Mathison)
**Fund:** MBL Fund I | **Deal/Event:** <Exit from [Company] / Dividend Recap / Fund distribution>
**Total proceeds available for distribution:** $X
**Waterfall type:** American-style (deal-by-deal) / European-style (fund-level)

---

## Inputs

| Input | Value | Source |
|-------|-------|--------|
| Total invested capital | $X | Capital account ledger |
| Investment date | <date> | Fund records |
| Exit/distribution date | <date> | <date> |
| Hold period | X.X years | Calculated |
| Total proceeds | $X | Exit proceeds / distribution |
| Preferred return rate | 8% | LPA Section [X] |
| Carried interest rate | 20% | LPA Section [X] |
| GP catch-up rate | 100% | LPA Section [X] |
| LP / GP split (after pref) | 80% / 20% | LPA Section [X] |

---

## Waterfall Calculation

### Tier 1: Return of Capital

| | Amount | Running total | Remaining proceeds |
|-|--------|--------------|-------------------|
| Total capital invested | $X | | |
| Capital returned to LPs | $X | $X | $X |

**Tier 1 status:** ✅ Fully returned / ⏳ Partially returned — $X remaining

---

### Tier 2: Preferred Return (8% hurdle)

**Calculation:**
- Capital returned: $X
- Investment dates: [weighted average: <date>]
- Hold period: X.X years
- Preferred return = $X × ((1.08)^X.X - 1) = **$X**

| | Amount | Running total | Remaining proceeds |
|-|--------|--------------|-------------------|
| Preferred return owed | $X | | |
| Preferred return paid | $X | $X total to LPs | $X |

**Tier 2 status:** ✅ Pref fully paid ($X) / ⏳ Partial pref — $X still owed to LPs

---

### Tier 3: GP Catch-Up

**Only reached if preferred return is fully paid**

- Total profits distributed to LPs so far: $X (return of capital: $X + preferred return: $X - capital: $X)
- Target GP carry at 20%: X% × $[total profits including catch-up] = $X
- GP catch-up amount = $X
  *(Formula: catch-up = [carry rate / (1 - carry rate)] × LP pref = 20%/80% × $[pref] = $[catch-up])*

| | Amount | Running total | Remaining proceeds |
|-|--------|--------------|-------------------|
| GP catch-up | $X | $X to GP | $X |

**Tier 3 status:** ✅ Catch-up paid / ⏳ Partial — $X remaining proceeds go to GP before split

---

### Tier 4: Carried Interest Split (80/20)

| | Amount | LP share (80%) | GP share (20%) |
|-|--------|---------------|----------------|
| Remaining proceeds | $X | $X | $X |

---

## Summary

| Recipient | Amount | % of total proceeds |
|-----------|--------|-------------------|
| LPs — Return of capital | $X | X% |
| LPs — Preferred return | $X | X% |
| LPs — Split (Tier 4) | $X | X% |
| **LPs Total** | **$X** | **X%** |
| GP — Catch-up (Tier 3) | $X | X% |
| GP — Carry (Tier 4) | $X | X% |
| **GP Total (Carried Interest)** | **$X** | **X%** |

**LP MOIC:** X.Xx | **LP IRR:** X.X% (net)
**GP carried interest earned:** $X

---

## LP-by-LP Distribution

| LP | % | LP total distribution | Prior distributions | Net wire |
|----|---|----------------------|-------------------|---------|
| [LP 1] | X% | $X | $X | $X |
| [LP 2] | X% | $X | $X | $X |
| [GP / Carry] | — | $X | $0 | $X |
| **Total** | **100%** | **$X** | | |
```

## Output Contract
- Waterfall calculated to the dollar — rounding creates LP capital account discrepancies that are painful to correct
- Preferred return calculation always shows the formula — not just the number; LPs need to verify the math
- GP catch-up always calculated explicitly — this is the most commonly misunderstood element; show the arithmetic
- LP-by-LP table always produced before any wire is sent — each LP must receive their exact pro-rata share
- HITL required: Dr. Lewis calculates; Matt Mathison reviews and approves; fund counsel reviews before any distribution is made; fund accountant co-signs on carry calculations; per-LP wire amounts signed off before sending; distributions are irreversible — verify before wiring

## System Dependencies
- **Reads from:** Capital account ledger (fund accounting), LP commitment records, cash flow history (investment dates, prior distributions), LPA terms
- **Writes to:** Distribution calculation (SharePoint/Fund/Distributions); LP distribution notices; fund accounting (capital accounts)
- **HITL Required:** Dr. Lewis calculates; Matt Mathison approves; fund counsel reviews; fund accountant validates; per-LP wire amounts verified before sending

## Test Cases
1. **Golden path:** MBL Fund I exits portfolio company — total proceeds $5M, invested $2M, 4 years ago → Tier 1: $2M returned to LPs; Tier 2: 8% pref = $2M × (1.08^4 - 1) = $680K; Tier 3: GP catch-up: ($680K × 20%/80%) = $170K to GP; Tier 4: remaining $5M - $2M - $680K - $170K = $2.15M split 80/20 → LP: $1.72M, GP: $430K; LP total: $4.4M; GP carry total: $600K; LP net MOIC: 2.20×; GP earn: $600K carry
2. **Edge case:** European-style waterfall fund and only one of three portfolio companies has exited with profit — LPs have not yet received return of capital from the fund overall (even though this deal was profitable) → under European waterfall, no carry until fund-level return of capital and preferred return are achieved; GP earns $0 carry on this distribution even though this individual deal was profitable; the full $5M goes to LPs until they've recovered all fund-level invested capital; this is the key difference between American and European waterfall
3. **Adversarial:** GP team disputes the waterfall calculation and argues carry should be higher → resolve by re-reading the LPA section on distribution waterfall — the LPA is the governing document; if the dispute is about interpretation, fund counsel must opine; document the dispute and the resolution; any adjustment to carry after initial calculation requires Matt Mathison approval and fund counsel sign-off; LP relationships depend on transparent, consistent waterfall application

## Audit Log
All waterfall calculations retained permanently with inputs, formula steps, and outputs. LP and GP distribution amounts documented. Matt Mathison approval documented. Fund counsel review documented. Wire instructions and confirmation retained.

## Deprecation
Retire when MBL has fund accounting software that automates waterfall calculation from live cash flow data with LP-by-LP distribution generation.
