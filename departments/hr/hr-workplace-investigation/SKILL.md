---
name: hr-workplace-investigation
description: "Conduct a formal workplace investigation. Use when the user says 'workplace investigation', 'investigate a complaint', 'formal investigation', 'HR investigation', 'investigate harassment', 'investigate misconduct', 'investigate discrimination', 'investigation methodology', 'how do we investigate this', 'conduct an investigation', 'investigation report', 'witness interviews for HR', or 'document an investigation'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--case-id <ER case ID>] [--type <harassment|discrimination|misconduct|conduct|policy-violation>]"
---

# HR Workplace Investigation

Conduct formal workplace investigations at MBL portfolio companies — the structured, documented process for gathering facts about a workplace complaint and reaching a finding. Investigation quality is the single most important factor in both reaching the right outcome and protecting the company legally. A well-documented investigation that reaches a reasonable finding is defensible even if challenged. A sloppy, undocumented, or biased investigation creates significant legal exposure regardless of whether the finding was correct. This skill covers investigation methodology — how to run the investigation. Case intake and classification are handled in hr-employee-relations.

## When to Use
- A formal workplace complaint has been received and classified as 🟡 Urgent or 🔴 Immediate in hr-employee-relations
- An ER case requires fact-gathering beyond the initial intake conversation
- A manager reports an incident that may involve policy violations
- An investigation is needed to determine whether discipline or termination is warranted
- Dr. Lewis needs to document the investigation process for a case that may involve legal risk

## Investigation Methodology

```
Four principles that govern every investigation:

1. FAIRNESS — Both the reporting employee and the person(s) named receive a fair 
   opportunity to share their perspective. No conclusion is reached before the 
   investigation is complete. Investigators do not pre-determine outcomes.

2. THOROUGHNESS — All reasonably available evidence is collected. All relevant 
   witnesses are interviewed. The investigation goes where the facts lead it.

3. IMPARTIALITY — Dr. Lewis acts as a neutral fact-finder, not an advocate for 
   either party. Personal relationships with the parties do not influence the 
   investigation. If Dr. Lewis has a conflict (e.g., the complaint involves 
   Dr. Lewis), Matt Mathison or outside HR counsel conducts the investigation.

4. CONFIDENTIALITY — Information is shared only on a need-to-know basis. The 
   reporting employee's identity is protected where possible. Investigation 
   materials are not shared outside of Dr. Lewis and Matt Mathison without 
   attorney guidance.

Investigation phases:
  Phase 1 — Intake and Preservation (Day 1)
  Phase 2 — Evidence Gathering (Days 1-5)
  Phase 3 — Witness Interviews (Days 2-7)
  Phase 4 — Subject Interview (Days 5-10)
  Phase 5 — Analysis and Finding (Days 10-14)
  Phase 6 — Outcome and Communication (Days 14-21)

Timeline target: Most investigations concluded within 21 days of intake.
Complex investigations (multiple witnesses, extensive records): up to 45 days.
```

## Output Format

