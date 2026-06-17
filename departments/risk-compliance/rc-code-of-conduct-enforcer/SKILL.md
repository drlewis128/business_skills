---
name: rc-code-of-conduct-enforcer
description: "Apply and enforce the Code of Conduct and business ethics standards. Use when the user says 'code of conduct', 'ethics violation', 'business ethics', 'employee misconduct', 'THRIVE alignment', 'conduct review', 'ethics standards', 'workplace conduct', 'code of ethics', 'enforce conduct policy', 'conduct investigation', 'employee behavior', 'professional standards', 'ethical concern', or 'values violation'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <review|investigate|enforce|report>] [--category <ethics|THRIVE|harassment|conflict|fraud|other>]"
---

# Code of Conduct Enforcer

Apply and enforce the Code of Conduct and business ethics standards at MBL portfolio companies — ensuring that the THRIVE values (Truth, Hustle, Respect, Integrity, Value, Enjoy) are operationalized in how employees behave and how the company responds when conduct doesn't meet those standards. A Code of Conduct that is not enforced is theater; a Code of Conduct that is applied consistently and transparently builds the culture that makes everything else work. At MBL, the THRIVE filter is the values framework — ethics enforcement is THRIVE applied to conduct.

## When to Use
- An employee conduct concern is raised — what is the appropriate response?
- A specific behavior needs to be evaluated against the Code of Conduct
- The Code of Conduct needs to be applied to a gray-area situation
- An investigation has been completed — what conduct consequence is appropriate?
- A new Code of Conduct or ethics policy needs to be drafted or reviewed
- Annual ethics training includes application of the Code — how do we communicate this?

## Code of Conduct Framework

```
THRIVE as the ethics standard:
  Truth: Accurate representation of facts; no misrepresentation to customers, investors, or regulators; no fabrication of records; transparency with management; whistleblower protections enforced
  Hustle: Commitment to performance; not gaming metrics; delivering on commitments; no clock-punching or low-effort coasting
  Respect: Professional treatment of colleagues, customers, and partners; anti-harassment; non-discrimination; no hostile workplace conduct; dignity in every interaction
  Integrity: Doing the right thing when no one is watching; no fraud; no conflict of interest without disclosure; no use of company resources for personal gain; no misappropriation of assets
  Value: Creating real value; not empire-building; no artificial complexity; no politics over performance
  Enjoy: Work environment that is professionally positive; no bullying; no fear-based management; no toxic behavior

Conduct categories and severity:
  Category A — Zero Tolerance (immediate termination, no progressive discipline):
    → Financial fraud or theft (any amount)
    → Falsification of company records
    → OIG exclusion (Allevio — disqualifying regulatory status)
    → Serious criminal conduct
    → Sexual assault or physical violence in the workplace
    → Disclosure of confidential information or trade secrets to competitors
    → Retaliation against a whistleblower
    
  Category B — Serious Misconduct (likely termination; full investigation required):
    → HIPAA violation (unauthorized access, disclosure, or breach of PHI)
    → Harassment (sexual, racial, or other protected characteristic)
    → Conflict of interest not disclosed
    → Theft of time (falsifying timesheets, systematic misrepresentation of hours)
    → Substance abuse on the job (affecting performance or safety)
    → Insubordination (repeated refusal of legitimate directives)
    
  Category C — Performance and Conduct Concerns (progressive discipline; coaching):
    → Repeated tardiness or absenteeism
    → Performance below expectations (after clear communication)
    → Unprofessional conduct (disrespectful but below harassment threshold)
    → Violation of IT/data policies (accidental or first offense)
    → Minor policy violations (expense, procurement, communication)
    
Progressive discipline (for Category C):
  Step 1: Verbal coaching (documented)
  Step 2: Written warning (documented; employee signed)
  Step 3: Final written warning / Performance improvement plan
  Step 4: Termination

THRIVE filter in conduct decisions:
  A conduct concern fails THRIVE if it violates Truth (deception), Respect (harassment or hostile), Integrity (fraud or conflict), or Value (deliberate non-performance)
  Failing any single THRIVE element is sufficient to warrant action
  The severity of the action matches the severity of the THRIVE violation
  Enjoy: A manager who creates an environment of fear or hostility violates Enjoy — this is a conduct concern even if no policy is technically violated
```

