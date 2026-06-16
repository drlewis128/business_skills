---
name: hr-manager-effectiveness
description: "Assess and improve manager effectiveness. Use when the user says 'manager effectiveness', 'assess a manager', 'manager feedback', 'is this manager good', 'manager assessment', 'upward feedback', 'team feedback on manager', 'manager performance', 'leadership effectiveness', 'manager development', 'coach a manager', 'manager review', or 'how is this manager doing'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--manager <name>] [--role <title>] [--trigger <annual|concern|team-request>]"
---

# HR Manager Effectiveness

Assess and improve manager effectiveness at MBL portfolio companies — evaluating whether a manager is creating the conditions for their team to do their best work. Managers are the primary driver of employee retention, engagement, and performance. A good manager multiplies the output of their team; a bad manager drives out good performers while retaining mediocre ones. At MBL portfolio scale, where teams are small and every person matters, a bad manager is an existential retention risk.

## When to Use
- Annual cycle — manager effectiveness assessed alongside employee performance reviews
- A team has experienced unusual turnover and manager quality is a potential factor
- An employee has raised a concern about their manager's behavior or effectiveness
- A CEO asks "is [Manager] performing well as a people manager?"
- Matt Mathison wants to assess the management quality across a portfolio company
- A manager is struggling and needs coaching before the situation escalates

## Manager Effectiveness Framework

```
Six dimensions of manager effectiveness:

1. CLARITY: Does the team know what they're supposed to do and why?
   → Clear expectations set; priorities communicated; goals established

2. FEEDBACK: Do team members receive honest, specific, timely feedback?
   → Regular 1:1s; specific praise; specific improvement feedback; no surprises at review
   → Truth-first: delivers uncomfortable feedback rather than avoiding it

3. SUPPORT: Does the manager remove obstacles and provide what people need?
   → Advocates for resources; clears blockers; accessible when needed

4. TRUST AND INTEGRITY: Does the team trust this manager?
   → Honest about company decisions; consistent behavior; takes responsibility
   → Does NOT take credit for team's work; does NOT blame team for own failures

5. DEVELOPMENT: Does the manager invest in their team's growth?
   → Identifies development areas; creates growth opportunities; builds skills

6. TEAM HEALTH: Is the team performing well and are people staying?
   → Retention rate; team output quality; peer feedback; no pattern of good people leaving

Data sources for assessment:
  Primary: Exit interviews, 1-on-1 feedback from direct reports (confidential)
  Secondary: Performance review outcomes for the team, turnover rates, tenure distribution
  Tertiary: CEO / Dr. Lewis direct observation
```

## Output Format

```markdown
# Manager Effectiveness Assessment — <Manager Name>
**Company:** <Entity> | **Role:** [Title]
**Team size:** [N direct reports] | **Average team tenure:** [X months]
**Assessment date:** <Date> | **Trigger:** [Annual / Turnover concern / Complaint / Proactive]
**Conducted by:** Dr. John Lewis

---

## Team Health Indicators

| Metric | Data | Assessment |
|--------|------|-----------|
| Voluntary turnover rate (trailing 12 months) | [X%] | 🟢 <10% / 🟡 10-20% / 🔴 >20% |
| Team members who've flagged manager concerns in exit interviews | [N] | 🟢 0 / 🟡 1 / 🔴 2+ |
| Performance distribution of direct reports | [X% meeting/exceeding expectations] | 🟢 >70% / 🟡 50-70% / 🔴 <50% |
| Average tenure of direct reports | [X months] | 🟢 >18mo / 🟡 12-18mo / 🔴 <12mo |

---

## Direct Report Feedback (Confidential — anonymized in this report)

[Dr. Lewis conducts brief (15-20 min) confidential conversations with direct reports. 
Questions below. Results are aggregated and anonymized — specific quotes are never attributed.]

**Questions asked:**
1. Do you feel you know what's expected of you in your role? (Clarity)
2. How often do you receive feedback on your work — both positive and improvement-focused?
3. When you have a problem or blocker, does your manager help you remove it?
4. Do you feel comfortable sharing bad news or concerns with your manager?
5. Do you feel like your manager is investing in your development?
6. On a scale of 1-10, how much does your manager make your work better?

**Aggregated results:**

| Dimension | Rating (1-5 avg) | Key themes |
|---------|----------------|-----------|
| Clarity | /5 | [Common themes from responses] |
| Feedback quality | /5 | |
| Support | /5 | |
| Trust / Integrity | /5 | |
| Development | /5 | |
| **Overall manager score** | **/5** | |

---

## Manager Self-Assessment (5 questions)

1. What's going well on your team right now?
2. Where do you feel your team isn't performing as well as it should?
3. What's the hardest part of being a manager for you?
4. What would make you more effective?
5. Who on your team do you think is your strongest player, and what do you do to develop them?

[Self-assessment responses retained by Dr. Lewis — not shared with team or CEO without manager's awareness]

---

## Effectiveness Assessment

| Dimension | Score (1-5) | Evidence |
|---------|------------|---------|
| Clarity | /5 | [Specific: "Team consistently cites unclear priorities" / "Team alignment is strong — specific example"] |
| Feedback quality | /5 | |
| Support and obstacle removal | /5 | |
| Trust and integrity | /5 | ⚠️ Hard flag: Integrity issues escalate immediately |
| Development investment | /5 | |
| Team health | /5 | |
| **Overall manager effectiveness** | **/5** | |

**Summary statement:** [2-3 sentences: What does this manager do well? Where is the biggest gap? What's the most important change?]

---

## Coaching Plan (if score <3.5 or specific gap identified)

| Gap | Current behavior | Target behavior | Action | Timeline |
|-----|----------------|----------------|--------|---------|
| [e.g., Feedback quality] | [Avoids giving negative feedback; team says they never know if they're behind] | [Specific, timely feedback within 48 hours of observation] | [Weekly 1:1 structure with feedback agenda; Dr. Lewis to provide coaching template] | 30 days |

**Check-in scheduled:** [Date — 30 days after coaching plan initiated]

---

## Decision

**Overall:** ✅ Effective — continue with development focus / ⚠️ Developing — coaching plan in place / 🔴 Ineffective — serious conversation required / ❌ Integrity/Trust failure — immediate escalation

**Matt Mathison notification:** [Yes — if overall <2.5 or Trust/Integrity failure / No — Dr. Lewis handles coaching directly]
```

