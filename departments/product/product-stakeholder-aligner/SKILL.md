---
name: product-stakeholder-aligner
description: "Align product stakeholders on priorities, roadmap, and decisions. Use when the user says 'stakeholder alignment', 'get buy-in', 'align the team', 'roadmap disagreement', 'stakeholder conflict', 'get everyone on the same page', 'present the roadmap', 'stakeholder update', or 'misalignment on priorities'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--stakeholders <list>] [--topic <roadmap|decision|priority>] [--mode <align|update|escalate>]"
---

# Product Stakeholder Aligner

Align product stakeholders on priorities, roadmap decisions, and direction. Misalignment is one of the most expensive product problems — teams build the wrong things, decisions get revisited, and leadership trust erodes. For MBL's AI products, stakeholders span Dr. Lewis (technical direction), Matt Mathison (business priorities), portfolio company leads, and the engineering team. Alignment is how all of them move in the same direction without constant re-litigating of decisions.

## When to Use
- Roadmap planning — get aligned before engineering commits to work
- A decision is being revisited repeatedly — create closure
- Stakeholders have conflicting priorities — facilitate resolution
- New stakeholder introduced to a product — onboarding alignment
- Pre-launch — final go/no-go alignment
- Portfolio company lead pushes back on a product direction

## Stakeholder Map for MBL Products

| Stakeholder | Role in product decisions | What they care about |
|-------------|--------------------------|---------------------|
| Matt Mathison | Business sponsor; final authority on portfolio priorities | ROI, speed, portfolio company outcomes |
| Dr. Lewis | Technical direction, AI architecture, quality gate | Technical soundness, AI quality, THRIVE alignment |
| Portfolio company lead (Allevio, HIVE, etc.) | Domain requirements, rollout approval | Their team's workflow, compliance (HIPAA for Allevio) |
| Engineering team | Implementation; capacity reality check | Clear requirements, reasonable scope, technical feasibility |
| CS/operations | User feedback channel, rollout support | User adoption, support burden |

## Alignment Framework

```
Step 1 — Diagnose the misalignment
  Is it:
    - Priority (we disagree on what's most important)
    - Information (we're working from different facts)
    - Values (we want different outcomes)
    - Ownership (unclear who decides)

Step 2 — Separate the debate from the decision
  Document current state of debate — what are the competing positions?
  Identify: who makes this decision? (DACI: Driver / Approver / Consulted / Informed)
  If unclear ownership is the root cause, establish it first

Step 3 — Align on criteria before arguing positions
  "Before we debate options, let's agree on what a good decision looks like"
  List evaluation criteria (speed, cost, risk, user value, compliance)
  Get agreement on criteria first, then evaluate options against shared criteria

Step 4 — Document and close
  Record the decision and reasoning
  Document who was consulted and informed
  Send to all stakeholders; set a review trigger ("revisit if X happens")
```

## Output Format

```markdown
# Stakeholder Alignment Brief — <Topic>
**Date:** <date> | **Facilitator:** Dr. John Lewis
**Decision type:** Roadmap / Priority / Direction / Launch
**Decision owner:** <who has final authority>

---

## Current State of Alignment

| Stakeholder | Current position | What they need to align | Alignment status |
|-------------|----------------|------------------------|----------------|
| Matt Mathison | [Position] | [What info/agreement they need] | 🔴 Not aligned / 🟡 Partially aligned / 🟢 Aligned |
| Dr. Lewis | [Position] | [What info/agreement they need] | Status |
| [Engineering] | [Position] | [What info/agreement they need] | Status |

**Root cause of misalignment:** Priority / Information / Values / Ownership

---

## Decision Framing

**The decision we need to make:** <One sentence — the actual decision, not the discussion>
**Decision owner (who decides):** <Name>
**Deadline for decision:** <date>

**DACI:**
- Driver: <who runs the process>
- Approver: <who says yes/no — usually Matt Mathison or Dr. Lewis>
- Consulted: <who provides input>
- Informed: <who needs to know the outcome>

---

## Options on the Table

### Option A: <Name>
**What it is:** <2-3 sentence description>
**Pros:** <list>
**Cons:** <list>
**Recommended by:** <who supports this>

### Option B: <Name>
[Same format]

---

## Evaluation Against Agreed Criteria

| Criteria | Weight | Option A | Option B |
|---------|--------|---------|---------|
| Speed to value | 30% | ⭐⭐⭐ | ⭐⭐ |
| Technical risk | 25% | ⭐⭐ | ⭐⭐⭐ |
| THRIVE alignment | 25% | ⭐⭐⭐ | ⭐⭐⭐ |
| Cost | 20% | ⭐⭐⭐ | ⭐⭐ |
| **Weighted score** | | **2.7** | **2.4** |

**Recommendation:** Option A — <rationale>

---

## Decision Record

**Decision:** <Exactly what was decided>
**Date:** <date>
**Approved by:** <Name>
**Dissenting views:** <If any; acknowledge and document>
**Review trigger:** <Condition that would reopen this decision — e.g., "if X metric falls below Y">

---

## Communication Plan

| Stakeholder | Channel | Owner | By when |
|------------|---------|-------|---------|
| Matt Mathison | 1:1 email summary | Dr. Lewis | <date> |
| Engineering team | Sprint planning | Dr. Lewis | Next sprint |
| Portfolio company lead | Update email | Dr. Lewis | This week |
```

## Output Contract
- Decision owner always named — ownership ambiguity is a leading cause of re-litigation
- DACI always filled — "everyone agrees" is not a decision-making process
- Dissenting views always documented — unacknowledged dissent resurfaces at the worst time
- Review trigger always defined — "final" decisions that can never be revisited aren't credible
- HITL required: Dr. Lewis facilitates; Matt Mathison is the Approver for portfolio-affecting decisions; Dr. Lewis is Approver for technical architecture decisions

## System Dependencies
- **Reads from:** Roadmap, stakeholder inputs, OKRs, previous decision records
- **Writes to:** Decision record (SharePoint/Product); stakeholder communication email (Outlook)
- **HITL Required:** Dr. Lewis reviews and sends alignment brief; Matt Mathison approves major decisions; HITL before any decision email is sent to portfolio company stakeholders

## Test Cases
1. **Golden path:** Roadmap alignment for Meeting Intelligence Q3 → Matt wants to prioritize the action item export feature (portfolio company value); engineering says the HITL review UI is the dependency (must ship first); Dr. Lewis facilitates — DACI: Dr. Lewis drives, Matt Mathison approves; criteria: user value (40%), dependency resolution (30%), speed (30%); HITL UI wins on criteria; Matt aligns; decision recorded; engineering proceeds with HITL UI first
2. **Edge case:** Stakeholder is not available before the decision deadline → document their known position and input; proceed with available approvers; inform the absent stakeholder in writing immediately after; define the review trigger as "if [absent stakeholder] has concerns, revisit within 14 days"
3. **Adversarial:** Decision keeps getting reopened after it was "aligned" → a decision being reopened means either (a) new material information changed the situation, or (b) the original alignment was performative; if (b): institute written sign-off with review trigger; stakeholders who don't raise objections in the alignment meeting waive their right to re-litigate without new information

## Audit Log
Alignment briefs and decision records retained. All stakeholder communications archived in Outlook. Decision log maintained per product.

## Deprecation
Retire when product team has an established decision-making process with documented DACI templates and a shared decision log that stakeholders use without facilitation.
