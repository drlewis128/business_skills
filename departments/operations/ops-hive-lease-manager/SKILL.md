---
name: ops-hive-lease-manager
description: "Manage HIVE Partners mineral lease portfolio in the Uinta Basin. Use when the user says 'mineral lease', 'mineral leases', 'lease management', 'lease portfolio', 'lease renewal', 'lease expiration', 'lease terms', 'lease review', 'lease audit', 'lease tracker', 'lease status', 'royalty lease', 'oil and gas lease', 'Uinta Basin lease', 'HIVE lease', 'mineral rights', 'landowner lease', 'lease agreement', 'lease obligation', 'lease covenant', 'primary term', 'lease held by production', 'HBP', 'acreage', 'acreage management', 'acreage acquisition', 'acreage inventory', 'lease expiration tracker', 'expiring leases', 'lease acquisition', 'new lease', 'lease negotiation', 'royalty rate', 'lease royalty', 'bonus payment', 'lease bonus', or 'Utah mineral lease'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--lease <lease-id>] [--action <review|renew|audit|acquire|expire|report>] [--focus <expiration|terms|royalty|acreage|all>] [--period <monthly|quarterly|annual>]"
---

# Ops HIVE Lease Manager

Manage HIVE Partners' mineral lease portfolio in the Uinta Basin — tracking lease terms, expiration dates, royalty obligations, and acreage inventory; managing renewals before primary term expiration; and flagging lease risk to the HIVE CEO and Dr. Lewis before leases expire and acreage is lost. Mineral leases are HIVE's primary asset: the right to receive royalties from oil and gas production is only as durable as the lease that grants it; a lease that expires without production (not held by production / not HBP) is a permanent loss of that royalty income; a lease that renews at unfavorable terms reduces HIVE's long-term return to LPs. Dr. Lewis tracks the lease portfolio at the portfolio level — the HIVE CEO and the operations team manage the individual lease relationships, but Dr. Lewis ensures the financial and contractual picture is always current.

## When to Use
- Monthly lease status review
- A lease is within 12 months of primary term expiration
- A new lease is being acquired
- A royalty rate dispute with a landowner
- HIVE capex decisions that involve lease acreage

## Lease Management Framework

```
LEASE PORTFOLIO STRUCTURE:

  LEASE TYPES:
    Producing leases (HBP — Held by Production):
      Active production is occurring on this acreage
      Lease is maintained indefinitely as long as production continues
      Risk: cessation of production → lease expires (operator must maintain)
      
    Non-producing leases (primary term, not yet developed):
      Lease is active but no well has been drilled
      Has a primary term (typically 3-5 years)
      Must drill a well or renew before primary term expires
      This is the highest-risk lease category — needs active management
      
    Expired leases:
      Primary term passed without production or renewal
      Acreage is lost; royalty right extinguished
      If this happens unexpectedly: report to Dr. Lewis immediately

  LEASE CRITICAL DATES:
    Primary term expiration date: the date by which production must begin or lease must be renewed
    Held by Production (HBP) certification date: when the lease converted from primary term to HBP
    Renewal option date: if there's an option to extend (requires action before option expiration)
    Rentals due dates: some leases require annual delay rental payments to maintain

LEASE EXPIRATION MANAGEMENT:

  MONITORING CADENCE:
    Dr. Lewis reviews lease expiration tracker monthly
    Flags: any lease within 12 months of primary term expiration (Yellow watch)
    Flags: any lease within 6 months of primary term expiration (Red — immediate action required)
    
  RENEWAL DECISION (6-12 months before expiration):
    Can the operator commit to drilling before the primary term expires?
    If yes: confirm operator commitment in writing; monitor progress
    If no: evaluate renewal options:
      (a) Negotiate renewal with landowner (new primary term; potentially higher royalty)
      (b) Release the lease (if not worth renewing; acreage not in the development plan)
      (c) Sublease or assign to another operator (monetize the remaining term)
    
  RENEWAL NEGOTIATION:
    Landowner negotiation: HIVE CEO leads with legal support
    Key terms: primary term length; royalty rate; bonus payment
    Market rate bonus (Uinta Basin): approximately $[X]/acre (varies by geology; operator interest)
    Royalty rate: existing rate; market rate for the area; value of production upside
    Matt Mathison: aware of any renewal commitment >$25K
    
  WTI SENSITIVITY ON LEASE DECISIONS:
    Below WTI trigger ($58/bbl for 2+ weeks): pause new lease acquisitions
    Existing lease renewals: still renew strategically (don't lose core acreage)
    Above trigger: evaluate strategic acreage acquisition per fin-hive-capex-tracker

LEASE INVENTORY MANAGEMENT:

  LEASE DATABASE (maintained in HIVE operations; Dr. Lewis has view access):
    Lease ID | Lessor name | Acreage | Township/Range | Status | Royalty rate | Expiration date | Operator
    
  QUARTERLY INVENTORY REPORT:
    Total acreage: [N] acres
    Producing (HBP): [N] acres
    Non-producing (primary term): [N] acres | At risk of expiration: [N] acres
    Average royalty rate: [%]
    Acquisitions this quarter: [N] acres; total cost: $[X]
    Releases/expirations this quarter: [N] acres
    
  ACREAGE CONCENTRATION:
    Uinta Basin is the primary focus
    Any lease concentration >30% with a single operator: flag (operator risk)
    Operator relationship → ops-hive-operator-relations
```

