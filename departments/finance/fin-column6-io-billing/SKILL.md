---
name: fin-column6-io-billing
description: "Manage Column6/Siprocal insertion order billing and agency invoicing. Use when the user says 'Column6 billing', 'Siprocal billing', 'IO billing', 'insertion order billing', 'agency invoice', 'agency billing', 'CTV billing', 'CTV invoice', 'media billing', 'campaign billing', 'impression billing', 'campaign invoice', 'CPM billing', 'DSP billing', 'agency payment', 'agency collections', 'agency AR', 'agency AR aging', 'media agency', 'Column6 AR', 'Column6 invoice', 'Column6 collections', 'IO dispute', 'insertion order dispute', 'delivery shortfall', 'make-good', 'campaign make-good', 'campaign reconciliation', 'campaign delivery', 'delivered impressions', 'billed impressions', 'VCR billing', 'video completion billing', 'Column6 revenue', 'Siprocal revenue', 'CTV revenue', 'agency payment terms', or 'agency net terms'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly>] [--action <reconcile|invoice|collect|dispute|report>] [--focus <ar-aging|make-good|collections|delivery>] [--agency <all|specific>]"
---

# Fin Column6 IO Billing

Manage Column6/Siprocal insertion order billing and agency invoicing — ensuring that every CTV/mobile/gaming campaign that runs on the Column6 platform is billed accurately based on actual delivered impressions, collected within the agency payment terms, and reconciled when delivery shortfalls trigger make-good obligations. Column6's revenue model is campaign-based: agencies buy inventory via insertion orders (IOs), campaigns run and deliver impressions, and Column6 invoices based on delivered CPMs. The billing challenge is accuracy: the invoice must reflect actual delivery (not booked delivery), agency payment terms are often Net 45-60, and make-goods are a fact of life in digital advertising that must be tracked and honored without giving away margin.

## When to Use
- Monthly: invoice for all campaigns completed or in flight during the month
- A campaign ended and delivery reconciliation is needed
- An agency is overdue on payment
- A make-good obligation has been triggered
- Matt Mathison asks about Column6's AR or revenue

## Column6 IO Billing Framework

```
INSERTION ORDER BILLING STRUCTURE:

  INVOICE TRIGGER: Month-end (invoice for all campaigns run during the month)
  
  For each campaign:
    Agency name: [Agency]
    IO number: [COLSIP-IO-NNNN]
    Campaign dates: [Start] → [End]
    Booked impressions: [N]
    Delivered impressions: [N] (from DSP/ad server data)
    Delivery rate: [%] (delivered / booked)
    Booked CPM: $[X]
    Billed amount: delivered impressions × CPM / 1,000
    Make-good: required if delivery rate < 90% (Column6 default threshold)
    
  BILLING PROCESS (monthly, by the 5th for prior month):
    1. Pull delivery reports from DSP/ad server for all campaigns
    2. Reconcile delivered impressions to the IO specifications
    3. Calculate billed amount = delivered impressions × CPM / 1,000
    4. Apply any make-good credits (if prior period make-goods are being delivered in current period)
    5. Generate invoice per IO
    6. Send invoice to agency billing contact
    7. Post to QuickBooks AR
    
  PAYMENT TERMS (by agency type):
    Agency standard terms: Net 45 (most agencies)
    Holding company agencies: Net 60 (WPP; Omnicom; Publicis; IPG; Dentsu)
    Direct brands: Net 30
    New accounts: Net 30 until 3 invoices paid on time
    
  DSO target: ≤55 days (portfolio target)
  DSO by agency type: direct brands ≤35; standard agencies ≤50; holding company ≤65

MAKE-GOOD MANAGEMENT:

  TRIGGER: Delivery rate < 90% for a completed campaign
  
  Make-good obligation:
    Type 1: Credit memo (deduct shortfall from next invoice)
    Type 2: Added impressions on subsequent campaign (preferred by agencies)
    Type 3: CPM reduction on future IO
    
  Calculate make-good:
    Shortfall impressions = booked - delivered
    Make-good value = shortfall impressions × CPM / 1,000
    
  Make-good tracking:
    Log all open make-good obligations
    Track delivery of each make-good commitment
    Close make-good when delivered or when agency accepts credit
    
  Make-good cost impact:
    Make-goods are a cost (margin reduction); not a customer complaint — they are a media standard
    Track make-good rate by month (target: <8% of booked revenue requiring make-good)
    High make-good rate → investigate delivery pipeline (technical issue; inventory quality)
    
  Make-good report for Dr. Lewis (monthly):
    Open make-good obligations: $[X] (aggregate)
    Delivered this month: $[X]
    New this month: $[X]
    Make-good rate: [%] of revenue (target <8%)

AR AGING AND COLLECTIONS:

  Age all Column6 receivables by agency:
    Current (within terms): [%] of AR
    1-15 days past due: monitor
    16-30 days past due: reminder email
    31-45 days past due: phone call from Column6 account team + Dr. Lewis email
    46-60 days past due: escalate to agency billing department + Dr. Lewis
    60+ days past due: Dr. Lewis escalates to Matt Mathison for >$50K
    90+ days past due: legal notice
    
  Agency concentration risk:
    Any single agency >25% of AR: flag to Dr. Lewis
    Any single agency >35% of AR: flag to Matt Mathison
```

