---
name: hr-investigation-manager
description: "Conduct workplace investigations for MBL Partners portfolio companies. Use when the user says 'workplace investigation', 'HR investigation', 'conduct investigation', 'investigate complaint', 'investigate harassment', 'investigate discrimination', 'investigate misconduct', 'investigate policy violation', 'investigate theft', 'investigate fraud', 'investigate integrity concern', 'investigate THRIVE violation', 'investigate a manager', 'interview witnesses', 'gather evidence', 'investigation findings', 'investigation report', 'investigation outcome', 'disciplinary action', 'corrective action', 'substantiated complaint', 'unsubstantiated complaint', 'inconclusive investigation', 'investigation timeline', 'investigation standard', or 'fair investigation'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--case-id <ER-[Entity]-[YYYY]-[NNN]>] [--entity <mbl|allevio|hive|column6>] [--type <harassment|discrimination|integrity|policy|financial>] [--action <plan|interview|document|conclude>]"
---

# HR Investigation Manager

Conduct fair, thorough, and documented workplace investigations — planning the investigation, interviewing witnesses, gathering evidence, reaching findings, and delivering outcomes with appropriate corrective action. A good investigation protects the complainant, ensures the respondent receives due process, and produces findings that can withstand legal scrutiny. A bad investigation (superficial, biased, undocumented) exposes the entity to far greater liability than the original complaint.

## When to Use
- A Moderate, Serious, or Legal-tier complaint has been triaged (hr-employee-relations)
- A THRIVE Integrity concern requires investigation
- Financial misconduct or policy violation requires documented findings
- A complaint involves conflicting accounts that must be resolved

## Investigation Framework

```
INVESTIGATION PRINCIPLES:

  NEUTRALITY: Dr. Lewis is the investigator — not the complainant's advocate or the respondent's ally
    Investigation follows the evidence; conclusions are drawn from facts, not assumptions
    Investigator must have no conflict of interest with either party
    If complaint involves Dr. Lewis: independent HR consultant is appointed by Matt Mathison
    
  CONFIDENTIALITY: on need-to-know basis
    Only parties who must know to provide information are informed
    No investigation details shared with non-participants
    "I'm aware of an HR matter being reviewed" is acceptable; specifics are not
    
  DUE PROCESS: respondent must have opportunity to respond to allegations
    Cannot conclude findings against respondent without giving them a chance to respond
    Allegations shared at the appropriate investigation stage — not prematurely
    
  DOCUMENTATION: every step documented
    Interview notes taken during or immediately after; reviewed and signed by interviewer
    Evidence collected with chain of custody noted
    Timeline of investigation actions maintained

INVESTIGATION PHASES:

  PHASE 1 — PLAN (Day 1):
    Identify scope: what specific allegations will be investigated?
    Identify witnesses: complainant; respondent; direct witnesses; circumstantial witnesses
    Identify evidence: emails; Slack; calendar records; system access logs; documents
    Set timeline: target completion date (standard: 15 business days; serious: 10 business days)
    Notify entity CEO: Dr. Lewis → CEO within 1 business day of investigation launch
    
  PHASE 2 — GATHER EVIDENCE (Days 1-5):
    Preserve evidence before interviewing witnesses (interviews alert parties)
    Request relevant email/Slack/system logs from IT (read-only; no deletion)
    Document all evidence collected with date/source/custodian
    
  PHASE 3 — INTERVIEWS (Days 3-10):
    Order: complainant first → witnesses → respondent last
    Why respondent last: respondent must have opportunity to respond to specific allegations;
      allegations are specific only after complainant interview
    Interview structure:
      Intro: purpose of investigation; confidentiality; no retaliation; voluntary participation
        (employees must participate as a condition of employment; not "voluntary" in that sense)
      Open-ended questions first: "Tell me what happened on [date]."
      Specific follow-up: "You mentioned X — what specifically was said?"
      Do not share other witnesses' accounts
      Close: "Is there anything else you want to share? Are there other witnesses I should speak with?"
    Notes: accurate; factual; not editorializing
    
  PHASE 4 — FINDINGS (Days 10-14):
    Standard of proof: preponderance of evidence (more likely than not — not "beyond reasonable doubt")
    Findings categories:
      SUBSTANTIATED: evidence supports the allegation more likely than not
      UNSUBSTANTIATED: evidence does not support the allegation
      INCONCLUSIVE: evidence is insufficient to determine either way (different from "did not happen")
    Note: "inconclusive" does not mean the complaint was false; it means the evidence is insufficient
    
  PHASE 5 — CORRECTIVE ACTION (Day 14-15):
    Substantiated findings: corrective action proportional to severity
      Verbal warning → Written warning → PIP → Suspension → Termination
      Harassment/discrimination/THRIVE Integrity: typically Warning or Termination (no PIP for severe cases)
    Unsubstantiated/Inconclusive: consider whether any systemic issues to address
      "No findings" does not mean "nothing to improve"
    Non-retaliation plan: ensure complainant is protected going forward
    
  INVESTIGATION REPORT:
    Fact summary (what evidence was found)
    Witness account summaries (no names if possible; role-based references)
    Credibility assessment (why certain accounts were weighted more)
    Findings (substantiated/unsubstantiated/inconclusive per allegation)
    Corrective action recommended
    NOT shared with either party in full; summary of outcome only communicated
    
ALLEVIO HIPAA:
  Investigation of clinical staff: no PHI in investigation record
  If investigation requires review of patient care incidents: clinical documentation 
    reviewed by Allevio CEO + Dr. Lewis only; aggregate findings in investigation report
```

