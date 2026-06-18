---
name: legal-insurance-coverage-reviewer
description: "Review and maintain insurance coverage for MBL portfolio companies. Use when the user says 'insurance', 'insurance coverage', 'D&O insurance', 'directors and officers insurance', 'general liability', 'E&O insurance', 'errors and omissions', 'cyber insurance', 'professional liability', 'workers comp', 'property insurance', 'business insurance', 'coverage review', 'policy renewal', 'insurance audit', 'adequate coverage', 'coverage gaps', 'insurance claim', 'policy limits', 'EPLI', 'employment practices liability', 'umbrella policy', or 'insurance procurement'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <review|renew|claim|audit>] [--coverage-type <do|gl|cyber|workers-comp|epli|property|all>]"
---

# Insurance Coverage Reviewer

Review and maintain insurance coverage for MBL portfolio companies — ensuring that each entity has appropriate coverage for its industry, scale, and risk profile, and that coverage gaps do not leave MBL exposed. Insurance is the backstop for legal risk: a $500K employment discrimination claim is manageable with EPLI insurance; without it, $500K comes directly from the company's cash. Dr. Lewis conducts annual insurance reviews, manages renewals, and coordinates with MBL's insurance broker on coverage adjustments.

## When to Use
- Annual insurance renewal season (30-60 days before policy expiration)
- A portfolio company's operations change materially (new state, new service line, more employees)
- A vendor contract requires the company to maintain specific coverage (confirm compliance)
- A claim is filed against a portfolio company
- Dr. Lewis is assessing the company's total risk exposure

## Insurance Coverage Framework

```
REQUIRED COVERAGE BY ENTITY:

  ALL PORTFOLIO COMPANIES (Allevio, HIVE, Column6):
    General Liability (GL):
      Coverage: Third-party bodily injury, property damage, personal injury claims
      Minimum limit: $1M per occurrence / $2M aggregate
      Need: Any business with physical operations, vendors, or visitors
      
    Directors & Officers (D&O):
      Coverage: Personal liability of directors and officers for management decisions
      Minimum limit: $1M (current scale); $2-5M as companies grow toward exit
      Need: Mandatory for PE-backed companies — Matt Mathison and Dr. Lewis are exposed as officers/directors
      Note: D&O coverage protects individuals; company indemnification is separate
      
    Employment Practices Liability (EPLI):
      Coverage: Wrongful termination, discrimination, harassment, retaliation claims
      Minimum limit: $1M per claim
      Need: Any company with employees — employment claims are the #1 litigation risk for SMBs
      Note: Most EPLI policies cover both employer and individual manager claims
      
    Cyber Liability:
      Coverage: Data breach costs; regulatory fines; cyber extortion; business interruption
      Minimum limit: $1M (Allevio: $2M+ given PHI exposure; Column6: $1M+ given audience data)
      Need: Any company with electronic data or systems (all portfolio companies)
      
  ALLEVIO-SPECIFIC:
    Professional Liability (Medical Malpractice — E&O):
      Coverage: Claims arising from professional healthcare services
      Minimum limit: $1M per claim / $3M aggregate
      Note: MSO structure — confirm whether Allevio's liability exposure is at the MSO or physician level
      Required by: Most employer group contracts; credentialing requirements
      
    HIPAA-Related Coverage:
      Many cyber policies now include HIPAA breach response coverage
      Confirm: Does the cyber policy cover HHS notification costs, OCR fines, credit monitoring?
      
  HIVE-SPECIFIC:
    Energy Package Policy (Oil & Gas):
      Coverage: Well control, seepage/pollution, sudden & accidental environmental, property damage
      Minimum limit: $2M per occurrence / $5M aggregate (Uinta Basin operations)
      Need: Mandatory for any O&G operator with lending or royalty agreements
      
    Environmental Liability:
      Coverage: Gradual pollution and environmental remediation
      Minimum limit: $1M (given EPA/DAQ regulatory exposure in Uinta Basin ozone non-attainment area)
      Note: Energy package may not cover gradual pollution — confirm coverage scope
      
    Well Completion Coverage:
      Coverage: Cost to control a well blowout or completion event
      Minimum limit: Commensurate with well costs
      
  COLUMN6-SPECIFIC:
    Media Liability (E&O):
      Coverage: Copyright infringement, defamation, advertising injury claims from ad content
      Minimum limit: $1M per claim
      Need: Any CTV or digital advertising company; agency contracts often require it
      
    Technology E&O:
      Coverage: Errors in ad serving technology; platform failures; data claims
      Minimum limit: $1M per claim
      Need: Technology-based ad platform

INSURANCE REVIEW PROCESS:
  Annual review steps:
  1. Obtain all current policy declarations pages (all entities, all policies)
  2. Compare limits to current revenue and headcount (coverage should scale)
  3. Check vendor contract requirements: Are any contracts requiring limits we don't have?
  4. Review claims history: Did any claims affect next year's coverage availability or pricing?
  5. Broker briefing: Review changes in operations; request coverage for new exposures
  6. Renewal decision: Renew in-place; adjust limits; shop coverage for better pricing
  
  Coverage gap identification:
    A "gap" is any scenario where the company has a plausible exposure but no coverage:
      Cyber incident + no cyber policy → gap
      Key employee departs + no key person life insurance → gap (evaluate if material)
      Company vehicle accident + no commercial auto → gap (if employees drive for company purposes)
      
  Umbrella / Excess Liability:
    Purpose: Extends primary limits when they are exhausted
    Rule of thumb: As company approaches $5M+ revenue, consider $5-10M umbrella on top of primary GL
```

