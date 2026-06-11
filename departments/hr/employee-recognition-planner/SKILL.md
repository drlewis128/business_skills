---
name: employee-recognition-planner
description: "Design or facilitate an employee recognition program or recognition moment. Use when the user says 'employee recognition', 'recognize this employee', 'recognition program', 'employee appreciation', 'how to recognize good work', 'acknowledgment', 'spot bonus', or 'employee of the month'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <individual|team|program>] [--budget <N>]"
---

# Employee Recognition Planner

Design or execute employee recognition — from a single acknowledgment to a structured recognition program. Recognition is one of the highest-ROI retention tools available; 69% of employees say they'd work harder if they felt better appreciated.

## When to Use
- Recognizing an individual for outstanding performance
- Building a recognition culture on a team or entity
- Designing a formal recognition program
- When employee engagement scores show low recognition ratings
- Annual recognition events or awards

## Recognition Principles

### THRIVE-Aligned Recognition
- **Truth** — Recognition must be specific and earned, not generic ("great job" without detail is meaningless)
- **Hustle** — Recognize the behaviors you want more of; hustle gets recognized when hustle is the value
- **Respect** — Match recognition format to the person's preference (some people hate public recognition)
- **Integrity** — Be consistent — if one person gets recognized for X, others doing X should also be recognized
- **Value** — Tie recognition to business impact when possible
- **Enjoy** — Recognition should be enjoyable, not performative

### Recognition Tiers

| Tier | Type | Examples | Frequency | Investment |
|------|------|---------|----------|-----------|
| 1 | In-the-moment | Verbal thank-you, Slack shoutout, personal note | Weekly/daily | Time only |
| 2 | Team-level | Team shoutout in meeting, manager kudos email | Monthly | Time only |
| 3 | Formal | Spot bonus, recognition award, extra PTO | Quarterly | $50–$500 |
| 4 | Annual | Employee of the Year, anniversary awards, President's Club | Annual | $500+ |

### Research-Backed Best Practices
- **Specific > generic:** "You caught the billing error that would have cost $40K" > "Great work this week"
- **Timely:** Recognize within 24-48 hours of the behavior, not 2 months later
- **Personal:** Learn how each person prefers to be recognized (public vs. private)
- **Peer-to-peer > top-down only:** Peer recognition feels more authentic to many employees
- **Frequent > rare:** 3 small recognitions/month > 1 big one per quarter

## Recognition Program Design

### Program Structure
1. **Define purpose** — What behavior or outcome are you reinforcing?
2. **Set budget** — Recommend $50-100/employee/year as baseline
3. **Choose mechanism** — Spot bonus, points platform, peer-to-peer, formal awards
4. **Set cadence** — When and how often
5. **Train managers** — Recognition doesn't happen unless managers do it
6. **Measure** — Track recognition frequency and engagement correlation

### Simple Recognition Framework (No Platform Needed)
- **Daily:** Verbal acknowledgment in 1:1 or team standup
- **Monthly:** One written recognition (email or Slack) shared with the team
- **Quarterly:** Nominated recognition shared in all-hands; spot bonus if budget available
- **Annual:** Formal recognition for top performers in annual review

## Individual Recognition Generator

When recognizing a specific employee:
1. **What did they do?** (Specific behavior or outcome)
2. **What was the impact?** (Business result, team benefit, client outcome)
3. **Why does it align with values?** (THRIVE connection)
4. **What format works for this person?** (Public/private/written/verbal/monetary)

## Output Format

### Individual Recognition
```markdown
# Recognition — <Employee Name>
**Date:** <date> | **Recognized by:** <name> | **Format:** <public/private/written/monetary>

## Recognition Statement
"<Name>, I want to recognize you for <specific behavior/action>.

The impact was: <specific business or team outcome>.

This is a great example of our <THRIVE value> — specifically, <how it connects>.

Thank you for <continuing to do this / setting the example>."

## Format Recommendation
<Why this format was chosen for this person>

## Optional: Spot Bonus
**Amount:** $<N> | **Approval needed from:** <name>
```

### Recognition Program Design
```markdown
# Recognition Program — <Entity>
**Date:** <date> | **Annual Budget:** $<N> | **Employees:** <N>

## Program Structure
[Tier 1-4 plan with specifics]

## Launch Plan
1. <Action with owner and timeline>

## Manager Activation
How to get managers to actually use this: <training, reminders, accountability>
```

## Output Contract
- Recognition always specific to a behavior and outcome — no generic praise drafted
- Format recommendation always considers the individual's known preferences
- Spot bonuses always flagged for approval before commitment
- HITL required before any monetary recognition (spot bonus, award) is communicated or paid

## System Dependencies
- **Reads from:** Recognition context (provided), employee preference if known
- **Writes to:** Nothing (recognition draft for HITL delivery)
- **HITL Required:** Manager delivers all formal recognition; Dr. Lewis approves any spot bonuses; Finance approves monetary awards

## Test Cases
1. **Golden path:** Individual recognition for Finance analyst who caught a billing error → specific, impact-tied recognition statement with THRIVE connection; private delivery recommendation (prefer not to be spotlighted)
2. **Edge case:** Recognition request for a whole team → team-level recognition framework, avoids singling out individuals on a team where all contributed
3. **Adversarial:** Request for blanket "everyone did great" recognition after a bad quarter → recommends against performative recognition that isn't earned, suggests finding specific genuine moments instead

## Audit Log
Spot bonuses and formal awards documented in HRIS for compensation history. Recognition events retained for culture program measurement.

## Deprecation
Retire when HRIS or recognition platform (Bonusly, Workhuman, Achievers) provides peer-to-peer recognition with points, manager tools, and integration with payroll for bonuses.
