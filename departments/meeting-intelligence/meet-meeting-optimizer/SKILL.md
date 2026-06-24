---
name: meet-meeting-optimizer
description: "optimize meeting structure, meeting cost formula, meeting efficiency mbl, recurring meeting audit, meeting type standards, meeting cadence recommendations, agenda design efficiency, mbl meeting standards 25 50 min, meeting without agenda, entity CEO meeting portfolio, meeting cost calculation, unnecessary meetings elimination, decision meeting review coordination, meeting type classification, meeting portfolio optimization, reduce meeting burden, meeting productivity mbl, meeting cadence review, meeting roi analysis, meeting structure design"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[entity name, meeting portfolio list, or specific meeting to optimize]"
---

# Meeting Optimizer

This skill analyzes the MBL meeting portfolio — across HoldCo and all portfolio entities — to identify structural inefficiencies, unnecessary meetings, and opportunities to improve how time is spent in collaborative work. It applies meeting cost economics, type classification, and cadence analysis to give Dr. Lewis and Matt Mathison an evidence-based view of where meeting time is well-spent and where it is organizational overhead.

## When to Use

- A quarterly meeting portfolio review is needed for an entity or for MBL HoldCo
- A specific recurring meeting is suspected to be low-value and needs an efficiency assessment
- A new meeting cadence is being designed for an entity or project and needs structure recommendations
- Matt Mathison wants to reduce his meeting load and needs a data-driven view of what can be eliminated or restructured

## Meeting Optimizer Framework

```
MEETING COST FORMULA
─────────────────────────────
Fully-loaded meeting cost:
  Cost = (Average hourly fully-loaded salary of all attendees) × (Duration in hours) × (Attendee count)

MBL standard rates for estimation (adjust based on actual data):
  Managing Partner (Matt Mathison):        $1,000/hr effective
  Director / Principal:                    $300/hr effective
  Entity CEO:                              $400/hr effective
  Entity Ops / Finance Lead:               $150/hr effective
  External (vendor, advisor):              $250/hr effective

Example: 60-min meeting with Matt ($1,000) + 2 Entity Ops ($150 each) = $1,300 per occurrence

Annual cost of recurring meeting:
  Weekly: cost × 50 | Biweekly: cost × 25 | Monthly: cost × 12 | Quarterly: cost × 4

MEETING TYPE STANDARDS
─────────────────────────────
TYPE            | PURPOSE                          | MAX DURATION | DEFAULT CADENCE
────────────────|──────────────────────────────────|──────────────|─────────────────
DECISION        | Make specific choices             | 30 min       | As needed
REVIEW          | Status check + issue surfacing    | 25 min       | Weekly/Biweekly
COORDINATION    | Align on work in progress         | 25 min       | Weekly
1:1             | Manager–report alignment          | 25–50 min    | Weekly/Biweekly
BOARD / LP      | Governance + stakeholder update   | 60 min       | Monthly/Quarterly
STRATEGY        | Long-horizon planning             | 90 min max   | Quarterly
ALL-HANDS       | Company-wide communication        | 60 min max   | Monthly/Quarterly

NON-STANDARD INDICATORS (flag for review):
  - Any meeting >60 min that is not a Board/LP or Strategy session
  - Any meeting with >8 attendees that is not an All-Hands
  - Any recurring meeting that has been running >6 months without a scope review
  - Any meeting without an agenda template

MEETING SUITABILITY ASSESSMENT
─────────────────────────────
For each meeting in the portfolio, score on 3 dimensions:

1. NECESSITY (1–5):
   5 = Required by governance or compliance (board, LP)
   4 = Produces decisions that cannot be made async
   3 = Produces coordination value; alternative async would be lower quality
   2 = Informational only; could be replaced by email or report
   1 = No clear output; historical/habitual meeting

2. EFFICIENCY (1–5):
   5 = Consistently ends with decisions made and action items captured
   4 = Usually productive; occasional agenda drift
   3 = Mixed; some meetings are productive, others are not
   2 = Frequently runs over time; incomplete outcomes
   1 = Rarely achieves its stated purpose

3. ATTENDEE FIT (1–5):
   5 = Every attendee is required for the meeting's purpose
   4 = 1–2 attendees could be updated async instead
   3 = Several attendees attend out of habit, not necessity
   2 = Most attendees are observers
   1 = Meeting could be a 1:1 or async communication

SCORING → RECOMMENDATION:
  Score 12–15: KEEP — high value, well-run
  Score 8–11:  RESTRUCTURE — specific improvements recommended
  Score 4–7:   ELIMINATE or REPLACE with async
  Score 1–3:   ELIMINATE immediately

CADENCE RECOMMENDATIONS BY TYPE
─────────────────────────────
If current cadence is more frequent than needed for output volume:
  - Downgrade: weekly → biweekly; biweekly → monthly
  - Restructure: split decision items from update items
  - Async alternative: replace update-only meetings with a Monday.com board review

MBL MEETING STANDARDS ENFORCEMENT
─────────────────────────────
Flag any meeting that violates:
  □ No agenda template defined
  □ Duration set to 60 min when 25 or 50 would suffice
  □ No stated owner for the meeting (who is responsible for running it?)
  □ No stated outcome or purpose in the meeting description
  □ Attendee list has not been reviewed in >6 months
```

## Output Format

