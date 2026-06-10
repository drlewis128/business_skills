---
name: sales-tax-nexus-monitor
description: "Monitor economic nexus thresholds and flag states where sales tax registration may be required. Use when the user says 'sales tax nexus', 'do we owe sales tax', 'economic nexus', 'state sales tax obligations', 'nexus analysis', 'where are we liable for sales tax', or 'sales tax registration'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--year <YYYY>] [--state <abbrev>]"
---

# Sales Tax Nexus Monitor

Track sales by state against economic nexus thresholds (post-Wayfair) and flag states where registration and collection may be required.

## When to Use
- Quarterly — review trailing 12-month sales by state
- When launching sales in a new state
- After a large deal closes in a state with borderline revenue
- During M&A due diligence (target's nexus exposure)
- When expanding the product line (taxability varies by product type)

## Economic Nexus Framework (Post-Wayfair, 2018)

Most states follow the South Dakota standard: **$100,000 in revenue OR 200 transactions** in the prior 12-month period. Thresholds vary by state.

### Common Thresholds
| State | Revenue Threshold | Transaction Threshold | Notes |
|-------|------------------|-----------------------|-------|
| CA | $500,000 | None | Revenue only |
| TX | $500,000 | None | |
| NY | $500,000 | 100 transactions | |
| FL | $100,000 | 200 transactions | |
| Most states | $100,000 | 200 transactions | Standard Wayfair |
| OR, MT, NH, DE, AK | No sales tax | — | No registration needed |

### Physical Nexus (still applies)
- Employees or contractors in state
- Warehouse or inventory in state
- Office or trade show presence

## Taxability by Product Type
- SaaS: taxable in most states (exceptions: CA, TX partial, FL)
- Professional services: mostly exempt (exceptions vary widely)
- Tangible goods: taxable in virtually all states
- Digital products: varies by state definition

## Output Format

```markdown
# Sales Tax Nexus Monitor — <entity> — <period>
**Analysis Period:** <TTM start> to <TTM end>

## Nexus Status by State

### ⛔ Registered & Collecting (confirmed)
| State | Revenue (TTM) | Threshold | Status |
|-------|--------------|-----------|--------|

### 🔴 Threshold Exceeded — Register Immediately
| State | Revenue (TTM) | Transactions | Threshold | Action |
|-------|--------------|-------------|-----------|--------|
| FL | $125,000 | 210 | $100K/200 | ⚠️ Register within 30 days |

### 🟡 Approaching Threshold (75-99%)
| State | Revenue (TTM) | % of Threshold | Forecast to Cross |
|-------|--------------|---------------|-------------------|

### 🟢 No Exposure
| State | Revenue (TTM) | % of Threshold |
|-------|--------------|----------------|

## Physical Nexus Flags
- States with employees or contractors: <list>
- States with inventory: <list>

## Action Items
1. Register in Florida — threshold exceeded as of <date>
2. Monitor Colorado — 82% of threshold, likely to cross by Q3
3. Confirm physical nexus in states with remote employees

## BLUF
**<N> states require immediate attention** — registration overdue or approaching threshold.
Total potential uncollected sales tax exposure: $X (estimated — confirm with CPA).
```

## Output Contract
- Never makes a definitive "you owe tax" determination — flags for CPA/tax advisor review
- Physical nexus always checked separately from economic nexus
- HITL required before any state registration is initiated

## System Dependencies
- **Reads from:** Revenue data by state (QuickBooks / CRM), employee/contractor locations (HR)
- **Writes to:** Nothing (outputs nexus analysis for tax advisor)
- **HITL Required:** Before initiating any state tax registration

## Test Cases
1. **Golden path:** Multi-state SaaS company → correctly categorizes states by threshold status
2. **Edge case:** Company with a remote employee in a state with no revenue → flags physical nexus regardless of economic threshold
3. **Adversarial:** Revenue near threshold in a "no sales tax" state → correctly identifies OR/MT/NH as exempt and does not flag

## Audit Log
Quarterly nexus analyses retained with revenue data used for the assessment. State registration status changes documented.

## Deprecation
Retire when sales tax automation platform (Avalara, TaxJar) handles nexus monitoring and filing automatically.
