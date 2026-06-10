---
name: service-level-agreement-tracker
description: "Track SLA commitments and flag breaches across vendor and customer agreements. Use when the user says 'SLA tracking', 'SLA compliance', 'are we meeting SLAs', 'vendor SLA breach', 'service level breach', 'SLA report', 'uptime SLA', or 'response time SLA'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--party <vendor|customer>] [--period <YYYY-MM>] [--contract <id>]"
---

# Service Level Agreement Tracker

Monitor SLA commitments on both sides of the contract — vendor SLAs you rely on, and customer SLAs you've committed to. Surface breaches, calculate credits, and feed the vendor performance scorecard.

## When to Use
- Monthly SLA review (standard cadence)
- After any service disruption (was it an SLA event?)
- Before vendor renewal negotiations (SLA breach history)
- When a customer raises a service complaint (was there an SLA breach?)
- Contract drafting (what SLAs should we require or commit to?)

## SLA Types

### Availability / Uptime
`SLA: ≥ 99.9% uptime per month`
- 99.9% = maximum 43.8 minutes of downtime per month
- 99.5% = maximum 3.65 hours per month
- 99.0% = maximum 7.3 hours per month

### Response Time
`SLA: Critical issues acknowledged within 1 hour, resolved within 4 hours`
- Track: acknowledgment time, resolution time, per priority level

### Throughput / Capacity
`SLA: Process X invoices within Y business days`
- Track: actual vs. committed throughput

### Quality / Error Rate
`SLA: Error rate ≤ 0.5% of transactions processed`
- Track: errors per period, % of total

## Credit Calculation (for vendor SLA breaches)

Typical credit structure:
| Downtime in a Month | Credit |
|--------------------|--------|
| < SLA (no breach) | 0% |
| 0.1% - 0.5% downtime | 5% of monthly fee |
| 0.5% - 1.0% downtime | 10% of monthly fee |
| > 1.0% downtime | 25-50% of monthly fee |

Calculate credit and file with vendor per contract terms.

## Output Format

```markdown
# SLA Tracking Report — <Period>
**Entity:** <entity> | **Date:** <date>

## Vendor SLAs — Inbound Commitments

| Vendor | SLA Type | Target | Actual | Status | Credit Owed |
|--------|---------|--------|--------|--------|-------------|
| AWS | Uptime | ≥ 99.9% | 99.97% | ✅ Met | $0 |
| Krista.ai | Response time P1 | < 1 hour | 0.8 hours avg | ✅ Met | $0 |
| <Vendor> | Uptime | ≥ 99.5% | 98.9% | 🔴 BREACH | $X credit |

## Customer SLAs — Outbound Commitments

| Customer | SLA Type | Target | Actual | Status |
|----------|---------|--------|--------|--------|
| <Client> | Delivery time | 3 business days | 2.8 days avg | ✅ Met |

## SLA Breach Summary
| Party | SLA Breached | Period | Impact | Action |
|-------|-------------|--------|--------|--------|
| <Vendor> | Uptime | Jun 2026 | $X credit to claim | File credit claim by Jul 15 |

## Credit Claims Pending
Total credits to file: $X across <N> vendors

## Trend Analysis (3-month rolling)
<Performance trend per key SLA>
```

## Output Contract
- Both inbound (vendor) and outbound (customer) SLAs always tracked separately
- Breach credits calculated and credit claim deadlines flagged
- HITL required before any SLA credit claim is filed or customer is notified of breach

## System Dependencies
- **Reads from:** Incident logs, uptime monitoring data, vendor reports (provided)
- **Writes to:** Nothing (outputs tracker for Operations review)
- **HITL Required:** Finance or Operations lead before filing vendor credit claims

## Test Cases
1. **Golden path:** All SLAs met for the period → clean green report with trend confirmation
2. **Edge case:** Customer SLA missed due to a vendor SLA breach → surfaces both events, shows causal link, recommends customer communication approach
3. **Adversarial:** Vendor disputes SLA breach calculation methodology → outputs calculation with source data and contract reference, flags dispute for legal/operations review

## Audit Log
Monthly SLA tracking retained by period. Breach history retained for vendor renewal negotiations.

## Deprecation
Retire when monitoring platform (Datadog, Cloudwatch) automates SLA tracking with alert integration.
