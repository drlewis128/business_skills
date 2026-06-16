---
name: hr-hiring-scorecard
description: "Score HR staff candidates. Use when the user says 'HR hiring scorecard', 'evaluate an HR candidate', 'score an HR hire', 'HR candidate assessment', 'hire an HR person', 'evaluate HR staff', 'HR coordinator candidate', 'HR generalist candidate', 'assess an HR hire', 'score an HR professional', or 'HR staff hiring criteria'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <coordinator|generalist|manager|director>] [--candidate <name>]"
---

# HR Hiring Scorecard

Score candidates for HR staff positions at MBL portfolio companies — HR coordinators, HR generalists, HR managers, and similar people-focused roles. Hiring HR people is high-stakes because the HR person shapes how the company treats its employees: they set the tone for compliance, culture, and conflict handling. A weak HR hire creates a false sense of security — a company thinks HR is covered, but the function is actually creating risk rather than managing it.

## When to Use
- Evaluating a candidate for an HR role at a portfolio company
- Standardizing the interview and scoring process for HR positions
- Post-interview debrief — ensuring all interviewers score consistently before comparing notes
- Dr. Lewis is delegating HR hiring to a portfolio company CEO and needs a scoring guide

## HR Candidate Scoring Framework

```
Role tier definitions:
  HR Coordinator ($38,000-$55,000): Administrative HR; onboarding logistics, I-9, 
    benefits enrollment, data entry; does NOT make HR decisions
  HR Generalist ($55,000-$80,000): Handles full HR lifecycle under Dr. Lewis direction;
    recruiting, employee relations intake, compliance administration
  HR Manager ($75,000-$110,000): Leads HR function for a portfolio company with Dr. Lewis 
    oversight; makes routine HR decisions independently; escalates complex situations
  HR Director ($100,000-$140,000): Full HR function ownership at large portfolio company;
    reports to CEO + Dr. Lewis; Dr. Lewis acts as resource/oversight, not day-to-day

Scoring dimensions (100 points total):
  
  HR Knowledge (30 points):
    Employment law fundamentals (FLSA, FMLA, ADA, Title VII): up to 10 pts
    HR process expertise (recruiting, onboarding, performance, ER): up to 10 pts
    Compliance and documentation discipline: up to 10 pts
  
  Judgment and Discretion (25 points):
    Handling sensitive employee situations appropriately: up to 10 pts
    Knowing when to escalate vs. handle independently: up to 8 pts
    Confidentiality discipline: up to 7 pts
  
  Communication and Relationships (20 points):
    Clear, direct communication — written and verbal: up to 10 pts
    Ability to manage difficult conversations: up to 10 pts
  
  Integrity and Trust (25 points) — THRIVE filter:
    Honesty in the interview (inconsistencies, overselling): up to 10 pts
    Track record: no patterns suggesting ethical issues: up to 8 pts
    Accountability for mistakes: up to 7 pts

AUTO-REJECT criteria (any one triggers no hire regardless of score):
  - Reference check reveals dishonesty, manipulation, or favoritism in prior HR role
  - Unable to explain basic employment law (FLSA exempt/non-exempt) at Generalist+
  - Indicates willingness to cover up or ignore employee complaints
  - Background check reveals criminal conviction relevant to role (access to personal data)
  - Integrity dimension score ≤ 12 / 25 regardless of total
```

## Output Format

