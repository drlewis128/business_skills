---
name: meet-topic-trend-tracker
description: "track recurring meeting topics, topic trend analysis from meetings, what topics come up in meetings, topic frequency analysis, meeting topic heat map, entity topic trends, Matt Mathison topic briefing, negative topic trends from meetings, risk topics in meetings, positive meeting topic trends, progress signals from meetings, quarterly topic trend report, meeting topic tagging, topic extraction from transcripts, leadership topic patterns, recurring themes in meetings, topic trend over time, meeting theme analysis, topic monitoring from Krista transcripts, dominant leadership conversation themes"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[time period, e.g. 'Q2 2026' or 'last 30 days', optional entity filter]"
---

# Meeting Topic Trend Tracker

This skill analyzes meeting transcript data from Krista.ai to identify recurring topics, track frequency over time, and surface trends — both risks emerging and progress signals — across MBL Partners and its portfolio companies. Matt Mathison receives a weekly topic briefing identifying what themes are dominating leadership conversations and whether those themes are trending in the right direction.

## When to Use

- The weekly meeting intelligence cycle includes a topic trend update for Matt Mathison
- Dr. Lewis wants to understand what topics are consuming the most leadership meeting time across entities
- A topic has appeared in 3 or more consecutive weeks and needs to be assessed as a systemic signal vs. a transient discussion
- The quarterly topic trend report is due for Matt Mathison and MBL leadership

## Topic Trend Tracker Framework

```
MEETING TOPIC TREND TRACKER — [PERIOD]
=======================================

SECTION 1: TOPIC EXTRACTION SUMMARY
  - Period analyzed: [start date] to [end date]
  - Total meetings analyzed: [N]
  - Total unique topics extracted: [N]
  - Topic tagging methodology: [keyword extraction / AI classification / manual tags]
  - Entities covered: [MBL / Allevio / HIVE / Column6 / All]

SECTION 2: TOP TOPICS BY FREQUENCY
  | Rank | Topic | Mentions | Meetings | Entities | Trend (vs. prior period) |
  |------|-------|----------|----------|----------|--------------------------|
  | 1    | ...   | ...      | ...      | ...      | ↑ / ↓ / NEW / stable     |
  (Top 10 topics by mention frequency)

SECTION 3: TOPIC TREND ANALYSIS
  For each top-5 topic:
  - Topic: [name]
  - Definition in meeting context: [what does this topic mean when it comes up?]
  - Frequency trend: [week-over-week or month-over-month chart in text format]
    Week 1: ██░░░░ 12 mentions
    Week 2: ████░░ 22 mentions
    Week 3: ██████ 34 mentions
  - Interpretation: [is this topic escalating, stabilizing, resolving?]
  - Entity concentration: [which entities drive this topic?]
  - Recommended action: [Dr. Lewis / Matt Mathison attention required? YES / NO + rationale]

SECTION 4: ENTITY-LEVEL TOPIC HEAT MAP
  | Topic          | MBL | Allevio | HIVE | Column6 |
  |----------------|-----|---------|------|---------|
  | [Topic 1]      | HOT | WARM    | COLD | COLD    |
  | [Topic 2]      | COLD| HOT     | COLD | WARM    |
  (HOT = top-3 topic for entity; WARM = top-10; COLD = mentioned but not dominant)

SECTION 5: NEGATIVE TREND SIGNALS (RISK TOPICS)
  For each risk topic trending upward:
  - Topic: [name]
  - Risk category: [Financial / Operational / Compliance / People / Strategic]
  - Trend: [+N% mentions vs. prior period]
  - Entity: [which entity or entities]
  - Assessment: [is this a systemic risk signal or a transient spike?]
  - Recommended Matt Mathison action

SECTION 6: POSITIVE TREND SIGNALS (PROGRESS TOPICS)
  For each progress topic trending in the right direction:
  - Topic: [name]
  - Progress signal: [what are meetings saying about this topic that indicates progress?]
  - Entity: [which entity or entities]
  - Recommended recognition or reinforcement action

SECTION 7: MATT MATHISON TOPIC BRIEFING
  - BLUF: [2 sentences — what themes are dominating leadership conversations this week/month?]
  - Top 3 topics requiring Matt's attention: [with recommended action for each]
  - Top 3 positive signals: [with brief rationale]
  - Emerging topics (new this period, not yet ranked): [list]
  - Topics resolving (declining significantly): [list]

SECTION 8: QUARTERLY TOPIC TREND REPORT (WHEN APPLICABLE)
  - Quarter in review: [Q# YYYY]
  - Top 5 topics of the quarter
  - Topics that emerged and resolved within the quarter
  - Persistent topics (present for 3+ months): [flag for strategic attention]
  - Quarter-over-quarter topic shift: [what moved up; what moved down]
  - Matt Mathison quarterly topic review recommendations
```

