---
name: ops-process-improvement
description: "Run a process improvement initiative. Use when the user says 'process improvement', 'improve this process', 'kaizen', 'lean process', 'six sigma', 'continuous improvement', 'improve operations', 'process redesign', 'root cause analysis', 'eliminate defects', 'reduce errors', 'PDCA', 'improve quality', 'fix a recurring problem', 'systematic improvement', or 'operations improvement initiative'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--process <process name>] [--problem <description of the problem>] [--method <lean|six-sigma|PDCA|root-cause>]"
---

# Ops Process Improvement

Run structured process improvement initiatives at MBL portfolio companies — using Lean, PDCA, and root cause analysis to systematically solve recurring operational problems. Process improvement at portfolio scale is practical, not academic: identify the problem, find the root cause, test a solution, measure whether it worked, and standardize the improvement. No Lean certification required — just discipline and honesty about what's actually happening.

## When to Use
- A recurring problem keeps coming back despite repeated fixes
- A process metric (error rate, cycle time, cost) is consistently worse than target
- The ops-bottleneck-analyzer or ops-workflow-optimizer has identified a specific problem to solve
- A quality issue is generating rework, customer complaints, or compliance risk
- Matt Mathison asks "why does [problem] keep happening?"

## Process Improvement Framework

```
PDCA cycle (Plan-Do-Check-Act):
  Plan: Define the problem, measure current state, identify root cause, design solution
  Do: Implement the solution on a small scale (pilot)
  Check: Measure whether the solution worked vs. baseline
  Act: Standardize if it works; adjust and re-pilot if it doesn't

Root cause tools:
  5 Whys: Ask "why?" five times to get from symptom to root cause
  Fishbone diagram: Map causes across categories (People, Process, Equipment, Environment, Materials, Measurement)
  Pareto analysis: 80/20 — which 20% of causes produce 80% of the defects?

Process improvement scope definition:
  Problem statement (specific): "The billing claim denial rate at Allevio is 18% — 12 points above the industry benchmark of 6% — and has been above 15% for 3 consecutive quarters."
  NOT: "Billing claims are a problem."
  
  Goal statement (measurable): "Reduce denial rate from 18% to 8% within 90 days."
  NOT: "Improve billing accuracy."

Solutions that stick vs. solutions that don't:
  Stick: Process changes embedded in the SOP; systems configured to enforce the standard; training on the root cause, not just the fix
  Don't stick: Manual reminders; extra checking that bypasses root cause; relying on people to remember
```

## Output Format

```markdown
# Process Improvement Initiative — <Initiative Name>
**Company:** <Entity> | **Process:** [Process name]
**Problem statement:** [Specific — with data]
**Goal:** [Measurable target — by when]
**Initiative owner:** Dr. John Lewis | **Process owner:** [Name]
**Date:** [Date] | **Target completion:** [Date]

---

## Phase 1: Plan

### Current State Measurement

| Metric | Baseline (current) | Target | Data source |
|--------|------------------|--------|------------|
| [Primary problem metric] | [X] | [Y] | [Source] |
| [Secondary metric] | [X] | [Y] | |
| [Volume metric] | [N per period] | | |

**Baseline data collection period:** [Dates] | **Sample size:** [N occurrences]

### Root Cause Analysis

**5 Whys:**
1. Why is [problem] happening? → [Symptom-level answer]
2. Why is that? → [One level deeper]
3. Why is that? → [One level deeper]
4. Why is that? → [One level deeper]
5. Why is that? → **[Root cause — the systemic failure]**

**Root cause statement:** [One sentence — specific, systemic, actionable]

**Fishbone categories — contributing factors:**
| Category | Contributing factors identified |
|---------|-------------------------------|
| People | [e.g., "Coding staff inconsistently trained on modifier rules"] |
| Process | [e.g., "No pre-submission eligibility check step"] |
| Equipment/Systems | [e.g., "AdvancedMD configuration missing modifier validation"] |
| Environment | [e.g., "Payer-specific rules not documented"] |
| Materials | [e.g., "ICD-10 code reference is outdated"] |

**Primary root cause (Pareto):** [The one or two factors responsible for the majority of defects]

### Solution Design

| Proposed solution | Addresses root cause | Effort | Cost | Risk |
|-----------------|---------------------|--------|------|------|
| [Solution A] | [Yes / Partially] | [Low/Med/High] | $[X] | [Low/Med/High] |
| [Solution B] | | | | |

**Selected solution:** [Solution A / combination — rationale]
**Why this addresses the root cause:** [Specific linkage — not just "it will help"]

**Pilot design:**
- Pilot scope: [Which team, volume, or time period to test]
- Pilot duration: [X weeks]
- Success criteria: [Metric target during pilot]
- Rollback plan: [If pilot fails, how do we revert]

---

## Phase 2: Do (Pilot Implementation)

**Pilot start date:** [Date] | **Pilot end date:** [Date]
**Pilot scope:** [N transactions / N employees / N locations]

**Implementation actions:**
| Action | Owner | By when | Status |
|--------|-------|---------|--------|
| [Update SOP to include new step] | Dr. Lewis | [Date] | |
| [Configure AdvancedMD validation rule] | [Vendor/IT] | [Date] | |
| [Train billing team on new process] | Dr. Lewis | [Date] | |

---

## Phase 3: Check (Measure Results)

**Pilot results:**

| Metric | Baseline | Pilot result | Improvement | Goal achieved? |
|--------|---------|-------------|------------|--------------|
| [Primary metric] | [X] | [Y] | [+/-Z%] | ✅ / ❌ |
| [Secondary metric] | [X] | [Y] | | |

**Pilot conclusion:** ✅ Solution is working — proceed to standardize / 🔴 Solution not working — diagnose and re-pilot / 🟡 Partial improvement — adjust and extend pilot

**What we learned during the pilot:**
- [Finding 1 — something unexpected that helps or complicates the solution]
- [Finding 2]

---

## Phase 4: Act (Standardize or Adjust)

**If solution worked:**
- [ ] Update SOP to embed the solution as the standard process
- [ ] Remove old workarounds or tools that are now unnecessary
- [ ] Training completed for all affected employees
- [ ] System configuration changes made permanent
- [ ] Metric tracking established (ongoing)

**Ongoing measurement:**
| Metric | Monitor frequency | Owner | Alert threshold |
|--------|-----------------|-------|----------------|
| [Primary metric] | [Weekly / Monthly] | [Owner] | [If goes above X, escalate] |

**Next improvement cycle:** [After stabilizing this improvement, the next problem to address is: [description]]
```

