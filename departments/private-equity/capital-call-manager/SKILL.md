---
name: capital-call-manager
description: "Manage LP capital calls — draft notices, track commitments, and reconcile funded amounts. Use when the user says 'capital call', 'draw down capital', 'call capital from LPs', 'LP capital notice', 'capital contribution', 'fund the deal', 'capital call notice', 'drawdown', 'call committed capital', or 'LP funding'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--fund <MBL-Fund-I>] [--purpose <investment|fees|expenses>] [--amount <dollar>] [--deadline <date>]"
---

# Capital Call Manager

Draft, issue, and track LP capital calls — the formal notices sent to LPs requiring them to fund their committed capital. Capital calls are legal documents with specific requirements, and LP relationships depend on giving adequate notice with clear, accurate information. A botched capital call erodes LP trust immediately.

## When to Use
- Closing a new investment — need to fund the deal
- Management fees are due — quarterly management fee call
- Fund expenses to pay — legal fees, audit, operational costs
- Matt Mathison approves a new investment — next step is capital call
- LP has not funded on time — track and follow up

## Capital Call Process

```
Step 1: Get approval (HITL gate)
  Investment approval from Matt Mathison (investment committee)
  Fund counsel confirms legal requirements for the specific call

Step 2: Calculate each LP's pro-rata share
  LP share = (LP commitment / Total fund commitments) × Call amount
  Track against remaining uncalled commitment per LP

Step 3: Draft notice (10-14 business days minimum notice)
  Required elements:
    - Call amount and per-LP amount
    - Purpose of call (investment / fees / expenses)
    - Wire instructions (verified — bank account verification critical)
    - Due date (typically 10-14 business days from notice date)
    - LP commitment, prior calls, remaining commitment after this call
    - Fund bank account wire details (use previously verified account; do NOT update wire details via email)

Step 4: Legal review before sending
  Fund counsel reviews capital call notice before distribution to LPs

Step 5: Send via secure channel
  Send notice per LP agreement (email to designated LP contact + backup)
  Log send date and delivery confirmation

Step 6: Track receipt
  Monitor wire receipt by due date
  Day 1 after deadline: follow up with any LP that has not funded

Step 7: Confirm and close
  Confirm all LPs have funded
  Update capital account ledger
  Log in fund accounting system
```

## Output Format

```markdown
# Capital Call Notice — MBL Fund I
**Notice date:** <date>
**Due date:** <date> (10 business days from notice)
**Call purpose:** <Investment in [Company] / Management fees Q[N] [Year] / Fund expenses>
**Total call amount:** $X

---

## Call Summary

| LP Name | Commitment | % of Fund | Prior calls | This call | Remaining after |
|---------|-----------|----------|-----------|----------|----------------|
| [LP 1] | $X | X% | $X | **$X** | $X |
| [LP 2] | $X | X% | $X | **$X** | $X |
| [LP 3] | $X | X% | $X | **$X** | $X |
| **Total** | **$X** | **100%** | **$X** | **$X** | **$X** |

---

## Draft Capital Call Notice

---
[MBL Partners Letterhead]

**CAPITAL CALL NOTICE**
**MBL Partners Fund I, LP**

Date: <date>

Dear [LP Name],

Pursuant to Section [X] of the Limited Partnership Agreement dated [date], MBL Partners Fund I, LP hereby calls $[LP Amount] from [LP Name].

**Purpose:** [Investment in [Company Name] / Q[N] [Year] Management Fees / Fund Operating Expenses]

**Amount Due:** $[LP Amount]

**Due Date:** [Due Date] (on or before [Time] [Timezone])

**Wire Instructions:**
Bank: [Fund Bank Name]
ABA/Routing: [XXXXXX] *(use previously verified account — verify by phone before wiring)*
Account: [XXXXXX]
Account Name: MBL Partners Fund I, LP
Reference: [LP Name] — Capital Call [Date]

**Capital Account Summary:**
- Total Commitment: $[LP Commitment]
- Prior Contributions: $[Prior Total]
- This Call: $[This Call Amount]
- Remaining Undrawn Commitment (after this call): $[Remaining]

Please confirm receipt of this notice and your intended wire date by return email.

Sincerely,
Matt Mathison
Managing Partner, MBL Partners

---

*IMPORTANT: Do not update wire instructions based on any email or phone call received after this notice. If you receive any communication requesting wire instruction changes, call MBL Partners immediately at 602-880-6491 to verify.*

---

## Capital Call Tracker

| LP | Notice sent | Sent by | LP confirmed receipt | Wire expected | Wire received | Amount | Status |
|----|------------|---------|---------------------|--------------|--------------|--------|--------|
| [LP 1] | <date> | Dr. Lewis | ✅ <date> | <date> | <date> | $X | ✅ Funded |
| [LP 2] | <date> | Dr. Lewis | ✅ <date> | <date> | Pending | — | ⏳ Awaiting |
| [LP 3] | <date> | Dr. Lewis | ❌ No response | <date> | — | — | 🔴 Follow up |

**Total funded:** $X of $X
**Outstanding:** $X (due from: [LP Names])

---

## Follow-up Log

| LP | Follow-up date | Contact | Method | Response | Next action |
|----|---------------|---------|--------|---------|------------|
| [LP 3] | <date> | [Contact name] | Phone | No answer; left VM | Follow up [date+1] |
```

