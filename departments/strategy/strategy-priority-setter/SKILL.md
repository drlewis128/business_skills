---
name: strategy-priority-setter
description: "Facilitate prioritization decisions — force ranking initiatives, requests, and options. Use when the user says 'prioritize', 'what should we focus on', 'what comes first', 'rank these', 'too many things to do', 'what is most important', 'force rank', 'priority setting', 'prioritization session', 'focus decision', 'what to work on', 'too many priorities', 'pick the top ones', 'what do we do first', 'priority framework', or 'what matters most'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--items <list or count>] [--criteria <roi|urgency|risk|thesis>] [--output <ranked-list|decision|brief>]"
---

# Priority Setter

Facilitate prioritization decisions for Dr. Lewis and MBL portfolio companies — providing a structured framework to force-rank competing demands, initiatives, and options when there are more things to do than capacity to do them. At PE portfolio scale, the most common strategic failure is not choosing the wrong initiatives — it is trying to execute too many initiatives simultaneously and doing all of them poorly. The priority setter's job is to enable the hard choices: not "can we do all of these?" (we can't) but "which of these creates the most value and what do we explicitly defer or drop?"

## When to Use
- Too many OKR options — need to pick the top 3
- A portfolio company CEO has 8 "priorities" — need to reduce to 3
- Competing capital requests — which gets funded first?
- Dr. Lewis's personal prioritization — what is the highest-value use of this week?
- Matt Mathison asks "what should we focus on?"

## Prioritization Framework

```
Prioritization frameworks by context:

1. IMPACT × CONFIDENCE matrix (default for initiative ranking):
   Plot each initiative on:
     Impact: Revenue/EBITDA/risk reduction impact if successful (1-5)
     Confidence: How certain are we this will work? (1-5)
   Upper right (high impact, high confidence): Do now
   Upper left (high impact, low confidence): Investigate first; pilot before full commitment
   Lower right (low impact, high confidence): Delegate
   Lower left (low impact, low confidence): Drop

2. TIME × VALUE (for scheduling):
   High value + urgent = Do now (CEO time)
   High value + not urgent = Schedule and protect time (strategy)
   Low value + urgent = Delegate
   Low value + not urgent = Drop or defer indefinitely

3. MUST / SHOULD / NICE-TO-HAVE (for backlog triage):
   Must: Legally required / Business continuity / Matt Mathison commitment
   Should: High value but not critical path; do if capacity exists
   Nice-to-have: Interesting but not meaningfully moving the thesis

4. THRIVE filter (for mission-critical decisions):
   Truth: Does this initiative reflect honest assessment of what's needed?
   Hustle: Does this represent the highest-leverage use of our effort?
   Respect: Does prioritizing this respect our obligations to others?
   Integrity: Is this consistent with our commitments and values?
   Value: Does this create real economic or patient/customer value?
   Enjoy: Can the team be engaged in executing this?

5. PE investment return criteria (for capital and CEO time allocation):
   Rank by: IRR / payback / EBITDA impact
   Default: Allocate CEO time to the same places as capital — the highest-IRR activities

Prioritization anti-patterns to challenge:
  "Everything is a priority" → If everything is a priority, nothing is; go through the list and ask:
    "What if we dropped this? What is the actual consequence?" 
    If the consequence is tolerable, drop it.
    
  "We can do all of these in parallel" → Parallel execution of multiple initiatives reduces quality;
    in a 10-person company, 5 simultaneous initiatives means each has 2 people and 1 is the CEO;
    depth-first sequential execution consistently outperforms parallel breadth
    
  The loudest voice wins → Prioritization must be based on value and evidence, not advocacy;
    the person who argues most passionately for an initiative is not necessarily advocating for
    the highest-value initiative — they may be advocating for their own domain
```

## Output Format

```markdown
# Priority Setting — [Company Name / Dr. Lewis workload]
**Date:** [Date] | **Facilitator:** Dr. Lewis | **Decision maker:** [CEO / Matt Mathison / Dr. Lewis]
**Context:** [What we're prioritizing and why we need a decision now]

---

## Items Under Consideration

| # | Initiative / Item | Description | Requestor |
|---|----------------|------------|----------|
| 1 | [Item] | [Brief description] | [Who is requesting] |
| 2 | | | |
| 3 | | | |

---

## Prioritization Analysis

### Impact × Confidence Matrix

| Item | Revenue/EBITDA impact | Confidence | Impact score | Confidence score | Priority |
|------|----------------------|-----------|-------------|-----------------|---------|
| [Add provider] | +$180K/yr EBITDA impact | High — established model | 5 | 5 | 1 |
| [New service line] | +$120K/yr EBITDA | Medium — new model | 4 | 3 | 2 |
| [Geographic expansion] | +$400K/yr EBITDA | Low — unproven in new market | 5 | 2 | 4 |
| [HIPAA compliance] | Risk reduction: $22K expected value | High — mandatory | 3 | 5 | 3* |

*Compliance: scores differently; mandatory = top-3 regardless of ROI

### Force Ranking

| Rank | Item | Why | Action |
|------|------|-----|--------|
| 1 | [Add provider] | Highest confidence × impact; thesis-critical | Do now; CEO owns |
| 2 | [HIPAA compliance] | Mandatory; non-discretionary | Do now; Dr. Lewis owns |
| 3 | [New service line] | High impact; investigate model before full launch | Pilot in Q2; $35K capital |
| Defer | [Geographic expansion] | Low confidence; premature given core model still maturing | Revisit at Year 3 |
| Drop | [Social media marketing] | Low impact; no evidence of ROI for MSO patient acquisition | Drop from list |

---

## Recommendation

**Priority 1 (Do now, this quarter):** [Item 1 + Item 2]
**Priority 2 (Plan and launch next quarter):** [Item 3]
**Deferred (revisit at [date/trigger]):** [Item 4]
**Dropped (explicit, documented):** [Item 5 — with reason]

**What this frees up:** By dropping [Item 5] and deferring [Item 4], the CEO recovers approximately [X] hours/month and [X] days of Dr. Lewis time for deeper execution on the top 3.

---

## Matt Mathison Decision Brief (if applicable)

Priority decision for [Entity]: [N] items under consideration. Recommendation: [Top 3 in one sentence each]. Deferred: [Item — reason and trigger for revisit]. Dropped: [Item — reason]. Impact: [Summary — frees CEO time for X; focuses capital on Y]. Action from Matt Mathison: [None — CEO decision / Approve deferral of X / Confirm priority sequence].
```

