---
name: culture-pulse-analyzer
description: "Analyze culture and employee sentiment signals to surface retention and engagement risks. Use when the user says 'culture pulse', 'employee sentiment', 'team morale', 'culture health', 'how is the team doing', 'retention risk', 'engagement survey', or 'what is the vibe on the team'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--source <survey|1:1-notes|exit-data|observation>]"
---

# Culture Pulse Analyzer

Analyze culture and employee sentiment signals to surface retention risks, engagement gaps, and leadership actions. Culture problems are always easier to fix before people leave.

## When to Use
- After quarterly pulse surveys (analyze results)
- When exit interview data is available
- When a manager notices morale shifts
- During post-acquisition integration (culture clash early warning)
- Before a significant organizational change (baseline assessment)

## Signal Sources

### Quantitative Signals
- Pulse survey scores (eNPS, satisfaction scores)
- Voluntary turnover rate (by department, by level)
- Time-to-fill for internal vacancies (low interest = cultural concern)
- Promotion rates (equity signal)
- 1:1 completion rates (manager health signal)

### Qualitative Signals
- Exit interview themes
- 1:1 conversation patterns (what's consistently coming up?)
- Glassdoor or social feedback
- Direct observation (energy in meetings, informal interactions)
- Customer-facing staff mood (often reflects internal culture)

## THRIVE Culture Assessment

Evaluate culture against each THRIVE value:

| Value | Cultural Indicator | Concern Signal |
|-------|------------------|----------------|
| T — Truth | Honest conversation, problems raised early | Problems hidden, "everything is fine" culture |
| H — Hustle | Results orientation, urgency, accountability | Meetings about meetings, activity not output |
| R — Respect | People treated with dignity regardless of level | Micromanagement, dismissiveness, bullying |
| I — Integrity | Doing right even when inconvenient | Ethical shortcuts, covering mistakes |
| V — Value | Work makes a difference, clear impact | "Why are we doing this?" culture |
| E — Enjoy | Energy, engagement, pride in the work | Presenteeism, checked-out attitude |

## Risk Framework

| Signal | Risk Level | Typical Lead Time |
|--------|-----------|------------------|
| eNPS below 10 | 🔴 High | 3-6 months before departure wave |
| Key employee actively interviewing | 🔴 Immediate | Act now |
| Turnover > 20% annualized | 🔴 High | Structural issue |
| Manager with 3+ exits in 12 months | 🔴 High | Leadership problem |
| Quiet quitting indicators | 🟡 Medium | 6-12 months |
| Minor survey score decline | 🟡 Monitor | Trend dependent |

## Output Format

```markdown
# Culture Pulse Report — <Entity>
**Period:** <period> | **Data sources:** <sources> | **Date:** <date>
**CONFIDENTIAL — Tier 1 Only**

## Summary
eNPS: <score> | Turnover rate (annualized): X% | Voluntary: X%
**Overall culture health:** 🟢 Healthy / 🟡 Monitor / 🔴 Needs attention

## THRIVE Assessment
| Value | Signal Strength | Evidence |
|-------|----------------|---------|
| T | Strong/Neutral/Concern | <evidence> |
...

## Retention Risks
| Employee / Segment | Risk Level | Signal | Recommended Action |
|-------------------|----------|--------|-------------------|
| <Senior IC in Dept X> | 🔴 High | 3 missed 1:1s, minimal participation | Manager 1:1, stay conversation |

## Themes from Qualitative Data
1. <Theme 1 — specific pattern observed>
2. <Theme 2>

## Recommended Actions (Priority Order)
1. <Action with named owner>
2. <Action>

## What's Working (Don't Break It)
<Specific culture strengths to preserve during change>
```

## Output Contract
- Individual employee risk flags handled with extreme care — confidential, Tier 1 only
- Never identifies individuals in aggregate reports without their awareness
- Recommended actions are specific and owned — not vague "do better on culture"
- CONFIDENTIAL — culture and employee sentiment data is sensitive

## System Dependencies
- **Reads from:** Survey data, exit interview notes, 1:1 observation inputs (provided)
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison and HR lead review before any action is taken on individual retention risks
- **Data sensitivity:** CONFIDENTIAL — Tier 1 only

## Test Cases
1. **Golden path:** Survey data with mixed eNPS and 3 clear themes → actionable report with retention flags and leadership recommendations
2. **Edge case:** No survey data — only 1:1 notes → analyzes qualitative signals only, flags limited data confidence
3. **Adversarial:** Report request that would identify specific employees to management without their awareness → flags privacy concern, anonymizes findings above individual level

## Audit Log
Culture pulse reports retained by entity and period. Action items tracked to completion.

## Deprecation
Retire when HRIS includes employee engagement and culture monitoring with integrated pulse surveys.
