---
name: job-requisition-writer
description: "Write a formal job requisition to approve a new hire or backfill. Use when the user says 'job req', 'job requisition', 'open a req', 'write a requisition', 'hiring request', 'request to hire', 'new hire approval', or 'backfill request'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<role-title> [--type <backfill|new-headcount>] [--entity <name>] [--department <name>]"
---

# Job Requisition Writer

Write a formal job requisition to initiate the hiring process and get organizational approval. No hiring process should start without a signed req — it's the financial and organizational commitment to the hire.

## When to Use
- Opening a new position (net new headcount, not yet in budget)
- Backfilling a departing employee
- Converting a contractor to full-time
- Requesting an upgrade in role classification
- Any hire requiring manager or executive sign-off

## Requisition Components

### 1. Position Information
- Role title and level
- Department and reporting structure
- Location (remote / hybrid / on-site)
- Employment type (FTE, part-time, contract-to-hire)
- Headcount type: Backfill vs. net new
- Target start date

### 2. Business Justification
The reason this hire must happen now. Answer three questions:
1. What work is not getting done (or will not get done) without this hire?
2. What is the cost of NOT hiring (revenue impact, risk, overload)?
3. Why now vs. next quarter?

Strong justification = approved req. Weak justification = delay.

### 3. Financial Impact
- Expected fully-loaded annual cost (salary + benefits + overhead, typically 1.25-1.35× base)
- Budget source (which cost center, which budget line)
- Whether this is budgeted or unbudgeted headcount

### 4. Role Requirements
- Must-have qualifications (non-negotiable)
- Preferred qualifications (nice to have)
- Key responsibilities (3-5 bullet points)
- Success metrics for the role (how will we know this hire is working?)

### 5. Approval Chain
Defined by headcount type and cost:
- Backfill (budgeted) → Department manager + HR
- Net new (budgeted) → Department manager + HR + Finance
- Net new (unbudgeted) → All above + Matt Mathison

## Output Format

```markdown
# Job Requisition — <Role Title>
**Date:** <date> | **Requestor:** <name> | **Department:** <department>
**Entity:** <entity> | **Req Type:** Backfill / Net New | **Status:** Pending Approval

---

## Position Summary
**Title:** <full title and level>
**Reports to:** <manager name and title>
**Location:** <remote | hybrid | on-site — city>
**Employment Type:** Full-Time Employee
**Target Start Date:** <date>
**Budget Status:** Budgeted / Unbudgeted

## Business Justification
<2-3 paragraphs answering: what's not getting done, cost of not hiring, why now>

## Financial Impact
**Estimated Base Salary Range:** $<low> – $<high>
**Fully-Loaded Annual Cost:** ~$<N> (base × 1.30 for benefits/overhead)
**Budget Source:** <cost center / budget line>

## Role Requirements

### Must-Have
- <Qualification 1>
- <Qualification 2>
- <Qualification 3>

### Preferred
- <Preference 1>

### Key Responsibilities
1. <Responsibility>
2. <Responsibility>
3. <Responsibility>

### Success Metrics (First 90 Days)
1. <Measurable outcome>

## Approval

| Approver | Role | Status | Date |
|---------|------|--------|------|
| <Name> | Hiring Manager | ☐ Pending | — |
| <Name> | HR | ☐ Pending | — |
| <Name> | Finance | ☐ Pending | — |
| Matt Mathison | Managing Partner | ☐ Pending | — |
```

## Output Contract
- Business justification always written — no "we just need someone" reqs
- Fully-loaded cost always calculated, not just base salary
- Approval chain always included and matched to org policy
- HITL required — req must be reviewed and approved before recruiting begins

## System Dependencies
- **Reads from:** Role requirements and business context (provided), headcount plan
- **Writes to:** Nothing (requisition document for approval workflow)
- **HITL Required:** All requisitions require manager + HR approval; unbudgeted reqs require Matt Mathison

## Test Cases
1. **Golden path:** Allevio clinical coordinator backfill → complete req with business justification citing patient load impact and 2-approver chain
2. **Edge case:** Unbudgeted net new hire with strong justification → req written with clear financial impact, routed to Matt Mathison for final approval
3. **Adversarial:** Req with no business justification ("we're just busy") → refuses to complete without substantive justification, prompts for business impact

## Audit Log
All requisitions retained by entity, role, and date. Approved reqs serve as hiring authorization documentation.

## Deprecation
Retire when HRIS (Rippling, Workday, ADP) includes built-in requisition workflow with approval routing.
