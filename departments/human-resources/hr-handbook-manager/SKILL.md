---
name: hr-handbook-manager
description: "Build and maintain the employee handbook for MBL Partners portfolio companies. Use when the user says 'employee handbook', 'HR handbook', 'company handbook', 'policy manual', 'employee policy', 'HR policy', 'write a policy', 'update a policy', 'review policy', 'handbook review', 'handbook update', 'at-will policy', 'at-will employment', 'PTO policy', 'time off policy', 'vacation policy', 'sick leave policy', 'code of conduct', 'workplace conduct', 'harassment policy', 'anti-harassment policy', 'discrimination policy', 'disciplinary policy', 'progressive discipline', 'corrective action policy', 'remote work policy', 'expense policy', 'cell phone policy', 'confidentiality policy', 'BYOD policy', 'drug and alcohol policy', 'social media policy', 'handbook acknowledgment', 'sign the handbook', or 'policy acknowledgment'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <build|update|review|publish|acknowledge>] [--section <policy-name>] [--state <az|ut>]"
---

# HR Handbook Manager

Build, maintain, and enforce the employee handbook for MBL Partners portfolio companies — ensuring policies reflect current law, entity practice, and THRIVE values, and that employees have signed acknowledgments. The handbook is both a communication tool (employees know what to expect) and a legal document (it establishes the entity's policies for purposes of employment claims); it must be accurate, current, and actually followed.

## When to Use
- A new entity acquisition needs a handbook built
- Annual handbook review (required — laws change)
- A specific policy question arises
- A new policy needs to be added
- Employee handbook acknowledgments need to be obtained

## Handbook Framework

```
CORE HANDBOOK SECTIONS (all MBL entities):

  1. EMPLOYMENT RELATIONSHIP:
     At-will employment statement (AZ and UT are both at-will states)
     AZ: "Employment is at-will and may be terminated by either party at any time, 
       with or without cause or notice, unless otherwise required by law."
     UT: identical
     Note: language like "progressive discipline will be followed" can inadvertently 
       create an implied contract — Dr. Lewis reviews all discipline language carefully
     
  2. EQUAL EMPLOYMENT OPPORTUNITY:
     Non-discrimination policy (protected classes: race, color, national origin, sex, 
       religion, disability, age, genetic information, pregnancy, military status)
     AZ additions: per municipal coverage (Phoenix/Tucson have local ordinances)
     UT additions: sexual orientation and gender identity (Utah Antidiscrimination Act ≥15 FTE)
     Non-harassment and anti-retaliation statements
     Complaint procedure: report to Dr. Lewis or entity CEO
     
  3. COMPENSATION AND BENEFITS:
     Pay periods and payday (confirm with payroll processor)
     Overtime: FLSA-compliant statement; non-exempt vs. exempt definitions
     Benefits summary: medical/dental/vision; 401(k); sick time
     AZ Earned Sick Time: required section (Prop 206; 40 hrs/year for ≥15 FTE)
     UT sick leave: per company policy (24 hrs minimum recommended)
     
  4. TIME OFF:
     PTO/vacation policy (accrual; carryover; maximum; payout at separation — AZ requires payout)
     Bereavement: 3 days immediate family; 1 day extended family
     Jury duty: paid; documentation required
     Military leave: USERRA-compliant; job protection
     Holiday schedule: entity-specific
     
  5. WORKPLACE CONDUCT:
     Code of conduct (anchored in THRIVE — Truth, Hustle, Respect, Integrity, Value, Enjoy)
     Harassment and discrimination prohibition
     Disciplinary procedures (use general language; avoid "progressive discipline" as a promise)
     Workplace violence: zero tolerance
     Weapons: prohibited on company premises
     Drug and alcohol: zero tolerance for impairment during work hours
     
  6. POLICIES:
     Confidentiality and non-disclosure: protect entity and client information
     Social media: what employees can/cannot share about the entity
     Cell phone / technology acceptable use
     Remote work (if applicable): entity-specific
     Expense reimbursement: aligned with expense policy
     Conflicts of interest: disclose to Dr. Lewis; entity CEO reviews
     Moonlighting / outside employment: disclose; approval required if conflict of interest
     
  7. ALLEVIO-SPECIFIC ADDITIONS:
     HIPAA confidentiality policy (required for healthcare workforce)
     Patient/member privacy: even after employment ends
     OIG/LEIE: employees are subject to monthly monitoring; disclosure of exclusion = immediate termination
     Clinical licensing requirements: must maintain active licensure; lapse = separation risk
     Infection control and bloodborne pathogens
     
  8. HIVE-SPECIFIC ADDITIONS:
     Landowner relations policy: confidentiality; no personal relationships with lessors
     Safety: field safety; PPE; incident reporting
     Environmental compliance obligations
     
  9. COLUMN6-SPECIFIC ADDITIONS:
     Client confidentiality: campaign data; agency relationships; performance data
     Media buying ethical standards
     Competition disclosure: no working with competitive agencies without disclosure
     
  10. ACKNOWLEDGMENT AND RECEIPT:
      Employees sign (wet or electronic) acknowledging receipt and at-will status
      Handbook acknowledgment is NOT a contract; do not inadvertently create one
      
HANDBOOK MAINTENANCE:
  Annual review: every January; updated for prior year law changes (AZ minimum wage; UT changes; federal)
  Trigger updates: new law effective date; significant operational change; entity acquisition
  Version control: date on every page; version number in footer
  Distribution: all employees get updated version; re-acknowledgment required for material changes
  
DISCLAIMER (must be in handbook):
  "This handbook is not a contract of employment. MBL Partners reserves the right to modify,
  amend, or revoke any policy at any time, with or without notice. Nothing in this handbook 
  creates or implies a guarantee of employment for any specific period."
```

## Output Format

```markdown
# [Entity] Employee Handbook — Version [X.X] — Effective [Date]
**Prepared by:** Dr. Lewis | **Reviewed by:** Entity CEO | **Legal review:** [Date / Not required for minor update]

---

## Table of Contents
[Auto-generated — sections 1-10 as applicable]

---

## [Section Title]
[Policy content — plain English; specific; legally compliant]

---

## Acknowledgment of Receipt

"I acknowledge that I have received and read the [Entity] Employee Handbook (Version [X.X], effective [Date]).
I understand that this handbook is not a contract of employment, that employment is at-will, and that the 
company may modify policies at any time.

Employee Name (print): ___________________
Signature: ___________________ Date: ___________"
```

## Output Contract
- At-will language is in the handbook and in the acknowledgment — the most critical legal element of any US employee handbook is a clear, unambiguous at-will statement that is not undermined by other language in the handbook; Dr. Lewis reviews every version for language that might imply job security or progressive discipline as a contractual obligation; phrases like "you will receive three warnings before termination" create implied contractual obligations; the handbook states that discipline may include any of several steps, not that they will all occur
- Annual review is mandatory, not optional — employment law changes constantly; AZ minimum wage adjusts annually; EEOC updates guidance; federal rules change; a handbook that was accurate in 2024 may have outdated policies in 2026; Dr. Lewis reviews every entity's handbook in January; entities acquired during the year receive an immediate handbook review as part of acquisition integration; outdated handbooks that conflict with current law are more dangerous than no handbook (they create incorrect employee expectations backed by the employer's own document)
- Acknowledgment does not create a contract — the acknowledgment page must include clear language that the handbook is not a contract and employment remains at-will; some entities include the at-will acknowledgment as a separate line item in the acknowledgment for maximum clarity; Dr. Lewis ensures the acknowledgment language has been reviewed by legal counsel; the fact that an employee signed a handbook does not mean they agreed to all policies — it means they received the document
- HITL required: handbook initial draft → Dr. Lewis drafts; entity CEO reviews; legal counsel reviews (new handbooks + material policy changes); annual review → Dr. Lewis reviews + entity CEO confirms; material policy change → re-acknowledgment required; HIPAA policy (Allevio) → legal-hipaa-compliance-manager review; new entity acquisition handbook build → Dr. Lewis within 30 days of close; handbook acknowledgment collection → Dr. Lewis confirms 100% signed

