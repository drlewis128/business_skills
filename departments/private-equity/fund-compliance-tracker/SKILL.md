---
name: fund-compliance-tracker
description: "Track regulatory compliance obligations for the PE fund. Use when the user says 'fund compliance', 'SEC compliance', 'investment adviser compliance', 'fund regulatory', 'RIA compliance', 'Form ADV', 'fund reporting obligations', 'regulatory filings for the fund', 'compliance calendar for fund', or 'fund regulatory requirements'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--mode <calendar|audit|filing>] [--year <year>]"
---

# Fund Compliance Tracker

Track regulatory compliance obligations for MBL Partners Fund I — SEC reporting, investment adviser requirements, state registrations, tax filings, and LP disclosure obligations. PE fund compliance is a non-negotiable function. Missed filings, inadequate disclosures, or unregistered activities create SEC enforcement risk that can shut down the fund.

## When to Use
- Annual compliance calendar setup — what's due this year?
- Pre-examination preparation — SEC or state examiner is coming
- New regulatory change identified — assess impact on fund operations
- Matt Mathison asks "are we current on all filings?"
- Fund administrator or counsel asks for compliance status

## MBL Partners Compliance Framework

```
Key regulatory categories for a PE fund:

1. Investment Adviser Act (if registered as RIA or relying on exemption):
   - Exempt Reporting Adviser (ERA): Most private funds < $150M AUM use this
   - Registered Investment Adviser (RIA): Required if > $150M AUM (generally)
   - Key filings: Form ADV (Part 1 + Part 2 if registered)
   - Key rule: Custody rule (Rule 206(4)-2); Compliance program (Rule 206(4)-7)

2. Securities Act (fund interests = securities):
   - Private placement exemption (Reg D, Rule 506(b) or 506(c))
   - Form D filing: Must be filed within 15 days of first sale
   - Blue sky (state securities) filings: Most states require notice filing

3. Investment Company Act (fund structure):
   - Most PE funds rely on Section 3(c)(1) or 3(c)(7) exclusion from ICA
   - 3(c)(1): Max 100 beneficial owners; no public offering
   - 3(c)(7): Qualified purchasers only; no cap on investor count

4. ERISA (if ERISA investors present — pension funds, 401K plans):
   - Plan asset rules — if ERISA investors > 25% of fund = plan asset fund
   - Prohibited transaction restrictions; additional fiduciary obligations

5. Tax compliance:
   - Fund partnership return: Form 1065 (federal), state equivalents
   - Schedule K-1 to each LP
   - FBAR if offshore accounts; FATCA if foreign investors

6. LP reporting obligations:
   - Per LP Agreement: Quarterly financial statements, annual audited statements
   - Capital account statements
   - Tax documents (K-1s by April 15 or extended date)
```

## Output Format

```markdown
# Fund Compliance Tracker — MBL Fund I
**Date:** <date> | **Owner:** Dr. John Lewis | **Reviewed by:** Matt Mathison + Fund Counsel
**Fund structure:** LP / LLC | **AUM:** ~$X | **Investor count:** <N>
**Adviser status:** Exempt Reporting Adviser (ERA) / Registered Investment Adviser (RIA)
**Fund exclusion:** Section 3(c)(1) / 3(c)(7)

---

## Annual Compliance Calendar

| Obligation | Authority | Deadline | Status | Owner |
|-----------|-----------|---------|--------|-------|
| Form D amendment (annual) | SEC Reg D | Within 15 days of fund anniversary | ✅ Filed <date> / ⏳ Due <date> | Fund counsel |
| Form ADV update (if ERA) | SEC IA Act | Within 90 days of fiscal year end | ✅ Filed <date> / ⏳ Due <date> | Fund counsel |
| State blue sky filings | State securities | Varies by state; typically annual | ✅ Current / ⏳ Review needed | Fund counsel |
| Fund tax return — Form 1065 | IRS | March 15 (or Sept 15 if extended) | ✅ Filed / ⏳ Extended / Due <date> | CPA |
| Schedule K-1 to LPs | IRS / LPs | March 15 or extended | ✅ Sent / ⏳ Due <date> | CPA |
| Annual audited financials | LPA + SEC | Within 120 days of fiscal year end | ✅ / ⏳ | Auditors |
| Quarterly financial statements | LPA | Within 45 days of quarter end | ✅ Q1 / ✅ Q2 / ✅ Q3 / ⏳ Q4 | Dr. Lewis |
| Annual compliance review | SEC Rule 206(4)-7 | Annual | ✅ Done <date> / ⏳ Schedule | Fund counsel |
| ERISA assessment (if new ERISA LP) | ERISA | On each new ERISA LP admission | ✅ N/A / ⏳ Assess | Fund counsel |

---

## Investor Count Monitoring

| Exclusion | Investor limit | Current investors | Headroom | Action if limit approached |
|----------|--------------|-----------------|---------|--------------------------|
| 3(c)(1) beneficial owner limit | 100 | <N> | <N> before limit | Fund counsel assessment at 85 |
| 3(c)(7) qualified purchaser check | No cap | <N> | N/A | Verify QP status on each new LP |

**Current structure:** 3(c)(1) — must track and never exceed 100 beneficial owners
*(Note: beneficial owners ≠ LP count — look-through applies for entities with < 25 beneficial owners)*

---

## Current Filings Status

| Filing | Filed | File date | Next filing | Notes |
|--------|-------|----------|------------|-------|
| Form D (Reg D 506(b)) | ✅ | <date> | Annual amendment due <date> | |
| Form ADV Part 1 (ERA) | ✅ | <date> | Update within 90 days of 12/31 | |
| Form ADV Part 2 | N/A (ERA) | — | — | Required only if full RIA |
| State blue sky — AZ | ✅ | <date> | Annual renewal <date> | |
| State blue sky — TX | ✅ | <date> | Annual renewal <date> | |
| State blue sky — other | Per LP states | | Annual | Fund counsel manages |
| Fund 1065 | ✅ | <date> | Next: 3/15/<year+1> | |
| K-1s distributed | ✅ | <date> | Next: 3/15/<year+1> | |

---

## Compliance Policy Status

| Policy | Status | Last reviewed | Next review |
|--------|--------|--------------|------------|
| Investment policy (conflict of interest) | ✅ Current | <date> | Annual |
| Code of ethics | ✅ Current | <date> | Annual |
| Compliance manual | ✅ Current | <date> | Annual |
| Recordkeeping policy | ✅ Current | <date> | Annual |
| Privacy policy (Reg S-P, if applicable) | ✅ / ⚠️ Review | <date> | Annual |

---

## Risk Flags

| Flag | Severity | Notes | Action |
|------|---------|-------|--------|
| AUM approaching $150M RIA threshold | Medium | Current AUM: $X; threshold: $150M | Monitor; counsel to advise at $120M |
| ERISA investor proportion | Monitor | Current: X% of fund; limit: 25% | If approaching 25%, stop admitting ERISA LPs |
| 3(c)(1) beneficial owner count | High | Current: <N> of 100 | Alert at 85; hard stop at 99 |

---

## Matt Mathison Summary

**Fund compliance status: ✅ Current / ⚠️ [Item] due.** All required filings are current. Next deadline: [Filing] due [date] — fund counsel is managing. No regulatory flags at current AUM ($X) or investor count (<N>). [Risk flag if any: one sentence]. Annual compliance review scheduled for [date].
```

