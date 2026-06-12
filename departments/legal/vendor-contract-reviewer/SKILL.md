---
name: vendor-contract-reviewer
description: "Review vendor and supplier contracts. Use when the user says 'vendor contract', 'vendor agreement', 'supplier contract', 'SaaS agreement', 'software agreement', 'service agreement', 'MSA review', 'vendor terms', 'vendor renewal', 'vendor negotiation', 'SLA review', or 'vendor contract terms'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--vendor <name>] [--contract-type <SaaS|MSA|services|hardware>] [--mode <review|negotiate|renew>]"
---

# Vendor Contract Reviewer

Review vendor and supplier contracts for MBL portfolio companies. Vendor contracts often contain provisions that significantly favor the vendor — auto-renewal clauses, unlimited liability on the customer, IP ownership grabs, and data rights that allow vendors to use your data for their own purposes. A pre-legal first-pass review catches the most significant issues before outside counsel engagement. This skill provides that first-pass review.

## When to Use
- Reviewing a new vendor contract before signing
- Vendor renewal — has anything changed from prior year?
- Vendor requests a significant amendment
- SaaS/software agreement review
- Reviewing a Master Services Agreement (MSA) before any project begins

## Key Provisions to Flag

| Provision | Watch For | Risk If Missed |
|---------|---------|--------------|
| **Auto-renewal clause** | Silent renewal, inadequate notice period (< 60 days) | Locked into unwanted renewal |
| **Liability cap** | Vendor liability capped at 1 month's fees — inadequate for data breach | No recovery for vendor breach |
| **Indemnification** | One-sided indemnification (customer bears all indemnity obligations) | Company bears vendor's legal fees |
| **Data rights** | Vendor can use your data for their "service improvement" — may include training AI | Proprietary data used without consent |
| **IP ownership** | Custom work done by vendor belongs to vendor | Can't use what you paid for without license |
| **Termination for convenience** | Only vendor can terminate; company locked in | No exit without breach |
| **Dispute resolution** | Mandatory arbitration, inconvenient jurisdiction | Expensive dispute resolution |
| **SLA / remedies** | Service credits only — no right to terminate for SLA failure | No meaningful remedy for poor performance |
| **Subcontractors** | Vendor can freely subcontract without notice | PHI or confidential data shared with unknown parties |
| **Price escalation** | Uncapped annual price increases | Budget exposure |

## Output Format

