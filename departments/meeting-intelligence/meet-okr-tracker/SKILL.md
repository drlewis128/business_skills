---
name: meet-okr-tracker
description: "meeting intelligence program OKRs, track OKRs for meeting intelligence, transcript processing time OKR, action item capture rate OKR, prep sheet on-time delivery OKR, Matt Mathison satisfaction OKR, action item closure rate OKR, summary quality score OKR, quarterly OKR grading meeting intelligence, Phase 2 completion tracking meeting intelligence, Phase 3 completion tracking, Krista AI integration reliability OKR, Dr. Lewis program OKR review, MBL meeting intelligence OKR tracking, meeting intelligence program performance, AI orchestration roadmap OKR, meeting intelligence quarterly OKR"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[quarter, e.g. 'Q2 2026', or 'current']"
---

# Meeting Intelligence OKR Tracker

This skill tracks and grades the OKRs for MBL's Meeting Intelligence program, covering operational performance (transcript processing, action item capture, prep sheet delivery), quality (summary score, Matt Mathison satisfaction), and roadmap progress (Phase 2 and Phase 3 completion per the MBL AI Orchestration plan). Dr. Lewis reviews OKR status monthly and presents quarterly grades to Matt Mathison.

## When to Use

- Monthly OKR check-in cycle for the Meeting Intelligence program
- Quarterly OKR grading is due (end of each quarter)
- A KPI threshold breach signals that an OKR may be off track and Dr. Lewis needs to assess impact
- The quarterly program ops review requires OKR grades as an input

## OKR Tracker Framework

