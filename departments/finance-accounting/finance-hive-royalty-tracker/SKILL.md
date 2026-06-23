---
name: finance-hive-royalty-tracker
description: "Track royalty income for HIVE Partners oil and gas operations. Use when the user says 'royalty income', 'royalty tracking', 'royalty payment', 'HIVE royalty', 'mineral royalty', 'overriding royalty', 'ORRI', 'royalty revenue', 'royalty check', 'royalty reconciliation', 'royalty statement', 'royalty from Covercy', 'Covercy royalty', 'Uinta Basin royalty', 'oil royalty', 'gas royalty', 'royalty vs. working interest', 'royalty income tracking', 'how much royalty did we receive', 'royalty calculation', 'net royalty interest', 'NRI', 'lease royalty', 'mineral rights income', 'royalty income report', 'HIVE income', 'passive royalty income', 'royalty accrual', 'royalty reconciliation to QuickBooks', or 'royalty ledger'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--action <reconcile|report|accrue|audit>] [--property <all|specific-lease>]"
---

# Finance HIVE Royalty Tracker

Track and reconcile royalty income for HIVE Partners oil and gas operations — recording overriding royalty interest (ORRI) payments from Covercy, reconciling to QuickBooks, monitoring for payment accuracy versus reported production, and including royalty income in HIVE's monthly financial package. Royalty income is passive, high-margin revenue that accrues from HIVE's lease position without ongoing LOE cost.

## When to Use
- Monthly royalty income reconciliation (Covercy → QuickBooks)
- Investigating a royalty payment that seems low or is late
- Quarterly HIVE financial package (royalty income section)
- Annual royalty income audit and summary for Matt Mathison

## HIVE Royalty Tracking Framework

```
ROYALTY INCOME TYPES:

  OVERRIDING ROYALTY INTEREST (ORRI):
    What: HIVE holds an ORRI in leases where another operator holds the working interest
    Revenue: production volume × WTI price (or natural gas price) × ORRI percentage × (1 - severance tax)
    HIVE does not pay LOE on ORRI properties (passive income; no cost to HIVE)
    Highest-margin income stream; full upside on WTI price increases
    
  LANDOWNER/MINERAL ROYALTY:
    What: where HIVE owns mineral rights outright and leases to an operator
    Revenue: production volume × WTI price × royalty rate (typically 12.5-25% of gross production)
    HIVE does not pay LOE on leased mineral properties
    
  NET REVENUE INTEREST (NRI) ON WORKING INTEREST PROPERTIES:
    Where HIVE holds a working interest, NRI = working interest × (1 - royalty burden)
    NRI royalty payments go to the royalty interest holder (not HIVE); HIVE receives the NRI share
    
COVERCY ROYALTY TRACKING:
  Covercy: primary platform for HIVE LP management and production/royalty tracking
  Royalty payments: operators send checks or ACH; tracked in Covercy by lease/property
  Monthly: Covercy generates royalty income statement by property
  Lag: typical royalty payment lag = 45-90 days from production (operator pays after they collect)
  
ROYALTY RECONCILIATION PROCESS (MONTHLY):
  Step 1: Pull Covercy royalty income statement for the month
  Step 2: Compare to HIVE's property-level ORRI/royalty schedule (what should we have received?)
  Step 3: Check for any missing payments (operators sometimes skip a month for administrative reasons)
  Step 4: Verify WTI price used by operator vs. market price (operators may use posted price; not spot)
  Step 5: QuickBooks entry: royalty income → revenue account; Covercy payment → cash account
  
ROYALTY ACCURACY CHECKS:
  Production volume: operator's royalty statement shows production × royalty rate × price = payment
    Verify: production volumes are consistent with prior periods (large drops → query operator)
    Verify: price used is within $2/bbl of WTI spot for the relevant month
  Payment timing: operators who are consistently 90+ days late → entity CEO notifies Covercy for follow-up
  Annual royalty audit: Dr. Lewis × entity CEO reviews all ORRI/royalty properties annually for accuracy
  
WTI TRIGGER CONTEXT:
  Royalty income still accrues during acquisition pause (WTI <$58 trigger)
  If WTI drops to $48-52: royalty income per property declines proportionally
  Royalty income forecast sensitivity: built in finance-scenario-modeler (HIVE WTI table)
  Royalty income is the cushion that protects HIVE cash flow during low-WTI periods
```

## Output Format

```markdown
# HIVE Royalty Income Tracker — [Month Year]
**Source:** Covercy | **Reconciled by:** Dr. Lewis | **Date:** [Date]

---

## Royalty Income Summary

| Property / Lease | Interest Type | Production (BOE) | WTI Used | Royalty Rate | Payment | Expected | Variance |
|-----------------|--------------|-----------------|---------|-------------|---------|---------|---------|
| [Lease Name] | ORRI X% | [N] BOE | $X/bbl | X% | $X | $X | +/-$X |
| [Lease Name] | Landowner Royalty | | | | | | |
| **Total Royalty Income** | | | | | **$X** | **$X** | **+/-$X** |

*Total royalty income: $X | QuickBooks entry: Posted ✅*

---

## Flags
[Missing payments / Large variances / Late operators / WTI price discrepancies]
```

