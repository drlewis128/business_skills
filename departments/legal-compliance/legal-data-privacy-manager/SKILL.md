---
name: legal-data-privacy-manager
description: "Manage data privacy compliance across MBL portfolio companies. Use when the user says 'data privacy', 'privacy compliance', 'CCPA', 'California Consumer Privacy Act', 'CPRA', 'privacy policy', 'data breach', 'data subject request', 'privacy notice', 'user data', 'consumer data', 'data retention', 'data collection', 'cookie policy', 'tracking', 'third-party data sharing', 'data processing', 'privacy law', 'state privacy law', 'data rights request', 'opt-out', 'data deletion', or 'privacy audit'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--law <ccpa|hipaa|state|all>] [--action <assess|policy|respond|audit>]"
---

# Data Privacy Manager

Manage data privacy compliance for MBL portfolio companies — covering California Consumer Privacy Act (CCPA/CPRA), applicable state privacy laws, privacy policy requirements, data subject rights requests, and third-party data sharing obligations. Data privacy is increasingly litigated and regulated: the CCPA provides a private right of action for data breaches; state AGs are actively enforcing; and privacy non-compliance creates both regulatory fines and reputational damage with the customers, members, and advertisers that portfolio companies depend on.

## When to Use
- A portfolio company is launching a new data collection program or website feature
- A company receives a data subject rights request (access, deletion, opt-out)
- A privacy policy needs to be updated or created
- A vendor or partner will receive personal data — assess data processing requirements
- A data breach may have exposed personal information
- Column6 is adding new audience data or targeting capabilities

## Data Privacy Framework

```
ENTITY DATA PROFILES:

  ALLEVIO — Healthcare MSO:
    Primary law: HIPAA (see legal-hipaa-compliance-manager — HIPAA is the dominant framework)
    State privacy: Arizona data breach notification (ARS §44-7501)
    Data types: PHI (HIPAA-covered); employer group member PII; billing data
    Key rule: For Allevio, HIPAA compliance is the primary requirement; CCPA has a healthcare exemption
      for HIPAA-covered entities; but Allevio must still comply with Arizona breach notification
    Data breach notification (AZ): If personal information is breached:
      Notify affected individuals "in the most expedient time possible" without unreasonable delay
      If >1,000 individuals: Notify AZ AG and national consumer reporting agencies
      "Personal information" under AZ law: Name + Social Security number, driver's license,
        account number + password/security code, or biometric data
    
  HIVE PARTNERS — Oil & Gas:
    Data types: Employee PII; vendor data; operational data (not consumer data)
    Key law: No CCPA obligation (B2B-only; no direct consumer data collection)
    State privacy: Utah Consumer Privacy Act (UCPA) — effective December 2023
      Applies to entities that: (1) conduct business in Utah, (2) target products/services to Utah residents,
        AND (3) have annual revenue ≥$25M AND process >100K consumers, OR derive >50% revenue from selling personal data
      HIVE: Likely does NOT meet UCPA threshold (B2B only; no consumer data)
    Primary obligations: Employee data privacy under Utah law; secure data handling
    
  COLUMN6 / SIPROCAL — CTV/Programmatic:
    DATA PROFILE: HIGH RISK — Column6 processes advertising audience data at scale
    Data types: Device IDs; IP addresses; behavioral data; audience segments; potentially precise location data
    Key laws:
      CCPA (California): Column6 almost certainly processes California residents' data (CTV reaches CA audiences)
        CCPA threshold: Revenue >$25M; OR process >100K consumers' data; OR derive >50% revenue from selling data
        If Column6 meets ANY threshold: Full CCPA compliance required
      Colorado Privacy Act (CPA): Similar to CCPA; applies if Column6 reaches 100K+ Colorado consumers
      Virginia CDPA; Connecticut CTDPA; Texas TDPSA: State laws that may apply as Column6 scales
    Programmatic-specific:
      IAB TCF (Transparency and Consent Framework): For EU traffic (if any)
      NAI (Network Advertising Initiative) / DAA (Digital Advertising Alliance): Self-regulatory opt-out
      Sensitive data: Precise location data, health data, financial data — special rules
    
CCPA REQUIREMENTS (if Column6 meets the threshold):

  Privacy Notice:
    □ At or before point of data collection (website; app)
    □ Categories of data collected; purposes; third parties receiving data
    □ Consumer rights (access, deletion, opt-out of sale, non-discrimination)
    □ Do Not Sell or Share My Personal Information link (on website homepage)
    
  Consumer Rights:
    Right to Know: What data is collected; with whom shared; for what purposes
    Right to Delete: Consumer can request deletion of their personal data
      Exception: Data needed to complete a transaction; fulfill a legal obligation; etc.
    Right to Opt-Out: Of "sale" or "sharing" of their personal data
      In programmatic advertising: Sharing data for cross-context behavioral advertising = "sharing"
      means Column6 must honor opt-out signals (Global Privacy Control; GPC)
    Right to Correct: Correct inaccurate personal data
    Right to Limit: Limit use of sensitive personal data
    
  Response Timelines:
    Rights requests must be acknowledged within 10 business days
    Responded to within 45 days (extendable to 90 days with notice)
    
  Data Sharing Agreements:
    Any third party receiving personal data for advertising purposes = potential "service provider"
    Service provider contracts must prohibit the receiving party from selling or using data outside the agreed purpose
    Service provider status requires a written contract with specific CCPA provisions
    
PRIVACY POLICY REQUIREMENTS:
  Website privacy policy: All portfolio company websites must have a privacy policy
  Minimum content:
    Categories of personal information collected
    Business/commercial purposes for collection
    Categories of third parties with whom information is shared
    Consumer rights (state-specific)
    Contact information for privacy requests
    Effective date; "Last Updated" date
  Update trigger: Any time data practices change materially; at least annually
```

