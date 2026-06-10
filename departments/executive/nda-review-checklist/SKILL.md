---
name: nda-review-checklist
description: "Review an NDA against standard terms and flag non-standard provisions. Use when the user says 'review this NDA', 'NDA review', 'is this NDA standard', 'NDA red flags', 'non-disclosure agreement review', 'CDA review', or 'should we sign this NDA'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<nda-text-or-file> [--type <mutual|one-way>] [--context <deal|vendor|employment>]"
---

# NDA Review Checklist

Review a Non-Disclosure Agreement against standard market terms and flag any provisions that are unusual, risky, or require legal attention. Not a legal opinion — a structured review to support informed decision-making.

## When to Use
- Before signing any NDA with a potential acquisition target
- Before sharing confidential deal, financial, or portfolio information
- Vendor NDAs for sensitive integrations (AI, finance, HR systems)
- Employment-related NDAs or confidentiality agreements

## Standard NDA Parameters

### Duration
| Term | Standard | Flag? |
|------|----------|-------|
| 1-2 years | Standard for deal NDAs | No |
| 3 years | Acceptable | No |
| 5 years | Long but acceptable | Note |
| Perpetual | Non-standard | 🟡 Negotiate |
| No expiration stated | Non-standard | 🔴 Flag |

### Scope of Confidential Information
- Standard: Information disclosed in connection with the purpose
- Flag if: Covers all business information of the company (too broad)
- Flag if: Limited to only written materials (misses oral disclosures)

### Permitted Disclosures
Standard exceptions (always acceptable):
- Public domain information
- Already known to recipient
- Independently developed
- Required by law (with notice)
- Disclosed by authorized third party

Non-standard flags:
- No carve-out for legal compulsion
- Carve-out for "affiliates" without restriction

### Obligations on Receiving Party
- Maintain confidentiality using "reasonable care" — standard
- "Same degree of care as its own confidential information" — standard
- Specific security requirements — context-dependent
- Obligation to destroy/return on demand — common

### Non-Compete or Non-Solicit Provisions
⚠️ These sometimes appear in NDAs — not standard for standalone NDAs:
- Non-solicitation of employees: common in M&A NDAs, 12-24 months
- Non-compete: unusual in standalone NDA — flag for legal review
- Non-solicitation of customers: context-dependent

### Remedies
- Injunctive relief (standard — breach of NDA is hard to quantify in damages)
- Liquidated damages: unusual, flag for legal review
- Governing law and jurisdiction: note carefully for cross-state deals

## Output Format

```markdown
# NDA Review — <Party Name>
**NDA Type:** Mutual / One-Way
**Context:** Deal / Vendor / Employment
**Date:** <date>

⚠️ This is a non-legal review. Consult counsel before signing any NDA with significant financial or business implications.

## Standard Terms Summary
| Provision | Term in NDA | Market Standard | Status |
|-----------|-------------|----------------|--------|
| Duration | 2 years | 1-3 years | ✅ Standard |
| Scope | All business info | Disclosed info only | 🟡 Broad |
| Governing law | Delaware | Varies | ✅ |
| Non-solicit | None | Common in M&A | ✅ |

## Flags — Review or Negotiate

### 🔴 Must Address Before Signing
<List of provisions requiring legal review or negotiation>

### 🟡 Negotiate if Possible
<List of provisions that are non-standard but not necessarily deal-breakers>

## Missing Provisions
- No carve-out for disclosures required by law: ⚠️ Add before signing

## Recommendation
✅ Acceptable as-is / 🟡 Sign with noted conditions / 🔴 Do not sign — requires negotiation or legal review
```

## Output Contract
- Always includes disclaimer: this is not legal advice
- Red flag items always recommend legal review, not just "negotiate"
- Non-compete provisions always flagged as requiring legal counsel
- HITL required before any NDA is signed on behalf of MBL or portfolio entity

## System Dependencies
- **Reads from:** NDA document (provided)
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison or legal counsel must approve before signing any NDA with material business implications

## Test Cases
1. **Golden path:** Standard 2-year mutual NDA for deal discussion → clean review, minor notes, ✅ Acceptable
2. **Edge case:** NDA with embedded non-compete for key employee → flags non-compete as atypical, recommends legal review
3. **Adversarial:** Perpetual NDA with no carve-outs → flags duration and scope as red flags, recommends renegotiation before signing

## Audit Log
NDA reviews retained by party and date. Signed NDA versions stored with review notes.

## Deprecation
Retire when legal operations platform handles automated NDA review with redline capability.
