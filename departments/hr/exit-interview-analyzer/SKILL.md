---
name: exit-interview-analyzer
description: "Analyze exit interview data to surface retention insights. Use when the user says 'exit interview', 'exit interview analysis', 'why did they leave', 'exit survey results', 'exit interview themes', 'departure analysis', or 'what did they say when they left'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-MM to YYYY-MM>] [--n <number of interviews>]"
---

# Exit Interview Analyzer

Analyze exit interview data to surface root causes of voluntary turnover and generate retention recommendations. Exit interviews are the cheapest form of employee feedback — most companies collect them and do nothing with them.

## When to Use
- After any voluntary departure (individual analysis)
- Quarterly batch analysis of multiple exit interviews
- When turnover in a department is elevated
- When trying to understand why a pattern of exits is happening
- Before a retention intervention (base it on what leavers actually said)

## Exit Interview Question Framework

Standard exit interview questions:
1. What is your primary reason for leaving?
2. What could we have done differently to retain you?
3. How would you describe your relationship with your manager?
4. How would you rate your experience at [entity]?
5. Did you feel you had opportunities for growth and development?
6. How would you describe the company culture?
7. Was your compensation and benefits package competitive?
8. Would you consider returning to [entity] in the future?
9. Is there anything else you'd like to share?

## Theme Classification

Classify each exit interview into primary and secondary departure reasons:

| Theme | Examples |
|-------|---------|
| **Compensation** | "Got a bigger offer," "underpaid vs. market" |
| **Career growth** | "No path forward," "same role for 3 years" |
| **Manager** | "Micromanaged," "poor communication," "unfair treatment" |
| **Culture / values** | "Doesn't match what was advertised," "toxic team" |
| **Work-life balance** | "Burnout," "too many hours," "no flexibility" |
| **Opportunity** | "Better opportunity," "dream role came available" |
| **Personal** | "Relocation," "family change," "health" |
| **Compensation + growth** | Common combo — often means total comp package |
| **Onboarding failure** | < 90-day exits citing "not what I expected" |

## Analysis Process

1. **Collect** — Gather all exit interviews for the period
2. **Tag** — Assign primary and secondary departure theme to each
3. **Count** — Frequency distribution of themes
4. **Segment** — Break down by department, manager, tenure, level
5. **Pattern** — Identify recurring themes across multiple exits
6. **Action** — Map each theme to a specific organizational lever

## Output Format

```markdown
# Exit Interview Analysis — <Entity>
**Period:** <period> | **Interviews Analyzed:** <N> | **Date:** <date>

## Departure Theme Distribution

| Theme | Count | % of Total | vs. Prior Period |
|-------|-------|-----------|----------------|
| Career growth | <N> | X% | ⬆️ Up |
| Compensation | <N> | X% | ➡️ Same |
| Manager | <N> | X% | |
| Culture | <N> | X% | |
| Opportunity | <N> | X% | |

## Key Themes and Representative Quotes

### Theme 1: <Top Theme> (<N> departures, X%)
**What they said:** *(anonymized)*
- "<Representative quote>"
- "<Representative quote>"
**Pattern:** <Description of the pattern>
**Lever:** <What organizational change could address this>

### Theme 2: <Second Theme>
[same structure]

## Manager-Attributed Patterns
<If 2+ exits cite same manager — flag for HR investigation>
**Manager:** <Name or "identified in HR review">
**Pattern:** <X> departures cited <theme> related to this manager in <period>
**Recommended action:** <HR conversation, management coaching, or escalation>

## Actionable Retention Recommendations

| Priority | Issue | Recommended Action | Owner | Timeline |
|---------|-------|-------------------|-------|---------|
| P1 | Career growth cited in 40% of exits | Implement structured career paths | HR + each manager | 90 days |
| P2 | Compensation lagging market | Conduct salary benchmarking | Finance + HR | 60 days |

## Re-Hire Eligible Departures
Employees who left on good terms and indicated openness to returning:
- <Name> (<role>, left <date>) — cited career opportunity; "would consider returning"
```

## Output Contract
- All quotes anonymized before sharing beyond HR
- Manager patterns always flagged — not buried in aggregate data
- Actionable recommendations always tied to specific exit themes — no generic "improve culture" advice
- HITL required before manager-specific findings are shared with anyone outside HR and Dr. Lewis

## System Dependencies
- **Reads from:** Exit interview responses (provided), HRIS departure data
- **Writes to:** Nothing (analysis report for HITL review)
- **HITL Required:** Dr. Lewis and HR lead review manager-specific findings; legal review if pattern suggests discrimination or hostile environment

## Test Cases
1. **Golden path:** 8 exit interviews over a quarter → theme analysis showing career growth (38%) and manager (25%) as top causes, one manager pattern identified
2. **Edge case:** Single exit interview → individual analysis noting it's insufficient for pattern conclusions; recommend revisiting when N ≥ 5
3. **Adversarial:** Request to share specific quotes that could identify the employee to their manager → refuses, provides only anonymized themes and representative paraphrased quotes

## Audit Log
Exit interview analyses retained by entity and period. Individual interview responses retained in HR records only.

## Deprecation
Retire when HRIS or engagement platform includes automated exit survey analysis with theme detection and retention analytics.
