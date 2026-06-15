---
name: lp-onboarding-tracker
description: "Manage the onboarding of new Limited Partners into the fund. Use when the user says 'new LP', 'LP onboarding', 'investor onboarding', 'KYC for LP', 'new limited partner', 'LP closing', 'subscribe LP', 'admit new investor', 'LP documentation', or 'add LP to fund'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--lp <name>] [--commitment <dollar>] [--closing <date>]"
---

# LP Onboarding Tracker

Manage the onboarding of a new Limited Partner (LP) into MBL Partners Fund I — from subscription documents through KYC/AML clearance to first capital call. LP onboarding has legal, regulatory, and relationship dimensions. A poorly handled onboarding erodes confidence before the first dollar is deployed.

## When to Use
- New investor committing to the fund — manage the admission process
- Fund has a scheduled closing (first close, second close, final close)
- Existing LP increasing commitment — treat like a new LP for documentation
- Matt Mathison asks "where are we in the [LP Name] onboarding?"
- LP asks about the subscription process — provide clear guidance

## LP Onboarding Checklist

```
Pre-closing requirements:
  1. Subscription agreement — executed by LP; countersigned by GP
  2. Side letter (if any) — any special terms negotiated with this LP
  3. KYC/AML clearance — regulatory requirement; cannot close without it
  4. Accreditation verification — SEC requirement (qualified purchaser / accredited investor)
  5. Tax forms — W-9 (US LP) or W-8BEN/W-8BEN-E (foreign LP)
  6. Wire instructions — fund bank account verified; LP's bank confirmed for distributions
  7. LP Agreement execution — LP must execute or have executed as counter-party
  8. Fund counsel sign-off — all documents reviewed and cleared by counsel

Post-closing requirements:
  9. Capital account setup in fund accounting
  10. LP notification of closing and capital account balance
  11. First capital call notice (if closing is concurrent with investment)
  12. LP Agreement delivered (if not already done)
  13. LP portal access (if applicable)
```

## Output Format

```markdown
# LP Onboarding Tracker — <LP Name>
**Date opened:** <date> | **Owner:** Dr. John Lewis
**LP Name:** <Full legal entity name>
**Commitment:** $X | **Closing target:** <date>
**LP type:** Individual / Family Office / Institutional / Corporate

---

## Document Status

| Document | Status | Date signed | Notes |
|---------|--------|------------|-------|
| Subscription agreement | ✅ Signed / ⏳ Pending / ❌ Not started | <date> | |
| LP Agreement execution | ✅ / ⏳ / ❌ | <date> | |
| Side letter | ✅ / ⏳ / N/A | <date> | [Special terms summary if applicable] |
| W-9 / W-8BEN | ✅ / ⏳ / ❌ | <date> | |
| Accreditation verification | ✅ / ⏳ / ❌ | <date> | Qualified Purchaser / Accredited Investor |

---

## KYC / AML Clearance

**Status:** ✅ Cleared / ⏳ In process / ❌ Not started / 🔴 Issues identified

| KYC step | Status | Date | Notes |
|---------|--------|------|-------|
| LP legal name and entity verification | ✅ / ⏳ | <date> | |
| Beneficial owner identification (>25% owners) | ✅ / ⏳ | <date> | |
| OFAC / Sanctions screening | ✅ / ⏳ | <date> | |
| PEP (Politically Exposed Person) check | ✅ / ⏳ | <date> | |
| Source of funds verification | ✅ / ⏳ | <date> | |
| Fund counsel clearance | ✅ / ⏳ | <date> | |

**KYC block:** None / [Describe issue — do not proceed to close until resolved]

---

## Fund Counsel Sign-Off

**Counsel:** [Fund counsel firm name]
**Counsel review status:** ✅ Cleared to close / ⏳ Pending / ❌ Issues noted

**Issues requiring resolution before close:**
- [None / List any items]

---

## Capital Account Setup

| Item | Detail | Status |
|------|--------|--------|
| LP commitment | $X | ✅ Confirmed |
| Unfunded commitment (at close) | $X | ✅ Recorded |
| Capital account ID | [Account ID] | ✅ / ⏳ |
| Fund accounting entry | Commitment booked | ✅ / ⏳ |
| LP pro-rata % | X% | ✅ / ⏳ |

---

## Wire Information

**LP bank (for distributions TO LP):**
- Bank: [Name]
- ABA/Routing: [XXXXXX]
- Account: [XXXXXX]
- Account name: [LP legal name]
- Verified by phone: ✅ <date> / ❌ Not yet verified

*Wire instructions verified directly with LP representative by phone call — never rely solely on emailed instructions*

**Fund bank (for capital calls FROM LP):**
- Use standard MBL Fund I wire instructions (on file)
- Confirmed sent to LP: ✅ <date>

---

## Communication Log

| Date | From | To | Topic | Method |
|------|------|----|-------|--------|
| <date> | Dr. Lewis | [LP contact] | Subscription docs sent | Email |
| <date> | [LP contact] | Dr. Lewis | Docs signed; returning | Email |
| <date> | Dr. Lewis | [LP contact] | KYC requirements | Email + phone |
| <date> | Fund counsel | Dr. Lewis | KYC cleared | Email |

---

## Closing Checklist

| Milestone | Status | Date |
|-----------|--------|------|
| All documents executed | ✅ / ⏳ | |
| KYC/AML cleared | ✅ / ⏳ | |
| Accreditation verified | ✅ / ⏳ | |
| Fund counsel sign-off | ✅ / ⏳ | |
| Matt Mathison approval to close | ✅ / ⏳ | |
| **LP admitted to fund** | ✅ / ⏳ | <date> |
| Capital account setup | ✅ / ⏳ | |
| LP welcome communication sent | ✅ / ⏳ | |
| First capital call (if applicable) | ✅ / ⏳ | |
```

