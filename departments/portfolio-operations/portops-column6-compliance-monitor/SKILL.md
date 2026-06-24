---
name: portops-column6-compliance-monitor
description: "Column6 CCPA compliance monitor, 45-day consumer rights response window, opt-out request tracker Column6, consumer deletion request tracker, consumer data handling audit, ad targeting compliance review, privacy policy currency check, COPPA compliance Column6 gaming, child-directed inventory safeguards, IO contract compliance Column6, Dr Lewis quarterly compliance review, Siprocal compliance monitor, CCPA deadline escalation, sensitive category ad targeting review, state privacy law compliance ad tech, data retention audit Column6, consumer access request tracking, FTC advertising compliance Column6, consent chain verification, ad tech regulatory compliance"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "quarter (e.g. Q2 2026), optional focus (e.g. CCPA requests / COPPA / sensitive category review)"
---

# Column6 Compliance Monitor

Column6 operates at the intersection of data privacy law, advertising regulation, and contractual delivery obligations -- CCPA governs consumer rights and data handling, COPPA prohibits behavioral targeting of children under 13, and IO agreements create contractual compliance obligations with agencies. This skill tracks all three compliance domains, produces the quarterly review for Dr. John Lewis, and fires real-time escalations for any consumer rights request approaching the 45-day hard legal deadline.

## When to Use

- Quarterly compliance review (Dr. John Lewis standing review)
- Any CCPA consumer rights request within 10 days of the 45-day response deadline (real-time trigger)
- A new campaign targets a sensitive category requiring pre-flight compliance review
- Privacy policy has not been updated in over 180 days or new data practices have been introduced
- IO compliance audit required ahead of an agency contract renewal or dispute
- Gaming channel campaign launches requiring COPPA safeguard verification

## Column6 Compliance Monitor Framework

```
COMPLIANCE LANDSCAPE
  CCPA (California Consumer Privacy Act): primary privacy regulation for Column6
    -- Consumer rights: access, deletion, opt-out from sale/sharing, correction
    -- Hard deadline: 45 days from request receipt to response (opt-out: 15 business days)
  COPPA (Children's Online Privacy Protection Act): applies to any ad inventory that reaches
    children under age 13 -- Column6 must not serve behavioral ads on child-directed inventory
  FTC advertising guidelines: truthful advertising, endorsement disclosure, native ad labeling
  State privacy laws: Virginia (VCDPA), Colorado (CPA), Connecticut (CTDPA), Texas (TDPSA)
    -- track applicability as Column6 scales distribution footprint

CCPA CONSUMER RIGHTS COMPLIANCE
  Request types: Access (know what data we hold) | Deletion | Opt-Out from sale/sharing |
    Correction of inaccurate data
  Hard deadline: 45 days from receipt for Access/Deletion/Correction
  Opt-Out deadline: 15 business days (shorter window -- track separately)
  Escalation thresholds: Day 35 = AMBER warning to Dr. Lewis + entity legal
    Day 40 = RED critical escalation to entity CEO
    Day 45 = Deadline -- non-response = CCPA violation with regulatory exposure
  Do-not-sell log: all opt-out requests must be logged and honored permanently
    unless consumer subsequently opts back in
  Quarter summary: requests received, completed on time, completed late (any late = regulatory risk),
    open requests, requests approaching deadline

CONSUMER DATA HANDLING AUDIT
  Data inventory: categories collected (device IDs, IP addresses, behavioral data, location,
    demographic, cross-site tracking), retention period per category, third-party sharing
  Legal basis per data category: consent / contract / legitimate interest
  Third-party processor audit: every processor with access to personal data must have a
    signed Data Processing Agreement (DPA); unsigned DPA = compliance gap, immediate remediation
  Retention compliance: verify automated deletion jobs are running; flag any data category
    held beyond stated retention period
  Consent chain verification: trace consent from consumer opt-in through to DSP/SSP data use

AD TARGETING COMPLIANCE
  Opted-out consumers: contextual targeting ONLY -- no behavioral signals permitted
  Opted-in consumers: behavioral targeting permitted per current privacy policy
  Enforcement verification: confirm opted-out consumer IDs suppressed at DSP targeting layer
  Sensitive category review (pre-flight required before campaign serves):
    Health/medical | Financial products | Political/issue advocacy | Cannabis/controlled substances |
    Children's products | Religion/ethnicity | Sexual orientation
  Retargeting consent: verify retargeting pools contain only consumers who have not opted out
  Political advertising: additional FTC and state-level disclosure requirements; review per campaign

PRIVACY POLICY CURRENCY
  Last update date and version number
  Days since last update: GREEN <180 days | AMBER 181-270 days | RED >270 days (update required)
  Change triggers: new data category collected, new third-party processor added, targeting
    practices changed, new state privacy law applicability, new product feature using consumer data
  Accessibility verification: website footer link, ad creative disclosures (where required),
    mobile app privacy disclosures if applicable

COPPA COMPLIANCE
  Scope: Column6 must not serve behavioral advertising on inventory reaching children under 13
  Controls: Gaming publisher COPPA certification on file for all gaming SSP partners;
    age-gating configuration on Gaming channel campaigns; CTV children's programming excluded
    from behavioral targeting; mobile apps rated for children excluded from behavioral inventory
  Quarterly publisher audit: verify COPPA certification for every Gaming channel publisher;
    publishers without certification = pause inventory immediately until certification obtained
  Parental consent protocols: if any inventory could reach under-13 without certification,
    treat as COPPA-covered and require parental consent mechanism or exclude entirely
  Violation response: confirmed COPPA exposure = immediate halt of relevant inventory +
    legal notification within 24 hours + document exposure window

CLIENT CONTRACT COMPLIANCE
  IO terms compliance: delivery guarantees met, reporting accuracy within IO tolerances,
    data usage rights not exceeded beyond IO terms
  Brand safety: commitments honored (exclusion lists active, content adjacency standards met)
  Viewability guarantees: where stated in IO, verify measurement methodology and actuals vs committed
  Exclusivity clauses: verify Column6 has honored any exclusive category or geographic commitments
  Open IO disputes: log with agency, dispute type, status, whether outside counsel is involved
    -- any dispute involving legal must be surfaced to Dr. Lewis regardless of dollar amount

DR. LEWIS QUARTERLY COMPLIANCE REVIEW TEMPLATE
  See Output Format section below
```

