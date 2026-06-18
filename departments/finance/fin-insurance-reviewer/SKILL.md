---
name: fin-insurance-reviewer
description: "Review and manage entity insurance coverage across MBL portfolio. Use when the user says 'insurance review', 'insurance coverage', 'D&O insurance', 'directors and officers', 'EPLI', 'employment practices liability', 'E&O insurance', 'errors and omissions', 'professional liability', 'cyber insurance', 'cyberliability', 'general liability', 'GL insurance', 'workers comp', 'workers compensation', 'umbrella insurance', 'excess liability', 'property insurance', 'commercial property', 'business insurance', 'key man insurance', 'life insurance', 'health insurance', 'benefits', 'check our insurance', 'update our insurance', 'renew insurance', 'insurance renewal', 'insurance gap', 'coverage gap', 'are we covered', 'insurance claim', 'file an insurance claim', 'incident insurance', 'insurance broker', 'insurance policy', 'policy review', 'Allevio insurance', 'HIVE insurance', 'Column6 insurance', 'MBL insurance', or 'healthcare liability'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--coverage-type <do|epli|eo|cyber|gl|wc|umbrella|property|all>] [--action <review|renew|claim|audit|gap-analysis>] [--period <annual|at-renewal>]"
---

# Fin Insurance Reviewer

Review and manage entity insurance coverage across MBL portfolio — ensuring every entity has appropriate coverage for its specific risk profile, that renewals are proactively managed, that coverage gaps are identified and addressed, and that claims are properly filed and tracked. Insurance is risk transfer: the premium is the cost of transferring catastrophic risk to an insurer; the right insurance portfolio means that a major claim (D&O lawsuit; cyber breach; professional liability) doesn't destroy entity value. Each MBL entity has a different risk profile that requires different insurance priorities: Allevio (healthcare regulatory; HIPAA breach; clinical liability); HIVE (property damage; environmental); Column6 (E&O; cyber; IP indemnification).

## When to Use
- Annual: insurance renewal review for all entities (90 days before renewal)
- A new entity is acquired (new insurance setup required)
- An incident occurs that may trigger a claim
- Entity risk profile changes materially (new product; new geography; headcount growth)
- Matt Mathison asks whether entities are adequately covered

## Insurance Review Framework

```
REQUIRED COVERAGE BY ENTITY:

  MBL PARTNERS (Holding Company / GP):
    □ D&O (Directors & Officers): Protects Matt Mathison, Dr. Lewis, and other directors from LP lawsuits
      Recommended limit: $5M-$10M (depends on fund size)
      Key coverage: LP claims; regulatory investigations; breach of fiduciary duty
    □ E&O (Errors & Omissions / Professional Liability): For MBL's advisory and management fee services
      Recommended limit: $2M-$5M
    □ Employment Practices Liability (EPLI): Wrongful termination; discrimination; harassment claims
      Recommended limit: $2M
    □ Cyber Insurance: For MBL's data systems (LP data; entity financial data; email)
      Recommended limit: $2M-$5M (includes breach response)
      
  ALLEVIO (Healthcare / MSO):
    □ D&O: $5M-$10M (healthcare regulatory risk is significant)
    □ Healthcare Professional Liability (Malpractice): For clinical services provided
      Recommended limit: $1M per claim / $3M aggregate (per clinician)
    □ Medical Malpractice Tail Coverage: When a clinician leaves, tail coverage continues
    □ HIPAA/Cyber Insurance: HIPAA breach response; $5M+ recommended for PHI risk
      Key coverage: breach notification costs; OCR investigation costs; patient claims
    □ General Liability: $1M/$2M (standard premises/operations)
    □ EPLI: $2M-$3M (healthcare employment claims are common)
    □ Workers Compensation: State required; limits per state
    □ Umbrella/Excess: $5M above primary limits
    □ E&O: For MSO management and billing services
    
  HIVE PARTNERS (Oil & Gas / Mineral Royalties):
    Note: HIVE is a royalty interest holder, not an operator — risk profile is lower than an E&P company
    □ D&O: $2M-$5M
    □ General Liability: $1M/$2M
    □ EPLI: $2M (if has employees)
    □ Property Insurance: For any physical assets (minimal for a royalty interest company)
    □ Pollution/Environmental: Limited need (royalty holder; operator carries the primary pollution risk)
    □ Umbrella: $5M
    
  COLUMN6/SIPROCAL (CTV / Digital Media):
    □ D&O: $5M
    □ E&O (Media Liability): Essential — covers ad placement errors; intellectual property disputes;
      libel/defamation in ads; copyright infringement claims from agencies
      Recommended limit: $5M-$10M (media E&O claims can be significant)
    □ Cyber Insurance: $5M+ (handles client data; campaign data; IP)
      Key coverage: data breach; ransomware; business interruption
    □ EPLI: $2M
    □ General Liability: $1M/$2M
    □ Workers Compensation: State required
    □ Umbrella: $5M

ANNUAL INSURANCE REVIEW PROCESS:

  TIMING: 90 days before each entity's policy renewal date
  
  STEP 1 — COVERAGE AUDIT:
    □ Pull current policy declarations (dec sheets) for each coverage type
    □ Verify current limits vs. recommended limits above
    □ Verify policy is with a rated carrier (A- or better by AM Best)
    □ Check for exclusions that are non-standard or that gap significant risks
    
  STEP 2 — RISK PROFILE UPDATE:
    Has the entity's risk changed materially since last renewal?
      Revenue growth >25%: consider increasing limits
      New employees (especially in higher-risk roles): update EPLI; WC
      New geographic operations: confirm coverage extends to new jurisdictions
      New product/service: confirm E&O covers the new offering
      
  STEP 3 — MARKET COMPARISON:
    Request competing quotes from at least 2 other brokers for coverage types >$25K annual premium
    Compare: premium; limits; deductibles; exclusions; carrier rating
    
  STEP 4 — BROKER RECOMMENDATION:
    Present renewal options to entity CEO and Dr. Lewis
    Any coverage change (limit increase; new coverage; limit reduction): Dr. Lewis approval
    Premium increase >20%: investigate and consider alternatives
    
  CLAIM PROTOCOL:
    Any incident that may trigger a claim: notify insurance broker immediately
    DO NOT: describe the incident in writing without guidance from counsel/broker
    Dr. Lewis coordinates the claim notification; entity CEO manages the incident
    Matt Mathison notified same day for any claim >$50K estimated; any D&O claim
```

