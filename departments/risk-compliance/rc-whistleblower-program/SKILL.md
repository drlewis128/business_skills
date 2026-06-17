---
name: rc-whistleblower-program
description: "Manage the whistleblower and anonymous reporting program. Use when the user says 'whistleblower', 'anonymous reporting', 'ethics hotline', 'compliance hotline', 'non-retaliation', 'raise a concern', 'report misconduct', 'ethics complaint', 'whistleblower policy', 'report a violation', 'employee concern', 'retaliation claim', 'fraud hotline', 'ethics tip', 'internal investigation trigger', or 'compliance concern'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <setup|intake|investigate|report>] [--report-type <financial|HIPAA|harassment|safety|fraud|conduct>]"
---

# Whistleblower Program Manager

Manage the whistleblower and anonymous reporting program at MBL portfolio companies — providing a structured channel for employees to report compliance concerns, unethical conduct, fraud, safety violations, and regulatory issues without fear of retaliation. A functional whistleblower program is both a legal defense (demonstrates the company takes compliance seriously) and a risk management tool (employees often detect fraud and compliance issues before management does). Without a credible reporting channel and a non-retaliation culture, concerns that would have been caught early remain hidden until they become significant regulatory or legal events.

## When to Use
- Setting up or reviewing the whistleblower program at a portfolio company
- A report is received — what is the response protocol?
- An employee has raised a concern about retaliation — how to respond
- Annual training includes whistleblower program awareness — how to communicate it
- Preparing for an audit or regulatory review — is the whistleblower program in place and communicated?
- An investigation is triggered by an anonymous or named report

## Whistleblower Program Framework

```
Program components:
  1. Policy: Written Whistleblower and Non-Retaliation Policy
     → Clear statement: Employees may report concerns without fear of retaliation
     → What can be reported: Fraud, financial misconduct, HIPAA violations, harassment, safety violations, ethics violations, legal violations
     → How to report: Reporting channels (named and anonymous)
     → Non-retaliation pledge: Retaliation against a whistleblower is a separate violation subject to immediate discipline up to termination
     → Protection scope: Applies to ALL employees, not just the reporter
     
  2. Reporting channels:
     Anonymous reporting options (at portfolio scale):
       → Dr. Lewis direct (email, phone) — for named reports; Dr. Lewis is approachable and trusted
       → Anonymous email alias (compliance@[company].com forwarded to Dr. Lewis; configured to strip metadata)
       → Third-party hotline (optional at portfolio scale — cost ~$1,500/year; provides genuine anonymity; recommended if company grows past 50 employees)
     Named reporting:
       → CEO, Dr. Lewis, or direct supervisor (except when supervisor is implicated)
       → If CEO is implicated: Report goes directly to Matt Mathison
       
  3. Investigation trigger:
     Categories that require investigation:
       → Any financial fraud allegation (must investigate; potential false claims or theft)
       → Any HIPAA breach allegation (must investigate; regulatory reporting clock may have started)
       → Any harassment allegation (must investigate; employer liability standard)
       → Any allegation involving a named manager or executive (escalated to Dr. Lewis or Matt Mathison)
       → Any safety allegation involving imminent danger (immediate response)
     
     Who investigates:
       → Reports against non-management employees: Dr. Lewis + CEO
       → Reports against managers: Dr. Lewis + CEO (not the accused manager's supervisor without attorney guidance)
       → Reports against CEO: Matt Mathison + attorney
       → Reports against Dr. Lewis: Matt Mathison + external attorney
       → Any criminal allegation: Attorney + Dr. Lewis + CEO; law enforcement if appropriate
       
  4. Response timeline:
     Acknowledge receipt: 24 hours (for named reports); not possible for anonymous
     Initial assessment: 3 business days — is this credible? What investigation is required?
     Investigation: 15-30 business days for most investigations; complex cases may take longer
     Report to reporter: For named reports — outcome communicated within 60 days (without compromising confidentiality of others)
     
  5. Non-retaliation enforcement:
     → Any manager who retaliates against a reporter is subject to immediate investigation and discipline up to termination
     → Retaliation indicators: Demotion, schedule change, performance review change, exclusion from meetings, hostile treatment — all within 90 days of the report
     → If retaliation is found: Stop retaliation immediately; discipline the retaliator; make the reporter whole
     
  SOX Section 806 (if applicable): Private companies that are subsidiaries of public companies have SOX whistleblower protections; for MBL portfolio companies that are private and not publicly traded, federal whistleblower protections under SOX do not directly apply; however, AZ employment law and common law wrongful termination claims protect whistleblowers in most circumstances; attorney review for any termination following a whistleblower report
```

