---
name: rc-privacy-impact-assessor
description: "Conduct privacy impact assessments for new projects, systems, and data uses. Use when the user says 'privacy impact assessment', 'PIA', 'DPIA', 'data protection impact assessment', 'privacy review', 'new system privacy', 'privacy risk', 'PHI risk assessment', 'privacy by design', 'new project privacy', 'privacy checklist', 'does this need a privacy review', 'privacy of new feature', or 'before we launch this'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--project <project name>] [--entity <company name>] [--data-type <PHI|PII|financial|all>] [--action <screen|full-PIA|DPIA>]"
---

# Privacy Impact Assessor

Conduct privacy impact assessments (PIAs) and data protection impact assessments (DPIAs) before launching new systems, processes, or data uses — identifying and mitigating privacy risks before they are built in, rather than retrofitting privacy controls after the fact. Privacy by design is the principle that privacy is considered at the design phase, not as an afterthought; a PIA is the operational tool that implements this principle. At Allevio, any new system or process that involves PHI requires a privacy review; at portfolio companies with consumer data (Column6), new data uses require DPIA analysis under GDPR if EU data is involved.

## When to Use
- A new software system or platform is being evaluated or implemented
- A new data collection or sharing practice is being designed
- A new use of existing data is being proposed (marketing, analytics, AI training)
- A new vendor will have access to personal data — before the contract is signed
- GDPR DPIA is required for high-risk processing of EU personal data
- HIPAA §164.308(a)(1) risk analysis update required after a significant system change at Allevio
- An AI or automation tool is being deployed that processes personal data

## PIA Framework

```
PIA screening (determine if full PIA is needed):
  Low-risk processing (no full PIA needed):
    → No personal data collected or processed
    → Existing data used for existing purpose with no new access
    → Fully automated process with no human decision impact and minimal data
    
  Moderate-risk processing (light PIA):
    → Personal data collected for new purpose
    → New vendor accessing existing personal data
    → Automated decision-making that doesn't affect legal rights
    
  High-risk processing (full PIA required; DPIA required if GDPR applies):
    → Large-scale processing of sensitive data (PHI, financial, health data)
    → Systematic monitoring or tracking of individuals
    → New technology with unclear privacy implications
    → Processing of children's data
    → Any PHI system at Allevio (HIPAA risk analysis update required)
    → AI/ML processing of personal data for decision-making
    
PIA structure:
  1. System/process description: What data, for what purpose, by whom
  2. Data inventory: What personal data; from where; how long retained
  3. Legal basis: HIPAA (if PHI); CCPA consent/disclosure (if applicable); GDPR lawful basis (if EU data)
  4. Data flows: Who gets the data; what systems it passes through; third parties
  5. Risk assessment: Privacy risks identified (breach, unauthorized access, misuse, over-collection, retention violation)
  6. Risk mitigation: Controls added or existing controls confirmed
  7. Residual risk: Acceptable or not? What HITL is required?
  8. Decision: Approve / Approve with conditions / Do not approve
  
GDPR DPIA threshold (if EU data involved — Column6/Siprocal primarily):
  Required when processing is "likely to result in high risk to rights and freedoms":
    → Systematic and extensive evaluation of personal aspects (profiling, automated decision)
    → Large-scale processing of special categories (health, biometric, criminal)
    → Systematic monitoring of publicly accessible areas
  DPIA must include: Description of processing, necessity/proportionality, risk assessment, measures to address risks
  DPO consultation: If a Data Protection Officer is designated — DPIA is shared with DPO
  
HIPAA risk analysis requirement:
  §164.308(a)(1)(ii)(A): Conduct an accurate and thorough assessment of the potential risks and vulnerabilities to the confidentiality, integrity, and availability of ePHI
  Trigger events: Annual review + after any significant system change
  PIA output for HIPAA purposes: Documents the risk analysis for the new system; updates the risk analysis record
```

## Output Format

