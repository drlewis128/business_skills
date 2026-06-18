---
name: legal-escrow-holdback-tracker
description: "Track M&A escrow accounts, holdbacks, and earn-out obligations for MBL portfolio companies. Use when the user says 'escrow', 'holdback', 'earn-out', 'earnout', 'escrow balance', 'escrow release', 'escrow account', 'indemnification escrow', 'escrow claim', 'holdback release', 'earnout calculation', 'earnout tracking', 'earn-out milestone', 'earn-out payment', 'performance-based consideration', 'contingent consideration', 'deferred consideration', 'post-close payment', 'survival period', or 'escrow agent'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--deal <deal name>] [--entity <company name>] [--side <buy|sell>] [--action <track|release|claim|calculate>]"
---

# Escrow Holdback Tracker

Track and manage M&A escrow accounts, holdback amounts, and earn-out obligations for MBL portfolio company transactions. Escrow and earn-out amounts represent real money that is either owed to the seller (escrow release; earn-out payment) or at risk from indemnification claims (escrow hold). Dr. Lewis tracks every escrow account and earn-out obligation with the same discipline as an accounts receivable balance — because that's what it is: money owed to MBL or a portfolio company.

## When to Use
- An M&A transaction has closed with an escrow or holdback amount
- An earn-out provision is active and requires tracking
- An indemnification claim is made against the escrow
- An escrow release date is approaching
- Monitoring whether earn-out milestones are being achieved

## Escrow and Earn-Out Tracking Framework

```
ESCROW MECHANICS:

  Types of M&A escrow:
    Indemnification escrow:
      Purpose: Secures the seller's indemnification obligations (buyer's protection against rep breaches)
      Amount: Typically 10-15% of EV without RWI; 1-3% of EV with RWI (fundamental reps only)
      Managed by: Escrow agent (neutral third party — typically a bank or title company)
      Release conditions:
        At end of the survival period (typically 18-24 months post-close): Released to seller if no pending claims
        If pending claims: Escrow retained in the disputed amount; balance released to seller
      Governing document: Escrow Agreement (separate from the SPA; signed at closing)
      
    Holdback amounts:
      May be withheld at closing by the buyer (not held by escrow agent) — simpler structure
      Common for smaller deals where escrow agent fees are not justified
      Risk: Buyer controls the holdback; seller's recovery depends on buyer's good faith

ESCROW CLAIM PROCESS:
  Who can make a claim: The buyer (or its designated successor) if a breach of a rep is discovered
  Notice requirements: Buyer must send a written claim notice to the escrow agent and seller
    Notice must include: Description of the claimed breach; estimated amount of losses
    Notice deadline: Must be sent before the end of the survival period (for operational reps: 18-24 months)
  Dispute resolution:
    If seller objects: Written dispute within 30 days of claim notice
    Disputed amount: Held in escrow until resolved (by mutual agreement or neutral accountant/arbitration)
    Undisputed amount: Released to buyer (or retained in escrow per escrow agreement terms)
  Resolution:
    Mutual agreement: Parties agree on the claim amount and payment
    Arbitration: If no agreement, the escrow agreement specifies a dispute resolution mechanism
    Court order: In some cases, court involvement is required to release disputed escrow

EARN-OUT MECHANICS:

  Earn-out = contingent consideration paid after closing if performance milestones are achieved
  
  Common earn-out structures:
    Revenue-based: Pay $[X] if company achieves $[Y] revenue in year [1/2/3]
    EBITDA-based: Pay $[X] if company achieves $[Y] EBITDA
    Milestone-based (Allevio): Pay $[X] if member count reaches [Y] or contract count reaches [Z]
    
  Earn-out tracking requirements:
    Track the metric exactly as defined in the agreement — NOT your internal reporting metric
    GAAP vs. management accounting: The agreement specifies which methodology; use that one
    Monthly tracking: Monitor progress throughout the earn-out period, not just at the measurement date
    
  Earn-out payment calculation (seller perspective — we're tracking whether we'll receive):
    Period-end calculation: Compare actual metric to the target
    Documentation: Prepare a written earn-out calculation with supporting data
    Delivery: Send to the buyer per the schedule in the purchase agreement
    Dispute: If the buyer disputes the calculation, follow the purchase agreement's dispute process
    
  EARN-OUT RISKS TO MONITOR (if selling and buyer is operating the business):
    Buyer covenant: Buyer must operate the business in a manner consistent with achieving earn-out targets
      (without this covenant, the buyer can manage the business to avoid paying the earn-out)
    Revenue recognition: Buyer may accelerate or defer revenue to affect the earn-out metric
    EBITDA manipulation: Buyer may allocate overhead costs to reduce EBITDA
    Information rights: Seller must have access to the business's financial records to verify the calculation
    Dr. Lewis reviews the earn-out calculation from the buyer before agreeing to any amount

ESCROW RELEASE PROCESS:
  At the survival period expiration (18-24 months post-close):
    1. Dr. Lewis confirms no pending claims are outstanding
    2. Dr. Lewis prepares a joint release instruction (signed by buyer and seller)
    3. Joint release instruction delivered to escrow agent
    4. Escrow agent releases funds to seller's account
    5. Dr. Lewis confirms receipt and updates the deal financial model
  Timeline: Escrow release should happen within 5-10 business days of the survival period expiration
```