## Output Format

```markdown
# Conduct Review — <Company Name>
**Date:** [Date] | **Case ID:** CC-[YYYY]-[###]
**Reviewed by:** Dr. John Lewis | **CEO involved:** [Yes / No]

---

## Conduct Concern

**Employee (role/title, not name in this header):** [Role] | **Entity:** [Company]
**Category:** A (Zero Tolerance) / B (Serious) / C (Performance/Conduct)
**THRIVE element(s) at issue:** [Truth / Hustle / Respect / Integrity / Value / Enjoy]

**Allegation summary:** [Objective description of the conduct concern — no characterization; just facts]

**Source:** Direct manager / HR complaint / Whistleblower report / Audit finding / Customer complaint / Self-report

---

## Investigation Summary

**Investigated by:** Dr. Lewis + CEO / Dr. Lewis + [Name] / External attorney
**Evidence reviewed:** [List — emails, timesheets, system logs, transaction records, witness statements (roles, not names)]
**Employee interviewed:** [Yes / No — if no, why]

**Findings:**
- [Finding 1 — specific fact established]
- [Finding 2]
- [Allegation 3 — unsubstantiated / insufficient evidence]

**THRIVE assessment:**
- Truth: [Violated / Not violated — evidence]
- Respect: [Violated / Not violated]
- Integrity: [Violated / Not violated]
- [Other applicable elements]

---

## Conduct Determination

**Category confirmed:** A / B / C
**Violation substantiated?** Yes / No / Partial

**Recommended action:**
- [ ] No action (insufficient evidence / no violation)
- [ ] Coaching and verbal warning (Category C, Step 1)
- [ ] Written warning (Category C, Step 2)
- [ ] Final warning / PIP (Category C, Step 3)
- [ ] Termination (Category A / Category B / Category C Step 4)
- [ ] Referral to law enforcement
- [ ] Attorney review required before action

**Decision rationale:** [Why this action is appropriate given the category and THRIVE analysis]
**CEO approved:** [Date]
**Attorney reviewed:** [Date] / Not required

---

## Documentation

- Investigation file: SharePoint/RC/<Company>/Conduct/[CaseID]/
- Employee notification: [Date and method]
- Personnel file notation: [Yes / No]
- Corrective action plan attached: [Yes / N/A]

---

## Matt Mathison Brief (Category A or Category B with termination, or significant regulatory implication)

[Company] conduct case [CaseID]: [Category]. Finding: [Violation substantiated / Not substantiated]. Action: [Termination / Warning / No action]. THRIVE elements: [Which]. Regulatory implication: [HIPAA breach / OIG / None]. Attorney engaged: [Name]. Legal exposure: [Description if applicable].
```

## Output Contract
- Conduct decisions are consistent — the same conduct by different employees receives the same category of consequence; a manager who commits Category B misconduct is not treated differently from a non-manager who commits the same; Dr. Lewis documents the precedent for every conduct action and applies it consistently; inconsistent enforcement is both unfair and a discrimination/retaliation lawsuit waiting to happen; before applying a consequence, Dr. Lewis checks whether similar conduct has been addressed previously at the company and at what level
- Investigation before termination for Category B — a Category B concern (harassment, HIPAA violation, conflict of interest) warrants a full investigation before the termination decision; the investigation may confirm the allegation, find insufficient evidence, or partially substantiate the concern; Dr. Lewis does not recommend termination for Category B based on the allegation alone; the investigation findings support the decision; attorney review is required for any Category B termination because of discrimination or retaliation risk (the employee may have filed a whistleblower report or an HR complaint in the past)
- Category A is immediate but still documented — financial fraud triggers immediate termination without progressive discipline; but "immediate" does not mean "undocumented"; Dr. Lewis documents the specific evidence of fraud, the specific conduct that meets the Category A threshold, the CEO approval, and the attorney review (if applicable); this documentation is the defense against a wrongful termination claim where the employee disputes the finding
- HITL required: Dr. Lewis leads conduct reviews and investigations; CEO co-investigates Category B and approves all terminations; attorney for any termination (especially Categories A and B) where legal exposure exists; Matt Mathison for Category A misconduct, regulatory implications (HIPAA, OIG), or financial fraud; law enforcement referral for criminal conduct (attorney advises)

