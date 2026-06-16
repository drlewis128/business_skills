---
name: hr-employee-relations
description: "Manage an employee relations issue or concern. Use when the user says 'employee relations', 'employee complaint', 'workplace issue', 'employee concern', 'HR complaint', 'employee conflict', 'workplace complaint', 'employee grievance', 'team conflict', 'manager complaint', 'hostile work environment', 'harassment complaint', 'discrimination concern', or 'employee issue'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <conflict|complaint|harassment|discrimination|conduct>] [--urgency <immediate|standard>]"
---

# HR Employee Relations

Manage employee relations issues at MBL portfolio companies — workplace complaints, conflicts, harassment concerns, discrimination issues, and conduct matters. Employee relations is one of the highest-risk areas of HR because mishandling a complaint creates legal exposure, damages trust, and can lead to EEOC charges or litigation. The standard is: take every complaint seriously, investigate promptly and fairly, document thoroughly, and protect both the reporting employee and the company.

## When to Use
- An employee reports a complaint about a colleague, manager, or workplace condition
- A manager brings a team conflict that has escalated beyond their ability to resolve
- An employee raises a concern about harassment, discrimination, or retaliation
- A workplace conduct issue requires documentation and a formal response
- Matt Mathison is notified of a significant HR complaint or workplace incident
- An employee departure involves an unresolved employee relations matter

## Employee Relations Framework

```
Complaint classification — determines urgency and response:

🔴 IMMEDIATE ESCALATION (same day):
   - Allegations of sexual harassment
   - Discrimination allegations (race, gender, religion, national origin, age, disability)
   - Threats or physical safety concerns
   - Retaliation allegations (employee reports something and then experiences adverse action)
   → Dr. Lewis + Matt Mathison + employment attorney review before any response

🟡 URGENT (within 48 hours):
   - Manager misconduct (bullying, favoritism, creating hostile environment without protected class element)
   - Serious workplace conflict affecting team function
   - Policy violations that may involve termination
   → Dr. Lewis initiates investigation within 48 hours

🟢 STANDARD (within 1 week):
   - Interpersonal conflict between peers
   - Work environment complaints (noise, space, workload)
   - Minor policy concerns
   → Dr. Lewis acknowledges within 24 hours; resolution within 1 week

Investigation principles:
   - Confidentiality: share only on need-to-know basis; never with the person complained about before investigation is structured
   - No retaliation: employee who raises a concern is protected from any adverse action; this is non-negotiable
   - Fairness: both parties heard; no conclusions before investigation complete
   - Documentation: every step documented before, during, and after
```

## Output Format

```markdown
# Employee Relations Case — <Case ID: [Company]-[YYYY]-[##]>
**Company:** <Entity> | **Date opened:** [Date]
**Complaint type:** [Conflict / Harassment / Discrimination / Conduct / Other]
**Urgency:** 🔴 Immediate / 🟡 Urgent / 🟢 Standard
**Case manager:** Dr. John Lewis
**Matt Mathison notified:** ✅ [Date] / 🔴 Not yet — initiate notification if 🔴 case

---

## Complaint Summary

**Reported by:** [Name or anonymous] | **Date reported:** [Date] | **Method:** [In person / Email / Anonymous]
**Person(s) named:** [Name(s) — roles]
**Description:** [Factual summary — what was reported, in the reporter's words as close as possible]

**Classification:** [🔴 / 🟡 / 🟢] | **Employment attorney needed:** [Yes — retained and notified / No]

---

## Confidentiality and Retaliation Notice

**Confidentiality:** This matter is to be discussed only with Dr. Lewis, Matt Mathison, and (if applicable) legal counsel until the investigation is concluded.

**Retaliation prohibition:** Under no circumstances may the person(s) named take any adverse action — including scheduling changes, workload changes, assignments, exclusion, or termination — against the reporting employee during the investigation period or after. Any suspected retaliation is reported to Dr. Lewis immediately and treated as a separate, immediate incident.

**Named person(s) notified:** [Date] — [What they were told: that a concern has been raised and an investigation is underway; they will not be told the specifics of the complaint at this stage]

---

## Investigation Plan

| Step | Action | Owner | Timeline |
|------|--------|-------|---------|
| 1 | Interview reporting employee — document full account | Dr. Lewis | Within [48 hrs / 1 week] |
| 2 | Identify and secure relevant evidence (emails, documents, records) | Dr. Lewis | Same day as Step 1 |
| 3 | Interview witnesses (if applicable) — confidentially | Dr. Lewis | Within [X days] |
| 4 | Interview person(s) named — hear their account | Dr. Lewis | After Step 3 |
| 5 | Analyze evidence and interview accounts | Dr. Lewis | After Step 4 |
| 6 | Determine findings: substantiated / unsubstantiated / inconclusive | Dr. Lewis + Matt Mathison | |
| 7 | Determine outcome: [No action / Coaching / Disciplinary / Termination / Policy change] | Dr. Lewis + Matt Mathison | |
| 8 | Communicate outcome to reporting employee | Dr. Lewis | |
| 9 | Communicate outcome to person(s) named | Dr. Lewis | |
| 10 | Document and close case | Dr. Lewis | |

---

## Interview Notes

### Interview 1: Reporting Employee
**Date:** [Date] | **Duration:** [X min] | **Witness/HR present:** [Name if applicable]

[Factual summary of what was shared — use direct quotes for key statements]

### Interview 2: Witness(es)
**Name / Date / Summary:**

### Interview 3: Person(s) Named
**Date:** [Date] | **Duration:** [X min]

[Factual summary — their account]

---

## Evidence Review

| Evidence | Type | Relevant to | Notes |
|---------|------|------------|-------|
| [Email from Date] | Written communication | [Specific allegation] | [What it shows] |
| [Attendance record] | | | |

---

## Findings

**Finding:** Substantiated / Unsubstantiated / Inconclusive

**Basis for finding:**
[Specific — what evidence and interviews support the finding; what is inconsistent; what cannot be determined]

---

## Outcome Decision

**Decision:** [No action warranted / Coaching conversation / Written warning / Termination / Policy clarification / Organizational change]
**Approved by:** Dr. Lewis (🟢/🟡) / Matt Mathison (🔴 and any termination)
**Employment attorney review:** [Completed — [Date] / Not required]

---

## Communication to Parties

**To reporting employee:** "We have completed our investigation. [Without disclosing the specific outcome to the person named:] We want you to know your concern was taken seriously and steps have been taken to address the matter. If you experience any further issues, please come to Dr. Lewis immediately."

**To person(s) named:** [Appropriate to the outcome — coaching language vs. disciplinary language vs. termination]

---

## Case Closure

**Closed:** [Date] | **Final outcome:** [Summary in 1-2 sentences]
**Follow-up check-in with reporting employee:** [Date — 30 days post-closure to confirm no retaliation]
**Case retained:** ✅ SharePoint/HR/<Company>/Employee Relations/ — confidential access only
```

