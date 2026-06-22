---
name: hr-candidate-screener
description: "Screen candidates at the resume and phone screen stage for MBL Partners portfolio company roles. Use when the user says 'screen candidates', 'candidate screening', 'resume review', 'resume screen', 'resume filter', 'phone screen', 'phone interview', 'initial screen', 'screen applicants', 'filter applicants', 'first round', 'first interview', 'screening call', 'talent screen', 'applicant review', 'shortlist candidates', 'who should we interview', 'advance to next round', 'decline candidate', 'candidate disposition', 'candidate status', 'who makes the cut', 'screen stack', 'reviewing resumes', 'going through applications', 'screening for must-haves', 'disqualify candidate', 'minimum qualifications', 'phone screen questions', 'initial call questions', 'screening scorecard', or 'who do we advance'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--role <role-title>] [--stage <resume|phone>] [--candidate <candidate-name>]"
---

# HR Candidate Screener

Screen candidates at the resume review and phone screen stages using the role's must-have competencies and disqualifying factors to produce a shortlist of 4-6 candidates for structured interviews. Resume screening takes 5-7 minutes per candidate; phone screens take 20-30 minutes; both stages filter on the same criteria so later-stage interviewers spend time only on qualified candidates. Consistency in screening criteria is both a quality control measure and a legal protection — documented, criteria-based screening is defensible; gut-feel screening is not.

## When to Use
- Reviewing an applicant stack from job boards or recruiter submissions
- Conducting or structuring phone screening calls
- Creating a consistent shortlist before panel interviews
- Documenting candidate disposition for a role

## Candidate Screening Framework

```
STAGE 1 — RESUME SCREEN (5-7 min per candidate):

  MUST-PASS items (from hr-job-profiler disqualifying factors):
    1. Role-specific minimum experience: [years / credential — from role profile]
    2. THRIVE signal: job tenure pattern? (job-hopping without clear reason = Yellow)
    3. Allevio healthcare roles: credential verified? (RN, LPC, etc. — check license lookup)
    4. Evidence of outcomes (not just duties)? Resume written around tasks = Yellow

  YELLOW FLAGS (investigate in phone screen; do not auto-decline):
    Employment gap >12 months (ask for context)
    Frequent company changes without promotion pattern
    Comp expectation mismatch (if disclosed)
    Geographic mismatch without relocation acknowledgment

  RED FLAGS (decline at resume stage with documentation):
    Missing required credential / license
    Falsified credential (verify before resume screen if visible discrepancy)
    Allevio: any healthcare entity employer on OIG exclusion list (Dr. Lewis checks if suspicious)
    Excessive functional overlap with a direct competitor requiring legal review

STAGE 2 — PHONE SCREEN (20-30 min):

  OPENING (3 min):
    "Tell me about what you're looking for in your next role." (Listen for fit signal)
    "What do you know about [entity] and why are you interested?" (Homework signal)

  MUST-HAVE COMPETENCY SCREEN (10-12 min):
    Ask 1 behavioral question per must-have competency from role profile
    Use STAR prompts: "Tell me about a specific time when you [competency]."
    Score each: 1 (weak) / 2 (adequate) / 3 (strong)
    Minimum score to advance: ≥2 on all must-haves; no 1s on critical competencies

  THRIVE SCREEN (5 min):
    Truth: "Tell me about a time you delivered bad news to a leader. What happened?"
    Hustle: "What's the most ambitious project you've driven? What was the pace like?"
    Integrity: "Describe a situation where you were asked to do something you disagreed with."
    (Red flag: candidate says "I just did it" with no pushback or reflection)

  LOGISTICS (5 min):
    Current compensation (if in state where permissible to ask — check AZ/UT rules)
    Expected compensation range
    Availability / start date
    Relocation (if applicable)
    Any active competing offers

  PHONE SCREEN SCORING:
    Advance: ≥2 on all must-haves; no THRIVE Integrity red flags
    Hold: mixed signals; needs second opinion from hiring manager before advancing
    Decline: any 1 on critical competency; THRIVE Integrity concern

DOCUMENTATION:
  Every candidate receives a written disposition in the ATS or HR folder
  Decline reason is documented in criteria terms (not "didn't feel like a fit")
  Avoid protected class language in notes (age, family status, accent, etc.)
```

## Output Format