## Output Contract
- KYC/AML clearance always required before close — no exceptions; admitting an LP without KYC clearance is a securities law violation
- Wire instructions always verified by phone — BEC fraud risk is high for LP wire instructions; email alone is insufficient verification
- Fund counsel clearance always required — subscription documents and LP Agreement must be reviewed by counsel for every new LP admission
- Matt Mathison approval required before closing — LP admission is a business and legal decision; not delegable to Dr. Lewis alone
- HITL required: Dr. Lewis manages onboarding process; fund counsel reviews all documents; KYC clearance requires counsel sign-off; LP closing requires Matt Mathison approval; wire instruction verification by phone (Dr. Lewis + LP contact directly); LP Agreement execution requires Matt Mathison as GP signatory

## System Dependencies
- **Reads from:** LP subscription documents, LP Agreement, KYC/AML screening results, fund counsel communications
- **Writes to:** LP onboarding tracker (SharePoint/Fund/LPs/<LP Name>); capital account ledger; LP registry
- **HITL Required:** Dr. Lewis manages; fund counsel reviews; KYC clearance required; Matt Mathison approves close; wire verification by phone

## Test Cases
1. **Golden path:** New family office LP, $1M commitment, second closing → Subscription docs sent; signed in 3 days; W-9 received; KYC: beneficial owners identified (2), OFAC clean, PEP clean, source of funds (family business sale — verified); fund counsel: cleared; accreditation: qualified purchaser confirmed; Matt Mathison: approved; LP admitted to fund; capital account: $1M commitment, 10% of fund; welcome email sent; wire instructions verified by phone; first capital call concurrent with closing: $150K (for Allevio investment + management fee pro-rata)
2. **Edge case:** KYC process reveals LP has a beneficial owner on an OFAC watchlist → immediately halt onboarding; notify fund counsel; do not admit LP; notify Matt Mathison; decline the LP in a way that does not trigger legal exposure (fund counsel to advise on language); document the reason internally; do not share the OFAC finding with the LP; this is a hard stop — no exceptions
3. **Adversarial:** LP's attorney pressures to close before KYC is complete ("it's just paperwork, we're good people") → KYC is a legal obligation, not a formality; a friendly LP with incomplete KYC is still an incomplete LP admission; politely and firmly hold the line: "Our counsel requires KYC clearance before closing — we're moving as fast as possible and expect to clear by [date]"; never let relationship pressure override compliance requirements

## Audit Log
All LP onboarding documents retained permanently in fund files. KYC clearance documentation retained. Wire instruction verification records retained. Matt Mathison approval documented. All LP communications retained.

## Deprecation
Retire when MBL has a fund administration platform with integrated LP onboarding, KYC/AML automation, and LP portal for document execution and communication.