## Output Contract
- Every complaint gets an acknowledgment within 24 hours — even if the investigation will take a week, the reporting employee hears from Dr. Lewis within 24 hours: "I've received your concern. I take this seriously. I'll be in touch within [X days] with a plan." A silent response to a complaint sends the message that the company doesn't care
- Retaliation prevention is active — Dr. Lewis monitors for retaliation during and after the investigation; a 30-day follow-up with the reporting employee is standard; if any adverse action (schedule change, workload change, exclusion from meetings, termination) occurs involving the reporting employee during the investigation or within 60 days after, it is investigated as potential retaliation, not assumed to be coincidental
- Named person is not told the specifics before the investigation — notifying the person complained about with full details before the investigation is structured gives them the opportunity to influence witness accounts or intimidate the reporting employee; they are told a concern has been raised and an investigation is underway; specifics are shared at the interview stage
- 🔴 cases require employment attorney — sexual harassment, discrimination, retaliation allegations, and any matter where termination is likely require employment attorney involvement before Dr. Lewis takes any action beyond initial documentation; the company is exposed to EEOC charges, lawsuits, and state agency investigations in these categories; attorney guidance before action is non-negotiable
- HITL required: Dr. Lewis manages all ER cases; Matt Mathison notified of all 🔴 cases within 24 hours; employment attorney retained for 🔴 cases; termination decisions require Matt Mathison approval; case files maintained in confidential, restricted-access folder; follow-up at 30 days

## System Dependencies
- **Reads from:** Employee records, relevant communications (emails, slack), attendance records, performance records, prior ER case history for same parties
- **Writes to:** ER case file (SharePoint/HR/<Company>/Employee Relations/ — restricted access); Matt Mathison notification; employment attorney brief (🔴 cases); outcome letters to parties
- **HITL Required:** Dr. Lewis manages; Matt Mathison notified for 🔴 cases; attorney for 🔴 and termination cases; termination decisions require Matt Mathison; case files restricted to Dr. Lewis and Matt Mathison

## Test Cases
1. **Golden path:** Allevio — A front desk coordinator reports that her supervisor makes uncomfortable comments about her appearance repeatedly and has asked her to lunch "just the two of us" twice after she declined once → 🔴 classification (potential sexual harassment); Matt Mathison notified same day; employment attorney contacted same day; Dr. Lewis interviews reporting employee within 24 hours (documents full account — specific dates, exact words, her responses); evidence secured (email from supervisor with "let me know if you change your mind about lunch" confirmed in records); witnesses: two colleagues interviewed separately (one corroborates a comment overheard); supervisor interviewed Day 3 ("I'm friendly with everyone; I didn't realize it was unwelcome"); findings: substantiated — pattern of unwanted conduct meeting sexual harassment standard; outcome: supervisor termination, reviewed with attorney; Matt Mathison approved; reporting employee informed of outcome (without naming what happened to supervisor: "steps have been taken"); 30-day follow-up: no retaliation reported; case closed and retained
2. **Edge case:** Dr. Lewis learns from a secondary source (not the employee directly) that harassment may be occurring → Dr. Lewis cannot ignore secondhand reports; approach: have a private conversation with the potentially affected employee: "I've heard that there may be something going on that I should be aware of. You don't have to tell me anything, and nothing is official until you report it. But I want you to know that if there's ever something you want to discuss, you can come to me and it will be taken seriously." Do not pressure the employee to file a formal report; do document that this conversation occurred
3. **Adversarial:** A CEO says "don't investigate — I know both of these people and this is just drama" → an employee relations complaint cannot be dismissed without at least an initial assessment; the company's legal exposure from an uninvestigated harassment or discrimination claim is significant; respond: "I understand you have context I don't. But if [Employee] files an EEOC charge and we have to demonstrate that we took their concern seriously, 'we knew both parties and decided it was drama' is not a defensible position. The investigation doesn't have to be lengthy — I can have an initial assessment done in 3 days. If there's nothing there, we document that and close it. The documentation protects both you and the company."

## Audit Log
All ER cases retained by case ID, company, and date — permanently. Case files restricted to Dr. Lewis and Matt Mathison. Employment attorney correspondence retained. Investigation notes, interview records, and evidence retained. Outcome decisions and approvals retained. 30-day follow-up notes retained. Retaliation incidents (if any) retained separately as new cases linked to the original.

## Deprecation
Retire when portfolio companies have dedicated HR managers with employment attorney relationships, trained investigation protocols, and EEOC-compliant ER processes that don't require Dr. Lewis to directly manage every workplace complaint.
