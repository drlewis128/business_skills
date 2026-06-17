---
name: rc-compliance-training-builder
description: "Build and manage the required compliance training calendar. Use when the user says 'compliance training', 'required training', 'HIPAA training', 'annual training', 'training calendar', 'training schedule', 'employee training', 'training completion', 'build training program', 'training curriculum', 'mandatory training', 'training tracker', 'training compliance', 'who needs training', or 'training deadline'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--audience <all-staff|clinical|management|IT|finance>] [--action <build|track|report>]"
---

# Compliance Training Builder

Build and manage the required compliance training calendar for MBL portfolio companies — ensuring that all legally required, contractually required, and operationally critical training is delivered on schedule, tracked to completion, and documented for regulatory or audit purposes. Compliance training is not optional for portfolio companies: HIPAA training is a regulatory requirement at Allevio; anti-harassment training is a best practice and legal defense; and training completion records are the evidence that employees knew the rules when a violation is investigated. The training program is designed to be lean and targeted — not a bureaucratic exercise in checking boxes, but a genuine investment in keeping employees safe and the company compliant.

## When to Use
- Annual training calendar needs to be built or reviewed
- A new regulatory requirement triggers mandatory training
- A compliance incident prompts targeted training for affected staff
- New employee onboarding — what training must they complete before starting their role?
- Training completion rates are tracked — who is overdue?
- CEO or Matt Mathison asks about training compliance status

## Compliance Training Framework

```
Required training by category:

LEGALLY REQUIRED (non-negotiable; failure = regulatory violation):
  HIPAA Privacy and Security (Allevio — all staff):
    → Required: §164.308(a)(5) — HIPAA Security Rule; annual frequency
    → Content: HIPAA overview; PHI defined; what employees may and may not do; breach recognition and reporting; sanctions for violations
    → Audience: All Allevio staff — clinical AND administrative; no exceptions
    → Timing: At hire (before any PHI access); annually thereafter
    → New content additions: Any breach or near-miss generates targeted refresher within 30 days
    → Record retention: 6 years (HIPAA minimum)
    → Format: In-person, eLearning, or hybrid — documented attendance regardless of format
    
  OSHA General Safety (all portfolio companies with physical worksites):
    → Required at hire for new employees; annual refresher recommended
    → Content: Emergency procedures; hazard communication; workplace violence; reporting
    → Allevio-specific: Bloodborne Pathogen training for clinical staff (OSHA BBP Standard) — annual
    → HIVE-specific: Oil & gas safety; PPE; H2S awareness; OSHA 10 or 30 (preferred for field supervisors)
    
  Required posting acknowledgment:
    → At hire: Employee acknowledges receipt of all required employment law notices (FLSA, FMLA, EEO, etc.)

BEST PRACTICE REQUIRED (legal defense; near-mandatory):
  Anti-Harassment and Workplace Conduct:
    → At hire (within 30 days) + annual thereafter
    → Content: What constitutes harassment; reporting channels; non-retaliation; bystander intervention
    → Supervisor track (additional content): Supervisor responsibility; proper response to complaints; documentation
    → Documentation: Written acknowledgment that training was completed
    
  Data Security and Acceptable Use:
    → At hire + annual
    → Content: Phishing recognition; password management; data classification; what to do if breach suspected
    → Allevio: Enhanced PHI-handling content integrated
    
  Financial Controls and Ethics (management and finance staff):
    → At hire + when controls change
    → Content: Delegation of authority; approval requirements; expense policy; fraud reporting

OPERATIONAL (schedule based on business need):
  OIG LEIE / Exclusion Screening Awareness (Allevio clinical coordinators):
    → At hire + when new clinical staff is onboarded
    → Content: What exclusion means; why it matters; what to do if a staff member is found excluded
    
  AI and Automation Use Policy (all MBL portfolio staff):
    → At deployment of new AI tools + when policy updates
    → Content: What AI tools are approved; what is prohibited (PHI into consumer AI); how to use approved tools
    
Training completion standards:
  100%: HIPAA (Allevio) — zero tolerance for incomplete training before PHI access
  100%: Anti-Harassment (all staff) — legal defense requires 100%
  95%+: All other required training — 5% tolerance for new hires in onboarding window
  < 90%: Escalation required — CEO notified; individual follow-up initiated
  
New hire training gates (Allevio):
  Day 1 before PHI access: HIPAA Privacy and Security training — HARD GATE; no PHI access until complete
  Day 1 before floor: OSHA/BBP (clinical staff)
  Day 30: Anti-Harassment; Data Security; Acceptable Use
  Day 30: OIG LEIE awareness (clinical coordinators)
```

