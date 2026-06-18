---
name: fin-column6-media-cost
description: "Track Column6/Siprocal media costs, CPM margins, and DSP cost reconciliation. Use when the user says 'Column6 media cost', 'Siprocal media cost', 'DSP cost', 'media spend', 'inventory cost', 'CTV inventory cost', 'programmatic cost', 'CPM cost', 'media margin', 'gross margin media', 'DSP reconciliation', 'DSP cost reconciliation', 'Column6 COGS', 'media COGS', 'traffic cost', 'publisher cost', 'supply cost', 'supply spend', 'demand-side platform', 'SSP cost', 'supply-side platform', 'media cost analysis', 'campaign profitability', 'campaign margin', 'Column6 profitability', 'revenue share', 'inventory cost tracking', 'demand partner cost', 'Column6 cost control', 'Column6 margin tracking', or 'programmatic margin'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly>] [--action <reconcile|analyze|optimize|report>] [--focus <margin|dsp-cost|campaign|cpm-trend>] [--channel <ctv|mobile|gaming|all>]"
---

# Fin Column6 Media Cost

Track Column6/Siprocal media costs, CPM margins, and DSP cost reconciliation — ensuring that every dollar Column6 spends to deliver advertising inventory is tracked, reconciled to the DSP invoices, and measured against the margin targets that make Column6 profitable. Column6's business model is a spread business: Column6 sells inventory to agencies at a CPM, buys or traffics inventory from DSPs/publishers at a lower CPM, and keeps the margin. The gross margin target (≥18% EBITDA; implying 40-55% gross margin on media) requires discipline in tracking the buy-side cost and immediately identifying campaigns where the buy-side cost is eroding the margin.

## When to Use
- Monthly: reconcile DSP invoices to campaign cost; calculate campaign-level margins
- A campaign margin is below the minimum acceptable threshold
- Quarterly: media cost trend analysis and DSP renegotiation review
- Matt Mathison asks about Column6's profitability or cost structure

## Column6 Media Cost Framework

```
COLUMN6 REVENUE MODEL:

  Revenue (sell-side): Agency CPM × delivered impressions / 1,000
  Cost (buy-side): DSP/publisher CPM × delivered impressions / 1,000
  Gross profit: Revenue - Media cost
  Gross margin: Gross profit / Revenue
  
  TARGET MARGINS:
    Gross margin (revenue - direct media cost): ≥40%
    EBITDA margin (after OpEx): ≥18%
    
    Campaign-level minimum acceptable margin: ≥25%
    Below 25%: flag for review; negotiate CPM improvement on next IO
    Below 15%: escalate to Column6 CEO; consider declining campaign renewal

MEDIA COST CATEGORIES:

  1. DSP COSTS (primary cost):
     Demand-side platform fees (The Trade Desk; DV360; Xandr; etc.)
     DSP bills monthly for inventory costs + platform fee
     Column6 buys inventory through the DSP to fulfill agency campaigns
     
  2. PUBLISHER / SSP DIRECT COSTS:
     Direct publisher deals (guaranteed inventory blocks)
     SSP (supply-side platform) fees on programmatic buys
     
  3. DATA COSTS:
     Third-party audience data costs (when campaigns target specific audiences)
     Verification fees (IAS; DoubleVerify; Moat)
     
  4. AD SERVING FEES:
     Ad server costs (impression delivery infrastructure)
     These are relatively fixed per-impression costs
     
MONTHLY COST RECONCILIATION:

  STEP 1 — RECEIVE DSP INVOICES (by the 5th):
    □ All DSP invoices received for prior month
    □ Compare DSP invoice to Column6's internal campaign cost data
    □ Any discrepancy >5% between DSP invoice and internal tracking: investigate before paying
    
  STEP 2 — CAMPAIGN-LEVEL MARGIN ANALYSIS:
    For each campaign:
      Revenue: [delivered impressions × sell CPM / 1,000]
      Media cost: [delivered impressions × buy CPM / 1,000]
      Data cost: [if applicable]
      Gross profit: revenue - total media/data cost
      Gross margin: [%]
      Flag: any campaign <25% gross margin
      
  STEP 3 — DSP INVOICE PAYMENT:
    After reconciliation complete: approve DSP invoice for payment via Bill.com
    Approval: <$10K Dr. Lewis; $10K-$50K Dr. Lewis + Column6 CEO; >$50K Matt notification
    
  STEP 4 — COST TREND REPORT:
    Monthly cost trend by channel (CTV; mobile; gaming)
    Cost per CPM trend by DSP (are costs rising?)
    Margin trend by campaign type (brand; performance; retargeting)
    Flag: any DSP where costs have increased >10% vs. prior quarter

MARGIN IMPROVEMENT LEVERS:

  1. DSP NEGOTIATION:
     Volume discounts: negotiate at quarterly or annual volume thresholds
     Private marketplace (PMP) deals: lower CPMs for guaranteed volume
     Frequency: review DSP contracts at renewal (typically annual)
     
  2. INVENTORY OPTIMIZATION:
     Route campaigns to the lowest-cost inventory that meets delivery targets
     Avoid premium inventory for standard performance campaigns
     
  3. MIX MANAGEMENT:
     High-margin channels (gaming; some CTV) vs. lower-margin (mobile video)
     Prioritize high-margin channels for agency upsell
     
  4. DATA COST REDUCTION:
     Evaluate: is third-party data generating incremental performance?
     Build first-party audience segments to reduce reliance on third-party data
```

