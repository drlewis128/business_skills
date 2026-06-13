---
name: product-hiring-scorecard
description: "Evaluate product manager candidates with a structured scorecard. Use when the user says 'hire a product manager', 'PM interview', 'evaluate PM candidate', 'PM hiring', 'product manager scorecard', 'PM interview questions', 'assess PM skills', or 'product manager hiring criteria'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--role <PM|senior-PM|head-of-product>] [--company <MBL|Allevio|HIVE|Column6>]"
---

# Product Hiring Scorecard

Evaluate product manager candidates against MBL's requirements. MBL needs PMs who can work in a fast-moving, resource-constrained environment with AI at the center of the product stack. Generalist PMs who only write PRDs won't cut it. MBL needs PMs who can do discovery, work directly with engineers, understand AI product dynamics, and move fast. This scorecard catches the difference.

## When to Use
- Screening PM candidates before bringing them on-site
- Structuring PM interviews across multiple interviewers
- Post-interview calibration meeting — consistent scoring basis
- Evaluating a contractor or consulting PM
- Portfolio company — helping Allevio, HIVE, or Column6 evaluate a PM hire

## Scorecard (100 points)

```
Product Thinking (40 points)
  Discovery & user empathy    — 15 points
  Prioritization & tradeoffs  — 15 points
  Metric definition           — 10 points

Execution (30 points)
  Working with engineering    — 15 points
  Shipping track record       — 15 points

MBL Fit (30 points)
  AI/technical product experience — 15 points
  THRIVE alignment               — 10 points
  Speed & scrappiness            — 5 points

Hire thresholds:
  90-100: Exceptional hire — offer fast
  75-89:  Strong — hire with normal timeline
  60-74:  Adequate — conditional (specific gaps must be acceptable)
  <60:    Pass
```

## Interview Structure

```
Interview 1 (Dr. Lewis, 45 min): Product Thinking
  - Product discovery and user empathy
  - Prioritization frameworks they actually use
  - How they define success

Interview 2 (Dr. Lewis or engineering, 30 min): Execution
  - Technical depth and working with engineering
  - A specific product they shipped — deep dive on how they ran it

Interview 3 (Matt Mathison, 30 min): Strategic fit
  - Business model understanding
  - Portfolio company environment
  - THRIVE alignment
```

## Output Format

