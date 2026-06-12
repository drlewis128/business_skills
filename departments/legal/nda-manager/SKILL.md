---
name: nda-manager
description: "Draft, review, and track NDAs. Use when the user says 'NDA', 'non-disclosure agreement', 'confidentiality agreement', 'draft an NDA', 'review this NDA', 'send an NDA', 'mutual NDA', 'one-way NDA', 'CDA', or 'confidentiality agreement needed'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--type <mutual|one-way>] [--entity <name>] [--party <name>] [--purpose <M&A|vendor|partnership|employee>]"
---

# NDA Manager

Draft, review, and track NDAs. NDAs are the first legal instrument in almost every business relationship — vendor evaluations, M&A discussions, partnership conversations, and hiring. A well-drafted NDA protects confidential business strategy and financial data. A poorly drafted one gives false confidence. This skill manages the NDA lifecycle from drafting through tracking.

## When to Use
- Starting an M&A discussion or due diligence process
- Beginning a vendor evaluation that requires sharing proprietary data
- Entering a new partnership or integration discussion
- New hire pre-employment (receiving company IP / access)
- Responding to an incoming NDA from a counter-party

## NDA Types

| Type | When to Use | Direction |
|------|------------|---------|
| **Mutual NDA** | Both parties share confidential information | ↔ Both ways |
| **One-way NDA** | Only one party shares (you share with vendor) | → One direction |
| **M&A NDA** | Target company evaluation — includes standstill provisions | ↔ + additional provisions |
| **Employee NDA/IP Agreement** | Employment — includes IP assignment | → Employee protects company |

## Key NDA Provisions (What to Check)

| Provision | Standard | Red Flag |
|---------|---------|---------|
| **Definition of confidential** | Broad — all non-public information | Too narrow — excludes key categories |
| **Term of confidentiality** | 3-5 years (or indefinite for trade secrets) | <2 years or no term |
| **Exclusions** | Standard: public info, prior knowledge, independently developed | Over-broad exclusions |
| **Return/destruction** | Within 30 days of request | No return obligation |
| **Permitted disclosures** | Legal/regulatory disclosure with notice | No notice requirement |
| **Governing law** | Neutral state (AZ for MBL) | Unreasonable venue |
| **Injunctive relief** | Right to seek without bond | Missing entirely |
| **M&A provisions** | Standstill (if applicable), no-hire clause | Standstill too long |

## Output Format

```markdown
# NDA — <Entity> / <Counter-party>
**Type:** Mutual / One-way / M&A
**Purpose:** <M&A | Vendor evaluation | Partnership | Other>
**Date:** <date> | **Status:** Draft / Sent / Executed / Expired

---

## Parties

| Party | Legal Entity Name | Signatory | Title |
|-------|----------------|---------|-------|
| MBL entity | <full legal name> | Matt Mathison | Managing Partner |
| Counter-party | <full legal name> | <name> | <title> |

---

## Key Terms Summary

| Term | Value | Standard? |
|------|-------|---------|
| Type | Mutual / One-way | ✅ |
| Confidentiality period | 3 years from disclosure | ✅ |
| Trade secret protection | Indefinite | ✅ |
| Governing law | Arizona | ✅ |
| Dispute resolution | Arbitration (AAA) / Litigation | ✅ |
| Return/destruction | 30 days on request | ✅ |
| M&A standstill | N/A / 12 months | ✅ |
| No-hire provision | N/A / 12 months | 🟡 Check if acceptable |

---

## NDA Review Flags

| Issue | Severity | Recommended Action |
|-------|---------|------------------|
| Confidentiality period only 1 year | 🟡 Medium | Negotiate to 3 years minimum |
| No injunctive relief provision | 🟡 Medium | Add — breaches require injunctive remedy |
| Governing law — counter-party's state | 🟡 Medium | Negotiate to AZ or mutual |

---

## Execution Status

- [ ] Draft reviewed by Dr. Lewis
- [ ] Sent to counter-party: <date>
- [ ] Counter-party redlines received: <date>
- [ ] Legal counsel review (if needed): <date>
- [ ] Executed by Matt Mathison: <date>
- [ ] Counter-signature received: <date>
- [ ] Filed in contract management system

---

## Standard MBL NDA Template Key Provisions

**Section 1 — Confidential Information**
"Confidential Information" means any and all non-public information disclosed by one Party to the other, whether orally or in writing, that is designated as confidential or that reasonably should be understood to be confidential given the nature of the information and circumstances of disclosure.

**Section 2 — Exclusions**
The obligations above do not apply to information that: (a) is or becomes publicly available through no fault of Recipient; (b) was known to Recipient prior to disclosure; (c) is independently developed by Recipient without use of Confidential Information; or (d) is required to be disclosed by law or court order (with prior written notice to Discloser where permitted).

**Section 3 — Term**
The obligations of confidentiality shall continue for three (3) years from the date of disclosure, except that obligations with respect to trade secrets shall continue indefinitely.

**Section 5 — Remedies**
Each Party acknowledges that breach of this Agreement may cause irreparable harm and that monetary damages may be inadequate. Each Party shall be entitled to seek injunctive relief without the requirement of posting bond.
```

## Output Contract
- M&A NDAs always flagged for legal counsel review — additional provisions and standstill terms require legal expertise
- Trade secret protection always indefinite — time-limiting trade secret protection is a negotiation trap
- Governing law always evaluated — AZ preferred for MBL entities
- Executed NDAs always tracked with expiration dates — expired NDAs don't protect ongoing discussions
- HITL required: Dr. Lewis reviews all NDA terms; Matt Mathison signs all MBL-entity NDAs; Legal counsel reviews M&A NDAs and any non-standard terms

## System Dependencies
- **Reads from:** Counter-party NDA or MBL template (provided)
- **Writes to:** NDA document (for HITL review and signature)
- **HITL Required:** Dr. Lewis reviews; Matt Mathison executes; Legal counsel for M&A and non-standard

## Test Cases
1. **Golden path:** Vendor evaluation NDA → mutual NDA, 3-year term, AZ law, injunctive relief included, return/destruction clause — standard; reviewed by Dr. Lewis, signed by Matt Mathison, counter-signed, filed
2. **Edge case:** Counter-party sends their own NDA that's one-way (they protect themselves, not us) → redline to mutual; if they resist, escalate to Dr. Lewis and Legal counsel — proceed only with mutual protection
3. **Adversarial:** Potential M&A target wants to sign NDA the same day as initial call → standard for M&A; have the MBL M&A NDA template ready; Dr. Lewis reviews if their paper comes in, legal counsel involved before signing

## Audit Log
All NDAs tracked with party, date, term, and expiration. Executed NDAs filed by entity and counter-party. Expirations monitored for renewal.

## Deprecation
Retire when entity deploys a CLM platform with NDA template library, e-signature integration, and automated tracking.
