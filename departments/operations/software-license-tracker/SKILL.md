---
name: software-license-tracker
description: "Track software license usage, costs, and renewal dates across the organization. Use when the user says 'software licenses', 'license tracker', 'SaaS inventory', 'what software are we paying for', 'software audit', 'SaaS spend', 'license utilization', or 'software stack review'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <inventory|audit|optimize>]"
---

# Software License Tracker

Maintain the software and SaaS license inventory, track utilization, costs, and renewal dates, and surface optimization opportunities.

## When to Use
- Annual software audit (what are we paying for?)
- Before budget planning (lock in software costs)
- When a new SaaS tool is being considered (check for duplicates)
- When an employee offboards (reclaim licenses)
- Vendor renewal decision support (are we using this?)

## License Record Format

For each tool:
| Field | Description |
|-------|-------------|
| Tool name | Product name |
| Category | (see below) |
| Vendor | Vendor company |
| Seats | Purchased / Used / Available |
| Unit cost | Per seat / per month / flat |
| Annual cost | Total annual spend |
| Renewal date | When the subscription renews |
| Owner | Who manages this license |
| Entity | Which MBL entity uses it |
| Utilization | % of seats actively used |

## Category Tags

| Category | Examples |
|----------|---------|
| Productivity | Microsoft 365, Slack, Zoom |
| Finance | QuickBooks, Bill.com |
| CRM | GoHighLevel |
| Project Management | Monday.com |
| Security | Endpoint protection, VPN |
| AI / Automation | Claude, Krista.ai |
| Development | GitHub, cloud infrastructure |
| Marketing | Design tools, analytics |
| HR | Payroll, HRIS |
| Operations | Specific to entity |

## Utilization Thresholds

| Utilization | Action |
|------------|--------|
| ≥ 80% | Healthy — may need more seats |
| 50-79% | Adequate — review at renewal |
| 20-49% | Low — reduce seat count at renewal or identify underusers |
| < 20% | Critically underused — consider cancellation |

## Output Format

```markdown
# Software License Inventory — <Entity>
**Updated:** <date> | **Total Annual Spend:** $X | **Total Seats:** <N>

## License Summary by Category

| Category | Tools | Annual Cost | % of Total |
|----------|-------|------------|------------|
| Productivity | 3 | $X | X% |
| Finance | 2 | $X | X% |
| AI / Automation | 2 | $X | X% |

## Full License Registry

| Tool | Seats (Pur/Used) | Utilization | Annual Cost | Renewal | Owner | Action |
|------|-----------------|------------|------------|---------|-------|--------|
| Microsoft 365 | 20/18 | 90% | $X | Jan | Dr. Lewis | ✅ Healthy |
| Zoom | 20/8 | 40% | $X | Mar | Dr. Lewis | 🟡 Reduce to 10 seats |
| <Tool> | 5/1 | 20% | $X | Apr | <name> | 🔴 Cancel or justify |

## Optimization Opportunities

### Cancel Candidates (< 20% utilization, no clear justification)
1. <Tool> — $X/year — Action: Confirm with owner before cancelling
2. <Tool>

### Right-Size Opportunities (40-60% utilization)
1. <Tool> — Currently 20 seats, need ~10 — Save $X/year at renewal

### Duplicate Function Alert
<Tools in same category with overlapping functions — consolidation opportunity>

## Cost Savings Summary
If all optimizations implemented: Save $X/year ($X/month)
```

## Output Contract
- Utilization required for each tool — "unknown" triggers a usage audit request
- Cancellation candidates never cancelled automatically — HITL for confirmation
- Duplicate function alerts always flagged — consolidation decisions are human
- HITL required before any license cancellation or seat reduction

## System Dependencies
- **Reads from:** SaaS spend from AP/credit card data, seat usage from admin consoles (provided)
- **Writes to:** Nothing (outputs inventory and optimization recommendations)
- **HITL Required:** Operations lead or Dr. Lewis approves any software changes

## Test Cases
1. **Golden path:** 15-tool inventory with utilization data → full scorecard with $X savings identified
2. **Edge case:** Tool with 5% utilization but used by critical process → flags low utilization, but notes criticality from owner response — does not recommend cancellation
3. **Adversarial:** Adding a new tool that duplicates an existing one → flags duplicate before purchase, identifies existing coverage

## Audit Log
Annual software audits retained with utilization data and optimization actions taken.

## Deprecation
Retire when SaaS management platform (Zluri, Torii, Zylo) handles automated license tracking and utilization monitoring.
