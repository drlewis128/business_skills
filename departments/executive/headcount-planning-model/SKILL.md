---
name: headcount-planning-model
description: "Model headcount growth and cost implications for annual planning or hiring decisions. Use when the user says 'headcount plan', 'hiring plan', 'headcount model', 'how much will it cost to hire', 'staffing plan', 'headcount budget', or 'FTE plan'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--year <YYYY>] [--roles <list-or-file>]"
---

# Headcount Planning Model

Build a headcount plan for annual budgeting or a specific hiring initiative — modeling FTE count, total compensation cost, and timing impact on the P&L.

## When to Use
- Annual budget planning (model next year's headcount cost)
- Before approving a new hire request (model the full cost)
- When a portfolio company is scaling rapidly (validate affordable growth rate)
- M&A integration (model combined entity headcount)
- When trying to achieve EBITDA targets (headcount lever analysis)

## Fully Loaded Cost Model

For each role:
- **Base salary**: Stated annual compensation
- **Payroll taxes (employer)**: ~8% (FICA 7.65% + FUTA/SUTA estimates)
- **Benefits**: 20-25% of base (health, dental, vision, 401k match, life)
- **Equipment / setup**: One-time ($2,500–$5,000 per employee)
- **Software licenses**: Per-seat cost for role-relevant tools
- **Recruiting cost**: 15-25% of base for external recruiter (if used)

**Fully loaded annual cost ≈ 1.3–1.5× base salary (recurring)**

## Standard Benefit Load by Level

| Level | Benefits % of Base |
|-------|-------------------|
| Hourly / Admin | 18-22% |
| Professional / IC | 22-27% |
| Manager | 25-30% |
| Senior / Director | 28-33% (higher 401k match, benefits) |
| Executive / VP+ | 30-35% + equity / bonus |

## Headcount Plan Output

```
Current FTE: <N>
Planned new hires: <N>
Planned departures / backfills: <N>
Net new FTE (year-end): <N>
```

## Output Format

```markdown
# Headcount Plan — <Entity> — <Year>
**Current Headcount:** <N> FTE | **Planned Year-End:** <N> FTE

## Planned Hires

| Role | Level | Start Month | Base | Benefits (X%) | Fully Loaded | Annual Cost |
|------|-------|-------------|------|---------------|-------------|------------|
| Controller | Director | Mar | $110K | 30% | $143K | $143K |
| Sales Rep | IC | Q2 avg | $65K + var | 25% | $81K | $61K (partial) |

## Headcount Cost Summary

| Category | Annual Cost |
|----------|------------|
| Current headcount (existing roles) | $X |
| New hires (prorated) | $X |
| Backfills (prorated) | $X |
| One-time recruiting / setup | $X |
| **Total personnel cost (FY)** | **$X** |

## Month-by-Month Ramp
| Month | Headcount | Monthly Cost | Notes |
|-------|-----------|-------------|-------|
| Jan | <N> | $X | |
| Feb | <N> | $X | Controller starts |
| ... | | | |
| Dec | <N> | $X | |

## Budget Sensitivity
| Scenario | Net New Hires | Personnel Cost | EBITDA Impact |
|---------|--------------|---------------|--------------|
| Conservative | <N> | $X | +/-$X |
| Base | <N> | $X | +/-$X |
| Aggressive growth | <N> | $X | +/-$X |

## EBITDA Impact
Planned headcount additions: $X incremental personnel cost
% of revenue: X%
EBITDA impact (net): -$X | New EBITDA margin: X%
```

## Output Contract
- Always uses fully loaded cost (not just base salary)
- Partial year hires prorated from actual start month
- EBITDA impact calculated for every plan — headcount decisions are EBITDA decisions
- HITL required before any headcount plan is approved for budget or hiring authorization

## System Dependencies
- **Reads from:** Current headcount and comp data (provided), open role list, budget targets
- **Writes to:** Nothing (outputs plan for Finance and Matt review)
- **HITL Required:** Matt Mathison approves headcount plans that impact EBITDA > 5%

## Test Cases
1. **Golden path:** 5 new hires planned → outputs monthly ramp, fully loaded annual cost, EBITDA impact
2. **Edge case:** Request to add headcount that would push EBITDA below covenant threshold → flags covenant risk, surfaces maximum affordable headcount
3. **Adversarial:** Plan submitted with base salary only (no benefits) → flags incomplete cost model, recalculates with standard benefit load and flags the difference

## Audit Log
Headcount plans retained by entity and budget year. Actual vs. plan tracked quarterly.

## Deprecation
Retire when HRIS (HR information system) handles headcount planning with benefit cost modeling.
