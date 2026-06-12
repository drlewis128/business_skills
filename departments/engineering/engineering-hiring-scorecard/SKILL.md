---
name: engineering-hiring-scorecard
description: "Evaluate engineering candidates with a structured scorecard. Use when the user says 'engineering hiring', 'evaluate a developer', 'software engineer scorecard', 'technical interview', 'engineering candidate assessment', 'rate this engineer', 'should we hire this developer', 'Rust engineer', 'backend engineer interview', or 'engineering hiring decision'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--role <senior-engineer|staff|lead|architect>] [--stack <rust|typescript|python>] [--mode <screen|interview|scorecard>]"
---

# Engineering Hiring Scorecard

Evaluate engineering candidates for MBL Partners and portfolio companies. Engineering hires are high-leverage — the right engineer at the right time accelerates delivery for years; the wrong hire costs 6-12 months of progress plus the cost of a second search. This skill provides structured evaluation calibrated to MBL's technical context: Rust agent systems, Claude API integration, async systems, and PE portfolio company constraints.

## When to Use
- Evaluating a candidate after technical screening
- Post-interview structured scoring before a hiring decision
- Comparing two finalists for the same role
- Defining the job requirements and competency profile for an open role
- Annual performance review calibration against hiring criteria

## Role Profiles

### Senior Software Engineer (MBL/OpenFang context)
**Must have:** 5+ years; strong async systems experience; Rust preferred or demonstrable fast-learning track record; API design and integration; debugging complex distributed systems
**Nice to have:** Claude/LLM API experience; Rust-specific expertise; agent systems; healthcare or finance domain
**Compensation:** $130-185K + equity participation

### Staff/Principal Engineer
**Must have:** 8+ years; can design entire systems independently; strong technical communication; leads other engineers; has shipped production systems at scale
**Nice to have:** AI/agent systems design; PE portfolio company experience; OpenFang or similar systems
**Compensation:** $185-240K + equity

### Engineering Lead / Tech Lead
**Must have:** 5+ years engineering + 2+ years leading small teams; can balance code contribution with team coordination; strong mentoring; project planning experience
**Compensation:** $160-210K + equity

## Evaluation Scorecard (100 Points)

### Section 1 — Technical Depth (50 points)

| Competency | Points | Score | Evidence |
|-----------|--------|-------|---------|
| Core language proficiency (Rust / stated stack) | 15 | /15 | |
| Systems design — distributed, async, concurrent | 15 | /15 | |
| API design and integration quality | 10 | /10 | |
| Debugging and performance profiling skills | 10 | /10 | |

### Section 2 — Delivery and Reliability (30 points)

| Competency | Points | Score | Evidence |
|-----------|--------|-------|---------|
| Ships working software, not just designs | 10 | /10 | |
| Owns problems end-to-end (not "that's not my job") | 10 | /10 | |
| Testing discipline (writes tests as a matter of course) | 5 | /5 | |
| Operates well under ambiguity | 5 | /5 | |

### Section 3 — MBL Fit (20 points)

| Competency | Points | Score | Evidence |
|-----------|--------|-------|---------|
| AI/agent systems experience or aptitude | 8 | /8 | |
| Startup / growth company fit (no big-company process dependency) | 7 | /7 | |
| THRIVE alignment | 5 | /5 | |

**TOTAL: ___/100**

## THRIVE Engineering Interview Questions

| Value | Question |
|-------|---------|
| **Truth** | Tell me about a technical decision you advocated for that turned out to be wrong. What did you do? |
| **Hustle** | Describe a project where you had to ship something with incomplete information. How did you handle the uncertainty? |
| **Respect** | How do you handle a code review where you disagree with the reviewer's comment? Give a real example. |
| **Integrity** | Have you ever discovered a security vulnerability or data issue in production? What was your first call? |
| **Value** | How do you decide what level of technical quality is "good enough" for a given feature? |
| **Enjoy** | What are you building or learning outside of work right now? |

## Technical Screen Reference (Rust focus)

