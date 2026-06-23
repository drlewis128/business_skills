---
name: revops-deal-velocity-analyzer
description: "Analyze deal velocity and time-in-stage for MBL Partners pipeline. Use when the user says 'deal velocity', 'sales cycle', 'how long does it take to close', 'time in stage', 'deal cycle length', 'average sales cycle', 'deals moving too slow', 'bottleneck in the pipeline', 'where are deals getting stuck', 'stage duration', 'sales velocity', 'velocity analysis', 'deal progression', 'pipeline velocity', 'deal age', 'aged deals', 'deal movement', 'conversion velocity', 'sales cycle analysis', 'time to close', 'days to close', 'average days per stage', 'pipeline bottleneck', 'deal stagnation', or 'why is the pipeline slow'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--stage <1-8>] [--period <30|60|90|180>]"
---

# RevOps Deal Velocity Analyzer

Analyze deal velocity across MBL Partners pipeline — measuring time-in-stage, identifying where deals slow or stall, and diagnosing root causes so entity CEOs and Dr. Lewis can take targeted action on pipeline bottlenecks before they become forecast misses.

## When to Use
- Monthly pipeline review reveals deals aging out without moving
- Forecast is consistently missing because deals slip to the right
- Entity CEO asks why the sales cycle seems to be getting longer
- Diagnosing a specific stage where conversion is low

## Velocity Analysis Framework

```
VELOCITY BENCHMARKS BY ENTITY:

  ALLEVIO (employer B2B sales):
    Stage 1→2 (Prospect → Connected): target ≤14 days (outbound follow-up cadence)
    Stage 2→3 (Connected → Discovery): target ≤7 days (schedule discovery quickly)
    Stage 3→4 (Discovery → Qualified): target ≤14 days (MEDDPICCC completion)
    Stage 4→5 (Qualified → Proposal): target ≤10 days (proposal turn-around)
    Stage 5→6 (Proposal → Negotiation): target ≤21 days (employer review period)
    Stage 6→7 (Negotiation → Verbal): target ≤14 days (contract negotiation)
    Stage 7→Close: target ≤7 days (contract signature)
    Total target cycle: 87 days (≈3 months) for new employer
    
  COLUMN6 (agency IO-based):
    Stage 1→4 (Prospect → Qualified): target ≤30 days
    Stage 4→5 (Qualified → IO Pending): target ≤21 days
    Stage 5→6 (IO Pending → IO Signed): target ≤14 days
    Total target cycle: 65 days
    Common bottleneck: Stage 5→6 (IO negotiation; agency legal review)
    
VELOCITY ANALYSIS PROCESS:
  Step 1: Pull all closed deals (last 90-180 days) from GoHighLevel with timestamps per stage
  Step 2: Calculate average days per stage; identify stages above benchmark
  Step 3: For deals stalling above benchmark: identify pattern (deal size? rep? time of year? stage?)
  Step 4: Diagnose root cause per stage:
    Stage 3→4 slow: discovery calls not completing MEDDPICCC → sales training issue
    Stage 5→6 slow: proposals going to wrong stakeholder → qualification failure earlier
    Stage 6→7 slow: legal/contract delays → operational issue; escalate to entity CEO
    Stage 7→Close slow: internal process at prospect → follow-up urgency needed
  Step 5: Recommend specific intervention per bottleneck stage
  
VELOCITY RED FLAGS:
  Any deal >2× benchmark in any stage → flag to entity sales lead; request explanation
  Total cycle >2× benchmark → entity CEO aware; deal is likely stuck or dead
  Stage 7 deal >14 days without close → entity CEO makes direct call to economic buyer
  Cohort velocity increasing quarter-over-quarter → systemic issue; process or market review
```

## Output Format

```markdown
# Deal Velocity Analysis — [Entity] — [Period]
**Data pulled from:** GoHighLevel | **Closed deals analyzed:** [N] | **Date:**

---

## Velocity Benchmarks vs. Actuals

| Stage | Benchmark | Actual Avg | Delta | Bottleneck? |
|-------|-----------|-----------|-------|-------------|
| Stage 1→2 | 14 days | X days | ±X | ⚠️/✅ |
| Stage 2→3 | 7 days | X days | ±X | |
| ... | | | | |
| **Total cycle** | 87 days | X days | ±X | |

---

## Bottleneck Stages
[List stages above benchmark with root cause hypothesis and recommended action]

---

## Deal Cohort Velocity Trend

| Quarter | Avg Total Cycle | vs. Prior Quarter |
|---------|----------------|------------------|
| Q2 | X days | +X days |

---

## Actions
1. [Action — owner — due date]
```