## Output Format

```markdown
# Column6 Media Cost Report — [Month Year]
**Prepared by:** Dr. Lewis | **For:** Column6 CEO + Dr. Lewis | **To Matt Mathison:** Quarterly

---

## Monthly P&L Summary

| Metric | This month | Prior month | Target | Status |
|--------|-----------|------------|--------|--------|
| Revenue (sell-side) | $[X] | $[X] | — | — |
| Total media cost (buy-side) | $[X] | $[X] | — | — |
| Data + verification costs | $[X] | $[X] | — | — |
| **Gross profit** | **$[X]** | **$[X]** | — | — |
| **Gross margin** | **[%]** | **[%]** | **≥40%** | 🟢/🟡/🔴 |

---

## Campaign Margin Analysis (Flagged Only)

| Campaign | Agency | Revenue | Media cost | Gross margin | Status |
|---------|--------|---------|------------|------------|--------|
| [Campaign A] | [Agency] | $[X] | $[X] | [%] | ⚠️ Below 25% |

---

## DSP Cost Trend

| DSP | Prior quarter avg CPM | This month CPM | Change | Flag |
|----|---------------------|--------------|--------|------|
| The Trade Desk | $[X] | $[X] | +/-[%] | 🟢/⚠️ |
| DV360 | $[X] | $[X] | +/-[%] | — |
```

## Output Contract
- Campaign margin is checked before the campaign ends — Dr. Lewis reviews in-flight campaign margins mid-month; a campaign that is trending below 15% margin at the midpoint needs an operational intervention (reroute inventory; reduce data spend) before it drains gross profit; catching a margin problem at mid-campaign avoids a month-end surprise
- DSP reconciliation before payment — DSP invoices are not auto-approved; the invoice is reconciled to Column6's internal campaign cost tracker before payment is approved; DSP billing errors (double-billing; incorrect impression counts; rate mismatches) are caught at reconciliation; Dr. Lewis approves the reconciled amount, not the invoiced amount
- Margin trend is the forward indicator — a single low-margin month is an anomaly; two consecutive months of declining gross margin is a structural problem (rising inventory costs; declining sell CPMs; bad agency mix); Dr. Lewis tracks gross margin trend monthly and presents it to Matt Mathison in the quarterly Column6 financial overview with a root cause explanation and specific action plan
- HITL required: Dr. Lewis reviews monthly media cost report and campaign margin flags; campaigns <15% gross margin escalate to Column6 CEO same day; DSP cost increase >10% vs. prior quarter triggers Dr. Lewis negotiation review; DSP contract renewals require Column6 CEO + Dr. Lewis review; major DSP relationship changes (new platform; drop a DSP) require Matt Mathison awareness; quarterly media cost summary to Matt Mathison

