---
name: hr-engagement-analyzer
description: "Measure and improve employee engagement at MBL Partners portfolio companies. Use when the user says 'employee engagement', 'team morale', 'engagement survey', 'pulse survey', 'how is the team feeling', 'team engagement', 'employee sentiment', 'morale check', 'measure team health', 'employee satisfaction', 'engagement score', 'how engaged is the team', 'team culture assessment', 'eNPS', 'employee net promoter score', 'engagement driver', 'engagement drop', 'why is morale low', 'team burnout', 'employee burnout', 'disengaged employee', 'low morale', 'improving morale', 'engagement initiative', 'engagement action plan', 'recognition program', 'manager effectiveness on engagement', or 'engagement analytics'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <survey|analyze|plan|present>] [--format <enps|pulse|annual|quarterly>]"
---

# HR Engagement Analyzer

Design and administer employee engagement surveys, analyze results, and build action plans — connecting engagement scores to business outcomes and ensuring entity leaders act on the data. Engagement is a leading indicator of attrition, productivity, and THRIVE culture health; portfolio companies that ignore engagement signals until employees leave are paying replacement costs that a 2-hour engagement review every quarter would have prevented.

## When to Use
- Quarterly or annual engagement survey cycle
- Post-major-event pulse check (acquisition; leadership change; layoff; rapid growth)
- A manager reports morale problems or Dr. Lewis detects behavioral signals
- Pre-meeting prep for entity CEO performance conversation

## Engagement Measurement Framework

```
SURVEY INSTRUMENTS:

  eNPS (QUARTERLY — primary instrument):
    Single question: "How likely are you to recommend [Entity] as a great place to work? (0-10)"
    Promoters: 9-10 | Passives: 7-8 | Detractors: 0-6
    eNPS = % Promoters - % Detractors
    Healthy target: eNPS ≥ 30 (portfolio company context)
    Concerning: eNPS < 10 or declining >15 points quarter-over-quarter → Dr. Lewis action
    
  DRIVER SURVEY (ANNUAL — 15 questions, 5 categories):
    Manager effectiveness: "My manager gives me useful feedback"; "I feel supported by my manager"
    Role clarity: "I know what's expected of me"; "I have the resources to do my job well"
    Growth: "I have opportunities to learn and develop"; "I can see a clear career path"
    Culture: "Our values are lived, not just stated"; "I feel respected by my colleagues"
    Connection: "I feel proud to work here"; "I would recommend this company to a friend"
    Scale: 1 (strongly disagree) to 5 (strongly agree)
    Target: ≥3.8 on all categories (anything below 3.5 = action required)
    
  PULSE CHECK (POST-EVENT — 3 questions, within 1 week of event):
    Used after: acquisitions; leadership changes; layoffs; restructuring; major wins or setbacks
    Questions: Clarity (do people understand what happened?); Trust (do they trust the decision?); 
      Confidence (are they confident about the future?)
    Designed to catch shock before it becomes attrition

SURVEY ADMINISTRATION:
  Anonymous: Dr. Lewis administers via email survey (Google Forms or equivalent)
  Minimum viable N for eNPS analysis: 5 respondents (below this, suppress individual data)
  Response window: 5 business days (keep it short; longer = lower response)
  Target response rate: ≥70% per entity
  Below 50% response: itself a signal — low response = low trust or high fear

ANALYSIS APPROACH:
  eNPS trend: quarter-over-quarter by entity
  Driver correlation: which driver categories correlate with eNPS? (Manager effectiveness is #1 driver)
  Manager-level cuts: are engagement scores consistent across managers?
    Significant variance by manager → manager-specific coaching (hr-coaching-guide)
  THRIVE correlation: compare engagement driver (Culture category) vs. THRIVE assessment
  Attrition correlation: compare departures in prior quarter vs. engagement score in prior quarter

ACTION PLANNING:
  Rules:
    Never share raw individual results with managers (anonymity breach)
    Aggregate results shared with entity CEO; manager-level aggregates (if N≥5) with CEO
    Always present alongside action plan — data dump without action = cynicism builder
    Action plan: 1-2 specific initiatives per low-scoring category; owner + timeline
    Close loop: communicate back to employees what is being done with the results
    "You spoke; here's what we're doing" = the most important engagement communication
    
ENTITY-SPECIFIC CONTEXT:
  Allevio: engagement affects clinical quality; disengaged care coordinators = member outcomes risk
    Watch: clinical team manager effectiveness scores closely
  HIVE: small team; anonymity may not be guaranteed with N<5; aggregate carefully
    Pulse check after WTI price drops >15% (financial stress = morale risk)
  Column6: commercial team — engagement correlates with client relationship quality
    Watch: any eNPS drop during agency renewal season (Q4)
```

## Output Format