## Output Contract
- Wire instructions always verified by phone before any capital call is issued — BEC (Business Email Compromise) fraud specifically targets PE firms during capital calls; never send new wire instructions via email without phone verification
- Anti-fraud warning always included in notice — LPs need to know to verify any wire instruction changes
- LP counsel review always before sending — capital calls are legal documents
- Per-LP amounts always calculated to the cent — rounding errors in LP capital accounts compound
- Follow-up logged within 1 business day of missed deadline — LPs in default are a fund governance issue
- HITL required: Investment committee (Matt Mathison) approves call before issuance; fund counsel reviews notice before sending; Dr. Lewis sends and tracks; Matt Mathison notified of any LP default; wire receipt confirmed by Dr. Lewis against expected amounts before closing the call

## System Dependencies
- **Reads from:** LP commitment ledger (fund accounting), prior capital call history, LP Agreement (fund documents in SharePoint)
- **Writes to:** Capital call tracker (SharePoint/Fund/Capital Calls); capital account ledger (fund accounting); LP correspondence log
- **HITL Required:** Matt Mathison approves call; fund counsel reviews notice; Dr. Lewis sends and tracks; wire verification by phone; any LP default → Matt Mathison immediately

## Test Cases
1. **Golden path:** New investment in target company — $2M investment approved by Matt Mathison → LP 1 (40% = $800K), LP 2 (35% = $700K), LP 3 (25% = $500K); notice drafted; fund counsel reviewed and approved; notices sent to all 3 LPs 12 business days before due date; LP 1 and LP 2 confirmed receipt same day; LP 3 confirmed next morning; all 3 LPs wired on time; $2M received; capital account ledger updated; deal funded
2. **Edge case:** An LP calls the day of the capital call deadline and says they need 5 additional business days — they're dealing with an internal liquidity issue → per the LP Agreement, any extension is at fund manager's discretion; assess whether the fund can absorb the delay (does another LP have capacity to bridge?); notify Matt Mathison immediately; if no bridge available and the deal has a closing deadline, assess options; document everything; a short extension (1-3 business days) is typically manageable; record the extension in writing and get LP's written acknowledgment
3. **Adversarial:** Someone posing as an LP calls and asks to update their wire instructions before the capital call — they "just changed banks" → this is a classic BEC fraud attempt; under no circumstances update wire instructions based on a phone call or email; any wire instruction change requires: written request from the LP, verification by calling the LP at their established phone number (not the number provided in the change request), and Matt Mathison co-approval; treat this as a security incident; alert the real LP that someone attempted to redirect their capital

## Audit Log
All capital call notices retained permanently. LP receipt confirmations retained. Wire receipt confirmations retained. Follow-up logs retained. Any LP defaults documented. Wire instruction change requests (and denials) documented.

## Deprecation
Retire when MBL has dedicated fund administration software with automated capital call generation, LP portal delivery, and payment tracking integrated with fund accounting.
