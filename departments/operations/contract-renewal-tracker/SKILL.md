---
name: contract-renewal-tracker
description: "Track contract renewal dates and surface upcoming decisions across the vendor and customer portfolio. Use when the user says 'contract renewals', 'what contracts are renewing', 'contract tracker', 'upcoming renewals', 'renewal calendar', 'when does this contract expire', or 'contract expiry'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--window <30|60|90>] [--type <vendor|customer|lease>]"
---

# Contract Renewal Tracker

Monitor all active contracts for upcoming renewal or expiration dates, surface decisions required, and prevent auto-renewals from sneaking through.

## When to Use
- Monthly review of upcoming renewals (standard cadence)
- When a specific contract is expiring (check timeline and process)
- Annual contract audit (are we paying for things we're not using?)
- Before budget planning (what contracts auto-renew and at what cost?)
- Post-acquisition (map the target's contract portfolio)

## Contract Types to Track

| Type | Key Dates to Watch | Decision Window |
|------|--------------------|----------------|
| SaaS / Software subscriptions | Annual renewal date | 60 days before |
| Vendor services contracts | Term end / auto-renewal notice | 90 days before |
| Facility / real estate leases | Lease expiry, renewal option exercise | 180+ days before |
| Customer/client contracts | Term end, renewal / rate adjustment | 60-90 days before |
| Insurance policies | Annual renewal (see `insurance-renewal-tracker`) | 90 days before |
| Financing agreements | Maturity / call dates | 12+ months before |

## Auto-Renewal Risk
Contracts with auto-renewal clauses are highest risk:
- Notice period to cancel: typically 30-90 days before renewal
- Missing the notice window = committed to another full term

**Flag system:** Any contract with auto-renewal, notice period ≤ 60 days, where no renewal decision has been made → 🔴 Urgent

## Renewal Decision Framework

For each renewing contract, answer:
1. Are we still using this? (If no → cancel)
2. Are we satisfied with the vendor/terms? (If no → renegotiate or switch)
3. Is there a better market alternative? (Quick benchmark)
4. What's the cost trajectory? (Price increase risk)
5. What's the decision? (Renew / Renegotiate / Cancel / Go to market)

## Output Format

```markdown
# Contract Renewal Tracker — <Entity>
**Window:** Next <N> days | **Updated:** <date>

## Urgent — Decision Needed Now (< 30 days)
| Contract | Vendor/Party | Type | Expiry | Auto-Renew Notice | Decision | Owner |
|---------|-------------|------|--------|-------------------|---------|-------|
| Salesforce | Salesforce | SaaS | Jul 15 | 30 days (Jun 15) | ⚠️ No decision yet | Dr. Lewis |

## Upcoming — Decide in Next 30-60 Days
| Contract | Vendor/Party | Type | Expiry | Notice By | Annual Value | Status |
|---------|-------------|------|--------|-----------|-------------|--------|

## Upcoming — Decide in 60-90 Days
<N contracts>

## Annual Contract Cost Summary
| Category | Contracts | Annual Value |
|----------|-----------|-------------|
| SaaS / Software | <N> | $X |
| Professional Services | <N> | $X |
| Facilities | <N> | $X |
| **Total** | **<N>** | **$X** |

## Recently Renewed / Cancelled
| Contract | Decision | Effective | Annual Impact |
|---------|---------|-----------|--------------|
```

## Output Contract
- Auto-renewing contracts with pending notice windows always surfaced as urgent
- Every urgent contract has a named decision owner
- Annual cost summary always included — contracts are a significant fixed cost
- HITL required before any contract is cancelled or renegotiated

## System Dependencies
- **Reads from:** Contract register (provided or from contract-value-extraction outputs), vendor payment history
- **Writes to:** Nothing (outputs renewal calendar and decisions needed)
- **HITL Required:** Matt Mathison or Finance lead approves contract renewal or cancellation decisions above $10K annual value

## Test Cases
1. **Golden path:** 12 contracts, 3 renewing in 60 days → prioritized list with decision owners and annual values
2. **Edge case:** Contract with 30-day notice window and today is 32 days before renewal → flags as MISSED NOTICE — advises contact vendor immediately about cancellation possibility
3. **Adversarial:** Auto-renewing contract for an unused service → flags for cancellation, notes that missing notice window locks in another term

## Audit Log
Contract renewal decisions logged with date, decision, and approver. Cancelled contracts documented with effective date and cost savings.

## Deprecation
Retire when contract lifecycle management (CLM) platform handles renewal calendar with automated alerts.
