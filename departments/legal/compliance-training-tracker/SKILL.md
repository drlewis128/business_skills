---
name: compliance-training-tracker
description: "Track compliance training completion across the organization. Use when the user says 'compliance training', 'training completion', 'HIPAA training', 'security awareness training', 'who completed training', 'training compliance', 'training report', 'mandatory training', 'training deadline', or 'training gap'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name|all>] [--training <HIPAA|security|harassment|code-of-conduct|all>] [--period <annual|quarterly>]"
---

# Compliance Training Tracker

Track compliance training completion across MBL portfolio companies. Compliance training is both a regulatory requirement (HIPAA requires annual workforce training; SOC 2 requires security training documentation) and a risk mitigation measure. An organization with 80% training completion has not met HIPAA's "all workforce members" requirement — the 20% gap is an enforcement finding. This skill tracks completion, identifies gaps, and escalates non-completers.

## When to Use
- Monthly training completion check
- New employee onboarding — training completion gate
- Regulatory audit prep — proving training compliance
- After a security incident — was the relevant training completed?
- Annual training program planning

## Required Training by Entity

### All Entities — Annual Required Training

| Training | Frequency | Audience | Regulatory Driver | Completion Target |
|---------|---------|---------|----------------|----------------|
| Security Awareness Training | Annual | All employees | SOC 2 CC1, HIPAA §164.308(a)(5) | 100% |
| Phishing Simulation | Quarterly | All employees | SOC 2, best practice | 100% participation |
| Code of Conduct / Ethics | Annual | All employees | SOC 2 CC1, governance | 100% |
| Anti-Harassment / Workplace | Annual | All employees | Employment law (required in CA, other states) | 100% |
| Data Protection / Privacy | Annual | All employees | CCPA, GDPR, general | 100% |

### Allevio — Additional Required Training

| Training | Frequency | Audience | HIPAA Reference | Target |
|---------|---------|---------|---------------|--------|
| HIPAA Privacy Training | Annual | All staff | §164.530(b) | 100% |
| HIPAA Security Awareness | Annual | All staff | §164.308(a)(5) | 100% |
| PHI Handling Training | Annual | Clinical/billing staff | §164.530(b) | 100% clinical |
| Breach Response Training | Annual | IT + Compliance | §164.530(b) | 100% IT |
| HIPAA refresher (after incident) | As needed | Involved staff | §164.530(b) | 100% involved |

## Output Format

