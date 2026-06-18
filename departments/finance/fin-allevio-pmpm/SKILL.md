---
name: fin-allevio-pmpm
description: "Track and manage Allevio's per-member-per-month (PMPM) employer group revenue. Use when the user says 'PMPM', 'per member per month', 'employer group revenue', 'employer group billing', 'employer group PMPM', 'PMPM tracking', 'PMPM reconciliation', 'PMPM rate', 'PMPM increase', 'PMPM renewal', 'employer group invoice', 'employer billing', 'group billing', 'member billing', 'member count', 'member roster', 'active members', 'enrollment count', 'census', 'employer census', 'add member', 'remove member', 'member change', 'OE census', 'open enrollment census', 'group PMPM', 'employer agreement', 'employer contract revenue', 'monthly employer payment', 'PMPM variance', 'PMPM audit', 'PMPM reconcile', or 'employer group financial performance'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--group <all|specific-group-name>] [--period <monthly|quarterly|annual>] [--action <reconcile|audit|project|invoice|renew>] [--focus <revenue|members|pmpm-rate|variance>]"
---

# Fin Allevio PMPM

Track and manage Allevio's per-member-per-month (PMPM) employer group revenue — reconciling the employer group roster (active members) to the monthly billing, monitoring PMPM rate integrity across all groups, and projecting employer group revenue for financial planning. PMPM revenue is Allevio's primary revenue stream: it is predictable, recurring, and directly tied to the employer group count and active membership. Every discrepancy in the PMPM billing — wrong member count, wrong rate, missed new member — is a revenue leak that compounds monthly until caught.

## When to Use
- Monthly: reconcile the employer group roster to the monthly PMPM invoice
- Quarterly: PMPM rate review and projection update for the financial model
- Annual OE (October-January): member additions and rate renewal tracking
- A new employer group is being onboarded (billing setup)
- A group is churning (final billing; reconciliation)
- Matt Mathison asks about Allevio's employer group revenue

## PMPM Framework

```
ALLEVIO EMPLOYER GROUP BILLING STRUCTURE:

  EMPLOYER GROUP INVOICE (monthly; due Net 30):
    Invoice date: 1st of the month (for the current month's coverage)
    Amount: Active members × PMPM rate for that group
    Terms: Net 30 (employer group pays by the 30th)
    
    Invoice accuracy checks (before sending):
      □ Member count: does the member count match the group's current census?
      □ PMPM rate: does the rate match the signed employer agreement?
      □ Period: does the invoice cover the correct month?
      □ New members: are mid-month additions prorated correctly?
      □ Terminations: are terminated members removed from the billing date of termination?
      
  MEMBER ROSTER RECONCILIATION (monthly):
    Source: Employer group HR/benefits administrator provides updated census each month
    Process:
      1. Receive census from each employer group by the 25th of the prior month
      2. Compare to prior month's census (additions; terminations; changes)
      3. Update the master member roster in AdvancedMD
      4. Generate the monthly invoice from the updated roster
      5. Reconcile invoice total to the financial model projection
      6. Send invoice on the 1st
      
    Census discrepancies:
      If employer group census doesn't arrive by the 25th: use prior month count + followup
      If census arrives with errors: correct before invoicing; document discrepancy
      If group disputes their invoice member count: pull census history; resolve before payment

PMPM RATE MANAGEMENT:

  Rate structure:
    Each employer group has a specific PMPM rate in their agreement
    Rates vary by: group size; risk profile; service package; negotiation history
    
  Rate integrity checks:
    □ All billing rates match signed employer agreements (not verbal; not email)
    □ Rate increases take effect on the renewal date, not before
    □ Multi-year agreements: rate escalation schedule matches agreement terms
    □ Any mid-term rate change requires a signed amendment to the agreement
    
  Annual OE renewal (October-January):
    This is the most complex billing period of the year
    Rate renewal process:
      - Send renewal terms by October 1 (target PMPM rate for new plan year)
      - Negotiate with employer groups through October-November
      - Signed renewals: update rate in AdvancedMD by November 30
      - January 1: new PMPM rate effective for all renewed groups
      - For groups that don't renew by December 31: billing continues at prior rate until resolution
      
    New group onboarding at OE:
      Effective date: January 1 (for most employer groups; some mid-year)
      Setup: create group in AdvancedMD; load census; set PMPM rate; send first invoice
      Proration: if effective date is not January 1, prorate for the partial month
      First invoice: send on the 1st after the effective date

EMPLOYER GROUP FINANCIAL PERFORMANCE TRACKING:

  For each employer group:
    Group name: [Name]
    PMPM rate: $[X]
    Member count (current): [N]
    Monthly revenue: $[N × PMPM]
    YTD revenue: $[X]
    Payment history: [On time / Habitually late / Days late average]
    Renewal status: [Renewing / Churning / Negotiating / At risk]
    
  Portfolio analysis:
    Total PMPM revenue: $[X]
    Revenue concentration: any group >20% of total PMPM revenue? (concentration risk)
    Weighted average PMPM: $[total PMPM revenue / total members]
    YOY PMPM rate trend: [increasing / flat / declining]

PMPM REVENUE PROJECTION (for fin-financial-model):

  Quarterly PMPM projection update:
    For each group: current members × current PMPM rate = current run rate
    For new groups: expected start date × projected members × negotiated PMPM
    For at-risk groups: probability-weighted revenue (if 50% chance of churn: 50% of current revenue)
    Projection horizon: 12 months rolling
    Update frequency: monthly (member count changes) + quarterly (rate and churn risk updates)
```

