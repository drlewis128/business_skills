---
name: anti-corruption-compliance-tracker
description: "Track anti-corruption and anti-bribery compliance. Use when the user says 'anti-corruption', 'anti-bribery', 'FCPA', 'gifts and entertainment', 'bribery risk', 'kickback', 'facilitation payment', 'government official', 'foreign official', 'corruption risk', 'FCPA compliance', or 'UK Bribery Act'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <policy|risk|report>] [--jurisdiction <US|UK|international>]"
---

# Anti-Corruption Compliance Tracker

Track anti-corruption and anti-bribery compliance for MBL portfolio companies. The Foreign Corrupt Practices Act (FCPA) and UK Bribery Act have extraterritorial reach — they apply to US companies and their employees anywhere in the world. Even companies without international operations face domestic anti-corruption risks: kickbacks in healthcare (Allevio — Anti-Kickback Statute), referral fees in financial services, and improper gifts/entertainment in any business. This skill tracks compliance with anti-corruption requirements.

## When to Use
- Building or reviewing the anti-corruption/anti-bribery policy
- Gifts and entertainment approval and tracking
- Third-party due diligence for partners, agents, and intermediaries (FCPA risk)
- Healthcare Anti-Kickback Statute compliance review (Allevio)
- Annual anti-corruption risk assessment

## Anti-Corruption Legal Framework

| Law | Jurisdiction | Applies To | Key Prohibition |
|-----|------------|----------|---------------|
| **Foreign Corrupt Practices Act (FCPA)** | US | US issuers, domestic concerns, anyone acting in US territory | Prohibits bribery of foreign government officials; requires accurate books/records |
| **UK Bribery Act** | UK | Anyone doing business in UK | Broader than FCPA — covers commercial bribery too; "adequate procedures" defense |
| **Healthcare Anti-Kickback Statute (AKS)** | US Federal | Healthcare providers | Prohibits remuneration to induce Medicare/Medicaid referrals |
| **Stark Law (Physician Self-Referral)** | US Federal | Physicians | Prohibits physician self-referral for designated health services |
| **Foreign Agents Registration Act (FARA)** | US | Agents of foreign governments | Registration requirement if acting as foreign agent |

## Gifts and Entertainment Policy (Standard MBL)

```
PERMITTED WITHOUT PRE-APPROVAL:
  ✅ Gifts received: up to $50 fair market value
  ✅ Business meals: reasonable and customary; documented
  ✅ Business entertainment: occasional, documented, business purpose present

REQUIRES PRE-APPROVAL (Dr. Lewis):
  🟡 Gifts over $50 to or from any third party
  🟡 Entertainment over $250 per person
  🟡 Anything given to or received from a government official (any amount)
  🟡 Travel or accommodation for third parties
  🟡 Charitable donations where a business relationship is involved

PROHIBITED AT ALL TIMES:
  🔴 Cash gifts (any amount) — never
  🔴 Gifts to government officials without pre-approval and legal review
  🔴 Gifts or payments conditioned on receiving business or referrals
  🔴 Healthcare referral payments without AKS safe harbor (Allevio)
  🔴 Facilitating payments to expedite routine government action (FCPA)
```

## Output Format