## Output Contract
- Problem statement is data-driven — the improvement initiative doesn't start with a solution; it starts with a specific, measured problem; "billing denials are high" is not a problem statement; "billing denial rate is 18% vs. 6% industry benchmark for the past 3 quarters" is; without a baseline measurement, there is no way to know whether the improvement worked
- Root cause, not symptom — most process improvements fail because they address symptoms rather than root causes; "train people better" addresses a symptom; "the eligibility verification step is missing from the SOP" addresses the process failure that makes training irrelevant; the 5 Whys technique is used to go deeper than the first obvious answer
- Pilot before full rollout — every solution is piloted on a limited scope before full implementation; the pilot is where the solution is tested in reality rather than theory; the rollback plan must be defined before the pilot starts (so the team isn't scrambling if the pilot fails); a pilot that shows partial results is not a failure — it's learning
- Success criteria are defined before measurement — the goal is set at the start ("reduce denial rate from 18% to 8%"), not after the pilot when the temptation is to declare success at whatever the result was; pre-defined criteria create accountability; "we achieved an improvement" is not the same as "we achieved our goal"
- HITL required: Dr. Lewis designs and oversees improvement initiatives; process owner conducts the pilot with Dr. Lewis oversight; solutions that change SOPs or system configurations require Dr. Lewis approval before going live; results reviewed by Dr. Lewis before declaring success; significant process changes at portfolio companies reviewed with Matt Mathison

## System Dependencies
- **Reads from:** Process data (error rates, cycle times, volume), existing SOP, root cause interviews, system logs
- **Writes to:** Process improvement record (SharePoint/Ops/<Company>/Process Improvement/); updated SOP; system configuration changes; training materials; ongoing metric tracking
- **HITL Required:** Dr. Lewis designs initiative; process owner runs pilot under Dr. Lewis oversight; SOP changes approved by Dr. Lewis; system config changes require IT/vendor + Dr. Lewis; significant improvements reported to Matt Mathison

## Test Cases
1. **Golden path:** Allevio — billing denial rate 18%, target <10% → Problem statement confirmed with 3 months of data; 5 Whys: denials → codes rejected → modifier errors → coders don't know all modifier requirements → payer-specific modifier rules aren't documented anywhere → coders learn individually through trial and error (root cause: missing documentation and no pre-submission validation); Solution: (1) create payer-specific modifier guide for top 5 payers, (2) add pre-submission validation step in AdvancedMD workflow; Pilot: 2 weeks on the Allevio billing team; Results: denial rate drops from 18% to 9.5% in pilot period; 🟢 Goal achieved; Standardize: update SOP, publish modifier guide, configure AdvancedMD validation permanently; Ongoing: track denial rate weekly; alert if above 12%; Next: address documentation cycle time
2. **Edge case:** The pilot works but the team reverts to the old process 2 weeks after standardization → This is a reinforcement failure from the ADKAR framework (see ops-change-manager); the improvement is technically correct but not embedded; diagnosis: was the SOP updated? Was training done? Is the old process still available? Most reversions occur because the new process requires effort and the old shortcut is still available — close the shortcut; if reversion persists, apply the change management plan
3. **Adversarial:** "We've tried fixing this before and it never sticks" → That's useful data — it means previous fixes addressed symptoms, not root causes; respond: "Previous attempts failed to stick usually because they addressed what happened, not why it keeps happening. Let me run a 5 Whys analysis with the team — not the managers, but the people doing the work. In my experience, the root cause at this level of recurring problem is almost always a missing standard (nobody documented the right way) or a broken input (something upstream is producing inconsistent inputs). Two hours with the team will tell us which one it is."

## Audit Log
All improvement initiatives retained with baseline, pilot, results, and final outcomes. SOP version changes attributed to improvement initiative. Metric tracking results retained. Process owner sign-offs retained.

## Deprecation
Retire when portfolio companies have operations managers with Lean/Six Sigma capability who lead improvement initiatives and present results to Dr. Lewis, and a continuous improvement culture that generates initiatives from within the team rather than requiring Dr. Lewis to identify and lead each one.