```markdown
# Vendor Contract Review — <Vendor Name>
**Date:** <date> | **Entity:** <name>
**Vendor:** <name> | **Contract type:** SaaS / MSA / Professional Services
**Contract value:** $<amount/year> | **Term:** <length>
**Reviewed by:** Dr. John Lewis (pre-legal first pass)

---

## Executive Summary

**Overall assessment:** Low risk / Moderate risk / High risk — negotiate before signing
**Key findings:** <2-3 sentences>
**Recommendation:** Sign as-is / Negotiate specific terms / Require legal review / Do not sign

---

## Provision Analysis

| Provision | Location in Contract | Current Terms | Assessment | Requested Change |
|---------|------------------|-------------|---------|----------------|
| Auto-renewal | Section 8.2 | 30-day cancellation notice | 🟡 Short notice — easy to miss | Request 60-day notice |
| Liability cap | Section 12.1 | Capped at 3 months' fees | 🔴 Inadequate for data breach | Request 12 months' fees or $1M minimum |
| Data rights | Section 6.3 | Vendor can use data for "product improvement" | 🔴 Proprietary data risk | Request: no use of data beyond service delivery; no AI training on our data |
| Indemnification | Section 11 | Mutual indemnification | ✅ Market standard | None |
| IP ownership (custom work) | Section 7.1 | Work product belongs to vendor | 🔴 Can't use what we paid for | Request work-for-hire; customer owns all custom work |
| Termination for convenience | Section 9.3 | 90-day notice by either party | ✅ | None |
| Dispute resolution | Section 15 | AAA arbitration, New York venue | 🟡 Inconvenient if dispute | Request Arizona venue or remote/video arbitration |
| SLA — remedies | Exhibit B | Service credits only | 🟡 No meaningful remedy | Request right to terminate for repeated SLA failure |
| Subcontractors | Section 3.4 | Free to subcontract with notice | 🟡 Notice only | Request prior written approval for subcontractors handling our data |
| Price escalation | Section 8.4 | Annual increases capped at 5% | ✅ | None |

---

## Critical Issues (Must Negotiate Before Signing)

### 1. Data Rights — AI Training
**Current language:** "Vendor may use Customer data to improve Vendor's products and services."
**Risk:** This language allows vendor to train AI models on your data — including confidential business data, PHI, or trade secrets.
**Required change:** "Vendor shall not use Customer data for any purpose other than providing the Services. Vendor shall not use Customer data to train machine learning models or artificial intelligence systems without Customer's prior written consent."

### 2. IP Ownership — Custom Development
**Current language:** "All work product, deliverables, and developments created by Vendor shall be the exclusive property of Vendor."
**Risk:** If you're paying for custom software or integrations, you have no rights to the output without a license.
**Required change:** "All work product and deliverables created specifically for Customer shall be works made for hire. To the extent any deliverable is not a work made for hire, Vendor assigns all rights, title, and interest to Customer."

### 3. Liability Cap — Inadequate for Data Breach
**Current language:** Vendor liability capped at "fees paid in the 3 months preceding the claim."
**Risk:** A data breach involving PHI could result in HHS OCR fines of $1M+ and class action — recovery from vendor is capped at $7,500 for a $2,500/month contract.
**Required change:** Cap of at least 12 months' fees, with exception for data breach, willful misconduct, or gross negligence.

---

## Negotiation Priority Matrix

| Issue | Business Impact | Negotiability | Priority |
|-------|------------|-------------|---------|
| AI data training rights | High — proprietary data risk | Usually negotiable | Must-have |
| IP ownership (custom work) | High — if custom dev | Usually negotiable | Must-have |
| Liability cap increase | High | Negotiable to 12 months | Should-have |
| Venue change | Low | Usually negotiable | Nice-to-have |

---

## HIPAA / Data Privacy Checklist (If Vendor Handles PHI or EU Data)

- [ ] BAA required (HIPAA)? → ❌ / ✅ — execute before any PHI shared
- [ ] DPA required (GDPR)?  → ❌ / ✅ — execute if EU personal data
- [ ] Data residency — is data stored in US? → ✅ / ❌ — confirm if PHI
- [ ] Subprocessors — are they listed and accepted? → ✅ / ❌
```

## Output Contract
- AI data training rights always flagged in SaaS agreements — this is the highest-risk provision for 2025 and beyond
- Liability cap always flagged as insufficient when it's below 12 months' fees — especially for data-handling vendors
- IP ownership always checked for any agreement involving custom development or integration work
- BAA always checked if vendor may touch Allevio PHI
- HITL required: Dr. Lewis reviews all contracts above $10K; outside counsel reviews contracts above $50K or with critical issues; Matt Mathison approves contracts above $100K; no contract signed without Legal clearance for PHI-involved vendors

## System Dependencies
- **Reads from:** Vendor contract (provided)
- **Writes to:** Contract review report and redlined version (for outside counsel if needed, then for signatory)
- **HITL Required:** Dr. Lewis reviews; outside counsel for material issues or high-value contracts; Matt Mathison approves above threshold

## Test Cases
1. **Golden path:** New SaaS vendor for Allevio (HIPAA) → review identifies: AI data training clause (negotiate out), liability cap at 3 months (request 12), BAA missing (require before signing), subcontractor list not disclosed (require); all 4 issues negotiated, BAA executed, contract signed
2. **Edge case:** Vendor says "this is our standard contract, we don't negotiate" → for large vendors (Microsoft, Salesforce) this may be true for their standard terms; however: (a) Microsoft has a HIPAA BAA available separately, (b) enterprise agreements often have negotiable terms, (c) if the vendor truly won't negotiate, assess whether the critical provisions create unacceptable risk — for PHI vendors, no negotiation = no deal
3. **Adversarial:** Finance team wants to sign a contract immediately because "the vendor needs it by EOD" → artificial urgency is a vendor negotiation tactic; take the time required for review; a contract signed under time pressure with a bad liability cap or data rights clause is a risk that lasts the full contract term

## Audit Log
All reviewed contracts retained with review date and reviewer. Negotiation history retained. Signed contracts in contract lifecycle tracker.

## Deprecation
Retire when entity deploys contract management software (Ironclad, Conga) with automated contract review and standard playbook enforcement.
