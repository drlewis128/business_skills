---
name: portops-lp-capital-tracker
description: "LP capital tracker, capital called vs committed per LP, unfunded commitments, distribution history return of capital, K-1 timing tracker, K-1 delivery deadline, tax document delivery, LP capital account, capital call history, unfunded commitment balance, LP capital ledger, distribution type classification, return of capital vs profit distribution, Covercy LP tracking, K-1 deadline compliance, LP tax reporting, fund capital summary, capital deployment tracker, distribution authorization, Matt Mathison distribution approval"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<LP name | all | capital-call | distribution | k1-status | unfunded>"
---

# LP Capital Tracker

Maintains the authoritative capital ledger for each HIVE Partners LP — tracking committed capital, called capital, unfunded commitments, distribution history (with classification of return-of-capital vs. profit distributions), and K-1 delivery status. Covercy is the system of record; QuickBooks is the verification layer. No distribution executes without Matt Mathison's explicit authorization.

## When to Use
- Calculating unfunded commitments remaining per LP ahead of a new capital call
- Classifying distributions as return-of-capital or profit (critical for LP tax reporting)
- Tracking K-1 delivery deadlines and confirming delivery to each LP by the required date
- Auditing the full capital lifecycle (committed → called → deployed → returned) for a given LP

## LP Capital Tracker Framework

```
LP CAPITAL TRACKER — HIVE PARTNERS
=====================================

TIER CLASSIFICATION
-------------------
ALL LP CAPITAL DATA = TIER 1 RESTRICTED
- No LP sees another LP's capital position, call history, or distribution amounts
- Aggregate fund stats shared only in anonymized form (min 5 LP positions)
- Matt Mathison and Dr. Lewis have full-fund visibility

CAPITAL ACCOUNT STRUCTURE (PER LP)
------------------------------------
COMMITTED CAPITAL        | Total LP commitment per subscription agreement
CALLED CAPITAL           | Cumulative capital drawn from LP to date
UNFUNDED COMMITMENT      | Committed - Called = Remaining obligation
INVESTED CAPITAL         | Called capital net of fees/expenses (deployed to portfolio)
RETURNED CAPITAL         | Distributions classified as return of original invested capital
PROFIT DISTRIBUTIONS     | Distributions above returned capital (gains, above preferred return)
CURRENT NAV (LP SHARE)   | LP's pro-rata share of current portfolio mark
TOTAL VALUE              | Returned Capital + Profit Distributions + Current NAV

CAPITAL CALL WORKFLOW
----------------------
STEP 1: IDENTIFY NEED    | Dr. Lewis identifies capital needed (portfolio acquisition, follow-on, fees)
STEP 2: CALCULATE CALLS  | Pro-rata call amounts per LP per subscription agreement
STEP 3: DRAFT NOTICE     | Capital call notice with wire instructions, due date, call amount per LP
STEP 4: MATT APPROVAL    | Matt Mathison reviews and authorizes the call notice (MANDATORY)
STEP 5: ISSUE NOTICES    | Send to each LP individually (Tier 1 — no group emails showing LP list)
STEP 6: TRACK RECEIPT    | Log wire receipt date and amount per LP in Covercy
STEP 7: RECONCILE        | Verify received amounts vs. QuickBooks; resolve any shortfall
STEP 8: ARCHIVE          | Archive call notice + receipt confirmation per LP

DISTRIBUTION WORKFLOW
----------------------
STEP 1: DETERMINE AMOUNT | Dr. Lewis calculates distributable proceeds (net of fees, reserves)
STEP 2: WATERFALL CALC   | Apply LPA waterfall: Return of Capital → Preferred Return → Carried Interest
STEP 3: LP ALLOCATION    | Pro-rata allocation per LP per their capital account
STEP 4: CLASSIFY         | Label each LP's distribution: Return of Capital / Profit / Mixed
STEP 5: MATT AUTHORIZATION| Matt Mathison explicitly authorizes before any wire is initiated (NO EXCEPTIONS)
STEP 6: EXECUTE WIRES    | Bill.com or direct wire per LP banking instructions in Covercy
STEP 7: CONFIRM DELIVERY | Confirm receipt with each LP; log confirmation
STEP 8: UPDATE RECORDS   | Update Covercy capital accounts; update QuickBooks; archive distribution notice

DISTRIBUTION CLASSIFICATION RULES
------------------------------------
RETURN OF CAPITAL (ROC)  | Distributions up to LP's total invested capital → reduces cost basis; not taxable as income
PREFERRED RETURN         | Distributions above ROC up to the LPA preferred return rate → taxable as income
PROFIT DISTRIBUTION      | Distributions above preferred return → taxable; triggers GP carried interest
MIXED DISTRIBUTION       | Distribution spanning two or more tiers → must be broken out on K-1 by tier

K-1 TRACKING
-------------
K-1 DELIVERY DEADLINE    | Typically March 15 (may be extended to Sept 15 with fund extension)
PER-LP K-1 STATUS:
  LP NAME                | [Legal entity name]
  TAX YEAR               | [Year]
  K-1 PREPARED BY        | [Tax preparer / CPA firm]
  DRAFT ISSUED TO LP     | [Date]
  LP QUESTIONS RESOLVED  | [Yes/No — Date if applicable]
  FINAL K-1 DELIVERED    | [Date]
  DELIVERY METHOD        | [Email / Portal / Mail]
  CONFIRMED RECEIVED     | [Yes/No — Date]

UNFUNDED COMMITMENT DASHBOARD
-------------------------------
LP NAME       | COMMITTED | CALLED | UNFUNDED | % FUNDED | NEXT CALL EST
[LP 1]        | $[Amt]    | $[Amt] | $[Amt]   | [X]%     | [Date/TBD]
[LP 2]        | $[Amt]    | $[Amt] | $[Amt]   | [X]%     | [Date/TBD]
FUND TOTAL    | $[Amt]    | $[Amt] | $[Amt]   | [X]%     | —
```

