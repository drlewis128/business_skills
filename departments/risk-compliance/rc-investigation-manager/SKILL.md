---
name: rc-investigation-manager
description: "Manage workplace and compliance investigations — evidence, interviews, findings, and conclusions. Use when the user says 'investigation', 'workplace investigation', 'compliance investigation', 'conduct investigation', 'internal investigation', 'investigate a complaint', 'evidence preservation', 'witness interview', 'investigation protocol', 'investigation findings', 'investigation report', 'HR investigation', 'fraud investigation', 'employee investigation', or 'investigate misconduct'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <harassment|fraud|HIPAA|conduct|financial|safety>] [--phase <open|preserve|interview|analyze|conclude|report>]"
---

# Investigation Manager

Manage workplace and compliance investigations at MBL portfolio companies — from the initial complaint through evidence preservation, witness interviews, analysis, findings, and conclusions. A properly conducted investigation is both a risk management tool (identify and stop misconduct) and a legal defense (demonstrate that the company responded reasonably to a complaint); an improperly conducted investigation — one that skips evidence preservation, tips off the subject before evidence is secured, or reaches conclusions without sufficient evidence — can turn a manageable conduct issue into significant legal exposure. Dr. Lewis manages investigations with integrity, speed, and documentation.

## When to Use
- A whistleblower report or employee complaint triggers an investigation
- A compliance audit finding requires investigation to determine root cause and intent
- A HIPAA breach requires investigation under PICERL protocol
- A financial discrepancy suggests potential fraud
- An employment law complaint (harassment, discrimination) requires documented response
- A termination requires that the conduct was investigated before the decision

## Investigation Framework

```
Investigation activation criteria:
  Mandatory investigation (cannot proceed without):
    → Any allegation of financial fraud or theft
    → Any harassment allegation from a named complainant
    → Any HIPAA breach or unauthorized PHI access
    → Any allegation against a manager or executive
    → Any allegation of retaliation against a whistleblower
    → Any criminal allegation
    
  Discretionary investigation:
    → Anonymous complaints with insufficient specificity (assess credibility first)
    → Minor policy violations (may handle as coaching without formal investigation)
    → Performance concerns (manage through PIP, not investigation, unless fraud suspected)
    
Lead investigator assignment:
  Standard conduct/HR: Dr. Lewis + CEO
  Allegations against Dr. Lewis: Matt Mathison + external attorney
  Allegations against CEO: Matt Mathison + external attorney
  Criminal or regulatory: Attorney leads; Dr. Lewis supports
  HIPAA breach: Dr. Lewis leads; attorney advises; CEO informed
  
Evidence preservation (first priority — before subject is notified):
  Litigation hold: Stop any automatic deletion; preserve email, chat, documents, system logs
  Specific evidence types:
    Email/Teams: M365 eDiscovery hold; export relevant communications
    System logs: AdvancedMD audit log; Entra ID sign-in log; Bill.com audit log; preserve before purge cycles
    Financial records: QuickBooks export; bank statements; Bill.com records; preserve as PDF
    Physical evidence: Secure any physical items (USB drives, documents)
    Documents: Copy from SharePoint before anyone can delete; version history preserved
  Timing: Evidence must be preserved BEFORE the subject is notified of the investigation; notification before preservation = risk of evidence destruction
  
Investigation steps (in order):
  1. Open and assign — assign lead; notify CEO (and Matt Mathison if relevant)
  2. Preserve evidence — before notification
  3. Attorney engagement — determine if attorney should be present for interviews
  4. Notify subject — after evidence is preserved; inform of investigation; explain process; place on administrative leave if continued access is a risk
  5. Witness interviews — start with neutral witnesses; subject last; document each interview
  6. Evidence analysis — what does the evidence show? What is missing?
  7. Findings determination — what can be concluded from the evidence? What cannot?
  8. Conduct determination — does the finding meet the threshold for conduct action?
  9. Investigation report — documented; retained permanently
  10. Action decision — Dr. Lewis + CEO (or Matt Mathison); attorney review if termination
  11. Close and communicate — notify complainant of outcome (named reports); notify subject
  
Interview principles:
  Non-accusatory opening: "We're gathering information; we want to hear your perspective"
  Factual, open-ended questions: "What happened on [Date]?" not "Did you steal the money?"
  Document contemporaneously: Notes during or immediately after; not reconstructed from memory
  Attorney present for subject interview when criminal or high-stakes conduct is alleged
  One investigator primary; one secondary (witness to the interview)
  
Attorney-client privilege protection:
  Investigation conducted at direction of attorney can be protected by privilege
  If significant legal exposure is anticipated, attorney should direct the investigation
  Communications between Dr. Lewis and attorney during investigation: privileged; do not include in general investigation file
```

