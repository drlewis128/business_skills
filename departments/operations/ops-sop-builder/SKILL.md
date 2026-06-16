---
name: ops-sop-builder
description: "Write a Standard Operating Procedure. Use when the user says 'SOP', 'standard operating procedure', 'write a procedure', 'document this procedure', 'procedure for', 'create a procedure', 'step-by-step procedure', 'how should we do this', 'procedure document', 'operations procedure', 'write up how to do', 'create a how-to', 'document the steps for', or 'procedure manual'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--process <process name>] [--audience <frontline|manager|technical>]"
---

# Ops SOP Builder

Write Standard Operating Procedures (SOPs) for MBL portfolio companies — the written instructions that tell employees how to perform a specific task correctly and consistently. SOPs serve three functions: training (a new hire can do the task from the document), consistency (the task is done the same way every time regardless of who does it), and compliance (documented, followed procedures are the defense against audits and legal claims). Bad SOPs are long documents no one reads. Good SOPs are clear, step-by-step instructions that someone can follow the first time without asking a question.

## When to Use
- A new process is being standardized for the first time
- A recurring task is being done inconsistently across team members
- An employee departure reveals that a critical process lived in one person's head
- A compliance audit requires documented procedures (Allevio: HIPAA; HIVE: EPA/field safety)
- A process has been mapped (ops-process-mapper) and now needs a written procedure
- Matt Mathison asks "do we have an SOP for [X]?"

## SOP Design Principles

```
Right-sized SOP design:
  - An SOP should be completable by a new employee on their first attempt without help
  - Length is calibrated to the task: a 3-step process needs 1 page, not 10
  - Numbered steps, not paragraphs: prose is hard to follow while doing a task
  - Each step = one action: "Log in to Bill.com AND open the vendor list" is two steps
  - Decision points use clear branching: "If [condition]: go to Step X / If not: continue to Step Y"
  - Screenshots or system references for any step involving a specific software action

SOP lifecycle:
  - Version number: start at 1.0; increment to 1.1 for minor changes; 2.0 for major revision
  - Review date: SOPs must be reviewed annually or when the process changes
  - Owner: one person is responsible for keeping the SOP current
  - Approval: SOP is approved before it becomes the official procedure (not just drafted)

SOP categories for MBL portfolio:
  Financial procedures (Bill.com, QuickBooks, payroll): Finance-owned; Dr. Lewis review
  HR procedures (onboarding, offboarding, I-9): Dr. Lewis-owned
  Healthcare procedures (Allevio): clinical/billing procedures; HIPAA compliance required
  Field operations (HIVE Partners): safety and production procedures; regulatory compliance
  General operations: vendor management, meeting protocols, reporting procedures
```

## Output Format

```markdown
# Standard Operating Procedure — <Procedure Name>
**SOP ID:** [Company]-OPS-[###] | **Version:** [1.0]
**Process owner:** [Name / Role] | **Approved by:** [Name] | **Approval date:** [Date]
**Department:** [Operations / Finance / HR / Clinical]
**Applies to:** [Who must follow this procedure]
**Review date:** [Date — 12 months from approval]
**Revision history:** v1.0 — [Date] — Initial release

---

## Purpose

[One sentence: What does this procedure accomplish and why does it exist?]

Example: "This procedure ensures that all vendor invoices are reviewed, approved, and processed through Bill.com accurately and within payment terms, reducing the risk of duplicate payments and unauthorized disbursements."

---

## Scope

**This procedure applies to:** [Roles and/or entities covered]
**This procedure does not apply to:** [What is explicitly excluded — if anything]

---

## Prerequisites

Before beginning this procedure, confirm:
- [ ] [System access required — e.g., "Bill.com access with approver permissions"]
- [ ] [Document or information required — e.g., "Invoice from vendor"]
- [ ] [Prior step completed — e.g., "Purchase order approved by Dr. Lewis"]

---

## Procedure

**Step 1 — [Action verb: short description]**
[Detailed instruction: specific enough that a new employee can do it without help]
> System: [If a system is involved — where to click, what field to fill]
> Result: [What should you see or have when this step is complete?]

**Step 2 — [Action verb: short description]**
[Instruction]
> Decision: Does [condition exist]?
> → YES: Proceed to Step 3
> → NO: Proceed to Step 5

**Step 3 — [Action verb: short description] (YES path)**
[Instruction]

**Step 4 — [Escalation or exception handling]**
[Instruction — what to do if something unexpected happens]
> Escalate to: [Name / Role] via [method] if [specific condition]

**Step 5 — [Next step (NO path or continuation)]**
[Instruction]

**Step 6 — [Action verb: short description]**
[Instruction]
> Document: [What must be recorded, where, by when]

**Step 7 — [Final step]**
[Instruction]
> Confirmation: [How do you know the procedure is complete?]

---

## Exception Handling

| Situation | What to do | Who to notify |
|---------|-----------|--------------|
| [Vendor doesn't have a W-9 on file] | [Do not process payment; request W-9 first] | [AP contact] |
| [Invoice amount doesn't match PO] | [Hold invoice; contact vendor and notify Dr. Lewis] | [Dr. Lewis] |
| [System is down] | [Document manually; enter in system when restored] | [IT contact] |

---

## Controls and Compliance

**Approval required:** [Yes — who / No]
**Documentation required:** [What records must be created — in what system]
**Audit trail:** [Where is the audit trail maintained — e.g., "Bill.com audit log; QuickBooks GL"]

**Healthcare compliance (Allevio only):**
- PHI accessed in this procedure: [Yes — steps X, Y / No]
- HIPAA safeguards in place: [Describe — e.g., "Access limited to authorized billing staff; AdvancedMD access log maintained"]

---

## Contacts and Resources

| Question about | Contact | Method |
|---------------|---------|--------|
| [System access issue] | [IT or role] | [Teams / Email] |
| [Policy or approval question] | [Dr. Lewis] | [jlewis@mblpartners.com] |
| [Emergency or critical error] | [Matt Mathison] | [Phone: 602-880-6491] |

---

## Attachments

- [ ] [Process map reference — if available]
- [ ] [Template or form used in this procedure]
- [ ] [Screenshot guide for system steps]
```