## Output Format

```markdown
# Column6 Compliance Monitor -- [Quarter Year]
**Prepared by:** Dr. John Lewis | **Distribution:** Dr. John Lewis (quarterly review)
**Real-time escalations:** Entity legal + Dr. Lewis (CCPA 10-day trigger)

## BLUF
[2-3 sentences: overall compliance posture, any open violations or approaching deadlines, single most important compliance risk]

## Compliance Health Dashboard
| Domain | Status | Last Reviewed | Next Review |
|--------|--------|---------------|-------------|
| CCPA Consumer Rights | [GREEN/AMBER/RED] | [Date] | [Date] |
| Data Handling Audit | [GREEN/AMBER/RED] | [Date] | [Date] |
| Ad Targeting Compliance | [GREEN/AMBER/RED] | [Date] | [Date] |
| Privacy Policy Currency | [GREEN/AMBER/RED] | [Date] | Semiannual |
| COPPA Safeguards | [GREEN/AMBER/RED] | [Date] | Quarterly |
| IO Contract Compliance | [GREEN/AMBER/RED] | [Date] | Per renewal |

**Overall Compliance Posture:** [GREEN / AMBER / RED]

## CCPA Consumer Rights Tracker
| Request ID | Type | Received | Deadline | Days Left | Status | Owner |
|------------|------|----------|----------|-----------|--------|-------|
[Open requests sorted by days remaining ascending -- lowest first]

**Quarter Summary:** X received | X completed on time | X completed late | X open

## Consumer Data Handling
[Data processors without signed DPA: list or "None -- all DPAs current"]
[Data categories exceeding retention period: list or "None"]
[Consent chain status: Verified / Gaps identified (describe)]

## Ad Targeting Compliance
[Sensitive category campaigns requiring or pending review]
[Opted-out consumer suppression status: Verified / Gap identified]
[If all clear: "All campaigns cleared; opted-out suppression verified"]

## Privacy Policy
**Version:** X | **Last Updated:** [Date] | **Days Stale:** X | **Status:** [CURRENT / UPDATE REQUIRED]
[Change triggers pending: list or "None"]

## COPPA Status
**Gaming Publishers Audited:** X of X | **Certified:** X | **Uncertified (action required):** X
[Uncertified publishers: list with action and deadline]

## IO Contract Compliance
[Open disputes: IO ID | Agency | Dispute Type | Status | Legal Involved]
[If none: "No open IO disputes"]

## Escalations
[List any active escalations with trigger condition and response status]
[If none: "No escalations this quarter"]

## Recommended Actions
1. [Action -- Owner -- Due Date]
```

