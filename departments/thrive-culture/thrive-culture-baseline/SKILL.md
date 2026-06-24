---
name: thrive-culture-baseline
description: "Establish a THRIVE culture baseline for an MBL entity or team. Use when the user says 'culture baseline', 'THRIVE baseline', 'culture score', 'current culture', 'culture starting point', 'culture status', 'where are we culturally', 'culture snapshot', 'culture health', 'team culture', 'entity culture', 'culture measurement', 'measure our culture', 'culture benchmark', 'establish culture baseline', 'culture starting state', 'THRIVE starting point', 'culture gap', 'culture gap analysis', 'where does culture stand', 'culture temperature', 'culture check-in', 'quarterly culture', or 'annual culture review'."
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--scope <full-entity|team|function>] [--action <establish|update|compare>]"
---

# Thrive Culture Baseline

Establish a quantified THRIVE culture baseline for an MBL entity or team — the starting point against which all culture improvement is measured. A baseline without data is an opinion; a baseline with survey data, behavioral indicators, and output metrics is a management tool. Run this at entity launch, after a leadership change, after a major incident, or quarterly as the standing culture check.

## When to Use
- New entity joining MBL portfolio — establish pre-THRIVE baseline before intervention
- Post-leadership-change — how did culture shift?
- Quarterly THRIVE culture review cadence
- Pre/post culture initiative comparison

## Culture Baseline Framework

```
BASELINE DATA COLLECTION (4 sources):

  SOURCE 1 — THRIVE PULSE SURVEY (thrive-pulse-survey-builder):
    6 questions, one per pillar (1-5 Likert scale)
    Anonymous; administered to all employees
    Minimum response rate: 70% for reliable baseline
    
  SOURCE 2 — BEHAVIORAL INDICATORS (observable, not self-reported):
    Truth: Are problems surfaced early or only when they explode?
    Hustle: On-time delivery rate; velocity; self-initiated work
    Respect: HR complaint rate; 360 feedback themes; meeting behavior
    Integrity: Ethics incident count; commitment-keeping rate
    Value: Output vs. output-that-matters ratio; waste elimination
    Enjoy: Voluntary turnover rate; engagement signals; energy in meetings
    
  SOURCE 3 — MANAGER ASSESSMENTS (thrive-values-assessor for each leader):
    Each direct report to entity CEO assessed by Dr. Lewis
    Aggregated: leadership team THRIVE profile
    
  SOURCE 4 — EXIT INTERVIEW DATA (thrive-exit-interview-analyzer):
    Last 12 months — why did people leave?
    THRIVE themes extracted: was the departure a THRIVE misalignment signal?

BASELINE SCORING MODEL:

  Each pillar scored 1.0-5.0 (one decimal)
  Score = weighted average of 4 sources:
    Survey (50%) + Behavioral (30%) + Manager assessments (15%) + Exit data (5%)
    
  ENTITY THRIVE HEALTH:
    4.5-5.0: Excellent — culture is a competitive advantage
    4.0-4.4: Strong — culture supports performance; minor gaps
    3.5-3.9: Developing — culture partially supports performance; coaching needed
    3.0-3.4: At-risk — culture gaps are visible and affecting performance
    2.5-2.9: Critical — culture is a liability; urgent intervention required
    <2.5:   Crisis — Matt Mathison engaged; entity leadership under review
    
INTEGRITY OVERRIDE:
  Integrity pillar score <3.5 = escalate to Dr. Lewis + Matt Mathison regardless of overall score.
  Culture health does not mask an Integrity deficit.

ENTITY CONTEXT:
  MBL HoldCo: baseline on all direct reports; Dr. Lewis owns the process; Matt Mathison reviews
  Allevio: clinical culture dimension added — patient-first = Respect + Integrity; compliance = Truth
  HIVE: safety culture = Respect + Integrity combined; hustle must be balanced with safety protocols
  Column6: fast-paced media/ad tech environment makes Hustle and Truth most diagnostic

BASELINE REPORTING CADENCE:
  Quarterly: pulse survey + behavioral indicators (30-min assessment)
  Annual: full baseline rebuild (all 4 sources; 60-90 min; entity CEO reviews)
  Triggered: after major incident, leadership change, or culture complaint pattern
```

## Output Format

```markdown
# THRIVE Culture Baseline — [Entity] | [Date] | [Quarter/Annual]
**Assessor:** Dr. John Lewis | **Response rate:** [N]% | **Employees assessed:** [N]

---

## Pillar Baseline Scores

| Pillar | Survey | Behavioral | Manager | Exit | **Weighted Score** | Trend |
|--------|--------|-----------|---------|------|-------------------|-------|
| T — Truth | | | | | **[score]** | ↑/↓/→ |
| H — Hustle | | | | | **[score]** | |
| R — Respect | | | | | **[score]** | |
| I — Integrity | | | | | **[score]** | |
| V — Value | | | | | **[score]** | |
| E — Enjoy | | | | | **[score]** | |
| **ENTITY THRIVE HEALTH** | | | | | **[score]/5.0** | |

---

## Culture Health: [Excellent/Strong/Developing/At-Risk/Critical/Crisis]

## Top 2 Strengths
1. [Pillar]: [1-sentence evidence]
2. [Pillar]: [1-sentence evidence]

## Top 2 Gaps
1. [Pillar]: [1-sentence evidence + recommended action]
2. [Pillar]: [1-sentence evidence + recommended action]

## Priority Actions
1. [Highest-impact culture action — owner — timeline]
2. [Second action — owner — timeline]
```