```markdown
# Privacy Impact Assessment — <Project/System Name>
**Entity:** [Company] | **Date:** [Date]
**Assessed by:** Dr. John Lewis | **Type:** Screening / Light PIA / Full PIA / DPIA

---

## Project Description

**What is being built/changed/deployed:** [Clear description]
**Personal data involved:** [Types — PHI / PII / Financial / Behavioral / Children's]
**Data source:** [Where data comes from]
**Purpose:** [What the data is used for]
**Users/processors:** [Who accesses — internal roles; third-party vendors]
**Volume:** [Approximate number of individuals; data volume]

---

## PIA Screening

| Screening question | Yes | No |
|-------------------|-----|-----|
| Does this involve personal data? | | |
| Is this a new use of existing data? | | |
| Does this involve sensitive data (PHI, financial, biometric, children's)? | | |
| Does this involve a new vendor accessing personal data? | | |
| Does this involve automated decision-making? | | |
| Does this involve large-scale data processing? | | |

**Screening result:** No PIA needed / Light PIA / Full PIA required / DPIA required (if GDPR applies)

---

## Data Inventory

| Data element | Category | Source | Retention | Shared with | Encrypted? |
|-------------|---------|--------|---------|-----------|----------|
| Patient name + DOB | PHI | AdvancedMD | 6 years | Billing company (BAA) | ✅ |
| Email address | PII | Patient consent | 3 years | Email platform | ✅ |
| Device identifier | Behavioral | App SDK | 1 year | Ad partners | ⚠️ Check |

---

## Risk Assessment

| Risk | Likelihood (1-5) | Impact (1-5) | Score | Mitigation |
|------|----------------|------------|-------|-----------|
| Unauthorized access to PHI | 3 | 5 | 15 High | MFA; role-based access; BAA |
| Data exfiltration by vendor | 2 | 5 | 10 Medium | Vendor security assessment; contractual controls |
| Retention violation (data kept too long) | 3 | 3 | 9 Medium | Automated retention policy; audit |
| Over-collection (collecting more than needed) | 2 | 3 | 6 Low | Data minimization review |

---

## Mitigations and Conditions

| Risk | Mitigation | Status | Owner |
|------|-----------|--------|-------|
| PHI access | MFA required; role-based access; BAA executed before PHI flows | Required before launch | Dr. Lewis |
| Vendor | Security questionnaire completed; MSA with data protection terms | Required before vendor access | Dr. Lewis |
| Retention | Retention schedule configured in [System]; automated deletion | Required before launch | IT |

---

## Legal Basis and Compliance

| Regulation | Applicable? | Basis | Satisfied? |
|-----------|-----------|-------|-----------|
| HIPAA | ✅ | Covered Entity processing PHI for Treatment/Payment/Operations | ✅ if BAA, minimum necessary, safeguards |
| CCPA | ✅ / No | [Basis if applicable] | |
| GDPR | ✅ / No | [Lawful basis if applicable] | |

**BAA required:** ✅ Yes — must be executed before PHI flows to [Vendor] / N/A
**Minimum necessary:** Confirmed — only PHI required for [Purpose] is included

---

## Decision

**Privacy risk level:** 🟢 Low / 🟡 Medium / 🔴 High
**Decision:** ✅ Approved / ✅ Approved with conditions / ❌ Do not approve — reason: [Why]

**Conditions (must be met before launch):**
1. [Condition 1 — specific; measurable]
2. [Condition 2]

**HITL checkpoint:** [Dr. Lewis reviews before PHI access begins / CEO must approve / Matt Mathison for >$250K risk]

**PIA approved by:** Dr. John Lewis — [Date]
**Attorney reviewed:** [Date] / Not required (low risk)
```

## Output Contract
- PIA comes before system launch, not after — a PIA conducted after a system is already live is a documentation exercise, not a risk management tool; Dr. Lewis is included in new system and vendor evaluation before the contract is signed or the implementation begins; the PIA may result in conditions that affect system design or vendor selection; if the conditions cannot be met, the system is not launched; Dr. Lewis maintains a list of system implementations and ensures PIAs are completed before go-live
- "Do not approve" is a real outcome — a PIA that always approves every project is not a risk management tool; Dr. Lewis will recommend not approving a system or data use when the privacy risks are unacceptable and cannot be mitigated; this most commonly applies to AI/ML tools that process PHI for non-TPO purposes without individual consent, consumer data sales practices at Column6 without adequate consent mechanisms, or data sharing arrangements without proper legal basis; the "do not approve" decision is documented and explained; it is not a final decision — it is a decision that the project in its current form cannot proceed; the project can come back with a different design
- HIPAA §164.308(a)(1) requires that the risk analysis be updated after significant changes — a new EHR module, a new integration with a billing system, a new telehealth feature — all trigger a HIPAA risk analysis update at Allevio; the PIA output for HIPAA purposes documents this analysis update; Dr. Lewis maintains the HIPAA risk analysis as a living document that is updated with each PIA for systems involving PHI; OCR will ask to see the current risk analysis, not just the original one from the time of implementation
- HITL required: Dr. Lewis conducts all PIAs; attorney reviews for GDPR DPIAs, systems involving children's data, and any "do not approve" decision appealed by management; CEO approval for any system launch with a residual High privacy risk; Matt Mathison for systems with >$250K potential impact if privacy risk materializes; vendor agreements with data protection terms signed by CEO

