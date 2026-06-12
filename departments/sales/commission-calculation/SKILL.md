---
name: commission-calculation
description: "Calculate sales commissions based on closed deals and compensation plan rules. Use when the user says 'calculate commissions', 'commission run', 'sales comp', 'how much commission does X earn', 'commission payout', 'comp plan calculation', or 'commission statement'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<rep-name-or-all> [--period <YYYY-MM>] [--plan <plan-name>]"
---

# Commission Calculation

Calculate sales commissions for individual reps or the full team based on closed deals, attainment against quota, and compensation plan rules.

## When to Use
- Monthly or quarterly commission run (per plan cadence)
- When a large deal closes mid-period and the rep asks for an estimate
- When a deal is revised, cancelled, or churns (clawback calculation)
- During comp plan design or modification (model impact)
- Audit of prior period commission payments

## Commission Plan Structure (Configurable)

### Base Commission Rate
Standard rate on qualifying bookings (e.g., 8% of ACV).

### Accelerators (above quota)
| Attainment | Rate |
|-----------|------|
| 0–80% | 0.5× base rate (draw or minimal commission) |
| 80–100% | 1.0× base rate |
| 100–120% | 1.5× base rate |
| > 120% | 2.0× base rate |

### Qualifying Criteria
- Deal must be closed/won
- Contract fully executed (countersigned)
- First payment received (if required by plan)
- Deal meets minimum size threshold (if applicable)

### Clawback Triggers
- Customer cancels within X days of close (full clawback)
- Customer cancels in months Y–Z (partial clawback on unearned portion)
- Deal renegotiated at lower value (clawback on delta)

### SPIFs (Special Performance Incentive Funds)
- Per-deal bonuses for designated products, verticals, or campaigns
- Applied on top of standard commission

## Output Format

```markdown
# Commission Statement — <Rep Name>
**Period:** <month/quarter> | **Plan:** <plan name> | **Processed:** <date>

## Quota Summary
| Metric | Value |
|--------|-------|
| Period quota | $X |
| Attainment | $X (X%) |
| Rate tier | <tier at final attainment> |

## Deal-Level Calculation
| Deal | Customer | ACV | Close Date | Rate | Commission |
|------|----------|-----|------------|------|-----------|
| D-2026-042 | Acme Corp | $60,000 | Jun 3 | 8% × 1.5× accel | $7,200 |
| D-2026-047 | Beta Inc | $24,000 | Jun 28 | 8% × 1.0× | $1,920 |

## SPIFs This Period
| SPIF | Deal | Amount |
|------|------|--------|
| New logo SPIF | Acme Corp | $500 |

## Clawbacks Applied
| Deal | Original Commission | Clawback Reason | Amount |
|------|-------------------|----------------|--------|
| D-2026-011 | $3,600 | Customer cancelled day 45 (>30 day rule) | -$2,400 |

## Period Total
| Component | Amount |
|-----------|--------|
| Base commissions | $X |
| Accelerators | $X |
| SPIFs | $X |
| Clawbacks | -$X |
| **Net commission** | **$X** |
```

## Output Contract
- All deal-level calculations shown — no black box totals
- Accelerator tier applied at the final attainment rate for the full period (not deal-by-deal unless plan specifies otherwise)
- Clawbacks calculated and shown separately from gross commission
- CONFIDENTIAL — commission statements visible to rep and Finance only

## System Dependencies
- **Reads from:** CRM closed/won deals (GoHighLevel), comp plan document, prior clawback ledger
- **Writes to:** Nothing (outputs statement for Finance and rep review)
- **HITL Required:** Before any commission payout is processed in payroll

## Test Cases
1. **Golden path:** Rep at 115% attainment → correctly applies 1.5× accelerator to all eligible deals
2. **Edge case:** Deal closes last day of period but payment not received → flags as pending per plan terms, not included in current period
3. **Adversarial:** Rep claims SPIF on deal not in designated product category → flags as ineligible, outputs SPIF qualification criteria for rep

## Audit Log
Commission calculation runs retained with deal data, attainment, and payout amounts. Clawbacks documented with triggering event and calculation method.

## Deprecation
Retire when CRM (GoHighLevel) or dedicated commission platform (Spiff, CaptivateIQ) handles automated commission calculation.