## Output Format

```markdown
# Escrow / Earn-Out Tracker — [Deal Name]
**Entities:** [Seller] / [Buyer] | **Close date:** [Date] | **Side:** [Buyer / Seller]
**Managed by:** Dr. Lewis | **Last updated:** [Date]

---

## Escrow Status

| Item | Amount | Escrow Agent | Release Date | Status |
|------|--------|-------------|-------------|--------|
| Indemnification escrow | $[X]K | [Bank] | [Date] | Active — no pending claims |
| RWI escrow (fundamental reps) | $[X]K | [Bank] | [Date] | Active |
| **Total in escrow** | **$[X]K** | | | |

---

## Pending Escrow Claims

| Claim | Amount | Filed | Status |
|-------|--------|-------|--------|
| [No pending claims] / [Claim description] | $[X]K | [Date] | Disputed / Resolved |

---

## Earn-Out Tracker

| Period | Metric | Target | Actual | On Track? | Payment |
|--------|--------|--------|--------|---------|---------|
| 2027 Q1 | Revenue | $[X]K | $[X]K | ✅ / ⚠️ / ❌ | $[X]K (if at/above target) |
| 2027 Q2 | Revenue | $[X]K | TBD | — | — |
| 2027 Full Year | Revenue | $[X]M | TBD | — | $[X]K |

**Estimated earn-out payment (current trajectory):** $[X]K
**Maximum earn-out:** $[X]K

---

## Upcoming Deadlines

| Deadline | Date | Action | Owner |
|---------|------|--------|-------|
| Survival period expires — escrow release | [Date] | Prepare joint release instruction | Dr. Lewis |
| Earn-out Year 1 calculation due | [Date] | Prepare earn-out calculation | Dr. Lewis |
| Survival period claim window closes | [Date] | Confirm no additional claims | Dr. Lewis + M&A counsel |
```

## Output Contract
- The escrow release deadline does not auto-execute — an escrow held by an escrow agent will not be automatically released at the end of the survival period; the escrow agent requires a written joint instruction (signed by both buyer and seller) before releasing any funds; if the buyer delays signing the joint release instruction (intentional or not), the seller's money sits in escrow indefinitely; Dr. Lewis calendars the escrow release date 60 days in advance, sends the buyer's counsel a request for the joint release instruction 30 days before the date, and escalates to M&A counsel if the buyer does not cooperate within 10 business days
- Earn-out tracking must follow the agreement's definition exactly — internal revenue reporting at Column6 may use management accounting; the earn-out agreement specifies GAAP or a specific definition; if Dr. Lewis tracks the wrong metric, the earn-out calculation can be wrong by hundreds of thousands of dollars; Dr. Lewis reads the earn-out definition in the purchase agreement and configures the tracking system to match that exact definition before the first measurement period ends; a discrepancy discovered at year-end is harder to reconcile than one caught in Q1
- Claim notices have hard deadlines — a claim against the escrow must be filed before the survival period expires; if the buyer (from MBL's perspective as seller) does not file a claim before the survival period ends, they cannot make an indemnification claim; Dr. Lewis monitors for any evidence of potential claims from the buyer's counsel throughout the survival period; if the survival period expires with no claims, the escrow is released in full; if a claim is filed in the final days of the survival period, Dr. Lewis immediately assesses the claim and engages M&A counsel
- HITL required: Dr. Lewis tracks and calculates; M&A counsel advises on any escrow claim dispute or earn-out dispute; Matt Mathison approves any escrow settlement (claim amounts >$25K) and authorizes joint release instructions; Dr. Lewis does not release escrow funds without Matt Mathison's authorization and M&A counsel's confirmation; Dr. Lewis does not agree to an earn-out calculation submitted by the buyer without verifying it against the company's financial records

## System Dependencies
- **Reads from:** Purchase agreement (escrow amount; survival period; earn-out terms; dispute resolution); escrow agreement (escrow agent instructions; release conditions; claim notice requirements); earn-out metrics (QuickBooks — revenue/EBITDA data; or operating metrics for milestone-based earn-outs); RWI policy (if applicable — claim process under RWI vs. escrow); M&A counsel contacts (for claim or dispute escalation); legal-post-close-integration-legal (integration status affects earn-out)
- **Writes to:** Escrow/earn-out tracker (SharePoint/Legal/MBL/MA/[Deal]_EscrowEarnout.xlsx); earn-out calculation (delivered to buyer per purchase agreement schedule); joint release instruction (prepared for Matt Mathison signature); claim notice response (if buyer files a claim — prepared by M&A counsel); Matt Mathison deal financial summary (quarterly — how much is in escrow; earn-out trajectory)
- **HITL Required:** Dr. Lewis tracks and calculates; M&A counsel for any claim or dispute; Matt Mathison approves all joint release instructions (he signs); Matt Mathison approves any settlement of an escrow claim >$25K; Dr. Lewis does not execute a joint release instruction without Matt Mathison's signature; Dr. Lewis does not agree to any earn-out calculation without verifying the underlying data; escrow agent only releases funds based on a joint written instruction (not Dr. Lewis's unilateral request)

