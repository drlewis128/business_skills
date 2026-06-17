---
name: strategy-hiring-scorecard
description: "Build a structured hiring scorecard for a role — competencies, evaluation criteria, and interview guide. Use when the user says 'hiring scorecard', 'interview scorecard', 'build a scorecard for this hire', 'how to evaluate candidates', 'hiring criteria', 'candidate evaluation', 'structured interview', 'interview guide', 'hiring framework', 'how to hire for this role', 'what to look for in candidates', 'hiring rubric', 'evaluate this candidate', 'interview questions for', or 'structured hiring process'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <job title>] [--level <individual|manager|director|executive>]"
---

# Hiring Scorecard

Build structured hiring scorecards for MBL portfolio company key hires — defining the competencies that matter, the evaluation criteria, and the interview structure that leads to better decisions. Most small company hiring fails because it's unstructured: interviewers rely on gut feel and cultural fit intuition, the most articulate candidate wins rather than the most capable, and there is no consistent evidence base for the decision. At PE portfolio scale, every key hire is a capital allocation decision — the wrong hire in a key role costs the company 6-12 months of underperformance and $50-150K in replacement cost. A scorecard doesn't eliminate bad hires; it reduces them systematically.

## When to Use
- A portfolio company is hiring for a role that is critical to the VCP (provider, practice manager, controller)
- A CEO asks "what should we look for" in a specific type of candidate
- Before a first round of interviews begins (not after — designing the criteria post-fact defeats the purpose)
- A hire went wrong and the post-mortem analysis asks whether the hiring process was adequate

## Hiring Scorecard Framework

```
Hiring scorecard structure:

  Step 1 — Define the role outcome:
    What does success look like in this role 6 months after the hire?
    Write one specific sentence: "In 6 months, the [NP] will have [panel at 90%; 12 visits/day; 
    patient retention >85%; no billing issues].
    Hiring criteria are derived from this outcome — not from job description generic language.
    
  Step 2 — Define 4-6 competencies:
    Competency: a skill, behavior, or characteristic that predicts success in the specific role
    Each competency gets: Name | Definition | 3-level rating (Below/Meets/Exceeds)
    
  Step 3 — Define must-have vs. nice-to-have:
    Must-have: Failure here = eliminate candidate regardless of other strengths
    Nice-to-have: Improves the candidate but not a disqualifier
    
  Step 4 — Write behavioral interview questions for each competency:
    Behavioral: "Tell me about a time when..." (past behavior predicts future performance)
    Avoid: Hypothetical questions ("What would you do if...") — answers are idealized
    
  Step 5 — Define the disqualifiers:
    What would you see in the interview that would immediately eliminate a candidate?
    Write the disqualifiers explicitly before interviews begin
    
  Rating scale (use consistently):
    1 = Below expectations / Red flag
    2 = Meets minimum expectations / Acceptable
    3 = Meets expectations / Good fit
    4 = Exceeds expectations / Strong hire
    5 = Exceptional / Must hire
    
  Scoring: Weight competencies by importance (must-haves weight 2×); total → recommendation threshold
  Threshold: ≥3.0 weighted average → recommend; <2.5 → decline; 2.5-3.0 → second interview or panel

Key hires at MBL portfolio companies:

  ALLEVIO — Healthcare provider (NP/PA/MD):
    Must-have: AZ licensed (AZ Medical Board active license); eligible for payer credentialing (OIG LEIE clear)
    Must-have: Clinical competency in primary care (≥1 year in primary care setting)
    Competencies: Clinical quality, patient relationship, panel management, team collaboration, culture fit
    Disqualifiers: Active OIG LEIE exclusion; AZ Medical Board action; history of malpractice judgments (not just claims)
    
  ALLEVIO — Practice manager / operations:
    Must-have: Healthcare operations experience (scheduling, billing cycle familiarity)
    Competencies: Process orientation, team management, conflict resolution, billing system knowledge, patient focus
    Disqualifiers: No healthcare experience at all; history of billing fraud
    
  HIVE — Field operations / production:
    Must-have: O&G field experience; UT DOGM compliance familiarity
    Competencies: Safety orientation, technical O&G knowledge, LOE management, reporting discipline
    Disqualifiers: OSHA violations; safety record issues
    
  COLUMN6 — Technical/ad ops:
    Must-have: Programmatic ad tech experience; CTV/digital advertising background
    Competencies: Technical depth, data orientation, troubleshooting, CTV-specific knowledge
    
  EXECUTIVE HIRES (CEO, CFO, COO at any entity):
    Matt Mathison interview is mandatory for executive-level hires — Dr. Lewis designs the scorecard and
    facilitates the process; Matt Mathison participates and approves the final hire
```

## Output Format

