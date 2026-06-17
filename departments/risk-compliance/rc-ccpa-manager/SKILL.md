---
name: rc-ccpa-manager
description: "Manage CCPA/CPRA compliance — consumer rights, privacy notices, opt-out, and data deletion. Use when the user says 'CCPA', 'CPRA', 'California Consumer Privacy Act', 'California Privacy Rights Act', 'consumer rights', 'right to delete', 'right to opt out', 'do not sell', 'data deletion request', 'CCPA compliance', 'California privacy', 'privacy rights request', 'consumer data rights', '45-day deadline', 'opt-out of data sharing', 'privacy notice update', or 'California resident data'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <assess|rights-request|notice|opt-out|audit>] [--request-type <access|delete|correct|opt-out|portability>]"
---

# CCPA Manager

Manage CCPA/CPRA compliance at MBL portfolio companies — determining applicability, fulfilling consumer rights requests, maintaining compliant privacy notices, and implementing required opt-out mechanisms. The California Consumer Privacy Act (CCPA), strengthened by the California Privacy Rights Act (CPRA) effective January 2023, applies to for-profit businesses that do business in California and meet revenue/data thresholds; for MBL portfolio companies, Column6/Siprocal (CTV/media) has the clearest CCPA applicability; other portfolio companies require threshold analysis. CCPA is the most significant US state privacy law and is increasingly a compliance expectation for any company with significant consumer data.

## When to Use
- Determining if a portfolio company is subject to CCPA — threshold analysis
- A consumer submits a rights request (access, delete, correct, opt-out, portability)
- Privacy notice needs to be audited or updated for CCPA compliance
- A "do not sell or share" opt-out mechanism needs to be implemented
- Annual CCPA compliance review
- Preparing for California AG or CPPA enforcement action

## CCPA/CPRA Framework

```
Applicability thresholds (as of January 2023 — CPRA):
  A for-profit business that does business in California AND meets ANY ONE of:
    → Annual gross revenues >$25 million (preceding calendar year)
    → Buys, sells, or shares the personal information of 100,000+ California consumers or households
    → Derives 50%+ of annual revenues from selling or sharing consumers' personal information
    
  MBL portfolio applicability analysis:
    Column6/Siprocal: Most likely applicable — CTV advertising business likely shares data of 100K+ CA consumers/devices; attorney to confirm and develop compliance program
    Allevio: PHI is exempt from CCPA; non-PHI data (employees, website visitors) — assess CA employee threshold; likely below all thresholds at current scale; attorney to confirm
    HIVE Partners: Oil & gas; primarily B2B; likely below thresholds; no California consumer data
    MBL Holdings: Primarily portfolio holding; limited consumer data; likely not applicable
    
  CPRA exemptions (notable):
    → PHI subject to HIPAA: Exempt from CCPA/CPRA
    → Employee/job applicant data: Partial exemption (CPRA added employee rights; CCPA employee exemption expired 2023)
    → B2B data: Partial exemption; consumer rights apply to B2B contact data
    → Publicly available information: Exempt
    
Consumer rights under CCPA/CPRA:
  Right to Know: What personal information is collected about them; how it's used; who it's shared with
  Right to Delete: Request deletion of personal information (subject to exceptions)
  Right to Correct: Request correction of inaccurate personal information
  Right to Opt-Out of Sale or Sharing: Opt out of sale or sharing of personal information for cross-context behavioral advertising (this is the "Do Not Sell or Share My Personal Information" right)
  Right to Limit Use of Sensitive Personal Information: Limit use of sensitive data for purposes beyond providing services
  Right to Non-Discrimination: Cannot be discriminated against for exercising rights
  Right to Portability: Receive data in portable format
  
Response deadlines:
  Rights requests: 45 business days (can extend 45 additional business days with notice)
  Opt-out requests: Process within 15 business days
  Verifying requests: Reasonable verification required before fulfilling; match 2 pieces of information the business has on file
  
Notice requirements:
  At or before collection: Privacy notice describing categories of personal information and purposes
  Privacy Policy: Comprehensive; updated annually; available on website; includes CCPA-specific disclosures (categories collected, sources, purposes, third-party sharing, consumer rights, how to submit requests)
  "Do Not Sell or Share My Personal Information" link: On homepage (if applicable — if business sells or shares data)
  
Contractor/service provider obligations:
  Service providers (receive data for business purposes): Not considered "selling" — data processing terms required; limited use of data
  Contractors: Same as service providers under CPRA
  Third parties (receive data for their own purposes): Constitutes "sharing" — triggers opt-out right
```