## Output Format

```markdown
# Insurance Coverage Review — [Entity]
**Reviewed by:** Dr. Lewis | **Date:** [Date] | **Renewal dates:** [List]
**Current broker:** [Broker name]

---

## Coverage Summary

| Coverage | Carrier | Limit | Premium | Expires | Status |
|---------|---------|-------|---------|---------|--------|
| General Liability | [Carrier] | $1M/$2M | $[X]K | [Date] | ✅ / ⚠️ Renew |
| D&O | [Carrier] | $1M | $[X]K | [Date] | ✅ / ⚠️ Renew |
| EPLI | [Carrier] | $1M | $[X]K | [Date] | ✅ |
| Cyber | [Carrier] | $1M | $[X]K | [Date] | ⚠️ Increase to $2M — Allevio PHI |
| Professional/E&O | [Carrier] | $1M/$3M | $[X]K | [Date] | ✅ |

---

## Coverage Gaps

| Gap | Risk | Action | Priority |
|----|------|--------|---------|
| [Cyber limit at $1M — Allevio PHI exposure warrants $2M] | High | Increase limit at renewal | High |
| [No D&O tail coverage planned] | Medium | Discuss D&O tail with M&A counsel if exit pending | Medium |

---

## Vendor Contract Requirements

| Vendor/Contract | Required Coverage | Current Coverage | Gap? |
|----------------|-----------------|----------------|------|
| [Marshall Medical] | $1M GL | $1M GL ✅ | No |
| [Agency contract — Column6] | $1M Media Liability | $1M ✅ | No |

---

## Renewal Actions

| Policy | Renewal Date | Action | Deadline | Owner |
|--------|------------|--------|---------|-------|
| Allevio GL | [Date] | Renew; increase cyber limit | 30 days before | Dr. Lewis |
```

## Output Contract
- D&O coverage protects Matt Mathison and Dr. Lewis personally — D&O insurance covers the personal liability of directors and officers for decisions made in their management role; Matt Mathison and Dr. Lewis are exposed as principals and advisors to the portfolio companies; a lawsuit naming them personally (common in employment claims, creditor disputes, and M&A transactions) is covered by D&O; without D&O, they are personally exposed; Dr. Lewis treats D&O as a non-negotiable line item for every portfolio company
- Coverage must match operations — insurance coverage that was appropriate for a $500K revenue company is not appropriate for a $2M revenue company with 15 employees; as portfolio companies grow, Dr. Lewis adjusts coverage at each annual renewal; the adjustment criteria: revenue (GL and professional liability scale with revenue); headcount (EPLI scales with headcount); data volume (cyber scales with data); new service lines or geographies trigger coverage review mid-cycle, not just at renewal
- Policy exclusions are the fine print — Dr. Lewis reviews policy exclusions, not just limits; a cyber policy that excludes "acts of war" (which many policies apply to nation-state cyberattacks) may not cover the most likely large-scale cyber events; a D&O policy that excludes "intentional acts" and defines "intentional" broadly may not cover the decisions most likely to generate claims; Dr. Lewis reads the exclusions before renewing and confirms that the exclusions do not eliminate coverage for the company's specific risk profile
- HITL required: Dr. Lewis reviews coverage and recommends adjustments; CEO confirms operational facts (headcount, revenue, new services, new states) for accurate coverage placement; Matt Mathison approves total insurance spend as part of the annual budget; any insurance claim is reported to the broker immediately and Dr. Lewis manages the claim process; Dr. Lewis does not make coverage decisions unilaterally — the CEO confirms the operational context and Matt Mathison approves the budget; broker places coverage