```markdown
# Hiring Scorecard — [Role] at [Company]
**Date:** [Date] | **Level:** [Individual / Manager / Executive] | **Scorecard designer:** Dr. Lewis

---

## Role Success Definition

In 6 months, a successful [Role] at [Company] will have: [Specific, measurable outcome statement]

Example: "In 6 months, the NP at Allevio will have panel at 12 visits/day (patient panel of ~1,200 active patients), no billing rejections due to credentialing issues, and patient satisfaction feedback indicating continuity of care is intact."

---

## Must-Have Requirements

These are gates. Failure here = candidate does not advance, regardless of other strengths.

| Requirement | How to verify | Verified? |
|------------|--------------|---------|
| AZ Medical Board active NP license | AZ Medical Board online lookup | ☐ |
| OIG LEIE check — not excluded | OIG.HHS.gov exclusion database | ☐ |
| ≥1 year primary care experience | Resume + reference verification | ☐ |
| [Other must-have] | | ☐ |

---

## Competency Scorecard

| # | Competency | Weight | Score (1-5) | Weighted score |
|---|-----------|--------|------------|---------------|
| 1 | [Clinical quality] | 2× | | |
| 2 | [Patient relationship / communication] | 2× | | |
| 3 | [Panel management discipline] | 1.5× | | |
| 4 | [Team collaboration] | 1× | | |
| 5 | [Culture fit — THRIVE values] | 1.5× | | |
| | **Weighted total** | | | **[X] / 40 max** |
| | **Weighted average** | | | **[X.X] / 5** |

**Hiring threshold:** ≥3.0 weighted average → recommend | 2.5-3.0 → second interview | <2.5 → decline

---

## Competency Definitions and Interview Questions

### 1. [Clinical Quality]

**Definition:** Demonstrates current, evidence-based clinical judgment in primary care; comfortable managing chronic and acute conditions in an outpatient setting.

**What "5" looks like:** Candidate spontaneously discusses quality outcomes, protocol adherence, and patient safety without being prompted; references specific clinical decisions they've managed well.

**What "1" looks like:** Vague responses about clinical experience; unable to describe specific patient management scenarios; unfamiliar with current primary care standards.

**Behavioral interview questions:**
1. "Tell me about a complex patient case in your primary care practice — how did you approach the diagnosis and management plan?"
2. "Describe a time when you disagreed with a physician colleague's treatment approach. How did you handle it?"
3. "What's your approach to managing a patient panel with multiple chronic conditions?"

**Red flags to watch:**
- Unable to describe specific clinical scenarios (may be overstating experience)
- Dismissive of EHR/documentation requirements (will create billing issues)

---

### 2. [Patient Relationship / Communication]

**Definition:** Builds trust with patients quickly; communicates in plain language; manages difficult conversations (diagnosis, compliance, referral) with empathy and clarity.

**Behavioral interview questions:**
1. "Tell me about a patient who was non-compliant with their treatment plan. How did you approach that conversation?"
2. "Describe a time you had to deliver difficult news to a patient. What did you say and how did it land?"

---

### [Additional competencies follow same format]

---

## Disqualifiers (end interview if any of these appear)

☐ **Defensive or evasive about past employment** (especially departures) — red flag for behavioral or clinical issues
☐ **Dismissive of patient documentation or billing** — will create AR and compliance problems
☐ **Active OIG LEIE exclusion** — immediate elimination; zero exceptions; cannot bill Medicare/Medicaid
☐ **AZ Medical Board license lapsed or restricted** — cannot practice; immediate elimination
☐ **References unavailable or reference contact refuses to speak** — major red flag; investigate before proceeding

---

## Reference Check Guide (key questions)

Ask at least 2 references per finalist (1 supervisor, 1 peer):
1. "In what context did you work with [Candidate]? What was your role?"
2. "How would you describe [Candidate's] clinical quality / patient relationships?" (tailor to role)
3. "What's [Candidate's] biggest developmental area?"
4. "Would you hire them again if you could?" (Listen for hesitation, not just the answer)
5. "Is there anything that would surprise me that I should know about before I make an offer?"

**Reference disqualifiers:** If reference is unable to speak clearly to the candidate's work quality, or gives a lukewarm response to "would you hire them again" — treat as a yellow flag; call a third reference.

---

## Interview Panel Scorecard Summary

| Interviewer | Score (weighted avg) | Summary | Recommend? |
|------------|---------------------|---------|-----------|
| [CEO] | [X.X] | | ✅/❌ |
| [Practice Manager] | [X.X] | | |
| [Dr. Lewis — executive hires] | [X.X] | | |
| **Panel average** | **[X.X]** | | **✅ Recommend / ❌ Decline / ⚠️ Second interview** |

---

## Hiring Decision

**Panel recommendation:** [Recommend / Second interview / Decline]
**Compensation range:** $[X]-$[X] (per market rate; [negotiation approach])
**Offer contingent on:** [Reference checks complete / OIG LEIE confirmed / License verified]
**Matt Mathison notification:** [Executive hire: Matt Mathison decision / Below executive: CEO decision]
```

