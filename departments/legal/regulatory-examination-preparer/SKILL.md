---
name: regulatory-examination-preparer
description: "Prepare for regulatory examinations and agency inspections. Use when the user says 'regulatory examination', 'agency inspection', 'CMS inspection', 'state audit', 'OSHA inspection', 'site visit', 'regulatory survey', 'we have an inspection coming', 'exam prep', 'prepare for regulator visit', or 'examination readiness'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--regulator <CMS|OCR|OSHA|DOL|state-agency>] [--mode <prep|mock|response>]"
---

# Regulatory Examination Preparer

Prepare for regulatory examinations and agency inspections for MBL portfolio companies. Regulatory examinations (not the same as external audits) are conducted by government agencies — CMS for healthcare, OSHA for workplace safety, OCR for HIPAA, state healthcare departments for licensing. Unlike external audits, organizations often have little notice of an examination, and the examiner has subpoena power. This skill builds examination readiness and manages the examination process when it arrives.

## When to Use
- Building examination readiness before a likely or scheduled examination
- Receiving notice of a regulatory examination or site visit
- Post-examination response to findings
- Annual examination readiness self-assessment
- New regulatory risk area — preparing before the examiner arrives

## Examination Types by Entity

| Regulator | Entity | Type | Notice | Authority |
|---------|--------|------|--------|---------|
| **HHS OCR** | Allevio | HIPAA audit (desk or on-site) | Written notice (desk); sometimes limited notice (on-site) | Subpoena power; civil money penalties |
| **CMS** | Allevio | Medicare enrollment revalidation; conditions of participation survey | Written notice for revalidation; unannounced for surveys | Revocation of Medicare enrollment |
| **State Health Dept (AZ AHCCCS)** | Allevio | Licensing survey; complaint investigation | Unannounced for complaint; notice for scheduled | License suspension/revocation |
| **OSHA** | All entities (clinical staff) | Safety inspection | Complaint = unannounced; scheduled = notice | Citation and civil penalties |
| **DOL Wage & Hour** | All entities | FLSA investigation | Complaint = unannounced | Back pay + liquidated damages |
| **UDOGM** | HIVE Partners | Oil & gas compliance inspection | Limited notice | Permit suspension; fines |

## Examination Readiness Self-Assessment

```
ALLEVIO — HIPAA Examination Readiness:
  ✅ Annual security risk analysis completed and documented
  ✅ All workforce members HIPAA trained (100%)
  ✅ BAA inventory complete and current (no missing BAAs)
  ✅ Policies reviewed and signed within last 12 months
  ✅ Audit logs retained for 6 years
  ✅ Breach response procedures documented and tested
  🟡 Missing: Emergency access procedure (document)
  ❌ Missing: PHI disposal certificate logs

ALL ENTITIES — OSHA Readiness:
  ✅ OSHA 300 injury log maintained (if required)
  ✅ OSHA 300A summary posted Feb 1 - Apr 30 (if required)
  ✅ Required safety postings visible
  ❌ Missing: Written Hazard Communication Program (if chemicals)
```

## Output Format

