---
name: it-asset-inventory
description: "Maintain and audit the IT asset inventory across hardware and software. Use when the user says 'IT inventory', 'asset inventory', 'what assets do we have', 'hardware inventory', 'equipment list', 'IT asset audit', 'who has what device', or 'asset register'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <hardware|software|all>] [--action <inventory|audit|report>]"
---

# IT Asset Inventory

Maintain the IT asset inventory — hardware and software — for MBL and portfolio entities. Know what you have, where it is, who has it, and when it needs replacement.

## When to Use
- Annual IT asset audit
- Employee onboarding (assign assets)
- Employee offboarding (recover assets)
- Budget planning (replacement cycle forecasting)
- Incident response (identify affected assets)
- M&A integration (discover acquired entity's assets)

## Asset Categories

### Hardware Assets
| Category | Examples | Lifecycle |
|---------|---------|---------|
| Laptops / Desktops | MacBook Pro, Dell XPS | 3-4 years |
| Monitors | External displays | 5-7 years |
| Peripherals | Keyboards, mice, webcams | 3-5 years |
| Mobile devices | Company iPhones, iPads | 2-3 years |
| Servers / NAS | On-prem servers | 5-7 years |
| Network equipment | Routers, switches, APs | 5-7 years |
| Printers | Office printers | 5-7 years |

### Software Assets
Track in `software-license-tracker` — this skill focuses on hardware.

## Asset Record Format

| Field | Description |
|-------|-------------|
| Asset ID | AST-<NNN> (sequential) |
| Type | Hardware category |
| Make/Model | Manufacturer and model |
| Serial number | Device serial |
| Assigned to | Employee name |
| Location | Physical location or "Remote" |
| Purchase date | Original purchase |
| Warranty expiry | When warranty ends |
| Replacement year | Projected replacement (purchase year + lifecycle) |
| Status | Active / Spare / Repair / Retired |
| Value | Original purchase price |

## Lifecycle Management

| Status | Action |
|--------|--------|
| < 1 year from replacement date | Flag for budget planning |
| At replacement date | Initiate replacement process |
| Out of warranty + 2+ years old | Prioritize replacement |

## Output Format

```markdown
# IT Asset Inventory — <Entity>
**Updated:** <date> | **Total Assets:** <N> | **Total Value:** $X

## Hardware Inventory

| Asset ID | Type | Make/Model | Assigned To | Age | Status | Replace By |
|---------|------|-----------|------------|-----|--------|-----------|
| AST-001 | Laptop | MacBook Pro M2 | Dr. Lewis | 1.5 yr | Active | 2027 |
| AST-002 | Laptop | Dell XPS 15 | <name> | 3.5 yr | Active | 2025 ⚠️ |

## Replacement Planning (Next 12 Months)
| Asset | Assigned To | Replace By | Est. Cost |
|-------|-----------|-----------|----------|
| Dell XPS 15 (AST-002) | <name> | Q1 2025 | $1,800 |

**Total 12-month replacement budget:** $X

## Unassigned / Spare Assets
[spare assets available for new hires]

## Audit Findings
| Issue | Asset ID | Recommended Action |
|-------|---------|-------------------|
| Asset not returned by former employee | AST-014 | Contact HR — recovery required |

## Summary
| Status | Count |
|--------|-------|
| Active | <N> |
| Spare | <N> |
| Repair | <N> |
| Retired | <N> |
```

## Output Contract
- Every hardware asset has a named assignee or "Spare" status
- Replacement planning always covers next 12 months
- Former-employee assets flagged for recovery during offboarding
- HITL required before any asset is retired or written off

## System Dependencies
- **Reads from:** Asset register (maintained in IT tracking sheet or provided)
- **Writes to:** Asset register updates (with HITL for retirements/write-offs)
- **HITL Required:** Dr. Lewis approves asset retirements and write-offs; Finance approves disposition of assets above capitalization threshold

## Test Cases
1. **Golden path:** 25-asset inventory → clean register with replacement schedule and budget forecast
2. **Edge case:** Asset listed as "Active" but assigned to a departed employee → flags as recovery risk in audit findings
3. **Adversarial:** Inventory shows asset with no serial number → flags as incomplete record, requires physical verification before treating as valid asset

## Audit Log
Annual asset inventories retained. Asset assignments tracked with dates (assigned, returned). Dispositions documented.

## Deprecation
Retire when MDM (Mobile Device Management) platform handles automated asset discovery and lifecycle tracking.
