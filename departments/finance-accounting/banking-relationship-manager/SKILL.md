---
name: banking-relationship-manager
description: "Manage banking relationships and accounts. Use when the user says 'banking relationship', 'bank account management', 'open a bank account', 'banking review', 'bank fees', 'bank services review', 'credit facility', 'line of credit', 'banking partner', 'bank relationship review', 'negotiate banking fees', 'banking due diligence', or 'business banking'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <review|open-account|credit-facility|fee-review>]"
---

# Banking Relationship Manager

Manage banking relationships, accounts, and credit facilities for MBL portfolio companies — ensuring the right bank accounts are in place, fees are minimized, credit facilities are appropriately sized and monitored, and banking relationships support operational needs. For MBL-scale businesses, banking is not a commodity: the right bank and account structure provides liquidity support, payment infrastructure, and a credit facility backstop for cash flow variability.

## When to Use
- Opening a new bank account for a portfolio company or new entity
- Annual banking review — are the current accounts and terms still competitive?
- A portfolio company needs a line of credit for working capital or growth
- Bank fees have increased and need to be reviewed or renegotiated
- A portfolio company is changing banks
- Matt Mathison asks "what bank are we using for [Company] and are we happy with the relationship?"

## Banking Standards

```
Account structure:
  Primary operating account: All business receipts and payments
  Payroll account (optional): Separate for segregation of duties
  Reserve/savings account: 3-month operating reserve held separately
  CapEx account (optional): For significant capital projects
  
  Avoid: Too many accounts create reconciliation complexity.
  MBL default: Operating + savings = 2 accounts per entity

Credit facility:
  Revolving line of credit: Working capital buffer; draw as needed
  Term loan: For specific capital investments or acquisitions
  
  Target: Credit facility equal to 2-3 months of operating expenses
  MBL HIVE: Production finance may include oil/gas asset-backed credit

Bank selection criteria:
  1. Relationship quality — do they know us? Can we reach a real person?
  2. Fee structure — no unnecessary fees; negotiate waiver of monthly fees
  3. Digital capabilities — online banking, ACH, wire, API access
  4. Credit appetite — will they extend a line of credit when we need it?
  5. Local presence — preferred for in-person relationship and escalation
```

## Output Format

```markdown
# Banking Relationship Review — <Company Name>
**Review date:** <Date> | **Prepared by:** Dr. John Lewis
**Current bank(s):** <Bank name(s)>

---

## Account Summary

| Account | Bank | Type | Balance | Purpose | Monthly fee | Avg. monthly transactions |
|---------|------|------|---------|---------|------------|--------------------------|
| [Account 1] | [Bank] | Checking | $[X] | Operating | $[X] (waived?) | [N] |
| [Account 2] | [Bank] | Savings | $[X] | Reserve | $0 | [N] |

**Total banking fees (annual):** $[X]
**Fee waiver status:** [Fees waived per relationship / Fee-based — renegotiate]

---

## Bank Relationship Assessment

| Dimension | Score (1-5) | Notes |
|---------|------------|-------|
| Relationship quality (know us / responsive) | [N]/5 | [Banker name / contact quality] |
| Digital capabilities | [N]/5 | [ACH, wire, API, mobile] |
| Fee competitiveness | [N]/5 | [Monthly cost vs. competitors] |
| Credit appetite | [N]/5 | [Will they extend credit? At what terms?] |
| Overall relationship | [N]/5 | [Summary assessment] |

**Banking relationship status:** 🟢 Strong / 🟡 Adequate / 🔴 Consider alternatives

---

## Credit Facility Status

| Facility | Type | Limit | Outstanding | Available | Rate | Maturity | Covenants |
|---------|------|-------|------------|----------|------|---------|----------|
| [Revolving line] | LOC | $[X] | $[X] | $[X] | [Prime + X%] | [Date] | [Key covenants] |
| [Term loan] | Term | $[X] | $[X] | — | [X%] | [Date] | |
| **Total credit** | | **$[X]** | **$[X]** | **$[X]** | | | |

**Credit utilization:** $[X] outstanding / $[X] limit = [X%] utilized
**Credit facility recommendation:** [Adequate / Should increase limit to $[X] / Should add a line]
**Covenant compliance:** ✅ All covenants met / ⚠️ [Covenant X approaching limit — $[X] outstanding vs. $[X] limit]

---

## Banking Action Plan

| Action | Reason | Timeline | Owner |
|--------|--------|---------|-------|
| [Fee negotiation — waive monthly fee] | [Monthly fee $[X] should be waived at our balance level] | [Next banker meeting] | Dr. Lewis |
| [Request credit line increase from $[X] to $[X]] | [Business growth; current limit is X% of monthly revenue] | [Q[N]] | Dr. Lewis + Matt Mathison |
| [Annual covenant compliance certificate] | [Required by loan agreement by [date]] | [Date] | Dr. Lewis |
| [Account consolidation] | [Two checking accounts at different banks — consolidate to reduce admin] | [Next quarter] | Dr. Lewis |

---

## Banking Setup Checklist (New Account / New Entity)

| Task | Status | Notes |
|------|--------|-------|
| EIN registered with bank | ✅ / ❌ | |
| Operating agreement / articles provided | ✅ / ❌ | |
| Beneficial ownership documentation | ✅ / ❌ | [Bank KYC requirement — FinCEN rule] |
| Authorized signers established | ✅ / ❌ | [Dr. Lewis + [CEO name] as signers] |
| Online banking access confirmed | ✅ / ❌ | |
| ACH / wire capabilities enabled | ✅ / ❌ | |
| Bill.com bank connection established | ✅ / ❌ | |
| QuickBooks bank feed connected | ✅ / ❌ | |
| Debit card(s) issued and limited | ✅ / ❌ | [Dr. Lewis and CEO only — with spending limits] |
```

