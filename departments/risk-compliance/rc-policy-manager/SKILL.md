---
name: rc-policy-manager
description: "Manage the policy lifecycle — draft, review, approve, publish, and retire. Use when the user says 'policy management', 'create a policy', 'update policy', 'policy review', 'policy lifecycle', 'write a policy', 'policy library', 'company policies', 'employee policy', 'HR policy', 'IT policy', 'compliance policy', 'policy approval', 'policy distribution', or 'policy expiration'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--policy <name or type>] [--entity <company name>] [--action <draft|review|approve|publish|retire|audit>]"
---

# Policy Manager

Manage the policy lifecycle at MBL portfolio companies — creating, reviewing, approving, distributing, and retiring policies in a structured way that ensures employees know what the rules are, policies are current, and the organization can demonstrate that policies were communicated. Policies without lifecycle management become stale documents that employees don't follow because they don't reflect current practice — or worse, documents that expose the company to liability because they create a standard that the company doesn't actually meet.

## When to Use
- A new policy needs to be drafted (new legal requirement, new risk identified, new process)
- An existing policy is due for annual review — is it current?
- A policy is being distributed — ensure proper distribution and acknowledgment
- An employee has violated a policy — is the policy current, clear, and was it communicated?
- Preparing for an audit or regulatory review — policy library is complete and current
- A policy has been superseded — retire the old version properly

## Policy Management Framework

```
Required policies for all MBL portfolio companies:
  Employment and HR:
    → Code of Conduct (with THRIVE values integration)
    → Anti-Harassment and Non-Discrimination
    → Equal Employment Opportunity
    → At-Will Employment acknowledgment (AZ / applicable states)
    → Timekeeping and Overtime (if non-exempt employees)
    → Expense Reimbursement
    → PTO and Leave of Absence
    
  Financial and Procurement:
    → Delegation of Authority (DOA) / Approval Matrix
    → Expense Reimbursement Policy
    → Procurement and Vendor Policy
    → Travel and Entertainment Policy
    → Credit Card Usage Policy
    
  Information Technology and Security:
    → Acceptable Use Policy (AUP — computers, email, internet)
    → Data Classification and Handling Policy
    → Password and Access Control Policy
    → Bring Your Own Device (BYOD) Policy (if applicable)
    → AI and Automation Use Policy (see it-ai-governance)
    
  Healthcare-specific (Allevio):
    → HIPAA Privacy Policy
    → HIPAA Security Policy
    → Notice of Privacy Practices (NPP — patient-facing)
    → Breach Notification Policy
    → Workforce Sanctions Policy
    → Telehealth Policy (if applicable)
    
  Compliance:
    → Code of Ethics / Business Conduct
    → Anti-Bribery and Gifts Policy
    → Conflict of Interest Policy
    → Whistleblower / Non-Retaliation Policy
    → Record Retention and Destruction Policy
    
Policy lifecycle stages:
  Draft → Review → Approve → Distribute → Active → Annual Review → Update or Retire
  
  Draft: SME (subject matter expert) drafts; Dr. Lewis reviews for compliance alignment
  Review: Legal review for policies with legal exposure (harassment, FMLA, HIPAA)
  Approve: CEO approval required for all company-wide policies; Matt Mathison for financial authority policies
  Distribute: All affected employees receive; acknowledgment obtained (written or system)
  Annual review: Every policy reviewed at least annually; updated if environment changed
  Retire: Superseded policy marked retired; effective date and superseding policy noted
  
Policy structure requirements:
  → Title and policy number
  → Effective date and version number
  → Purpose: Why this policy exists
  → Scope: Who it applies to
  → Policy statement: The rules (concise; actionable; not ambiguous)
  → Procedures: How the policy is implemented
  → Violations and consequences: What happens if violated
  → Related policies and references
  → Approval and review history
  → Owner and contact
```

## Output Format