```markdown
# Workplace Investigation Report
**Case ID:** [Company]-[YYYY]-[##] | **Classification:** 🔴 Immediate / 🟡 Urgent
**Type:** [Harassment / Discrimination / Misconduct / Conduct / Policy Violation]
**Investigator:** Dr. John Lewis | **Date opened:** [Date] | **Date closed:** [Date]
**Employment attorney:** [Name / Firm — retained / not required]

---

## Phase 1: Intake and Preservation

**Complaint summary:** [Factual, neutral description — what was alleged, by whom, against whom, and when]

**Evidence preservation actions taken:**
- [ ] Email communications relevant to the complaint preserved (do not delete)
- [ ] Text messages / chat logs preserved
- [ ] Access logs or system records preserved (if applicable)
- [ ] Physical evidence secured (if applicable)
- [ ] Reporting employee reminded not to destroy or forward any relevant communications

**Reporting employee interim protection:**
- [ ] Separated from named person during investigation where operationally feasible
- [ ] Reporting employee notified: retaliation is prohibited; report any adverse contact immediately

**Named person notified:** [Date] — told: a concern has been raised; investigation underway; must not discuss with colleagues; retaliation is prohibited

---

## Phase 2: Evidence Review

| Evidence item | Source | Type | Date | Relevance to allegation |
|--------------|--------|------|------|------------------------|
| [E-mail: "[Subject line]"] | Outlook / Teams | Written | [Date] | [What it shows or doesn't show] |
| [Time/attendance record] | HR system | System | [Date range] | |
| [Prior performance record] | Personnel file | HR record | [Date] | |
| [Chat log excerpt] | Teams / Slack | Written | [Date] | |

**Evidence summary:** [Factual summary of what the evidence shows, collectively]

**Evidence gaps:** [What evidence would be relevant but is unavailable, and why]

---

## Phase 3: Witness Interviews

**Interview protocol:**
- Conducted individually, private, not in earshot of other witnesses
- Witnesses told: "This is a confidential investigation. Please do not discuss this with colleagues."
- Witnesses told: "This is not a disciplinary meeting for you. I'm gathering facts."
- Notes taken contemporaneously; shared with witness for factual accuracy check if needed
- Witnesses notified: retaliation against the reporting employee is prohibited

### Witness 1: [Name / Role]
**Date:** [Date] | **Duration:** [X min] | **Method:** [In person / Video]

**Questions asked and summary of responses:**
1. "Tell me what you know about [incident/situation]." → [Summary]
2. "When did you first become aware of this?" → [Summary]
3. "Did you observe anything directly?" → [Summary]
4. "Who else might have relevant information?" → [Summary]
5. "Is there anything else I should know?" → [Summary]

**Credibility assessment:** [Responsive / Evasive / Inconsistent / Consistent with documentary evidence]

### Witness 2: [Name / Role]
[Same format]

---

## Phase 4: Subject Interview (Named Person)

**Date:** [Date] | **Duration:** [X min] | **Method:** [In person / Video]
**Subject advised:** Has right to respond to allegations; this is an investigation, not a disciplinary meeting; the company will take their account into consideration.

**Allegations presented to subject:** [Factual description of the allegation — neutral, not inflammatory]

**Subject's account:**
[Detailed summary of what the named person said — their explanation, context, denial, or acknowledgment]

**Subject's response to key evidence:** [How they explained or responded to specific evidence items]

**Credibility assessment:** [Responsive / Evasive / Inconsistent / Consistent with documentary evidence]

**Subject's proposed resolution (if any):** [What they said should happen]

---

## Phase 5: Analysis

### Credibility Assessment

| Factor | Reporting employee | Named person | Witnesses |
|--------|-------------------|-------------|---------|
| Internal consistency | [Assessment] | | |
| Consistency with documentary evidence | | | |
| Corroboration from other witnesses | | | |
| Motivation to be untruthful | | | |
| Demeanor | | | |

**Credibility determination:** [Who is most credible and why, or why credibility is inconclusive]

### Preponderance of Evidence Analysis

Standard: More likely than not (>50% probability) that the alleged conduct occurred.

| Allegation | Finding | Basis |
|-----------|---------|-------|
| [Allegation 1 — specific, factual] | Substantiated / Unsubstantiated / Inconclusive | [Specific evidence and reasoning] |
| [Allegation 2] | | |

---

## Phase 6: Findings and Recommendations

**Overall finding:** Substantiated / Unsubstantiated / Inconclusive / Partially Substantiated

**Finding narrative:**
[2-4 paragraphs: what happened (based on the preponderance of evidence), what policy or standard was violated (if applicable), what was not established, and what remained inconclusive]

**Recommended outcomes:**

| If substantiated: | Recommendation |
|-------------------|---------------|
| Policy violation level | [Minor / Moderate / Serious / Severe] |
| Recommended action | [No action / Coaching / Written warning / Final warning / Termination] |
| Additional remedies | [Training / Transfer / Policy update / Other] |

**Matt Mathison decision required:** [Yes — any termination or 🔴 case outcome / No]
**Employment attorney review before action:** [Yes — 🔴 cases and terminations / No]

---

## Communication Plan

**To reporting employee:**
"We have completed our investigation. Your concern was taken seriously and thoroughly investigated. [Without disclosing outcome to named person:] Steps have been taken to address this matter. If you experience any further issues or believe you are experiencing retaliation, please contact me immediately."

**To named person (if no termination):**
[Calibrated to outcome: coaching language / warning language / specific behavioral expectations going forward]

**To named person (if termination):**
Separate termination conversation with attorney guidance; refer to hr-offboarding-manager.

---

## Post-Investigation Monitoring

**30-day check-in with reporting employee:** [Date] — confirm no retaliation
**60-day check-in (for 🔴 cases):** [Date]
**Policy or process changes identified by investigation:** [If any — what will change to prevent recurrence]
```