## Output Format

```markdown
# Insurance Review — [Entity Name]
**Renewal date:** [Date] | **Prepared by:** Dr. Lewis | **For:** Entity CEO + Dr. Lewis

---

## Current Coverage Summary

| Coverage type | Carrier | Limit | Deductible | Annual premium | Expires | Adequate? |
|--------------|---------|-------|-----------|--------------|---------|---------|
| D&O | [Carrier] | $[X]M | $[X] | $[X] | [Date] | ✅ / ⚠️ |
| Cyber | [Carrier] | $[X]M | $[X] | $[X] | [Date] | ✅ / ⚠️ |
| E&O | [Carrier] | $[X]M | $[X] | $[X] | [Date] | ✅ / ⚠️ |

**Total annual premium (all coverage):** $[X]

---

## Coverage Gaps / Recommendations

| Issue | Current coverage | Recommended | Estimated annual cost |
|-------|----------------|-------------|----------------------|
| [Cyber limit too low] | $2M | $5M | $[X] increase |
| [No media E&O] | None | $5M | $[X] new coverage |

---

## Renewal Decision

| Coverage | Action | Rationale | Dr. Lewis approval |
|---------|--------|-----------|-------------------|
| D&O | Renew at same limit | No material risk change | ✅ |
| Cyber | Increase to $5M | Revenue growth; new data systems | ✅ |
```

## Output Contract
- No coverage gaps at Allevio HIPAA — Allevio's HIPAA cyber/breach insurance is reviewed with the same intensity as the clinical malpractice coverage; a HIPAA breach at Allevio without adequate cyber insurance (low limit; large deductible; narrow coverage) could expose MBL to millions in breach response costs, OCR penalties, and patient claims; Dr. Lewis confirms annually that Allevio's cyber coverage limit is proportionate to the number of members and the volume of PHI processed; the minimum is $5M for a healthcare entity of Allevio's size; any policy with a PHI exclusion is immediately flagged and remediated
- Claims go through the broker — an incident that may become a claim must be reported to the insurance broker immediately and without a written description of facts until the broker and counsel advise on the claim notification language; incorrect initial claim notifications can create coverage defenses for the insurer; Dr. Lewis coordinates the notification; the entity CEO manages the incident; the insurance broker manages the claim relationship; legal counsel is involved for any D&O or liability claim above $50K
- D&O covers Matt and Dr. Lewis — the D&O policy protects the directors and officers personally from claims related to their decisions as fiduciaries; this includes LP lawsuits, investor claims, and regulatory investigations; if MBL's D&O is not current or has lapsed, Matt Mathison and Dr. Lewis have personal exposure; this is not a negotiable coverage — it is always current and the limit is reviewed annually against the fund size and entity revenue
- HITL required: any coverage change (new coverage; limit increase; limit reduction) requires Dr. Lewis approval; premium increases >20% trigger a competitive bid; any actual or potential claim notified to broker immediately and Matt Mathison same day for claims >$50K or any D&O claim; D&O policy renewal reviewed by Matt Mathison annually; new entity insurance setup (post-acquisition) is a Day 1 priority — entity is not fully operational until insurance is confirmed in place; Allevio HIPAA cyber coverage reviewed by Dr. Lewis + Allevio Privacy Officer annually