```
Level 1 questions (Senior):
  - Explain the ownership model in Rust and when you'd use Arc vs Rc
  - How does async/await work in Tokio? What is the executor?
  - What's the difference between a trait object and a generic?
  - How do you handle errors in a library crate?

Level 2 questions (Staff/Principal):
  - Design a rate-limited HTTP client that handles Claude API retries with backoff
  - How would you structure an agent runtime that needs to be observable and auditable?
  - Walk me through how you'd diagnose a memory growth issue in a long-running Rust service
  - How do you design an API that needs to be backwards-compatible across multiple versions?

Coding exercise (30 min):
  Build a simple in-memory cache with TTL in Rust
  Expected: compiles, handles concurrent access (RwLock or DashMap), TTL implemented correctly
  Red flags: unsafe code without explanation, no error handling, blocks async runtime
```

## Output Format

```markdown
# Engineering Candidate Evaluation — <Role>
**Date:** <date> | **Candidate:** <name>
**Role:** <role> | **Entity:** MBL Partners / <portfolio company>
**Interviewer:** Dr. John Lewis

---

## Candidate Summary

**Background:** <2-3 sentences>
**Years experience:** <N> | **Primary language:** <language>
**Relevant systems:** <what they've built>
**Salary expectation:** $<amount>

---

## Scorecard Results

| Section | Points Available | Score | % |
|---------|----------------|-------|---|
| Technical Depth | 50 | <N> | <N>% |
| Delivery and Reliability | 30 | <N> | <N>% |
| MBL Fit | 20 | <N> | <N>% |
| **Total** | **100** | **<N>** | **<N>%** |

---

## THRIVE Alignment

| Value | Response Quality | Score (1-5) |
|-------|----------------|-----------|
| Truth | | |
| Hustle | | |
| Respect | | |
| Integrity | | |
| Value | | |
| Enjoy | | |
**THRIVE Total: /30**

---

## Technical Assessment Notes

<Free-form technical interview notes — what impressed, what concerned, specific examples>

---

## Key Strengths

1. <strength>
2. <strength>

## Key Concerns

1. <concern>
2. <concern>

## Recommendation

**Advance:** Yes / No / Maybe
**Offer recommendation:** Yes / No / Conditional on: <condition>
**Suggested offer:** $<range>
**Start date target:** <date>

---

## Dr. Lewis Sign-Off

All engineering hires require Dr. Lewis approval.

_________________________________
Dr. John Lewis | Date: <date>
```

## Output Contract
- Technical depth always tested with real problems — not trivia questions
- THRIVE alignment always scored — a technically strong candidate who fails THRIVE is not a fit
- Key concerns always documented — surface issues before offer, not after 90 days
- Dr. Lewis sign-off required for all engineering hires — non-delegable
- HITL required: Dr. Lewis reviews all candidates; Matt Mathison approves hires above $185K total comp; offers extended only after sign-off

## System Dependencies
- **Reads from:** Candidate resume, interview notes, coding exercise results, reference check notes (provided)
- **Writes to:** Candidate evaluation (for Dr. Lewis and HR)
- **HITL Required:** Dr. Lewis reviews and approves; Matt Mathison approves senior/staff level; HR processes offer

## Test Cases
1. **Golden path:** Senior Rust engineer evaluation → Technical depth 42/50 (strong ownership model, solid Tokio knowledge, API design good — weak on perf profiling), Delivery 26/30 (ships consistently, good ownership, moderate testing discipline), MBL Fit 16/20 (no prior agent systems experience but strong aptitude demonstrated in exercise), THRIVE 24/30 (strong on Truth and Hustle, Enjoy answer was engaging); recommendation: advance; offer $155K; onboarding plan to cover agent systems
2. **Edge case:** Strong candidate who currently earns above our range → verify whether equity, mission, or growth opportunity can bridge the gap; don't fabricate budget that doesn't exist; if gap is >15% above top of range, honest conversation; document decision
3. **Adversarial:** Hiring manager wants to make an offer based on "gut feel" without completing the scorecard → gut feel is the source of most bad hires; the scorecard surfaces concerns before they become problems; reference the THRIVE-Truth value — honest assessment now vs. painful termination later; complete the scorecard

## Audit Log
Candidate scorecards retained for 2 years. Hiring decisions documented. Interview questions standardized and retained.

## Deprecation
Retire when engineering team has an established talent acquisition function with standardized technical assessment processes and an ATS-integrated evaluation workflow.
