---
name: hr-interview-designer
description: "Design structured interviews and panel processes for MBL Partners portfolio company roles. Use when the user says 'interview questions', 'interview design', 'structured interview', 'panel interview', 'interview panel', 'who should interview', 'interview process', 'interview format', 'behavioral questions', 'STAR questions', 'competency questions', 'situational questions', 'technical interview', 'case interview', 'role play interview', 'interview guide', 'interview scorecard', 'what questions to ask', 'how to interview', 'calibration meeting', 'debrief', 'interview debrief', 'panel debrief', 'interview calibration', 'interviewer prep', 'how to run the interview', 'second round interview', 'final interview', 'interview loop', or 'structured hiring process'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--role <role-title>] [--level <ic|manager|director|vp>] [--format <behavioral|technical|case|role-play>]"
---

# HR Interview Designer

Design a structured interview process — panel composition, behavioral questions mapped to competencies, interview format (behavioral/technical/case/role-play), and calibration protocol — so that every interviewer evaluates the same criteria and the hiring decision is based on evidence, not impression. Unstructured interviews predict job performance at r=0.38; structured behavioral interviews predict at r=0.51; structured interviews with work samples and role plays reach r=0.63; Dr. Lewis designs or approves the interview structure for every role above entry-level.

## When to Use
- A shortlist has been generated (hr-candidate-screener complete)
- Interview panel needs to be assigned and prepped
- Interview questions need to be created from the role profile
- Post-interview debrief needs structure

## Interview Design Framework

```
STEP 1 — PANEL COMPOSITION:
  3-4 interviewers maximum per candidate (avoid panel fatigue)
  Role: each interviewer owns a distinct competency set (no duplication)
  Mandatory: hiring manager always included
  Dr. Lewis: interviews all candidates for Director+ roles
  Entity CEO: interviews all final-round candidates
  Matt Mathison: interviews VP+ final candidates
  
  Panel design by level:
    IC / Individual Contributor:
      Round 1: hiring manager (culture + must-haves)
      Round 2: peer (day-to-day collaboration signal) + Dr. Lewis (THRIVE + comp)
      
    Manager:
      Round 1: hiring manager (role outcomes + leadership approach)
      Round 2: direct report (skip-level perspective) + peer manager + Dr. Lewis
      
    Director:
      Round 1: entity CEO + Dr. Lewis (strategic fit + THRIVE)
      Round 2: cross-functional stakeholder + direct report
      
    VP+:
      Round 1: Dr. Lewis + entity CEO
      Round 2: Matt Mathison + peer VP
      Round 3 (if needed): reference calls (hr-hiring-scorecard)

STEP 2 — QUESTION BANK (1-2 questions per competency; STAR format):
  
  Template: "Tell me about a specific time when you [competency]. What was the situation?
  What did you do? What was the result?"
  
  Universal THRIVE questions (every role):
    Truth: "Tell me about a time you delivered difficult news to a leader or team.
    What happened? What was the outcome?"
    Hustle: "Describe the most ambitious project you've led or been part of.
    What was the pace? How did you manage the load?"
    Integrity: "Describe a situation where you were asked to do something that felt
    ethically uncomfortable. What did you do?"
    Value: "Tell me about a metric or outcome you own. What did you do specifically
    to move it?"
    
  Entity-specific behavioral questions:
    Allevio (healthcare):
      "Describe a time you had to communicate a difficult clinical outcome to an employer client
      while protecting member privacy. How did you navigate it?"
      "Tell me about a care coordination case where the member was non-compliant. What was
      your approach?"
    HIVE (O&G):
      "Tell me about a time a royalty or lease dispute threatened a landowner relationship.
      How did you handle it?"
      "How have you managed work when commodity prices dropped significantly and
      resources were constrained?"
    Column6 (CTV/programmatic):
      "Tell me about a campaign that underdelivered. How did you communicate with the
      agency client and what did you do?"
      "Walk me through how you explain IVT or viewability data to a client who
      doesn't understand programmatic metrics."

STEP 3 — FORMAT BY ROLE TYPE:
  Behavioral (IC, Manager, Director): STAR questions; 45-60 min per round
  Technical (Engineering, Data, IT): technical problem + code/design exercise; 60-90 min
  Case Interview (Strategy, Finance): provide a business scenario 24 hours in advance;
    candidate presents analysis; 60 min
  Role Play (Sales, CS, CS Manager): live simulation of a key scenario (discovery call;
    at-risk customer; difficult conversation); 20-30 min add-on
  
STEP 4 — CALIBRATION PROTOCOL:
  Each interviewer submits scorecard independently before debrief (no group anchoring)
  Debrief format: share scores silently first; discuss divergence; hiring manager speaks last
  Decision framework:
    Strong hire: 3+ interviewers at "advance"; no Integrity concerns
    Conditional: mixed scores → additional round or specific follow-up question
    No hire: any confirmed Integrity concern; 2+ interviewers at "decline"; missing critical competency
```

## Output Format

