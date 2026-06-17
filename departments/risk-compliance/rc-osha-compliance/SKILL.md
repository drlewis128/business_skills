---
name: rc-osha-compliance
description: "Manage OSHA workplace safety compliance and incident reporting. Use when the user says 'OSHA compliance', 'OSHA 300', 'OSHA log', 'workplace safety', 'workplace injury', 'OSHA recordable', 'OSHA 300A', 'safety program', 'workplace incident', 'OSHA inspection', 'safety compliance', 'employee injury', 'accident reporting', 'OSHA reporting', 'OSHA requirements', or 'recordable injury'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <incident-report|300-log|300A-posting|inspection|program-review>] [--year <YYYY>]"
---

# OSHA Compliance Manager

Manage OSHA (Occupational Safety and Health Administration) workplace safety compliance at MBL portfolio companies — maintaining the OSHA 300 log, completing required reporting, preparing the annual 300A summary, and establishing a workplace safety program appropriate to each entity's industry and risk profile. At Allevio (healthcare), OSHA's Bloodborne Pathogen Standard and ergonomics requirements are particularly relevant. At HIVE Partners (oil & gas), OSHA's hazard communication and personal protective equipment standards apply. All portfolio companies are subject to general industry standards.

## When to Use
- A workplace injury or illness occurs — is it OSHA recordable?
- Maintaining the OSHA 300 log — current for all recordable incidents
- Annual 300A summary posting (February 1 — April 30 each year)
- Preparing for an OSHA inspection (routine or complaint-driven)
- Building a workplace safety program for a portfolio company
- Conducting a workplace safety risk assessment

## OSHA Compliance Framework

```
OSHA recordability determination:
  A work-related injury/illness is OSHA recordable if it results in ANY of:
    → Days away from work (even 1 day)
    → Job restrictions or job transfer
    → Medical treatment beyond first aid
    → Loss of consciousness
    → Diagnosis by a healthcare professional (HCP) of a significant condition
    → Death (always recordable)
    
  First aid only = NOT recordable (examples): Band-aids, OTC medications, hot/cold packs, tetanus shots, drilling of fingernail
  Recordable but NOT reportable to OSHA unless severity threshold met
  
OSHA reporting requirements (within deadlines):
  OSHA 300 log: Maintained throughout the year; incident by incident as they occur
  OSHA 301 (Injury and Illness Incident Report): Complete for each recordable within 7 days
  
  Reportable to OSHA (phone or online — 1-800-321-OSHA):
    → Fatality: Report within 8 hours
    → Hospitalization (in-patient) of one or more employees: Report within 24 hours
    → Amputation: Report within 24 hours
    → Eye loss: Report within 24 hours
    
  Annual posting requirement:
    → OSHA 300A Summary: Post February 1 — April 30 each year
    → Post even if zero recordable incidents
    → Signed by a company executive (CEO or highest-ranking officer at the site)
    
Healthcare-specific OSHA standards (Allevio):
  Bloodborne Pathogens Standard (29 CFR 1910.1030):
    → Exposure Control Plan: Written; reviewed annually; accessible to workers
    → Engineering controls: Sharps disposal containers; needleless systems where feasible
    → Work practice controls: Hand hygiene; no recapping needles
    → PPE: Gloves, face shields as appropriate
    → HBV vaccination: Offered to all employees with occupational exposure within 10 days of hire
    → Post-exposure evaluation: Protocol for needle sticks and exposures
    → Training: Annual; on hire; when exposure controls change
    
Oil & Gas-specific OSHA (HIVE):
  Hazard Communication Standard (HazCom/GHS): SDS for all chemicals; labeling
  Process Safety Management (PSM): If >10,000 lbs of highly hazardous chemical — assess applicability
  Personal Protective Equipment (PPE): Hazard assessment; appropriate PPE provided
  
All entities — standard OSHA requirements:
  OSHA poster: "Job Safety and Health — It's the Law" posted at each worksite
  Hazard Communication: SDS available for all chemicals used
  Emergency action plan: Evacuation procedures; emergency contacts posted
  First aid availability: First aid kit; trained personnel or accessible medical care
```

## Output Format