## Output Format

```markdown
# Whistleblower Program Status — <Company Name>
**Date:** [Date] | **Program Owner:** Dr. Lewis
**Policy effective:** [Date] | **Last communicated:** [Date]

---

## Program Components

| Component | In place? | Date | Notes |
|-----------|---------|------|-------|
| Written Non-Retaliation Policy | ✅ / ⚠️ | [Date] | Included in Employee Handbook |
| Reporting channel — named (Dr. Lewis) | ✅ | Ongoing | jlewis@mblpartners.com / 602-880-6491 |
| Reporting channel — anonymous email | ✅ / ⚠️ | | compliance@[company].com → Dr. Lewis |
| Third-party hotline | ✅ / Not yet | [Provider if applicable] | Recommended at 50+ employees |
| Annual communication to all staff | ✅ / ⚠️ | [Date] | During annual training |
| New hire orientation | ✅ / ⚠️ | | Covered in onboarding |
| Manager training on non-retaliation | ✅ / ⚠️ | | Supervisor training track |

---

## Active/Recent Reports

| Report ID | Date received | Category | Reporter type | Status | Assigned to |
|----------|-------------|---------|-------------|--------|-----------|
| WB-2026-001 | [Date] | Financial misconduct | Anonymous | Investigation in progress | Dr. Lewis + CEO |
| WB-2026-002 | [Date] | Workplace conduct | Named | Closed — no violation found | Dr. Lewis |

---

## Investigation Report (for each report)

### Report WB-[YYYY]-[###]
**Date received:** [Date]
**Category:** [Financial / HIPAA / Harassment / Safety / Conduct / Other]
**Reporter:** Anonymous / Named [Name — confidential; not shared with subject]
**Subject of report:** [Name/Role OR "Anonymous"]
**Summary of allegation:** [Objective description of what was reported]

**Initial assessment:**
- Credible? [Yes / No / Cannot determine without investigation]
- Investigation required? [Yes / No — reason]
- Immediate action required? [Yes — describe / No]

**Investigation plan:**
- Lead investigator: [Dr. Lewis / CEO / External attorney]
- Scope: [What will be reviewed]
- Timeline: [Start to target completion]
- Confidentiality measures: [How reporter identity is protected]

**Investigation findings:**
- Allegation substantiated? [Yes / Partially / No / Cannot determine]
- Evidence reviewed: [List]
- Witnesses interviewed (if any): [Roles, not names in this report]

**Outcome:**
- Action taken: [Disciplinary / Policy change / Training / No action warranted / Referred to attorney / Referred to law enforcement]
- Reporter informed (named reports): [Yes — outcome communicated without compromising others / Anonymous — no communication possible]

**Retaliation check:**
- Reporter's status 90 days post-report: [No change / Change noted — [description and investigation]]
- Retaliation found: [No / Yes — action taken]

**Case closed:** [Date] | **Closed by:** Dr. Lewis + CEO

---

## Annual Whistleblower Program Report

[Year] whistleblower program: [N] reports received — [breakdown by category]. Investigations completed: [N]. Substantiated: [N]. Actions taken: [summary]. Retaliation claims: [N / 0]. Program communicated to all staff: ✅ [Date]. CEO reviewed program annually: ✅. No changes required / Changes recommended: [What].
```

## Output Contract
- Anonymous reports receive the same investigation rigor as named reports — an anonymous allegation of financial fraud is not dismissed because the reporter didn't put their name on it; it is assessed for credibility (is it specific enough to investigate? Is there corroborating evidence?); if credible, it is investigated with the same rigor as a named report; the inability to go back to the reporter for follow-up questions makes the initial intake information more important, not the report less important; Dr. Lewis documents the rationale for investigation or no-investigation decisions for every report received
- Non-retaliation is monitored, not just promised — promising non-retaliation in a policy and then allowing a manager to put a whistleblower on a performance improvement plan 3 weeks after their report is the outcome that destroys the program's credibility; Dr. Lewis actively monitors the employment status and treatment of reporters for 90 days after a report; any adverse action against a reporter triggers an immediate review — is this action related to the report or independently justified?; a manager who retaliates is disciplined regardless of whether the underlying report was substantiated; retaliation is a separate violation
- Reports involving the CEO are escalated directly to Matt Mathison — Dr. Lewis cannot objectively investigate a report against the CEO; the investigation is led by Matt Mathison with external attorney; Dr. Lewis does not conduct the investigation, does not share investigation details with the CEO, and does not take any action that could be characterized as protecting the CEO from a valid investigation; reports against Dr. Lewis go directly to Matt Mathison with the same protocol
- HITL required: Dr. Lewis manages program and leads most investigations; CEO co-investigates (except when implicated); Matt Mathison for reports involving CEO or Dr. Lewis; attorney for criminal allegations, HIPAA breaches discovered through whistleblower, harassment investigations with potential litigation; law enforcement referral for criminal activity (attorney advises); Matt Mathison annual program summary