## System Dependencies
- **Reads from:** Policy declarations (dec sheets) from all entity insurance brokers (SharePoint → Finance → [Entity] → Insurance → [YYYY]); entity risk profile data (headcount; revenue; operations geography); fin-compliance-calendar (insurance renewal dates); exec-cfo-oversight (insurance premium as an expense line)
- **Writes to:** Insurance review reports (SharePoint → Finance → [Entity] → Insurance → [YYYY] → Review); claim records (SharePoint → Finance → [Entity] → Insurance → Claims); renewal decisions; Matt Mathison notifications (D&O claims; coverage gaps); fin-compliance-calendar (insurance renewal dates maintained)
- **HITL Required:** Coverage changes → Dr. Lewis approval; D&O policy renewal → Matt Mathison review; claims >$50K → Matt notification same day; any D&O claim → Matt notification same day; HIPAA cyber coverage → Dr. Lewis + Privacy Officer; new entity insurance → Day 1 priority (Dr. Lewis confirms in place); all claim notifications coordinated through broker and counsel

## Test Cases
1. **Golden path:** Annual insurance review; Column6 renewal in 90 days; current coverage: D&O $5M; E&O (media liability) $5M; cyber $3M; EPLI $2M; GL $1M/$2M; WC current. Risk profile update: Column6 revenue up 38% YOY; added 4 employees in NYC; launched gaming vertical (new category of media placement). Recommendations: (1) increase cyber to $5M (revenue growth + gaming platform data); (2) confirm E&O covers gaming placement (media liability for gaming ads — confirm with broker); (3) add NYC workers comp endorsement. Estimated additional premium: $8,400/year. Dr. Lewis approval: all changes approved. Entity CEO briefed. Broker engaged for renewal quote.
2. **Edge case:** Allevio has a cyber incident — a phishing email led to an employee's email being compromised for 3 days, during which some member appointment scheduling information may have been in the email → Dr. Lewis: "Stopping everything. This is a potential HIPAA breach incident. Here's the immediate sequence: (1) I'm calling Allevio's cyber insurance broker in the next 30 minutes — do not send any written description of this incident until I've spoken to the broker and counsel; (2) Allevio's Privacy Officer is being notified now — they will lead the breach risk assessment; (3) Matt Mathison is being notified today — this is a potential HIPAA breach event; (4) IT must preserve the email logs and take the compromised account offline immediately; (5) we do not notify members until the breach risk assessment is complete (HIPAA allows up to 60 days; premature notification without completing the assessment is also a compliance issue). I'll coordinate with the broker and Privacy Officer and give you a status update by end of day."
3. **Adversarial:** Entity CEO wants to reduce D&O coverage from $5M to $2M to save $12K in premium → Dr. Lewis: "I can't recommend this reduction, and here's why: D&O coverage protects you personally, Matt Mathison personally, and Dr. Lewis personally against LP claims, investor lawsuits, and regulatory investigations. A $2M limit sounds large, but a securities lawsuit by a single LP (claiming misrepresentation or breach of fiduciary duty) can generate legal defense costs of $500K-$2M before settlement — and if it settles, the settlement is typically additional. A $2M policy could be entirely consumed by defense costs alone, leaving zero for any settlement. D&O coverage is the one insurance line I will not reduce at any portfolio entity, regardless of the premium savings. The $12K savings is not worth the personal exposure. If we need to reduce total insurance spend, let's look at adjusting GL deductibles or other less-critical lines."

## Audit Log
Annual insurance review reports retained. Policy declarations retained for each policy year. Premium history retained. Claim records retained permanently (with outcome). Coverage change authorization records. Matt Mathison notification records (D&O claims; coverage gaps). HIPAA breach incident records (permanent — HIPAA requirement).

## Deprecation
Retire when MBL has a dedicated Risk Manager or Operations Manager who manages the insurance portfolio — with Dr. Lewis reviewing D&O coverage and HIPAA cyber coverage annually and Matt Mathison retaining awareness of D&O policy status and any material claims.
