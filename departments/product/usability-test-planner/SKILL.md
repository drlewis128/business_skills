---
name: usability-test-planner
description: "Plan and conduct usability tests for product designs. Use when the user says 'usability test', 'user testing', 'test the design', 'can users figure this out', 'UX testing', 'prototype test', 'usability study', 'test the interface', 'task-based testing', or 'find UX problems'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--prototype <link>] [--mode <plan|run|report>] [--participants <N>]"
---

# Usability Test Planner

Plan and conduct usability tests for MBL products. Usability tests find UX problems before they become support tickets, churn drivers, or failed product launches. Unlike user interviews (which understand problems), usability tests evaluate whether a specific design solves the problem. Even 5 participants reveals the majority of major usability issues — you don't need a large sample.

## When to Use
- A new UI design is ready for testing before engineering builds it
- A feature launched and users are confused or not completing flows
- Testing an agent output format — is the summary format actually usable?
- Onboarding flow review — where do new users drop off?
- Before a significant redesign — document current usability baseline

## Usability Testing Framework

```
Types:
  Moderated: Researcher present; real-time; best for complex flows; can probe
  Unmoderated: Participant does it alone; faster; better sample size; less depth
  Remote: Video call; most practical for MBL; record screen + voice

5-user rule:
  5 participants reveal 85% of usability problems
  Beyond 8-10: diminishing returns on new issues found
  For complex multi-step flows: 8-10 participants

Think-aloud protocol:
  Ask users to narrate their thoughts as they use the product
  "Tell me what you're thinking as you go through this"
  Do NOT guide them; do NOT answer questions (redirect: "what would you expect?")
  Silence is data — note when they pause or hesitate
```

## Task Design

```
Good usability test tasks:
  - Realistic (based on actual use cases)
  - Scenario-based (give context, not instructions)
  - Open-ended (no answer clues embedded in the task)

Bad task: "Click the 'Create Action Item' button and fill in the form."
  (Instructions, not a task)

Good task: "Imagine you just got out of a meeting with your Allevio team. 
A key decision was made about Q4 staffing. How would you make sure that 
decision doesn't get lost?"
  (Scenario + goal; no instructions; they have to figure out the UI)
```

## Output Format

```markdown
# Usability Test Plan — <Product/Feature>
**Date:** <date> | **Researcher:** Dr. John Lewis
**Product:** <name> | **Prototype/Version:** <Figma link / live URL>
**Participants:** <N> | **Method:** Moderated remote

---

## Research Questions

"Does the [feature/flow] allow users to [goal] without assistance?"
"Where do users get confused or stuck?"
"What do users think the [element] does before clicking it?"

---

## Participant Profile

**Who we need:**
- Role: <description>
- Experience: <relevant experience level>
- NOT: <exclusions — don't test on designers; don't test on power users if testing for new users>

**Participant source:** MBL team / Portfolio company contacts / CS-sourced customers

---

## Tasks

### Task 1: <Goal Statement>

**Scenario:**
"Imagine you're [role] and you've just [context]. Please [open-ended goal]."

**Success criteria:** <what counts as completing the task without assistance>
**Time limit:** <N> minutes (stop if not completed — note as fail)
**Observation focus:** <specific things to watch for>

### Task 2: <Goal Statement>

[Same format]

---

## Session Structure

**Duration:** 60 minutes
**Setup:** Screen share + recording (with consent)

| Time | Activity |
|------|---------|
| 0:00-0:05 | Introduction, consent, think-aloud warm-up |
| 0:05-0:10 | Screener questions (confirm participant is right profile) |
| 0:10-0:50 | Tasks 1-3 (think-aloud) |
| 0:50-1:00 | Debrief: "What stood out? What was confusing? What would you change?" |

---

## Observation Template (complete during session)

**Participant:** P<N> | **Date:** <date>
**Completed Task 1:** ✅ / ❌ | **Time:** <N> min | **Assists given:** <N>

| Task | Moment | Observation | Quote | Severity |
|------|--------|------------|-------|---------|
| T1 | 0:03 | Clicked wrong button first | "I expected this to be over here" | High |
| T1 | 0:06 | Completed successfully | | — |

---

## Synthesis Report

### Issues Found

| Issue | Severity | # Participants affected | Fix direction |
|-------|---------|----------------------|--------------|
| [Issue 1] | Critical (blocked task) | 4/5 | [Suggested fix] |
| [Issue 2] | High (significant friction) | 3/5 | [Fix] |
| [Issue 3] | Low (minor confusion) | 1/5 | Consider |

**Severity scale:**
- Critical: task failure; must fix before launch
- High: significant friction; fix before launch if possible
- Medium: friction; fix in next iteration
- Low: minor; consider if easy to fix

### What Worked Well

- [Element]: All 5 participants <positive observation>
- [Flow]: <what was intuitive>

### Recommended Changes (Priority Order)

1. [Critical fix]: <specific change — not vague "improve this">
2. [High priority fix]: <specific change>
3. [Medium]: <change>
```

## Output Contract
- Tasks always scenario-based, never instructional — instructions replace the thing you're testing
- Success criteria defined before the session — "seemed fine" is not a success criterion
- Severity always rated — a list of issues without priority is not actionable
- What worked always documented — knowing what to keep is as important as knowing what to fix
- HITL required: Dr. Lewis reviews test plan before running; synthesis reviewed before engineering changes; significant UX changes require Dr. Lewis approval

## System Dependencies
- **Reads from:** Figma prototype or live product, participant contacts, task scenarios from PRD
- **Writes to:** Usability test report (SharePoint/Product); UX issue tickets (Monday.com)
- **HITL Required:** Dr. Lewis reviews plan and results; engineering implements fixes

## Test Cases
1. **Golden path:** Usability test for Meeting Intelligence summary format (5 participants) → Task: find the action item assigned to you from yesterday's meeting; 3/5 completed in <2 min; 2/5 couldn't find it without help (looking for it in wrong place); Critical issue: action items section not visible above fold; fix: reorder summary to put action items first; re-test after fix
2. **Edge case:** All 5 participants fail the same task → that's a clear signal: the design fails the core use case; don't launch; fix the issue and re-test; document the finding as a launch blocker
3. **Adversarial:** Designer says "users just need training" to work around a usability issue → training compensates for poor design; if 4/5 users can't figure it out, the design is wrong; "intuitive" means no training required for the core flow; apply the THRIVE-Truth value: be honest about the design failure

## Audit Log
Usability test plans and recordings retained. Synthesis reports retained. Issue fixes tracked.

## Deprecation
Retire when product team has a dedicated UX researcher running continuous usability testing as part of the design process.