## Output Format

```markdown
# CCPA Compliance Status — <Company Name>
**Date:** [Date] | **Responsible:** Dr. John Lewis
**Attorney:** [Name] | **CPPA enforcement awareness:** ✅

---

## Applicability Assessment

| Threshold | Applicable? | Evidence |
|---------|-----------|--------|
| Annual gross revenues >$25M | [Yes / No — revenue $X] | Financial records |
| 100K+ CA consumers/households' data | [Yes / No — estimate N] | Data inventory |
| 50%+ revenue from selling/sharing CA data | [Yes / No] | Revenue breakdown |
| **CCPA applicable?** | **✅ Yes / ❌ No** | |

**PHI exemption (Allevio):** PHI subject to HIPAA is exempt from CCPA — clinical data excluded

---

## Privacy Notice Compliance

| Notice requirement | In place? | Last updated | Compliant? |
|------------------|---------|------------|----------|
| At-collection notice (website) | ✅ / ⚠️ | [Date] | ✅ / ⚠️ Needs update |
| Comprehensive Privacy Policy | ✅ / ⚠️ | [Date] | ✅ / ⚠️ |
| CCPA-specific disclosures in policy | ✅ / ⚠️ | | [Categories, sources, purposes, rights] |
| "Do Not Sell or Share" link (if applicable) | ✅ / N/A | | |
| Employee privacy notice (CPRA) | ✅ / ⚠️ | | |

---

## Consumer Rights Request Log

| Request ID | Date | Consumer | Right requested | Verified? | Response deadline | Completed | Notes |
|-----------|------|---------|----------------|---------|-----------------|---------|-------|
| CCPA-2026-001 | [Date] | [Verified consumer] | Deletion | ✅ | [+45 biz days] | ✅ [Date] | |
| CCPA-2026-002 | [Date] | [Consumer] | Access (know) | ✅ | [+45 biz days] | In progress | |

---

## "Do Not Sell or Share" Opt-Out Program (Column6/Siprocal)

| Mechanism | Implemented | Method | Processing time (≤15 biz days) | Status |
|-----------|-----------|--------|-------------------------------|--------|
| Website link — "Do Not Sell or Share" | ✅ / ⚠️ | Footer link → opt-out form | ≤15 business days | |
| GPC (Global Privacy Control) signal honored | ✅ / ⚠️ | Technical implementation | Automatic | |
| Opt-out transmitted to data partners | ✅ / ⚠️ | Partner API / manual | Within 15 business days | |

---

## Annual CCPA Compliance Checklist

- [ ] Privacy Policy updated annually (include: categories, sources, purposes, third-party sharing, rights instructions, contact info)
- [ ] At-collection notices current
- [ ] Consumer rights request process functional (intake → verify → fulfill → respond)
- [ ] "Do Not Sell or Share" opt-out mechanisms working (if applicable)
- [ ] GPC signal honored (if applicable)
- [ ] Service provider / contractor agreements include CCPA-required data processing terms
- [ ] Data map current (what CA data; where; for what purpose)
- [ ] Employee privacy notice updated (CPRA requirement)
- [ ] Attorney reviewed any new data uses for sale/sharing classification

---

## Matt Mathison Brief (if CPPA investigation or material CCPA non-compliance found)

[Company] CCPA status: [Issue description]. CA consumers affected: [N]. Regulatory risk: CPPA enforcement action; fines up to $2,500/violation (unintentional) or $7,500/violation (intentional). Remediation: [Action]. Attorney engaged: [Name]. Timeline: [Date].
```