```markdown
# Regulatory Examination Preparation — <Entity>
**Date:** <date> | **Entity:** <name>
**Regulator:** <agency> | **Examination type:** <type>
**Notice received:** <date> / Proactive preparation (no notice yet)
**Examination date:** <date / Unknown>
**Lead respondent:** Dr. John Lewis / <name>

---

## Examination Overview

**Scope:** <what the examiner is reviewing>
**Regulatory authority:** <laws and regulations in scope>
**Recent enforcement actions in this area:** <2-3 known examples — what have examiners cited others for?>
**Primary risk areas for this entity:** <top 3-4 things most likely to be cited>

---

## Document Readiness Checklist

| Document | Location | Current? | Gap | Action |
|---------|---------|---------|-----|--------|
| HIPAA Security Risk Analysis | SharePoint/Compliance | ✅ 2024 version | None | Have ready |
| HIPAA Policies (all) | SharePoint/Policy Library | ✅ 2024 review | None | Have ready |
| Workforce training records | LMS export | ✅ 100% | None | Export for exam |
| BAA inventory and copies | Legal Drive | 🟡 2 BAAs need renewal | Renew before exam | Renew within 14 days |
| Audit logs (6 years) | Azure Sentinel | 🟡 Only 2 years retained | Gap | Extend retention; note in response |
| Breach log | IT + Compliance | ✅ | None | Have ready |
| Sanction policy | Employee Handbook | ✅ | None | Have ready |

---

## Personnel Preparation

| Role | Preparation Needed | Status |
|------|-----------------|--------|
| Dr. Lewis — lead respondent | Brief on examination scope; single point of contact for examiner | ✅ |
| Allevio Compliance Officer | Review HIPAA documentation; brief on what to say and what not to say | Scheduled |
| IT | Provide audit logs and technical documentation when requested | Briefed |
| HR | Employee training records available | ✅ |
| All staff | Brief: if an examiner asks you a question, refer to Dr. Lewis; do not volunteer information | Pre-exam brief needed |

**Staff communication protocol:** All examiner questions go through Dr. Lewis. Staff should not answer questions from examiners without Dr. Lewis present. This is not evasion — it's appropriate examination management.

---

## Day-of Examination Protocol

**Before examiner arrives:**
- [ ] Outside counsel notified and on standby (for OCR)
- [ ] Conference room reserved for examiner
- [ ] Document production area set up (printer, laptop)
- [ ] Staff briefed on communication protocol

**Upon examiner arrival:**
- [ ] Dr. Lewis greets examiner (not a junior employee)
- [ ] Request examiner's credentials and scope letter
- [ ] Take contemporaneous notes of all examiner requests
- [ ] Do NOT produce documents until each request is evaluated
- [ ] If uncertain about a request, "we'll get that for you" — do not produce immediately under pressure

**Document requests:**
- Produce only what is asked for — do not volunteer additional documents
- If a document has a gap, do not hide it — produce it and have a factual explanation ready
- Attorney-client privileged communications: do not produce; assert privilege

---

## Post-Examination Response

| Finding | Severity | Regulatory Cites | Proposed Penalty | Our Response | CAP |
|---------|---------|----------------|----------------|------------|-----|
| [Finding 1] | High | | | | |
| [Finding 2] | Medium | | | | |

**Response strategy:** Contest factual errors; concede clear violations; demonstrate good faith and remediation for findings you're not contesting.
```

## Output Contract
- Document gaps always addressed before examination — produce credible documentation, not perfect documentation
- Staff communication protocol always established — unsupervised staff conversations with examiners are the source of most examination problems
- Outside counsel always on standby for OCR, CMS, and DOL examinations — engagement ready before the examiner arrives
- Document privilege always protected — attorney-client communications are not produced to examiners
- HITL required: Dr. Lewis leads all examinations; outside counsel on standby; Matt Mathison notified when examination arrives; no documents produced without Dr. Lewis review; post-examination response always reviewed by outside counsel

## System Dependencies
- **Reads from:** Compliance documentation, policy library, training records, audit logs (provided by entity teams)
- **Writes to:** Examination readiness assessment and examination log (for Dr. Lewis and outside counsel)
- **HITL Required:** Dr. Lewis leads; outside counsel reviews document production and post-examination response; Matt Mathison notified of material findings

## Test Cases
1. **Golden path:** CMS scheduled revalidation notice for Allevio Medicare enrollment → 60-day notice; assemble: current W-9, Group NPI, provider NPI, enrollment application, licensing documentation; submit complete package within CMS deadline; no issues — enrollment revalidated
2. **Edge case:** Unannounced OSHA inspection at Allevio clinical facility following employee complaint → Dr. Lewis immediately joins the inspection; OSHA has the right to inspect without advance notice; do not block the inspection (this is illegal); accompany the OSHA inspector throughout; take contemporaneous notes of everything observed; engage outside OSHA counsel if citations are issued
3. **Adversarial:** Examiner asks to speak privately with an employee without Dr. Lewis present → OSHA and DOL have the right to interview employees privately; do NOT obstruct this; brief employees beforehand (answer truthfully, don't speculate, say "I don't know" if you don't know, refer complex questions to Dr. Lewis if possible); obstructing a lawful examination is worse than any finding

## Audit Log
Examination notices retained. Examination logs maintained. Document production logs retained. Post-examination correspondence retained. All findings and corrective actions retained.

## Deprecation
Retire when entity has a dedicated Compliance Officer who owns examination readiness as an ongoing program function, supplemented by outside regulatory counsel.