## Output Contract
- Investigation is documented in writing throughout — contemporaneous notes are the foundation of a defensible investigation; notes written after the fact are weaker than notes written at the time; Dr. Lewis documents each interview the same day it occurs; evidence is described specifically (not "email from Bob" but "email from [Name] to [Name] dated [Date] with subject '[Subject]' stating '[Quote]'")
- Subject interview happens last — interviewing the named person before all witnesses and evidence have been collected allows them to tailor their account to information they know exists; the subject interview is the most important interview and should only happen after a complete picture is available; exceptions only for urgent operational situations (physical safety, immediate harm)
- Credibility, not sympathy — investigations are fact-finding processes, not advocacy for either party; credibility is assessed against specific factors (internal consistency, corroboration, documentary evidence); the investigator's personal sympathy for or discomfort with either party does not enter the analysis
- Attorney required for 🔴 cases before any action — investigation findings for sexual harassment, discrimination, and retaliation cases are reviewed with employment counsel before any action is taken on the named person; acting on findings in these categories without attorney review exposes the company to EEOC charges and litigation even when the finding is correct
- HITL required: Dr. Lewis conducts all investigations; Matt Mathison reviews all findings before outcome decisions; termination decisions require Matt Mathison approval; employment attorney reviews 🔴 case findings; investigation reports retained permanently in restricted-access case files

## System Dependencies
- **Reads from:** ER case file (hr-employee-relations), email/Teams records, HR system records, personnel files, prior ER history
- **Writes to:** Investigation report (SharePoint/HR/<Company>/Employee Relations/ — restricted); outcome decision document; post-investigation monitoring notes; case closure record
- **HITL Required:** Dr. Lewis investigates; Matt Mathison reviews findings and approves outcome; employment attorney reviews 🔴 cases; terminations require Matt Mathison; investigation files restricted to Dr. Lewis and Matt Mathison

## Test Cases
1. **Golden path:** Allevio — supervisor accused of creating a hostile environment through persistent criticism in front of other team members → Phase 1: complaint received; reporting employee separated from supervisor for remainder of investigation (different shift schedule temporarily); supervisor notified via Dr. Lewis: "A concern has been raised. I need to speak with you. In the meantime, please have no direct contact with [reporting employee] outside of scheduled team meetings." Phase 2: 4 emails over 90 days from supervisor to team (including reporting employee) preserved; review shows escalating tone in two emails; no emails with slurs or explicit threats. Phase 3: 3 witnesses interviewed; 2 corroborate "he's tough on [Name] in front of everyone" and "I've felt uncomfortable watching it"; 1 witness says they haven't noticed anything unusual. Phase 4: Supervisor interviewed: "I hold everyone to high standards; I give feedback publicly because the whole team benefits; I'm not targeting anyone." Credibility: supervisor consistent; reporting employee consistent; witness corroboration supports a pattern of public criticism. Finding: Substantiated — public criticism directed primarily at one employee over an extended period constitutes a hostile work environment regardless of intent. Outcome: Formal written warning; mandatory management training within 30 days; move to private feedback only; Matt Mathison approves; attorney consulted (attorney concurs with outcome). Post-investigation: 30-day check-in with reporting employee — no retaliation reported; supervisor behavior changed.
2. **Edge case:** Investigation reveals conflicting accounts with no corroborating evidence and no witnesses → Inconclusive finding is a legitimate outcome; Dr. Lewis documents it accurately: "Based on the accounts of the reporting employee and the named person, and the absence of corroborating documentary or witness evidence, the investigation was unable to establish by a preponderance of the evidence that the alleged conduct occurred. This finding does not mean the reporting employee's account was false — it means the available evidence did not allow a determination either way." Outcome: No disciplinary action against named person (inconclusive ≠ substantiated); document that the complaint was received and investigated in good faith; monitor going forward
3. **Adversarial:** A named person demands to know exactly who complained and what they said before the interview → their request is not granted; respond: "I'm not able to share the details of the complaint before your interview — that's our standard investigation process. What I can tell you is that a concern has been raised, and I'm here to hear your account. You'll have a full opportunity to share your perspective." If they refuse to participate: document the refusal; proceed with the investigation on available evidence; inability to interview the named person due to their refusal does not stop the investigation and may factor into the credibility assessment

## Audit Log
All investigation reports retained permanently by case ID — confidential. Investigation phases documented with dates. Evidence inventory retained. Interview notes retained. Findings and outcome decisions retained. Attorney communications retained. Post-investigation monitoring notes retained. Case files accessible only to Dr. Lewis and Matt Mathison.

## Deprecation
Retire when portfolio companies have dedicated HR managers trained in investigation methodology with attorney relationships, established investigation protocols, and cases of sufficient complexity that they're retained as outside HR investigations counsel.