```markdown
# OSHA Compliance Status — <Company Name>
**Year:** [YYYY] | **Responsible person:** Dr. John Lewis
**NAICS code:** [Code] | **SIC code:** [Code] | **Establishment size:** [N employees]

---

## OSHA 300 Log — Year-to-Date

| Case # | Employee name (or "Privacy" if sensitive) | Date of injury | Location | Description | Result | Days away | Restricted days | Record type |
|--------|----------------------------------------|--------------|---------|------------|--------|-----------|----------------|------------|
| [001] | [Name or "Privacy Case"] | [Date] | [Location] | [Brief description] | [Days away/Restricted/Other] | [N] | [N] | [Injury/Illness type] |

**YTD recordable incidents:** [N] | **Days away from work:** [N] | **Restricted days:** [N]

---

## OSHA Recordability Determination

For each reported incident, document the recordability decision:

### Incident: [Date] — [Brief description]
- **Injury/illness:** [Description]
- **Medical treatment received:** [Description]
- **First aid only?** Yes / No
- **OSHA recordable?** Yes / No
- **Reason:** [Specific basis for determination]
- **OSHA 301 completed:** Yes / Date completed
- **Reported to OSHA within deadlines?** N/A (not reportable) / Yes — [Date]

---

## Annual 300A Summary

**Year:** [YYYY]
**Total hours worked by all employees:** [N]
**Total recordable cases:** [N]
**Cases with days away from work:** [N]
**Cases with job transfer or restriction:** [N]
**Other recordable cases:** [N]

**Incidence rates:**
- DART (Days Away, Restricted, Transfer) rate = (N cases × 200,000) / total hours = [Rate]
- TRIR (Total Recordable Incident Rate) = (N recordables × 200,000) / total hours = [Rate]
- Industry benchmark DART: [N] | Industry benchmark TRIR: [N] | Our rate: [Better/Worse]

**300A signed by:** [CEO name] — [Title] — [Date]
**300A posting period:** February 1, [YYYY] — April 30, [YYYY]

---

## Workplace Safety Program Status

| Program element | Status | Last reviewed | Next action |
|----------------|--------|-------------|------------|
| OSHA poster posted at all worksites | ✅ / ⚠️ | [Date] | |
| Emergency action plan | ✅ Current / ⚠️ Outdated | [Date] | |
| First aid kit — stocked and checked | ✅ | [Date] | [Next check date] |
| Bloodborne Pathogen Exposure Control Plan (Allevio) | ✅ Current / ⚠️ Needs update | [Date] | |
| BBP training completed (all Allevio clinical staff) | [X]% ✅ / [N] overdue ⚠️ | | |
| HBV vaccination offered (Allevio clinical staff) | [X]% offered ✅ | | |
| SDS available for all chemicals | ✅ / ⚠️ Gap | | |
| PPE hazard assessment | ✅ | [Date] | |

---

## OSHA Inspection Preparedness

**Last OSHA inspection:** [Date / Never]
**Triggered by:** Routine / Complaint / Referral / Programmatic emphasis

**Inspection readiness checklist:**
- [ ] OSHA 300 log current and available for 5 years
- [ ] 300A summaries for last 5 years available
- [ ] OSHA 301s for all recordable incidents on file
- [ ] OSHA poster posted at all entrances/workstations
- [ ] Bloodborne Pathogen ECP current and accessible (Allevio)
- [ ] Employee training records current
- [ ] SDS binder/digital access available to all employees
- [ ] First aid kits stocked

---

## Matt Mathison Brief (if OSHA investigation or citation)

[Company] OSHA: [Incident or inspection]. Citation: [Yes/No — description]. Penalty: $[X] (if applicable). Abatement required: [What, by when]. Attorney involved: [Yes/No]. Status: [Resolved / In progress].
```