## Output Format

```markdown
# Column6 IO Billing Report — [Month Year]
**Prepared by:** Dr. Lewis | **For:** Dr. Lewis + Column6 CEO + Matt Mathison (quarterly)

---

## Campaign Billing Summary

| Agency | IO# | Booked impressions | Delivered impressions | Delivery rate | CPM | Billed | Make-good? |
|--------|-----|------------------|---------------------|------------|-----|--------|-----------|
| [Agency A] | [IO] | [N] | [N] | [%] | $[X] | $[X] | ✅ No / ⚠️ $[X] |

**Total billed:** $[X]

---

## AR Aging

| Agency | Total outstanding | Current | 1-30 DPD | 31-60 DPD | 60+ DPD | Action |
|--------|-----------------|---------|---------|---------|---------|--------|
| [Agency A] | $[X] | $[X] | $[X] | $[X] | $[X] | [Action] |
| **Total** | **$[X]** | | | | | |

**DSO:** [N] days (target ≤55)

---

## Make-Good Tracker

| Agency | IO# | Shortfall imps | Make-good value | Type | Status |
|--------|-----|----------------|----------------|------|--------|
| [Agency A] | [IO] | [N] | $[X] | Credit / Added imps | Open / Delivered |

**Total open make-good obligations:** $[X]
```

## Output Contract
- Invoice based on delivered impressions only — Column6 never invoices for booked impressions unless the IO specifies a guaranteed flat fee (non-standard); the invoice reflects actual delivery from the ad server, not what was planned; invoicing for undelivered impressions is a billing dispute waiting to happen; every invoice includes the delivery report as supporting documentation
- Make-good is a business obligation, not a favor — when Column6 has a make-good obligation, it is tracked, honored, and delivered within the timeframe specified in the IO; make-goods that are ignored or "forgotten" destroy agency relationships and are a reputation liability in the media buying community; Dr. Lewis tracks all open make-good obligations monthly and confirms they are being delivered on schedule by the Column6 operations team
- DSO discipline at 55 days — the portfolio DSO target for Column6 is ≤55 days; holding company agencies with Net 60 terms who pay at Day 63 are still within acceptable range; but agencies with Net 45 terms who pay at Day 70 are delinquent and require escalation; DSO is calculated across all outstanding AR, not just the overdue portion; a rising DSO trend is a cash flow warning signal even if individual invoices are technically "on time"
- HITL required: Dr. Lewis reviews monthly IO billing report and AR aging; make-good rate >8% of revenue triggers Column6 CEO conversation; any agency 60+ days overdue for >$50K escalates to Matt Mathison; write-offs require Dr. Lewis approval (<$5K) or Matt approval (>$5K); new agency credit terms (Net 60) require Dr. Lewis approval; agency concentration risk >35% of AR flagged to Matt Mathison

