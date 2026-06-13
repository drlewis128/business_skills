---
name: product-okr-tracker
description: "Build and track product OKRs aligned to business objectives. Use when the user says 'product OKRs', 'product objectives', 'key results for product', 'OKR planning', 'what should product team focus on', 'quarterly product goals', 'track product OKRs', or 'product team OKR'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1-Q4>] [--year <YYYY>] [--product <name>]"
---

# Product OKR Tracker

Build product OKRs and track progress against them. OKRs give product teams a forcing function for focus — without them, every feature request looks equally important and roadmaps become wish lists. For MBL's product work, OKRs cascade from Matt Mathison's business objectives down through the product team, ensuring every sprint connects to something that matters at the portfolio level.

## When to Use
- Quarterly planning — set product OKRs for the quarter
- Mid-quarter check-in — score current OKRs and course-correct
- End of quarter — close and grade OKRs, inform next quarter
- Roadmap prioritization — validate that roadmap items connect to OKRs
- Portfolio company review — assess whether their product team has clear goals

## OKR Framework

```
Objective: Ambitious qualitative goal — answers "what are we trying to achieve?"
  - Inspiring, directional, memorable
  - Achievable within the quarter
  - Owned by the product team

Key Result: Quantitative measure of progress toward the objective
  - Measurable (yes/no or percentage)
  - 0.7 is the target grade (not 1.0 — 1.0 means you aimed too low)
  - 3-5 KRs per objective

Grade: 0.0–1.0 at end of quarter
  0.0–0.3: Failed or deprioritized
  0.4–0.6: Made progress but fell short
  0.7–1.0: On target to exceeded (0.7 is the "sweet spot")
  1.0: Either perfect execution or the target was too easy — investigate
```

## OKR Cascade for MBL Products

```
Business (Matt Mathison) → AI Strategy (Dr. Lewis) → Product (specific product)

Example cascade:
  Business Objective: Validate AI orchestration as MBL's operational edge
  AI Strategy KR: Deploy 2 portfolio company AI workflows by Q3
  Product Objective: Ship Meeting Intelligence to MBL production
  Product KR: 80% of meetings produce summaries within 4 hours
```

## Output Format

```markdown
# Product OKRs — <Product> | <Quarter> <Year>
**Set:** <date> | **Owner:** Dr. John Lewis
**Cascade from:** <parent objective from Dr. Lewis / Matt Mathison>

---

## Objective 1: <Objective statement>

**Owner:** Dr. John Lewis
**Why this quarter:** <Why this is the priority now>

| # | Key Result | Target | Current | Grade | Status |
|---|-----------|--------|---------|-------|--------|
| 1.1 | <KR statement> | <100%/target value> | <current> | 0.0 | 🔴 Not started |
| 1.2 | <KR statement> | <100%/target value> | <current> | 0.0 | 🔴 Not started |
| 1.3 | <KR statement> | <100%/target value> | <current> | 0.0 | 🔴 Not started |

**Objective health:** 🔴 At risk / 🟡 In progress / 🟢 On track
**Confidence:** Low / Medium / High

---

## Objective 2: <Objective statement>

[Same format]

---

## Mid-Quarter Check-In (<date>)

| Objective | KR | Target | Actual | Grade | Action needed |
|-----------|---|--------|--------|-------|--------------|
| Obj 1 | 1.1 | <N> | <N> | 0.6 | [What to do to get to 0.7] |
| Obj 1 | 1.2 | <N> | <N> | 0.3 | 🚨 At risk — escalate |
| Obj 2 | 2.1 | <N> | <N> | 0.8 | On track |

---

## End-of-Quarter Grades

| Objective | Avg KR Grade | Obj Grade | Lessons |
|-----------|------------|---------|---------|
| Obj 1 | 0.72 | 0.7 ✅ | [What drove success] |
| Obj 2 | 0.45 | 0.5 ⚠️ | [What went wrong; inform next quarter] |

**Quarter grade:** <N>/1.0
**Next quarter input:** <List of carry-over KRs and lessons learned>

---

## Initiatives Mapped to OKRs

| Initiative / Feature | Drives OKR | Expected KR impact |
|--------------------|-----------|------------------|
| [Feature A] | Obj 1, KR 1.1 | +20% toward target |
| [Feature B] | Obj 2, KR 2.2 | +30% toward target |
| [Feature C] | None | ⚠️ Not OKR-aligned — deprioritize or reconsider |
```

## Output Contract
- OKRs always cascade from a parent objective — orphaned OKRs lose alignment to business value
- Key Results always quantifiable — "improve" is not a KR without a number
- Mid-quarter check-in always triggers action if grade <0.4 — early warning, not end-of-quarter surprise
- Initiative mapping always included — roadmap items not connected to OKRs should be questioned
- HITL required: Dr. Lewis approves product OKRs; Matt Mathison aligned on quarterly objectives; KRs at 0.3 at mid-quarter trigger escalation to Dr. Lewis

## System Dependencies
- **Reads from:** Business OKRs (Matt Mathison), roadmap, sprint board (Monday.com), product analytics
- **Writes to:** OKR tracking document (SharePoint/Product); Monday.com sprint board (OKR links)
- **HITL Required:** Dr. Lewis approves quarterly OKRs; Matt Mathison aligned; mid-quarter risk escalation

## Test Cases
1. **Golden path:** Q3 2026 Meeting Intelligence OKRs → Objective: "Ship Meeting Intelligence as MBL's primary AI workflow tool"; KR1: 80% of meetings have summaries within 4 hours (target); KR2: >70% D30 retention of active users; KR3: >50% of action items completed in Monday.com within 7 days; Mid-quarter: KR1 at 0.8 (on track), KR2 at 0.5 (at risk — activation problem), KR3 unknown (tracking not set up yet); action: fix activation issue (retention skill), build tracking for KR3
2. **Edge case:** An OKR target was hit at 0.3 into the quarter — was it too easy? → investigate before celebrating; if the team moved faster than expected (hustle), that's great; if the target was just too low, it wasn't an OKR — it was a task; for next quarter, set a stretch target 30-50% higher
3. **Adversarial:** Leadership wants to add 5 objectives with 5 KRs each = 25 metrics → OKRs work because they force prioritization; 25 metrics is not prioritization; maximum 3 objectives × 4 KRs = 12 numbers; if everything is a priority, nothing is; negotiate to the top 3 objectives this quarter

## Audit Log
OKR sets retained per quarter. Grades and lessons documented. Initiative-to-OKR mapping retained.

## Deprecation
Retire when product team has a dedicated OKR platform (Lattice, Perdoo, Linear Goals) with automated tracking and progress reporting.
