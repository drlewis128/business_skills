---
name: exec-performance-management
description: "Manage executive and leadership team performance for MBL Partners and portfolio companies. Use when the user says 'performance management', 'performance review', 'performance plan', 'PIP', 'performance improvement plan', 'executive performance', 'annual review', 'performance evaluation', 'leader performance', 'CEO performance review', 'executive review', 'performance conversation', 'address underperformance', 'underperforming leader', 'leader is struggling', 'executive is not performing', 'deliver performance feedback', 'formal feedback', 'performance documentation', 'put someone on a plan', 'performance exit', 'termination', 'let the leader go', 'performance-based exit', 'constructive dismissal', or 'what do we do about the underperforming CEO'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--role <CEO|COO|CFO|VP|Director>] [--action <annual-review|feedback|PIP|exit>] [--sensitivity <standard|high|legal-review>]"
---

# Exec Performance Management

Manage executive and leadership team performance for MBL Partners and portfolio companies — from annual performance reviews through formal improvement plans and performance-based exits. Performance management at the executive level is different from frontline HR: the stakes are higher, the relationship is more personal, and the legal and reputational implications require precision. Dr. Lewis designs the process and prepares Matt Mathison; Matt Mathison owns the conversation and the decision.

## When to Use
- Annual performance review for entity CEOs or key leaders
- A leader has a recurring pattern of missed commitments or performance gaps
- A formal performance improvement plan (PIP) is required before an exit decision
- Matt Mathison needs to make a performance-based exit decision
- An acquired company's leadership team needs to be evaluated against MBL standards

## Performance Management Framework

```
ANNUAL PERFORMANCE REVIEW (December; entity CEOs and direct reports):

  Review structure:
    Section 1 — Results (what you delivered vs. commitments made at the start of the year)
      For each entity CEO: GRR/NRR performance; strategic priority delivery; 
        exec-action-tracker annual completion rate
    Section 2 — THRIVE Assessment (how you delivered it — behaviors)
      Each THRIVE dimension rated: Exceeds / Meets / Below
      Evidence-based ratings: one specific example per dimension
    Section 3 — Development (what you grew in; what you're still working on)
      One capability growth area from the year
      One capability gap that is still in development
    Section 4 — Compensation (for entity CEO reviews — tied to Section 1 results)
      Bonus: calculated per the performance-based formula in the employment agreement
      Base adjustment: recommended for exceptional performance; held for below-expectations
    Section 5 — Forward (what you're committing to in the next year)
      3 performance commitments for the new year — specific, measurable, time-bound
      
  Review delivery:
    Dr. Lewis prepares the written review; Matt Mathison delivers it in person (not email)
    The review is a conversation, not a document reading
    30 minutes minimum; 60 minutes for complex situations
    Follow-up: written summary within 48 hours; signed by both Matt and the leader

PROGRESSIVE PERFORMANCE MANAGEMENT:

  Level 1 — Coaching conversation (first miss; informal):
    One specific miss; one conversation; one forward commitment.
    No formal documentation required.
    Reference: exec-leadership-coaching and exec-team-accountability
    
  Level 2 — Expectation Reset (second miss; documented):
    Written: Dr. Lewis prepares a summary memo stating:
      What was expected; what happened; what the expectation is going forward.
    Matt Mathison delivers verbally; Dr. Lewis sends the written summary.
    "If this pattern continues, we'll need to have a more formal conversation."
    Retained in the executive's confidential personnel file.
    
  Level 3 — Performance Improvement Plan (recurring miss; formal):
    90-day PIP with SMART objectives.
    Weekly check-in with Matt Mathison (or Dr. Lewis if Matt delegates).
    Clear criteria for success and criteria for exit.
    Legal review required before issuing a PIP (coordinate with employment counsel).
    If PIP criteria are met: PIP closed; leader continues with clear expectations.
    If PIP criteria are not met: performance-based exit per Level 4.
    
  Level 4 — Performance Exit (after PIP or INTEGRITY breach):
    INTEGRITY breach: immediate exit; no PIP required.
    Performance exit after failed PIP: Matt Mathison decision + legal counsel.
    Exit conversation: Matt Mathison delivers; Dr. Lewis does NOT deliver exit conversations
      to entity CEOs — this is Matt's personal responsibility.
    Exit package: per employment agreement; legal counsel review before offer.
    Off-boarding: systems access revoked; stakeholder communication drafted;
      interim leadership activated (exec-succession-planning).

PERFORMANCE EXIT PLANNING:

  Pre-exit checklist:
    □ Legal counsel reviewed the basis for exit and confirms defensibility
    □ Employment agreement severance provisions reviewed
    □ IP and confidentiality provisions identified
    □ Systems access revocation plan prepared (IT)
    □ Board notification plan prepared (if entity CEO exit)
    □ Team communication plan prepared (24 hours post-exit)
    □ Interim leadership identified (exec-succession-planning)
    □ Stakeholder communication prepared (LP notification if material — exec-investor-relations)
    
  Exit conversation structure (Matt Mathison delivers):
    The decision is the decision — it is not a negotiation in the conversation.
    Matt states the decision in the first sentence: "After careful consideration, we've
      decided to end your employment as [role] at [entity]."
    No preamble. No "I want to start by saying how much we appreciate you." That comes after.
    Brief explanation: factual, not accusatory.
    Severance terms stated clearly.
    Next steps: systems access (24 hours to retrieve personal items); document transition.
    
  Dr. Lewis role:
    Dr. Lewis prepares; Matt delivers.
    Dr. Lewis coordinates legal, IT, and transition logistics.
    Dr. Lewis drafts the team communication.
    Dr. Lewis does NOT attend the exit conversation unless Matt specifically requests it.
```

