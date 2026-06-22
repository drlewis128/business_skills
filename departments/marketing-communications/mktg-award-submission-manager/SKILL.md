---
name: mktg-award-submission-manager
description: "Manage industry award submissions for MBL Partners portfolio entities. Use when the user says 'award submission', 'industry award', 'submit for an award', 'nominate for an award', 'award nomination', 'award program', 'apply for award', 'award application', 'best employer award', 'best workplace award', 'employer of the year', 'business of the year', 'fastest growing company', 'Inc 5000', 'Inc. 5000', 'best place to work', 'top employer', 'industry recognition', 'recognition program', 'Phoenix Business Journal', 'Phoenix Business Journal award', 'Arizona Business awards', 'AdExchanger award', 'IAB award', 'programmatic award', 'healthcare award', 'oil and gas award', 'MGMA award', 'deal of the year', 'PE award', 'ACG award', 'NVCA award', 'apply for recognition', or 'how do we win an award'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--award <specific-award-name>] [--action <research|apply|track|report>]"
---

# Marketing Award Submission Manager

Research, plan, and execute award submissions for MBL Partners portfolio entities — identifying relevant industry recognition programs, building strong submissions, and converting awards into marketing proof points. Awards build third-party credibility; a "Best Employer in Arizona" recognition or an IAB certification is social proof that no company-produced content can replicate.

## When to Use
- Identifying which awards are worth pursuing for an entity this year
- Building an award submission application
- Tracking the status of submitted award applications
- Converting a won award into marketing and PR value

## Award Submission Framework

```
PRIORITY AWARDS BY ENTITY:

  ALLEVIO:
    Business/Employer Recognition:
      Phoenix Business Journal "Best Places to Work" — covers AZ employer culture and employee satisfaction; Allevio participates if employee count qualifies and culture metrics support submission
      AZBusiness Magazine awards — "AZBusiness Leaders"; "Most Admired Companies"
      Arizona's Most Innovative Companies (various programs)
    Healthcare-Specific:
      MGMA Most Admired Medical Group (if applicable to MSO category)
      Arizona Health Care Cost Containment System (AHCCCS) recognition (if relevant to Allevio model)
    HIPAA: any award submission that includes case studies or employer outcome data → Dr. Lewis HIPAA review; no PHI; employer-aggregate data only; employer written permission for any named employer data in submission
    
  COLUMN6:
    Programmatic/CTV Industry:
      AdExchanger Awards: "Best Use of CTV"; "Best Technology Platform"; "Best Innovation in Programmatic"
      Digiday Technology Awards: "Best Programmatic Platform"
      IAB Mixx Awards: brand safety; CTV measurement excellence
      Campaign US (technology and performance categories)
    Business Recognition:
      Phoenix Business Journal "Best Places to Work" (local recognition; culture)
    Data requirement: all Column6 award submissions require documented performance data (VCR; IVT; delivery); no client campaign data without written permission; Column6 self-serve CTV campaign data can be used freely
    
  HIVE PARTNERS:
    Energy-Specific:
      Hart Energy "Exceptional Operators" or similar recognition (environmental stewardship; safe operations)
      Utah Business "Best Companies to Work For" (if employee count qualifies)
    Landowner Relations: no formal awards specifically for landowner relations; HIVE builds narrative through operations, not awards
    
  MBL PARTNERS:
    PE Recognition:
      ACG "Deal of the Year" (for notable transactions; Matt Mathison + Dr. Lewis assess each deal)
      Phoenix Business Journal "Business Elite" / executive recognition
      NVCA recognition (if applicable to investment stage)
    Note: MBL Partners award submissions require Matt Mathison + Dr. Lewis approval

AWARD SUBMISSION PROCESS:
  1. Research (January annually): identify all relevant award programs; note deadlines; assess eligibility; Dr. Lewis + entity CEO prioritize top 2-3 per entity
  2. Submission calendar: add all selected award deadlines to Monday.com; work back 4 weeks from deadline for draft start
  3. Draft: entity CEO or marketing lead drafts; Dr. Lewis reviews for: factual accuracy; brand voice; HIPAA compliance (Allevio); data verification
  4. HIPAA review (Allevio): Dr. Lewis reviews all data in submission; confirms aggregate employer data only; no PHI
  5. Entity CEO approves: final review and sign-off before submission
  6. Submission: submitted by entity CEO or marketing lead on behalf of entity
  7. Post-submission: if finalist notification received → entity CEO aware; PR plan activated (see mktg-pr-manager); if awarded → press release + social + collateral update
  
AWARD DATA STANDARDS:
  All performance claims: current; sourced; verifiable
  Allevio employer data: aggregate only; Dr. Lewis HIPAA review mandatory
  Column6 campaign data: Column6 self-serve data freely usable; client data requires written client permission
  Financial data: Dr. Lewis + entity CEO confirm before inclusion; financial data in award submissions that become public requires consideration of what is disclosed
  Employee count: confirm with HR before submission (employee count changes; award eligibility may depend on it)

POST-AWARD MARKETING USE:
  Badge: entity receives award badge (logo); use in email signatures; website; collateral
  Press release: see mktg-pr-manager; issued within 24 hours of award announcement
  Social: entity CEO LinkedIn post + company page post; Dr. Lewis reviews Allevio health-related award posts for HIPAA
  Case study: if award is for a specific program, convert to case study proof point
  Sales collateral: add "Award-winning [program]" to relevant sales materials (with verification of accuracy)
```

## Output Format