```markdown
# Engagement Report — [Entity] — [Quarter YYYY]
**Survey type:** eNPS / Annual Driver / Pulse | **N:** [Count] | **Response rate:** [%]
**Administered by:** Dr. Lewis | **Presented to:** Entity CEO | **Date:** [Date]

---

## eNPS Summary
**Score:** [X] | **Prior quarter:** [X] | **Change:** ↑/→/↓ [X pts]
Promoters: [%] | Passives: [%] | Detractors: [%]

---

## Driver Category Scores (Annual Only)

| Category | Score (1-5) | Trend | Below 3.8? |
|---------|------------|-------|-----------|
| Manager effectiveness | X.X | ↑/→/↓ | Yes/No |
| Role clarity | | | |
| Growth | | | |
| Culture | | | |
| Connection | | | |

---

## Key Signals
- [What the data shows — 3 bullets max; specific]
- [Any manager-level variance worth noting]
- [THRIVE correlation note if applicable]

---

## Action Plan

| Action | Category addressed | Owner | Due |
|--------|------------------|-------|-----|
| [Specific initiative] | [Manager effectiveness / Culture / etc.] | [CEO / Dr. Lewis] | [Date] |

---

## Communication to Employees
[Draft of "You spoke; here's what we're doing" message — 3-4 sentences]
```

## Output Contract
- Results are presented to the entity CEO with an action plan in the same meeting — data without action creates cynicism that is harder to reverse than no survey at all; employees who fill out surveys and never hear the results or see any change learn that surveys are performative; Dr. Lewis does not send results to entity CEOs as a data package — Dr. Lewis schedules a 45-minute conversation to present results, discuss root causes, and establish a specific 1-2 initiative action plan before leaving the room
- Manager-level data is handled with care — raw individual responses are never shared; manager-level aggregate scores (if N≥5) are shared only with the entity CEO (not with the managers being scored); Dr. Lewis uses manager-level data to coach entity CEOs on where manager effectiveness investment is needed, not to rank managers in a leaderboard visible to all; this protects the anonymity commitment and prevents managers from gaming the survey
- The "You spoke; here's what we're doing" communication goes to all employees within 2 weeks of survey close — the most important communication in the engagement cycle is the one that closes the loop; Dr. Lewis drafts this communication for the entity CEO to deliver; it acknowledges what was heard (specific themes), commits to specific actions, and gives a timeline; it does not defend or explain away low scores
- HITL required: survey design → Dr. Lewis designs; results → Dr. Lewis + entity CEO; action plan → entity CEO commits; manager-level data → Dr. Lewis shares with CEO only; eNPS <10 or >15pt drop → Dr. Lewis + entity CEO urgent conversation (within 1 week); N<5 entity → Dr. Lewis suppresses individual-level data; employee communication → entity CEO delivers (Dr. Lewis drafts)

## System Dependencies
- **Reads from:** hr-thrive-culture-builder (THRIVE culture assessment — engagement correlation); hr-exit-interview (attrition patterns — lagging indicator); hr-high-performer-identifier (flight risk signals — engagement is leading indicator); hr-performance-review-cycle (manager effectiveness data — cross-reference)
- **Writes to:** Engagement report (SharePoint → HR → Engagement → [Entity] → [Quarter]); entity CEO action plan; Monday.com engagement initiative tracking; hr-high-performer-identifier (flight risk flags from eNPS/driver data); quarterly portfolio HR summary (Dr. Lewis → Matt Mathison)
- **HITL Required:** Survey design → Dr. Lewis; results presentation → Dr. Lewis + entity CEO; action plan → entity CEO commits; manager-level data → CEO only; eNPS <10 or >15pt drop → urgent conversation; N<5 → suppress; employee communication → entity CEO delivers

## Test Cases
1. **Golden path:** Column6 Q3 eNPS survey. N=8. Response: 7/8 (88%). Promoters: 3; Passives: 3; Detractors: 1. eNPS: 25 (↑ from 18 last quarter). Annual driver scores: Manager effectiveness 3.6 (below 3.8 threshold); Growth 3.3 (below threshold). Action plan: (1) CEO implements monthly development 1:1s (Growth); (2) Dr. Lewis runs manager feedback training with VP Sales (Manager effectiveness). Employee communication sent by CEO: "You told us manager feedback and growth opportunities are areas to improve. Here's what we're doing..."
2. **Edge case:** HIVE has 4 employees — eNPS with 4 people risks identifying specific detractors → Dr. Lewis: "I'm not going to run a quantitative eNPS at 4 people — 1 detractor out of 4 = 25% which could identify the specific person. Instead I'll run 4 individual 30-minute 1:1 conversations with each employee (outside the chain of command) and synthesize themes for the CEO. The intent is the same: understand what's working and what's not. I'll present aggregate themes only — not attributable to any individual."
3. **Adversarial:** Entity CEO wants to share individual eNPS results with their management team to identify who said what → Dr. Lewis: "We cannot do that. The survey was explicitly anonymous and sharing individual results breaks the anonymity commitment. If employees discover their responses were traced back, we will get zero honest responses in any future survey — permanently. I understand the frustration with anonymous feedback, but the value of the data depends entirely on employees feeling safe to be honest. I can share aggregate manager-level scores (if N≥5) with you. That's the limit."

## Audit Log
Survey instrument retained (versioned). Aggregate results retained. Entity CEO action plan and completion records retained. Employee communication records retained. N counts retained (anonymity protection audit). Portfolio quarterly HR summaries retained.

## Deprecation
eNPS question reviewed every 3 years. Driver survey instrument reviewed every 2 years. Entity-specific engagement triggers reviewed when business model changes.
