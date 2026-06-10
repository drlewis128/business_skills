---
name: insurance-renewal-tracker
description: "Track insurance policy renewals, coverage adequacy, and premium changes across MBL entities. Use when the user says 'insurance renewal', 'policy renewal', 'insurance tracker', 'when does our insurance renew', 'coverage review', 'insurance premium', 'business insurance', or 'insurance audit'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--policy-type <gl|epl|cyber|do|workers-comp|property>]"
---

# Insurance Renewal Tracker

Track all insurance policy renewals across MBL Partners and portfolio entities, flag upcoming expirations, and surface premium changes and coverage gaps.

## When to Use
- 90 days before any policy renewal (begin broker engagement)
- Annual insurance review (comprehensive coverage audit)
- After a significant business event (acquisition, headcount growth, new state)
- When a vendor or lender requests evidence of coverage (COI)
- M&A diligence (review target's insurance program)

## Standard Insurance Policies (MBL Context)

| Policy Type | Coverage Purpose | Key Limit Check |
|-------------|-----------------|----------------|
| **General Liability (GL)** | Third-party bodily injury, property damage | $1M per occurrence / $2M aggregate typical |
| **Professional Liability (E&O)** | Claims from professional services errors | Based on revenue and contract risk |
| **Cyber Liability** | Data breach, ransomware, business interruption | Minimum $1M; more for healthcare (Allevio) |
| **Directors & Officers (D&O)** | Claims against leadership decisions | Required for PE-backed companies and LP relationships |
| **Employment Practices Liability (EPL)** | Wrongful termination, discrimination claims | Per headcount and jurisdiction |
| **Workers' Compensation** | Employee workplace injuries | State-required in all states with employees |
| **Commercial Property** | Office, equipment, inventory damage | Replacement value basis |
| **Umbrella / Excess Liability** | Coverage above primary policy limits | Typically $5M–$10M for PE-backed |
| **Key Man Life Insurance** | Death or disability of critical executives | Per lender requirements or LP expectation |

### Allevio-Specific (Healthcare)
- Medical Malpractice / Professional Liability
- HIPAA Cyber coverage (higher limits needed)
- Healthcare Management Liability

## Renewal Timeline

| Days Before Expiry | Action |
|-------------------|--------|
| 90 days | Begin renewal process — engage broker |
| 60 days | Review renewal quote; benchmark vs. market |
| 30 days | Bind coverage or confirm renewal |
| 14 days | Obtain updated COI for distribution |
| 0 (expiry) | Coverage must be active — no gap |

## Coverage Adequacy Checks

Trigger a coverage review when:
- Headcount increased >25% since last renewal
- New state presence (workers' comp may be required)
- New service line with different risk profile
- Revenue grew >30% (limits may be inadequate)
- Acquisition of a new entity (add to schedule)
- Lender or LP requires updated limits

## Output Format

```markdown
# Insurance Renewal Tracker — <Entity>
**Date:** <date> | **Policy Year:** <year>

## Renewal Calendar

| Policy | Carrier | Expiry Date | Days Until | Premium | Status |
|--------|---------|-------------|------------|---------|--------|
| GL | Travelers | Sep 30, 2026 | 113 days | $12,400/yr | 🟡 Start renewal |
| Cyber | Chubb | Aug 15, 2026 | 67 days | $8,200/yr | 🔴 Quote now |
| D&O | AIG | Dec 31, 2026 | 205 days | $22,000/yr | 🟢 Not urgent |
| Workers' Comp | State Fund | Jan 1, 2027 | 206 days | $4,100/yr | 🟢 Not urgent |

## Action Required

### 🔴 Urgent (< 60 days)
- Cyber policy expires Aug 15 — broker must quote by Jul 15. Contact <broker>.

### 🟡 Start Process (60-90 days)
- GL policy expires Sep 30 — begin renewal now. Expect 10-15% rate increase (market trend).

## Premium Trend
| Policy | Prior Year | Current Year | Change |
|--------|-----------|-------------|--------|
| Cyber | $6,800 | $8,200 | +20.6% ⚠️ |
| GL | $11,200 | $12,400 | +10.7% |

## Coverage Gaps / Flags
- Allevio: Cyber limit is $1M — healthcare data exposure may require $2M+ limit
- HIVE: No Key Man policy on CEO — review per LP agreement requirements

## COI Requests Outstanding
<any vendor/lender certificate of insurance requests pending>
```

## Output Contract
- Renewals at < 60 days always flagged as urgent — never silently approaching expiry
- Premium increases > 15% flagged for broker negotiation
- Coverage gaps (no policy for required type) flagged separately from renewal timing
- HITL required before binding any new coverage or cancelling any policy

## System Dependencies
- **Reads from:** Policy registry (maintained by Finance), broker communications, lender insurance requirements
- **Writes to:** Nothing (outputs renewal calendar and gap analysis)
- **HITL Required:** Before binding, renewing, or cancelling any coverage

## Test Cases
1. **Golden path:** All policies with 90+ days remaining → outputs clean calendar with upcoming action dates
2. **Edge case:** Policy with lapse discovered (expired 2 weeks ago) → flags as CRITICAL gap, outputs immediate reinstatement action
3. **Adversarial:** New portfolio company just acquired with unknown insurance → outputs full due diligence checklist for insurance audit of the entity

## Audit Log
Policy register maintained with coverage history. Premium trends tracked year-over-year. Coverage gap discoveries documented with resolution date.

## Deprecation
Retire when risk management platform or broker portal handles renewal tracking with automated alerts.
