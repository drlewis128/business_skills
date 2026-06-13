---
name: product-backlog-groomer
description: "Groom and prioritize the product backlog for sprint readiness. Use when the user says 'backlog grooming', 'backlog refinement', 'backlog cleanup', 'prioritize the backlog', 'sprint readiness', 'groom the stories', 'is this story ready', 'backlog health', 'refine these tickets', or 'backlog review'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--board <monday-board>] [--sprint <next|N>] [--mode <groom|prioritize|ready-check>]"
---

# Product Backlog Groomer

Groom and prioritize the product backlog for sprint readiness. A groomed backlog is the most underinvested part of product development. Teams that don't groom regularly arrive at sprint planning with a pile of vague items and waste the first hour debating what they actually mean. The rule: the top 2 sprints of backlog should always be sprint-ready (sized, acceptance criteria written, dependencies resolved).

## When to Use
- Weekly backlog grooming session (30-45 minutes)
- Before sprint planning — ensure next sprint's items are ready
- After a roadmap change — reprioritize the backlog to match
- After a sprint retrospective surfaced backlog issues
- Quarterly backlog cleanup — archive old stories that will never be built

## Backlog Readiness Criteria (Definition of Ready)

```
A story is sprint-ready when:
  ✅ User story is written in standard format (As a/I want/So that)
  ✅ Acceptance criteria are written in Gherkin (Given/When/Then)
  ✅ Story is sized (1-13 story points) — not "TBD"
  ✅ Dependencies are identified and either resolved or explicitly accepted
  ✅ Design mockups linked (if UI change)
  ✅ Compliance requirements noted (HIPAA/GDPR if applicable)
  ✅ No open questions blocking implementation
  ✅ Fits in one sprint at estimated size
```

## Grooming Session Structure

```
Before the session (product owner):
  Pull the backlog — sort by current priority
  Identify top 20 items for the session
  Flag items that are clearly not ready (missing AC, dependencies, etc.)

During the session (15-45 min):
  Pass 1 — Quick health check (5 min):
    Scan list: any items that are obviously wrong priority or should be archived?
    Remove/archive immediately; don't debate

  Pass 2 — Deep review of top 10 (20-30 min):
    For each item: Is it ready? What's missing? Who owns the gap?
    Size anything unsized
    Break oversized items (13+)

  Pass 3 — Next sprint confirmation (5 min):
    Confirm items intended for next sprint are all ready
    No unready items in next sprint's slot

After the session:
  Update Monday.com: priority order, sizes, notes
  Assign action items for missing acceptance criteria or design
```

## Output Format

```markdown
# Backlog Grooming Session — <Date>
**Session date:** <date> | **Facilitator:** Dr. John Lewis
**Product:** <product/entity>
**Next sprint date:** <date>
**Items reviewed:** <N>

---

## Backlog Health Summary

| Status | Count |
|--------|-------|
| Sprint-ready (top 2 sprints) | <N> |
| Needs work (has gaps) | <N> |
| Blocked (dependency unresolved) | <N> |
| Archived this session | <N> |

**Recommendation:** Sprint planning can proceed / Needs <N> more items groomed

---

## Next Sprint Readiness (Confirmed)

| Story | Size | Ready? | Notes |
|-------|------|--------|-------|
| [Story 1] | 5 | ✅ | |
| [Story 2] | 3 | ✅ | |
| [Story 3] | 8 | ✅ | |
| **Total** | **16** | | Target: 25 pts / team capacity |

---

## Items Requiring Work Before Next Sprint

| Story | Gap | Owner | Due |
|-------|-----|-------|-----|
| [Story A] | Missing acceptance criteria | Dr. Lewis | Before sprint planning |
| [Story B] | Needs design mockup | Design | Sprint N-1 |
| [Story C] | Dependency on Auth feature (unshipped) | Engineering | Block for now |

---

## Sizing Decisions

| Story | Previous size | New size | Rationale |
|-------|-------------|---------|---------|
| [Story] | ? | 8 | More complex than initially thought — requires new DB table |
| [Story] | 13 | Split into 2 × 5 | Too large; separated into ingestion + processing |

---

## Stories Archived / Dropped

| Story | Reason |
|-------|--------|
| [Story] | No longer aligned with roadmap direction; not planned in next 2 quarters |
| [Story] | Superseded by [other feature] |

---

## Action Items

| Action | Owner | Due |
|--------|-------|-----|
| Write AC for [Story A] | Dr. Lewis | <date> |
| Create mockup for [Story B] | Design | <date> |
| Resolve dependency for [Story C] | Engineering | Sprint N |
```

## Output Contract
- Next sprint readiness always confirmed — can sprint planning proceed or not?
- Gaps always assigned to specific owners — unowned gaps never get fixed
- Archived stories documented — stakeholders sometimes ask why something disappeared from the backlog
- Sizing decisions documented — rationale for size changes prevents repeat debates
- HITL required: Dr. Lewis runs grooming sessions; engineering team participates in sizing; Matt Mathison informed if significant reprioritization occurs

## System Dependencies
- **Reads from:** Monday.com product backlog; roadmap (SharePoint); design files (Figma link)
- **Writes to:** Monday.com backlog (updated priority, size, status); action items in Monday.com
- **HITL Required:** Dr. Lewis facilitates; engineering sizes stories; design confirms mockup availability

## Test Cases
1. **Golden path:** Weekly grooming session → 20 items reviewed; 8 confirmed sprint-ready; 4 need AC written (assigned Dr. Lewis, due before planning); 2 need design (assigned design, next week); 1 archived (dropped from roadmap); 5 deprioritized (moved down); sizing: 2 stories split, 1 re-estimated from 5→8; next sprint planning cleared to proceed
2. **Edge case:** Sprint planning is tomorrow and backlog is not groomed → emergency grooming: focus only on next sprint's items; timebox to 30 minutes; for any item without AC, write it now or defer to the sprint after next; do not commit unready stories to the sprint
3. **Adversarial:** Team keeps adding stories to the top of the backlog without removing anything → backlog is a priority-ordered list, not a wishlist; every item added should displace something; if everything is priority 1, nothing is; enforce RICE scoring for top-10 items; anything that can't be scored goes to the bottom

## Audit Log
Grooming session notes retained. Priority changes documented. Archived stories retained for reference.

## Deprecation
Retire when product team has an automated backlog health dashboard that flags unready stories and surfaces debt before grooming sessions.