```markdown
## Meeting Optimization Report — [Entity | Scope] | [DATE]

**Meetings Assessed:** [n]
**Total Annual Meeting Cost (estimated):** $[amount]
**Matt Mathison Annual Meeting Hours in Scope:** [n hrs]

---

### PORTFOLIO SUMMARY

| Recommendation | Count | Annual Cost Impact |
|---------------|-------|-------------------|
| KEEP | [n] | $[amount] |
| RESTRUCTURE | [n] | -$[savings] est. |
| ELIMINATE | [n] | -$[savings] est. |

---

### MEETING ASSESSMENTS

#### [Meeting Name]
- **Type:** [type] | **Cadence:** [frequency] | **Attendees:** [n]
- **Annual Cost (est.):** $[amount]
- **Scores:** Necessity [n/5] | Efficiency [n/5] | Attendee Fit [n/5] | **Total: [n/15]**
- **Recommendation:** [KEEP | RESTRUCTURE | ELIMINATE]
- **Action:** [Specific change — or "No action required"]

---

### TOP OPTIMIZATION OPPORTUNITIES
1. **[Meeting name]** — Eliminating saves $[amount]/yr and [n] hrs/yr for Matt Mathison
2. **[Meeting name]** — Restructuring to [cadence] saves $[amount]/yr
3. **[Meeting name]** — Reducing attendees from [n] to [n] saves $[amount]/yr

---

### VIOLATIONS OF MBL MEETING STANDARDS
- [Meeting name]: [standard violated]
- [Meeting name]: [standard violated]
```

## Output Contract

- **Every meeting in the portfolio must receive a cost estimate — the cost formula must be applied to every assessment, not used selectively.** Decision-makers tend to justify keeping meetings based on their perceived value rather than their actual cost. The cost formula creates a forcing function: a biweekly status call with Matt Mathison ($1,000/hr) and three entity leads may appear cheap in isolation, but at $2,400 per occurrence and 25 occurrences per year, it costs $60,000 annually. Selective cost calculation allows cognitive bias to keep expensive-but-comfortable meetings alive.

- **Restructuring recommendations must include a specific, actionable change — not vague suggestions to "improve" the meeting.** "This meeting should be more efficient" is not a recommendation — it is an observation. A restructuring recommendation must specify: change cadence from X to Y, remove attendees A and B and update them via Monday.com instead, split into a 15-minute decision block and a 10-minute update block, or convert to async with a Monday.com board replacing the discussion. The specificity is what makes the recommendation implementable.

- **Matt Mathison's hours must be tracked separately in every portfolio assessment — his time is the highest-cost and most constrained resource in the system.** A recommendation that saves $50,000 per year but removes Matt Mathison from a meeting he needs to be in is a bad recommendation. Equally, a recommendation that preserves Matt in 10 hours/week of meetings that could be delegated or replaced is protecting status quo at executive cost. The Matt Mathison hours metric ensures that optimization analysis is calibrated to the most important unit of time in the organization.

## System Dependencies

### Reads from
- Microsoft Outlook calendar (meeting inventory — all recurring events)
- Transcript registry (meeting output history — what does each meeting actually produce?)
- Action item registry (how many action items does each recurring meeting generate?)
- Decision registry (how many decisions does each recurring meeting produce?)
- MBL staff directory (attendee roles for cost calculation)

### Writes to
- Meeting optimization report: `/Meeting Intelligence/Optimization/[Entity]/[Year]/[Quarter]/`
- Recommendations queue (for Dr. Lewis review before any meeting is eliminated)
- Monday.com: Optimization action items for approved changes

### HITL Required
- Any ELIMINATE recommendation — Dr. Lewis confirms before meeting is canceled
- Any meeting where Matt Mathison is the named owner — he must approve changes to his own meetings
- Entity CEO meetings — entity CEO must be consulted before their meeting portfolio is restructured

## Test Cases

1. **Golden path:** A quarterly review of HIVE Partners' meeting portfolio covers 8 recurring meetings. Two score KEEP (LP quarterly call, ops leadership monthly). Three score RESTRUCTURE (weekly team standup is 60 min and should be 25; monthly finance review has 3 unnecessary attendees; monthly all-hands has no agenda template). Three score ELIMINATE (biweekly water ops update is fully covered by a Monday.com board; two ad hoc vendor syncs have produced zero decisions in 6 months). Total savings: $48,000/yr and 14 hrs/yr of Matt Mathison time recovered.

2. **Edge case:** A weekly coordination meeting between the Allevio ops team and a clinical quality lead scores RESTRUCTURE, but the restructuring recommendation involves the clinical quality lead's participation. The optimizer notes that any attendee change involving clinical staff requires Dr. Lewis review (Allevio HIPAA adjacency) and flags the recommendation as PENDING HITL before it is shared with the Allevio CEO.

3. **Adversarial case:** A recurring meeting scores 4/15 (ELIMINATE), but a note in the calendar event indicates it is "required by LP agreement — quarterly reporting." The optimizer detects the governance flag, overrides the score-based recommendation, and reclassifies the meeting as GOVERNANCE-REQUIRED — EXEMPT from optimization. It notes the annual cost but does not recommend elimination. Dr. Lewis is notified that the meeting is expensive but contractually obligated.

## Audit Log

Every optimization run logs the entity scope, number of meetings assessed, cost estimates applied, scores assigned, recommendations generated, and Dr. Lewis review timestamp. ELIMINATE recommendations that are approved and executed log the meeting cancellation date and estimated annual savings realized. Logs are stored in the MBL AI audit trail with a 2-year retention minimum.

## Deprecation

This skill should be reviewed if MBL adopts a dedicated meeting analytics platform (such as Clockwise or Reclaim) that performs portfolio analysis with direct calendar integration. In that scenario, the inventory and cost calculation modules may be replaced by platform-native tools, though the MBL meeting standards enforcement and entity-specific optimization logic should be preserved. Deprecation requires Dr. Lewis sign-off and validation that the replacement system applies equivalent scoring rigor before this skill is retired.