## Output Format

```markdown
# Data Privacy Assessment — [Entity/Program]
**Prepared by:** Dr. Lewis | **Date:** [Date]
**Applicable laws:** [HIPAA / CCPA / UCPA / AZ breach notification / other]
**Risk level:** High / Medium / Low

---

## Applicable Law Analysis

| Law | Does it apply? | Threshold analysis | Compliance status |
|-----|--------------|-------------------|------------------|
| HIPAA | Yes / No | [Allevio: Yes — covered entity] | ✅ / ⚠️ / ❌ |
| CCPA | Yes / No | [Column6: Likely yes — threshold analysis] | ✅ / ⚠️ / ❌ |
| AZ Breach Notification | Yes / No | All AZ entities | ✅ / ⚠️ / ❌ |

---

## Gaps Identified

| Gap | Risk | Action Required | Owner | Due |
|----|------|----------------|-------|-----|
| [Privacy policy last updated 2023] | Medium | Update policy to reflect current data practices | Column6 CEO | [Date] |
| [No GPC signal honored] | High | Implement GPC opt-out | Column6 tech | [Date] |

---

## Data Subject Rights Request Log (if responding to a request)

| Request date | Type | Requestor | Response sent | Status |
|-------------|------|----------|--------------|--------|
| [Date] | [Deletion] | [Consumer] | [Date] | ✅ Complete |
```

## Output Contract
- Column6 has the highest privacy risk in the portfolio — Column6 processes advertising audience data at scale; if it reaches the CCPA threshold (which is likely if it has $25M+ revenue or processes 100K+ consumer records), it has full CCPA compliance obligations; this is not a nice-to-have; CCPA enforcement by the California Privacy Protection Agency (CPPA) is active; a $7,500 per intentional violation fine applied to a programmatic advertising operation that processes millions of consumer records is existential; Dr. Lewis prioritizes Column6 CCPA compliance above all other data privacy work
- GPC (Global Privacy Control) must be honored if CCPA applies — California law requires covered businesses to honor the GPC signal as a valid opt-out of sale/sharing; a website or platform that detects a GPC signal from a California consumer must not share that consumer's data for advertising purposes; for Column6, this means the ad serving technology must respect GPC signals in real-time bid requests; if Column6's ad server does not honor GPC, it is in violation of CCPA for every California consumer who has GPC enabled; this is a technical implementation requirement, not just a policy requirement
- Privacy policy is a legal document, not marketing — Dr. Lewis reviews privacy policies as legal documents, not marketing copy; the categories of data disclosed in the privacy policy must accurately match the categories actually collected; if the policy says "we collect device identifiers" but Column6 is also collecting precise location data (a sensitive category requiring separate disclosure and user consent), the policy is deficient; Dr. Lewis conducts an annual data mapping exercise for Column6 to confirm that the privacy policy reflects actual data practices
- HITL required: Dr. Lewis reviews privacy policies and data practices; Column6 CEO approves any new data collection program; privacy counsel required for CCPA compliance assessment, data subject rights program implementation, breach notification (CCPA private right of action), and any enforcement inquiry; Matt Mathison notified of any data breach affecting Column6 or the portfolio; Dr. Lewis does not draft final privacy policies without privacy counsel review