## Output Format

```markdown
## LP Capital Account Summary — [LP Legal Name]
**CLASSIFICATION: TIER 1 RESTRICTED — [LP NAME] ONLY**
**As of:** [Date]  **SOR:** Covercy + QuickBooks  **Authorized by:** Matt Mathison

### BLUF
[1 sentence: capital account status. Example: "As of [date], [LP Name] has funded $[X]M of $[X]M committed ([X]% funded), received $[X]M in distributions, and holds $[X]M in current NAV — MOIC [X.Xx]x."]

### Capital Account
| Item | Amount | Notes |
|------|--------|-------|
| Capital Committed | $[Amount] | Per subscription agreement |
| Capital Called | $[Amount] | Cumulative through [date] |
| Unfunded Commitment | $[Amount] | Remaining obligation |
| Total Distributions — ROC | $[Amount] | Return of original capital |
| Total Distributions — Profit | $[Amount] | Above cost basis |
| Current NAV (LP Share) | $[Amount] | As of [mark date] |
| Total Value | $[Amount] | Distributions + NAV |

### Capital Call History
| Call # | Date | Amount | Received | Reconciled |
|--------|------|--------|----------|------------|
| [#] | [Date] | $[Amt] | [Date] | Yes/No |

### Distribution History
| Date | Amount | Classification | Matt Authorized | Wire Confirmed |
|------|--------|---------------|-----------------|----------------|
| [Date] | $[Amt] | ROC / Profit / Mixed | YES | YES |

### K-1 Status — Tax Year [YYYY]
| Item | Status |
|------|--------|
| Draft Issued | [Date / Pending] |
| Final Delivered | [Date / Pending] |
| Delivery Confirmed | [Yes / No] |
| Deadline | March 15, [YYYY] |
```

## Output Contract
- The distribution classification column (ROC vs. Profit vs. Mixed) must be present on every distribution history output and verified against the LPA waterfall calculation before the report is finalized — incorrect classification directly impacts LP tax reporting and creates legal exposure for the fund.
- K-1 tracking records must reflect the actual confirmed delivery date, not the sent date — "delivered" means LP acknowledged receipt; unconfirmed deliveries are flagged as open items until confirmation is logged.
- Matt Mathison's authorization is a hard gate on all capital call notices and distribution records — the system will not mark a distribution as "executed" or a capital call as "issued" without the Matt-approval field populated with a confirmed timestamp.

## System Dependencies
**Reads from:** Covercy (HIVE LP capital accounts, call history, distribution history), QuickBooks (wire receipts, distribution cash verification), subscription agreements and LPA (stored in SharePoint for commitment amounts and waterfall terms)
**Writes to:** Covercy (capital account updates post-call and post-distribution), QuickBooks (cash entries), LP Communication Archive (call notices, distribution notices), Monday.com (K-1 deadline tasks)
**HITL Required:** Matt Mathison authorizes every capital call issuance and every distribution execution; Dr. Lewis prepares and reconciles before submitting to Matt

## Test Cases
- **Golden path:** Q3 distribution of $2.1M — waterfall applied (full ROC returned for 3 LPs, mixed classification for 2 LPs), pro-rata allocations calculated, Matt authorizes, wires executed via Bill.com, all LPs confirm receipt, Covercy and QuickBooks updated, distribution notices archived.
- **Edge case:** An LP missed a capital call deadline by 3 days — tracker flags the shortfall, logs the late receipt date, and surfaces the default notice provision from the LPA for Matt's review before any penalty is assessed.
- **Adversarial:** Request to initiate a distribution wire before Matt's authorization is recorded — agent halts the workflow, sends an escalation alert to Dr. Lewis and Matt Mathison, and logs the unauthorized attempt in the audit trail.

## Audit Log

Every capital event — call notice issued, wire received, distribution authorized, distribution wired, K-1 delivered — is logged with: LP identifier (never cross-LP), event type, amount, date, operator, Matt Mathison authorization timestamp (for distributions and calls), and reconciliation status. Logs are stored in SharePoint /HIVE/LP-Capital/Audit/ with append-only access controls. Capital audit logs are retained for a minimum of 10 years per SEC and tax recordkeeping requirements. Any distribution executed without a logged Matt authorization triggers an immediate compliance incident and must be documented in the fund's legal records.

## Deprecation

Maintain this skill through full fund wind-down and final LP distribution. Final state includes: all capital returned (committed = distributed for each LP), all K-1s delivered for final fund year, Covercy accounts closed. Archive the full capital ledger in perpetuity (do not delete) — fund records are subject to LP audit rights that may extend beyond wind-down. Create a successor instance for any new fund rather than reusing this one.