## Output Format

```markdown
# HIVE Lease Portfolio Report — [Month Year]
**Prepared by:** HIVE Operations | **Reviewed by:** Dr. Lewis | **For:** HIVE CEO + Matt Mathison

---

## Portfolio Overview

| Status | Acreage | Avg royalty | Notes |
|--------|---------|------------|-------|
| Producing (HBP) | [N] acres | [%] | Secure — production ongoing |
| Non-producing (primary term) | [N] acres | [%] | [N] acres at risk (<12 mo) |

---

## Expiration Watch List

| Lease ID | Lessor | Acres | Expiration | Status | Action |
|----------|--------|-------|-----------|--------|--------|
| [ID] | [Name] | [N] | [Date] | 🟡 9 months | Operator committed to drill Q3 |
| [ID] | [Name] | [N] | [Date] | 🔴 4 months | Renewal negotiation in progress |

---

## Acquisitions / Releases This Quarter

| Action | Lessor | Acres | Cost / Value | Status |
|--------|--------|-------|-------------|--------|
| Acquisition | [Name] | [N] | $[X] | Closed |
| Release | [Name] | [N] | $0 (not strategic) | Released |
```

## Output Contract
- No lease expires without a documented decision — an expired lease is a permanent loss of a real asset; the only acceptable way a lease expires under the MBL governance structure is a deliberate decision: "We evaluated this lease, the development economics don't support renewal, and we released it intentionally"; an accidental lease expiration (Dr. Lewis didn't know it was expiring; the HIVE CEO didn't track the date; the operator let it lapse without notification) is a governance failure; the lease expiration tracker is maintained monthly; the 12-month and 6-month flags are non-negotiable early warning gates
- Renewal decisions are made with financial analysis, not just land management instinct — every non-producing lease renewal involves a basic investment question: "Does the expected royalty income from this acreage, discounted for the probability and timing of development, justify the renewal cost?"; Dr. Lewis ensures this analysis exists before a HIVE CEO signs a renewal; a renewal decision without financial analysis is a capital allocation decision made without the information needed to evaluate it
- WTI trigger affects new acquisitions, not renewals of core acreage — when WTI drops below $58/bbl, HIVE pauses new well development and new acreage acquisition; but existing lease renewals for core acreage are still evaluated case-by-case; losing a productive lease because WTI was below trigger for 8 weeks would be a worse outcome than the renewal cost; Dr. Lewis distinguishes: "new acquisition" (paused below trigger) vs. "renewal of existing strategic acreage" (evaluated on its own merits regardless of trigger)
- HITL required: any lease expiration that is not explicitly anticipated in the monthly report → Dr. Lewis and HIVE CEO notification within 24 hours of discovery; renewal commitments with bonus payments >$25K → Matt Mathison awareness; new lease acquisitions >$50K → Matt Mathison approval; lease acreage involving any landowner dispute or legal claim → Dr. Lewis + legal immediately; decisions to release strategic acreage (>50 acres in a producing formation) → Matt Mathison explicit awareness