## Output Format

```markdown
## Topic Trend Brief — [Period]

**BLUF:** [2 sentences — dominant themes and direction]

**Top Topics This Period:**
| Rank | Topic | Frequency | Trend |
|------|-------|-----------|-------|
| 1    | ...   | ...       | ↑     |

**Risk Signals (Topics Trending Up Negatively):**
- [Topic]: [assessment + recommended action]

**Progress Signals (Topics Trending Positively):**
- [Topic]: [what's improving + entity]

**Entity Heat Map:**
| Topic | MBL | Allevio | HIVE | Column6 |
|-------|-----|---------|------|---------|

**Emerging This Period:** [new topics not previously seen]

**Resolving This Period:** [topics declining significantly]

**Matt Mathison — Attention Required:**
1. [Topic + action]
2. [Topic + action]
3. [Topic + action]
```

## Output Contract

- **Topic frequency is a signal, not a verdict.** A topic appearing frequently in meetings can indicate a problem, active management of a challenge, or healthy strategic focus — the tracker does not interpret frequency alone as negative. Every trending topic includes an interpretation section that considers whether the frequency reflects unresolved tension, productive engagement, or a topic that is increasing because it is being addressed, not because it is worsening. Matt Mathison needs context to decide whether a frequently discussed topic demands his intervention or his confidence that the team is handling it.

- **Risk topics are escalated based on trajectory, not just volume.** A topic that appears 5 times in one week and then drops is different from a topic that appears 5 times in week one and 10 times in week two. The trend direction — not the absolute count — determines whether a risk topic escalates to Matt Mathison's attention section. A topic that is declining is a potential resolution signal; a topic that is accelerating is an early warning signal regardless of its current absolute frequency.

- **The entity heat map is the primary tool for identifying cross-portfolio topic drift.** When the same risk topic appears as HOT across multiple portfolio entities simultaneously, it is a portfolio-level signal that may require a coordinated response from Matt Mathison rather than entity-level escalations. Dr. Lewis reviews the heat map each week specifically looking for cross-entity topic alignment as a portfolio management input — this is one of the highest-value outputs the Meeting Intelligence program produces.

## System Dependencies

### Reads from
- Krista.ai transcripts (all entities, specified period)
- Prior period topic trend report (for trend calculation)
- Entity tagging from meeting metadata (to assign topics to entities)

### Writes to
- SharePoint: /Meeting Intelligence/Topic-Trends/[Period]-topic-trend-report.md
- Weekly MBL summary (Matt Mathison topic section)
- Dr. Lewis risk topic alert queue (when risk topics cross escalation threshold)

### HITL Required
- Dr. Lewis: reviews risk topic escalations before they reach Matt Mathison
- Matt Mathison: receives weekly topic briefing and quarterly topic trend report; no approval required for distribution of topic trends (no confidential data in topic-level outputs)

## Test Cases

1. **Golden path:** 30-day period with 60 meetings across all entities — tracker produces ranked topic list, identifies 2 risk signals (both trending up), 3 progress signals, entity heat map shows Column6 and Allevio both focused on compliance topics (cross-portfolio signal), Matt Mathison briefed with recommended cross-entity compliance review.
2. **Edge case:** A single meeting with an unusually high number of topic mentions (e.g., a 3-hour strategy offsite covering 20 topics in depth) skews the frequency analysis — tracker must weight by meeting rather than by raw mention count to avoid artificially inflating one-meeting topics into the trending list.
3. **Adversarial:** A topic that sounds benign in isolation ("staffing") appears at high frequency but the meeting context reveals it is consistently associated with negative sentiment (turnover concerns, performance issues). Tracker must surface the sentiment context alongside the frequency count so Matt Mathison receives the risk signal, not just a neutral topic frequency statistic.

## Audit Log

Every topic trend report is stored in SharePoint with the generation timestamp, source meeting IDs analyzed, topic extraction methodology, and the Dr. Lewis review notation for any risk escalations. Topic trend outputs do not contain confidential deal or LP data and have a lower distribution restriction than entity briefs, but the audit log still tracks all distribution events for the weekly Matt Mathison topic briefing.

## Deprecation

This skill is deprecated when MBL implements a meeting analytics platform with native topic trend analysis, entity heat mapping, and automated Matt Mathison briefing integration. Deprecation requires a 60-day parallel run confirming the replacement platform's topic classification accuracy meets or exceeds this skill's output quality, as assessed by Dr. Lewis against three months of historical topic trend reports.