## Test Cases
1. **Golden path:** HIVE sale with $200K indemnification escrow — 18-month survival period expires → Day -60: Dr. Lewis sends buyer's counsel a proactive email: "HIVE SPA survival period expires June 15, 2028. Please let me know if you are aware of any pending or anticipated claims before that date. If none, I'll prepare the joint release instruction for $200,000 to be released to the seller." Day -30: No response from buyer's counsel; Dr. Lewis sends the draft joint release instruction. Day -10: Buyer's counsel confirms no pending claims; signs the joint release instruction. Day 0: Joint release instruction delivered to escrow agent. Day +5: $200,000 released to HIVE seller account. Matt Mathison notified: "HIVE indemnification escrow of $200,000 released — no claims filed during the survival period." Complete; clean exit
2. **Edge case:** Allevio sale earn-out — year 1 revenue target: $2.4M; actual year 1 revenue per buyer's calculation: $2.1M (91% of target; earn-out schedule provides $500K at 100% target; $0 below 95%) — Dr. Lewis suspects buyer has been deferring revenue recognition → Dr. Lewis pulls Allevio's own financial records: Year 1 revenue by Dr. Lewis's calculation: $2.45M (using the agreement's definition — cash-basis revenue excluding intercompany); discrepancy is $350K; Dr. Lewis reviews the buyer's calculation with M&A counsel: buyer included a $350K month-13 invoice in year 2 (deferred one month; shifted $350K out of year 1 to year 2); per the purchase agreement's earn-out definition: "revenue is recognized when earned in accordance with Allevio's historical practice" — the deferred invoice was earned in month 12; should be included in year 1; Dr. Lewis disputes the calculation; neutral accountant confirms Dr. Lewis's position; earn-out Year 1 payment of $500K (MBL's position prevails)
3. **Adversarial:** Buyer files an escrow claim in the final week of the 18-month survival period for $185K — claims that Allevio's HIPAA disclosure schedule was materially inaccurate (a vendor was processing PHI without a BAA) → Dr. Lewis: "This claim was filed 6 days before the survival period expired. The timing does not affect its validity — claims filed before the survival period expires are timely. Immediate response: (1) Litigation hold; (2) M&A counsel engaged today; (3) Assess the substance: Was the vendor processing PHI without a BAA? Was this disclosed in the disclosure schedules? If disclosed: not a breach; if not disclosed and if there is actual harm (the vendor's conduct caused a HIPAA violation resulting in loss): potential legitimate claim. Review the disclosure schedule. If there is no BAA gap noted: what is the buyer's claimed damages? A technical gap (missing BAA) does not automatically create $185K in losses; the buyer must demonstrate actual losses. M&A counsel to respond to the claim notice within the 30-day window. Dr. Lewis provides documentation that the BAA was initiated at the time the vendor was engaged and in process at the closing date — disclosed in the schedules." Claim disputed; settled for $25K after M&A counsel confirms the disclosure schedule adequately disclosed the gap

## Audit Log
All escrow agreements retained permanently. Escrow balance records retained by quarter. All claim notices retained (filed or received) permanently. Joint release instructions retained permanently. Earn-out calculations retained by period (for duration of earn-out + 5 years). Earn-out dispute records retained permanently. Matt Mathison escrow release authorizations retained. Settlement records retained permanently.

## Deprecation
Retire when MBL Partners has a dedicated deal finance function that manages all post-close financial obligations — with Dr. Lewis reviewing claim disputes and Matt Mathison authorizing escrow releases.
