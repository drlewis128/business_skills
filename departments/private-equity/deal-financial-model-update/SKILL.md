---
name: deal-financial-model-update
description: "Update financial model inputs and surface key deal metrics when new data arrives. Use when the user says 'update the model', 'new financials came in', 'deal model update', 'revise the projections', 'update deal metrics', 'financial model refresh', or 'what does the model say now'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<deal-name> [--new-revenue <X>] [--new-ebitda <X>] [--new-capex <X>] [--purchase-price <X>]"
---

# Deal Financial Model Update

Refresh deal model inputs when new financial data arrives and surface the impact on key M&A and investment metrics. Designed for MBL Partners' PE acquisition and portfolio monitoring context.

## When to Use
- Morgan Sills sends end-of-week deal updates (Allevio M&A pipeline)
- Management accounts arrive for a target under LOI
- Purchase price or deal structure changes during negotiation
- Quarterly portfolio company performance vs. underwriting model
- Pre-IC (investment committee) model refresh

## Key Metrics to Update and Monitor

### Entry Metrics
| Metric | Formula | Target Range |
|--------|---------|-------------|
| Entry multiple (EV/EBITDA) | Enterprise Value / EBITDA | Varies by sector |
| Revenue multiple | Enterprise Value / Revenue | |
| Leverage ratio | Total Debt / EBITDA | Per deal thesis |
| Purchase price per unit | For MSO/healthcare businesses | |

### Return Metrics
| Metric | Formula | Target |
|--------|---------|--------|
| IRR (Internal Rate of Return) | Discount rate where NPV = 0 | ≥ 20% |
| MOIC (Multiple on Invested Capital) | Proceeds / Equity invested | ≥ 2.5× at 5 years |
| Cash yield (if dividend recaps planned) | Annual distributions / equity | |

### Operating Metrics
| Metric | Context |
|--------|---------|
| EBITDA margin | Core profitability |
| Revenue growth rate | Organic vs. acquired |
| FCF conversion | EBITDA to actual cash |
| Working capital cycle | DSO + DIO - DPO |

## Update Process

### Step 1 — Flag Changed Inputs
Show what changed: old value → new value, with source ("Per Allevio mgmt accounts, May 2026").

### Step 2 — Recalculate Key Metrics
Apply updated inputs to every metric in the model.

### Step 3 — Variance vs. Underwriting
Compare updated metrics to original deal thesis. Flag anything that diverges >10%.

### Step 4 — Surface Decision Triggers
- Does IRR still clear the hurdle?
- Has entry multiple compressed or expanded?
- Any covenant risk given new EBITDA?

## Output Format

```markdown
# Deal Model Update — <Deal Name>
**Updated:** <date> | **Source:** <data source>
**Deal Stage:** <Screening/LOI/Diligence/Closed/Portfolio>

## What Changed
| Input | Prior | Updated | Source |
|-------|-------|---------|--------|
| Revenue (TTM) | $X | $X | Mgmt accounts May 2026 |
| EBITDA (TTM) | $X | $X | |
| Purchase price | $X | $X | Revised LOI Jun 2026 |

## Updated Key Metrics
| Metric | Prior | Updated | Vs. Underwriting | Status |
|--------|-------|---------|-----------------|--------|
| Entry EV/EBITDA | X× | X× | +/-X× | ✅ / ⚠️ |
| IRR (5-year) | X% | X% | +/-X% | ✅ / ⚠️ |
| MOIC | X× | X× | +/-X× | ✅ / ⚠️ |

## Flags
- IRR dropped from 23% → 18% — still above 15% hurdle but approaching threshold. Monitor closely.
- Entry multiple expanded to X× — above sector comp range.

## Recommended Action
<BLUF: proceed / escalate to IC / renegotiate price / kill the deal>
```

## Output Contract
- Always shows prior vs. updated side-by-side (never overwrites old model without comparison)
- Flags any metric that crosses a decision threshold (IRR < hurdle, leverage > covenant)
- HITL required before updated model is shared with IC or external parties

## System Dependencies
- **Reads from:** Deal model inputs (provided), prior model state, comp benchmarks
- **Writes to:** Nothing (outputs updated metrics and comparison)
- **HITL Required:** Before presenting updated model to Investment Committee or external parties

## Test Cases
1. **Golden path:** Revenue and EBITDA both increase → recalculates metrics, shows improved returns
2. **Edge case:** EBITDA declines 15% → flags IRR below hurdle, outputs "escalate to IC" recommendation
3. **Adversarial:** Purchase price increased while EBITDA decreased simultaneously → flags double compression, outputs "kill/renegotiate" flag

## Audit Log
Each model update versioned with date, data source, and key metric outputs. Prior versions retained for IC review.

## Deprecation
Retire when deal management platform (e.g., Deal Cloud, Allvue) handles model refresh and version control natively.