## Output Contract
- Steps are numbered, not bulleted — numbered steps allow unambiguous reference ("I'm stuck on Step 7") and make it clear that order matters; bullets are for lists where sequence isn't critical; SOP steps are always numbered
- Each step has exactly one action — "Open Bill.com, find the invoice, and click approve" is three steps; breaking compound actions into single steps prevents the most common SOP error (someone does steps 1 and 3 and misses step 2 because they're in the same sentence)
- Decision points are explicit and branching — "If X, do Y; if not X, do Z" is the format; "check whether it looks right" is not a decision point, it's ambiguous; every decision in the SOP has defined criteria for each outcome
- Exception handling is required — every procedure has exceptions that can't be fully anticipated; the SOP names the most common exceptions and gives explicit direction; "contact your manager" is not a sufficient exception instruction (which manager? via what method? when?)
- SOPs require approval before use — a draft SOP is not an approved procedure; the approval chain (process owner review + management sign-off) ensures the SOP is accurate and authorized; using an unapproved draft as the official procedure creates liability ("you told me to follow the SOP" when the SOP was wrong)
- HITL required: Dr. Lewis reviews all SOPs before approval; process owner confirms accuracy; management approves before distribution; annual review by process owner with Dr. Lewis co-review for compliance-sensitive procedures (Allevio HIPAA, HIVE field safety)

## System Dependencies
- **Reads from:** Current-state process map (from ops-process-mapper), interviews with process practitioners, existing procedures (if any)
- **Writes to:** SOP document (SharePoint/Ops/<Company>/SOPs/ — with version history); training materials (if SOP is used for onboarding); compliance documentation (if SOP is required for regulatory compliance)
- **HITL Required:** Dr. Lewis reviews draft; process owner confirms accuracy; appropriate manager approves; Allevio clinical/HIPAA SOPs reviewed by clinical leadership + compliance before approval

## Test Cases
1. **Golden path:** HIVE Partners — "write the SOP for monthly production reporting" → Purpose: ensure accurate, timely production reporting from field to office for Covercy entry and LP reporting; Scope: Field supervisor → Office coordinator → Controller; Prerequisites: Field production logs for the month, Covercy access; Steps: Step 1 (Field supervisor compiles daily production logs for the month on or before the 3rd business day), Step 2 (Supervisor submits to office coordinator via [Teams channel] with completed template), Step 3 (Coordinator reviews for completeness — does it match the well count and days in the period?), Decision: complete? Yes → Step 4; No → Step 3A (return to supervisor with missing items), Step 4 (Controller enters into Covercy), Step 5 (Controller sends LP summary to Matt Mathison by 5th business day); Exception: If a well was down for all or part of the month, document reason in the comments field; approved by HIVE GM and Dr. Lewis; filed in SharePoint
2. **Edge case:** The SOP is being written for a process that is currently done differently by two different people → The SOP cannot document both versions — it must define one correct version; the right approach is: (1) document both current versions in the process map, (2) bring the two practitioners together to agree on the correct version, (3) then write the SOP for the agreed version; writing an SOP before the process is standardized embeds the disagreement into the official document
3. **Adversarial:** An employee says "I've been doing this for 5 years, I don't need a written procedure" → The SOP isn't for them — it's for the organization; respond: "I understand you have it mastered, and that expertise is exactly what I need to write this SOP correctly. What I'm trying to prevent is the situation where you're out sick or you leave and no one else knows how to do this. If you help me document it, you become the author of the official procedure — that's recognition of your expertise. It'll take 45 minutes. Can we do it Thursday?"

## Audit Log
All SOPs retained by SOP ID and version — version history maintained. Approval signatures/emails retained. Annual review completions documented. Revisions tracked with reason for change. Compliance-sensitive SOPs (Allevio HIPAA, HIVE safety) retain separate review documentation.

## Deprecation
Retire when portfolio companies have dedicated operations managers who own the SOP library, conduct regular reviews, and maintain SOPs as living documents in a knowledge management system without Dr. Lewis involvement in each SOP creation.