```markdown
# Interview Guide — [Role Title] | [Entity] — [Date]
**Prepared by:** Dr. Lewis | **Panel:** [Interviewer 1] / [Interviewer 2] / [Interviewer 3]

---

## Panel Assignments

| Interviewer | Competencies to evaluate | Format | Duration |
|------------|------------------------|--------|---------|
| [Name] | [Competency 1, 2] | Behavioral | 45 min |
| [Name] | [Competency 3, THRIVE Integrity] | Behavioral | 45 min |
| Dr. Lewis | THRIVE + comp discussion | Behavioral | 30 min |

---

## Question Bank

### [Competency 1]
1. "Tell me about a specific time when [competency]. What was the situation, what did you do, and what was the result?"
2. Follow-up: "What would you do differently?"

### THRIVE — Integrity (all panels)
1. "Describe a situation where you were asked to do something that felt ethically uncomfortable."
   - **Red flag:** candidate says they complied without question or minimizes the concern

---

## Scoring Guide

| Score | Definition |
|-------|-----------|
| 3 — Strong | Specific, concrete example; measurable outcome; above role expectations |
| 2 — Adequate | Relevant example with some specifics; meets role expectations |
| 1 — Weak | Vague, hypothetical, or generic; below role expectations |

---

## Debrief Protocol
- Each interviewer submits scorecard independently before debrief call
- Debrief is within 24 hours of last interview
- Hiring manager presents last to avoid anchoring
- Any Integrity concern → Dr. Lewis makes final call before advancing or declining
```

## Output Contract
- Each interviewer owns distinct competencies — assigning the same questions to multiple interviewers wastes interview time, creates score inflation from repeated stories, and produces correlated (not independent) evidence; Dr. Lewis designs panel assignments so each competency is evaluated by exactly one interviewer; after the panel, the debrief aggregates independent scores across all competencies from the role profile
- Scorecards are submitted independently before the debrief — social anchoring in panel debriefs is the most common source of consensus bias (the first strong opinion shapes the group); Dr. Lewis instructs every interviewer to complete and submit their scorecard before the debrief starts; in the debrief, scores are shared silently first (everyone reads each other's scores) before any verbal discussion; the hiring manager speaks last
- Integrity is the absolute gate — any confirmed Integrity concern from any interviewer, regardless of how strong the candidate scores on other dimensions, stops the process; Dr. Lewis reviews all Integrity-flagged candidates before advancing or declining; this rule has no exceptions and applies regardless of how urgently the role needs to be filled; "we can manage it" is not an acceptable response to an Integrity red flag
- HITL required: interview guide → Dr. Lewis approves; Director+ panel → Dr. Lewis included in panel; VP+ panel → Matt Mathison included in final round; any Integrity flag → Dr. Lewis makes final disposition; final hiring decision → Dr. Lewis confirms offer auth level (hr-offer-builder)

## System Dependencies
- **Reads from:** hr-job-profiler (competencies; disqualifying factors; role level); hr-candidate-screener (phone screen notes; THRIVE signals from screen); hr-hiring-scorecard (final scoring template)
- **Writes to:** Interview guide (SharePoint → HR → Interviews → [Entity] → [Role] → [Candidate]); individual interviewer packets; debrief meeting agenda; panel scorecard aggregation; hiring decision record
- **HITL Required:** Interview guide → Dr. Lewis approves; Director+ → Dr. Lewis in panel; VP+ → Matt Mathison in final round; Integrity flag → Dr. Lewis final call; offer authorization → Dr. Lewis (hr-offer-builder)

## Test Cases
1. **Golden path:** Column6 Senior Account Manager. Panel: Column6 CEO (role outcomes + strategic fit; 45 min); Account Manager peer (day-to-day collaboration; 45 min); Dr. Lewis (THRIVE + comp; 30 min). Questions: CEO focuses on agency relationship management + pipeline building; peer focuses on campaign performance response + client communication; Dr. Lewis uses universal THRIVE questions. Role play added: simulate call with an agency client whose campaign is underdelivering VCR. All scorecards submitted before debrief. Debrief: 3 scores shared silently; strong hire consensus; offer authorized by Dr. Lewis.
2. **Edge case:** One interviewer gives a very low score due to "didn't seem like a culture fit" without specific evidence → debrief protocol: Dr. Lewis asks for specific behavioral evidence from the interview; if the interviewer cannot cite a specific example, the score is noted as unsupported and carries less weight than scores backed by STAR evidence; this is documented in the hiring record
3. **Adversarial:** Hiring manager wants to skip the structured panel and "just have coffee with the top 2 candidates" → Dr. Lewis: "I understand the appeal of a casual conversation, but I want to protect you legally and practically. An unstructured conversation with no documented criteria creates risk if a declined candidate raises a discrimination claim. Let's make it feel casual but give you 3 specific STAR questions to cover during the coffee meeting — I'll help you prep them. You can run it conversationally and I'll turn the notes into a scorecard after."

## Audit Log
All interview guides and scorecards retained for 3 years (EEOC requirement). Panel assignment decisions retained. Debrief outcome (hire/no hire) retained with rationale. Integrity flag reviews by Dr. Lewis retained. VP+ interview records retained with Matt Mathison involvement documented.

## Deprecation
Interview guides are archived once the role is filled. Question banks are reviewed annually for relevance and updated when role profiles change. THRIVE questions are updated only when THRIVE framework is revised by Matt Mathison.