```markdown
# Compliance Training Report — <Entity>
**Period:** <month/quarter/year> | **Date:** <date>
**Entity:** <name> | **Total workforce:** <N>
**Prepared by:** Dr. John Lewis / HR / Compliance Officer

---

## Training Completion Summary

| Training | Required | Completed | Completion % | Status | Deadline |
|---------|---------|---------|------------|--------|---------|
| Security Awareness | 45 | 42 | 93.3% | 🟡 Gap — 3 employees | <date> |
| HIPAA Privacy | 45 | 45 | 100% | ✅ | |
| Anti-Harassment | 45 | 38 | 84.4% | 🔴 Below target | <date> |
| Code of Conduct | 45 | 45 | 100% | ✅ | |
| Phishing Simulation Q1 | 45 | 45 | 100% | ✅ | |
| Data Protection | 45 | 40 | 88.9% | 🟡 | <date> |

**Overall compliance:** 4/6 programs at 100% | 2 with gaps

---

## Completion Gaps — Action Required

| Training | Outstanding Employees | Department | Deadline | Action |
|---------|---------------------|---------|---------|--------|
| Security Awareness | Employee A, Employee B, Employee C | IT (1), Admin (2) | <date in 14 days> | HR to escalate — manager notification |
| Anti-Harassment | 7 employees | Operations (4), Admin (3) | <date in 7 days> | Mandatory completion by Friday or escalate to manager |

**HIPAA Note:** All Allevio employees must complete HIPAA training annually. Any employee without current HIPAA training may not access PHI until training is complete.

---

## New Employee Training Status

| Employee | Start Date | HIPAA Training | Security Training | Code of Conduct | Status |
|---------|---------|------------|--------------|--------------|--------|
| New hire A | <date> | ✅ Done D+5 | ✅ Done D+5 | ✅ Done D+3 | ✅ Complete |
| New hire B | <date> | ❌ Pending | ❌ Pending | ✅ Done D+1 | 🔴 Incomplete — cannot access PHI |

**PHI Access Gate:** New Allevio employees may not access PHI until HIPAA training is complete. New hire B cannot be given PHI access until training is done.

---

## Training Completion Rate Trend

| Month | Security Awareness | HIPAA Privacy | Anti-Harassment |
|-------|------------------|-------------|----------------|
| Jan | 97% | 100% | 91% |
| Feb | 95% | 100% | 90% |
| Mar | 93% | 100% | 84% |
| Trend | ↓ Declining | → Stable | ↓ Declining — investigate |

**Anti-harassment decline noted** — investigate if specific department or cohort is driving non-completion.

---

## Regulatory Compliance Status

| Regulation | Training Requirement | Status | Evidence Available? |
|-----------|-------------------|--------|-------------------|
| HIPAA §164.308(a)(5) | Annual security training for all workforce | ✅ 100% | ✅ LMS completion records |
| HIPAA §164.530(b) | Privacy training for all workforce | ✅ 100% | ✅ |
| SOC 2 CC1 | Security awareness training documented | 🟡 93% (gap) | 🟡 Partial — gap to close |
| CA AB 1825 (anti-harassment — CA) | Supervisors: 2 hr training every 2 yr | ✅ (if CA employees) | ✅ |
```

## Output Contract
- 100% completion always the target — "substantially complete" is not a passing grade for HIPAA auditors
- PHI access gate always enforced for Allevio — no PHI access for employees without current HIPAA training
- Declining trends always flagged — a training completion rate that was 97% and is now 93% needs investigation before it becomes a compliance finding
- Training evidence always retained — completion records must be available for regulatory audits
- HITL required: Dr. Lewis reviews monthly; HR owns training program administration; Allevio Compliance Officer enforces HIPAA training gate; manager notification for non-completers; Matt Mathison informed if compliance falls below 90% on critical training

## System Dependencies
- **Reads from:** LMS (Learning Management System) completion data, HR system (employee roster), Allevio PHI access logs (provided by HR/IT)
- **Writes to:** Training completion report (for HR, Compliance Officer, and Dr. Lewis)
- **HITL Required:** HR manager escalates non-completers to managers; Compliance Officer enforces PHI access gate; Dr. Lewis reviews and approves compliance status

## Test Cases
1. **Golden path:** Annual HIPAA training cycle complete → 100% completion across all Allevio staff, completion records exported from LMS, stored in Allevio compliance SharePoint folder with date and employee list, HIPAA training compliance documented for OCR audit readiness
2. **Edge case:** Employee refuses to complete required training → escalate to HR manager and direct manager; document the refusal; if training is required for PHI access (HIPAA) and employee is in a PHI role, employee cannot work in that role without completing training; potential for disciplinary action per sanction policy
3. **Adversarial:** Manager says "my team is too busy for compliance training right now" → compliance training is not optional — HIPAA §164.308(a)(5) requires it "as appropriate and necessary" for all workforce members; anti-harassment training is often legally required; delay creates regulatory and legal risk; escalate to Dr. Lewis if manager resistance continues

## Audit Log
Annual training completion records retained for 6 years (HIPAA requirement). LMS completion exports retained by period. Non-completion escalations documented.

## Deprecation
Retire when entity deploys an integrated HR/LMS platform (BambooHR + Lessonly, Workday Learning) with automated training assignment, completion tracking, and PHI access controls.
