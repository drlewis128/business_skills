---
name: legal-closing-checklist-manager
description: "Manage the M&A transaction closing process and closing checklist. Use when the user says 'closing', 'transaction closing', 'deal closing', 'close the deal', 'closing conditions', 'closing checklist', 'pre-closing', 'closing deliverables', 'escrow closing', 'closing funds flow', 'wire at closing', 'closing documents', 'signing and closing', 'simultaneous sign and close', 'closing date', 'conditions precedent', 'closing agenda', 'funds flow memo', 'closing binder', or 'M&A closing'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--side <buy|sell>] [--action <setup|track|execute|confirm>] [--target-close-date <date>]"
---

# Closing Checklist Manager

Manage the M&A transaction closing process for MBL portfolio company transactions — tracking all closing conditions, required deliverables, third-party consents, and the funds flow at closing. A closing failure is one of the most expensive events in an M&A transaction: legal fees, opportunity cost, relationship damage, and potential price renegotiation. Most closing failures are preventable through rigorous checklist management. Dr. Lewis manages the closing checklist and coordinates with M&A counsel, the portfolio company CEO, and Matt Mathison to ensure all conditions are satisfied before the closing date.

## When to Use
- An M&A transaction is signed (definitive agreement in place) and moving toward closing
- A specific closing condition needs to be tracked or resolved
- Matt Mathison needs a status update on the transaction closing
- The target closing date is approaching and conditions are still open

## Closing Checklist Framework

```
CLOSING CHECKLIST CATEGORIES:

  PRE-CLOSING ACTIONS (Seller — if MBL portfolio company is being sold):
    Corporate:
      □ Board/manager consent authorizing the transaction
      □ Member/shareholder approval (if required by operating agreement)
      □ Certificates of good standing (all states) — obtain fresh within 30 days of closing
      □ Officer's certificate (confirming reps and warranties are true at closing)
      □ Company secretary certificate (confirming entity status, incumbency)
    Consents and Approvals:
      □ Third-party contract consents (change-of-control provisions in material contracts)
      □ Government approvals (DOGM notification for HIVE; healthcare licensing for Allevio if required)
      □ Lender consent (if company has outstanding debt — must release liens on closing)
      □ Landlord consent (if lease includes change-of-control provision)
    Financial:
      □ Closing balance sheet prepared and reviewed
      □ Estimated NWC calculated and agreed with buyer
      □ Payoff letters for all existing debt (exact payoff amounts; wire instructions)
      □ Funds flow memo agreed and confirmed
    Employment:
      □ Key employee agreements executed (if required by buyer as closing condition)
      □ Non-compete agreements with founders/key employees (if separate from purchase agreement)
      
  PRE-CLOSING ACTIONS (Buyer — if MBL is acquiring):
    Financing:
      □ Financing confirmed and funded (if debt financing is part of the structure)
      □ Wire transfer authorized and instructions confirmed with seller's counsel
    Legal:
      □ UCC search cleared (confirm no undisclosed liens on seller's assets)
      □ IP ownership confirmed (all IP registered in the company's name; no third-party claims)
      □ Material contracts reviewed — assignability confirmed
      □ RWI policy bound (if applicable)
      □ Buyer's board/manager consent approving the transaction
    Operational:
      □ Integration plan ready (D+1 plan — what happens on day one post-close)
      □ Systems and access plan (how do employees and vendors know about the transition?)
      □ Banking: New bank accounts or add signatory authority (if acquiring the entity)
      
  CLOSING DAY EXECUTION:
    Sequence of events:
      1. Confirm all conditions satisfied (both parties)
      2. Confirm wire transfer instructions (phone verification for all wires — no exceptions)
      3. Seller delivers documents (certificates, executed consents, IP assignments)
      4. Buyer delivers closing consideration (wire transfer to seller's account)
      5. Parties confirm wire receipt
      6. Escrow agent (if applicable) distributes funds per funds flow memo
      7. Transaction is declared closed
      8. Post-close notifications sent (employees, customers, vendors)
      
  FUNDS FLOW MEMO:
    Documents every dollar movement at closing
    From buyer's wire:
      → Seller's bank account (equity consideration)
      → Lender payoff (clear existing debt)
      → Escrow account (RWI holdback; indemnification escrow)
      → Transaction expense payments (if buyer pays seller's counsel from proceeds)
      → Seller's counsel wire (if seller pays counsel from proceeds)
    Example: $9.8M EV; $950K outstanding debt; $200K escrow; $350K seller counsel/expense
      Buyer wires: $9.8M total
        → Lender: $950K (payoff letter)
        → Escrow agent: $200K
        → Seller's counsel: $350K (transaction expenses)
        → Seller: $8.3M (net proceeds to seller)
    NOTE: Wire instructions must be confirmed by voice call — wire fraud is prevalent in M&A closings
      EVERY wire instruction must be verbally confirmed with the receiving bank before execution

  POST-CLOSING OBLIGATIONS:
    NWC true-up (45-90 days post-close): Deliver closing balance sheet; calculate adjustment
    Escrow release (at end of survival period): Confirm no pending claims; release escrow to seller
    Earn-out tracking (monthly/quarterly): Measure performance against earn-out targets
    Post-close integration (see legal-post-close-integration-legal)
    Employee notifications: Filed with applicable state agencies
```