## System Dependencies
- **Reads from:** Current policy declarations pages (all entities, all coverages — SharePoint/Legal/<Company>/Insurance/); vendor contracts with insurance requirements (legal-contract-tracker); employee headcount (hr-headcount-planner); revenue and financial data (fpa-annual-budget-builder — for scaling decisions); Allevio HIPAA risk assessment (for cyber coverage sizing); HIVE environmental and permit records (for energy package coverage sizing); any pending or threatened claims
- **Writes to:** Insurance coverage summary (SharePoint/Legal/MBL/Insurance/[Year]_CoverageReview.pdf); renewal checklist and instructions (to broker); coverage gap log; Matt Mathison annual insurance budget summary; claim notification to broker (SharePoint/Legal/<Company>/Insurance/Claims/); vendor contract insurance requirements compliance confirmation
- **HITL Required:** Dr. Lewis reviews and recommends; CEO confirms operational details for accurate placement; broker places coverage; Matt Mathison approves annual insurance budget; any claim notification goes to broker same day as the claim event is discovered; Dr. Lewis does not manage coverage placement directly — the broker handles placement with carriers; Dr. Lewis manages the relationship with the broker and provides the operational context

## Test Cases
1. **Golden path:** Annual insurance renewal for Allevio in September → Dr. Lewis pulls all policy declarations; confirms expiration dates; schedules broker review meeting; briefs broker: headcount grew from 8 to 14 (EPLI limit should increase from $1M to $1.5M); revenue grew to $1.25M (GL limits adequate; professional liability adequate); PHI handling remains at same scale (cyber limit adequate at $1M); broker confirms no claims in prior year (favorable for renewal pricing); broker quotes: EPLI increased limit adds $1.8K to premium; all other coverages at same or reduced premium (claims-free discount); Dr. Lewis reviews quotes; recommends acceptance; CEO approves; coverage confirmed at renewal
2. **Edge case:** Column6 wins a large agency holding company relationship — the agency's Master Services Agreement requires Column6 to maintain $2M per claim Media Liability and $1M per claim Technology E&O, and to name the agency as an "additional insured" on the GL policy → Dr. Lewis reviews against current coverage: Column6 has $1M Media Liability and $1M Tech E&O — Media Liability is below the $2M requirement; GL does not currently list the agency as additional insured; Action: (1) Contact broker to increase Media Liability to $2M (effective before the contract executes); (2) Add the agency as additional insured on the GL policy (standard endorsement; broker can issue within 24-48 hours); (3) Certificate of Insurance issued to the agency confirming coverage; (4) Contract executed only after coverage confirmations are in hand; total additional premium ~$3.2K/year — approved by CEO and included in the contract negotiation (cost of winning the relationship)
3. **Adversarial:** HIVE receives a notice from the EPA about a potential VOC emission event during a completion operation — the notice asks for production and operational records → Dr. Lewis immediate steps: (1) Notify the insurance carrier (energy package + environmental liability) immediately — carrier must be notified promptly of potential claims events, or coverage may be denied; (2) Do not respond to EPA without O&G counsel and the carrier's claim counsel; (3) Preserve all records related to the completion operation; (4) Matt Mathison notified same day; (5) Coordinate with O&G counsel and the carrier — they may have a panel counsel for environmental regulatory matters; (6) The carrier's response to the notification will determine whether coverage applies and what support the carrier provides; Dr. Lewis ensures the carrier is notified before any regulatory response is prepared

## Audit Log
All policy declarations pages retained by entity and year. Renewal decisions retained. Coverage gap analyses retained. Claim notifications retained (date of claim event; date of carrier notification; outcome). Broker correspondence retained. Vendor insurance requirement compliance confirmations retained. D&O tail coverage decisions retained (for any planned or executed exit).

## Deprecation
Retire when each portfolio company has a dedicated risk manager or CFO who manages insurance procurement — with Dr. Lewis reviewing D&O and cyber coverage at the portfolio level and Matt Mathison approving the annual insurance budget.
