---
name: hr-engagement-analyzer
description: "Measure and analyze employee engagement. Use when the user says 'employee engagement', 'team morale', 'engagement survey', 'pulse survey', 'how is the team feeling', 'team engagement', 'employee sentiment', 'morale check', 'measure team health', 'employee satisfaction', 'engagement score', 'how engaged is the team', or 'team culture assessment'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--format <pulse-survey|annual|manager-rounding>] [--period <current-quarter|annual>]"
---

# HR Engagement Analyzer

Measure and analyze employee engagement at MBL portfolio companies — understanding how motivated, committed, and satisfied the team is, and where the organization needs to improve. Engagement is measured because it predicts what's coming: low engagement precedes turnover, performance decline, and client impact. High engagement is one of the strongest predictors of retention, productivity, and team output. At MBL portfolio scale, a 3-question pulse survey every quarter gives more useful data than an annual 50-question survey no one reads.

## When to Use
- Quarterly pulse — 3-5 questions; fast; specific; action-oriented
- Annual engagement assessment — broader view; benchmarked against prior year
- Following a significant change (leadership change, layoffs, restructuring)
- Turnover is higher than expected and the root cause is unclear
- Matt Mathison asks "how is the team at [Company] doing?"
- A manager reports low team morale but can't identify the specific driver

## Engagement Measurement Framework

```
Three measurement formats:

1. QUARTERLY PULSE (recommended default):
   Format: 3-5 anonymous questions; takes 3-5 minutes
   Questions: Consistent across quarters (enables trending)
   Distribution: Email or form tool
   Analysis: Dr. Lewis summarizes; shared with CEO + Matt Mathison; action identified
   Cost: Free with Google Forms / TypeForm / SurveyMonkey

2. ANNUAL SURVEY (once/year, more comprehensive):
   Format: 10-15 questions; takes 10 minutes
   Questions: Mix of consistent (trend tracking) and topic-specific (current issues)
   Benchmarking: Compare to prior year; industry benchmarks if available
   Analysis: Dr. Lewis + CEO review; action planning session

3. MANAGER ROUNDING (always ongoing):
   Dr. Lewis conducts brief (15-min) informal conversations with 2-3 employees per quarter
   Not a survey — a conversation; elicits qualitative insight surveys miss
   Focus: What's working well? What's getting in the way? What's one thing we could do better?

Engagement scoring:
   Responses on 1-5 scale; "eNPS" format where applicable (promoters vs. detractors)
   Target: Team average ≥3.8 / 5.0; eNPS ≥+20
   
Key engagement drivers at MBL portfolio companies:
   - Manager relationship (biggest driver at small company scale)
   - Role clarity (do I know what I'm supposed to do?)
   - Recognition (do I feel valued for my contributions?)
   - Growth (am I developing?)
   - Mission (do I believe in what the company is doing?)
```

## Output Format

```markdown
# Employee Engagement Report — <Company Name>
**Period:** [Q[N] / Annual — YYYY] | **Date:** <Date>
**Format:** [Pulse survey / Annual / Manager rounding]
**Response rate:** [N responses / N employees = X%]
**Prepared by:** Dr. John Lewis | **For:** [CEO / Matt Mathison]

---

## TL;DR

Engagement score: [X.X]/5.0 | eNPS: [+/-X]
Biggest strength: [1 sentence]
Primary concern: [1 sentence]
Action to take this quarter: [Specific — not "improve engagement generally"]
Matt Mathison awareness needed: [Yes — score below threshold / No]

---

## Survey Questions and Results

| Question | Score (1-5 avg) | vs. Prior quarter | Notes |
|---------|----------------|-----------------|-------|
| "I know what is expected of me in my role." | [X.X] | [+/-X.X] | [Key themes from responses] |
| "My manager helps me do my best work." | [X.X] | | |
| "I feel recognized for my contributions." | [X.X] | | |
| "I see opportunities to grow and develop here." | [X.X] | | |
| "I would recommend [Company] as a great place to work." | [X.X] | | Promoters: [N] / Neutrals: [N] / Detractors: [N] |

**Overall engagement score:** [X.X]/5.0 | **Trending:** ↑ Up / → Flat / ↓ Down

---

## eNPS (Employee Net Promoter Score)

"On a scale of 0-10, how likely are you to recommend [Company] as a place to work to a friend or colleague?"

| Category | Count | % |
|---------|-------|---|
| Promoters (9-10) | [N] | [X%] |
| Neutrals (7-8) | [N] | [X%] |
| Detractors (0-6) | [N] | [X%] |

**eNPS:** [Promoters% - Detractors%] = [+/-X]

eNPS benchmarks: <0 = at risk; 0-20 = average; 20-40 = good; >40 = excellent

---

## Open Response Themes

**What's working well (key themes from open responses):**
1. [Theme — e.g., "Team collaboration is strong; multiple mentions of feeling supported by colleagues"]
2. [Theme]
3. [Theme]

**What could be better (key themes):**
1. [Theme — e.g., "Uncertainty about growth opportunities — 5 of 8 responses mentioned unclear advancement path"]
2. [Theme]
3. [Theme]

**Representative quotes (anonymized):**
> "[Direct quote from a survey response — positive]"
> "[Direct quote — constructive]"

---

## Manager Rounding Insights (qualitative)

Dr. Lewis spoke with [N] employees this quarter ([Names redacted — roles only]):

**What's working:** [Themes from rounding conversations]
**What's not working:** [Themes]
**Systemic insight (what surveys don't capture):** [Something the conversations revealed that the survey missed]

---

## Engagement Score Trend

| Quarter | Score | eNPS | Key change |
|---------|-------|------|-----------|
| [Q-4] | [X.X] | [X] | |
| [Q-3] | [X.X] | | |
| [Q-2] | [X.X] | | |
| [Q-1] | [X.X] | | |
| **Current** | **[X.X]** | **[X]** | |

---

## Actions

| Priority | Action | Owner | Timeline |
|---------|--------|-------|---------|
| 1 | [Specific action tied to lowest-scoring dimension] | [Owner] | [Date] |
| 2 | [Specific action] | | |
| 3 | [Celebrate and reinforce what's working well — name it explicitly] | | |

**What we are NOT doing based on this survey:**
[Explicit decision about what won't change — so employees know their feedback was heard and a decision was made, even if the decision was "no change"]

---

## Matt Mathison Brief (3 sentences)

Engagement at [Company] for [Q/Year]: [Score and trend]. Biggest strength: [1 sentence]. Priority action: [1 sentence — what we're doing].
```