## Output Contract
- ORRI royalty income is the highest-margin revenue HIVE generates — there is zero LOE, zero capital contribution, and zero operational risk associated with ORRI royalty income; when WTI is $65/bbl and HIVE holds an ORRI of 3% on a 4,000 BOE/month producing lease, the royalty income is 4,000 × $65 × 3% = $7,800/month with no associated cost; Dr. Lewis tracks this income stream carefully because it represents the bedrock of HIVE's passive cash flow — the revenue that persists even when WTI approaches the acquisition pause trigger and HIVE's working interest revenue is compressed
- Royalty payment accuracy verification matters more than the amount in any single month — operators report production and price in their royalty statements; occasionally the production volume is understated (accidental or otherwise), the price used is significantly below market, or a payment is simply skipped; Dr. Lewis checks royalty statements against expected production ranges and WTI spot price each month; a single missed $7,800 monthly royalty payment on a significant ORRI property adds up to $93,600 over a year — and if it goes unnoticed, HIVE is effectively subsidizing the operator's cash flow management at the LP's expense
- HITL required: royalty payment variance >15% from expected → entity CEO notified; missing royalty payment >2 months → Dr. Lewis + entity CEO notify operator through Covercy; annual royalty audit → entity CEO + Dr. Lewis; significant WTI price discrepancy in operator's royalty statement → Dr. Lewis investigates; Matt Mathison annual royalty income summary (in HIVE financial package); Covercy platform access → Dr. Lewis maintains admin access

## System Dependencies
- **Reads from:** Covercy (royalty income statements; property-level tracking; operator payment records); HIVE property schedule (ORRI percentages; royalty rates; lease details); WTI spot price (EIA; daily price reference for reconciliation); QuickBooks (royalty revenue accounts)
- **Writes to:** QuickBooks (monthly royalty income entries; revenue accounts); HIVE monthly financial package (royalty income section); Covercy reconciliation records; royalty audit records; Matt Mathison HIVE annual summary (royalty income)
- **HITL Required:** Variance >15% → entity CEO; missing payment >2 months → entity CEO + operator notify; annual audit → entity CEO + Dr. Lewis; WTI discrepancy → Dr. Lewis investigates; Matt Mathison annual summary

## Test Cases
1. **Golden path:** HIVE June 2026 royalty reconciliation. 3 ORRI properties; 2 landowner royalty properties. Expected June royalty (based on May production × June payment lag): $44,200. Covercy payments received: Property 1 (ORRI 2.5%): $18,400 expected; $18,200 received (variance -$200 = WTI rounding; acceptable ✅); Property 2 (ORRI 3.2%): $12,800 expected; $12,800 received ✅; Property 3 (Landowner 16.67%): $8,200 expected; $8,200 received ✅; Properties 4-5 (landowner): $4,800 received ✅. Total: $43,800 vs. $44,200 expected (-$400; <1% variance ✅). QuickBooks entry posted. Monthly royalty income included in HIVE financial package.
2. **Edge case:** Property 2 operator's royalty statement shows WTI price of $54.20/bbl when HIVE's expected WTI for May production was $63.50/bbl → Dr. Lewis: "The WTI price discrepancy on Property 2 is $9.30/bbl — that's a 14.6% reduction in price versus what I expected based on market WTI for May. That translates to approximately $1,800 in understated royalty for this property this month. I'm flagging this for investigation: (1) I'll check whether this operator uses a posted price (typically lags spot by 2-3 weeks) rather than spot price — a posted price of $54.20 for May 2026 production seems low; (2) I'll check Covercy for this operator's prior months to see if there's a consistent pricing differential; (3) entity CEO notifies Covercy to query the operator on the price basis. I'm posting the payment received ($10,900) and accruing the difference ($1,800) as a royalty accrual pending investigation."
3. **Adversarial:** Entity CEO suggests skipping the royalty reconciliation in months when the amounts are "about the same" → Dr. Lewis: "I understand the instinct — and in months where every property pays on time and the amounts match, the reconciliation takes 20 minutes and is uneventful. But that's exactly the kind of routine that lets errors compound unnoticed. The one month we skip is the month the operator underpays by $6,000 and we don't notice until 3 months later — and by then, we're chasing a 90-day-old discrepancy through Covercy with an operator who has no record of our inquiry. The reconciliation also feeds the QuickBooks entry, which feeds the HIVE financial package, which feeds Matt Mathison's portfolio dashboard. Skipping it creates gaps in 3 downstream documents. 20 minutes every month; I'll keep doing it."

## Audit Log
Monthly royalty reconciliation records (permanent). Covercy royalty statements (retained per records retention policy). QuickBooks royalty income entries. WTI price basis records (spot vs. posted price by operator). Variance investigation records. Missing payment follow-up records. Annual royalty audit records. Matt Mathison annual royalty income summary.

## Deprecation
Royalty calculation methodology reviewed when HIVE lease terms change. Covercy integration reviewed when platform capabilities change. WTI price verification methodology reviewed when pricing sources change. Reconciliation frequency reviewed when HIVE portfolio grows significantly.