## System Dependencies
- **Reads from:** Anonymous reporting channel; named reports (direct email/phone); rc-policy-manager (Non-Retaliation Policy); hr-onboarding-coordinator (new hire orientation coverage); rc-investigation-manager (investigation protocol)
- **Writes to:** Whistleblower report log (SharePoint/RC/<Company>/Whistleblower/ — restricted access: Dr. Lewis and CEO only; not HR); investigation reports; CEO and Matt Mathison notifications; annual program report
- **HITL Required:** Dr. Lewis manages intake and investigations; CEO co-investigates; Matt Mathison for CEO/Dr. Lewis reports; attorney for criminal allegations, HIPAA breaches, harassment with litigation risk; law enforcement as appropriate

## Test Cases
1. **Golden path:** Anonymous email report alleging that a billing coordinator at Allevio is billing Medicare for services not rendered → Immediate assessment: credible (specific provider and date range mentioned); HIPAA + False Claims Act + Medicare fraud implications — Dr. Lewis and CEO meet within 24 hours; attorney engaged immediately (False Claims Act has significant exposure); investigation plan: pull sample of claims billed under the identified provider's NPI for the stated period; compare to AdvancedMD encounter documentation; investigation conducted by Dr. Lewis with attorney oversight; findings: 4 of 20 claims sampled have CPT codes that don't match the documentation — 2 appear to be coding errors (low confidence), 2 appear to be intentional upcoding; attorney assesses: self-disclosure to CMS under the Voluntary Self-Disclosure Protocol; billing coordinator placed on administrative leave; billing audit expanded; outcome documented; Matt Mathison informed; self-disclosure filed per attorney direction; billing coordinator terminated following investigation confirmation
2. **Edge case:** Whistleblower reports harassment, investigation finds no harassment, but then whistleblower is passed over for a promotion 6 weeks later → Retaliation monitoring flag triggered: adverse action within 90 days of report; Dr. Lewis reviews the promotion decision process independently: was it competitive? Who was selected? What was the selection criteria? Is there documented performance justification predating the whistleblower report?; if the decision is independently justified (e.g., the selected candidate has more relevant experience and the decision was made before the report), document the rationale thoroughly; if the decision appears related to the report, escalate to attorney; either way, the review is documented; manager is reminded of non-retaliation obligations; whistleblower is informed (without disclosing the investigation details) that the decision was reviewed
3. **Adversarial:** "Do we really need a whistleblower program? We're a small company with an open culture" → An "open culture" is not a substitute for a structured reporting channel; employees do not report fraud or harassment to managers when the manager is implicated; they do not report concerns to executives when they fear the executive's reaction; the whistleblower program is the channel for exactly the concerns that an "open culture" doesn't surface; at portfolio scale, one undetected fraud or one HIPAA violation that could have been caught by an employee report creates significantly more cost than maintaining the program; the program is also communicated to LPs and potential buyers as evidence of a governance culture — it is a governance asset

## Audit Log
All whistleblower reports logged with date, category, reporter type, and outcome (in restricted-access SharePoint). Investigation reports retained permanently (restricted access). Retaliation monitoring records retained. Attorney engagement records retained permanently. Annual program reports retained. Reporter identities for named reports retained only in restricted files accessible to Dr. Lewis and CEO.

## Deprecation
Retire when portfolio companies have professional HR functions with dedicated ethics hotlines (third-party provider) and investigation protocols — with Dr. Lewis reviewing escalation protocols for CEO, financial fraud, and HIPAA-related reports. Matt Mathison annual program review is a permanent governance requirement.