```markdown
# PM Hiring Scorecard — <Candidate Name>
**Date:** <date> | **Role:** <role> | **Company:** <entity>
**Interviewer(s):** Dr. John Lewis [, <others>]

---

## Scorecard

### Product Thinking (40 points)

**Discovery & User Empathy — <N>/15**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| "Walk me through how you found out what users actually needed on your last product" | <notes> | <N> |
| "Tell me about a time you were wrong about what the user wanted. What happened?" | <notes> | <N> |
| "How do you get user feedback when you can't do formal research?" | <notes> | <N> |

**Interviewer notes:**

---

**Prioritization & Tradeoffs — <N>/15**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| "How do you decide what to put in the MVP vs. defer to v2?" | <notes> | <N> |
| "Tell me about a time you cut a feature the team wanted. How did you manage it?" | <notes> | <N> |
| "If engineering tells you the highest priority feature will take 3× longer than expected, what do you do?" | <notes> | <N> |

**Interviewer notes:**

---

**Metric Definition — <N>/10**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| "What's the North Star metric for a product you've owned and how did you pick it?" | <notes> | <N> |
| "How do you know when a feature you shipped worked?" | <notes> | <N> |

**Interviewer notes:**

---

### Execution (30 points)

**Working with Engineering — <N>/15**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| "Tell me about a time you had a conflict with engineering about what to build. How did you resolve it?" | <notes> | <N> |
| "How do you write requirements? Walk me through your process for a recent spec." | <notes> | <N> |
| "How technical are you — are you comfortable reading API docs or reviewing basic code?" | <notes> | <N> |

**Interviewer notes:**

---

**Shipping Track Record — <N>/15**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| "Walk me through a product you owned from discovery to launch. What happened after?" | <notes> | <N> |
| "What's the hardest thing you shipped and what made it hard?" | <notes> | <N> |
| "Tell me about a product that didn't work. What did you learn?" | <notes> | <N> |

**Interviewer notes:**

---

### MBL Fit (30 points)

**AI/Technical Product Experience — <N>/15**

| Question | Notes | Score (0-5) |
|---------|-------|------------|
| "Have you worked with AI/ML products? How do you think about quality for AI outputs?" | <notes> | <N> |
| "How do you test a product where the output is probabilistic — you can't always predict what it'll produce?" | <notes> | <N> |
| "How do you think about human-in-the-loop design — when should the AI act, when should a human review?" | <notes> | <N> |

**Interviewer notes:**

---

**THRIVE Alignment — <N>/10**

| Dimension | Signal | Notes | Score (0-2) |
|-----------|--------|-------|------------|
| Truth | Will they deliver bad news clearly? | <notes> | <N> |
| Hustle | Evidence of moving fast, bias to action | <notes> | <N> |
| Respect | How they talk about past colleagues/teams | <notes> | <N> |
| Integrity | How they handled difficult ethical situations | <notes> | <N> |
| Value | ROI/impact focus vs. feature shipping for its own sake | <notes> | <N> |

**Speed & Scrappiness — <N>/5**
- Can they ship with limited resources and no dedicated design/research? (0-5)

**Interviewer notes:**

---

## Total Score: <N>/100

**Hire / Pass / Hold:** <decision>
**Key strengths:** <list>
**Key concerns:** <list>
**Recommendation to Matt Mathison:** <2-3 sentences — BLUF>
```

## Output Contract
- All three interview rounds required before final recommendation — no hire on one round
- THRIVE alignment score must be ≥7/10 — cultural misalignment is a disqualifier regardless of total score
- AI/technical product experience evaluated for all PM roles at MBL — this is table stakes
- Recommendation to Matt Mathison always includes BLUF — he doesn't need the scorecard detail, just the bottom line
- HITL required: Dr. Lewis reviews all scorecards; Matt Mathison approves all PM hires; no offer extended without Dr. Lewis and Matt Mathison alignment

## System Dependencies
- **Reads from:** Candidate resume, interview notes, LinkedIn profile
- **Writes to:** Hiring scorecard (SharePoint/Hiring); offer recommendation
- **HITL Required:** Dr. Lewis reviews all scores; Matt Mathison approves hire; offer requires both approvals

## Test Cases
1. **Golden path:** PM candidate for MBL internal AI products → Product Thinking: 32/40 (strong discovery skills, solid prioritization, good metric sense); Execution: 24/30 (strong shipping track record, moderate technical depth); MBL Fit: 22/30 (limited AI experience but strong learning agility, THRIVE alignment excellent); Total: 78/100; Recommendation: Strong hire with expectation that AI product learning happens in first 90 days; Dr. Lewis to mentor on AI quality frameworks
2. **Edge case:** Strong technical candidate (ex-engineer PM) but weak user empathy → low empathy PM builds technically impressive products that users don't love; score discovery/empathy hard; a 10/15 on technical execution with an 8/15 on empathy is a different hire than 15/15 technical with 5/15 empathy; for MBL's current stage, empathy is a weight-bearing skill
3. **Adversarial:** Candidate has impressive credentials (Google PM, top MBA) but gives vague answers to concrete questions → credentials don't score; this scorecard evaluates demonstrated capability; "I owned the growth surface at Google" without specific numbers, decisions, and tradeoffs is a pass; require specifics; vague answers at interview predict vague requirements in the role

## Audit Log
Scorecards retained per candidate. Hire/pass decisions documented. Outcome tracking: hired candidates' performance vs. scorecard prediction.

## Deprecation
Retire when MBL has a dedicated HR/recruiting function with established PM hiring process and scorecard.
