---
name: bd-okr-tracker
description: "Track business development OKRs. Use when the user says 'BD OKRs', 'business development OKRs', 'track BD goals', 'BD objectives and key results', 'partnership OKRs', 'BD quarterly goals', 'BD OKR review', 'BD goal tracking', 'partnership program OKRs', or 'BD team OKRs'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--quarter <Q1|Q2|Q3|Q4>] [--year <year>]"
---

# BD OKR Tracker

Set and track Business Development OKRs — the quarterly objectives and key results that define what the BD function is trying to accomplish and how progress will be measured. BD OKRs translate the company's growth strategy into specific partnership and business development targets. Without OKRs, BD activity is self-directed (pursuing whatever feels interesting) rather than strategy-directed (pursuing what the company needs most).

## When to Use
- Setting Q[N] BD objectives and key results at the start of the quarter
- Mid-quarter BD review — where are we against the OKRs?
- End-of-quarter BD OKR grading — what did we accomplish?
- Matt Mathison asks "what is BD focused on this quarter?"
- Planning the following quarter's priorities based on current-quarter performance

## OKR Design Principles

```
BD OKR design rules:

1. 3-4 objectives maximum: More than 4 objectives means nothing is a priority.
   BD objectives should map directly to the company's quarterly growth priorities.

2. Key results must be measurable: "Grow partner network" is not a KR.
   "Sign 3 new referral partner agreements" is a KR.

3. Key results should be ambitious but achievable: The target for a healthy KR grade
   is 0.7 (70% completion). A grade of 1.0 means the goal was too easy.
   A grade of 0.3 means the goal was too ambitious or the quarter went off-track.

4. BD OKRs connect to company OKRs: Every BD OKR should trace to a company-level
   objective (revenue growth, market expansion, new product, cost reduction).

5. Activity metrics vs. outcome metrics: OKRs should measure outcomes (signed partners,
   pipeline generated, revenue attributed), not just activity (outreach emails sent,
   calls made). Activity without outcomes is not progress.
```

## Output Format

```markdown
# BD OKRs — <Company Name>
**Quarter:** Q[N] [Year] | **Date:** <date>
**Owner:** Dr. John Lewis

---

## Q[N] BD Objectives

### Objective 1: [Outcome-focused objective — what we're trying to accomplish]
*Connects to company goal: [Specific company-level objective this maps to]*

| Key Result | Target | Current | Grade (0-1.0) | Status |
|-----------|--------|---------|--------------|--------|
| KR1: [Measurable result 1] | [N] | [N to date] | [0.0-1.0] | 🟢 On track / 🟡 At risk / 🔴 Off track |
| KR2: [Measurable result 2] | $[X] | $[X to date] | | |
| KR3: [Measurable result 3] | [N%] | [N% to date] | | |

**Objective 1 grade:** [Average of KR grades] | **Confidence:** [High / Medium / Low]
**Quarter-end narrative:** [What happened? What drove the grade?]

---

### Objective 2: [Objective]
*Connects to company goal: [Company objective]*

| Key Result | Target | Current | Grade | Status |
|-----------|--------|---------|-------|--------|
| KR1 | | | | |
| KR2 | | | | |

**Objective 2 grade:** | **Confidence:**

---

### Objective 3: [Objective]
*Connects to company goal:*

| Key Result | Target | Current | Grade | Status |
|-----------|--------|---------|-------|--------|
| KR1 | | | | |
| KR2 | | | | |

**Objective 3 grade:** | **Confidence:**

---

### Objective 4 (optional): [Objective]

---

## Standard BD OKR Set (starting point — customize per quarter)

**Objective 1: Grow the active partner program to [N] partners**
Connects to: company revenue growth goal
- KR1: Sign [N] new referral partner agreements
- KR2: Achieve [N] total active partners (Green health status)
- KR3: Partner program generates ≥[X%] of company's new customer pipeline

**Objective 2: Drive partner program revenue contribution**
Connects to: revenue target; partner channel efficiency
- KR1: Partner-attributed revenue = $[X] ([X%] of total)
- KR2: Partner program ROI ≥ 3× (closed revenue / total program cost)
- KR3: Partner customer acquisition cost ≤ $[X] (at or below direct CAC)

**Objective 3: Build the BD pipeline for next quarter**
Connects to: future-quarter revenue; market expansion
- KR1: Add [N] qualified prospects to Stage 3+ of BD pipeline
- KR2: Complete discovery calls with [N] prospective partners
- KR3: Ecosystem map completed for [target market] — top [N] partnership candidates identified

**Objective 4: Strengthen existing partner relationships**
Connects to: partner retention; revenue reliability
- KR1: All active partners with 🟡 health score moved to 🟢 by end of quarter
- KR2: QBRs completed for all Gold-tier partners
- KR3: Partner NPS ≥ [X] (if measured)

---

## Quarter-End BD OKR Scorecard

| Objective | Grade | Key wins | Key misses |
|-----------|-------|---------|-----------|
| 1 — Partner growth | [0.0-1.0] | [Specific wins] | [Specific misses] |
| 2 — Revenue contribution | [0.0-1.0] | | |
| 3 — Pipeline building | [0.0-1.0] | | |
| 4 — Partner relationships | [0.0-1.0] | | |
| **Overall BD grade** | **[Average]** | | |

---

## Quarter-End Narrative

**What we accomplished:** [2-3 sentences — most important BD outcomes]
**What we missed and why:** [Honest assessment — no sugarcoating]
**What we're changing next quarter:** [Specific — what's different in Q[N+1] based on what we learned?]

---

## Matt Mathison Summary

BD Q[N] OKR grade: [X] overall. Partner program now at [N] active partners; [X%] of company pipeline from partners. Grade notes: [What drove the grade — specific, honest]. Next quarter priorities: [Top 2]. **Matt Mathison action needed:** [Approve Q[N+1] BD OKRs / No action — Dr. Lewis managing]
```

