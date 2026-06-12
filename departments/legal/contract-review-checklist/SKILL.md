---
name: contract-review-checklist
description: "Run a structured first-pass review of a contract. Use when the user says 'review this contract', 'contract review', 'check this agreement', 'flag issues in this contract', 'what should I look for', 'first pass on this agreement', or 'pre-legal review checklist'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "<contract-type> [--entity <name>] [--party <vendor|client|partner>] [--depth <quick|thorough>]"
---

# Contract Review Checklist

Run a structured first-pass review of a contract before it goes to legal counsel. This skill catches the issues that are easy to miss when reviewing under time pressure — missing caps, unlimited liability, auto-renewal traps, IP ownership ambiguity, and non-standard termination terms. It does not replace legal counsel review for significant contracts.

## When to Use
- First-pass review before sending to outside counsel (saves time and cost)
- Reviewing a standard vendor agreement under your signature threshold
- Quick check on a client agreement before executive sign-off
- Identifying issues to flag when negotiating
- Training new staff on what to look for

## Contract Review Dimensions

| Dimension | What to Check |
|---------|-------------|
| **Parties and authority** | Correct legal entities? Authorized signatories? |
| **Scope** | Does the scope match what was discussed? |
| **Term and renewal** | How long? Auto-renewal? Notice for non-renewal? |
| **Pricing and payment** | Correct rates? Payment terms? Late fees? Price escalation? |
| **Liability** | Cap on liability? Mutual or one-sided? Excludes consequential damages? |
| **Indemnification** | What are we indemnifying? Is it mutual? Unlimited? |
| **IP ownership** | Who owns work product? What licenses are granted? |
| **Confidentiality** | Mutual NDA? Duration? Exceptions? |
| **Termination** | Termination for convenience? For cause? Notice period? Effect of termination? |
| **Governing law** | Which state? Arbitration or litigation? |
| **Data privacy** | Does it comply with HIPAA (Allevio), GDPR, CCPA as applicable? BAA needed? |
| **Assignment** | Can either party assign without consent? Change of control? |

## Output Format

```markdown
# Contract Review — <Contract Name / Type>
**Entity:** <name> | **Counter-party:** <name>
**Contract type:** Vendor / Client / Employment / NDA / Other
**Review date:** <date> | **Reviewer:** Dr. John Lewis (pre-legal)
**Send to legal counsel?** Yes — high risk items found / No — standard terms

---

## Quick Summary

| Field | Value |
|-------|-------|
| Parties | <Entity legal name> and <Counter-party legal name> |
| Effective date | <date> |
| Term | <N months/years> |
| Auto-renewal | Yes — <N> day notice to cancel / No |
| Contract value | $<N> / Annual commitment $<N> |
| Governing law | <State> |
| Dispute resolution | Litigation / Arbitration |

---

## Risk Flags

| Issue | Location | Severity | Recommended Action |
|-------|---------|---------|------------------|
| Unlimited liability — no cap | §8.2 | 🔴 High | Negotiate cap at 12 months fees |
| Auto-renewal with only 15-day notice window | §4.1 | 🔴 High | Extend to 60 days; calendar the notice date |
| IP ownership unclear — "work product" not defined | §10 | 🟡 Medium | Define work product explicitly; confirm MBL owns deliverables |
| Indemnification one-sided (we indemnify, they don't) | §9.1 | 🟡 Medium | Request mutual indemnification |
| Governing law: vendor's home state (not AZ) | §14 | 🟡 Medium | Negotiate to AZ or mutual jurisdiction |
| No data privacy terms / BAA (for Allevio vendor) | N/A | 🔴 High (HIPAA) | Require BAA addendum before signing |

---

## Checklist Results

| Item | Status | Notes |
|------|--------|-------|
| Correct legal entity names | ✅ | Both verified |
| Authorized signatory authority | 🟡 | Verify Matt Mathison's signing authority for this amount |
| Scope matches business intent | ✅ | Confirmed with IT Manager |
| Term clearly defined | ✅ | 12 months from effective date |
| Auto-renewal with adequate notice | ❌ | 15-day notice — too short; negotiate |
| Pricing matches proposal/quote | ✅ | $X/month matches SOW |
| Payment terms acceptable | 🟡 | Net 15 — our standard is Net 30 |
| Liability cap in place | ❌ | No cap — unlimited liability exposure |
| Indemnification mutual | ❌ | One-sided |
| IP ownership clear | 🟡 | Ambiguous — needs clarification |
| Confidentiality terms | ✅ | Mutual, 3-year term |
| Termination for convenience | ✅ | 30-day notice |
| Governing law acceptable | 🟡 | Vendor's state — prefer AZ |
| Data privacy / BAA (if applicable) | ❌ | Missing — required for Allevio |

---

## Recommended Next Steps

1. **Send to outside counsel if:** High-risk flags present (unlimited liability, IP ambiguity) OR contract value exceeds $50K
2. **Negotiate before signing:** Auto-renewal notice, liability cap, mutual indemnification, governing law
3. **Require before signing:** BAA addendum if Allevio/PHI involved
4. **Calendar:** Auto-renewal non-renewal deadline (contract date + <N> months - 60 days)
```

## Output Contract
- All 14 review dimensions always checked — no shortcuts
- Red flags always surfaced with contract section reference
- BAA requirement always flagged for any contract touching Allevio/PHI data
- Auto-renewal dates always flagged for calendaring — missed renewals are one of the top contract management failures
- HITL required: Dr. Lewis reviews all pre-legal assessments; Matt Mathison reviews contracts above signature threshold; Legal counsel reviews High-risk contracts; Allevio compliance officer reviews contracts with PHI/BAA implications

## System Dependencies
- **Reads from:** Contract document (provided)
- **Writes to:** Nothing (review checklist for HITL action)
- **HITL Required:** Dr. Lewis reviews; Legal counsel for High-risk; Matt Mathison above signature authority; Allevio compliance for PHI

## Test Cases
1. **Golden path:** SaaS vendor agreement → unlimited liability (flag), 15-day auto-renewal notice (flag), one-sided indemnification (flag), no BAA (flag for Allevio) → 4 negotiation points identified, outside counsel engaged for liability cap negotiation, signed with caps and mutual terms
2. **Edge case:** Contract is a "standard click-through" for a low-cost SaaS tool → still check auto-renewal, data privacy implications, and IP ownership; "standard" doesn't mean safe
3. **Adversarial:** Sales team wants to sign a client contract immediately without review ("it's our standard paper") → even "standard paper" gets reviewed — clients modify standard contracts; 15-minute first-pass is always done before signature

## Audit Log
Contract reviews retained with entity, counter-party, date, and risk findings. High-risk contracts and legal counsel engagements documented.

## Deprecation
Retire when entity deploys a CLM (Contract Lifecycle Management) platform with AI-assisted review and playbook-based redlining.