## System Dependencies
- **Reads from:** HIVE lease database (HIVE operations); Covercy (which leases are producing / generating royalties); fin-hive-royalty-accounting (royalty income per lease); fin-hive-capex-tracker (development plan — which non-producing leases are in the drilling queue); ops-hive-operator-relations (operator commitment to drill — confirmation before acting on development-based lease maintenance)
- **Writes to:** Lease expiration tracker (SharePoint → HIVE → Operations → Leases); HIVE CEO briefings (expiration flags; renewal decisions); Matt Mathison notifications (bonus >$25K; acquisitions >$50K; unexpected expirations); ops-action-tracker (renewal negotiation actions); fin-compliance-calendar (lease expiration dates → calendar alerts)
- **HITL Required:** Unexpected lease expiration → Dr. Lewis + HIVE CEO within 24 hours; bonus >$25K → Matt awareness; acquisitions >$50K → Matt approval; legal disputes → Dr. Lewis + legal immediately; strategic acreage release (>50 acres producing) → Matt explicit awareness

## Test Cases
1. **Golden path:** Monthly lease review. 14 producing HBP leases — all secure. 3 non-producing primary term leases. Lease #HIVE-L-047: 80 acres; expiration 14 months out — Yellow. Operator has confirmed drilling plan for Q3 (within primary term). Dr. Lewis: "Confirmed in writing from operator — Lease #047 will be drilled Q3, 3 months before expiration. Monitoring." Lease #HIVE-L-062: 40 acres; expiration 5 months out — Red. Operator has not confirmed drilling and does not have this well in their near-term plan. Dr. Lewis to HIVE CEO: "Lease #062 expires in 5 months and the operator is not planning to drill. We need to make a decision: (a) negotiate renewal with the landowner now (estimated cost: 40 acres × $[X]/acre bonus); (b) release the lease (these 40 acres are in a lower-priority formation). I need your direction within 2 weeks — negotiation takes time."
2. **Edge case:** HIVE discovers a lease expiration that was not on the tracker — the landowner signed a new lease with a different operator → Dr. Lewis: "Untracked lease expiration found. Lease [ID] on [N] acres expired [X] months ago — not on our watch list. The landowner has signed with [Operator] at a [%] royalty rate. This is a permanent loss of [N] acres. Immediate actions: (1) HIVE CEO and I are doing a root cause — how did this lease fall off the tracker? Was it missing from the database or was the expiration date wrong? (2) I'm reviewing the remaining non-producing lease list for any similar gaps. Matt: I'm flagging this — it's a loss of acreage that should not have happened. I'll have a root cause and a corrective action plan within 48 hours."
3. **Adversarial:** A landowner wants to renegotiate the royalty rate on an HBP lease (currently producing) as a condition of granting a surface use agreement needed for a new well → Dr. Lewis: "This is a pressure negotiation — the landowner knows we need the surface use agreement. The risk: if we increase the royalty rate on the producing lease, it affects all future royalty income from that acreage. Let me model it: current royalty rate [%]; requested rate [%]; production [BOPD]; WTI [$/bbl]; rate increase cost per year = $[X]. For the surface use agreement needed for the new well, the economics of the well need to absorb the royalty increase. I'll model the new well economics with both rates. Then I'll work with the HIVE CEO and legal to determine: (1) is there a surface use agreement with a one-time payment that avoids the rate change? (2) if we must change the rate, is the new well worth it at the higher royalty? Matt: flagging — any royalty rate change on a producing lease needs your awareness."

## Audit Log
Lease database version history retained. Expiration watch list records retained (monthly). Renewal decisions retained (with financial analysis and authorization). Acquisition records retained (with Matt approval for >$50K). Release records retained (with rationale). Unexpected expiration records retained. Legal dispute records retained.

## Deprecation
The lease management framework is maintained as long as HIVE has active mineral interests. Update the WTI trigger level if Matt Mathison adjusts the economic threshold. Review the acreage concentration threshold annually.