## Output Contract
- Must-have verifications happen before the candidate advances — OIG LEIE check, license verification, and other must-have gates are not completed after the offer; they are completed before the candidate advances to final interviews; a candidate who fails an OIG LEIE check after the offer is made creates an awkward rescission situation; Dr. Lewis builds the must-have verification step into the process before final-round interviews, not after
- Scorecards are completed independently before the debrief — each interviewer fills out their scorecard before the debrief discussion; in the debrief, the first person to speak anchors the group's perception (anchoring bias); if all interviewers complete their scores independently first and then reveal them simultaneously, the debrief starts from an honest distribution of views rather than from whoever spoke first; Dr. Lewis designs the debrief process to prevent anchoring
- THRIVE alignment is always in the scorecard — every scorecard includes a THRIVE values competency (Truth, Hustle, Respect, Integrity, Value, Enjoy); this is not a checkbox; it is a genuine assessment of whether the candidate demonstrates the values in their behavioral interview responses; a technically strong candidate who shows low integrity in their references or interview responses fails the THRIVE screen; this is a must-pass for all hires at MBL portfolio companies
- HITL required: Dr. Lewis designs the scorecard; CEO defines the role outcome and validates the competencies; CEO interviews all hires with the scorecard; Dr. Lewis interviews for executive-level hires; Matt Mathison interviews all executive-level hires and approves the hire; any hire >$75K annual compensation requires Dr. Lewis review of the scorecard and debrief before the offer is extended; executive hires require Matt Mathison approval

## System Dependencies
- **Reads from:** Annual plan (strategy-annual-plan-builder — what skills does the VCP require?), VCP (strategy-value-creation-plan — what roles are in the 100-day plan?), OIG LEIE exclusion database (healthcare), AZ Medical Board license lookup (Allevio), THRIVE values (CLAUDE.md), compensation benchmarks (market data)
- **Writes to:** Hiring scorecard file (SharePoint/HR/<Company>/Hiring/[Role]/[Date]/); offer letter template inputs; new hire onboarding plan; compliance check records (OIG LEIE) retained permanently; debrief summary retained
- **HITL Required:** Dr. Lewis designs the scorecard; CEO approves competencies and role outcome; CEO interviews with scorecard; Dr. Lewis interviews for executive hires; Matt Mathison interviews and approves executive hires; OIG LEIE check mandatory before offer for any Allevio clinical hire; references checked before final offer

## Test Cases
1. **Golden path:** Allevio NP hire (replacing departing PA) → Dr. Lewis builds scorecard before any interviews; must-haves: AZ Medical Board active NP license ✅ verified; OIG LEIE check ✅ clear; ≥1 year primary care ✅; 5 competencies with weights: clinical quality (2×), patient relationship (2×), panel management (1.5×), team collaboration (1×), THRIVE/culture (1.5×); two finalists interviewed by CEO and practice manager; candidate A: weighted average 3.8 (clinical quality 4, patient relationship 4, panel management 3.5, team 4, culture 3.5); candidate B: weighted average 3.2 (clinical quality 4, patient relationship 3, panel management 3, team 3.5, culture 3); references: candidate A — 2 strong references; "would hire again" — both immediate yes; candidate B — 1 strong, 1 lukewarm ("great clinically, sometimes communication issues with staff"); debrief: panel recommends candidate A; CEO approves; Dr. Lewis reviews and concurs; offer extended; OIG LEIE confirmed pre-offer; offer contingent on license verification; hire starts in 3 weeks
2. **Edge case:** The CEO's preferred candidate fails the OIG LEIE check at the pre-offer verification stage → Candidate cannot be hired for a Medicare/Medicaid billing role — period; an OIG LEIE-excluded individual who bills Medicare under the practice creates False Claims Act exposure for Allevio and for Matt Mathison as the owner; the exclusion is not a judgment call; Dr. Lewis communicates clearly to the CEO: this candidate cannot be hired regardless of their clinical qualifications; no exceptions; the CEO may be disappointed but the integrity of the compliance program requires the firm answer; Dr. Lewis documents the exclusion check and the decision; the second candidate is evaluated or a new search is initiated
3. **Adversarial:** A CEO says "we don't need a formal scorecard — I know a good candidate when I meet one" → Unstructured hiring at this company cost [whatever is known from prior hires that went wrong]; the research on structured vs. unstructured hiring is unambiguous: structured interviews with consistent criteria outperform gut-feel hiring, particularly when the same interviewer interviews multiple candidates over a multi-week period (memory degrades and the most recent candidate is recalled most vividly); at MBL portfolio scale, the scorecard takes 2 hours to design and saves potentially 6-12 months of underperformance from a bad hire; Dr. Lewis designs the scorecard and frames it as a time-saver for the CEO ("here are the 5 things you're already looking for — I've written them down so you can compare consistently"), not as a bureaucratic imposition; the CEO can modify the competencies; the structure stays

## Audit Log
All hiring scorecards retained with interviewer scores and debrief summaries. OIG LEIE check records retained permanently. License verification records retained permanently. Reference check notes retained. Offer terms retained. Post-hire performance at 90 days retained (scorecard accuracy calibration).

## Deprecation
Retire when portfolio companies have an HR or people operations function that owns structured hiring — with Dr. Lewis designing the OKR and culture competency elements and Matt Mathison approving executive-level hire scorecards regardless of who builds the underlying framework.