## System Dependencies
- **Reads from:** Column6 data inventory (what personal data is collected, processed, and shared); Column6's advertising platform data flows (DSP/SSP integrations — what data is received and transmitted?); website cookie audits; privacy policy current version; data subject rights requests log; HIPAA BAA tracker (for Allevio — see legal-hipaa-compliance-manager); vendor data processing agreements
- **Writes to:** Privacy policy updates (website and app); data processing agreements with vendors; data subject rights response letters; data breach notification letters (if applicable); data inventory documentation; privacy compliance assessment memos; Matt Mathison breach notification memo
- **HITL Required:** Dr. Lewis reviews; Column6 CEO approves new data programs; privacy counsel drafts or reviews privacy policy and data processing agreements; Matt Mathison notified of any breach; Dr. Lewis does not respond to CPPA inquiries or data breach notifications without privacy counsel; Dr. Lewis does not certify CCPA compliance without privacy counsel review

## Test Cases
1. **Golden path:** Column6 is adding a new first-party audience segment product — collecting declared interest data from publisher partners' registered users → Dr. Lewis assesses: Declared interest data = personal information; CCPA applies if Column6 meets threshold; new data category (declared interests) must be added to privacy policy; publisher partners providing the data must execute data processing agreements; consumers whose data is collected must have been given privacy notice at the time of collection (publisher's responsibility — Column6 should obtain certification from publishers); Global Privacy Control signals must be honored for any California consumers in the segment; Dr. Lewis updates the CCPA compliance checklist for the new product; routes to privacy counsel for agreement review and privacy policy update; Column6 CEO approves launch after compliance clearance
2. **Edge case:** Column6 receives a data deletion request from a California consumer who has seen Column6 ads and wants their "profile" deleted → Dr. Lewis processes: Acknowledge within 10 business days; determine what Column6 has for this individual (device ID, IP address, behavioral segments); can Column6 identify the individual across its systems? If yes → delete the linked data; notify all service providers who received the data to delete as well; respond to the consumer within 45 days confirming deletion or the categories deleted; if Column6 cannot identify the individual (common in programmatic — no direct consumer relationship) → respond within 45 days: "We have searched our systems and were unable to identify personal information linked to your request. Our advertising systems use pseudonymous identifiers that we cannot link to individuals without additional information. If you can provide [device ID or other identifier], we will re-process your request."
3. **Adversarial:** A consumer protection plaintiff's attorney sends Column6 a demand letter alleging CCPA violations for selling personal data without a "Do Not Sell" link on its website → Dr. Lewis immediate response: "Engage privacy counsel today. CCPA provides a private right of action only for data breaches — not for general compliance failures like a missing opt-out link; those must go through the CPPA with a cure period. However, this demand letter could be a precursor to an AG complaint or a pretext for discovery into Column6's data practices. Privacy counsel will review the demand, confirm the legal basis (or lack thereof), and advise on response. Do not respond to the demand letter without counsel. Do not admit that a 'Do Not Sell' link is missing — the legal characterization of Column6's data flows as 'sale' vs. 'sharing' is a legal question that counsel must assess." Matt Mathison notified; privacy counsel engaged

## Audit Log
All data subject rights requests retained (5 years). Privacy policy version history retained (all versions with effective dates — permanently). Data breach notifications retained permanently. Data processing agreements retained (duration of relationship + 5 years). Annual data mapping documentation retained (7 years). CCPA compliance assessments retained (7 years). Any regulatory inquiry responses retained permanently.

## Deprecation
Retire when each portfolio company has a designated Privacy Officer and privacy counsel on retainer — with Dr. Lewis reviewing the annual data inventory and Matt Mathison receiving the annual privacy compliance status for the portfolio.