```markdown
# HR Hiring Scorecard — <Role Title>
**Company:** <Entity> | **Date:** [Date]
**Candidate:** [Name] | **Interviewed by:** Dr. John Lewis [+ others]
**Role:** [HR Coordinator / HR Generalist / HR Manager / HR Director]
**Salary range:** $[X,000] – $[X,000]

---

## Interview Questions by Dimension

### HR Knowledge (30 pts)

**Q1 (FLSA):** "Walk me through the difference between exempt and non-exempt employees and what happens if we classify someone incorrectly."
Score: [0-10] | Notes: [What they said — were they accurate? Did they know the three-test analysis? Did they mention back wages and liquidated damages risk?]

**Q2 (Employee Relations):** "Tell me about the most complex employee relations situation you've handled. What was the situation, how did you handle it, and what was the outcome?"
Score: [0-10] | Notes: [Did they describe a fair process? Did they escalate appropriately? Did they maintain confidentiality?]

**Q3 (Compliance):** "Describe your experience with I-9 compliance. What are the most common errors you've seen, and how did you address them?"
Score: [0-10] | Notes: [Did they know the 3-day rule? Did they know E-Verify? Did they know the retention schedule?]

**HR Knowledge subtotal:** [X] / 30

---

### Judgment and Discretion (25 pts)

**Q4 (Escalation):** "A manager calls you and says 'I want to fire one of my employees today — she's been a problem.' What do you do?"
Score: [0-10] | Notes: [Did they slow it down? Ask about documentation? Ask about protected class? Did they mention getting legal input for termination decisions?]

**Q5 (Confidentiality):** "An employee tells you something about their colleague in confidence — something you think HR should know about. How do you handle it?"
Score: [0-8] | Notes: [Did they handle the tension between employee confidence and HR obligation appropriately? Did they mention retaliation risk?]

**Q6 (Independence):** "What's an example of an HR decision you made independently that turned out to be wrong? What did you do when you realized it?"
Score: [0-7] | Notes: [Could they name one? (If not, either they make no independent decisions or they don't acknowledge mistakes.) Did they show accountability?]

**Judgment subtotal:** [X] / 25

---

### Communication (20 pts)

**Q7 (Difficult conversations):** "Describe a time you had to deliver very difficult news to an employee — a termination, a denied accommodation, or a PIP. How did you handle the conversation?"
Score: [0-10] | Notes: [Were they direct? Did they show empathy without softening the message? Did they follow a process?]

**Q8 (Written communication):** Review a writing sample if available; or ask them to draft a 3-sentence response to a hypothetical employee question on the spot.
Score: [0-10] | Notes: [Clear? Professional? No hedging or corporate speak?]

**Communication subtotal:** [X] / 20

---

### Integrity and Trust (25 pts) — THRIVE filter

**Q9 (Honesty):** "Tell me about a time you made a mistake in HR — something that affected an employee or the company. What happened and what did you change?"
Score: [0-10] | Notes: [Could they name a real mistake? Were they honest about their role? Or did they blame others, or couldn't name one?]

**Q10 (Ethics):** "A CEO tells you to backdate an offer letter. What do you do?"
Score: [0-8] | Notes: [Clear no — and the ability to explain why professionally and firmly? Or did they hedge?]

**Consistency check:** Did responses contradict their resume or earlier answers?
Score: [0-7] | Notes:

**Integrity subtotal:** [X] / 25

**AUTO-REJECT check:**
- [ ] Reference check revealed dishonesty, manipulation, or favoritism → Auto-reject if checked
- [ ] Unable to explain FLSA fundamentals at Generalist+ level → Auto-reject if checked
- [ ] Indicated willingness to ignore employee complaints → Auto-reject if checked
- [ ] Background check disqualifier → Auto-reject if checked
- [ ] Integrity score ≤ 12/25 → Auto-reject if checked

---

## Scoring Summary

| Dimension | Score | Max |
|-----------|-------|-----|
| HR Knowledge | [X] | 30 |
| Judgment and Discretion | [X] | 25 |
| Communication | [X] | 20 |
| Integrity and Trust | [X] | 25 |
| **Total** | **[X]** | **100** |

**Auto-reject triggered:** Yes (do not hire) / No

**Hire recommendation:** Strong Yes / Yes / Lean Yes / No / Strong No

**Rationale (2-3 sentences):**
[Why this candidate should or should not be hired — specific to what you heard in the interview]

**Salary recommendation:** $[X,000] [within posted range — above for exceptional candidates at Manager+; within for standard; below if significant gaps exist]

**Matt Mathison review required:** Yes (HR Manager or Director offer) / No
```