```markdown
# Anti-Corruption Compliance Report — <Entity>
**Period:** <quarter/year> | **Date:** <date>
**Entity:** <name>
**Prepared by:** Dr. John Lewis

---

## Compliance Program Status

| Component | Status | Details |
|---------|--------|---------|
| Anti-corruption / anti-bribery policy | ✅ / ❌ | Published / Not written |
| Gifts and entertainment policy | ✅ / ❌ | |
| Gifts log (tracking system) | ✅ / ❌ | |
| Annual training | ✅ / ❌ | |
| Third-party due diligence process | ✅ / ❌ | |
| AKS compliance (Allevio) | ✅ / ❌ | |

---

## Gifts and Entertainment Log — YTD

| Date | Giver/Recipient | Entity | Description | Value | Approved By | Status |
|------|--------------|--------|-----------|-------|-----------|--------|
| <date> | Client → MBL | MBL | Holiday gift basket | $45 | N/A (under $50) | ✅ |
| <date> | MBL → Vendor | MBL | Client dinner | $220/person | Dr. Lewis | ✅ |
| <date> | Referral source → Allevio | Allevio | Concert tickets | $350 | ❌ Not pre-approved | 🔴 Rejected / returned |

---

## Healthcare Anti-Kickback Statute Assessment (Allevio)

| Practice | AKS Risk | Safe Harbor? | Status |
|---------|---------|----------|--------|
| Physician referral arrangements | 🔴 High | Require written agreement, fair market value, no referral requirement | Review all physician arrangements |
| Marketing consultant payments | 🟡 Medium | Space rental / employment safe harbors may apply | Review with outside counsel |
| Patient transportation assistance | 🟡 Medium | AKS exemption for certain transport | Assess program structure |
| Charitable donations to physician organizations | 🔴 High | No standard safe harbor | Engage outside counsel before making |

---

## Third-Party Due Diligence (For FCPA-Sensitive Engagements)

| Third Party | Relationship | Country | Red Flags Found? | Due Diligence Completed? | Risk Rating |
|-----------|-----------|---------|---------------|----------------------|-----------|
| [International agent — if any] | Business development | | | | |
| [Government-affiliated partner — if any] | Operations | | | | |

---

## Annual Risk Assessment

| Risk Area | Entity | Risk Level | Key Control |
|---------|--------|----------|-----------|
| Healthcare referral payments | Allevio | High | AKS safe harbor compliance; outside counsel review |
| Domestic commercial bribery | All | Low | Gifts policy; annual training |
| International operations (FCPA) | MBL (if international) | Low-Medium (if any international portfolio) | Third-party due diligence |
| Government contracting | HIVE (BLM / federal lands) | Low-Medium | No payments to government officials; document all interactions |
```

## Output Contract
- AKS compliance always assessed first for Allevio — healthcare Anti-Kickback Statute violations are criminal and result in exclusion from Medicare/Medicaid
- Government official interactions always escalated — even small gifts require pre-approval and legal review when a government official is involved
- Gifts log always maintained — documentation is the defense; "we always did this" without records is not a compliance program
- Third-party due diligence always required before engaging international agents or government-connected intermediaries
- HITL required: Dr. Lewis approves gifts over $50 and all government-official gifts; outside healthcare counsel reviews Allevio AKS arrangements; outside FCPA counsel for any international operations; Matt Mathison informed of significant anti-corruption risks

## System Dependencies
- **Reads from:** Gifts log, expense reports (QuickBooks/Bill.com), physician arrangement contracts (Allevio), third-party contracts (provided)
- **Writes to:** Anti-corruption compliance report and gifts log (maintained by Dr. Lewis / Compliance)
- **HITL Required:** Dr. Lewis approves gifts; outside counsel for AKS and FCPA matters; Matt Mathison for significant risks

## Test Cases
1. **Golden path:** Allevio receives an invitation for clinical staff to attend a vendor-sponsored conference (all expenses paid) → AKS risk: if the vendor is a supplier to Allevio and the conference attendance is contingent on the business relationship, this is an AKS risk; assess: is the conference bona fide educational? Is the sponsorship provided regardless of referral relationship? If yes → acceptable with documentation; if no → return the invitation
2. **Edge case:** HIVE Partners' operating team interacts with BLM (Bureau of Land Management) staff on permit renewals — can they buy lunch? → government official meals require pre-approval; even $15 lunches with federal officials are FCPA-sensitive; get pre-approval, document, and keep to $20 or under per DOJ guidance
3. **Adversarial:** A physician with referrals to Allevio asks for a "consulting arrangement" → AKS red flag: consultant arrangements with referral sources are high-risk; arrangement must be: (1) in writing, (2) for bona fide services at fair market value, (3) not conditioned on referrals; engage Allevio's outside healthcare counsel to review before executing any consulting agreement with a referral source

## Audit Log
Gifts log maintained annually. AKS arrangements reviewed annually. Anti-corruption compliance reports retained. Third-party due diligence documented.

## Deprecation
Retire when entity deploys a dedicated compliance platform with gifts management, AKS tracking, and third-party due diligence workflows.