```
MEETING INTELLIGENCE PROGRAM OKR TRACKER — [QUARTER YYYY]
==========================================================

PROGRAM OBJECTIVE
  Deliver reliable, high-quality meeting intelligence to Matt Mathison and MBL 
  leadership that reduces cognitive overhead, drives action item closure, and 
  accelerates organizational decision-making — measured by outcomes Matt values.

KEY RESULT 1: TRANSCRIPT PROCESSING TIME
  Definition: Time from meeting end to transcript available in processing pipeline
  Target: ≤4 hours for all meetings (SLA per pipeline health report)
  Measurement: Pipeline health logs (average and P95 processing time per week)
  Current Status:
    - This month average: [N hours]
    - P95 (worst 5%): [N hours]
    - SLA compliance rate: [%] of meetings processed within 4 hours
  Grade basis: 100% = all meetings; 90% = ≥95% within SLA; 70% = ≥85%; 50% = ≥75%
  Current grade: [0.0–1.0] | Trend: [↑ / ↓ / stable]

KEY RESULT 2: ACTION ITEM CAPTURE RATE
  Definition: % of action items from meeting transcripts that are captured in Monday.com
  Target: ≥90% capture rate (measured by spot-check comparison of transcript vs. extracted items)
  Measurement: Monthly spot-check of 10% of meetings; Dr. Lewis reviews
  Current Status:
    - Last spot-check date: [date]
    - Meetings spot-checked: [N]
    - Action items in transcript: [N]
    - Action items captured: [N]
    - Capture rate: [%]
  Grade basis: 100% = ≥90%; 70% = ≥80%; 40% = ≥70%; 0% = <70%
  Current grade: [0.0–1.0] | Trend: [↑ / ↓ / stable]

KEY RESULT 3: PREP SHEET ON-TIME DELIVERY RATE
  Definition: % of pre-meeting prep sheets delivered ≥24 hours before the meeting
  Target: ≥95% on-time delivery
  Measurement: Prep sheet delivery log (timestamp vs. meeting start time)
  Current Status:
    - Prep sheets due this quarter: [N]
    - Delivered on time (≥24 hrs): [N] ([%])
    - Late deliveries: [N] — [reasons]
  Grade basis: 100% = ≥95%; 70% = ≥85%; 40% = ≥75%; 0% = <75%
  Current grade: [0.0–1.0] | Trend: [↑ / ↓ / stable]

KEY RESULT 4: ACTION ITEM CLOSURE RATE
  Definition: % of meeting-generated action items closed on time across all entities
  Target: ≥80% on-time closure rate (30-day rolling)
  Measurement: Monday.com action item data (automated)
  Current Status:
    - 30-day rolling closure rate: [%]
    - By entity: MBL [%] | Allevio [%] | HIVE [%] | Column6 [%]
    - Entities below 70%: [list — THRIVE Integrity flag]
  Grade basis: 100% = ≥80%; 70% = ≥70%; 40% = ≥60%; 0% = <60%
  Current grade: [0.0–1.0] | Trend: [↑ / ↓ / stable]

KEY RESULT 5: SUMMARY QUALITY SCORE
  Definition: Average quality review score across all weekly summaries (checks passed / 9)
  Target: ≥8/9 average quality score
  Measurement: Quality review logs (automated from meet-summary-quality-reviewer)
  Current Status:
    - Summaries reviewed this quarter: [N]
    - Average quality score: [N]/9
    - Summaries scoring <7/9: [N] — [issues identified]
    - Most common failure: [check name]
  Grade basis: 100% = ≥8.5; 70% = ≥7.5; 40% = ≥6.5; 0% = <6.5
  Current grade: [0.0–1.0] | Trend: [↑ / ↓ / stable]

KEY RESULT 6: PHI INCIDENTS CAUGHT PRE-DISTRIBUTION
  Definition: % of PHI events caught by HIPAA Transcript Guard before any output is distributed
  Target: 100% (zero PHI distributions — this is a binary pass/fail OKR)
  Measurement: HIPAA incident register (any PHI breach = 0% score for the quarter)
  Current Status:
    - PHI events detected this quarter: [N]
    - PHI events caught pre-distribution: [N]
    - PHI events that reached any output: [N] — [0 = PASS; >0 = CRITICAL FAIL]
  Grade: PASS (100% caught) / CRITICAL FAIL ([N] events reached distribution)
  Current grade: PASS / CRITICAL FAIL

KEY RESULT 7: MATT MATHISON SATISFACTION
  Definition: Matt Mathison's satisfaction with weekly briefings (quarterly survey; 1–5 scale)
  Target: ≥4/5 rating
  Measurement: Quarterly 3-question survey (administered by Dr. Lewis)
    Q1: "The weekly briefing gives me the information I need to manage the portfolio." (1–5)
    Q2: "The format and length of the briefing work for me." (1–5)
    Q3: "The action items and follow-ups from meetings are being tracked effectively." (1–5)
  Current Status:
    - Last survey date: [date]
    - Q1: [N/5] | Q2: [N/5] | Q3: [N/5]
    - Average: [N/5]
    - Matt's verbatim feedback: [if any]
  Grade basis: 100% = ≥4.5; 70% = ≥4.0; 40% = ≥3.5; 0% = <3.5
  Current grade: [0.0–1.0] | Trend: [N/A if first quarter / ↑ / ↓ / stable]

KEY RESULT 8: PHASE ROADMAP PROGRESS
  Phase 2 — Weekly Summary + Monday.com Push:
    Target: Fully operational and delivering weekly to Matt Mathison
    Status: [COMPLETE / IN PROGRESS — [%] / NOT STARTED]
    Milestone: [current milestone; next milestone; target completion]
  Phase 3 — Pre-Meeting Prep Sheets:
    Target: Delivering prep sheets for all Matt Mathison meetings ≥24 hours prior
    Status: [COMPLETE / IN PROGRESS — [%] / NOT STARTED]
    Milestone: [current milestone; next milestone; target completion]
  Combined Phase Progress Grade: [0.0–1.0]

QUARTERLY OKR GRADE SUMMARY
  | Key Result                      | Target   | Current   | Grade |
  |---------------------------------|----------|-----------|-------|
  | KR1: Transcript Processing      | ≤4 hrs   | [status]  | [N]   |
  | KR2: Action Item Capture        | ≥90%     | [%]       | [N]   |
  | KR3: Prep Sheet On-Time         | ≥95%     | [%]       | [N]   |
  | KR4: Action Item Closure        | ≥80%     | [%]       | [N]   |
  | KR5: Summary Quality            | ≥8/9     | [N/9]     | [N]   |
  | KR6: PHI Pre-Distribution       | 100%     | [status]  | P/F   |
  | KR7: Matt Mathison Satisfaction | ≥4/5     | [N/5]     | [N]   |
  | KR8: Phase Roadmap Progress     | On track | [status]  | [N]   |
  Overall: [STRONG ≥0.8 / ON TRACK 0.6–0.79 / AT RISK 0.4–0.59 / OFF TRACK <0.4]
```

## Output Format

