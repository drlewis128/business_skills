---
name: beta-program-manager
description: "Design and run a beta program for a product launch. Use when the user says 'beta program', 'beta users', 'early access', 'beta launch', 'run a beta', 'beta cohort', 'limited launch', 'beta testing program', 'pilot program', or 'pre-launch users'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--size <N>] [--duration <N weeks>]"
---

# Beta Program Manager

Design and run a structured beta program for product launches. A beta program is how you validate product-market fit with real users before committing to a full launch. Done right, a beta gives you high-quality feedback, early advocates, and confidence in the product before you scale. Done wrong, it's a vague "early access" program that generates noise but no signal. For MBL's AI products, the beta is especially important because AI output quality must be validated before broad rollout.

## When to Use
- Pre-launch of a new product or major feature
- Expanding a product to a new portfolio company (Allevio, HIVE, Column6)
- AI product where output quality needs validation with real users
- Portfolio company is launching a new product — structure their beta
- Replacing an informal pilot that's generating no useful feedback

## Beta Design Principles

```
Small and intentional:
  Beta cohort size: 5-20 users for internal products; 20-50 for portfolio
  Too large: too many edge cases, feedback is overwhelming, no time to act
  Too small: not enough diversity to find real problems

Structured feedback:
  Beta users need a way to give feedback (not just "email us")
  Weekly check-ins (30 min) produce 10× more useful feedback than surveys
  One owner per beta user — someone is responsible for their success

Clear exit criteria:
  Beta ends when: specific metric reached / time elapsed / specific bugs fixed
  "Beta forever" = no product rigor
  Set the go/no-go criteria before the beta starts

Internal beta first:
  MBL team members are beta user #1 through N
  If MBL can't use it, don't give it to portfolio companies
  This is especially important for AI output quality
```

## Beta Phases for MBL Products

```
Phase 0 — Dogfood (internal, Dr. Lewis only):
  Use the product yourself for 1-2 weeks
  Find the obvious problems before real users see them
  Fix P0 and P1 bugs

Phase 1 — Internal beta (MBL team, 3-5 users, 2 weeks):
  Controlled environment; high feedback quality; close support possible
  Exit criteria: zero P0/P1 bugs; core user journey completion rate > 90%

Phase 2 — Limited portfolio beta (1 portfolio company, 10-20 users, 4 weeks):
  Higher real-world signal; diverse workflows; HIPAA constraints apply for Allevio
  Exit criteria: D7 retention > 40%; CSAT > 4.0/5; zero P0 bugs; HITL rate < 20%

Phase 3 — Expanded launch (all relevant portfolio companies):
  Go/no-go based on Phase 2 exit criteria
```

## Output Format