## Output Contract
- Direct report feedback is confidential — individual responses are never attributed; the manager never receives a report that says "Person X said Y"; this confidentiality is what makes the feedback honest; without it, employees self-censor and the assessment is useless; Dr. Lewis aggregates and anonymizes before any feedback reaches the manager
- Team health data is the leading indicator — the most reliable indicator of a bad manager is the data: high voluntary turnover, short average tenure, multiple exit interviews citing the manager, low performance ratings across the team; the direct report feedback confirms what the data suggests; both must be present for a complete assessment
- Integrity and Trust hard flag — a manager who takes credit for their team's work, blames the team for their own failures, or behaves inconsistently (different behavior when leadership is watching) is a trust failure regardless of team output; this is escalated immediately to Matt Mathison; a team that doesn't trust their manager will eventually all leave
- Coaching before escalation — a manager who scores 2.5-3.5 overall with no integrity flag gets a structured coaching plan, not immediate escalation; management is a skill that can be developed; the coaching plan is specific, time-bound, and has a check-in; only if the coaching plan produces no improvement does the situation escalate to Matt Mathison for a role decision
- HITL required: Dr. Lewis conducts the assessment; direct report conversations are confidential; results shared with the manager in a 1:1 coaching conversation (not email); Matt Mathison notified if overall <2.5 or Trust/Integrity failure; coaching plan reviewed at 30 days; no manager coaching plan disclosed to their team

## System Dependencies
- **Reads from:** Exit interview data, turnover records, performance review distributions for team, direct report 1:1 conversations (confidential), manager self-assessment
- **Writes to:** Manager effectiveness assessment (SharePoint/HR/<Company>/Leadership/); coaching plan; Matt Mathison brief (if threshold met)
- **HITL Required:** Dr. Lewis conducts; direct reports speak confidentially; Matt Mathison receives if overall <2.5 or integrity flag; coaching plan check-in at 30 days

## Test Cases
1. **Golden path:** Allevio operations manager annual effectiveness assessment → Team: 4 direct reports, avg tenure 14 months, 1 voluntary departure in trailing 12 (personal relocation — not controllable); Dr. Lewis conducts 4 confidential 15-min calls; Clarity: avg 3.8 ("I know what I should be doing most of the time"); Feedback: avg 2.6 ("I get positive feedback but rarely specific feedback when something isn't right"); Support: avg 4.2 ("always there when I need to unblock something"); Trust: avg 4.5 (strong — "she's consistent whether you're in the room or not"); Development: avg 3.0 ("we talk about it but I don't see specific actions"); Overall: 3.6; Assessment: effective manager with a specific gap in feedback quality; coaching plan: "Weekly 1:1 agenda includes one piece of specific improvement feedback, even if small; Dr. Lewis to review 1:1 notes weekly for 4 weeks"; 30-day check-in: team perception on feedback improving (avg from 2.6 to 3.5 in next check); Matt Mathison: not required (3.6 overall)
2. **Edge case:** Three direct reports of the same manager all resign within 6 weeks, with two citing the manager in exit interviews → this is a pattern that requires immediate investigation, not the next annual cycle; Dr. Lewis initiates an unscheduled assessment; interviews the one remaining direct report and the two departing employees; if the pattern confirms a management problem, assessment is escalated to Matt Mathison within 48 hours: "Three of four direct reports are departing, with two citing [specific manager behavior] in exit interviews. I've assessed the situation and recommend an immediate conversation with [Manager] and a structured decision on their suitability for the people management role. I can convert them to an individual contributor role if there's a fit there, or we proceed to separation."
3. **Adversarial:** A CEO says "I don't want you talking to my managers' direct reports — that undermines my authority" → the confidential feedback process is a talent retention and risk management tool, not a threat to leadership; respond: "The goal isn't to go around you — it's to give you and me an accurate picture of management health before problems become turnover. The confidential format is what makes the feedback honest; if I run it as an official 'HR process,' employees self-censor and I get useless data. The findings come to you and me together — I'm not creating a back channel to the team, I'm giving you better information to lead with."

## Audit Log
All manager effectiveness assessments retained by manager and date. Direct report feedback retained confidentially with restricted access. Coaching plans and check-in outcomes retained. Matt Mathison notifications retained. Escalations and role decisions retained.

## Deprecation
Retire when portfolio companies have dedicated HR managers with manager effectiveness programs, regular upward feedback cycles, manager development training, and HRIS tools that track team health metrics without requiring Dr. Lewis to conduct each assessment manually.
