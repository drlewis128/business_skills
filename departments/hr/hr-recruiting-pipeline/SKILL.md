---
name: hr-recruiting-pipeline
description: "Build and manage a recruiting pipeline for an open role. Use when the user says 'recruiting pipeline', 'hire for a role', 'build a candidate pipeline', 'fill an open position', 'recruiting strategy', 'sourcing candidates', 'where do we find candidates', 'how do we recruit for this', 'hiring pipeline', 'find candidates for', or 'run a search for'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <title>] [--level <entry|mid|senior|executive>] [--timeline <weeks>]"
---

# HR Recruiting Pipeline

Build and manage a structured recruiting pipeline for an open role at an MBL portfolio company — from sourcing through offer. Good recruiting is not posting a job and waiting; it's an active, structured process that sources the right candidates, qualifies them consistently, and moves fast enough that strong candidates don't drop out because the process is slow. At MBL scale, most hires require active sourcing — the best candidates are rarely the ones who apply.

## When to Use
- A new role has been approved and needs to be filled
- An employee has given notice and the backfill process needs to start
- Matt Mathison asks "where are we on the [role] search?"
- A portfolio company CEO needs help structuring their hiring process
- A role has been open for more than 4 weeks without a strong pipeline

## Recruiting Pipeline Framework

```
Four-stage recruiting pipeline:

Stage 1 — SOURCE (build the candidate pool):
  Channels: LinkedIn sourcing, referrals, job boards (Indeed, LinkedIn), 
            CPA/finance networks, industry associations
  Target: 15-20 qualified candidates in pipeline before screening starts
  MBL default: referrals first — ask the CEO, Dr. Lewis, Matt Mathison network first
  Time: Week 1-2

Stage 2 — SCREEN (qualify the pipeline):
  30-minute phone screen: fit, compensation, availability, interest level
  Goal: 20-30% pass rate — 4-6 candidates advance to interview
  Remove fast: if the first 2 minutes reveal a disqualifier, end politely
  Time: Week 2-3

Stage 3 — INTERVIEW (assess the finalists):
  2-3 rounds: structured interviews + work sample where applicable
  Standard: every candidate answers the same core questions — enables comparison
  Reference checks: 2-3 references per finalist, called before offer
  Time: Week 3-4

Stage 4 — OFFER (close the hire):
  Verbal offer first — confirm acceptance before written offer
  Written offer: 3-business-day acceptance window
  Background check: after verbal acceptance, before start date
  Time: Week 4-5

Total timeline: 4-6 weeks for non-executive roles; 8-12 weeks for CFO/executive
```

## Output Format

```markdown
# Recruiting Pipeline — <Role Title>
**Company:** <Entity> | **Department:** <Dept>
**Hiring manager:** <Name> | **Pipeline owner:** Dr. John Lewis
**Target start date:** <Date> | **Pipeline opened:** <Date>

---

## Role Overview

**Title:** [Full job title]
**Level:** [Entry / Mid / Senior / Executive]
**Compensation range:** $[X] – $[X] + [equity/bonus if applicable]
**Location:** [Remote / Hybrid / On-site — City, State]
**Reports to:** [Title]

**Why this role exists:** [1-2 sentences — new need vs. backfill; what will this person own?]

**Top 3 non-negotiables:**
1. [Must-have skill or experience]
2. [Must-have skill or experience]
3. [Must-have character/THRIVE trait — Integrity is always on this list for Finance roles]

---

## Sourcing Plan

| Channel | Owner | Target # | Status |
|---------|-------|---------|--------|
| LinkedIn outreach (direct sourcing) | Dr. Lewis | 10 candidates | 🟢 Active / 🔴 Not started |
| Referral ask — Matt Mathison, CEO, team | Dr. Lewis | 3-5 candidates | |
| Job posting — LinkedIn | Dr. Lewis | Inbound | |
| Job posting — Indeed | Dr. Lewis | Inbound | |
| [Industry-specific board / association] | Dr. Lewis | 2-3 candidates | |

**Referral ask sent to:** [List — with date]
**Job description posted:** ✅ / 🔴 Not yet | [Date posted]

---

## Pipeline Tracker

| Candidate | Source | Status | Next step | Notes |
|---------|--------|--------|----------|-------|
| [Name] | LinkedIn | [Stage 1-4 / Rejected / Offer] | [Action + date] | [Key note] |
| | | | | |

**Pipeline totals:**
- In pipeline: [N]
- Screen complete: [N]
- Interview stage: [N]
- Finalist: [N]
- Offer extended: [N]

---

## Interview Process

**Round 1 — Phone Screen (30 min) — Dr. Lewis:**
- Compensation aligned? [Y/N]
- Availability / start date realistic? [Y/N]
- Interested in the role? Do they ask good questions? [Y/N]
- THRIVE gut check — does this person have integrity? [Y/N]
→ Advance to R2 or reject with courtesy email

**Round 2 — Structured Interview (60 min) — Hiring manager + Dr. Lewis:**
Use role-specific scorecard. Every candidate answers the same core questions. Score before comparing.

**Round 3 — Final (if needed) — Matt Mathison / CEO:**
- Executive roles: Matt Mathison interviews all finalists
- Director and above: CEO or Dr. Lewis interviews all finalists
- Reference check gate: references called before Round 3

---

## Reference Check Tracker

| Candidate | Reference 1 | Reference 2 | Reference 3 | Completed |
|---------|------------|------------|------------|---------|
| [Name] | [Name/Title/contacted?] | | | ✅ / 🔴 |

---

## Offer Activity

| Candidate | Verbal offer | Written offer | Accepted | Start date |
|---------|------------|--------------|---------|-----------|
| | $[X] + [components] | [Date] | ✅ / Declined | |

**Background check:** [Pending / Clear / Issue — describe]

---

## Timeline

| Milestone | Target | Actual | Status |
|---------|--------|--------|--------|
| JD finalized | [Date] | | |
| Sourcing active | [Date] | | |
| Pipeline: 10+ candidates | [Date] | | |
| First screen complete | [Date] | | |
| Finalist identified | [Date] | | |
| Offer extended | [Date] | | |
| Start date | [Date] | | |

---

## Matt Mathison Update (weekly, 3 sentences max)
**Week of [date]:** Pipeline at [N] candidates — [N] screened, [N] advancing to interview. Strongest candidate so far: [1 sentence]. Next step: [1 sentence].
```

