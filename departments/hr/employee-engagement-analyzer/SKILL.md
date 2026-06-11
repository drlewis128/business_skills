---
name: employee-engagement-analyzer
description: "Analyze employee engagement survey data and surface actionable insights. Use when the user says 'employee engagement', 'engagement survey', 'engagement results', 'how engaged is the team', 'pulse survey analysis', 'eNPS', 'employee satisfaction', or 'morale data'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-MM>] [--survey-type <pulse|annual|enps>]"
---

# Employee Engagement Analyzer

Analyze employee engagement survey results to surface what's working, what's broken, and what needs immediate action. Survey data without action drives disengagement — collecting feedback you don't act on is worse than not asking.

## When to Use
- After annual engagement survey results are available
- After quarterly pulse surveys
- When eNPS scores are declining
- Before a retention or culture initiative (establish baseline first)
- Post-acquisition (assess inherited workforce engagement)

## Survey Types

### Annual Engagement Survey
Full-length (~30 questions), comprehensive. Covers all engagement dimensions. Run once per year.

### Pulse Survey
Short (5-10 questions), frequent. Tracks specific dimensions or response to initiatives. Run quarterly or monthly.

### eNPS (Employee Net Promoter Score)
Single question: "On a scale of 0-10, how likely are you to recommend [entity] as a great place to work?"
- Promoters (9-10): Engaged advocates
- Passives (7-8): Satisfied but not advocates
- Detractors (0-6): Disengaged or actively negative
- eNPS = % Promoters − % Detractors (range: -100 to +100)
- Benchmark: > 0 is positive; > 30 is strong; > 50 is excellent

## Engagement Dimensions

| Dimension | What It Measures |
|-----------|----------------|
| **Role clarity** | Do employees understand their job and how it contributes? |
| **Manager effectiveness** | Do employees feel supported, coached, and valued by their manager? |
| **Team collaboration** | Do teams work well together and trust each other? |
| **Growth opportunities** | Do employees see a path forward in the organization? |
| **Recognition** | Do employees feel their contributions are recognized? |
| **Compensation fairness** | Do employees believe they're paid fairly? |
| **Workload / balance** | Is the work sustainable without burnout? |
| **Values alignment** | Do employees believe in the company's mission and values (THRIVE)? |
| **Psychological safety** | Do employees feel safe speaking up without fear of retaliation? |

## Output Format

```markdown
# Engagement Analysis — <Entity>
**Survey:** <type> | **Period:** <period> | **Response Rate:** <X>%
**Date Analyzed:** <date>

## Top-Line Results

**eNPS:** <score> (Promoters: X%, Passives: X%, Detractors: X%)
**Overall Engagement Score:** <X>/100
**vs. Prior Period:** <+/- N points>

## Dimension Scores

| Dimension | Score | vs. Prior | Flag |
|---------|-------|----------|------|
| Manager Effectiveness | 72/100 | ⬆️ +4 | — |
| Growth Opportunities | 54/100 | ⬇️ -8 | ⚠️ Low |
| Recognition | 61/100 | ➡️ 0 | — |
| Psychological Safety | 45/100 | ⬇️ -12 | 🔴 Critical |

## Critical Items (Score < 50 or Sharp Decline)

### Psychological Safety (45/100, down 12 points)
**What this means:** Employees do not feel safe speaking up, raising concerns, or taking risks without fear of negative consequences.
**Representative comments (anonymized):**
- "I don't feel like I can question decisions without it being held against me."
**Recommended action:** Leadership training on psychological safety; anonymous concerns channel; manager accountability review

## Segment Analysis

| Department | Score | Key Gap |
|-----------|-------|---------|
| <Dept> | 78/100 | — |
| <Dept> | 49/100 | Growth, recognition |

## Manager-Level Patterns
<Department or manager proxy patterns if survey design allows — handle with caution>

## 90-Day Action Plan

| Priority | Dimension | Action | Owner | Deadline |
|---------|---------|--------|-------|---------|
| P1 | Psychological Safety | All-hands transparency session + feedback channel | Dr. Lewis | <30 days> |
| P2 | Growth | Career path framework rollout | HR | <90 days> |

## Communication Plan
Survey results shared with employees by: <date>
Actions communicated by: <date>
*Employees must hear the results and what you're doing about them.*
```

## Output Contract
- Any dimension < 50 or declining > 10 points = Critical flag
- Manager patterns always reviewed before public sharing
- Action plan always included — results without actions should not be distributed
- eNPS always calculated and compared to prior period
- HITL required before any results are shared with employees or leadership

## System Dependencies
- **Reads from:** Survey response data (provided or from engagement platform)
- **Writes to:** Nothing (analysis for HITL review and action planning)
- **HITL Required:** Dr. Lewis and HR lead review before sharing results; manager-specific data shared only with Dr. Lewis

## Test Cases
1. **Golden path:** Annual survey with 85% response rate → dimension analysis, eNPS calculation, critical flag on psychological safety with specific actions
2. **Edge case:** Response rate < 40% → flags low response rate as data quality issue, notes that results may not be representative, recommends re-survey after communication about purpose
3. **Adversarial:** Request to share unfiltered individual comments with managers → refuses, provides only anonymized themes and representative quotes to protect respondent confidentiality

## Audit Log
Survey results retained by entity and period. Action plan commitments tracked for follow-through.

## Deprecation
Retire when engagement platform (Lattice, Culture Amp, Glint) provides native analysis with real-time dashboards and action plan tracking.