## Output Contract
- Velocity analysis is a diagnostic tool, not a grading system — the goal is to understand where deals slow and why, not to assign blame to individual reps; when a stage is consistently above benchmark, the first question is whether the benchmark is right for this market, this deal size, or this buyer type; sometimes the benchmark needs updating (e.g., Allevio Stage 5→6 is longer in Q4 when employers are finalizing benefit renewals); sometimes the process needs updating; sometimes the rep needs coaching; distinguish between these before prescribing an intervention
- Velocity trends matter more than point-in-time data — a single deal that took 45 days in Stage 5→6 is an outlier; a cohort trend where Stage 5→6 has grown from 18 days in Q1 to 31 days in Q3 is a systemic signal that requires root cause investigation; Dr. Lewis tracks velocity trends quarterly and flags increasing cycle length to entity CEOs as a leading indicator that something in the sales process or market has changed
- HITL required: any deal >2× benchmark → entity sales lead reviews and provides explanation; Stage 7 deal >14 days → entity CEO direct call to economic buyer; total cycle trending >2× benchmark → entity CEO + Dr. Lewis; quarterly velocity review → entity CEO + Dr. Lewis; velocity benchmark update → Dr. Lewis approves

## System Dependencies
- **Reads from:** GoHighLevel (deal timestamps per stage; deal value; rep; close date); revops-pipeline-manager (stage definitions; hygiene standards); revops-win-loss-tracker (lost deal root causes correlate with velocity patterns)
- **Writes to:** Velocity analysis reports (SharePoint → [Entity] → Sales → Velocity → [Period]); GoHighLevel (aged deal flags); entity CEO velocity alerts; monthly pipeline review packet
- **HITL Required:** >2× benchmark deals → sales lead; Stage 7 >14 days → entity CEO; cohort trend increasing → entity CEO + Dr. Lewis; benchmark update → Dr. Lewis

## Test Cases
1. **Golden path:** Allevio 90-day velocity review. 14 closed deals analyzed. Stage 3→4 avg: 11 days (✅ below 14 benchmark). Stage 5→6 avg: 28 days (⚠️ above 21 benchmark). Stage 5→6 root cause: proposals are going to HR contacts who need to escalate to CFO for budget approval — a qualification failure (we're not confirming economic buyer in Stage 4). Recommendation: add "economic buyer confirmed" to Stage 4 exit criteria; sales lead to retrain on MEDDPICCC economic buyer field. Total cycle avg: 91 days (✅ near 87 benchmark). Entity CEO briefed; Stage 4 exit criteria updated in GoHighLevel.
2. **Edge case:** Column6 Stage 5→6 (IO Pending → IO Signed) is averaging 35 days against a 14-day benchmark — but the reason is legal review at the agency, which Column6 cannot control → Dr. Lewis: "The root cause is not a Column6 process issue — it's agency legal review latency. Our 14-day benchmark assumes a standard agency IO process. Some agencies have 30-day legal review cycles by policy. The right response is: (1) segment IO timing by agency size and procurement process in GoHighLevel; (2) set IO-specific expected close dates that reflect the actual agency review timeline; (3) flag long-review agencies in GoHighLevel so Column6 sales can set expectations early and plan around it. The benchmark still stands as a target for new agencies; we'll track by agency cohort."
3. **Adversarial:** Entity CEO requests that deal velocity analysis exclude deals that "fell through for external reasons" → Dr. Lewis: "I understand the logic, but excluding deals post-hoc based on reason distorts the velocity data. The right approach is to tag lost deals in GoHighLevel with reason codes (lost to competitor / lost to budget / no decision / cycle too slow) and analyze velocity separately by reason code. Then we can see: are deals that went to 'no decision' systematically slower in early stages? Are 'lost to budget' deals faster? That's actionable intelligence. But if we cherry-pick which deals to include in the analysis, the averages stop meaning anything."

## Audit Log
Velocity analysis reports retained quarterly. Benchmark vs. actual tracking. Aged deal flag records. Entity CEO escalation records. Benchmark update history (Dr. Lewis approval required).

## Deprecation
Velocity benchmarks reviewed annually or when entity go-to-market model changes significantly. Analysis process reviewed when GoHighLevel data structure changes. Bottleneck interventions tracked and evaluated for effectiveness quarterly.