## Output Contract
- Integrity auto-reject is firm — an HR person with integrity problems is actively dangerous: they will cover up complaints, play favorites, and create the liability the HR function is supposed to prevent; if the integrity score is ≤12/25 or an auto-reject criterion is triggered, the candidate is declined regardless of how strong their process knowledge is; this rule has no exceptions
- All interviewers score independently before comparing — interviewer anchoring (one person shares their view and everyone agrees) produces bad hiring decisions; each person who interviews the HR candidate scores independently before the debrief; disagreement on scores is surfaced and discussed; the goal is the right decision, not consensus
- Reference checks are mandatory for HR Manager and above — an HR manager at a prior company knows things about this person's HR judgment that no interview can reveal; Dr. Lewis conducts or reviews reference checks for all HR Manager+ roles before an offer is made; references are asked specifically about judgment in sensitive situations, discretion, and how they've handled mistakes
- The salary recommendation is anchored to the posted range — the scorecard total informs where in the range the candidate lands; a 90+ score at a critical-need role may justify the top of the range; a 70-79 score is toward the midpoint; below 70 is a no-hire
- HITL required: Dr. Lewis reviews all HR candidate scorecards; Dr. Lewis approves all HR Generalist and above offers; HR Manager and Director offers reviewed with Matt Mathison before extending; no HR offer is made without Dr. Lewis scoring review; reference checks required for HR Manager+

## System Dependencies
- **Reads from:** Candidate resume, interview responses, reference check results, background check results
- **Writes to:** Hiring scorecard (SharePoint/HR/<Company>/Recruiting/HR Roles/); offer recommendation documentation
- **HITL Required:** Dr. Lewis reviews all scorecards; HR Manager+ offers reviewed with Matt Mathison; reference checks by Dr. Lewis for Manager+

## Test Cases
1. **Golden path:** Allevio HR Coordinator candidate → HR Knowledge: FLSA basics solid but didn't know I-9 retention schedule (6/10), described a straightforward onboarding situation, no ER experience yet (7/10), knows benefits basics (7/10) = 20/30; Judgment: appropriately slowed down the "fire her today" scenario and said she'd ask for documentation (8/10), handled confidentiality question well (6/8), gave a real example of a mistake — sent a welcome email to a candidate who was still pending background check (5/7) = 19/25; Communication: clear and direct, good written sample (17/20); Integrity: honest, named a real mistake, clear no on backdating (22/25); Total: 78/100; No auto-reject; Hire: Yes — strong for coordinator level; Salary: $48,000 (toward midpoint — solid candidate, limited ER experience); Dr. Lewis approves; no Matt Mathison review needed at coordinator level
2. **Edge case:** A candidate with 10 years of HR experience can't explain exempt/non-exempt at a Generalist interview → Auto-reject for HR Generalist level — this is foundational knowledge for the role; if they can't explain the three-test analysis after 10 years of HR, either they've never done exempt classification (their experience doesn't match their resume) or they memorized concepts without applying them; either is disqualifying for a Generalist who will be doing FLSA compliance work; can still be considered for HR Coordinator if other scores support it
3. **Adversarial:** The CEO says "I've already told this person they're hired — can you just rubber-stamp the scorecard?" → The scorecard cannot be backdated or rubber-stamped; respond: "I understand, and I want to make this work. Let me do the interview — even a 30-minute conversation will tell us how to set expectations and where to watch for risks once she's in the role. The scorecard protects both of us: if an issue comes up later, we have documentation that we assessed the hire properly. If you've already made a commitment, I'll use the interview to build a better onboarding plan for her specific gaps."

## Audit Log
All HR candidate scorecards retained by candidate name and date. Auto-reject decisions documented. Offer approvals (Dr. Lewis and Matt Mathison where applicable) retained. Reference check notes retained. All declining decisions and rationale retained.

## Deprecation
Retire when portfolio companies have dedicated HR managers who own their own HR hiring processes with Dr. Lewis in a final-approval oversight role, rather than Dr. Lewis conducting or scoring every HR candidate.
