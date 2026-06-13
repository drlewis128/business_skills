---
name: product-requirements-builder
description: "Write product requirements documents (PRDs) for features. Use when the user says 'write a PRD', 'product requirements', 'feature spec', 'requirements document', 'what should we build exactly', 'define the feature', 'product spec', 'write requirements', 'functional requirements', or 'what are the requirements for'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--feature <name>] [--audience <engineering|design|stakeholder>] [--depth <brief|standard|full>]"
---

# Product Requirements Builder

Write product requirements documents (PRDs) that engineering can build from. A PRD is not a design document — it defines WHAT to build and WHY, not HOW to build it. The best PRDs are specific enough that two engineers can read them and independently arrive at the same solution. Vague requirements are the leading cause of misbuilt features and scope disagreements during development.

## When to Use
- A feature has been prioritized in the roadmap and engineering needs to know what to build
- Aligning design and engineering on what success looks like before work begins
- Stakeholder communication — what is this feature we're building?
- Post-build documentation — capturing what was actually built vs. specified

## PRD Components

```
Problem statement (required):
  What user/business problem does this solve?
  Who has this problem and how frequently?
  What is the cost of not solving it?

Success metrics (required):
  How will we measure whether this feature works?
  Specific, measurable outcomes (not "improve user experience")
  Primary metric (the one we're trying to move)
  Secondary metrics (guardrails — should not regress)

User stories (required):
  As a <user type>, I want <action> so that <outcome>
  Each story is independently valuable and testable

Functional requirements (required):
  Specific behaviors the system must exhibit
  Numbered for reference in design and engineering discussions

Non-functional requirements (required if applicable):
  Performance (latency, throughput)
  Compliance (HIPAA, GDPR)
  Accessibility
  Security

Out of scope (required):
  Explicitly what this feature does NOT do
  Prevents scope creep during development

Acceptance criteria (required):
  Binary checklist — how do we know this is done?
```

## Output Format

```markdown
# Product Requirements — <Feature Name>
**Date:** <date> | **Author:** Dr. John Lewis
**Status:** Draft / Review / Approved
**Target quarter:** Q<N> <Year>
**Product:** <product/entity>
**Priority:** P1 / P2 / P3

---

## Problem Statement

**Who has this problem:** <user type — be specific; not "all users">
**What problem they have:** <specific problem — observable behavior, not assumption>
**Frequency:** <how often does this problem occur?>
**Current workaround:** <what do they do today?>
**Cost of not solving:** <what's the business or user impact of leaving this unaddressed?>

---

## Success Metrics

**Primary metric:** <the one number that tells us this worked>
  Current: <baseline>
  Target: <goal>
  Timeline: <when we expect to see the result>

**Secondary metrics (must not regress):**
- <Metric>: Current <value>, must stay ><value>
- <Metric>: Current <value>, must stay ><value>

---

## User Stories

1. **As a** [user type], **I want to** [action], **so that** [outcome]
   - Acceptance: [specific, testable condition]

2. **As a** [user type], **I want to** [action], **so that** [outcome]
   - Acceptance: [condition]

---

## Functional Requirements

| # | Requirement | Priority | Notes |
|---|-----------|---------|-------|
| FR-1 | [System behavior — specific and testable] | Must have | |
| FR-2 | [Behavior] | Must have | |
| FR-3 | [Behavior] | Should have | Can defer to v2 |
| FR-4 | [Behavior] | Nice to have | |

---

## Non-Functional Requirements

| Category | Requirement |
|---------|-----------|
| Performance | Response time <200ms at P95 for <N> concurrent users |
| Compliance | HIPAA: no PHI in <component>; audit log all access (Allevio only) |
| Security | Authentication required; rate limiting at <N> req/min |
| Availability | <N>% uptime; graceful degradation if <dependency> unavailable |

---

## Out of Scope

The following are explicitly NOT included in this feature:
- [Item 1]: Rationale — <why>
- [Item 2]: Rationale — <why>
- [Item 3]: Will be considered for v2 if metric X is achieved

---

## Assumptions and Dependencies

**Assumptions:**
- [Assumption 1] — if wrong, this requirement changes: <how>

**Dependencies:**
- [System/feature] must be available before this can ship

---

## Open Questions

| Question | Owner | Target resolution |
|---------|-------|-----------------|
| [Question] | [name] | [date/sprint] |

---

## Acceptance Criteria

- [ ] FR-1 implemented and tested: <specific test>
- [ ] FR-2 implemented: <specific test>
- [ ] Non-functional: response time <200ms verified under load
- [ ] Compliance: HIPAA audit log verified (Allevio)
- [ ] Success metric baseline captured before launch
- [ ] Documentation updated
- [ ] Dr. Lewis sign-off
```

## Output Contract
- Problem statement always before requirements — you can't write good requirements without a clear problem
- Success metrics always quantitative — "improve UX" is not a metric
- Out of scope always documented — prevents scope creep during sprint
- Compliance always addressed when Allevio is in scope
- HITL required: Dr. Lewis reviews and approves PRD before engineering starts; Matt Mathison reviews PRDs for significant features (>3 engineer-months); design review before acceptance

## System Dependencies
- **Reads from:** Customer feedback (CS team), usage analytics, engineering capacity estimates
- **Writes to:** PRD document (SharePoint/Product); linked to roadmap item and engineering tickets
- **HITL Required:** Dr. Lewis approves; engineering confirms feasibility; Matt Mathison reviews significant features

## Test Cases
1. **Golden path:** PRD for Meeting Intelligence action item extraction → Problem: meeting action items currently tracked manually (40% miss rate); Success: action item capture rate from >80% of meetings (baseline 0%); FR-1: extract action items with assignee and due date; FR-2: push to Monday.com within 5 minutes of meeting end; Out of scope: action item follow-up reminders (v2); Acceptance: 10 test meetings processed with >80% accuracy; Dr. Lewis approves
2. **Edge case:** Feature requires HIPAA-compliant handling for Allevio → add NFR section for HIPAA; FR for audit logging PHI access; data minimization requirement; compliance review required before engineering starts; BAA check for any new tools
3. **Adversarial:** Engineering team builds something different than specified because the PRD was "interpreted" differently → PRDs must be specific enough that interpretation is not possible; rewrite vague requirements as behavior assertions ("system must return X within Y ms when Z") not capability descriptions ("system should be fast")

## Audit Log
PRDs retained with version history. Approved PRDs linked to engineering tickets. Changes documented.

## Deprecation
Retire when product team adopts a requirements management platform with integrated acceptance criteria tracking and design system linkage.