## Output Format

```markdown
# Allevio PMPM Revenue Report — [Month Year]
**Prepared by:** Dr. Lewis | **HIPAA: Member counts only — no individual member data**

---

## Monthly PMPM Summary

| Employer Group | Members | PMPM Rate | Monthly Revenue | Invoice Sent | Collected |
|----------------|---------|-----------|----------------|-------------|---------|
| [Group A] | [N] | $[X] | $[X] | [Date] ✅ | $[X] |
| [Group B] | [N] | $[X] | $[X] | [Date] ✅ | Pending |
| **Total** | **[N]** | **$[Wtd avg]** | **$[X]** | | **$[X]** |

---

## Member Count Changes (vs. Prior Month)

| Group | Prior members | Current members | Change | Reason |
|-------|--------------|----------------|--------|--------|
| [Group A] | [N] | [N] | +[N] | New hires added |
| [Group B] | [N] | [N] | -[N] | Terminations |

---

## Collection Status

| Group | Invoice amount | Days outstanding | Status |
|-------|---------------|-----------------|--------|
| [Group A] | $[X] | [N] days | ✅ Paid |
| [Group B] | $[X] | [N] days | ⏳ Outstanding |

---

## 12-Month PMPM Revenue Projection

| | Current | +3 months | +6 months | +12 months |
|-|---------|---------|---------|---------|
| Groups | [N] | [N] | [N] | [N] |
| Members | [N] | [N] | [N] | [N] |
| Monthly PMPM | $[X] | $[X] | $[X] | $[X] |
| Annual PMPM run rate | $[X] | $[X] | $[X] | $[X] |
```

## Output Contract
- Roster reconciliation before invoice — the employer group invoice is sent only after the roster has been reconciled to the employer group's census; an invoice sent with the wrong member count creates a billing dispute, delays payment, and damages the employer relationship; the reconciliation is a monthly process that Dr. Lewis confirms is completed before the invoice is sent; a 5-member error in a 90-member group at $420 PMPM is a $2,100/month discrepancy — not trivial
- HIPAA: member counts, not member names — all PMPM reporting above the billing operations level uses member counts (aggregate) without individual member names, health information, or any PHI; Dr. Lewis receives "Group A: 87 members, 3 additions, 1 termination"; he does not receive "Group A: new members: John Smith; Mary Jones; terminated: Bob Williams"; individual member data stays in AdvancedMD and the employer group's HR system
- Rate integrity is a financial control — a PMPM rate that doesn't match the signed employer agreement is a billing error; over time, rate errors compound; Dr. Lewis performs an annual PMPM rate audit comparing every active group's billing rate to their signed employer agreement; discrepancies in either direction (billing too high = customer dispute risk; billing too low = revenue leak) are corrected immediately and documented
- HITL required: new employer group onboarding (billing setup) confirmed by Dr. Lewis before first invoice; PMPM rate changes require a signed agreement amendment before the rate changes in AdvancedMD; mid-year rate changes require Allevio CEO and Dr. Lewis approval; any group with >20% of total PMPM revenue is flagged to Matt Mathison as a concentration risk; employer group churn (GRR impact) is reported to Matt Mathison per exec-cfo-oversight; OE renewal terms require Allevio CEO approval before communication to employer groups