```markdown
# Beta Program Plan — <Product>
**Date:** <date> | **Owner:** Dr. John Lewis
**Beta phase:** 0 / 1 / 2 / 3
**Duration:** <N> weeks | **Cohort size:** <N> users

---

## Beta Objectives

1. Validate: <core assumption the beta must test>
2. Measure: <primary metric>
3. Collect: <specific feedback needed — e.g., AI output quality, workflow fit>

**Go/no-go criteria (to proceed to next phase):**
- [ ] P0/P1 bugs: zero
- [ ] CSAT: ≥ <N>/5
- [ ] Core journey completion: ≥ <N>%
- [ ] [AI-specific]: HITL rate: < <N>%
- [ ] D7 retention: ≥ <N>%

---

## Beta Cohort

| # | User / Org | Role | Why selected | Onboarding date | Owner |
|---|-----------|------|-------------|----------------|-------|
| 1 | Dr. Lewis (MBL) | Internal admin | Dogfood; highest context | <date> | Dr. Lewis |
| 2 | [Name] (MBL) | End user | Primary user type | <date> | Dr. Lewis |
| 3 | [Name] (Allevio) | Portfolio lead | Representative pilot org | <date> | Dr. Lewis |

**Selection criteria:** <Why these specific users; what diversity they represent>

---

## Beta Schedule

| Week | Activity | Deliverable |
|------|---------|-------------|
| 1 | Onboarding; first use | Onboarding completion rate |
| 2 | First full week of use | Weekly feedback form; 30-min check-in |
| 3 | Issue resolution; follow-up | P1 bugs closed; second check-in |
| 4 | Go/no-go assessment | Go/no-go report to Matt Mathison |

---

## Feedback Collection

| Method | Cadence | Owner | Questions |
|--------|---------|-------|---------|
| Weekly 30-min check-in | Weekly | Dr. Lewis | "What worked? What didn't? What would make this 2× better?" |
| In-product feedback button | Continuous | Automated | 1 question + free text |
| Weekly survey (CSAT + NPS) | Weekly | Dr. Lewis | 5 questions max |
| Session recording | Continuous | Analytics | Review weekly |

---

## Incident Protocol

| Severity | Description | Response time | Escalation |
|---------|-------------|--------------|-----------|
| P0 | Product unusable; data loss; security | 1 hour | Dr. Lewis immediate; Matt Mathison if >4h unresolved |
| P1 | Core journey broken; AI producing clearly wrong output | 4 hours | Dr. Lewis within 2h |
| P2 | Significant friction; non-core failure | Next day | Backlog + communicate to beta user |

---

## Go/No-Go Assessment

**Criteria met:** <list — check or fail>
**Recommendation:** Go to Phase <N+1> / Extend beta / Halt

**Rationale:** <2-3 sentences>
**Matt Mathison approval required before Phase 2 or 3**
```

## Output Contract
- Go/no-go criteria always defined before beta starts — post-hoc criteria are judgment, not governance
- Every beta user has a named owner (usually Dr. Lewis) — unmanaged beta users generate noise
- AI-specific exit criteria always included for AI products — standard product metrics miss AI failure modes
- Matt Mathison approval required before Phase 2 or 3 — portfolio company involvement requires executive sign-off
- HITL required: Dr. Lewis owns beta program; Matt Mathison approves Phase 2+ launch; HITL checkpoint before any beta user receives AI outputs that could affect business decisions

## System Dependencies
- **Reads from:** Product analytics, HITL review logs, AI output logs, session recordings
- **Writes to:** Beta program plan (SharePoint/Product); beta feedback log; go/no-go report
- **HITL Required:** Dr. Lewis manages program; Matt Mathison approves Phase 2+ expansion; Dr. Lewis reviews all AI output quality reports

## Test Cases
1. **Golden path:** Meeting Intelligence Phase 1 internal beta → 5 MBL users; 2 weeks; Week 1: onboarding complete (4/5 users — 1 had Krista.ai auth issue, resolved Day 3); Week 2: CSAT 4.3/5, zero P0 bugs, 2 P1 bugs (fixed by Day 10), D7 retention 60% (target 40%), HITL rate 22% (target <20% — slightly elevated, action item extraction needs tuning); Go/no-go: all criteria met except HITL rate slightly elevated; recommendation: Go to Phase 2 with HITL improvement as Sprint N priority
2. **Edge case:** Beta user is the CEO of a portfolio company (high visibility, high stakes) → treat as a VIP user; Dr. Lewis personally manages their onboarding; weekly check-in is non-negotiable; P1 bugs affecting them escalate to P0 response time; their feedback carries more weight in the go/no-go decision
3. **Adversarial:** Team wants to skip beta and launch directly because "it's working in dogfood" → dogfood is not a beta; Dr. Lewis using the product is a sample of 1; dogfood finds Dr. Lewis's bugs; beta finds other users' bugs; for AI products especially, output quality varies dramatically by user workflow; internal dog-fooding is necessary but not sufficient for launch

## Audit Log
Beta cohorts documented. Feedback and issue logs retained. Go/no-go decisions and rationale archived.

## Deprecation
Retire when MBL has established a formal product launch process with a dedicated beta program framework that includes automated feedback collection and quality monitoring.