## Output Format

```markdown
# Performance Management — [Leader Name] — [Type] — [Date]
**Entity:** [Entity] | **Role:** [Title]
**Type:** [Annual Review / Expectation Reset / PIP / Exit Planning]
**Prepared by:** Dr. Lewis | **Delivered by:** Matt Mathison
**Legal review required:** [Yes / No]

---

## Performance Summary (Annual Review)

| Section | Rating | Key evidence |
|---------|--------|-------------|
| Results vs. commitments | Exceeds / Meets / Below | [Specific data] |
| T — Truth | Exceeds / Meets / Below | [Specific example] |
| H — Hustle | ... | ... |
| R — Respect | ... | ... |
| I — Integrity | Exceeds / Meets / Below | [Specific example] |
| V — Value | ... | ... |
| E — Enjoy | ... | ... |

---

## PIP Structure (if applicable)

**PIP period:** [Start date] — [End date] (90 days)
**Success criteria:**
1. [Specific, measurable criterion — met by what date]
2. [Criterion 2]
3. [Criterion 3]

**Exit criteria:** [What happens if criteria are not met by the end of the PIP]

---

## Exit Checklist (if applicable)

- [ ] Legal review complete
- [ ] Employment agreement reviewed
- [ ] Systems access revocation plan
- [ ] Board notification prepared
- [ ] Team communication drafted
- [ ] Interim leadership identified
- [ ] LP notification assessed
```

## Output Contract
- Matt Mathison delivers all executive performance and exit conversations — Dr. Lewis prepares the documentation, coordinates the logistics, and drafts the communications; but the performance conversation and the exit conversation are Matt Mathison's to deliver personally; delegating a performance exit to Dr. Lewis or HR is a leadership abdication that damages trust with the remaining team and creates legal risk; Matt does the hard thing himself
- Legal review before every PIP and exit — no formal performance improvement plan and no performance exit is initiated without employment counsel review; Dr. Lewis coordinates this review and does not route around it regardless of time pressure; legal review does not make the decision — it ensures the decision is defensible; the decision is Matt's
- INTEGRITY breaches skip the progressive protocol — a first-time INTEGRITY breach does not get a coaching conversation or a PIP; it gets an exit decision (Matt Mathison + legal); the progressive protocol is for performance gaps, not values violations; the only determination that matters for INTEGRITY is: "Did this person violate our Integrity standard?" If yes: Matt makes the exit decision; no second chance
- HITL required: Matt Mathison reviews and approves all formal performance documents (Expectation Reset, PIP, Exit); legal counsel reviews before any PIP is issued or exit is executed; Matt Mathison delivers all performance and exit conversations; Dr. Lewis coordinates logistics but does not make performance decisions; any INTEGRITY breach triggers immediate Matt Mathison conversation before any action is taken