## Output Contract
- Response rate must be meaningful — a 30% response rate produces unreliable data; Dr. Lewis targets 75%+ response rate; if a survey is going out with mandatory anonymity, the invitation is sent from a credible source (Dr. Lewis or CEO) with a clear explanation of why the data matters; reminder sent on Day 5 to non-respondents; anonymous surveys are truly anonymous (use a tool that doesn't track who responded)
- Action required after every survey — a survey with no action makes future surveys less credible ("we did a survey last year and nothing happened"); every engagement report includes at least one specific action; the "what we are NOT doing" section makes explicit that the feedback was heard even when the decision is no change — this builds trust
- Scores below threshold trigger Matt Mathison notification — overall engagement below 3.0/5.0 or eNPS below 0 requires Matt Mathison awareness; this is a retention risk signal; Dr. Lewis provides a 3-sentence brief and recommended action
- Manager rounding supplements surveys — surveys capture what employees think when asked a question; manager rounding captures what employees volunteer when given a safe space to talk; the qualitative insight from rounding often surfaces things surveys miss (specific leadership behaviors, structural issues, team dynamics)
- Open responses are anonymized — individual open response quotes are never attributed to a specific person in the report; if the team is small enough that a specific comment could be identified by writing style or context, Dr. Lewis paraphrases rather than quotes directly; the promise of anonymity must be kept or engagement with future surveys collapses
- HITL required: Dr. Lewis designs, distributes, and analyzes surveys; manager rounding conducted by Dr. Lewis; CEO reviews results before Matt Mathison brief; Matt Mathison receives brief when score below threshold or significant trend change; action items owned by manager with Dr. Lewis follow-up

## System Dependencies
- **Reads from:** Survey responses (anonymous), manager rounding notes, exit interview themes, prior engagement reports
- **Writes to:** Engagement report (SharePoint/HR/<Company>/People Analytics/); Matt Mathison brief (if threshold triggered); action item tracker; manager debrief notes
- **HITL Required:** Dr. Lewis designs and analyzes; CEO reviews before distribution; Matt Mathison receives brief when score <3.0 or eNPS <0; action items tracked at next quarter

## Test Cases
1. **Golden path:** Allevio Q2 pulse survey (18 employees, 14 responses = 78%) → Role clarity: 4.1 (strong); Manager effectiveness: 3.8 (adequate); Recognition: 2.9 (below threshold); Growth: 2.6 (low); eNPS: +7 (average); Overall: 3.5; Trend: flat vs. Q1; Open themes: "collaboration is great" (5 mentions), "I don't know if I'm doing a good job unless something goes wrong" (4 mentions), "I don't see how to move up" (6 mentions); Action 1: Manager feedback training — recognition dimension below 3.0 signals employees rarely hear specific, positive feedback (implement 1:1 feedback agenda with positive recognition requirement); Action 2: Growth path conversations — 6 of 14 mentioned unclear advancement; CEO to have a brief career conversation with each direct report this quarter; Manager briefed: "Your team is engaged on collaboration but wants more recognition and growth clarity. Here's what I need from you this quarter: [specific]"; Matt Mathison: brief sent — not below threshold but growth trend is concerning
2. **Edge case:** The engagement score drops from 4.1 to 2.8 in one quarter → significant drop requires investigation, not just the standard analysis; Dr. Lewis conducts same-week manager rounding with 3-5 employees; looks for what changed this quarter: leadership change? layoff? major policy change? broken promise? The survey data tells you what changed (the score); the rounding tells you why; Matt Mathison notified immediately upon seeing the drop; preliminary finding presented within 5 business days
3. **Adversarial:** A CEO says "don't do engagement surveys — employees will ask for things we can't deliver and then be disappointed" → the problem they're describing is creating false expectations, not surveys; respond: "The solution is how we communicate about the survey, not whether we do it. We tell employees: 'This survey helps us understand how to make [Company] better. We will share the results and tell you what we're doing about them — including what we decided not to change and why.' The survey creates trust when we follow through. The absence of a survey doesn't prevent disappointment — it just means you're operating without information about what your team actually thinks."

## Audit Log
All engagement survey results retained by period and company. Response rates documented. Action items and completion tracked. Manager rounding notes retained. eNPS trends retained. Matt Mathison notifications retained with dates and scores.

## Deprecation
Retire when portfolio companies have HR managers who own engagement measurement with automated survey tools, real-time dashboards, and manager training on engagement drivers that don't require Dr. Lewis to design, run, and analyze each engagement assessment manually.