## System Dependencies
- **Reads from:** hr-compliance-calendar (law effective dates — AZ minimum wage; UT changes; federal updates); legal-employment-law-tracker (AZ; UT; federal employment law changes); legal-hipaa-compliance-manager (Allevio HIPAA policy section); hr-benefits-manager (benefits summary for handbook); fin-ops-expense-auditor (expense policy alignment)
- **Writes to:** Handbook document (SharePoint → HR → Handbooks → [Entity] → [Version]); employee acknowledgment records (SharePoint → HR → Acknowledgments → [Entity] → [Employee]); entity CEO review confirmation; legal counsel review confirmation
- **HITL Required:** Initial handbook → Dr. Lewis drafts; entity CEO + legal counsel review; annual review → Dr. Lewis + entity CEO; material change → re-acknowledgment + legal review; HIPAA section → legal review; acknowledgment collection → Dr. Lewis confirms 100%

## Test Cases
1. **Golden path:** Allevio handbook annual review (January). Dr. Lewis reviews: AZ minimum wage update to $14.70/hr confirmed in compensation section. New PWFA section added (federal law effective June 2023 — catching up). HIPAA policy confirmed current. At-will language: confirmed no implied contract language. OIG/LEIE monitoring section: confirmed and accurate. Version updated to 3.2. Entity CEO reviews and approves. All 22 Allevio employees receive updated handbook via DocuSign. Acknowledgments due within 10 business days. 100% collected by Day 12.
2. **Edge case:** New HIVE hire (UT) asks "your handbook says we get 24 hours of sick leave — but I thought Utah doesn't require it" → Dr. Lewis: "That's correct — Utah has no state-mandated paid sick leave. HIVE provides 24 hours as a company benefit above what's legally required. The handbook reflects our policy, not just the legal minimum. Think of it as a commitment we've made to employees." (This is an example of a well-drafted handbook that exceeds minimum requirements — no correction needed, just explanation.)
3. **Adversarial:** Entity CEO rewrites a handbook section without involving Dr. Lewis and sends it to the team → Dr. Lewis: "I appreciate the initiative, but handbook changes need to go through me before distribution. There are two risks here: (1) the new language may inadvertently create legal obligations we didn't intend, and (2) if the policy isn't consistent across all employees, we have a discrimination exposure. Let me review what was sent. If it's legally sound and correct, I'll version it and re-distribute with proper acknowledgment. If there's a problem, we'll issue a correction immediately."

## Audit Log
All handbook versions retained permanently (version history). Employee acknowledgment records retained for duration of employment + 3 years. Legal counsel review records retained. Annual review records retained. Policy change distribution records retained.

## Deprecation
Handbook reviewed annually — no planned deprecation. Individual sections updated as laws change. Allevio HIPAA section updated when HIPAA regulations change. New entity additions created within 30 days of acquisition.
