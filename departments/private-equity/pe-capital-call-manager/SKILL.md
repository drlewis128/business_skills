---
name: pe-capital-call-manager
description: "Manage LP capital calls for MBL Partners funds. Use when the user says 'capital call', 'call capital', 'draw capital', 'LP capital call', 'capital notice', 'call notice', 'drawdown', 'LP drawdown', 'call LP capital', 'capital contribution', 'LP contribution', 'contribution notice', 'call for capital', 'fund capital call', 'capital call notice', 'send a capital call', 'issue capital call', 'capital call timing', 'capital call amount', 'how much to call', 'capital call approval', 'capital call coordination', 'fund draw', or 'capital deployment notice'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--fund <fund-name>] [--amount <dollar-amount>] [--purpose <investment|fees|expenses>] [--action <draft|review|issue|track>] [--lp <specific-lp|all>]"
---

# PE Capital Call Manager

Manage LP capital calls for MBL Partners funds — calculating the call amount, preparing the legal notice per LPA requirements, coordinating LP banking details, tracking receipt of capital, and maintaining the LP capital account ledger. Capital calls are a fiduciary and legal event: the LPA governs when calls are permitted, how much notice must be given, and what the capital must be used for; errors in a capital call — wrong amounts, wrong notice period, wrong purpose, wrong banking details — create legal exposure and LP trust damage; every capital call is approved by Matt Mathison before it is issued; every dollar called is deployed for the purpose stated in the notice. Dr. Lewis manages the mechanics; Matt Mathison approves the call and the deployment decision.

## When to Use
- A new investment requires LP capital deployment
- Management fees or fund expenses require a capital call
- An LP has not funded a prior call and escalation is needed
- The capital call tracker needs to be updated

## Capital Call Framework

```
CAPITAL CALL AUTHORIZATION (per LPA — verify per fund):

  PERMITTED PURPOSES:
    New portfolio company investments
    Follow-on investments in existing portfolio companies
    Management fees (per the management fee waterfall in LPA)
    Fund expenses (legal, audit, insurance, organizational)
    Reserves (up to permitted reserve amount per LPA)
    
  NOT PERMITTED WITHOUT BOARD APPROVAL:
    Capital calls that exceed permitted use under LPA
    Recycling of returned capital (permitted if LPA allows, not assumed)
    
  NOTICE REQUIREMENTS (minimum — verify exact terms per fund LPA):
    Standard capital call: 10 business days minimum notice
    Emergency capital call: 5 business days (with board approval)
    Never issue a capital call without Matt Mathison's explicit approval
    
  CAPITAL CALL SIZE:
    Cannot exceed remaining unfunded commitments per LP
    Total fund capital called cannot exceed committed capital + recycling (if permitted)

CAPITAL CALL PROCESS:

  STEP 1 — INVESTMENT DECISION (inputs from Matt Mathison):
    Investment amount approved: $[X]
    Funding date target: [Date]
    Purpose: [Specific investment or fee/expense description]
    
  STEP 2 — CALCULATE CALL AMOUNT:
    Total investment: $[X]
    Plus: fund expenses to cover this period: $[X]
    Minus: fund cash on hand (uncommitted): $[X]
    Capital to call: $[X]
    
    Per-LP allocation: LP's pro-rata share of capital call = (LP committed capital / total fund committed capital) × call amount
    
  STEP 3 — DRAFT CAPITAL CALL NOTICE:
    Required elements (minimum):
      Date of notice
      Due date (must meet LPA notice requirement)
      Amount due from each LP
      Purpose of the call (specific and accurate — cannot be changed after issuance)
      Bank account instructions (verified immediately before sending)
      Point of contact for questions
    
  STEP 4 — LEGAL REVIEW (if any non-standard elements):
    Non-standard call (emergency; recycling; unusual purpose) → fund counsel review before issuance
    
  STEP 5 — MATT MATHISON APPROVAL:
    Matt reviews: amount; purpose; LP allocations; bank instructions
    Matt approves: in writing (email confirmation is sufficient)
    Never send before Matt confirms
    
  STEP 6 — ISSUE NOTICE:
    Email to all LPs simultaneously
    Include signed notice (PDF) and bank instructions
    Log issuance date and delivery confirmation
    
  STEP 7 — TRACK RECEIPT:
    By due date: reconcile wired amounts to expected amounts
    Day 1 after due date: any LP not funded → Dr. Lewis contacts LP
    Day 5 after due date: LP still not funded → Matt Mathison briefed
    Day 10 after due date: fund counsel engaged (default notice per LPA)

CAPITAL ACCOUNT LEDGER:

  MAINTAIN PER LP:
    Total committed capital: $[X]
    Capital called to date: $[X]
    Capital remaining unfunded: $[X]
    Distributions received to date: $[X]
    Net invested capital: $[X]
    
  FUND-LEVEL TOTALS:
    Total committed: $[X]
    Total called (% of committed): [X%]
    Dry powder (remaining unfunded): $[X]
    
BANK VERIFICATION PROTOCOL (fraud prevention):
    Verify bank instructions for every capital call — even if the account has not changed
    Verification: phone call to known LP contact + email confirmation before sending notice
    Never accept changed bank instructions by email alone without phone verification
    BEC (Business Email Compromise) is the primary fraud risk at this step
```