## System Dependencies
- **Reads from:** System design documentation, vendor proposals and security questionnaires, rc-third-party-compliance (BAA status), rc-privacy-program-builder (data inventory), rc-hipaa-security-program (HIPAA risk analysis baseline), IT system architecture
- **Writes to:** PIA records (SharePoint/RC/<Company>/Privacy/PIAs/); HIPAA risk analysis update (Allevio); attorney review file; launch conditions tracker; project go/no-go recommendation
- **HITL Required:** Dr. Lewis assesses; attorney for GDPR DPIAs, children's data, and contested "do not approve"; CEO approval for High residual risk; Matt Mathison for >$250K impact; vendor data protection agreements: CEO signs

## Test Cases
1. **Golden path:** Allevio evaluating a new patient communication platform that will send appointment reminders and collect satisfaction survey data via text message → PIA trigger: new system + PHI (patient names, phone numbers, appointment data); Full PIA required; Data inventory: patient name, phone, appointment type (PHI); source: AdvancedMD; vendor: [Platform]; purpose: appointment reminders + satisfaction surveys; Data flows: AdvancedMD → vendor → patient phone; Risk assessment: Unauthorized access (High if no BAA); vendor security (Medium — assess SOC 2); over-collection (Low if appointment type only, not clinical details); Legal basis: HIPAA TPO (Treatment/Operations) — appointment reminders ✅; Survey data — needs patient consent if PHI collected; Mitigations: BAA required before integration; vendor SOC 2 Type II reviewed ✅; minimum necessary — only appointment data transmitted, not clinical; consent mechanism for surveys; Conditions: BAA executed ✅; vendor security questionnaire complete ✅; minimum necessary confirmed; Approved with conditions met; PHI flow begins; HIPAA risk analysis updated
2. **Edge case:** Column6 wants to use an AI model to predict which users are most likely to engage with certain ad categories — training the model on behavioral data → High-risk processing; DPIA required (EU data present in CTV audience); privacy risks: profiling (systematic evaluation of natural persons); sensitive inferences (health, politics from behavioral data — GDPR special categories); automated decision-making affecting users; data minimization: is all behavioral data necessary for the model?; attorney engaged (GDPR DPIA required); FTC rules on AI and deceptive targeting (if inferences are used in discriminatory ways); CCPA: right to opt out of automated decision-making; conditions: GDPR DPIA completed by attorney; legitimate interest assessment for EU data; CCPA opt-out mechanism implemented; privacy notice updated; AI use policy updated; approved with all conditions met or not approved pending conditions
3. **Adversarial:** "We don't have time for a PIA — we need to launch this system next week" → Timeline pressure is not a valid reason to skip privacy review; a PIA for a low-risk system takes 2-4 hours; a PIA for a high-risk system takes 1-2 days; neither is a launch-blocking constraint if planned appropriately; the cost of a HIPAA breach caused by a system launched without privacy review is measured in: regulatory fines (up to $1.9M per violation category per year); individual notification costs; OCR investigation time; reputational damage; the PIA is not the blocker — the timeline planning that didn't include privacy review is the blocker; Dr. Lewis will expedite the PIA for urgent timelines but will not skip it; if launch without privacy review cannot be avoided, the risk is documented and the CEO accepts it explicitly

## Audit Log
All PIAs retained permanently with decision and supporting documentation. Conditions and completion status retained. HIPAA risk analysis updates retained permanently. Attorney DPIA reviews retained. "Do not approve" decisions and rationale retained. Launch authorization records retained.

## Deprecation
Retire when portfolio companies have formal privacy governance programs with dedicated privacy officers and automated PIA workflows — with Dr. Lewis reviewing high-risk PIAs (AI/ML on PHI; new PHI systems at Allevio; EU data processing at Column6). HIPAA risk analysis update function remains a Dr. Lewis responsibility until a dedicated HIPAA security officer is hired.