## Output Format

```markdown
# Investigation Case File — <Case ID>
**Case ID:** INV-[YYYY]-[###] | **Entity:** [Company]
**Type:** Harassment / Fraud / HIPAA / Conduct / Financial / Safety
**Opened:** [Date] | **Status:** Open / Closed [Date]
**Lead investigator:** Dr. John Lewis | **Attorney:** [Name / Not engaged]

---

## Phase 1: Case Open

**Allegation summary:** [Objective description]
**Complainant:** Anonymous / Named [Role — not name in this document]
**Subject:** [Role — not name; name in restricted file]
**Source:** Whistleblower / Manager report / Audit / Self-report / Customer

**Mandatory investigation:** ✅ Yes — [reason] / ❌ No — handled as coaching
**Lead assigned:** Dr. Lewis + CEO / Matt Mathison + Attorney
**CEO notified:** [Date/Time]
**Matt Mathison notified:** [Date/Time] / Not required

---

## Phase 2: Evidence Preservation Log

| Evidence item | Location | Preserved | Date | Method | Preserved by |
|-------------|---------|---------|------|--------|------------|
| Email communications (relevant period) | M365 | ✅ | [Date] | eDiscovery hold; exported to case folder | Dr. Lewis |
| AdvancedMD audit log — [period] | AdvancedMD | ✅ | [Date] | PDF export; filed in case folder | Dr. Lewis |
| Bill.com payment records | Bill.com | ✅ | [Date] | Export | Dr. Lewis |
| SharePoint documents | SharePoint | ✅ | [Date] | Version history preserved; copied to case folder | Dr. Lewis |

**Subject notified after preservation:** ✅ [Date] / ⚠️ Preservation not yet complete — delay notification

---

## Phase 3: Witness and Subject Interviews

| Interview | Role | Date | Duration | Key information obtained |
|---------|------|------|---------|------------------------|
| Witness 1 | [Role] | [Date] | 45 min | [Summary — objective; not characterization] |
| Witness 2 | [Role] | [Date] | 30 min | [Summary] |
| Subject | [Role] | [Date] | 90 min | [Subject's account and explanation] |

**Attorney present for subject interview:** ✅ Yes / Not required

---

## Phase 4: Evidence Analysis

**Evidence supports allegation:** Yes / No / Partially
**Evidence contradicts allegation:** [Describe]
**Key factual findings:**
1. [Specific factual finding — what the evidence shows]
2. [Factual finding 2]
3. [Allegation 3 — not supported by evidence]

**Credibility assessment:** [Whose account is more consistent with the physical evidence and why — objective]

---

## Phase 5: Investigation Findings

**Allegation:** [Restate allegation]
**Finding:** Substantiated / Not substantiated / Partially substantiated / Inconclusive

**Basis for finding:** [Specific evidence and reasoning]

**Category:** A (Zero Tolerance) / B (Serious) / C (Conduct) — per rc-code-of-conduct-enforcer
**THRIVE elements violated:** [Which / None]
**Regulatory implication:** HIPAA breach / Financial fraud / Employment law / None

---

## Phase 6: Recommended Action

**Recommended:** [No action / Coaching / Written warning / Termination / Law enforcement referral / Attorney-directed]
**CEO decision:** [Action taken] | **Date:** [Date]
**Attorney review:** ✅ [Date] / Not required

**Communication to complainant (named reports):** [Outcome communicated without disclosing subject details] [Date]
**Communication to subject:** [Outcome communicated] [Date]

---

## Case Closed: [Date]
**Case outcome:** [Substantiated / Not substantiated / Inconclusive]
**Action taken:** [Summary]
**Case file location:** SharePoint/RC/<Company>/Investigations/[CaseID]/ — Restricted Access
```

