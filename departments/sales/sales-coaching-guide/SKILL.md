---
name: sales-coaching-guide
description: "Build a structured coaching plan for a sales rep. Use when the user says 'coach this rep', 'sales coaching', 'rep is struggling', 'improve rep performance', 'coaching plan', 'why is this rep underperforming', or 'how do I help this rep'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<rep-name> [--gap <activity|pipeline|skills|close-rate|forecast>] [--urgency <coaching|pip>]"
---

# Sales Coaching Guide

Build a structured coaching plan for a sales rep. Good coaching is specific, measurable, and focused — not generic encouragement. This skill identifies the root cause of underperformance, separates coachable problems from structural ones, and builds an action plan with milestones.

## When to Use
- A rep is underperforming vs. quota (< 80% attainment)
- A rep's pipeline is thin, stale, or missing key stages
- Call quality is poor (feedback from recordings or manager observation)
- Win rate is below team average for a specific rep
- Pre-PIP — structure coaching before escalating to performance management
- New manager wants to establish a consistent coaching cadence

## Coaching vs. Performance Management

| Situation | Approach |
|-----------|---------|
| Below quota, first time, still ramping | Coaching — increase support, identify skill gap |
| Below quota, repeated quarter, experienced rep | Structured coaching with documented milestones |
| Below quota, 2+ quarters, with coaching documented | Performance Improvement Plan (PIP) — see `pip-drafter` (HR) |
| Behavior issue (honesty, CRM fraud, ethics) | Skip coaching → HR + Legal |

## Root Cause Framework

Before coaching, diagnose the root cause — coaching the wrong thing wastes everyone's time.

### The 4 Rep Failure Modes

| Failure Mode | Symptoms | Root Cause |
|-------------|---------|-----------|
| **Activity gap** | Low call/email/meeting volume | Motivation, time management, or clarity on expectations |
| **Pipeline gap** | Deals not progressing; pipeline thin | Weak prospecting, poor qualification, or bad territory |
| **Skill gap** | Advancing stages but not closing | Discovery, demo, or closing technique needs development |
| **Mindset gap** | Activity is fine, skill is fine, but "nothing works" | Confidence, belief in product, or culture fit issue |

## Coaching Plan Structure

### Weekly Coaching Cadence
- **Monday:** Pipeline review (30 min) — what are the 3 most important deals this week?
- **Wednesday:** Activity check (15 min) — on pace for weekly targets?
- **Friday:** Weekly debrief (30 min) — what worked, what didn't?

### Call Coaching (Record and Review)
- Listen to 2 calls per week together
- Score against discovery/demo framework
- Give feedback: 2 positives + 1 specific improvement per call
- Avoid generic feedback ("be more confident") — be specific ("ask a follow-up question after they answer instead of moving on")

## Output Format

```markdown
# Sales Coaching Plan — <Rep Name>
**Manager:** <name> | **Start date:** <date> | **Review checkpoint:** <date — 30 days>
**Current attainment:** X% | **Root cause diagnosis:** <Failure mode>

---

## Diagnosis

**Primary gap:** Activity / Pipeline / Skill / Mindset
**Evidence:**
- [Specific data point — not "seems low", e.g. "8 outbound touches/week vs. 25 target"]
- [Second data point]

**What's NOT the problem:**
- [Clear what you've ruled out — avoids coaching the wrong thing]

---

## Coaching Focus (Top 3 — No More)

### Focus 1: [Specific Skill or Behavior]
**Why it matters:** [Connecting this to their results]
**Current state:** [What you observe now]
**Target state:** [What good looks like]
**How we'll practice:** [Specific activity — role play, call review, shadowing]
**Success signal:** [Measurable indicator they've improved]

### Focus 2: [Second Focus]
[Same structure]

### Focus 3: [Third Focus]
[Same structure]

---

## 30-Day Milestones (Measurable)

| Milestone | Target | Measurement | Due |
|-----------|--------|-------------|-----|
| [Specific metric] | [Value] | [How we'll track it] | <date> |
| [Pipeline coverage] | ≥ 3× quota | CRM pipeline report | Weekly |
| [Close rate] | ≥ X% | CRM closed deals | End of month |

---

## Weekly Coaching Schedule

| Day | Activity | Duration |
|-----|---------|---------|
| Monday | Pipeline review | 30 min |
| Wednesday | Activity check-in | 15 min |
| Friday | Call debrief (2 calls) | 45 min |

---

## Escalation Criteria

If by <date> (30 days):
- Pipeline coverage is still below 2× quota — escalate to formal PIP
- Attainment is still below 70% — escalate to formal PIP
- Manager coaching sessions are being skipped — HR conversation

---

## Documentation Log

| Date | Coaching Topic | Agreed Actions | Rep Acknowledgment |
|------|--------------|---------------|-------------------|
| <date> | <topic> | <action> | ✅ / Not yet |

```

## Output Contract
- Root cause always diagnosed before coaching prescription — no generic "do better"
- Coaching focused on ≤ 3 areas — more than 3 dilutes focus and overwhelms the rep
- Milestones always measurable and dated — "improve performance" is not a milestone
- Escalation criteria always explicit — coaching has a defined endpoint and outcome
- HITL required: Manager and Dr. Lewis review before sharing with rep; HR aware if PIP escalation is possible

## System Dependencies
- **Reads from:** Quota attainment data, pipeline data, call recordings/notes (provided or from `quota-attainment-tracker`)
- **Writes to:** Nothing (coaching plan for manager and rep review)
- **HITL Required:** Dr. Lewis reviews coaching plans that are pre-PIP; HR must be involved if escalation to PIP is anticipated; manager owns execution

## Test Cases
1. **Golden path:** Rep at 65% attainment, diagnosis shows skill gap in demo-to-proposal conversion → 3 specific coaching areas (discovery depth, demo customization, proposal timing), 30-day milestones, weekly call review cadence
2. **Edge case:** Rep activity is high and pipeline is full but win rate is 12% (vs. 28% team average) → focus on Stage 3-4 skill (demo and closing), not prospecting; specific call review process
3. **Adversarial:** Request to skip coaching and go straight to PIP because "we've already talked about this" → requires documented coaching first, asks for evidence of prior structured coaching, recommends 30-day plan with clear escalation criteria before PIP

## Audit Log
Coaching plans retained by rep and period. Outcomes (improved / escalated to PIP / role change) tracked.

## Deprecation
Retire when sales enablement or performance management platform provides structured coaching workflows with automated milestone tracking.
