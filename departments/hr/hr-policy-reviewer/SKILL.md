---
name: hr-policy-reviewer
description: "Review an HR policy for compliance, clarity, and best practice alignment. Use when the user says 'review this HR policy', 'policy review', 'HR policy audit', 'is this policy compliant', 'policy gap analysis', 'update this HR policy', or 'does this policy work'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<policy-name-or-type> [--entity <name>] [--state <jurisdiction>]"
---

# HR Policy Reviewer

Review an HR policy for legal compliance, clarity, and operational effectiveness. Policies that are unclear, unenforced, or non-compliant create liability — and no policy is better than a bad one that's selectively applied.

## When to Use
- Annual policy review cycle
- After a legal or regulatory change affecting HR
- When an HR incident surfaces a policy gap or ambiguity
- Before a policy is distributed company-wide
- Post-acquisition (review inherited policies)
- When an employee challenges the fairness or enforceability of a policy

## Policy Review Framework

### Dimension 1: Legal Compliance
Is the policy legally compliant in all operating jurisdictions?
- Federal requirements met (FMLA, ADA, Title VII, NLRA, FLSA)?
- State-specific requirements addressed (California, Colorado, New York, etc.)?
- No provisions that would violate protected class or protected activity protections?
- No blanket non-compete language that violates state law?

### Dimension 2: Clarity and Usability
Can a manager or employee understand and apply this policy without HR help?
- Is the language plain? (No legal jargon without explanation)
- Are the steps clear? (Who does what, by when)
- Are the examples helpful?
- Is the scope clear? (Who does this apply to? All entities? All roles?)

### Dimension 3: Consistency and Enforceability
Can this policy be applied consistently without arbitrary discretion?
- Is the policy objective (based on behavior, not perception)?
- Are there escalation paths if the policy is violated?
- Is it consistent with other policies (no contradictions)?
- Has it been consistently applied in practice? (Inconsistent application creates liability)

### Dimension 4: THRIVE Alignment
Does the policy reflect the company's values?
- Truth: Is the policy honest about expectations and consequences?
- Respect: Does it treat employees with dignity?
- Integrity: Would the policy withstand public scrutiny?
- Value: Does the policy create value for the company and employees?

## Common Policy Issues

| Issue | Risk |
|-------|------|
| Vague "at-will" language contradicted elsewhere | Erodes at-will defense |
| Non-compete applies to all employees, all states | Unenforceable in CA; challenged elsewhere |
| Social media policy restricts protected activity | NLRA Section 7 violation |
| Attendance policy doesn't account for FMLA | ADA/FMLA interference |
| Confidentiality clause overly broad | NLRA Section 7 violation |
| Policy references outdated law | May be non-compliant |
| Policy with no update/review date | Likely outdated |

## Output Format

```markdown
# Policy Review — <Policy Name>
**Entity:** <entity> | **States:** <jurisdictions> | **Last Updated:** <date>
**Reviewer:** <name> | **Date:** <date>

## Review Verdict: COMPLIANT / NEEDS REVISION / NON-COMPLIANT

## Dimension Scores

| Dimension | Rating | Notes |
|---------|--------|-------|
| Legal Compliance | 🟢 / 🟡 / 🔴 | <key finding> |
| Clarity / Usability | 🟢 / 🟡 / 🔴 | <key finding> |
| Consistency / Enforceability | 🟢 / 🟡 / 🔴 | <key finding> |
| THRIVE Alignment | 🟢 / 🟡 / 🔴 | <key finding> |

## Critical Issues (Legal Exposure — Must Fix)
1. <Issue with specific legal risk and recommended fix>

## Significant Issues (Fix Before Next Review Cycle)
1. <Issue with recommendation>

## Minor Suggestions (Improve Clarity)
1. <Suggestion>

## Recommended Revised Language
<For critical issues, provide specific replacement language>

## Update History
- Current version: <date>
- Recommended next review: <12 months from revision date>
```

## Output Contract
- NLRA Section 7 violations always flagged as critical — common in social media and confidentiality policies
- State-specific non-compliance always called out by jurisdiction
- Inconsistency with other known policies flagged when identifiable
- Revised language always provided for critical issues — don't just flag without fixing
- HITL required: legal counsel reviews all critical issues; Dr. Lewis approves all policy updates before distribution

## System Dependencies
- **Reads from:** Current policy text (provided), state jurisdiction list
- **Writes to:** Nothing (review report for HITL action)
- **HITL Required:** HR lead and legal counsel review critical changes; Matt Mathison approves any policy with material impact on employee rights or compensation

## Test Cases
1. **Golden path:** Social media policy review → flags overly broad confidentiality language that restricts protected concerted activity, provides NLRA-compliant revised language
2. **Edge case:** Policy written for single state now applied to multi-state workforce → flags jurisdiction-specific gaps for each state where employees work
3. **Adversarial:** Request to add a policy provision that would violate NLRA or protected class rights → refuses, explains specific violation, recommends compliant alternative

## Audit Log
Policy review reports retained by policy name and date. Policy versions retained with effective dates.

## Deprecation
Retire when HR compliance platform provides automated policy auditing with jurisdiction-specific compliance checking.