## Output Contract
- Investor count always monitored against 3(c)(1)/3(c)(7) limits — exceeding these limits means the fund loses its ICA exclusion; this is an existential fund compliance issue
- Every filing has an owner — fund counsel, CPA, or Dr. Lewis; no filing is "someone's problem generally"
- Annual compliance review always required — this is an SEC Rule 206(4)-7 requirement for advisers; document that it happened
- AUM threshold always tracked — crossing $150M triggers mandatory RIA registration; must be prepared 12 months in advance
- HITL required: Dr. Lewis maintains tracker; fund counsel owns all filings and regulatory analysis; Matt Mathison reviews compliance status quarterly; all filings reviewed by fund counsel before submission; any regulatory inquiry (SEC examination) escalated to Matt Mathison and fund counsel immediately

## System Dependencies
- **Reads from:** Fund accounting (AUM, investor count), LP registry (investor types, ERISA status), fund counsel communications, tax advisor
- **Writes to:** Compliance tracker (SharePoint/Fund/Compliance); Matt Mathison compliance updates; fund documents
- **HITL Required:** Dr. Lewis tracks; fund counsel owns filings; Matt Mathison reviews quarterly; regulatory inquiries → Matt Mathison + counsel immediately

## Test Cases
1. **Golden path:** Annual compliance review → Form D updated; Form ADV (ERA) filed on time; K-1s sent by March 15; audited financials distributed within 120 days; 3(c)(1) count: 12 beneficial owners (88 headroom); AUM: $X (below $150M RIA threshold); no ERISA LPs; all state blue sky renewals current; compliance manual updated; no SEC inquiries; Matt Mathison summary: fully compliant, no flags
2. **Edge case:** New LP is a pension fund (ERISA entity) — this brings ERISA investors above 20% of fund capital → immediately assess ERISA plan asset rules; at 25% ERISA LP participation, the fund becomes a "plan asset fund" with significant additional obligations; fund counsel must advise on whether to: (a) decline the ERISA LP to stay below 25%; (b) accept and comply with plan asset rules; or (c) restructure the deal; this is a decision for Matt Mathison with fund counsel's advice
3. **Adversarial:** SEC staff sends an examination notification letter → treat as highest priority; notify Matt Mathison immediately; do not respond to SEC staff without fund counsel present; preserve all documents per legal hold; fund counsel manages the examination response; Dr. Lewis supports with document production; no individual at MBL talks to SEC staff without counsel; this is a normal part of fund life but must be handled professionally

## Audit Log
All filings retained permanently. Compliance calendar with actual vs. deadline dates retained. Examination correspondence retained. Matt Mathison review of compliance status documented quarterly.

## Deprecation
Retire when MBL has dedicated compliance software (Compliance11, ComplySci, or fund administration platform) with automated compliance calendar, filing tracking, and regulatory change monitoring.
