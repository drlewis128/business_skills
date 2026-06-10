---
name: revenue-recognition-monitor
description: "Monitor deferred revenue schedules and flag recognition timing issues under ASC 606. Use when the user says 'revenue recognition', 'deferred revenue', 'ASC 606', 'when can we recognize revenue', 'deferred revenue schedule', 'rev rec', 'performance obligations', or 'unearned revenue'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-MM>] [--contract <id>]"
---

# Revenue Recognition Monitor

Track deferred revenue balances, surface recognition timing under ASC 606, and flag contracts where recognition may be premature or improperly delayed.

## When to Use
- Monthly close — before recognizing revenue entries
- When a new contract type is signed (verify recognition approach)
- Audit prep — auditors always test revenue recognition
- When deferred revenue balance moves unusually (large spike or drop)

## ASC 606 Five-Step Framework

### Step 1 — Identify the Contract
- Signed agreement with commercial substance
- Collectability is probable

### Step 2 — Identify Performance Obligations
- Distinct goods or services within the contract
- Each obligation recognized separately
- Watch for bundled promises (SaaS + implementation + support)

### Step 3 — Determine Transaction Price
- Fixed fees, variable fees (usage, milestone), non-cash consideration
- Constrain variable amounts — only recognize when highly probable of not reversal

### Step 4 — Allocate Transaction Price
- Standalone selling price (SSP) basis for each obligation
- Residual method only when SSP is highly variable or uncertain

### Step 5 — Recognize Revenue
| Pattern | Recognition Trigger |
|---------|-------------------|
| SaaS subscription | Ratably over subscription period |
| Professional services | As services are delivered (% complete or milestone) |
| Software license | Point-in-time at delivery |
| Hardware | Point-in-time at shipment/acceptance |
| Long-term contracts | Over time (input or output method) |

## Deferred Revenue Schedule

For each contract with upfront billing:
```
Billing date: <date>
Total billed: $X
Recognition period: <start> to <end>
Monthly recognition amount: $X/month
Deferred balance as of <period>: $X
Next recognition entry: $X on <date>
```

## Red Flags to Escalate

- Revenue recognized before performance obligation delivered
- Deferred revenue decreasing faster than performance completion rate
- Customer-cancellable contract with non-refundable payment treated as recognized
- Variable consideration recognized without constraint assessment
- Multi-element arrangement allocated using retail price instead of SSP

## Output Format

```markdown
# Revenue Recognition Monitor — <entity> — <period>

## Deferred Revenue Balance
Opening balance: $X
+ New bookings billed: $X
- Revenue recognized this period: $X
Closing balance: $X

## Recognition Schedule (This Period)
| Contract | Customer | Obligation | Amount | Status | Notes |
|----------|----------|------------|--------|--------|-------|
| C-2024-042 | Acme Corp | SaaS – Month 3 of 12 | $5,000 | ✅ Recognize | |
| C-2024-051 | Beta Inc | Impl – 60% complete | $12,000 | ⚠️ Review completion % | |

## Flags — Requires Review
1. Contract C-2024-051: Impl revenue % complete method — confirm milestone documentation before recognizing
2. Deferred balance decreased $45K without matching recognition entries — investigate

## Contracts Added This Period (recognition method determination needed)
<new contracts requiring ASC 606 analysis>
```

## Output Contract
- Never recommends recognizing revenue without confirmed performance obligation delivery
- Flags all variable consideration for constraint review before recognition
- HITL required before any revenue recognition journal entries are posted

## System Dependencies
- **Reads from:** Billing system, contract register, GL (deferred revenue account)
- **Writes to:** Nothing (outputs recognition schedule for accounting team)
- **HITL Required:** Before posting revenue recognition entries

## Test Cases
1. **Golden path:** Monthly SaaS subscription, single performance obligation → outputs clean ratable schedule
2. **Edge case:** Bundled contract (SaaS + implementation) → splits into two obligations, flags need for SSP allocation
3. **Adversarial:** Contract with full payment received before any service delivered → flags entire amount as deferred, zero recognition

## Audit Log
Period-end recognition schedules retained for audit trail. Each recognition entry references source contract and obligation ID.

## Deprecation
Retire when ERP (e.g., NetSuite, Sage Intacct) handles ASC 606 recognition automation with contract-level tracking.