## System Dependencies
- **Reads from:** DSP invoices (The Trade Desk; DV360; Xandr — monthly billing statements); Column6 internal campaign tracker (campaign delivery and cost data); fin-column6-io-billing (sell-side revenue to calculate margins); Bill.com (DSP payment tracking)
- **Writes to:** QuickBooks Column6 (media cost COGS entries; DSP payments); media cost reports (SharePoint → Finance → Column6 → MediaCost → [YYYY]-[MM]); fin-financial-model (Column6 gross margin inputs); fin-kpi-dashboard (gross margin KPI); exec-cfo-oversight (Column6 gross margin in quarterly summary)
- **HITL Required:** Campaign <15% margin → Column6 CEO same day; DSP invoice reconciliation before payment; DSP cost +10% vs. prior quarter → Dr. Lewis negotiation review; DSP contract renewals → Column6 CEO + Dr. Lewis; quarterly summary → Matt Mathison

## Test Cases
1. **Golden path:** May media cost report; Column6 revenue $341K; DSP costs $178K (52.2%); data costs $24K (7%); verification $8K (2.3%); gross profit $131K; gross margin 38.4% — slightly below the 40% target (flagged yellow). Campaign margin analysis: 8 campaigns; 7 above 25% gross margin; 1 campaign for Agency D at 22.1% (mobile gaming campaign with expensive third-party data segment). Column6 CEO notified: "Campaign for Agency D is at 22.1% gross margin due to a third-party data segment cost that's running higher than modeled. Options: (1) remove the data segment if performance metrics support it; (2) negotiate a data cost reduction for the remaining flight; (3) accept the margin for this IO and reprice for renewal. What do you want to do?" DSP trend: The Trade Desk CPMs up 3.2% vs. Q1 — monitor, not yet at 10% threshold.
2. **Edge case:** DSP invoice arrives $35K higher than Column6's internal tracking → Dr. Lewis: "Holding payment. The DSP invoice is $35K above our internal campaign cost tracking for May. Possible causes: (1) a campaign that ran in our system at budget paced over; (2) rate discrepancy between what we negotiated and what the DSP billed; (3) a billing error on the DSP side. I'm pulling the line-item breakdown from the DSP invoice and comparing to our campaign logs. I'll have a resolution within 48 hours before this invoice is due. If the DSP error is confirmed, I'll submit a credit request. If the over-delivery is on our side (we ran more impressions than tracked internally), I'll investigate the tracking gap. Either way, the invoice doesn't get approved until the $35K discrepancy is explained."
3. **Adversarial:** Column6 CEO wants to pursue a large agency deal at CPMs that would reduce gross margin to 19% (below the 25% minimum) to win a marquee brand → Dr. Lewis: "I hear the strategic argument — a marquee brand logo matters for sales. But 19% gross margin on a large campaign at $800K revenue is $152K gross profit vs. $240K at 30% margin. The $88K gross profit gap is real. Before I sign off on this, I need to know three things: (1) What is the expected media cost structure? Can we achieve 19% gross margin without losing money on any individual campaign flight? (2) Is there a second-year upsell built in — a marquee brand who renews at better margins makes the first-year discount worthwhile; a one-and-done marquee brand doesn't. (3) What's the OpEx cost to service this account (agency contacts; reporting; QBRs)? I'm not saying no, but I'm not approving it without the full economics. Let me build the deal financial model and present it to Matt."

## Audit Log
All DSP invoice records retained (invoice + reconciliation documentation). Campaign margin analysis records retained monthly. DSP cost trend data retained quarterly. Media cost trend data retained rolling 24 months. DSP contract records retained. Margin improvement initiative records retained.

## Deprecation
Retire when Column6 has a dedicated Finance or Revenue Operations manager who tracks media costs — with Dr. Lewis reviewing the quarterly gross margin trend and Matt Mathison receiving the Column6 financial overview including margin performance.