## Output Format

```markdown
# Closing Checklist — [Deal Name]
**Transaction:** [Entity] [acquired by / acquiring] [Counterparty]
**Signing date:** [Date] | **Target close date:** [Date] | **Side:** [Buyer / Seller]
**Managed by:** Dr. Lewis | **M&A counsel:** [Firm] | **Last updated:** [Date]

---

## Closing Condition Status

| Condition | Owner | Status | Due | Notes |
|-----------|-------|--------|-----|-------|
| Board consent | Dr. Lewis | ✅ Complete | [Date] | Written consent executed |
| Good standing certificates | M&A counsel | ✅ Complete | [Date] | AZ + UT obtained |
| Marshall Medical consent | CEO | 🟡 In progress | [Date-3 days] | Sent; awaiting signature |
| Payoff letter — [Bank] | Dr. Lewis | ✅ Complete | [Date] | Confirmed wire instructions |
| Funds flow memo | M&A counsel | ✅ Agreed | [Date] | Both parties confirmed |
| Key employee agreements | CEO | 🔴 Open | [Date] | [Name] agreement not yet signed |
| RWI policy bound | M&A counsel | ✅ Bound | [Date] | Policy confirmed |
| Wire authorization | Matt Mathison | 🟡 Pending | Closing day | Will authorize morning of close |

---

## Closing Day Timeline

| Time | Action | Owner |
|------|--------|-------|
| 8:00 AM | Confirm all conditions satisfied | Dr. Lewis + M&A counsel |
| 9:00 AM | Confirm wire instructions (voice verification) | Matt Mathison + [Buyer CFO] |
| 10:00 AM | Wire execution authorized | Matt Mathison |
| 10:30 AM | Wire receipt confirmed | Dr. Lewis |
| 11:00 AM | Transaction declared closed | M&A counsel |
| 11:30 AM | Employee notification delivered | CEO |

---

## Post-Close Calendar

| Action | Date | Owner |
|--------|------|-------|
| NWC closing balance sheet delivery | 30 days post-close | Dr. Lewis |
| NWC true-up calculation | 45-60 days post-close | Dr. Lewis + buyer's accountant |
| Escrow release (if no claims) | [Survival period end] | M&A counsel |
| Earn-out Q1 measurement | [First quarter-end] | Dr. Lewis |
```

## Output Contract
- Wire verification is mandatory — wire fraud targeting M&A closings is one of the most common cyber fraud schemes; attackers intercept or spoof email communications to redirect wire instructions to fraudulent accounts; Dr. Lewis requires voice verification of every wire instruction at closing — no exceptions; the voice call must be to a phone number independently obtained (not from the email containing the wire instructions); this applies to all wires at closing regardless of amount; a deal that fails because of a $100 phone call prevented wire fraud is a win
- Every condition must be confirmed before closing — a closing that proceeds with an unresolved condition is a breach of the purchase agreement; Dr. Lewis reviews the closing checklist 72 hours before the target closing date: every item must be either ✅ Complete or have a confirmed path to completion by closing day; any item that is "pending" without a clear resolution path triggers escalation to M&A counsel and Matt Mathison; if a closing condition cannot be satisfied, the closing must be delayed — attempting to close with an unsatisfied condition creates risk for both parties
- Post-close obligations start immediately — the NWC true-up process begins on the day of closing; Dr. Lewis starts the closing balance sheet preparation immediately (not 30 days after closing); the purchase agreement provides a specific number of days (typically 30-45) for the seller to deliver the closing balance sheet and NWC calculation; missing this deadline gives the buyer leverage; Dr. Lewis manages this deadline as aggressively as the pre-closing conditions
- HITL required: Dr. Lewis manages the checklist and coordinates; M&A counsel executes the legal documents and confirms conditions; Matt Mathison authorizes all wires (all closing wires are above the $10K threshold — require Matt Mathison + Dr. Lewis + phone verification per the payment approval matrix); CEO executes required company-level documents; Dr. Lewis does not authorize wire transfers at closing — Matt Mathison authorizes; Dr. Lewis confirms instructions and facilitates

