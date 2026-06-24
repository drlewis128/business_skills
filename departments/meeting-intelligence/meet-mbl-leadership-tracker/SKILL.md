---
name: meet-mbl-leadership-tracker
description: "track mbl leadership meeting patterns, leadership engagement, who attends meetings, participation frequency, action item completion by leader, relationship network from meetings, meeting load analysis, is matt over-meetinged, leadership alignment signals, leadership relationship health, meeting attendance patterns, leadership team meeting health report, who meets with whom, how often leaders meet, meeting sentiment for alignment, leadership team dynamics from transcripts, monthly leadership meeting report, attendance tracking, leader action item completion rates, leadership meeting cadence"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[month or date range, optional leader name filter]"
---

# MBL Leadership Meeting Tracker

This skill analyzes meeting transcripts from Krista.ai to track MBL leadership team engagement, attendance patterns, and relationship health across all recorded meetings. It produces a monthly leadership meeting health report for Dr. John Lewis, flagging imbalances in meeting load and alignment gaps before they become organizational friction.

## When to Use

- Matt Mathison or Dr. Lewis asks for a leadership team meeting health review
- A leader's action item completion rate drops below 70% in a given month
- Meeting load analysis is needed to determine if Matt Mathison is over-meetinged
- Monthly meeting intelligence cycle triggers the leadership health report

## Leadership Tracker Framework

```
LEADERSHIP MEETING TRACKER — MBL PARTNERS
==========================================

SECTION 1: ATTENDANCE REGISTRY
  - Leader name
  - Meetings invited vs. meetings attended (attendance rate %)
  - Entities represented in meetings
  - Meeting types attended (strategic / operational / deal / 1:1 / portfolio)

SECTION 2: PARTICIPATION FREQUENCY ANALYSIS
  - Total meetings per leader (rolling 30 days)
  - Average meetings per week
  - Trend vs. prior month (↑ / ↓ / stable)
  - Outliers: leaders attending <50% of meetings they are scheduled for

SECTION 3: ACTION ITEM COMPLETION BY LEADER
  - Owner name
  - Items assigned (month-to-date)
  - Items closed on time
  - Items overdue
  - Completion rate %
  - Trend vs. prior month

SECTION 4: RELATIONSHIP NETWORK MAP
  - Leader A ↔ Leader B: meeting count, last meeting date
  - Isolated pairs: leaders who have NOT met in >30 days
  - High-frequency pairs: leaders meeting >3x/week (flag for duplication)

SECTION 5: MATT MATHISON MEETING LOAD
  - Total meetings attended this month
  - Hours in meetings (estimated at 45 min/meeting unless noted)
  - Decision meetings vs. update meetings vs. 1:1s
  - Recommendation: meeting load is [HEALTHY / ELEVATED / OVERLOADED]
  - Suggested offload opportunities

SECTION 6: LEADERSHIP ALIGNMENT SIGNALS
  - Topics generating recurring disagreement in transcripts
  - Topics with strong positive sentiment across meetings
  - Action items repeatedly assigned but not closed (leadership attention debt)
  - Alignment score (1–5 narrative): [SCORE] — [RATIONALE]

SECTION 7: MONTHLY LEADERSHIP MEETING HEALTH SUMMARY
  - Overall assessment: [HEALTHY / NEEDS ATTENTION / AT RISK]
  - Top 3 findings
  - Recommended actions for Dr. Lewis
```

## Output Format

```markdown
## MBL Leadership Meeting Health — [Month YYYY]

**Overall Status:** [HEALTHY / NEEDS ATTENTION / AT RISK]

**Top 3 Findings:**
1. [Finding + recommended action]
2. [Finding + recommended action]
3. [Finding + recommended action]

**Matt Mathison Meeting Load:** [X meetings / ~Y hours / HEALTHY|ELEVATED|OVERLOADED]

**Action Item Completion (Month):**
| Leader | Assigned | Closed | Rate |
|--------|----------|--------|------|
| ...    | ...      | ...    | ...% |

**Relationship Network Gaps:** [Leaders not meeting in >30 days]

**Alignment Signals:** [2-3 sentences on sentiment trends]

**Recommended Next Steps for Dr. Lewis:**
- [ ] ...
```

## Output Contract

- **No personal performance judgments.** This report tracks behavioral patterns visible in meeting data — attendance rates, completion rates, sentiment signals — not subjective leadership quality assessments. Every finding must be tied to a specific, verifiable data point from transcripts or action item records so that Dr. Lewis and Matt Mathison can independently validate the finding before acting on it.

- **Matt Mathison meeting load is a primary signal, not a secondary metric.** If Matt is attending >20 meetings per week or >15 hours of meetings per week, the report must surface this as the top finding with specific offload recommendations. The purpose of meeting intelligence at MBL is to reduce Matt's cognitive overhead, and this tracker is a direct input to that goal — if he is overloaded, the system is failing its primary mission.

- **Relationship network gaps are action items, not observations.** When two leaders have not met in >30 days and their domains overlap (e.g., operations and finance), the output must include a specific recommended meeting, proposed agenda, and suggested owner to schedule it. Passive observation of isolation without a resolution path adds no value to the program.

## System Dependencies

### Reads from
- Krista.ai transcripts (all MBL meetings, rolling 30 days)
- Monday.com action item board (completion status by owner)
- Meeting calendar metadata (invitees vs. attendees)

### Writes to
- SharePoint: /Meeting Intelligence/MBL/Leadership-Tracker/[Month]-health-report.md
- Monday.com: Leadership health action items (if recommended actions generated)

### HITL Required
- Dr. Lewis reviews before sharing with Matt Mathison
- Matt Mathison approves any recommendations that involve restructuring his meeting schedule

## Test Cases

1. **Golden path:** Month with 40+ meetings recorded, all leaders attending >80%, completion rates healthy — report confirms HEALTHY status with 3 minor optimization suggestions for Matt's load.
2. **Edge case:** A leader is absent from all meetings for 2 weeks (travel, illness) — tracker correctly flags attendance gap without generating a negative performance finding; notes absence may be explained by external factor; recommends Dr. Lewis verify.
3. **Adversarial:** Transcript speaker labels are inconsistent (same person labeled differently across meetings) — tracker must flag the attribution uncertainty rather than silently misattribute attendance or action items; output includes a data quality warning.

## Audit Log

Every leadership tracker report is stored in SharePoint under /Meeting Intelligence/MBL/Leadership-Tracker/ with the generation timestamp, source transcript IDs, and the name of the reviewer (Dr. Lewis) who approved the output. No leadership tracker output is distributed to Matt Mathison or the leadership team without Dr. Lewis sign-off, and the audit log records the approval date and channel of distribution.

## Deprecation

This skill is deprecated when MBL adopts a dedicated HRIS or people analytics platform that natively tracks meeting engagement and leadership relationship health, and that platform is integrated with Krista.ai transcripts. At that point, this skill's outputs are superseded by the platform's native dashboards. Dr. Lewis must approve deprecation and ensure historical reports are archived in SharePoint before the skill is removed from the registry.