## System Dependencies
- **Reads from:** exec-team-accountability (commitment delivery data — the evidence base for performance reviews); exec-leadership-coaching (coaching history — development context for reviews); exec-culture-builder (THRIVE assessment data — behavioral ratings for annual reviews); exec-portfolio-review (entity performance data — results section of annual reviews); exec-action-tracker (annual commitment completion rate); exec-succession-planning (interim leadership readiness for exit planning)
- **Writes to:** Performance review documents (SharePoint → ExecutiveSupport → PersonnelFiles → [Name] → [YYYY] — confidential); PIPs (same location); exit checklists; team communication drafts; legal coordination records; exec-succession-planning (exit triggers interim leadership activation); exec-investor-relations (material personnel events — LP notification assessment)
- **HITL Required:** Matt Mathison reviews and approves all formal performance documents; legal counsel reviews before PIP or exit; Matt Mathison delivers all performance and exit conversations; INTEGRITY breach triggers immediate Matt conversation; Dr. Lewis coordinates but does not decide; all personnel file documents retained per legal guidance

## Test Cases
1. **Golden path:** December annual review for Allevio CEO; Dr. Lewis prepares the written review: Results — Meets (GRR 93% vs. 90% target; clinical expansion delivered on time; one strategic priority delayed — OE season prep slipped 3 weeks); THRIVE — T: Exceeds (surfaced claim ratio concern proactively); H: Meets; R: Exceeds (rebuilt the billing team dynamic after a difficult Q2); I: Exceeds; V: Meets; E: Meets. Compensation: bonus at 100% of target (performance formula delivered); base: +3% (meets expectations standard increase). Forward commitments: (1) employer group expansion from 12 to 18 by Q3; (2) clinical enrollment to 35% by Q4; (3) COO development plan launched by February. Matt delivers review in person; CEO receives well; signs. Dr. Lewis sends written summary within 48 hours.
2. **Edge case:** A HIVE VP misrepresents a royalty calculation to a landowner to avoid a dispute and is discovered → Dr. Lewis: "This is an INTEGRITY breach. Even if the financial impact is small, a deliberate misrepresentation to a landowner is exactly the kind of behavior that will destroy HIVE's landowner relationships if it becomes a pattern or if it gets out. My recommendation: Matt has the exit conversation this week. Legal review today — I'll coordinate. The VP's employment agreement has a for-cause provision that covers this. The team communication should be factual but not accusatory: 'We've made a leadership change in the HIVE VP role — the position will be managed by Matt Mathison directly while we identify the right next leader.' No details." Matt: "Agreed. Get legal on the phone today."
3. **Adversarial:** Matt wants to skip the PIP for a non-INTEGRITY performance miss and go directly to exit — "I'm just not confident this leader can turn it around" → Dr. Lewis: "I understand the instinct. Let me flag the risks of skipping the PIP for a non-cause exit: (1) Legal exposure — in some states, the PIP process is part of the documented basis for a defensible exit; without it, we're more vulnerable. (2) Perception — the remaining leadership team will notice if exits happen without a formal process; it erodes trust in the fairness of the system. My recommendation: run a 60-day accelerated PIP (not 90) with clear criteria. If they don't meet criteria in 60 days, we exit with full legal defensibility. If they do meet criteria, we keep a performer who had a rough quarter. The 60 days protects us and gives you a data-based decision." Matt: "Fine — 60 days. Set the criteria."

## Audit Log
All performance documents retained in confidential personnel files. PIP records retained (criteria; check-in notes; outcome). Exit records retained (checklist; legal review; Matt Mathison decision; team communication). Legal coordination records retained. Compensation adjustment records retained. INTEGRITY breach records retained (incident; Matt conversation; decision).

## Deprecation
Retire when MBL has a dedicated HR or General Counsel function who manages formal performance documentation — with Dr. Lewis providing the THRIVE framework inputs and portfolio performance data and Matt Mathison retaining all executive performance conversations.