## Output Contract
- 3-4 objectives maximum — BD OKRs with 6+ objectives are not OKRs; they are a to-do list; the constraint to 3-4 forces the hard decisions about what BD is actually focused on this quarter
- Key results must be measurable with a specific number — "increase partner activity" is not a KR; "achieve a referral submission rate of ≥2/month per Gold partner" is a KR; every KR must have a number that can be looked up in the CRM or tracked unambiguously
- Grade of 0.7 is the target, not 1.0 — BD OKRs that all grade 1.0 are too easy; if Dr. Lewis scores 1.0 across all KRs every quarter, the targets should be raised; a grade of 0.7 means ambitious and achievable
- Quarter-end narrative always honest — OKR reviews that only celebrate wins are not useful; the misses section and the "what we're changing" section are the most valuable part; if everything went perfectly, we're not learning
- HITL required: Dr. Lewis sets BD OKRs; Matt Mathison reviews and approves each quarter's BD OKRs before the quarter begins; mid-quarter review at 6 weeks requires Matt Mathison awareness of any objective that is 🔴 off track; quarterly grading reviewed by Matt Mathison within 1 week of quarter end

## System Dependencies
- **Reads from:** Company quarterly OKRs, prior BD OKR grades, partner program data (pipeline, revenue, health scores)
- **Writes to:** BD OKR tracker (SharePoint/BD/OKRs); Matt Mathison quarterly brief
- **HITL Required:** Dr. Lewis sets; Matt Mathison approves before quarter begins; 🔴 items require Matt Mathison awareness; quarterly grade reviewed by Matt Mathison

## Test Cases
1. **Golden path:** Allevio Q3 BD OKRs set and graded → Objective 1 (Grow partners): KR1 sign 3 new partners (actual: 2 — grade 0.67), KR2 achieve 8 active partners (actual: 7 — grade 0.87); Objective 2 (Revenue): KR1 $75K partner-attributed revenue (actual: $83K — grade 1.0, means target was too conservative), KR2 ROI ≥3× (actual: 3.8× — grade 1.0); Objective 3 (Pipeline): KR1 10 Stage 3+ prospects (actual: 7 — grade 0.70); Overall: 0.78 — strong quarter; Quarter-end narrative: "Revenue exceeded target because Partner A had an exceptional quarter; missed new partner signing target because 1 prospect delayed signing to Q4"; Q4 change: move Q4 new partner target from 3 to 4 to account for Q3 carryover
2. **Edge case:** Mid-quarter review shows 2 of 4 objectives are 🔴 off track → notify Matt Mathison immediately with a specific explanation and recovery plan: "Objective 1 (new partners) is off track — only 1 signed vs. 3 target; 1 prospect has pushed to Q4, 1 passed qualification; recovery: identify 2 replacement prospects from Tier 2 pipeline this week; realistically we're aiming for 2 of 3 by quarter end"; Matt Mathison should decide whether to accept the revised target or add BD resources
3. **Adversarial:** At quarter-end, one KR is borderline (9 new prospects identified vs. 10 target — 90%) and Dr. Lewis is tempted to round up to grade 1.0 → do not round up; the OKR grading must be honest; 9 of 10 is 0.9, not 1.0; the value of OKRs comes from honest measurement over time — inflated grades erode the signal and make the system worthless; 0.9 is an excellent grade; call it what it is

## Audit Log
OKRs retained by quarter and year. Mid-quarter reviews logged. Quarter-end grades documented. Matt Mathison approvals retained. Year-over-year BD performance tracked.

## Deprecation
Retire when portfolio companies have a company-wide OKR system (Monday.com, Lattice, or similar) where BD OKRs are managed as part of the standard quarterly planning and review cycle.
