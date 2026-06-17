---
name: rc-privacy-program-builder
description: "Design and manage the data privacy program — GDPR/CCPA applicability, data mapping, privacy governance. Use when the user says 'privacy program', 'data privacy', 'GDPR', 'CCPA', 'privacy governance', 'data map', 'privacy framework', 'personal data', 'privacy by design', 'privacy officer', 'data protection', 'privacy policy', 'consumer privacy rights', 'privacy compliance', 'data inventory', or 'privacy audit'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--regulation <HIPAA|CCPA|GDPR|all>] [--action <assess|design|map|report>]"
---

# Privacy Program Builder

Design and manage the data privacy program at MBL portfolio companies — establishing the governance structure, data inventory, and operational controls that make privacy compliance sustainable rather than reactive. For MBL portfolio companies, the primary privacy obligation is HIPAA (Allevio) — addressed in dedicated skills (rc-hipaa-privacy-officer, rc-hipaa-security-program); this skill addresses the broader privacy program including CCPA applicability, data mapping, privacy by design, and the organizational elements that govern how personal data is collected, used, and protected across the portfolio. Privacy compliance is increasingly a table stakes expectation for business partners, regulators, and potential buyers.

## When to Use
- A new business or system is being designed — privacy review needed before launch
- A portfolio company is receiving California consumer data — CCPA analysis needed
- Data mapping is needed — what personal data does the company collect and where does it go?
- A privacy audit reveals gaps — what needs to be remediated?
- Preparing for buyer diligence — privacy program documentation requested
- A privacy policy needs to be drafted or updated

## Privacy Program Framework

```
Privacy regulation applicability by portfolio company:
  
  Allevio (healthcare MSO):
    → HIPAA: Primary privacy law — fully applicable; addressed in rc-hipaa-privacy-officer and rc-hipaa-security-program
    → CCPA/CPRA: California Consumer Privacy Act applies if: (1) for-profit business; (2) does business in California; (3) meets any threshold: >$25M gross revenue, OR buys/sells/shares data of ≥100K CA consumers/households, OR derives ≥50% of revenue from selling/sharing personal info
    → Allevio CCPA status: PHI collected under HIPAA is exempt from CCPA; non-clinical personal data (employees in CA, website visitors, marketing contacts) may be subject to CCPA if CA nexus exists — assess
    → GDPR: Applies to data of EU/EEA residents; if Allevio has EU patients or EU employees — assess; likely not applicable at current scale
    
  HIVE Partners (oil & gas):
    → No healthcare data; limited personal data (employee records, contractor records)
    → CCPA: Does HIVE have CA-based employees? CA nexus? Assess thresholds
    → Employee data: Covered by employment law, not CCPA in same way as consumer data
    
  Column6/Siprocal (CTV/media/gaming):
    → High privacy risk: CTV advertising involves consumer targeting; data likely includes cookie/device identifiers
    → CCPA/CPRA: Most likely applicable — advertising-focused business with CA consumer data; assess with attorney
    → GDPR: EU audience → likely applicable; Data Processing Agreements (DPAs) required with EU data processors
    → Children's privacy (COPPA): If gaming or CTV content reaches children under 13 — attorney review required
    
Data mapping framework:
  Data inventory: What personal data is collected? Source? Purpose? Retention? Shared with whom?
  Data flows: How does personal data move through and out of the organization?
  Legal basis (GDPR if applicable): Consent / Contract / Legitimate interest / Legal obligation
  Retention schedules: How long is each category of personal data kept?
  Third-party disclosures: Who receives the data and on what basis?
  
Privacy governance structure:
  Privacy Officer: Dr. Lewis serves as Privacy Officer across MBL portfolio
  Privacy-by-design: New systems, products, or data collections reviewed for privacy impact before launch (rc-privacy-impact-assessor)
  Incident response: Privacy breaches have specific notification requirements (rc-data-breach-responder)
  Consumer rights: Requests to access, delete, or port personal data must be fulfilled (rc-ccpa-manager for CA)
  Annual privacy program review: Assess program effectiveness; update data map; confirm regulation applicability
```