```markdown
# Policy Library Status — <Company Name>
**Last reviewed:** [Date] | **Total policies:** [N]
**Current:** [N] | **Due for review:** [N] | **Overdue for review:** [N]

---

## Policy Library Index

| # | Policy name | Version | Effective date | Annual review due | Owner | Status |
|---|------------|---------|--------------|-----------------|-------|--------|
| HR-001 | Code of Conduct | v2 | [Date] | [Date] | CEO | ✅ Current |
| HR-002 | Anti-Harassment | v1 | [Date] | [Date] | Dr. Lewis | ✅ Current |
| FIN-001 | Expense Reimbursement | v3 | [Date] | [Date] | Controller | ✅ Current |
| FIN-002 | Delegation of Authority | v2 | [Date] | [Date] | CEO + Dr. Lewis | ✅ Current |
| IT-001 | Acceptable Use Policy | v1 | [Date] | [Date] | Dr. Lewis | ⚠️ Review due |
| HC-001 | HIPAA Privacy Policy (Allevio) | v4 | [Date] | [Date] | Dr. Lewis | ✅ Current |
| HC-002 | HIPAA Security Policy (Allevio) | v2 | [Date] | [Date] | Dr. Lewis | ✅ Current |
| COM-001 | Conflict of Interest | v1 | [Date] | [Date] | CEO | ⚠️ Review due |

---

## Policy Draft/Update Template

```
POLICY: [POLICY NAME]
Policy number: [XX-###]
Version: [X.X]
Effective date: [Date]
Supersedes: [Prior version / N/A]
Owner: [Name/Title]
Approved by: [CEO Name] on [Date]
Matt Mathison awareness: [Date / N/A]
Next review: [Date + 12 months]

PURPOSE
[One paragraph — why this policy exists; what risk or obligation it addresses]

SCOPE
[Who is covered — all employees / specific roles / specific locations]

POLICY STATEMENT
[The actual rules — clear, specific, actionable; not vague directives]

PROCEDURES
[How the policy is implemented in practice; steps to follow]

VIOLATIONS AND CONSEQUENCES
[What happens if the policy is violated — consistent with Employee Handbook and progressive discipline]

RELATED POLICIES
[Cross-references to related policies]

ACKNOWLEDGMENT
[Required / Not required — if required, how obtained]
```

---

## Distribution and Acknowledgment Tracker

| Policy | Distribution date | Method | Employees required to acknowledge | Acknowledgments received | % Complete | Overdue |
|--------|-----------------|--------|--------------------------------|------------------------|-----------|---------|
| Code of Conduct v2 | [Date] | M365 SharePoint + email | All employees | 18/20 | 90% | 2 — follow up |
| HIPAA Privacy Policy (Allevio) | [Date] | Required at onboarding | All Allevio clinical + admin staff | | | |

---

## Annual Policy Review Calendar

| Month | Policies due for review |
|-------|------------------------|
| January | Code of Conduct; Anti-Harassment; EEO |
| February | Financial policies (Expense, DOA, Procurement) |
| March | IT policies (AUP, Data Classification, AI Use) |
| June | HIPAA policies (Allevio — Privacy, Security, Breach Notification) |
| September | Compliance policies (COI, Whistleblower, Anti-Bribery) |
| November | All remaining; prepare for new-year distributions |

---

## Matt Mathison Brief (if new major policy or policy violation with significant consequence)

[Company] policy update: [Policy name] — [Version X]. Change: [What changed and why]. Approval: CEO [Name] [Date]. Employees notified: [Date]. [If policy violation: Nature of violation; consequence; prevention].
```

## Output Contract
- Policies are communicated and acknowledged, not just filed — a policy in SharePoint that employees have never seen is not a compliance control; acknowledgment is how Dr. Lewis proves that employees knew the rules; for policies with legal exposure (harassment, HIPAA, conflicts of interest), written acknowledgment is required; the acknowledgment record is retained; in any employment dispute or regulatory investigation, the first question is "was the employee aware of the policy?" — the acknowledgment is the answer
- Policy language is specific enough to apply — "employees must handle PHI appropriately" is not a policy; "employees may not send PHI to external email addresses; employees may not store PHI on personal devices; employees may not access PHI of patients who are not in their care; violations are subject to immediate investigation and may result in termination" is a policy; vague policies cannot be enforced because the employee can reasonably claim they didn't know what "appropriately" meant; Dr. Lewis edits policy language to be specific and actionable
- The annual review cycle is calendar-driven, not event-driven — policies are reviewed on a schedule regardless of whether anything changed; the review may confirm no changes are needed, which is itself a documented outcome; a policy that hasn't been touched in 3 years is either current (documented confirmation each year) or stale (nobody reviewed it); the annual review catches: references to employees who left, systems that changed, regulations that were updated, or practices that drifted from the policy
- HITL required: Dr. Lewis drafts and reviews all policies; attorney reviews for policies with significant legal exposure (harassment, HIPAA, FMLA, ADA, whistleblower); CEO approves all company-wide policies; Matt Mathison approves Delegation of Authority/financial authority policies; policy violations investigated by Dr. Lewis + CEO; termination-level policy violations require attorney review

## System Dependencies
- **Reads from:** Employment law updates (rc-employment-compliance), HIPAA regulatory changes (rc-hipaa-privacy-officer, rc-regulatory-change-monitor), prior policy versions, organizational changes (HR roster), attorney guidance
- **Writes to:** Policy library (SharePoint/Policies/<Company>/); distribution records; acknowledgment tracker; annual review log; retired policy archive
- **HITL Required:** Dr. Lewis drafts; attorney for legal-exposure policies; CEO approves all company-wide policies; Matt Mathison for financial authority policies; policy violation investigations by Dr. Lewis + CEO; termination-level violations: attorney

## Test Cases
1. **Golden path:** Allevio annual HIPAA Privacy Policy review → Current version: v4, effective 18 months ago; Review: regulatory environment — HHS issued new guidance on patient right of access (shorter response timeline; electronic PHI must be provided in electronic format if practicable); policy update required: update §4 (patient rights) to reflect new guidance; update distribution: all Allevio staff must acknowledge updated version; re-training not required for full HIPAA training but targeted email summary sent explaining the specific change; v5 effective date set; CEO approved; distribution via M365; acknowledgment tracking in SharePoint; 100% acknowledgment rate within 2 weeks; filed; next annual review scheduled
2. **Edge case:** An employee who signed the anti-harassment policy commits harassment — can they claim they didn't understand the policy? → The acknowledgment signature means the employee received and confirmed they read the policy; it does not guarantee understanding in the way a verbal confirmation might; for this reason, harassment policy acknowledgment is accompanied by training (not just signature), and the training records show the employee completed the training; the combination of signed policy + training completion is the standard; if only a signature exists with no training documentation, the defense is weaker; Dr. Lewis implements training alongside acknowledgment for all high-consequence policies
3. **Adversarial:** "Our company is small — do we really need all these policies?" → Yes; policies scale with risk, not with headcount; a 15-person healthcare company that handles PHI needs a HIPAA Privacy Policy and an Acceptable Use Policy more than a 100-person non-healthcare company; the relevant question is "what risks does our business face?" not "how many employees do we have?"; a 15-person company without an anti-harassment policy has the same Title VII liability as a 1,000-person company; the policies are the documented standard against which conduct is measured in any investigation or dispute; without policies, there is no standard

## Audit Log
Policy versions retained permanently with effective dates. Approval records retained permanently. Distribution records retained. Acknowledgment records retained 7 years (employment disputes). Annual review records retained. Attorney review correspondence retained. Retired policy archive retained permanently.

## Deprecation
Retire when portfolio companies have dedicated HR/compliance functions managing the policy library with a formal annual review calendar and automated distribution/acknowledgment tracking — with Dr. Lewis reviewing high-consequence policies (HIPAA, financial authority, AI use) annually.
