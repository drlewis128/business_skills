---
name: win-loss-analyzer
description: "Analyze won and lost deals to identify patterns and improve sales effectiveness. Use when the user says 'win loss', 'win/loss analysis', 'why did we lose that deal', 'why did we win', 'deal analysis', 'lost deal analysis', 'what made us win', or 'sales effectiveness analysis'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-QN>] [--outcome <won|lost|both>] [--n <deals>]"
---

# Win/Loss Analyzer

Analyze won and lost deals to surface patterns, identify sales effectiveness gaps, and sharpen the sales process. Most companies analyze wins but not losses — that's half the data.

## When to Use
- After any significant lost deal (individual deal post-mortem)
- Quarterly win/loss review (look for patterns across multiple deals)
- When win rate is declining
- Before a sales playbook update (ground it in data)
- When a specific competitor is winning against you consistently

## Data to Collect Per Deal

### Deal Facts
- Deal value
- Time in pipeline (total days from Stage 1 to Close)
- Prospect company profile (industry, size)
- Decision-maker(s) involved
- Competitor(s) evaluated

### Win/Loss Attribution (Root Cause)

| Category | Win Signals | Loss Signals |
|---------|-----------|-------------|
| **Product fit** | "You solved our exact problem" | "Missing a feature we needed" |
| **Pricing** | "Best value for what we get" | "Too expensive vs. alternatives" |
| **Competitor** | "You were clearly better than X" | "X had [specific advantage]" |
| **Process** | "Quick and easy to work with" | "Too slow / too complex" |
| **Champion** | "Our internal champion drove this" | "Lost our champion to a role change" |
| **Timing** | "Perfect timing for us" | "Budget freeze / project delayed" |
| **Trust / relationship** | "We trust your team" | "We went with someone we knew" |
| **Decision authority** | "Met the right decision-maker" | "Never got to the economic buyer" |

## Analysis Framework

### Pattern Analysis (Batch of 10+ Deals)
Look for:
1. **Win rate by segment** — Do we win more in certain industries, sizes, or verticals?
2. **Win rate by competitor** — Do we consistently win or lose vs. specific competitors?
3. **Sales cycle time** — Do wins have shorter or longer cycles than losses?
4. **Stage where deals die** — Are losses happening at proposal? Demo? Close?
5. **Rep patterns** — Are wins and losses distributed across reps or concentrated?

### Individual Deal Analysis
For each deal:
1. What was the primary reason for the outcome?
2. What was the secondary reason?
3. Was the outcome inevitable or was it within our control?
4. What would we do differently?

## Output Format

```markdown
# Win/Loss Analysis — <Entity>
**Period:** <period> | **Deals Analyzed:** <N> wins, <N> losses | **Date:** <date>

## Summary Metrics

| Metric | Value |
|--------|-------|
| Overall win rate | X% |
| Win rate vs. prior period | <+/- N points> |
| Avg deal size — wins | $<N> |
| Avg deal size — losses | $<N> |
| Avg sales cycle — wins | <N> days |
| Avg sales cycle — losses | <N> days |

## Win Rate by Segment

| Segment | Win Rate | Trend |
|---------|---------|-------|
| <Industry A> | X% | ⬆️ |
| <Industry B> | X% | ⬇️ |

## Win Rate by Competitor

| Competitor | Competed | Won | Lost | Win Rate |
|-----------|---------|-----|------|---------|
| <Name> | <N> | <N> | <N> | X% |
| No competitor | <N> | <N> | <N> | X% |

## Top Win Factors

1. **<Factor>** — Cited in X% of wins
2. **<Factor>** — Cited in X% of wins

## Top Loss Factors

1. **<Factor>** — Cited in X% of losses
2. **<Factor>** — Cited in X% of losses

## Where Deals Die (Stage Analysis)

| Stage | Deals Entering | Deals Lost | Conversion |
|-------|--------------|-----------|-----------|
| Discovery | <N> | <N> | X% |
| Demo | <N> | <N> | X% |
| Proposal | <N> | <N> | X% |
| Close | <N> | <N> | X% |

## Key Insights and Actions

1. **Insight:** <Pattern found>
   **Action:** <Specific sales process change, training, or product feedback>

2. **Insight:** <Pattern found>
   **Action:** <Recommendation>
```

## Output Contract
- Win rate always benchmarked against prior period — no isolated data point
- Loss factors always separated from win factors — both are required to be useful
- Stage funnel analysis always shows where deals die — directs coaching focus
- HITL required before win/loss data is shared in board reporting or used to drive comp changes

## System Dependencies
- **Reads from:** CRM deal records, close notes, rep notes (provided)
- **Writes to:** Nothing (analysis for HITL review)
- **HITL Required:** Dr. Lewis reviews before using data to make rep-level decisions; sales manager uses insights to update playbook

## Test Cases
1. **Golden path:** 20-deal quarter analysis → win rate 42%, top loss reason is pricing (36% of losses), specific competitor winning with better integrations, 3 action items
2. **Edge case:** < 5 deals to analyze → surfaces that sample is too small for pattern conclusions, recommends anecdotal analysis with explicit caveat
3. **Adversarial:** Request to attribute all losses to external factors → requires honest attribution, distinguishes "controllable" from "uncontrollable" loss reasons explicitly

## Audit Log
Win/loss analysis retained by entity and period. Deal-level attribution recorded in CRM.

## Deprecation
Retire when CRM + revenue intelligence platform (Gong, Chorus) provides automated win/loss analysis from call transcripts and deal data.