## Output Contract
- The "do not sell or share" right is the most operationally complex CCPA requirement for Column6 — a CTV/ad tech business that uses cookies, device identifiers, and behavioral data for cross-context behavioral advertising is almost certainly "sharing" personal information under CCPA (making it available to third parties for advertising purposes, whether or not money changes hands); the opt-out right applies; implementing a functional "Do Not Sell or Share My Personal Information" link, honoring GPC signals, and transmitting opt-outs to data partners within 15 business days is a compliance requirement; attorney must design the implementation for Column6 given the complexity of the ad tech data ecosystem; Dr. Lewis manages the program once attorney has established the compliance framework
- Rights request verification is required but cannot be an impossible barrier — CCPA requires verifiable requests, but cannot require authentication that would be "unnecessarily burdensome" for the consumer; for online-only relationships where no account exists, verification standards are lower; for account holders, credential verification is sufficient; Dr. Lewis uses a 2-factor verification approach (matching name + email or name + zip code from records); if a request cannot be verified, Dr. Lewis notifies the consumer and explains what additional information is needed; unverified requests are not fulfilled but are not simply discarded
- The 45-business-day deadline is shorter than it sounds — 45 business days excludes weekends and holidays; a request received on January 1 is due approximately February 25; Dr. Lewis logs every request with the exact deadline date at intake; a day-40 check-in is standard practice; if the additional 45-day extension is needed, the consumer must be notified of the extension and the reason within the first 45 business days (not after they expire)
- HITL required: Dr. Lewis manages CCPA compliance; attorney for applicability determinations, "sale or sharing" classifications, and any CPPA investigation; CEO informed of any consumer rights request involving >100 individuals or any CPPA investigation; Matt Mathison for CPPA enforcement actions, regulatory fines, or material non-compliance

## System Dependencies
- **Reads from:** Website analytics and consumer data systems (Column6), GoHighLevel (CRM — consumer contact data), data map (rc-privacy-program-builder), website privacy notices, service provider agreements (rc-third-party-compliance)
- **Writes to:** Consumer rights request log (SharePoint/RC/<Company>/Privacy/CCPA/Rights/); privacy notice (website); opt-out mechanism implementation records; attorney correspondence; CEO and Matt Mathison notifications
- **HITL Required:** Dr. Lewis manages; attorney for applicability, sale/sharing classification, CPPA investigation; CEO for >100-individual requests or enforcement; Matt Mathison for enforcement actions and material non-compliance

## Test Cases
1. **Golden path:** Column6 receives a CCPA deletion request from a California consumer via the privacy rights form → Intake: CCPA-2026-005; date: [Date]; right: deletion; verification: consumer provided name + email matching CRM record ✅; Deadline: 45 business days from today = [Date]; Processing: data systems reviewed: GoHighLevel CRM (delete), ad platform identifiers (delete from device graph), analytics platform (delete or suppress); exceptions: data retained for legal defense or contractual obligation (if any) noted and communicated to consumer; Response to consumer: "We have deleted your personal information from [systems]. Exceptions: [none / list]"; date of response: [Date] (within 45 business days); log closed; service providers notified to delete their copies
2. **Edge case:** A consumer claims Column6 sold their data to a competitor and demands a copy of all data shared in the past 12 months → Right to Know request; triggered by a sensitive business concern; verify the consumer; pull data sharing records for the stated period; prepare a description of categories shared, third parties, and purposes; attorney reviews response given the sensitivity of the disclosure about data sharing practices; respond within 45 business days; if the review reveals data sharing practices that were not properly disclosed in the privacy policy, attorney advises on remediation and disclosure; update privacy notice if required
3. **Adversarial:** "We already told consumers we don't sell their data — why do we need a 'Do Not Sell or Share' link?" → CCPA/CPRA defines "sharing" broadly to include making personal information available to third parties for cross-context behavioral advertising, regardless of whether money changes hands; a CTV or digital advertising business that passes device IDs and behavioral data to advertising partners for audience targeting is likely "sharing" under CCPA even if the data is not "sold"; the fact that the privacy notice says "we don't sell" may be technically accurate but legally insufficient if sharing is occurring; attorney makes the classification determination; Dr. Lewis does not make the sale/sharing determination independently for Column6 given the complexity of the ad tech data ecosystem

## Audit Log
Consumer rights requests retained 3 years from fulfillment. Privacy notice versions retained permanently. Opt-out requests and transmission to data partners retained. Attorney engagement records retained permanently. Annual compliance checklist retained. CPPA correspondence retained permanently.

## Deprecation
Retire when Column6/Siprocal has engaged specialized ad tech privacy counsel managing their CCPA/state privacy law compliance program with automated rights request workflows and consent management — with Dr. Lewis providing portfolio-level oversight and reviewing annual compliance status.