## Output Format

```markdown
# Privacy Program Assessment — <Company Name>
**Date:** [Date] | **Privacy Officer:** Dr. John Lewis

---

## Regulatory Applicability Assessment

| Regulation | Applicable? | Basis | Key obligations | Status |
|-----------|-----------|-------|----------------|--------|
| HIPAA | ✅ Yes — Allevio | Covered Entity | Privacy Rule, Security Rule, Breach Notification | Managed via rc-hipaa-* skills |
| CCPA/CPRA | ✅ / ⚠️ Assess / ❌ No | [Threshold analysis] | Consumer rights; privacy notice; opt-out | [In compliance / Gaps] |
| GDPR | ✅ / ⚠️ Assess / ❌ No | [EU data presence analysis] | Lawful basis; DPAs; data subject rights | |
| COPPA | ✅ / ❌ No | [Children's audience analysis] | Verifiable parental consent | |
| State laws (AZ, UT) | Limited | [Specific obligations] | | |

---

## Data Inventory (Data Map)

| Data category | Examples | Source | Purpose | Stored where | Shared with | Retention |
|-------------|---------|--------|---------|------------|-----------|---------|
| Employee personal data | Name, SSN, address, pay | HR onboarding | Payroll, benefits, compliance | QuickBooks, Payroll system | Payroll processor | Duration of employment + 7 years |
| Clinical/PHI (Allevio) | Diagnosis, treatment, insurance | AdvancedMD (patient) | Treatment, billing | AdvancedMD, SharePoint | BAs (billing, EHR) | 6+ years (HIPAA) |
| Business contact data | Names, emails, company | CRM, email | Sales, communications | GoHighLevel | Email platform | [Retention policy] |
| Website visitor data | IP address, cookies | Website | Analytics, marketing | Google Analytics | Analytics provider | [Retention] |
| Financial data | Bank accounts, payment info | Customers/vendors | Billing, payments | QuickBooks, Bill.com | Payment processor | 7 years (tax) |

---

## Privacy Policy Status

| Entity | Privacy policy | Version | Effective | Last reviewed | Published | Covers CCPA? |
|--------|-------------|---------|---------|------------|---------|------------|
| Allevio | Notice of Privacy Practices (NPP) + Website Privacy Policy | v2 | [Date] | [Date] | Website + office | ✅ NPP is HIPAA-specific |
| MBL (website) | Website Privacy Policy | v1 | [Date] | [Date] | Website | ✅ / ⚠️ |
| [Column6] | Website/Platform Privacy Policy | | | | | ⚠️ Review needed |

---

## Privacy Rights Fulfillment Log

| Date | Entity | Requestor | Right requested | Response deadline | Response date | Status |
|------|--------|---------|----------------|-----------------|-------------|--------|
| [Date] | Allevio | Patient | Access to records | 30 days | [Date] | ✅ Fulfilled |
| [Date] | [Entity] | Website visitor | Deletion (CCPA) | 45 business days | [Date] | |

---

## Annual Privacy Program Report

[Year] privacy program: Regulatory applicability confirmed — HIPAA ✅ Allevio; CCPA [Yes/No — entities]; GDPR [Yes/No]. Data map current ✅ (last updated [Date]). Privacy incidents: [N] (details in rc-data-breach-responder). Privacy rights requests fulfilled: [N]/[N]. Privacy program gaps: [List]. CEO aware: [Date].
```