## Output Contract
- All authorized signers always formally established — informal bank account authorization is not authorization; every bank account must have formally registered authorized signers on file with the bank; any signer change must be completed formally, not via email instructions to the bank
- Covenant compliance tracked and reported proactively — loan covenants that are approaching their limits must be flagged before they are breached; the bank expects proactive communication, and a covenant waiver is much easier to obtain before the breach than after it
- Fee negotiation always attempted at relationship review — many banks waive monthly account fees for business accounts that maintain minimum average balances or use additional services; if the portfolio company qualifies, fees should be waived; never pay fees without asking
- Credit facility always sized with future needs in mind — a credit facility that exactly meets current needs will be insufficient in 12 months if the business grows; the right facility size is current operating cycle needs + 30-50% for growth; too small = emergency borrowing in bad conditions; too large = unnecessary commitment fees
- HITL required: Dr. Lewis manages day-to-day banking; Matt Mathison must be involved in any new credit facility, credit limit change, or bank change; all bank accounts require Matt Mathison as an authorized signer or explicit delegation; any borrowing under a credit facility requires Matt Mathison approval

## System Dependencies
- **Reads from:** Bank statements (account balances and fees), loan agreements (covenants and terms), QuickBooks (bank feed)
- **Writes to:** Banking relationship summary (SharePoint/Finance/Banking/); covenant compliance certificates; account setup documentation
- **HITL Required:** Dr. Lewis manages; Matt Mathison must approve new credit facilities, bank changes, and borrowings; Matt Mathison is an authorized signer on all accounts

## Test Cases
1. **Golden path:** Allevio annual banking review June 2026 → Current bank: [Regional bank]; 2 accounts: operating ($187K) + savings ($47K); Monthly fee: $18/month — waived per banker agreement (confirmed this quarter); Credit facility: $150K LOC at Prime + 1.5%; outstanding $0; available $150K; covenants: current ratio >1.5× (current: 3.3× — ✅), EBITDA >$40K trailing 12 months (current: $487K — ✅); Relationship score: 4/5 (responsive banker, good digital tools; limitation: no API access for automated bank feeds); Action: (1) Request LOC increase to $250K at next meeting — growth trajectory warrants larger facility; (2) Explore API bank feed connection to improve QuickBooks sync speed; Matt Mathison: "Solid banking relationship; request LOC increase — no immediate need but better to increase in good times than request when needed"
2. **Edge case:** A portfolio company's banker leaves the bank and the relationship is taken over by a new banker who doesn't know the company → proactive relationship building: schedule a 30-minute call with the new banker within 2 weeks; share the company's financial highlights and credit history; reestablish the personal relationship before any credit need arises; in the meantime, confirm all account terms and waivers are still in place (banker transitions sometimes result in fee waivers being inadvertently removed); document the new banker's name and contact info
3. **Adversarial:** A portfolio company CEO opens a new business bank account without Dr. Lewis's involvement and gives only themselves signing authority → flag immediately to Matt Mathison: "A new bank account was opened for [Company] at [Bank] without going through the standard account setup process. Dr. Lewis is not an authorized signer and Bill.com / QuickBooks are not connected. Recommend: (1) formally add Dr. Lewis as authorized signer; (2) connect account to Bill.com and QuickBooks; (3) confirm account purpose and ensure it's in the legal entity structure." A bank account that isn't in the accounting system creates a control gap and potential for untracked transactions

## Audit Log
Banking relationship reviews retained annually. Credit facility terms and covenant compliance documentation retained. Account opening documentation retained permanently. Authorized signer changes documented. Fee negotiation outcomes retained.

## Deprecation
Retire when MBL builds a treasury management function with dedicated banking relationships, credit monitoring software, and bank account management that operates independently of Dr. Lewis's involvement.