## System Dependencies
- **Reads from:** DSP/ad server (delivered impression data by campaign); IO documentation (booked specs; CPM; dates — QuickBooks or campaign management system); make-good tracker (SharePoint or campaign management); fin-ar-manager (AR aging tracking)
- **Writes to:** QuickBooks Column6 (AR invoices; make-good credits); IO billing reports (SharePoint → Finance → Column6 → Billing → [YYYY]-[MM]); exec-cfo-oversight (Column6 revenue and DSO in monthly financial summary); fin-kpi-dashboard (DSO; NRR; make-good rate KPIs)
- **HITL Required:** Dr. Lewis reviews monthly; make-good >8% → Column6 CEO; >$50K overdue 60+ days → Matt Mathison; new Net 60 terms → Dr. Lewis approval; write-offs → Dr. Lewis / Matt per threshold; concentration risk → Matt notification

## Test Cases
1. **Golden path:** June billing; 8 active campaigns from 5 agencies; total booked 142M impressions; delivered 138M (97.2%); billed $341,000 ($2.47 avg CPM); 1 make-good triggered: Agency B delivered at 87.5% (shortfall 1.8M impressions; make-good value $3,960 — tracking for July delivery). AR aging: Agency A paid June invoice on Day 42 (Net 45; within terms); Agency C is Day 52 (Net 45; 7 days past due — reminder sent). DSO: 48 days. All within target. Make-good rate: 1.2% of revenue. Dr. Lewis: "Column6 billing is clean. DSO at 48 — trending well. One make-good in flight; operations team is confirming July delivery slots."
2. **Edge case:** Agency disputes invoice claiming their ad server shows lower delivery than Column6's DSP → Dr. Lewis: "This is a third-party discrepancy — expected in digital media but needs resolution before payment. The industry standard is to use Column6's ad server as the billing source unless the IO specifies otherwise. Here's my action: (1) I'll pull Column6's delivery logs for the dispute period and share them with the agency. (2) The agency should share their verification tags' delivery report. (3) We reconcile the two data sets — discrepancies >10% are unusual and typically indicate a tracking implementation issue on the campaign. If the discrepancy is <10%, industry standard is to use Column6's number. If it's >10%, we investigate the source. I'll resolve this within 5 business days. Payment terms clock pauses during a documented dispute — I'll note this in QuickBooks."
3. **Adversarial:** Holding company agency (Net 60 terms) consistently pays at Day 75-80, and their current outstanding balance is $180K → Dr. Lewis: "This agency's payment pattern is systemic — they're 15-20 days past their Net 60 terms on every invoice for the past 4 months. Outstanding balance is $180K. I'm escalating this to Matt. Two options: (1) Require prepayment or 50% deposit on future IOs until they demonstrate payment compliance; (2) Add a late payment fee clause to their IO renewal (0.5-1.5% per month on overdue balances — standard in media). The relationship is important to Column6's revenue, but $180K at 75+ days is cash flow risk. I'll prepare a brief with the payment history and the two options for Matt's decision. Column6 CEO should be on the call with the agency."

## Audit Log
All IO billing records retained (campaign period + 7 years). Make-good tracking records retained. AR aging snapshots retained monthly. Dispute records retained (dispute + resolution + documentation). DSO trend data retained. Agency concentration records retained quarterly.

## Deprecation
Retire when Column6 has a dedicated Finance or Revenue Operations manager who manages IO billing — with Dr. Lewis reviewing the monthly AR aging and Matt Mathison receiving the quarterly Column6 financial overview.
