---
name: supplier-contract-reviewer
description: "Review and redline supplier contracts and MSAs. Use when the user says 'review this contract', 'supplier contract review', 'redline this agreement', 'what are the risks in this contract', 'MSA review', 'vendor agreement', 'contract terms', 'supplier agreement review', 'review the vendor contract', or 'what should I change in this contract'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--contract-type <msa|sow|nda|license>] [--entity <MBL|Allevio|HIVE|Column6>]"
---

# Supplier Contract Reviewer

Review supplier contracts for risk, missing protections, and non-standard terms — then produce a redline priority list and negotiation position. Supplier contracts protect MBL from service failures, price increases, liability exposure, and data breaches. Most supplier contracts are written to protect the supplier, not the buyer. This skill identifies where the contract is unfavorable and what to push back on.

## When to Use
- Receiving a supplier's standard contract for a new engagement
- Contract renewal — reviewing for unfavorable terms before signing
- New portfolio company has existing contracts that need risk assessment
- Any contract with Allevio that involves patient data (must include HIPAA BAA)
- Dr. Lewis reviewing before Matt Mathison signs

**Note:** This skill is a first-pass business review, not legal advice. Any contract >$50K, involving IP ownership, HIPAA, or personal liability, must be reviewed by legal counsel before signing.

## Contract Review Checklist

```
Standard review scope:
  1. Parties and authorized signatories — correct legal entities?
  2. Term and auto-renewal — how long; how to exit; auto-renewal trap?
  3. Pricing and escalation — fixed or variable; escalation cap?
  4. Payment terms — Net 30? Penalties for late payment?
  5. Scope of work / deliverables — specific enough to enforce?
  6. Acceptance criteria — how is completion defined?
  7. Termination rights — can we exit for convenience? Notice period?
  8. Limitation of liability — capped at what amount?
  9. Indemnification — who indemnifies whom for what?
  10. IP ownership — who owns work product?
  11. Data and confidentiality — what data is shared? Who can use it?
  12. HIPAA BAA — included if PHI is involved? (Allevio: mandatory)
  13. Insurance requirements — minimums specified?
  14. Governing law and disputes — which state? Arbitration or litigation?
  15. SLAs and penalties — are they enforceable? Credits adequate?
```

## Output Format

```markdown
# Supplier Contract Review — <Supplier Name>
**Date:** <date> | **Reviewer:** Dr. John Lewis
**Contract type:** MSA / SOW / License Agreement / NDA
**Supplier:** <name> | **Entity:** <MBL / Allevio / HIVE / Column6>
**Contract value:** $X/year | **Term:** <N years>
**Legal counsel required:** Yes (>$50K / HIPAA / IP) / No

---

## Bottom Line

**Recommendation:** Sign as-is / Sign with redlines / Do not sign — escalate to legal
**Risk level:** High / Medium / Low

**Critical issues (must fix before signing):**
1. [Issue: No HIPAA BAA — Allevio clinical data involved; BAA is legally required]
2. [Issue: Unlimited liability cap — we need a liability cap at contract value]
3. [Issue: Auto-renewal with 6-month notice — we may be locked in; reduce to 30 days]

---

## Detailed Review

### 1. Parties & Authorization

| Item | Contract text | Assessment | Action |
|------|-------------|-----------|--------|
| Correct legal entity | "MBL Partners, Inc." | ✅ Correct | None |
| Authorized signatory | "VP of Operations" | ❌ Wrong — must be Matt Mathison or Dr. Lewis per authority matrix | Fix before signing |

### 2. Term & Auto-Renewal

| Item | Contract text | Assessment | Action |
|------|-------------|-----------|--------|
| Initial term | 2 years | ✅ Acceptable | None |
| Auto-renewal | Renews automatically for 1-year terms | ⚠️ Acceptable if notice period is short | See below |
| Notice to cancel | 180 days before renewal | ❌ 6 months is excessive — we may miss the window | Redline: 30 days |

### 3. Pricing & Escalation

| Item | Contract text | Assessment | Action |
|------|-------------|-----------|--------|
| Year 1 price | $X | ✅ | None |
| Price escalation | "At vendor's discretion" | ❌ Unlimited escalation risk | Redline: CPI + max 5%/year |
| Volume discounts | None | ⚠️ Opportunity | Negotiate: 10% at $X volume |

### 4. Termination Rights

| Item | Contract text | Assessment | Action |
|------|-------------|-----------|--------|
| Termination for cause | Yes — 30 days cure | ✅ | None |
| Termination for convenience | None | ❌ We cannot exit without cause; trapped | Redline: Add T4C with 60-day notice |
| Early termination fee | 100% remaining contract value | ❌ Excessive | Redline: Max 25% of remaining value |

### 5. Limitation of Liability

| Item | Contract text | Assessment | Action |
|------|-------------|-----------|--------|
| Liability cap | Uncapped ("full extent of law") | ❌ Critical — unlimited liability exposure | Redline: Cap at 2× annual contract value |
| Consequential damages | Supplier excluded; we are not | ❌ Asymmetric — we need mutual exclusion | Redline: Mutual exclusion |

### 6. HIPAA BAA (Allevio only)

| Item | Contract text | Assessment | Action |
|------|-------------|-----------|--------|
| BAA included | No BAA in contract | ❌ CRITICAL — Allevio PHI involved; BAA is legally required | Demand BAA before signing |

### 7. Data & Confidentiality

| Item | Contract text | Assessment | Action |
|------|-------------|-----------|--------|
| Confidentiality | 2-year term | ⚠️ Trade secrets should be indefinite | Redline: Indefinite for trade secrets |
| Data ownership | "Supplier may use anonymized data" | ❌ Our data is being used for their purposes | Redline: No use of our data for any purpose |
| Security requirements | General ("industry standard") | ⚠️ Vague; unenforceable | Redline: SOC 2 Type II certification required |

---

## Redline Priority List

| # | Priority | Clause | Issue | Requested change |
|---|---------|--------|-------|-----------------|
| 1 | 🔴 Critical | HIPAA BAA | No BAA; Allevio PHI in scope | Execute BAA before signing |
| 2 | 🔴 Critical | Liability cap | Uncapped | Cap at 2× annual contract value |
| 3 | 🔴 Critical | Termination for convenience | None | 60-day notice T4C |
| 4 | 🟡 High | Auto-renewal notice | 180 days | Reduce to 30 days |
| 5 | 🟡 High | Price escalation | "At discretion" | CPI + max 5%/year |
| 6 | 🟡 High | Data use | Supplier using our data | No use clause |
| 7 | 🟢 Medium | Security | "Industry standard" | SOC 2 Type II |
| 8 | 🟢 Medium | Confidentiality term | 2 years | Indefinite for trade secrets |

---

## Escalate to Legal Counsel Before Signing

Legal review required because: [Contract value >$50K / HIPAA BAA required / IP ownership clauses]

Issues to highlight for legal: [liability cap, indemnification asymmetry, data use clause]
```