```markdown
# Award Submission Plan — [Entity] — [Year]
**Prepared by:** Marketing Lead | **Approved by:** Entity CEO

---

## Award Calendar

| Award | Category | Deadline | Eligibility confirmed | Priority | Owner | Status |
|-------|---------|---------|----------------------|---------|-------|--------|
| [Award name] | [Category] | [Date] | ✅/⚠️ | High/Med/Low | | Not started |

---

## Submission Draft Status

| Award | Draft started | Dr. Lewis HIPAA review | Entity CEO approved | Submitted |
|-------|-------------|----------------------|--------------------|-|

---

## Awards Status

| Award | Submitted | Finalist | Won | Marketing action taken |
|-------|---------|---------|-----|----------------------|
| | | | | Press release / Social / Badge |
```

## Output Contract
- Award submissions require data that is current, sourced, and verified — a submission that uses outdated growth metrics, unverified performance claims, or competitor comparisons that can be challenged is a liability; Dr. Lewis reviews all performance claims in award submissions before they are submitted; if a claim cannot be verified, it is removed; a strong submission with accurate data is more valuable than a padded submission with inflated claims — judges are industry experts who know what is realistic
- HIPAA review is mandatory for all Allevio award submissions — any award submission for Allevio that includes employer outcomes, care utilization data, employee health impacts, or program results is subject to Dr. Lewis HIPAA review before submission; healthcare award programs sometimes ask for "patient impact" or "member outcomes" — Allevio answers these with employer-aggregate data (claim ratio improvement; utilization rates) rather than individual member data; Dr. Lewis ensures the submission answers healthcare program questions in HIPAA-compliant terms
- Awards are marketing multipliers, not participation trophies — Dr. Lewis does not recommend submitting to every available award program; the criteria are: (1) does this award carry credibility with our target audience?; (2) can we make a strong, data-backed submission?; (3) is the ROI (marketing value of winning vs. submission effort) worth it?; an IAB Award that Column6 wins creates credibility with every agency prospect; a generic "Business Innovation Award" from a minor publication adds no credibility with media agency buyers; entity CEOs set the priority and Dr. Lewis advises
- HITL required: award prioritization → entity CEO + Dr. Lewis; HIPAA review (Allevio) → Dr. Lewis reviews all data in submission; entity CEO approval → before any submission; financial data inclusion → Dr. Lewis + entity CEO confirm what can be disclosed; finalist/winner announcement → entity CEO coordinates PR with Dr. Lewis; MBL Partners submissions → Matt Mathison + Dr. Lewis approve; client data in Column6 submission → client written permission required

## System Dependencies
- **Reads from:** mktg-pr-manager (award announcement PR coordinated); mktg-analytics-manager (performance data for award submissions); mktg-customer-story-builder (case study data for submissions); mktg-competitive-intelligence (competitive context for differentiation claims in submissions)
- **Writes to:** Award submission calendar (Monday.com → [Entity] → Marketing → Awards); submission drafts (SharePoint → Marketing → Awards → [Entity] → [Award] → [Year]); HIPAA review records (Allevio — permanent); post-award press release; post-award marketing collateral update log
- **HITL Required:** Award prioritization → entity CEO + Dr. Lewis; HIPAA data review (Allevio) → Dr. Lewis; entity CEO approval before submission; financial data → Dr. Lewis + entity CEO; MBL submissions → Matt Mathison + Dr. Lewis; client data (Column6) → written permission; post-award PR → entity CEO coordinates with Dr. Lewis

## Test Cases
1. **Golden path:** Column6 AdExchanger Award submission — "Best Use of CTV." Submission data: Column6 self-serve CTV campaign VCR 76% (vs. 65% IAB benchmark); IVT 2.8% (vs. 8.1% industry); agency partnership model rationale; IAB certification reference. Data verification: VCR and IVT data sourced from Column6 own CTV platform data (no client data; no permission required). Column6 CEO approves submission. Submitted 3 weeks before deadline. Result: Finalist. PR: press release issued; Column6 CEO LinkedIn post; Column6 company page update; "Finalist — AdExchanger Award" added to agency one-pager badge. Sales team briefed.
2. **Edge case:** Phoenix Business Journal "Best Places to Work" requires employee survey — Allevio CEO wants to participate but only has 22 employees → Dr. Lewis: "Most BPTW programs have a minimum employee count (typically 25+) for the survey to be statistically valid. Let me check the specific eligibility criteria — if Allevio qualifies with fewer employees, we proceed. If not, we monitor for when Allevio crosses the threshold and plan to apply the following year. Participating in a survey for which we don't qualify generates a poor result and a wasted effort. Better to wait until we're in a competitive position."
3. **Adversarial:** A marketing contractor submits an Allevio award application using member health outcome data without Dr. Lewis's HIPAA review → Dr. Lewis: "Stop. Recall the application immediately if the deadline allows. If the award program has already received the submission and it contains PHI: (1) contact the award program to request withdrawal of the submission; (2) assess what PHI was included and whether it triggers HIPAA breach notification; (3) escalate to Allevio CEO and legal immediately. If withdrawal is not possible: escalate to legal for breach assessment. This is a THRIVE Integrity violation — Dr. Lewis processes and approves ALL Allevio submissions before they leave the organization. No exceptions. The contractor's authorization for Allevio submissions is revoked pending the outcome of this incident."

## Audit Log
Award calendar (annual). Award submission drafts retained. HIPAA review records for all Allevio submissions (permanent). Entity CEO approval records. Submission confirmation records. Finalist/winner notifications. Post-award marketing activation records. Matt Mathison approval records (MBL Partners).

## Deprecation
Award calendar refreshed annually in January. HIPAA review process updated when HIPAA regulations change. Award priority assessment updated when entity target audience changes. Data verification process updated when performance metric standards change.