## Output Contract
- The baseline is only useful if it's honest — survey results that show 4.8/5.0 at an entity where the last three senior leaders left within 12 months and HR complaints are rising indicate a survey design or response bias problem, not a great culture; Dr. Lewis cross-validates survey data against behavioral indicators before accepting any baseline score; if the sources diverge significantly (survey high; behavioral low), the behavioral data takes precedence and the survey methodology is reviewed; Callie and Fitz support survey administration and can flag anomalies in response patterns; the baseline is a management tool, not a PR document
- Trends matter as much as absolute scores — a 3.8 entity that improved from 3.2 over 90 days is a different situation than a 3.8 entity that declined from 4.4; the baseline report always shows trend vs. the prior period for established entities; for new entities (first baseline), the report establishes the starting point and notes qualitative context; the quarterly cadence is designed to catch trends early enough to intervene before they become crises; a single pillar declining two quarters in a row is an early warning signal that triggers a coaching conversation with the entity CEO, not a formal intervention yet
- HITL required: baseline showing any pillar <3.0 → Dr. Lewis + entity CEO review within 7 days; Integrity <3.5 → Dr. Lewis + Matt Mathison notification; entity health <3.5 overall → entity CEO coaching conversation required; Crisis rating (<2.5) → Matt Mathison engaged + entity leadership review; M&A baseline (portfolio due diligence) → Matt Mathison reviews before deal close

## System Dependencies
- **Reads from:** thrive-pulse-survey-builder (survey data); thrive-exit-interview-analyzer (exit themes); thrive-values-assessor (manager assessments); hr-metrics-dashboard (voluntary turnover; complaint rate; HR data); ops-kpi-dashboard (output and delivery metrics); hr-employee-relations (incident and complaint records); Monday.com (commitment-keeping rate via task completion data)
- **Writes to:** THRIVE culture baseline record (SharePoint → [Entity] → Culture → THRIVE-Baseline → [Quarter-Year]); entity culture dashboard (thrive-culture-kpi-dashboard); entity CEO briefing (quarterly: 1-page; annual: full baseline + trend report); Matt Mathison portfolio culture summary (annual; Integrity or crisis alerts: immediate); Monday.com culture action items (top 2 priorities → tasks assigned to entity CEO or Dr. Lewis)
- **HITL Required:** Any pillar <3.0 → Dr. Lewis + entity CEO within 7 days; Integrity <3.5 → Matt Mathison; entity <3.5 overall → entity CEO coaching; <2.5 crisis → Matt Mathison + leadership review; M&A → Matt Mathison before close

## Test Cases
1. **Golden path:** Allevio Q2 baseline. Survey: 80% response rate. Scores: T:4.2, H:4.0, R:4.5, I:4.6, V:3.8, V:3.9, E:4.1. Overall: 4.18 — Strong. Trend: up from Q1 3.95. Top strength: Respect (clinical culture — patient-first deeply embedded). Top gap: Value (team is busy but output-that-matters ratio is low — 40% of work is admin overhead). Priority action: entity CEO communicates 2-task focus rule; admin automation identified for 3 high-time-cost tasks. Dr. Lewis briefs entity CEO. Baseline filed.
2. **Edge case:** HIVE first baseline (new entity joining portfolio). No prior data — one-quarter collection period required. Survey response: 65% (below 70% threshold — flag). Behavioral data substituted as primary source. Score: H:4.5 (oil field — hustle is survival), R:3.2 (limited — hierarchical culture; listen-up is not embedded), I:4.0, T:3.5, V:4.0, E:3.8. Overall: 3.83 — Developing. Gap: Respect (hierarchical field culture). Entity CEO notified. Coaching plan for field supervisors. Next baseline in 90 days after Respect intervention.
3. **Adversarial:** Survey shows Integrity: 4.8/5.0 at an entity. However, in the past 90 days: one ethics complaint filed (investigating); two senior employees reported privately to Dr. Lewis that a manager is misrepresenting project status to the entity CEO. Dr. Lewis: "Survey says 4.8 on Integrity. Behavioral data says otherwise. I'm treating this as a 3.0 Integrity score until the investigation resolves and the reporting issue is addressed. Adjusted entity health: 3.7 — At-Risk. Entity CEO engaged. The manager's behavior is being addressed directly."

## Audit Log
All baselines retained in SharePoint (entity; quarter; scores by pillar and source; weighted totals; trend vs. prior; assessor; entity CEO acknowledgment; date). Integrity triggers and escalations logged separately (entity; score; date; Dr. Lewis action; Matt Mathison notification if applicable). M&A baseline records retained as deal documents. Annual baseline reports distributed to Matt Mathison (retained with board materials).

## Deprecation
Baseline scoring weights reviewed annually (survey/behavioral/manager/exit weighting). Pillar definitions reviewed annually with Matt Mathison — THRIVE is owned by MBL leadership, not Dr. Lewis. Survey questions reviewed annually (thrive-pulse-survey-builder updates). Behavioral indicators reviewed quarterly (what signals are most diagnostic for each entity's context?). Entity health thresholds reviewed annually.