## Output Format

```markdown
# Capital Call Notice — [Fund Name] — [Date]
**Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison | **Issue date:** [Date]

---

## Capital Call Summary

| Item | Amount |
|------|--------|
| New investment: [Company/Purpose] | $[X] |
| Fund expenses (management fee, legal, other) | $[X] |
| Less: fund cash on hand | ($[X]) |
| **Total capital call** | **$[X]** |

**Due date:** [Date — minimum LPA notice period from issue date]

---

## LP Capital Call Schedule

| LP Name | Committed capital | % of fund | Amount due |
|---------|-----------------|----------|-----------|
| [LP 1] | $[X] | [X%] | $[X] |
| [LP 2] | $[X] | [X%] | $[X] |
| **Total** | **$[X]** | **100%** | **$[X]** |

---

## Wire Instructions

[Fund bank account — verified by Dr. Lewis immediately before sending]

**Purpose:** [Specific investment or expense description]
```

## Output Contract
- Matt Mathison approves every capital call before issuance — without exception; the approval is not a formality; Matt has the right to know what capital is being called for what purpose before LPs are committed; a capital call approved by Dr. Lewis alone and later reviewed by Matt would be both a governance failure and a legal exposure; Dr. Lewis prepares the call with full supporting detail and presents it to Matt for approval; Matt's written confirmation (email) is the trigger for issuance
- Bank instructions are verified immediately before every notice — the verified account from the last capital call may have changed; BEC fraud specifically targets this step; the verification is a phone call to a known LP contact (number from the original subscription document, not from an email) confirming the wiring account; this step is not skipped even for LPs the fund has dealt with for years; fraud losses in this category are unrecoverable
- Capital account accuracy is a fiduciary responsibility — every LP's capital account is a legal record that governs distributions, carried interest calculations, and ultimately return of capital; errors in the capital account create disputes at exit and can result in litigation; Dr. Lewis reconciles capital accounts to the fund's bank records after every capital call and distribution; discrepancies are resolved before the next capital call
- HITL required: every capital call → Matt Mathison written approval before issuance; any capital call involving emergency timing (< 10 days notice) → fund counsel review + Matt Mathison; any LP non-funding (past due) → Matt Mathison briefed Day 5; bank instruction changes from any LP → phone verification + Matt Mathison awareness; capital calls for recycled capital → LPA review + Matt Mathison approval

## System Dependencies
- **Reads from:** LPA (call requirements, permitted purposes, notice periods); fund capital account ledger (QuickBooks or dedicated fund accounting system); LP subscription documents (committed capital, pro-rata %); bank verification (LP contacts); Matt Mathison investment decisions (purpose and amount)
- **Writes to:** Capital call notices (PDF — official document); LP capital account ledger (after each call); fund cash tracking (QuickBooks); capital call log (date issued; LP responses; receipt dates); ops-lp-relations (LP communications connection); fin-fund-accounting (capital call records)
- **HITL Required:** Every capital call → Matt Mathison written approval; emergency calls → fund counsel + Matt; LP default (Day 5+) → Matt briefed; bank instruction changes → phone verification + Matt awareness; recycling capital → LPA review + Matt approval

## Test Cases
1. **Golden path:** MBL is making a $4.5M investment in a new acquisition. Capital call needed: $4.5M + $50K management fee = $4.55M. Fund cash on hand: $200K. Call amount: $4.35M. Three LPs at 60/25/15% pro-rata. Dr. Lewis calculates: LP1: $2.61M; LP2: $1.0875M; LP3: $652.5K. Notice period: 10 business days. Matt Mathison reviews and approves. Dr. Lewis verifies bank instructions via phone for all three LPs. Notice issued. All three LPs fund within the due date. Dr. Lewis reconciles to bank statement and updates capital account ledger.
2. **Edge case:** An LP wires $50K less than the called amount, citing "a calculation error in the notice" → Dr. Lewis: "I've reviewed the calculation — the notice is correct per the LPA pro-rata allocation. I'll contact [LP] by phone to discuss. If they have a question about the calculation, I'll walk through it with them. If they're claiming the calculation is wrong and it's not, I'll document the discrepancy and brief Matt Mathison. The LP cannot unilaterally pay less than the called amount; the deficit creates an over-call situation for the other LPs or a funding gap in the investment. I'll resolve this within 48 hours and update you."
3. **Adversarial:** An LP requests a change to their wiring instructions via email one week before the capital call due date → Dr. Lewis: "I've received an email from [LP] requesting a change to their wiring account. I'm not processing this by email alone — this is the highest-risk step for wire fraud. My process: I'll call [LP's designated contact] at the number on file from their original subscription documents, confirm the change request by phone, ask them to send a letter with the new account details on company letterhead (separately from the email), and verify the account again when I'm ready to issue the confirmation. I'm also briefing Matt Mathison about the change request. No capital call proceeds to [LP] until this is fully verified."

## Audit Log
All capital call notices retained permanently (with issue date; LP allocations; purpose; Matt approval). Capital receipt records retained (date; amount; bank confirmation). Capital account ledger version history retained. Bank verification records retained (who was called; when; what was confirmed). Non-funding events retained (with escalation dates and resolution).

## Deprecation
Capital call management is a permanent function for the life of each fund. Process is updated when LPA terms change (at next fund vintage).
