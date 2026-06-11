---
name: learning-development-tracker
description: "Track employee learning and development activities, completions, and certifications. Use when the user says 'L&D tracker', 'learning tracker', 'training tracker', 'certification tracker', 'who has completed training', 'training completion', 'development tracker', or 'learning status'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <team|individual|compliance-only>] [--period <YYYY>]"
---

# Learning & Development Tracker

Track employee learning activities, training completions, and certification status. Training is only valuable when it's tracked — uncompleted mandatory training is a compliance liability.

## When to Use
- Tracking mandatory compliance training completion
- Monitoring professional development investments
- Before a licensing audit (Allevio — clinical credential compliance)
- Annual L&D budget review (did we use our training budget?)
- Performance review cycle (document development activities)

## Training Categories

### Mandatory Compliance (Must Track — Legal Requirement)
| Training | Entities | Frequency |
|---------|---------|----------|
| HIPAA Privacy and Security | Allevio | Annual + upon hire |
| Sexual Harassment Prevention | All (CA required; all others recommended) | Annual |
| Cybersecurity Awareness | All | Annual |
| OSHA Safety | HIVE (field ops), Allevio | Annual or job-specific |
| Code of Conduct | All | Annual or upon hire |

### Professional Development (Track for ROI and Retention)
- Certifications: CPA, CMA, PMP, etc.
- Industry training: healthcare billing, oil & gas regulations
- Technology: platform certifications (QuickBooks ProAdvisor, Monday.com, etc.)
- Leadership programs: management training, executive coaching

### On-the-Job Development
- Mentorship engagements
- Stretch assignments
- Cross-functional projects
- Conference attendance

## Training Record Format

```yaml
employee: <name>
entity: <entity>
training_name: <name>
training_type: Mandatory-Compliance | Professional | Certification | OJT
provider: <vendor or internal>
format: Online | Instructor-led | Conference | Certification Exam | Mentorship
hours: <N>
cost: $<N>
assigned_date: <YYYY-MM-DD>
completion_date: <YYYY-MM-DD>
status: Not Started | In Progress | Completed | Overdue | Waived
certificate_earned: Yes | No
expiration_date: <YYYY-MM-DD> | N/A
notes: <any notes>
```

## Output Format

```markdown
# L&D Tracker — <Entity>
**Period:** <year> | **Updated:** <date>

## Compliance Training Status

| Training | Required | Completed | Overdue | Completion Rate |
|---------|---------|---------|---------|---------------|
| HIPAA Annual | <N> | <N> | <N> | X% |
| Harassment Prevention | <N> | <N> | <N> | X% |
| Cybersecurity | <N> | <N> | <N> | X% |

### Overdue Compliance Training — Immediate Action

| Employee | Training | Assigned | Days Overdue |
|---------|---------|---------|-------------|
| <Name> | HIPAA Annual | <date> | <N> days |

## Professional Development Summary

| Training / Cert | Employee | Status | Completion | Cost |
|---------------|---------|--------|-----------|------|
| QuickBooks ProAdvisor | <Name> | Completed | <date> | $<N> |
| PMP Certification | <Name> | In Progress | ETA <date> | $<N> |

## L&D Investment Summary

| Category | Budget | Spent | Remaining |
|---------|--------|-------|----------|
| Compliance training | $<N> | $<N> | $<N> |
| Professional certs | $<N> | $<N> | $<N> |
| Leadership programs | $<N> | $<N> | $<N> |
| **Total** | **$<N>** | **$<N>** | **$<N>** |

## Certifications Expiring (Next 180 Days)

| Employee | Certification | Expiry Date | Renewal Action |
|---------|-------------|-----------|--------------|
| <Name> | <Cert> | <date> | Renewal exam scheduled |
```

## Output Contract
- Overdue compliance training always surfaced first — legal liability
- Completion rates always shown for mandatory training (< 100% is a risk)
- Certifications expiring within 180 days always flagged
- L&D budget spend always tracked — training investment without tracking is invisible to ROI analysis
- HITL required before any mandatory training is waived

## System Dependencies
- **Reads from:** Training assignments, completion records, certification data (provided)
- **Writes to:** Nothing (tracker for HR action)
- **HITL Required:** HR lead reviews all overdue compliance training; waivers require Dr. Lewis approval

## Test Cases
1. **Golden path:** Allevio team quarterly L&D check → HIPAA completion at 78% (flagged), 2 certs expiring in 90 days, $8K of $12K budget spent
2. **Edge case:** Employee who refuses to complete mandatory training → documents refusal, flags as HR/disciplinary issue if repeated
3. **Adversarial:** Request to mark training as complete without the employee actually completing it → refuses, explains compliance documentation requirements

## Audit Log
Training completion records retained per regulatory requirements (HIPAA — 6 years, OSHA — 3 years). Certificate copies retained in employee file.

## Deprecation
Retire when LMS (TalentLMS, Cornerstone, Workday Learning) provides automated tracking with compliance alerts and certification management.