## System Dependencies
- **Reads from:** AdvancedMD (member roster; billing records); employer group agreements (SharePoint — PMPM rates; terms; effective dates); fin-ar-manager (PMPM collection tracking); fin-allevio-claim-ratio (claim ratio per group provides the financial context for PMPM renewal negotiations)
- **Writes to:** PMPM revenue reports (SharePoint → Finance → Allevio → PMPM → [YYYY]-[MM]); fin-financial-model (PMPM revenue is the primary revenue driver in Allevio's model); fin-kpi-dashboard (GRR and PMPM rate are dashboard metrics); exec-cfo-oversight (monthly PMPM collection in the financial summary)
- **HITL Required:** New group billing setup requires Dr. Lewis confirmation; rate changes require signed amendment; rate audit annually; concentration >20% flagged to Matt; OE renewal terms approved by Allevio CEO; churn notifications to Matt per GRR tracking

## Test Cases
1. **Golden path:** June PMPM reconciliation; 12 employer groups; 1,022 total members (prior month: 1,008 — net +14: Group A added 18 new hires; Group C terminated 4); weighted avg PMPM: $420; monthly revenue: $429,240 ($420 × 1,022); invoice sent June 1; 10 of 12 groups paid by June 28 (within Net 30 terms); 2 groups outstanding ($34,800 total) at Day 30 — initiating Day 30 follow-up. Projection update: no new groups expected in Q3; 1 new group targeting September 1 (8-week onboarding process underway). Dr. Lewis: "PMPM is clean. June 1 invoices were accurate per reconciled roster. Two outstanding invoices — both historically pay around Day 33; expect resolution by July 5."
2. **Edge case:** Discover that Group D has been billed at $415/PMPM for 4 months instead of the contracted $420/PMPM (rate error in AdvancedMD setup) → Dr. Lewis: "Rate error discovered. Group D's signed agreement specifies $420 PMPM; AdvancedMD was set to $415 (a data entry error at onboarding). Underbilling: 4 months × 45 members × $5 = $900. Action: (1) correct the rate in AdvancedMD immediately; (2) send a credit/rebill for the $900 underpayment with a brief explanation; (3) confirm Group D's agreement to pay the corrected amount. This is our error — I'll communicate it as such: clear, factual, apologetic, and with a corrected invoice. I'm also initiating a full PMPM rate audit for all 12 groups — this may not be the only discrepancy."
3. **Adversarial:** Employer group disputes their member count and refuses to pay until resolved → Dr. Lewis: "I'm not escalating this to collections until the dispute is resolved — that would damage a $430K/year employer relationship over what is likely a census timing issue. Here's what I need to resolve it: (1) I'll pull the census documentation we used to generate this invoice and share the member list we billed (aggregate count + names if the group requests). (2) The employer group should share their HR system's active member count for the same date. (3) We compare. If our count is wrong, we issue a corrected invoice. If our count is right, we walk through the discrepancy together. This gets resolved in one call. Can you give me the contact at the employer group's HR/benefits department?"

## Audit Log
Monthly PMPM reconciliation records retained. Invoice history by employer group retained. Rate audit records retained annually. Census change logs retained. Collection history by group retained. Employer agreement versions retained (supporting the rate audit).

## Deprecation
Retire when Allevio has a dedicated Revenue Cycle Director or Billing Manager who manages the PMPM reconciliation — with Dr. Lewis reviewing the monthly totals and Matt Mathison receiving the PMPM revenue summary as part of the monthly Allevio financial overview.