## Output Contract

- The 45-day CCPA consumer rights response window is a hard legal deadline -- the skill must escalate any open request within 10 days of the deadline to Dr. Lewis and entity legal on the same day the 10-day mark is crossed, regardless of the quarterly reporting cycle. This is a real-time trigger that operates independently of the quarterly brief. A missed deadline is a regulatory violation with potential fines, regulatory investigation, and reputational damage to the Column6 brand and MBL Partners.
- Data processor DPA coverage is audited because Column6 shares consumer data with DSP and SSP partners as part of normal ad operations. Any partner processing personal data without a signed Data Processing Agreement creates direct CCPA liability for Column6 as the data controller -- the skill must flag every unsigned DPA and track remediation to completion, not merely note the gap.
- COPPA compliance in the Gaming channel is a non-negotiable baseline requirement. Column6 cannot serve behavioral advertising on inventory that reaches children under 13, and publisher self-certification is the primary control mechanism. The quarterly audit of publisher certifications must be exhaustive -- "not yet audited" is treated identically to "not certified" for risk purposes, and uncertified publishers must be paused until certification is obtained.

## System Dependencies

**Reads from:** CCPA consumer rights request log (DSR management system), data inventory and data map, DSP/SSP partner agreements (DPA status), ad serving platform (targeting configuration and opt-out suppression verification), campaign management system (sensitive category flags), gaming publisher certification records, active IO terms, privacy policy version control
**Writes to:** Dr. Lewis quarterly compliance review, real-time escalation notifications (CCPA 10-day deadline, COPPA exposure, data processor DPA gaps), IO dispute log, MBL portfolio compliance register
**HITL Required:** Dr. Lewis reviews all escalation memos before they reach outside counsel; entity legal reviews CCPA response drafts before consumer delivery; Dr. Lewis approves any sensitive category campaign hold recommendation before it is communicated to the agency account manager

## Test Cases

- **Golden path:** Q2 report -- 7 consumer requests received, all completed on time with 10+ days to spare; privacy policy updated 90 days ago; all gaming publishers COPPA-certified; no sensitive category flags pending; 2 IO disputes resolved without legal involvement -- produces clean green quarterly report with 2 proactive recommendations.
- **Edge case:** Opt-out request received on day 1 of quarter, sits in queue due to system routing error, discovered on day 13 of the 15-business-day opt-out window -- skill flags immediately as RED, documents root cause, drafts remediation record, escalates to Dr. Lewis and entity legal, ensures consumer response is sent same day the gap is discovered.
- **Adversarial:** A health/medical category campaign serves for 3 days on Gaming inventory before compliance review is completed; targeting data shows impressions served on a publisher without a current COPPA certification on file -- skill generates immediate halt recommendation, documents the exposure window in writing, triggers legal notification within 24 hours, and initiates publisher certification request with a deadline.

## Audit Log

All CCPA consumer rights requests are logged from receipt through response completion, with timestamps at each stage and the identity of the staff member handling each step. Quarterly compliance reports are archived with health scores by domain and a complete list of open and resolved issues. Escalation events are recorded with trigger condition, notification recipients, response timeline, and resolution outcome. The compliance audit trail is retained for a minimum of 3 years to support regulatory inquiries, fund audit, and investor diligence requests.

## Deprecation

This skill is deprecated if Column6 is divested from the MBL portfolio, or if Column6 migrates to a fully managed compliance platform that handles CCPA, COPPA, and data mapping natively with automated request tracking and reporting. Before archiving, transfer all open consumer rights requests to the entity legal team with confirmation of resolution, and ensure the compliance audit log is preserved per the 3-year retention standard.

---
*MBL Partners Portfolio Operations -- Column6 / Siprocal Compliance Intelligence*
*HITL Chain: Dr. Lewis > Column6 Entity Legal > Column6 CEO > Matt Mathison*