```markdown
## Meeting Intelligence OKR Report — [Quarter YYYY]

**Overall Grade:** [STRONG / ON TRACK / AT RISK / OFF TRACK]

| Key Result | Target | Actual | Grade |
|-----------|--------|--------|-------|
| KR1: Processing Time | ≤4 hrs | [N hrs] | [N] |
| KR2: Action Item Capture | ≥90% | [%] | [N] |
| KR3: Prep Sheet On-Time | ≥95% | [%] | [N] |
| KR4: Closure Rate | ≥80% | [%] | [N] |
| KR5: Summary Quality | ≥8/9 | [N/9] | [N] |
| KR6: PHI Guard | 100% | PASS/FAIL | P/F |
| KR7: Matt Satisfaction | ≥4/5 | [N/5] | [N] |
| KR8: Roadmap Progress | On track | [%] | [N] |

**Off-Track Items:** [list KRs below 0.7 with root cause and recovery plan]

**Matt Mathison Rating:** [N/5] — [his key feedback]

**Next Quarter Adjustments:** [top 3 planned improvements]
```

## Output Contract

- **KR6 (PHI Guard) is binary — one PHI breach sets the quarterly grade to CRITICAL FAIL regardless of all other KR grades.** No portfolio of strong operational KRs compensates for a PHI breach that reached distribution. When KR6 is CRITICAL FAIL, the quarterly OKR report leads with that finding, the root cause analysis, and the corrective actions taken before any other KR grades are presented. This sequencing ensures that the severity of a HIPAA event is not visually buried in a table alongside operational metrics.

- **Matt Mathison's satisfaction score (KR7) is the program's north star metric.** All other KRs are inputs to KR7 — transcript processing time matters because it enables timely briefings; closure rate matters because it tells Matt the program is driving accountability; summary quality matters because it determines whether Matt can make decisions from the briefing. If KR7 drops below 3.5, Dr. Lewis treats it as a program emergency regardless of what other KRs show, and schedules a direct conversation with Matt to understand what is not working.

- **Phase roadmap progress (KR8) is tied to the MBL AI Orchestration roadmap milestones defined by Matt Mathison.** Progress percentages are not estimated by Dr. Lewis — they are based on specific, agreed milestone completions (e.g., "Phase 2 weekly summary delivered for 4 consecutive weeks without a quality failure = Phase 2 complete"). This prevents grade inflation where progress looks good because the person grading controls the definition of "done." Matt Mathison's milestone definitions govern.

## System Dependencies

### Reads from
- Pipeline health logs (KR1: processing time)
- Action item extraction records and Monday.com data (KR2, KR4)
- Prep sheet delivery log (KR3)
- Quality review logs (KR5)
- HIPAA incident register (KR6)
- Matt Mathison satisfaction surveys (KR7)
- AI Orchestration roadmap milestone definitions (KR8)

### Writes to
- SharePoint: /Meeting Intelligence/OKRs/[YYYY-Q#]-okr-report.md
- Monthly Dr. Lewis check-in report (abbreviated KR status update)
- Quarterly Matt Mathison OKR briefing (summary table + key findings)

### HITL Required
- Dr. Lewis: runs monthly KR check-ins; administers quarterly Matt satisfaction survey; presents quarterly grades
- Matt Mathison: receives quarterly OKR brief; his satisfaction survey is the source data for KR7; approves roadmap milestone definitions (KR8)

## Test Cases

1. **Golden path:** Q2 end — all KRs on track, Matt satisfaction at 4.2/5, no PHI events, Phase 2 complete, Phase 3 at 60% — overall grade STRONG, Matt receives a clean quarterly brief.
2. **Edge case:** KR3 (prep sheet on-time) shows 78% delivery rate — below the 95% target but driven by a 2-week Krista.ai integration outage that was outside Dr. Lewis's control. OKR report must accurately grade the KR at 0.0 against target while documenting the root cause and distinguishing it from a systematic execution failure, so Matt Mathison has full context before drawing a conclusion about program performance.
3. **Adversarial:** Matt Mathison rates his satisfaction at 2.8/5 in Q3 but does not provide specific feedback. OKR report must not explain away the low score — it grades KR7 at 0.0, surfaces the rating prominently, and requires Dr. Lewis to schedule a direct conversation with Matt before the next quarter to understand what is not working, with findings documented before the Q4 OKR cycle begins.

## Audit Log

Every quarterly OKR report is archived in SharePoint with the raw KR data sources, grading methodology, Dr. Lewis assessment notes, Matt Mathison satisfaction survey responses, and quarterly grade. Monthly check-in records are retained as interim documentation. OKR archives are retained for 3 years to enable program performance trend analysis.

## Deprecation

This skill is deprecated when the Meeting Intelligence program OKRs are absorbed into MBL's broader organizational OKR tracking system with the same KR definitions, measurement methodology, and Matt Mathison satisfaction feedback loop this skill provides. Dr. Lewis approves migration of historical OKR data to the new system before deprecation, and Matt Mathison confirms the new system captures the satisfaction signal he cares most about.