## Output Format

```markdown
# Investigation Report — [Case ID: ER-[Entity]-[YYYY]-[NNN]]
**CONFIDENTIAL — Dr. Lewis + Entity CEO Only**
**Investigator:** Dr. Lewis | **Completed:** [Date]

---

## Scope of Investigation
[What specific allegations were investigated — factual, non-identifying where possible]

---

## Evidence Reviewed
| Evidence | Source | Date obtained |
|---------|--------|--------------|
| [Email thread] | IT / SharePoint | [Date] |
| [System access log] | IT | [Date] |

---

## Witness Interviews
| Role | Interview date | Key points |
|------|--------------|-----------|
| Complainant | [Date] | [Factual summary] |
| Witness A | [Date] | |
| Respondent | [Date] | |

---

## Findings

| Allegation | Finding | Basis |
|-----------|---------|------|
| [Specific allegation 1] | Substantiated / Unsubstantiated / Inconclusive | [2-3 sentence rationale] |

---

## Corrective Action Recommended
[Specific action; owner; timeline]

---

## Non-Retaliation Plan
[How complainant will be protected going forward]

**Authorized:** Entity CEO — [Name] | **Reviewed by:** Dr. Lewis
```

## Output Contract
- Respondent receives allegations before they are interviewed — not before evidence is gathered, but before the investigation concludes; a respondent who was never told what they are alleged to have done cannot mount a meaningful response; Dr. Lewis ensures the respondent is given a clear, specific account of the allegations in their interview and has a full opportunity to respond; conclusions cannot be drawn without this step; failure to provide this due process is a procedural defect that can void corrective action
- Findings follow the evidence, not the complainant's preference — an investigation that concludes with "substantiated" because "the complainant was credible" without corroborating evidence is not an investigation; the standard is preponderance of evidence; "inconclusive" is a valid outcome when evidence is genuinely insufficient; Dr. Lewis documents explicitly why each finding was reached, including which evidence was more persuasive and why
- The full investigation report is not shared with the parties — the complainant receives a summary of the outcome ("We have completed our investigation and have taken appropriate corrective action"); the respondent receives a summary of findings and the specific corrective action against them; the full report is restricted to Dr. Lewis and the entity CEO; sharing the full report creates legal exposure and can re-traumatize complainants
- HITL required: investigation launch → entity CEO notified within 1 business day; serious/legal complaints → legal counsel involved; evidence preservation → IT provides read-only access (no deletion); investigation involving entity CEO → Matt Mathison + independent HR consultant; findings → entity CEO + Dr. Lewis decide corrective action; corrective action against Director+ → Dr. Lewis + entity CEO + Matt Mathison; termination → hr-termination-manager process

## System Dependencies
- **Reads from:** hr-employee-relations (complaint intake; triage classification; case ID); hr-offboarding-manager / hr-termination-manager (if investigation outcome includes termination); IT systems (email logs; access logs; Slack records); HR file (prior complaints; coaching records)
- **Writes to:** Investigation report (SharePoint → HR → Investigations → [Entity] → [Case ID] — Dr. Lewis + CEO access only); corrective action record; non-retaliation monitoring plan; legal hold (if litigation risk); Matt Mathison notification (serious/legal or Director+ corrective action)
- **HITL Required:** Launch → entity CEO notified; serious/legal → legal counsel; evidence preservation → IT read-only; CEO complaint → Matt Mathison + independent consultant; findings → CEO + Dr. Lewis; Director+ corrective action → Matt Mathison; termination → hr-termination-manager

## Test Cases
1. **Golden path:** Column6 employee reports sexual harassment by a peer. Triage: Serious. Evidence preserved: email thread (2 messages; retrieved day 1). Interviews: complainant (Day 2), witness (Day 3), respondent (Day 5). Findings: substantiated (corroborating email + 2nd witness account aligned with complainant's account). Corrective action: final written warning + HR training; second incident = termination. Non-retaliation plan: Dr. Lewis monthly check-in with complainant for 3 months.
2. **Edge case:** Two employees give completely contradictory accounts of the same incident; no corroborating evidence → Dr. Lewis: "The investigation is inconclusive — I cannot determine which account is more credible without corroborating evidence, and no corroborating evidence exists. I'll document 'inconclusive' for this allegation. This is not a finding that the complainant was dishonest. I'll recommend systemic improvements: a clear communication protocol for the team to reduce the conditions that led to this ambiguity."
3. **Adversarial:** Entity CEO pressures Dr. Lewis to find 'unsubstantiated' because 'we can't lose this manager' → Dr. Lewis: "I understand the business concern. But if I adjust my findings based on the business value of the respondent, we have created a document that could destroy this company in litigation. If the findings are substantiated and I call them unsubstantiated, I become personally liable, you become personally liable, and the entity faces significantly higher exposure. My findings will follow the evidence. If the outcome is substantiated and corrective action is needed, we navigate the business impact from there."

## Audit Log
All investigation reports retained permanently (potential litigation). Evidence inventory retained permanently. Interview notes retained permanently (investigators' notes are privileged in many jurisdictions; legal counsel reviews privilege questions). Corrective action records retained permanently. Non-retaliation monitoring records retained. Matt Mathison notifications retained.

## Deprecation
Investigation phases and standard reviewed every 2 years. Allevio HIPAA overlay reviewed when regulations change. Standard of proof (preponderance) reviewed if MBL entities become unionized or subject to different regulatory frameworks.
