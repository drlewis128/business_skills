---
name: feature-spec-writer
description: "Write detailed feature specifications for engineering handoff. Use when the user says 'write a spec', 'feature specification', 'technical spec', 'design spec', 'engineering spec', 'spec out this feature', 'write the requirements', 'hand off to engineering', 'feature details', or 'define this feature precisely'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--feature <name>] [--depth <brief|standard|full>] [--audience <engineering|design|all>]"
---

# Feature Spec Writer

Write detailed feature specifications for engineering handoff. A feature spec bridges product intent and engineering execution — it gives engineering the WHAT and WHY without prescribing HOW. The best specs are specific enough to prevent ambiguity, concise enough to be read, and honest about what's unknown so engineering can surface risks early.

## When to Use
- A feature is prioritized and engineering needs to start in the next sprint
- A complex feature needs careful specification before design begins
- Stakeholder alignment — "what exactly are we building?" is being asked
- A feature has multiple possible interpretations — nail down the right one

## Spec Components

```
REQUIRED:
  Problem statement (why are we building this)
  User stories (who, what, outcome)
  Functional requirements (specific behaviors)
  Non-functional requirements (performance, security, compliance)
  Edge cases (explicitly handled and explicitly out of scope)
  Acceptance criteria (binary — how do we know it's done)

RECOMMENDED:
  Mockups or wireframes (link to Figma)
  Data requirements (what data flows in/out)
  API changes (if applicable)
  Error states and messaging
  Analytics (what events do we instrument)
```

## Output Format

```markdown
# Feature Spec — <Feature Name>
**Date:** <date> | **Author:** Dr. John Lewis
**Status:** Draft / Review / Approved
**Target sprint:** Sprint <N>
**Epic:** <parent epic>

---

## TL;DR

**What we're building:** <1-2 sentences>
**Why:** <business reason and user benefit>
**Done looks like:** <specific outcome at completion>

---

## Problem

**User:** <specific user type>
**Situation:** <when this matters>
**Problem:** <what doesn't work today>
**Frequency:** <how often this occurs>

---

## Solution Overview

<2-3 sentences describing the approach — not the implementation>

**Mockup/wireframe:** [Figma link]

---

## Functional Requirements

| # | Behavior | Priority | Notes |
|---|---------|---------|-------|
| FR-1 | <System must do X when Y> | Must | |
| FR-2 | <Behavior> | Must | |
| FR-3 | <Behavior> | Should | Can defer to v2 |
| FR-4 | <Behavior> | Nice to have | |

---

## Edge Cases

### Handled (system must handle gracefully)
- **When [edge condition]:** System [specific behavior]
- **When [edge condition]:** Show [specific error message / fallback]

### Out of Scope (explicitly not handled)
- **[Edge case]:** Out of scope because [reason]. Document as known limitation.

---

## Non-Functional Requirements

| Category | Requirement |
|---------|-----------|
| Performance | [Specific: P95 <200ms; handles N concurrent users] |
| Security | [Auth required; rate limiting; no PII in logs] |
| Compliance | [HIPAA: PHI audit log required — Allevio only / N/A] |
| Availability | [Graceful degradation if [dependency] is unavailable] |

---

## Data Requirements

**Inputs:** <what data comes in and from where>
**Outputs:** <what data is produced and where it goes>
**Data schema changes:** <new tables/fields required>
**Migration:** <if existing data needs to change>

---

## API Changes (if applicable)

**New endpoints:**
```
POST /v1/<resource>
Request: { ... }
Response: { ... }
```

**Modified endpoints:**
- `GET /v1/<resource>`: adding field `<field>` — backwards compatible

---

## Error States

| Error | Cause | User message | System behavior |
|-------|-------|-------------|----------------|
| [Error] | [What caused it] | "<User-facing message>" | [What system does] |

---

## Analytics / Instrumentation

| Event | When fired | Properties |
|-------|-----------|-----------|
| `<feature>.<action>` | <when> | <properties> |

---

## Open Questions

| Question | Owner | Due |
|---------|-------|-----|
| [Q] | [name] | [date] |

---

## Acceptance Criteria

- [ ] FR-1: <testable condition>
- [ ] FR-2: <testable condition>
- [ ] Edge case handled: <specific test>
- [ ] Performance: <latency tested under load>
- [ ] Analytics: events firing in staging
- [ ] Dr. Lewis sign-off
```

## Output Contract
- TL;DR always first — engineers read the bottom line before the detail
- Edge cases always explicit — "not handled" cases must be documented, not ignored
- Error states always specified — what happens when it fails is as important as the happy path
- Open questions always assigned with due dates — unresolved questions at sprint start are blockers
- HITL required: Dr. Lewis reviews and approves spec before engineering starts; compliance requirements in spec reviewed by legal (Allevio); significant API changes reviewed by engineering lead

## System Dependencies
- **Reads from:** PRD, user research notes, design mockups (Figma)
- **Writes to:** Feature spec document (SharePoint/Product); linked to engineering tickets
- **HITL Required:** Dr. Lewis approves; engineering reviews for feasibility; legal reviews compliance requirements

## Test Cases
1. **Golden path:** Spec for action item creation from meeting summary → FR: system must extract action items with assignee and due date (must), push to Monday.com within 5 min of meeting end (must), handle 0-item meeting gracefully (should); Edge case: meeting with no action items shows "no action items identified" (not empty); Error: Monday.com unavailable → queue and retry; API: new `POST /v1/meetings/{id}/action-items`; Dr. Lewis approves
2. **Edge case:** Feature touches Allevio PHI → add HIPAA NFR: PHI audit log required; data minimization: only pass meeting content if no PHI present; compliance review required before engineering starts; note in spec that HIPAA review is a pre-condition
3. **Adversarial:** Engineering starts building without reading the spec → spec exists to prevent interpretation divergence; hold a 30-minute spec review with engineering before sprint starts; answer all questions; close open questions

## Audit Log
Feature specs retained with version history. Engineering handoffs documented. Spec vs. built comparisons retained post-ship.

## Deprecation
Retire when product team has a product manager writing specs as standard practice with an integrated design system.