```markdown
# Candidate Screen Summary — [Candidate Name] | [Role] | [Entity] — [Date]
**Stage:** Resume / Phone Screen | **Screened by:** [Name]

---

## Must-Have Competency Scores (Phone Screen)

| Competency | Score (1-3) | Notes |
|-----------|------------|-------|
| [Competency 1] | [1/2/3] | [Evidence from STAR response] |
| [Competency 2] | [1/2/3] | |

---

## THRIVE Signals
- Truth: [observation]
- Hustle: [observation]
- Integrity: [observation — any concern = advance with flag to Dr. Lewis]

---

## Logistics
- Current comp: $[X] | Expected: $[X] | Availability: [date] | Competing offers: [Y/N]

---

## Recommendation
☐ **ADVANCE** to panel interviews
☐ **HOLD** — recommend hiring manager conversation before advancing
☐ **DECLINE** — reason: [criteria-based reason]
```

## Output Contract
- Screening criteria are applied from the role profile, not improvised — the competencies and disqualifying factors from hr-job-profiler are the screening inputs; screeners do not add criteria during the screening process; if a new criterion is identified mid-search, Dr. Lewis updates the role profile and all candidates are re-evaluated against the new criteria (including those previously advanced)
- Declines are documented with criteria-based reasons — "not the right culture fit" or "just didn't feel right" are not documented decline reasons; the documented reason must reference a specific competency, qualification, or logistics factor that the candidate did not meet; this protects the entity against discrimination claims and helps improve sourcing over time (patterns in declines reveal whether the pipeline is misaligned with the role profile)
- THRIVE Integrity signals in phone screen halt advancement pending Dr. Lewis review — a candidate who describes resolving an ethics conflict by "going along with it" or who demonstrates willingness to misrepresent information is flagged to Dr. Lewis before advancing; the hiring manager does not make the call alone on Integrity concerns; Dr. Lewis reviews the phone screen notes and decides whether to advance or decline
- HITL required: THRIVE Integrity concern → Dr. Lewis review before advancing; Allevio healthcare credential verification → confirmed before phone screen; any OIG/LEIE concern at resume stage → Dr. Lewis checks before phone screen; final shortlist (4-6 candidates to advance to panel) → Dr. Lewis confirms

## System Dependencies
- **Reads from:** hr-job-profiler (must-haves; disqualifying factors; comp range); hr-sourcing-strategy (applicant source for attribution); OIG/LEIE exclusion list (external; for Allevio healthcare role candidates)
- **Writes to:** Candidate screen summary (SharePoint → HR → Candidates → [Entity] → [Role] → [Candidate Name]); candidate pipeline tracker; Dr. Lewis disposition review queue (THRIVE Integrity flags)
- **HITL Required:** THRIVE Integrity flag → Dr. Lewis reviews; OIG/LEIE concern → Dr. Lewis checks; final shortlist → Dr. Lewis confirms; credentials for Allevio healthcare roles → verified before phone screen

## Test Cases
1. **Golden path:** 14 applicants for an Allevio Care Coordinator role. Resume screen: 5 meet minimum experience; 3 are declined for missing required credential; 6 are declined for inadequate experience. 5 phone screens scheduled. Phone screen: 3 score ≥2 on all must-haves; 1 scores a 1 on "member communication" (critical competency) → decline; 1 has an Integrity signal ("I just did what my manager said even when I thought it was wrong") → flagged to Dr. Lewis before advancing. 3 advance to panel interviews.
2. **Edge case:** Candidate discloses in phone screen they have a pending lawsuit against a former employer → Dr. Lewis is notified; legal counsel reviews before advancing; no adverse action taken solely on the basis of litigation history (may be protected activity); context matters.
3. **Adversarial:** Hiring manager wants to skip the phone screen for a referred candidate and go straight to panel interview → Dr. Lewis: "I'd recommend a 20-minute screen call first — even with a referral. It protects both the candidate's time and the panel's time. If they clear the must-haves, we advance immediately. If there's a gap, it's easier to address at this stage. I'll conduct the screen call myself and turn it around within 48 hours."

## Audit Log
All candidate screen summaries retained for 3 years (EEOC retention requirement). Decline reasons retained (criteria-based). THRIVE Integrity flags and Dr. Lewis disposition decisions retained. OIG/LEIE check records retained for all Allevio healthcare candidates.

## Deprecation
Screening criteria are updated when the role profile changes. Screen templates are reviewed annually and updated when employment law changes (e.g., salary history inquiry restrictions).
