---
name: user-story-writer
description: "Write well-formed user stories for product backlogs. Use when the user says 'write user stories', 'user story', 'as a user I want', 'convert requirements to stories', 'story writing', 'write tickets', 'convert this feature to stories', 'break this into stories', or 'write acceptance criteria'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--feature <name>] [--format <standard|gherkin|job-story>] [--detail <brief|standard|full>]"
---

# User Story Writer

Write well-formed user stories for product backlogs. A user story is not a task — it describes a user need in a way that keeps the team focused on outcomes, not implementation. Good user stories have a clear user, a clear action, a clear benefit, and specific, testable acceptance criteria. They are small enough to complete in one sprint.

## When to Use
- Converting PRD requirements into sprint-ready stories
- Grooming the backlog — existing stories lack acceptance criteria
- Breaking a large feature (epic) into shippable increments
- An engineer asks "what exactly does done look like for this?"
- Agent skill design — user stories for AI-driven workflows

## Story Formats

### Standard User Story
```
As a <user type>,
I want to <action>,
So that <benefit/outcome>.

Acceptance Criteria:
  Given <context>
  When <action>
  Then <expected result>
```

### Job Story (alternative — focuses on situation, not persona)
```
When <situation>,
I want to <motivation/action>,
So I can <expected outcome>.
```

### Gherkin (for BDD / automated tests)
```
Feature: <Feature name>
  Scenario: <Scenario name>
    Given <initial context>
    When <triggering action>
    Then <expected outcome>
    And <additional outcome>
```

## Story Quality Checklist (INVEST)

```
Independent: Can this story be built and shipped without requiring another story first?
Negotiable: The story describes the need, not the solution — implementation is negotiable
Valuable: The story delivers value to a real user (not an internal technical task)
Estimable: The team can size it — if not, it needs more detail or should be split
Small: Completable in one sprint; if not, split it
Testable: The acceptance criteria can be objectively verified — not "user feels good about it"
```

## Story Sizing Guide

| Size | Story Points | Description | Example |
|------|-------------|-------------|---------|
| XS | 1 | Trivial change; no new logic | Copy change on a label |
| S | 2 | Small, clear, low-risk | Add a filter to an existing list |
| M | 3-5 | Standard feature work; moderate complexity | New form with validation |
| L | 8 | Complex; multiple components; some unknowns | New dashboard with 5 metrics |
| XL | 13 | Should be split; too large for one sprint | Avoid committing XL stories |

## Output Format

```markdown
# User Stories — <Feature/Epic Name>
**Date:** <date> | **Author:** Dr. John Lewis
**Feature:** <feature> | **Epic:** <parent epic>
**Total story points:** <sum>

---

## Epic Overview

**Epic:** As a <user type>, I need <capability> so that <business outcome>
**Why we're building this:** <2-3 sentence context from PRD>
**Definition of done for the epic:** <what must be true for the epic to be complete>

---

## Stories

### Story 1: <Title>

**As a** <user type>,
**I want to** <action>,
**So that** <outcome>.

**Size:** M (5 points)
**Priority:** Must have

**Acceptance Criteria:**

```gherkin
Given I am a <user type> viewing <screen>
When I <action>
Then I see <expected result>
And <secondary condition>

Given <error condition>
When I <action>
Then I see <error message> explaining <what went wrong>
```

**Notes / Design considerations:**
- <Any specific implementation note or constraint>
- Out of scope for this story: <what's NOT included>

**Dependencies:** None / [Requires Story N first]

---

### Story 2: <Title>

[Same format]

---

## Out of Scope (Epic Level)

The following are NOT included in this epic:
- [Item]: Will be addressed in [Epic/Quarter]

---

## Epic Definition of Done

- [ ] All stories complete and accepted
- [ ] Success metrics baseline captured
- [ ] Documentation updated
- [ ] Compliance: [HIPAA audit log / GDPR consent / N/A]
- [ ] Dr. Lewis acceptance sign-off
```

## Output Contract
- Acceptance criteria always in Gherkin format (Given/When/Then) — vague acceptance criteria are not acceptance criteria
- Error cases always included in acceptance criteria — happy path only = incomplete specification
- Story size always specified — unestimated stories cannot be committed
- Dependencies always documented — stories with unresolved dependencies cannot be committed to a sprint
- HITL required: Dr. Lewis reviews stories before sprint commitment; stories with compliance implications reviewed by legal

## System Dependencies
- **Reads from:** PRD (product requirements), design mockups (if available), engineering input on complexity
- **Writes to:** Monday.com backlog (stories as items); sprint board
- **HITL Required:** Dr. Lewis reviews; engineering confirms feasibility and size; HIPAA-relevant stories reviewed by compliance

## Test Cases
1. **Golden path:** Break "Meeting Intelligence action extraction" epic into stories → Story 1: Receive meeting transcript webhook (API ingestion, 3pts); Story 2: Extract action items using Claude API (transformation, 5pts); Story 3: Push action items to Monday.com (integration write, 3pts); Story 4: Handle extraction failures with dead letter queue (error handling, 2pts); each with Gherkin acceptance criteria; total 13pts; fits in 2 sprints
2. **Edge case:** Story is too large to fit in a sprint (13+ points) → break into smaller stories; identify the smallest independently valuable slice; "thin slice" approach: get end-to-end working for one scenario before expanding breadth
3. **Adversarial:** Team accepts a story with "TBD" acceptance criteria into the sprint → TBD = not ready; a story without acceptance criteria cannot be accepted as "done" because done is undefined; block the story until criteria are written; this happens in backlog grooming, not in sprint planning

## Audit Log
Stories retained in Monday.com with version history. Accepted stories linked to deployment records.

## Deprecation
Retire when product team has a dedicated product manager writing stories as part of standard product development workflow.