## Output Contract
- Every prioritization session produces explicit drops and deferrals — a prioritization that produces a ranked list without any drops is not a prioritization; it's a sorted backlog; real prioritization requires choices: some items don't get done, at least this quarter; Dr. Lewis facilitates until the decision-maker explicitly names what is being deferred and what is being dropped; "we'll get to everything eventually" is not prioritization
- The criteria are explicit before scoring — applying impact × confidence after the items are listed (reverse-engineering a priority) is bias, not analysis; Dr. Lewis establishes the prioritization criteria at the start of the session before any scoring occurs; the criteria may be: (1) EBITDA impact, (2) confidence of success, (3) strategic fit, (4) mandatory/discretionary — agreed before scoring to prevent advocacy distorting the analysis
- The output is a decision, not a report — the goal of a priority setting session is a commitment from the decision-maker: "Priority 1 is [X], Priority 2 is [Y], we're deferring [Z]"; a priority-setting exercise that ends with "let's think about this more" has not produced a decision; Dr. Lewis drives to commitment by asking: "If we could only do two of these four this quarter, which two?" and working from that answer up to the agreed priority set
- HITL required: Dr. Lewis facilitates; CEO makes portfolio company prioritization decisions; Matt Mathison makes decisions that affect capital allocation across portfolio companies; any decision that affects LP returns, hold periods, or material capital requires Matt Mathison; Dr. Lewis does not make priority decisions on behalf of the CEO or Matt Mathison — facilitates and recommends, doesn't decide

## System Dependencies
- **Reads from:** Annual strategic plan (strategy-annual-plan-builder), OKR backlog (strategy-company-okr-builder), VCP initiative list (strategy-value-creation-plan), capital available (strategy-capital-allocation), CEO capacity (estimated from execution tracker)
- **Writes to:** Priority decision record (SharePoint/Strategy/<Company>/Decisions/); OKR update if priority change affects KRs; VCP update if initiatives are deferred or dropped; Matt Mathison decision brief if cross-portfolio
- **HITL Required:** Dr. Lewis facilitates; CEO decides portfolio company priorities; Matt Mathison decides cross-portfolio capital priorities; all priority decisions documented

## Test Cases
1. **Golden path:** Allevio CEO has 8 "priorities" for Q3 — Dr. Lewis facilitates prioritization → List: (1) provider hire, (2) telehealth launch, (3) Tucson expansion, (4) HIPAA remediation, (5) EHR upgrade, (6) marketing website refresh, (7) board SOP documentation, (8) employee handbook update; apply criteria: impact × confidence, then mandatory override; HIPAA remediation: mandatory (documented gap) → Priority 1; provider hire: high impact (thesis-critical) + high confidence → Priority 2; EHR upgrade: compliance-connected (security risk) + moderate urgency → Priority 3; telehealth: high impact but low confidence (new model) → Defer to Q4 with pilot design in Q3; Tucson expansion: premature (core model not yet at 90% capacity) → Defer to Year 3; website refresh, handbook, SOP: low thesis impact → delegate website to COO; handbook and SOP are important but can be done in hours, not weeks — schedule as a 3-hour working session with Dr. Lewis; CEO committed to 3 priorities; Tucson and telehealth explicitly deferred with triggers
2. **Edge case:** Two portfolio company CEOs are each requesting Matt Mathison's time for their separate strategic sessions in the same week → This is a Dr. Lewis prioritization problem: Matt Mathison's time is the portfolio's scarcest resource; Dr. Lewis assess: which company has the more time-sensitive decision? Does either need Matt Mathison in the room, or can Dr. Lewis represent and bring back alignment? If one company has an LOI decision due Friday and the other is doing annual planning, the LOI company gets Matt Mathison's time; the annual planning company gets Dr. Lewis's facilitation with Matt Mathison reviewing the output document; Dr. Lewis coordinates both sessions without both landing in the same day
3. **Adversarial:** "We don't need to deprioritize anything — the team has enough capacity" → Capacity is always finite; the question is whether the current allocation of capacity to priorities is optimal; a 6-person company cannot execute 8 simultaneous priorities at full quality; the capacity argument usually reflects an inability to choose rather than genuine surplus capacity; Dr. Lewis accepts the argument only if the CEO can show: which team member owns which initiative, how many hours/week each initiative requires, and confirmation that the total doesn't exceed available capacity; in practice, this analysis reveals the capacity constraint; Dr. Lewis facilitates it rather than accepting the assertion

## Audit Log
Priority decision records retained. CEO/Matt Mathison commitment records retained. Deferred items and trigger conditions retained. Dropped items and rationale retained. Decision reversal records retained if priorities are later changed.

## Deprecation
Retire when portfolio company leaders have developed their own prioritization discipline — with Dr. Lewis providing input on thesis alignment and strategic fit rather than facilitating the prioritization session from scratch.