## Output Contract
- Recordability determinations are made within 7 days — the OSHA 300 entry and 301 form must be completed within 7 calendar days of receiving information that a recordable case occurred; waiting to see how the employee recovers before recording is not compliant; if a case is initially thought to be first aid only but the employee subsequently receives medical treatment beyond first aid, record it at that point; log the date of injury, not the date of determination
- Reportable incidents (fatality, hospitalization, amputation, eye loss) trigger immediate action — fatality: call OSHA within 8 hours; do not wait for the investigation to conclude; do not wait to notify leadership first (notify CEO simultaneously, not after OSHA call); hospitalization of even one employee: 24-hour call; amputation: 24-hour call; these deadlines are hard and OSHA investigates compliance with the reporting deadline as part of any investigation
- The 300A posting is signed by a company executive — it cannot be signed by Dr. Lewis alone; it must be signed by the company owner, officer, or highest-ranking company official at the establishment; CEO signature is required; the posting requirement is February 1 — April 30 — not February 1 for some sites and March for others; all sites post for the full period; zero incidents does not eliminate the posting requirement
- HITL required: Dr. Lewis manages OSHA compliance program; CEO signs 300A; workplace safety incidents investigated by Dr. Lewis + site manager; OSHA-reportable incidents notified to CEO and Matt Mathison simultaneously with OSHA notification; attorney involvement for OSHA inspections, citations, and fatality investigations

## System Dependencies
- **Reads from:** Incident reports from site managers (HR system, email, or safety form), medical treatment records (employee health/workers comp — not clinical PHI), employee hours worked (payroll system), training completion records
- **Writes to:** OSHA 300 log (SharePoint/RC/<Company>/OSHA/300Log/); OSHA 301 forms; 300A summary; annual posting; BBP exposure control plan (Allevio); training records
- **HITL Required:** Dr. Lewis manages OSHA program; CEO signs 300A; OSHA-reportable incidents: CEO + Matt Mathison simultaneously with OSHA notification; attorney for inspections, citations, fatality investigations

## Test Cases
1. **Golden path:** Allevio MA has needle stick from used insulin needle while disposing of sharps container → Recordability determination: needle stick from contaminated sharps = potential occupational exposure; treatment: blood drawn, tested; employee offered HBV prophylaxis and follow-up testing — this is medical treatment beyond first aid; OSHA recordable = YES; OSHA 300 entry and 301 completed within 7 days; BBP post-exposure protocol activated: exposure documented, source patient identified (if possible), employee counseled on exposure management; OSHA reportable? No (not hospitalized, not amputation, not fatality); incident investigated: sharps container overfilled (root cause); corrective action: sharps containers replaced at 3/4 full, not when overflowing; training reminder sent to all clinical staff; CEO informed
2. **Edge case:** Employee says they hurt their back at work but it's unclear if it's work-related → Work-relatedness determination: was the employee's work environment either the cause or a contributing factor? If the employee was lifting a patient (Allevio) — clearly work-related; if the employee sits at a desk and reports back pain with no specific incident — evaluate: is the ergonomic environment a contributing factor? Has the employee had prior back issues? Did a specific event occur at work? When in doubt, document the investigation; if there is reasonable evidence the work environment contributed, record it; do not pressure employees to characterize work-related injuries as personal health issues
3. **Adversarial:** "We've had zero injuries — we don't need to worry about OSHA" → Zero injuries is the goal; OSHA compliance is not contingent on having injuries; OSHA requires: 300 log maintained (even if empty); 300A posted February-April; OSHA poster at all sites; emergency action plan; first aid availability; Bloodborne Pathogen program (Allevio); training records; an OSHA inspection of a company with zero injuries could still result in citations for missing the poster, failing to post the 300A, or not having a written BBP Exposure Control Plan; the compliance program exists independently of the injury rate

## Audit Log
OSHA 300 logs retained 5 years after the year covered. OSHA 301 forms retained 5 years. 300A summaries retained 5 years. OSHA inspection records retained permanently. Citation and abatement records retained permanently. Bloodborne Pathogen training records retained 3 years after employment ends (OSHA BBP standard). Post-exposure records retained 30 years (OSHA bloodborne pathogens — employee medical records).

## Deprecation
Retire when portfolio companies have dedicated HR/Operations safety functions managing OSHA compliance — with Dr. Lewis reviewing OSHA 300 logs quarterly and signing OSHA 300A annually (as oversight). CEO signature on 300A is a permanent requirement regardless of who manages the program.
