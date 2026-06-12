---
name: whistleblower-program-manager
description: "Manage the whistleblower and ethics reporting program. Use when the user says 'whistleblower', 'ethics hotline', 'anonymous reporting', 'ethics complaint', 'speak up', 'employee complaint', 'retaliation claim', 'ethics program', 'anonymous tip', 'internal investigation', or 'compliance hotline'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--mode <setup|report|investigate|status>]"
---

# Whistleblower Program Manager

Manage the whistleblower and ethics reporting program for MBL portfolio companies. A functional whistleblower program is a governance best practice, a SOC 2 control requirement (CC1), and a legal protection mechanism. Employees who have a safe, anonymous way to report ethics violations are more likely to report internally before going to regulators — giving the company the opportunity to self-correct. This skill manages the program structure, report intake, investigation triage, and anti-retaliation enforcement.

## When to Use
- Setting up a whistleblower/ethics reporting program
- Receiving an anonymous report through the reporting mechanism
- Triaging and investigating an ethics complaint
- Annual review of the whistleblower program
- Employee alleges retaliation for a protected report

## Program Structure

```
WHISTLEBLOWER PROGRAM COMPONENTS:

1. Reporting Mechanism
   - Anonymous hotline or web portal (EthicsPoint, NAVEX, or similar)
   - Direct email to Dr. Lewis (jlewis@mblpartners.com) for non-anonymous
   - Anonymous written report option (for entities without hotline)
   - Posted in employee handbook and compliance policy

2. What Can Be Reported
   - Financial fraud, accounting irregularities, or theft
   - HIPAA violations or PHI mishandling (Allevio)
   - Regulatory non-compliance
   - Harassment, discrimination, or hostile work environment
   - Safety violations
   - Conflicts of interest not disclosed
   - Retaliation against a prior reporter
   - Any other ethics, legal, or policy violation

3. Anti-Retaliation Protections
   - No retaliation for good-faith reports
   - Retaliation is a serious violation — immediate investigation
   - Reporters protected even if the reported conduct is not confirmed

4. Investigation Process
   - All reports acknowledged within 48 hours
   - Preliminary triage within 5 business days
   - Full investigation where warranted
   - Findings documented and remediated
   - Reporter updated (to extent possible without compromising anonymity)
```

## Output Format

```markdown
# Whistleblower Program Status — <Entity>
**Date:** <date> | **Entity:** <name>
**Program established:** Yes / No (if not — see setup section)
**Prepared by:** Dr. John Lewis

---

## Program Overview

| Component | Status | Details |
|---------|--------|---------|
| Reporting mechanism | ✅ / ❌ | EthicsPoint portal / email / None |
| Employee acknowledgment | ✅ / ❌ | Included in employee handbook |
| Anti-retaliation policy | ✅ / ❌ | Published in compliance policy |
| Investigation protocol | ✅ / ❌ | Documented |
| Annual program review | ✅ / ❌ | |

---

## Active Reports

| Report ID | Date Received | Category | Status | Investigator | Due |
|---------|------------|---------|--------|------------|-----|
| WB-001 | <date> | Financial irregularity — expense reports | Active investigation | Dr. Lewis | <date> |
| WB-002 | <date> | HIPAA concern — PHI discussion in common area | Closed — no violation found | Dr. Lewis + Allevio Compliance | Closed |

---

## Investigation Protocol

**Step 1 — Intake (48 hours)**
- Acknowledge receipt (if reporter identified)
- Assign investigation lead (Dr. Lewis for financial/legal; HR for employment matters)
- Assess: immediate action required? (e.g., suspected active fraud → preserve records now)
- Trigger legal hold if potential litigation

**Step 2 — Triage (5 business days)**
- Assess credibility and specificity of report
- Determine scope: self-contained or systemic?
- Identify witnesses and evidence
- Decision: full investigation / monitor / close (insufficient basis)

**Step 3 — Investigation**
- Conduct interviews (start with peripheral witnesses, not the accused)
- Gather documentary evidence
- Involve outside counsel for allegations involving senior personnel or significant financial exposure
- Document all steps and findings

**Step 4 — Findings and Remediation**
- Document findings: substantiated / unsubstantiated / inconclusive
- If substantiated: disciplinary action per HR sanction policy; remediate the underlying issue
- Report to Matt Mathison for material findings
- Close report with documented outcome

**Step 5 — Anti-Retaliation Monitoring**
- Monitor reporter's employment status for 12 months after report
- Any adverse action involving a prior reporter requires Dr. Lewis review

---

## Report Outcome Log (Closed)

| Report ID | Category | Finding | Action Taken | Date Closed |
|---------|---------|---------|------------|-----------|
| WB-002 | HIPAA concern | Unsubstantiated — employee misidentified a situation | Provided HIPAA clarification training to reporter's team | <date> |

---

## SOC 2 / Governance Documentation

- Whistleblower policy: ✅ Published in compliance policy library
- Reporting mechanism: ✅ Documented and employee-accessible
- Anti-retaliation training: 🟡 Not formally included in annual training (add)
- Audit evidence: All reports and outcomes retained per retention policy
```

## Output Contract
- Anti-retaliation always enforced — retaliation for a good-faith whistleblower report is a legal violation and must be treated with the same severity as the underlying complaint
- All reports triaged within 5 business days — even reports that appear frivolous get documented triage
- Outside counsel always engaged for reports involving senior personnel (directors, officers) or significant financial exposure
- Reporter identity protected — no disclosure of reporter identity except as required by law
- HITL required: Dr. Lewis reviews all reports and oversees investigations; outside counsel for significant matters; Matt Mathison informed of substantiated material findings; HR involved for employment-related matters; Allevio Compliance Officer for HIPAA reports

## System Dependencies
- **Reads from:** Whistleblower portal (if deployed), email reports (jlewis@mblpartners.com), HR investigation records (provided)
- **Writes to:** Investigation report and outcomes log (retained in confidential Legal files)
- **HITL Required:** Dr. Lewis investigates; outside counsel for significant matters; Matt Mathison for material findings; HR for employment matters

## Test Cases
1. **Golden path:** Anonymous report through ethics portal alleging expense report fraud by a manager → intake acknowledged, legal hold on manager's expense records, investigation opened, Dr. Lewis reviews expense records + interviews, substantiated ($8,500 in personal expenses submitted as business), manager terminated per sanction policy, Matt Mathison notified, Finance recovers $8,500 via final paycheck offset, report closed
2. **Edge case:** Reporter claims retaliation after filing an OSHA complaint externally → OSHA has independent anti-retaliation protections (Section 11(c)); engage outside employment counsel immediately; internal investigation of the alleged retaliatory actions; do not take any adverse action against this employee without outside counsel review
3. **Adversarial:** Senior manager directs HR to "find out who filed the report" → immediately prohibit this action; reporter identity protection is a core whistleblower protection; attempting to identify an anonymous reporter is itself a violation that could constitute retaliation; document this instruction and escalate to Dr. Lewis and outside counsel

## Audit Log
All reports retained with intake date, category, investigator, findings, and resolution. Confidential. Retained for 7 years. Reports involving regulatory matters retained per applicable regulatory retention requirement.

## Deprecation
Retire when entity deploys a professional ethics hotline service (NAVEX EthicsPoint, Convercent) with anonymous reporting portal, workflow management, and trend analytics.