## Output Format

```markdown
# Compliance Training Calendar — <Company Name> — [Year]
**Maintained by:** Dr. John Lewis | **CEO:** [Name]
**Last updated:** [Date]

---

## Required Training Schedule

| Training | Audience | Frequency | Due date (annual) | Format | Owner |
|---------|---------|---------|-----------------|--------|-------|
| HIPAA Privacy & Security | All Allevio staff | Annual | [Date] | eLearning + sign-off | Dr. Lewis |
| HIPAA — Targeted Refresher | All Allevio staff | After incident | Within 30 days | In-person briefing | Dr. Lewis |
| OIG LEIE Awareness | Clinical coordinators | At hire + annually | [Date] | eLearning | Dr. Lewis |
| OSHA General Safety | All staff (worksites) | At hire + annually | [Date] | eLearning | Dr. Lewis |
| Bloodborne Pathogens (BBP) | Allevio clinical | Annual | [Date] | eLearning | Dr. Lewis |
| Anti-Harassment | All staff | At hire + annually | [Date] | eLearning + acknowledgment | Dr. Lewis |
| Supervisor Anti-Harassment | All supervisors | Annual | [Date] | Supervisor track | Dr. Lewis |
| Data Security / AUP | All staff | At hire + annually | [Date] | eLearning | Dr. Lewis |
| AI Use Policy | All staff | At deployment + updates | [Date] | Email + acknowledgment | Dr. Lewis |
| Financial Controls & Ethics | Management, Finance | At hire + changes | [Date] | Dr. Lewis-led session | Dr. Lewis |

---

## Training Completion Tracker

| Training | Audience size | Completed | % Complete | Overdue | Status |
|---------|------------|---------|-----------|---------|--------|
| HIPAA — Annual [Year] | 22 | 22 | 100% | 0 | ✅ |
| Anti-Harassment — Annual [Year] | 18 | 16 | 89% | 2 — [Names] | ⚠️ Follow-up |
| Data Security | 18 | 18 | 100% | 0 | ✅ |
| BBP (Allevio clinical) | 12 | 12 | 100% | 0 | ✅ |

**Overdue individuals:** [Name 1 — training name; deadline passed; follow-up email sent [Date]; CEO notified if no completion by [Date]]

---

## New Hire Training Compliance

| Employee | Role | Entity | Hire date | HIPAA | Anti-Harassment | Data Security | OIG LEIE | All complete? |
|---------|------|--------|---------|-------|----------------|--------------|---------|--------------|
| [Name] | RN | Allevio | [Date] | ✅ Day 1 | ✅ Day 14 | ✅ Day 20 | ✅ Day 5 | ✅ |
| [Name] | Billing | Allevio | [Date] | ✅ Day 1 | ⚠️ Overdue (Day 30 target) | | | ❌ |

---

## Annual CEO Compliance Training Report

[Year] compliance training: HIPAA (Allevio) 100% ✅; Anti-Harassment all staff 95% (1 outstanding — follow-up in progress); BBP 100% ✅; Data Security 98%; AI Policy 100%. No training-related regulatory findings. New hire training: [N] new hires onboarded; all Allevio hires completed HIPAA before PHI access. OSHA/BBP: 100%.

---

## Matt Mathison Brief (if training compliance falls below 90% or regulatory training at risk)

[Company] compliance training: HIPAA training at [X]% with [N] staff not complete — [action]. Anti-Harassment: [X]%. Risk: [Regulatory / Legal exposure description]. Corrective action: [Plan]. Deadline: [Date].
```