## Output Contract
- Bottom line always first — BLUF; what's the recommendation before the details
- Critical issues always separated from nice-to-haves — three critical redlines are more actionable than twelve items of equal weight
- HIPAA BAA always explicitly reviewed for any Allevio contract — this is a legal requirement, not a negotiating point
- Liability cap always evaluated — uncapped liability is the most common catastrophic contract exposure
- Legal counsel escalation always flagged for >$50K, HIPAA, or IP — this skill is a business pre-screen, not legal counsel
- HITL required: Dr. Lewis reviews; Matt Mathison reviews and approves signing for >$25K contracts; legal counsel reviews before signing for >$50K or HIPAA/IP; contract signing by authorized signatory only

## System Dependencies
- **Reads from:** Supplier contract (uploaded or provided); existing MSA framework (SharePoint/Legal)
- **Writes to:** Contract review memo (SharePoint/Legal/Contracts); redline document
- **HITL Required:** Dr. Lewis reviews; Matt Mathison approves; legal counsel (>$50K / HIPAA / IP); authorized signatory signs

## Test Cases
1. **Golden path:** Review AdvancedMD EHR contract for Allevio → 3 critical issues: no BAA (demand before signing), unlimited liability (cap at 2× contract value), no T4C (add 60-day notice); 4 high issues; recommend: do not sign without critical redlines; send redline list to AdvancedMD; HIPAA BAA executed separately; critical issues resolved; Dr. Lewis approves revised contract; Matt Mathison signs
2. **Edge case:** Contract is for a small vendor ($3K/year) and legal review is expensive → right-size the review; for low-value, low-risk contracts use the checklist approach without engaging legal; critical items still apply (liability cap, termination rights); accept more risk for contracts where the downside is bounded by the contract value
3. **Adversarial:** Vendor refuses to negotiate any terms ("our contract is standard") → "standard" means "favorable to us"; every contract is negotiable; the supplier's willingness to negotiate is itself a signal about the relationship; for critical redlines (BAA, liability cap, T4C), these are not optional — if the supplier won't agree to a BAA for a HIPAA-covered engagement, disqualify them; if they won't negotiate at all on a $100K contract, that's a relationship risk

## Audit Log
Contract review memos retained. Executed contracts in SharePoint/Legal/Contracts. Redline decisions documented. Escalation to legal documented with outcome.

## Deprecation
Retire when MBL has in-house legal counsel or a CLM (Contract Lifecycle Management) platform with pre-approved contract templates and automated redline generation.