## Output Contract
- Data mapping is done at the actual data level, not the policy level — saying "we comply with data privacy laws" without knowing what personal data the company actually collects, where it is stored, who has access, and what retention policy applies is not a privacy program; Dr. Lewis maintains a data inventory that is specific (system names, not vague categories) and current (updated when new systems or processes are added); the data map is the foundation for all privacy compliance decisions: breach scope, CCPA consumer rights response, retention schedule enforcement, and PIA triggering
- Privacy regulation applicability requires a factual analysis, not a default assumption — MBL portfolio companies are not all subject to the same privacy laws; a Utah oil and gas company without California employees or consumers has different CCPA exposure than a California-facing media company; GDPR only applies if there is EU data; COPPA only applies if there is a children's audience; Dr. Lewis conducts a factual applicability analysis for each portfolio company and updates it annually or when the business model changes; the analysis is documented so the basis for compliance decisions is clear
- Column6/Siprocal has the highest privacy risk in the portfolio — CTV and mobile advertising involves consumer data at scale (cookies, device IDs, IP addresses, demographic data, behavioral data); the regulatory environment for CTV/ad tech is evolving rapidly (CCPA, state privacy laws, FTC); Dr. Lewis flags Column6 as the highest privacy risk company in the portfolio and recommends attorney review of their privacy practices with legal counsel specializing in ad tech privacy; this skill provides the framework but does not substitute for specialized ad tech privacy counsel
- HITL required: Dr. Lewis manages privacy program; attorney for CCPA compliance (Column6); attorney for GDPR applicability and DPA execution; privacy rights requests fulfilled by Dr. Lewis within required timelines; Matt Mathison for material privacy program gaps; attorney for any privacy regulatory investigation or enforcement

## System Dependencies
- **Reads from:** Systems inventory (all portfolio companies), data flows (IT systems), hr data (employee personal data), AdvancedMD (Allevio PHI), GoHighLevel (CRM data), website analytics, rc-hipaa-privacy-officer (HIPAA program), rc-third-party-compliance (data sharing with vendors)
- **Writes to:** Privacy program documentation (SharePoint/RC/<Company>/Privacy/); data inventory/map; privacy policy (website, NPP); privacy rights request log; annual privacy program report; CEO and Matt Mathison brief for material gaps
- **HITL Required:** Dr. Lewis manages; attorney for CCPA (Column6), GDPR, COPPA, enforcement; Matt Mathison for material privacy gaps; CEO annual privacy program review

## Test Cases
1. **Golden path:** Annual privacy program review for MBL portfolio → Regulatory applicability: Allevio — HIPAA primary ✅; CCPA — assess CA nexus (Allevio primarily AZ-based; limited CA patients; below $25M revenue threshold; no CA consumer data sales — CCPA likely not fully applicable; website privacy policy updated to include CCPA-lite disclosure); MBL Holdings — no CA consumer nexus; HIVE — UT/CO operations; no CA nexus; Column6 — attorney engaged; CTV data includes CA consumers — CCPA applicable, attorney developing compliance plan; Data map updated: added 2 new vendors with data sharing; removed 1 deprecated system; Privacy policies reviewed: Allevio NPP current; MBL website privacy policy updated to reflect Google Analytics 4 (GA4); program report to CEO; Matt Mathison brief on Column6 CCPA development
2. **Edge case:** A patient at Allevio submits a right of access request for their medical records — is this HIPAA or CCPA? → HIPAA governs; PHI is exempt from CCPA; Allevio responds under HIPAA Privacy Rule: 30-day response window; provide records in accessible format; if electronic records, provide electronic copy if practicable; document in HIPAA patient rights log (rc-hipaa-privacy-officer); Dr. Lewis reviews the response before delivery; no CCPA analysis required for this request
3. **Adversarial:** "We don't collect that much personal data — privacy compliance probably doesn't apply to us" → Every employer collects personal data (employee SSNs, addresses, bank accounts for direct deposit); every business that has a website collects visitor data (IP addresses, cookies); every B2B company has contact databases; the question is not whether personal data is collected but what regulations apply to it and what the company's obligations are; Dr. Lewis determines what applies, documents the basis, and ensures the obligations are met — the determination may well be that fewer regulations apply than feared, but that conclusion comes from analysis, not assumption

## Audit Log
Data inventory/map maintained with version history. Privacy policy versions retained permanently. Privacy rights request log retained 3 years (CCPA requirement). Annual program reviews retained. Attorney engagement records retained. Regulatory applicability analyses retained and updated annually.

## Deprecation
Retire when portfolio companies have dedicated privacy officers or when Column6/Siprocal has engaged specialized ad tech privacy counsel managing their CCPA/state law compliance — with Dr. Lewis providing portfolio-level privacy program oversight and HIPAA privacy governance at Allevio.