## Output Contract
- Evidence preservation before subject notification is not optional — the sequence matters: preserve → notify; reversing this sequence allows the subject to delete emails, alter records, or influence witnesses; Dr. Lewis has authority to delay subject notification for the duration necessary to complete evidence preservation (typically 24-48 hours); if evidence is already at risk (subject has admin access to systems being preserved), Dr. Lewis may revoke access before notification; the evidence preservation log documents what was preserved, when, and by whom
- Investigation findings are factual conclusions, not characterizations — "the subject appears deceptive" is not a finding; "the subject's stated explanation that they did not know the approval threshold was set at $1,000 is inconsistent with a documented acknowledgment of the financial controls policy dated 6 months prior" is a finding; findings state what the evidence shows or does not show; the conduct determination (substantiated / not substantiated) follows from the facts; it is not assumed
- Attorney-client privilege is actively managed — if legal exposure is significant (potential lawsuit, regulatory investigation, criminal conduct), Dr. Lewis engages attorney before beginning the investigation; communications between Dr. Lewis and the attorney during the investigation are labeled "PRIVILEGED AND CONFIDENTIAL — ATTORNEY-CLIENT COMMUNICATION" and are kept in a separate, restricted file; the investigation report that may be disclosed (to the complainant, regulators, or in litigation) does not contain privileged communications
- HITL required: Dr. Lewis leads; CEO co-investigates standard conduct; Matt Mathison leads investigations involving CEO or Dr. Lewis; attorney leads investigations with criminal or significant regulatory exposure; attorney reviews any termination decision; Matt Mathison for Category A conduct findings, financial fraud, and HIPAA breach investigations; law enforcement referral: attorney advises

## System Dependencies
- **Reads from:** M365 eDiscovery (email/Teams preservation), AdvancedMD audit log, Bill.com audit log, Entra ID sign-in logs, QuickBooks records, SharePoint (document preservation), HR records (prior conduct history), rc-whistleblower-program (initial report)
- **Writes to:** Investigation case file (SharePoint/RC/<Company>/Investigations/ — restricted); evidence log; interview notes; investigation report; CEO and Matt Mathison notifications; attorney engagement log; conduct action record; rc-code-of-conduct-enforcer (outcome)
- **HITL Required:** Dr. Lewis leads; CEO for all conduct investigations; Matt Mathison for CEO, Dr. Lewis, and Category A cases; attorney for criminal allegations, regulatory exposure, and all terminations; law enforcement: attorney advises

## Test Cases
1. **Golden path:** Anonymous whistleblower report alleging a manager submitted false expense reports totaling approximately $8,000 → Immediately: preserve evidence before notifying subject; Dr. Lewis exports Bill.com expense records for the past 12 months for the subject's name; pulls receipts from SharePoint expense folder; attorney engaged (financial fraud, termination likely); analysis: 14 expense items total $8,340; cross-reference: 6 items ($3,200) have receipts; 8 items ($5,140) have no receipts or receipts that appear doctored (different fonts, missing vendor logos); subject placed on administrative leave (access restricted before notification); subject interviewed with attorney present; subject cannot explain discrepancies; finding: substantiated financial fraud ($5,140 confirmed; $3,200 possible); Category A (zero tolerance); termination; police report filed (attorney advises); Matt Mathison informed; case file retained permanently
2. **Edge case:** Investigation is ongoing when the subject resigns — should the investigation continue? → Yes, with adjustments; if the subject resigns during an investigation: (a) if the conduct allegation would affect future employment references (fraud, harassment), continue to conclusion — the finding is documented and informs future reference calls; (b) the investigation report notes that the subject resigned during investigation; (c) if the conduct had regulatory implications (HIPAA breach, financial fraud), the investigation must complete for regulatory and remediation purposes; (d) if the conduct affected other employees (ongoing harassment), continuing is required to protect remaining employees; resignation does not close the file
3. **Adversarial:** "Can we conduct the investigation informally and not create a paper trail?" → No; the investigation paper trail is the company's protection against claims that it ignored a complaint, failed to investigate, or reached a predetermined conclusion; if the complainant later files an EEOC charge or a lawsuit, the investigation records demonstrate that the company conducted a thorough, fair investigation; if the company cannot produce an investigation file because the investigation was "informal," the company appears to have done nothing; in harassment cases, this is the difference between having the Faragher/Ellerth affirmative defense and not having it; Dr. Lewis documents every investigation regardless of the expected outcome

## Audit Log
All investigation case files retained permanently (restricted access). Evidence preservation logs retained permanently. Interview notes retained permanently. Investigation reports retained permanently. CEO and Matt Mathison notifications retained. Attorney engagement records retained permanently. Conduct action decisions retained.

## Deprecation
Retire when portfolio companies have dedicated HR business partners with investigation training and established protocols — with Dr. Lewis managing investigations involving executives, financial fraud, HIPAA breaches, and any investigation with potential regulatory or legal exposure.