## Output Contract
- Active sourcing always — posting a job and waiting is not a recruiting strategy at MBL scale; every search must have an active outreach component (LinkedIn, referral asks); the sourcing plan must include at least one proactive channel, not just inbound
- Referral ask is always first — the cheapest, fastest, and highest-quality source of candidates is the existing network; before any LinkedIn sourcing or job board posting, a referral ask goes to Matt Mathison, the CEO, and Dr. Lewis's network; document who was asked and when
- Reference checks before offer — not after; a reference check that reveals a problem after the offer is extended creates a painful situation; references are called before the final interview round or before the offer decision; if references are unavailable, hold the offer
- Matt Mathison weekly update — every active search gets a weekly 3-sentence update to Matt Mathison: pipeline count, strongest candidate, next step; he should never have to ask "where are we on the search?"
- HITL required: Dr. Lewis owns the pipeline and all screening; hiring manager conducts structured interviews; executive hires (CFO, CEO-level) require Matt Mathison to interview all finalists; all offers at Director and above require Matt Mathison approval; compensation above the approved range requires Matt Mathison approval before verbal offer

## System Dependencies
- **Reads from:** Job description, compensation benchmarks, org chart, referral network
- **Writes to:** Recruiting pipeline tracker (SharePoint/HR/<Company>/Recruiting/); Matt Mathison weekly update; offer letter (after approval)
- **HITL Required:** Dr. Lewis runs pipeline; Matt Mathison interviews executive finalists; Dr. Lewis approval on offers below director; Matt Mathison approval on director and above; compensation exceptions always require Matt Mathison

## Test Cases
1. **Golden path:** Allevio controller search → Referral ask sent to Matt Mathison, CEO, and 3 MBL network contacts Day 1; LinkedIn sourcing active by Day 2 (10 targeted messages); job posted LinkedIn + Indeed Day 3; by Day 7: 8 inbound, 4 sourced = 12 in pipeline; Week 2: 6 phone screens (30 min each); 3 advance; Week 3: structured interviews with hiring manager; 2 finalists; references called for both (3 refs each); Week 4: finalist clear; verbal offer extended; offer accepted; Week 5: written offer signed; background check clear; start date set; total timeline: 5 weeks
2. **Edge case:** A strong candidate declines after the verbal offer because they received a competing offer that's $15K higher → do not automatically match; evaluate: (a) is this person worth $15K more than the approved range? (b) if yes, is Matt Mathison willing to approve the exception? (c) if no, thank them and move to the second finalist; document: "Candidate declined — competing offer $15K above range. Consulted Dr. Lewis. Decision: not pursuing exception — second finalist is also strong and within range." Do not let one declined offer collapse the search
3. **Adversarial:** CEO says "I want to hire my friend for this role — just skip the process" → the process is non-negotiable for protecting the company and Matt Mathison; respond: "I want to make sure this hire works out for everyone. Let's run your friend through the same process — it protects you legally (documented hiring process), and if they're the right person, they'll pass easily. It's also a courtesy to your friend: a well-documented hire is harder to challenge later. What I can do is fast-track the timeline — we can have a decision in 10 days."

## Audit Log
All recruiting pipelines retained by role and date. Candidate interactions documented. Reference check notes retained. Offer decisions and outcomes retained. Rejection documentation retained. Matt Mathison weekly updates archived.

## Deprecation
Retire when each portfolio company has a dedicated HR manager or recruiter who owns the recruiting pipeline with documented processes that don't require Dr. Lewis's direct management of each search.