## System Dependencies
- **Reads from:** Whistleblower reports (rc-whistleblower-program), HR records (personnel files, prior discipline), IT audit logs (for data policy violations), financial records (for fraud investigations), email/communication records, rc-investigation-manager
- **Writes to:** Conduct case file (SharePoint/RC/<Company>/Conduct/ — restricted); personnel file notation; corrective action plan; termination letter (if applicable); CEO and Matt Mathison notifications; attorney engagement record
- **HITL Required:** Dr. Lewis leads; CEO approves terminations; attorney for Category A and B terminations; Matt Mathison for fraud, regulatory, and Category A cases; law enforcement: attorney advises on referral

## Test Cases
1. **Golden path:** A manager reports that a billing coordinator at Allevio has been accessing patient records for patients not in their workflow → Category B concern (HIPAA violation — unauthorized PHI access); immediately: preserve the AdvancedMD audit log (do not allow the employee to alter records); employee placed on administrative leave pending investigation; Dr. Lewis + CEO investigate; AdvancedMD audit log reviewed: 23 unauthorized access events over 3 months to records of patients not in the billing workflow; employee interviewed: unable to provide business justification; THRIVE: Integrity violated (unauthorized access for unknown purpose); Respect violated (violation of patient privacy); Category B confirmed; HIPAA breach assessment triggered (rc-data-breach-responder); attorney engaged; recommendation: termination; CEO approved; attorney reviewed termination; HIPAA breach: 23 patients affected; notification required; personnel file documented; Matt Mathison informed
2. **Edge case:** An employee raises a concern that their manager "seems to enjoy making people feel bad" — is this a Code of Conduct violation? → Enjoy element review: Dr. Lewis investigates whether the manager is creating a hostile or fear-based work environment; interviews with team members (confidential); specific behaviors documented: Does the manager use public humiliation? Personal attacks? Threatening job loss for normal performance gaps? If yes: conduct concern substantiated — Category C minimum; coaching and written warning; if no specific behaviors found but general discomfort: no formal violation but coaching provided to manager on leadership standards; if pattern of complaints: take seriously and investigate thoroughly; the Enjoy element is not about whether work is fun — it is about whether the environment is professionally safe and respectful
3. **Adversarial:** "Can we skip the investigation and just terminate — we already know what happened?" → No; a termination without investigation creates wrongful termination exposure regardless of how confident management is in the facts; the investigation is the documentation that the decision was made in good faith with specific evidence; without it, the terminated employee's claim ("I was fired without any investigation or due process") is partially correct; the investigation need not be lengthy — a Category A fraud case with documented evidence can be investigated in 1-2 days; but it must be done; attorney reviews the case before the termination is communicated

## Audit Log
All conduct cases retained permanently (restricted access — Dr. Lewis and CEO only). Evidence files retained permanently. CEO approval records retained. Attorney engagement records retained. Personnel file notations retained per employment record retention standard (7 years). Matt Mathison notifications retained.

## Deprecation
Retire when portfolio companies have dedicated HR business partner functions with formal employee relations and conduct management protocols — with Dr. Lewis providing oversight of Category A and B cases and all cases with regulatory implications (HIPAA, OIG, financial fraud).