## System Dependencies
- **Reads from:** Purchase agreement (closing conditions and obligations); vendor contracts (for consent identification); entity good standing status; outstanding debt payoff letters; funds flow memo (agreed with both parties' counsel); RWI policy (if applicable); earn-out provisions (for post-close calendar); employment agreements for key personnel retention
- **Writes to:** Closing checklist (SharePoint/Legal/MBL/MA/[Deal]_ClosingChecklist.xlsx); funds flow memo (SharePoint/Legal/MBL/MA/[Deal]_FundsFlow.pdf); post-close obligations calendar; NWC closing balance sheet; escrow release notifications; Matt Mathison closing status memos (daily in the week before closing)
- **HITL Required:** Dr. Lewis manages; M&A counsel confirms all legal conditions satisfied; Matt Mathison authorizes all closing wires; CEO executes company-level documents (good standing certs, officer certificates); all wires require voice verification + Matt Mathison + Dr. Lewis authorization; Dr. Lewis does not authorize wires unilaterally; no wire is sent based on email instructions alone (voice verification required)

## Test Cases
1. **Golden path:** HIVE sale — target closing date confirmed; 5-day countdown → Day -5: Dr. Lewis reviews closing checklist; 12 items total; 9 ✅; 3 open: Covercy (software) consent pending; payoff letter from First Western Bank outstanding; employee key hire agreement needs signature; Day -3: Covercy consent received ✅; bank payoff letter received ✅; key hire agreement signed ✅; all conditions satisfied; funds flow memo agreed ($8.2M to seller; $950K lender payoff; $200K escrow); Day -1: Confirm funds flow with both counsel; Day 0: 8 AM — all conditions confirmed; 9 AM — Matt Mathison calls buyer's CFO (voice) to confirm wire instructions against independently-obtained bank info; instructions match; 10 AM — wire authorized and executed; 10:35 AM — seller's counsel confirms receipt; transaction closed; all parties notified; post-close calendar set
2. **Edge case:** 48 hours before closing, M&A counsel discovers that a material supplier contract for HIVE requires the supplier's consent to the change of control — and the consent has not been requested → Dr. Lewis escalates immediately: "We have a closing condition problem. Section 6.1(d) of the SPA requires all material third-party consents as a condition to closing. The supplier contract was inadvertently missed in the consent process. Options: (1) Contact the supplier today and request emergency consent; (2) Negotiate a closing escrow or indemnity with the buyer in case the supplier claims a breach of the change-of-control provision; (3) Request a 5-day closing extension while consent is obtained. I recommend option 3 first — request the extension — while simultaneously pursuing option 1. The buyer should agree to the extension if we're acting in good faith. Matt Mathison must decide." Buyer agrees to 5-day extension; consent obtained in 3 days; closing proceeds
3. **Adversarial:** On closing day, the buyer's counsel sends revised wire instructions by email — different from the instructions agreed in the funds flow memo → Dr. Lewis stops: "Do not send any wire based on revised email instructions. This is the exact pattern of wire fraud at M&A closings — attackers intercept communications and redirect wires to fraudulent accounts. Call the buyer's counsel's main office number (obtained independently — not from the email) and verbally confirm: (a) did they send revised instructions? (b) confirm the bank name, last 4 of account number, and ABA routing number by phone. If the instructions check out: then we can update the funds flow and proceed. If the call reveals they did NOT send revised instructions: we have an active fraud attempt; do not close; notify the buyer and M&A counsel immediately; preserve the fraudulent email." Phone call made; buyer's counsel did not send revised instructions — confirmed active fraud attempt; FBI and M&A counsel notified; closing paused; original wire instructions confirmed; closing proceeds the following day

## Audit Log
All closing checklists retained permanently. Executed closing documents retained permanently (closing binder). Wire confirmation records retained permanently (including voice verification records — document the call: who called; who answered; what was confirmed; what time). Funds flow memo retained permanently. Post-close obligation completion records retained. Escrow release records retained permanently. Any fraud attempt records retained permanently.

## Deprecation
Retire when MBL Partners has a dedicated M&A team with a transaction management function — with Dr. Lewis managing the financial portions of the closing checklist and M&A counsel managing the legal conditions.
