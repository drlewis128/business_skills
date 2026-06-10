---
name: covenant-compliance-tracker
description: "Monitor financial covenant compliance against debt agreements and flag approaching violations. Use when the user says 'covenant compliance', 'covenant testing', 'are we in compliance', 'leverage covenant', 'DSCR', 'fixed charge coverage', 'covenant breach', 'lender covenants', or 'debt covenant check'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-MM>] [--facility <name>]"
---

# Covenant Compliance Tracker

Test financial covenants against current period actuals, project cushion trends, and flag any risk of breach before it occurs. A covenant violation is an event of default — early warning is critical.

## When to Use
- Every quarter (most covenants test quarterly or semi-annually)
- Monthly — project forward if quarterly test approaches
- After any large unusual expense or write-off (EBITDA impact)
- Before drawing on a revolving credit facility
- When lender requests compliance certificate

## Common Covenant Types

### Leverage Covenants
| Covenant | Formula | Example Limit |
|---------|---------|--------------|
| Maximum Total Leverage | Total Debt / Adjusted EBITDA | ≤ 4.0× |
| Maximum Senior Leverage | Senior Debt / EBITDA | ≤ 3.0× |
| Maximum Net Leverage | (Debt - Cash) / EBITDA | ≤ 3.5× |

### Coverage Covenants
| Covenant | Formula | Example Limit |
|---------|---------|--------------|
| DSCR (Debt Service Coverage) | EBITDA / (Principal + Interest) | ≥ 1.25× |
| Fixed Charge Coverage (FCCR) | (EBITDA - Capex - Taxes) / Fixed Charges | ≥ 1.10× |
| Interest Coverage | EBITDA / Interest Expense | ≥ 3.0× |

### Other Common Covenants
- Minimum liquidity (cash + revolver availability ≥ $X)
- Minimum EBITDA (absolute floor)
- Maximum capex (annual spend limit)
- Restrictions on additional debt
- Change of control provisions

## Cushion Framework

| Cushion vs. Covenant Level | Status |
|---------------------------|--------|
| > 25% headroom | 🟢 Healthy |
| 10-25% headroom | 🟡 Monitor |
| < 10% headroom | 🔴 Escalate to Tier 1 immediately |
| At or past covenant level | ❌ BREACH — engage lender, legal, Tier 1 |

## Output Format

```markdown
# Covenant Compliance Report — <Entity> — <period>
**Facility:** <lender and facility name>
**Test Date:** <date> | **Next Test:** <date>

## Covenant Scorecard

| Covenant | Limit | Actual | Cushion | Status |
|---------|-------|--------|---------|--------|
| Total Leverage ≤ 4.0× | 4.0× | 2.8× | 1.2× (30%) | 🟢 Healthy |
| DSCR ≥ 1.25× | 1.25× | 1.31× | 0.06× (5%) | 🔴 ESCALATE |
| Minimum Liquidity ≥ $2M | $2,000K | $2,450K | $450K (22.5%) | 🟡 Monitor |

## Breach Risk Analysis
**DSCR at 1.31× vs. 1.25× limit — only 5% cushion.**
- EBITDA would need to decline by $X to trigger breach
- Projected trend: ⬇️ declining (trailing 3-month EBITDA trend)
- Recommended action: Notify Matt Mathison and legal counsel; prepare waiver request if Q4 trend continues

## Calculation Backup
DSCR = EBITDA ($X) / (Principal ($X) + Interest ($X)) = X÷X = X×

## Compliance Certificate
Certificate due: <date> | Signatory: <CFO/Controller>
Status: ⚠️ Do not certify until DSCR risk is addressed
```

## Output Contract
- Cushion reported as both absolute headroom and percentage
- Any covenant at < 10% cushion triggers Tier 1 escalation, not just a flag
- HITL required before any compliance certificate is signed or sent to lender
- Breach language: "potential covenant breach risk" never "we are in breach" without lender confirmation

## System Dependencies
- **Reads from:** Trial balance / financial statements, debt schedule (provided), current debt balances
- **Writes to:** Nothing (outputs compliance certificate support)
- **HITL Required:** Before signing compliance certificates or initiating lender communication about covenant status

## Test Cases
1. **Golden path:** All covenants with >25% cushion → clean green report, certificate ready
2. **Edge case:** Quarter with seasonal EBITDA trough near covenant limit → flags as yellow, projects forward using 12-month rolling EBITDA
3. **Adversarial:** Covenant already breached based on actuals → outputs RED BREACH status, mandates Tier 1 notification before any other action

## Audit Log
All covenant test results retained with calculation backup. Lender notification dates and waiver history documented.

## Deprecation
Retire when lender portal or treasury management system handles automated covenant testing and reporting.