## Output Contract
- HIPAA training at Allevio is a hard gate before PHI access — not a soft target, not a "complete within 30 days" goal; if a new Allevio employee has not completed HIPAA training, they do not access AdvancedMD, do not handle patient records, and do not discuss PHI with clinical staff until training is complete and documented; Dr. Lewis implements this as a documented pre-access requirement in the onboarding checklist (it-onboarding-plan); an OCR audit will ask "how do you ensure staff are trained before PHI access?" — the answer is a documented gate, not a completion rate
- Training completion is tracked at the individual level, not just the percentage — "95% HIPAA training complete" is not useful if the 5% includes the new billing coordinator who started 2 months ago and has been accessing AdvancedMD since day 1; individual completion is tracked, overdue individuals are followed up with specific deadlines, and CEO is notified if the individual does not complete by the escalation deadline; anonymizing non-completion obscures exactly the risk that tracking is meant to surface
- Records are retained, not just tracking metrics — training completion records are not just a dashboard number; they are the legal evidence that an employee received required training before they had access to PHI, before a harassment incident, or before a data security breach; Dr. Lewis retains HIPAA training records for 6 years per HIPAA retention requirement; anti-harassment training records are retained 7 years (employment dispute statute of limitations); the training platform export or signed attendance sheet is the record
- HITL required: Dr. Lewis manages training calendar and completion tracking; CEO receives annual training report; CEO notified when any required training falls below 90%; attorney for HIPAA training failures discovered after a breach investigation; Matt Mathison for compliance training failures that represent material regulatory risk

## System Dependencies
- **Reads from:** Employee roster (HR), onboarding checklists (it-onboarding-plan, hr-onboarding-coordinator), training platform (eLearning LMS or manual tracking), HIPAA training records (Allevio), rc-policy-manager (policy acknowledgment records), rc-hipaa-security-program (HIPAA training requirement)
- **Writes to:** Training calendar (SharePoint/RC/<Company>/Training/Calendar/); completion tracker (per employee, per training); CEO annual training report; HIPAA training records (Allevio — 6-year retention); onboarding completion sign-offs
- **HITL Required:** Dr. Lewis manages program; CEO annual report; CEO for <90% completion rate; attorney if HIPAA training failure is discovered post-breach; Matt Mathison for material regulatory training risk

## Test Cases
1. **Golden path:** Annual HIPAA training cycle at Allevio → Due date: March 31; roster: 22 staff; training deployed via email with eLearning link (or in-person if preferred); completion tracking in SharePoint (individual sign-off sheets); March 15: 20 of 22 complete (91%); 2 outstanding: Medical Assistant (out sick) and Billing Coordinator (on leave); March 16: follow-up email with 2-week extension for sick employee; Billing Coordinator on approved FMLA — training paused, will complete on return; March 31: 21 of 22 complete (FMLA employee excluded from denominator per FMLA status); 100% of active employees complete; records filed; CEO annual training report includes this; records retained 6 years in SharePoint
2. **Edge case:** A new Allevio nurse starts Monday and HIPAA training is not completed before her first shift → Immediate issue: clinical staff without HIPAA training accessing PHI is a §164.308(a)(5) compliance failure; Dr. Lewis triggers the onboarding gate protocol: nurse is informed that she cannot access AdvancedMD until HIPAA training is complete; a 2-hour onboarding session is scheduled for 8 AM Monday before her clinical shift begins; the training is completed, documented, and the AdvancedMD account is provisioned at 10 AM; no PHI access gap; the onboarding checklist system is reviewed to understand why the gate was nearly missed (hiring manager did not notify IT and compliance 5 business days before start date as required); process updated
3. **Adversarial:** "Our staff complain about the volume of required training — can we skip some of it?" → The HIPAA training, BBP (clinical), and OSHA training are legally required and cannot be skipped; anti-harassment training is the primary legal defense in employment discrimination claims and cannot be meaningfully reduced; the correct response to training fatigue is format optimization, not content elimination: eLearning modules can be shorter and more targeted; role-specific tracks eliminate content irrelevant to the employee's job; annual refreshers can be condensed for long-tenured employees while maintaining documentation; Dr. Lewis optimizes the format; Dr. Lewis does not reduce legally required content

## Audit Log
Training completion records retained: HIPAA 6 years; Anti-Harassment 7 years; OSHA 3 years from training date; all other compliance training 3 years. Annual training reports retained permanently. Individual completion records by employee name, training title, date, and completion evidence. Onboarding training gate documentation retained per employee file.

## Deprecation
Retire when portfolio companies have a dedicated HR/compliance training function with an LMS (Learning Management System) providing automated delivery, completion tracking, and record retention — with Dr. Lewis reviewing HIPAA and regulatory training content annually for accuracy and compliance.
