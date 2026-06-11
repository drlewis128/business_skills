---
name: employee-handbook-reviewer
description: "Review or audit an employee handbook for gaps, compliance issues, and policy clarity. Use when the user says 'employee handbook', 'handbook review', 'handbook audit', 'policy manual review', 'is our handbook up to date', 'handbook gap analysis', or 'review our HR policies'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--state <jurisdiction>] [--last-updated <YYYY>]"
---

# Employee Handbook Reviewer

Audit an employee handbook for required policies, compliance gaps, and outdated language. A handbook that hasn't been reviewed in 2+ years is likely non-compliant and a legal liability.

## When to Use
- Annual handbook review (at minimum)
- Post-acquisition (new company needs a current handbook)
- After significant legal changes (FLSA, FMLA updates, state law changes)
- When an HR incident surfaces a policy gap
- When the existing handbook hasn't been updated in 2+ years

## Required Policy Checklist

### Federal Requirements (All Entities)
- [ ] At-will employment statement
- [ ] Equal Employment Opportunity (EEO) policy
- [ ] Harassment and discrimination policy (sexual harassment explicitly addressed)
- [ ] Americans with Disabilities Act (ADA) accommodation process
- [ ] Family and Medical Leave Act (FMLA) policy (50+ employees)
- [ ] Fair Labor Standards Act (FLSA) — exempt vs. non-exempt classification
- [ ] I-9 and employment eligibility
- [ ] Workers' compensation policy
- [ ] OSHA/workplace safety policy
- [ ] Whistleblower / non-retaliation policy
- [ ] Drug-free workplace policy (if applicable to entity)

### State-Specific (Flag by Jurisdiction)
- [ ] Paid sick leave (required in many states)
- [ ] Paid Family Leave (CA, NY, CO, WA, and others)
- [ ] Non-compete limitations (state-specific; CA prohibits most)
- [ ] Pay transparency / salary range disclosure (required in CO, NY, CA, WA, others)
- [ ] Jury duty leave
- [ ] Voting leave
- [ ] Bereavement leave (mandatory in some states)
- [ ] Pregnancy accommodation (beyond FMLA)
- [ ] Lactation accommodation

### Healthcare-Specific (Allevio)
- [ ] HIPAA workforce privacy policy
- [ ] Code of Conduct for healthcare workers
- [ ] Mandatory reporting policy (abuse, neglect)
- [ ] Continuing education requirements
- [ ] Credentialing and license verification policy

### General Best-Practice Policies
- [ ] Code of conduct and ethics
- [ ] Confidentiality / proprietary information
- [ ] Conflicts of interest
- [ ] Social media policy
- [ ] IT and acceptable use policy
- [ ] Remote work policy (if applicable)
- [ ] PTO / vacation policy with accrual rules
- [ ] Performance review process
- [ ] Disciplinary procedures / progressive discipline
- [ ] Open door / grievance process
- [ ] Travel and expense policy (reference finance policy)
- [ ] Background check policy

## Common Compliance Red Flags
| Issue | Risk |
|-------|------|
| No harassment policy or policy pre-dates #MeToo era | Legal liability in all jurisdictions |
| Blanket non-compete for all employees | Unenforceable in CA; challenged in others; FTC rulemaking pending |
| No ADA accommodation process | ADA violation exposure |
| Social media policy that restricts protected concerted activity | NLRA violation |
| Disciplinary policy inconsistently applied | Discrimination/retaliation exposure |
| Handbook not updated in 3+ years | Multiple potential compliance gaps |
| No handbook acknowledgment signed by employees | Can't enforce policies you can't prove were communicated |

## Output Format

```markdown
# Handbook Review — <Entity>
**Date:** <date> | **Handbook Version:** <date/version> | **Jurisdictions:** <states>

## Review Verdict: COMPLIANT / NEEDS UPDATE / NON-COMPLIANT

## Required Policy Coverage

| Policy | Present | Current | Gap |
|--------|---------|---------|-----|
| EEO Policy | ✅ | ✅ | None |
| Harassment Policy | ✅ | ⚠️ | Pre-dates 2018 — needs update |
| FMLA | ❌ | — | Missing — required if 50+ employees |
| CA Paid Sick Leave | ❌ | — | Missing — required for CA employees |

## Critical Issues (Legal Exposure — Fix Immediately)
1. <Issue with specific risk and recommended fix>

## Significant Gaps (Fix Before Next Review Cycle)
1. <Gap with recommendation>

## Outdated Language (Update at Next Revision)
1. <Section that needs refreshing>

## Acknowledgment Status
Employees with signed acknowledgment on file: <N>/<total>
Missing signatures: <list or "all current">

## Recommendations
1. Immediate: <Critical fix>
2. 90-day: <Significant gap>
3. Annual review: <Schedule next review — recommend legal counsel for state-specific policies>
```

## Output Contract
- Legal compliance gaps flagged as Critical — not buried
- State-specific requirements assessed by named jurisdiction
- Acknowledgment signature status always checked
- HITL required: legal counsel recommended for compliance gap remediation; Dr. Lewis and HR lead approve all handbook updates before distribution

## System Dependencies
- **Reads from:** Current handbook (provided), state jurisdiction list
- **Writes to:** Nothing (audit report for HITL action)
- **HITL Required:** Legal counsel reviews compliance gaps; Dr. Lewis approves policy changes; all employees re-acknowledge after material updates

## Test Cases
1. **Golden path:** 3-year-old handbook for CA-based entity → flags 5 missing CA-specific policies, outdated harassment policy, recommends attorney review
2. **Edge case:** Multi-state entity with employees in CA, CO, NY → produces jurisdiction-specific gap analysis for each state's requirements
3. **Adversarial:** Request to add a policy that would violate NLRA Section 7 (restricting employees from discussing wages) → flags violation, recommends compliant language alternative

## Audit Log
Handbook review reports retained by entity and date. Policy acknowledgment records retained permanently in employee files.

## Deprecation
Retire when HR compliance platform provides automated handbook auditing with real-time jurisdiction-specific alerts.
