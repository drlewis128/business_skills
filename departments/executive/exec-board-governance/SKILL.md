---
name: exec-board-governance
description: "Design and manage board governance structures for MBL Partners and portfolio companies. Use when the user says 'board governance', 'board structure', 'board composition', 'board committees', 'audit committee', 'compensation committee', 'director onboarding', 'add a board member', 'board charter', 'governance framework', 'fiduciary duties', 'board responsibilities', 'governance policy', 'board calendar', 'corporate governance', 'D&O insurance', 'board of directors', 'independent director', 'board seat', 'observer rights', 'governance gaps', 'governance audit', 'board effectiveness', 'board evaluation', 'set up a board', 'governance documents', or 'board meeting cadence'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--action <design|audit|onboard|review|evaluate>] [--event <new-entity|new-director|annual-review>]"
---

# Exec Board Governance

Design and manage board governance structures for MBL Partners and portfolio companies — ensuring that each entity has the right board composition, clear governance documents, proper fiduciary oversight, and an effective annual cadence. Good governance at MBL is not bureaucracy; it is the infrastructure that lets Matt Mathison and entity CEOs focus on execution, knowing the oversight function is working. Poor governance creates liability, LP concern, and — at worst — a governance failure that harms the entity or its stakeholders.

## When to Use
- A new portfolio company is acquired (build the governance structure from Day 1)
- A board vacancy opens (define the competency gap before recruiting)
- Annual board effectiveness review (is the board actually governing well?)
- New director onboarding (what they need to know in 30 days)
- A governance gap is identified (committee missing; charter outdated; conflict policy absent)

## Board Governance Framework

```
BOARD STRUCTURE BY ENTITY TYPE:

  MBL Partners (holding company):
    Board composition: Matt Mathison (chair) + independent advisors (1-2 maximum)
    Primary governance function: LP accountability + portfolio oversight + strategic direction
    Meeting cadence: Quarterly (portfolio review) + annual (strategy + budget)
    Key documents: Operating agreement; LP agreement; investment policy statement
    
  Portfolio companies (Allevio, HIVE, Column6):
    Board composition: Matt Mathison (seat) + entity CEO (ex-officio) + 1-2 independent directors
    Primary governance function: Entity oversight + CEO accountability + major decision approval
    Meeting cadence: Quarterly board meetings + monthly informal updates with Matt
    Key documents: Company bylaws; board charter; committee charters; conflict of interest policy
    
  BOARD COMPOSITION PRINCIPLES:
  
    Independent directors are recruited for a specific competency gap:
      Allevio: Healthcare policy / health insurance / MSO regulatory expertise
      HIVE: Oil & gas operations / mineral rights / Utah regulatory expertise
      Column6: CTV / digital media / agency ecosystem expertise
      
    A director who doesn't fill a real competency gap is a political seat, not a governance seat.
    THRIVE filter: Does adding this director create value (V) and is it the right thing for the
    entity (I)? If the primary reason is "Matt knows them" without a competency fit, it's the
    wrong reason.
    
    Board size: 3-5 directors is optimal for portfolio companies at MBL's stage.
    Smaller than 3: quorum issues; lack of diverse perspective.
    Larger than 7: too slow to convene; discussion diluted.

GOVERNANCE DOCUMENTS CHECKLIST:

  Entity incorporation:
    □ Certificate of incorporation (or LLC operating agreement)
    □ Bylaws (or equivalent)
    □ Shareholder agreement (or member agreement) — if applicable
    
  Board governance:
    □ Board charter: purpose, composition, meeting cadence, quorum, decision authority
    □ Committee charters: Audit, Compensation (if applicable); each committee meets at least
      twice per year separately from the full board
    □ Conflict of interest policy: What constitutes a conflict; disclosure requirements;
      recusal process; applies to all directors and Matt Mathison
    □ D&O insurance: Current; covers all directors; policy reviewed annually
    
  Financial governance:
    □ Approval thresholds: What dollar amounts require board approval vs. management approval
      Recommended for portfolio companies: >$250K requires board pre-approval for unbudgeted items
    □ Related-party transaction policy: Transactions between MBL and a portfolio entity
      must go through a conflict-of-interest review and board approval
    □ Audit charter: Audit committee oversight of financial statements and controls

DIRECTOR ONBOARDING (first 30 days):

  Week 1 — Read the business:
    □ Entity overview (2-page summary: what we do, who we serve, how we make money)
    □ Current financial model (exec-kpi-dashboard entity section)
    □ Current strategic plan (exec-strategic-planning)
    □ Board charter + conflict of interest policy
    
  Week 2 — Meet the team:
    □ 30-min call: Matt Mathison (MBL expectations; board culture)
    □ 30-min call: Entity CEO (operational context; what the CEO needs from the board)
    □ 30-min call: Dr. Lewis (technology and AI strategy context)
    
  Week 3 — Deep dive on their domain:
    □ Area where this director brings specific expertise (regulatory; market; operational)
    □ Current open questions in their domain where they can add immediate value
    
  Week 4 — First board contribution:
    □ Attend or observe the first board meeting (or next scheduled)
    □ Prepare 1-3 specific observations or questions for the first board discussion
    
  30-day check-in: Dr. Lewis and the new director — is the onboarding complete?
    Are there gaps? What questions remain unanswered?

ANNUAL BOARD EFFECTIVENESS REVIEW:

  Self-assessment (December each year; conducted by Dr. Lewis with each director):
    □ Is the board receiving the information it needs to govern effectively?
    □ Are the right topics getting the right amount of time?
    □ Is management being transparent about risks and misses?
    □ Are decisions being made in a timely way, or is the board a bottleneck?
    □ Is every director contributing meaningfully?
    
  Results: Shared with Matt Mathison. If a director is consistently non-contributing,
  a private conversation with Matt precedes any board composition change.
```

## Output Format

```markdown
# [Entity] Board Governance Summary
**Entity:** [Name] | **Date:** [Date] | **Prepared by:** Dr. Lewis

---

## Board Composition

| Director | Role | Competency area | Independent | Term started |
|---------|------|----------------|-------------|-------------|
| Matt Mathison | Chair | PE / Capital allocation | No — managing partner | [Date] |
| [Name] | Director | [Domain expertise] | Yes | [Date] |
| [Entity CEO] | CEO / Ex-officio | Operations | No | [Date] |

**Competency gaps:** [What the board currently lacks that matters for this entity]
**Next board seat:** [If applicable — what competency gap to fill]

---

## Governance Documents Status

| Document | Status | Last reviewed |
|---------|--------|-------------|
| Board charter | ✅ Current / ⚠️ Needs update / ❌ Missing | [Date] |
| Conflict of interest policy | — | — |
| D&O insurance | — | — |
| Approval thresholds | — | — |
| Committee charters | — | — |

---

## Annual Effectiveness Review Summary

**Meeting cadence compliance:** [X/4 quarterly meetings held]
**Decision timeliness:** [Average days to decision on board items]
**Management candor rating:** [Director feedback — are they getting honest information?]
**Recommended changes:** [If any]
```

## Output Contract
- Governance documents must be current before a board meeting — a board that governs under a 3-year-old charter with outdated approval thresholds is a governance liability; Dr. Lewis conducts a governance document review annually (November) and identifies any documents that need to be updated before the next board year; updates are completed before January 1
- Conflicts are disclosed before recusal is needed — the conflict of interest policy is only effective if directors and Matt Mathison proactively disclose potential conflicts before they vote; Dr. Lewis prompts the conflict-of-interest disclosure at the beginning of every board meeting with a standing agenda item; a conflict discovered after a vote is a governance failure
- Board composition changes require lead time — recruiting and onboarding an independent director who fills a real competency gap takes 2-4 months; Dr. Lewis identifies competency gaps in the annual effectiveness review and begins the search process before the gap becomes urgent; "we need a healthcare expert on the Allevio board for the regulatory discussion in March" with a February start is too late
- HITL required: Matt Mathison approves all board composition changes; new director nominations reviewed by Matt before any approach is made; D&O insurance reviewed by outside counsel annually; related-party transaction approvals require Matt Mathison and the full board minus conflicted parties; annual effectiveness review results shared with Matt Mathison before any director-specific feedback is delivered

## System Dependencies
- **Reads from:** Entity incorporation documents (SharePoint/Legal/[Entity]/Governance/); current board charter and committee charters (SharePoint/Governance/BoardDocuments/[Entity]/); exec-decision-framework (approval thresholds align with board approval thresholds); exec-board-communication (board meeting cadence and meeting records); exec-lp-reporting (LP agreement provisions that affect board governance)
- **Writes to:** Governance documents (SharePoint/Governance/BoardDocuments/[Entity]/); director onboarding packages (SharePoint/Governance/BoardOnboarding/[Entity]/[Director]/); annual effectiveness review (SharePoint/Governance/BoardReviews/[YYYY]/[Entity]_EffectivenessReview.pdf); exec-action-tracker (board governance tasks and deadlines)
- **HITL Required:** Matt Mathison approves all board composition changes; new director nominations reviewed by Matt before any approach; D&O insurance reviewed by outside counsel annually; related-party transactions require board approval minus conflicted parties; annual effectiveness review results to Matt Mathison before director-specific feedback

## Test Cases
1. **Golden path:** Allevio acquires a new employer group in a new regulatory environment (Nevada); existing board lacks Nevada healthcare regulatory expertise; Dr. Lewis identifies the gap in the annual board review; presents to Matt: "Allevio's expansion into Nevada is moving faster than we expected. The board doesn't have anyone with Nevada HMO regulatory experience. I'd recommend filling this gap before we have a compliance question the board can't help with. Do you want me to build a director profile and identify 3-5 candidates by February 1?" Matt: "Yes — but only if it's a real governance contribution, not just a name on the masthead." Dr. Lewis builds the competency profile; presents 3 candidates with domain fit scores; Matt selects one; Dr. Lewis runs the onboarding; new director contributes Nevada regulatory analysis in the Q2 board meeting.
2. **Edge case:** A director discloses (at the meeting, during a vote) that they have a business relationship with a vendor being discussed → Matt immediately: "We need to pause this vote. [Director], please step out for this item. Dr. Lewis, is this covered under the conflict of interest policy?" Dr. Lewis: "Yes — the policy requires advance disclosure and a recusal vote. We should have caught this in the pre-meeting conflict review. I'll follow up with [Director] on the proper disclosure process, and we'll re-vote on this item next meeting with the proper procedure." Matt: "Good catch. Let's make sure the conflict checklist is a standing agenda item from now on." Dr. Lewis updates the board meeting template: conflict disclosure standing item added.
3. **Adversarial:** Matt proposes adding a director primarily because "he's a great guy and a good networker — he can help us find deals." → Dr. Lewis: "I'd push back gently on that. A board seat is a fiduciary position — the director has governance responsibilities, not just a relationship function. If the primary value is deal flow, we could structure that as an advisor relationship without giving him a board seat and the associated D&O liability and governance obligations. What specific competency gap would he fill on the Allevio or HIVE board? If the answer is 'none,' he'd probably be more valuable as an advisor where we can engage him on deals without the governance complexity." Matt: "That's a fair point. Let's keep him as an advisor for now."

## Audit Log
All governance documents retained by entity and version. Board composition changes retained (date; reason; Matt Mathison approval). Director onboarding records retained. Annual effectiveness review results retained. Conflict disclosure records retained. D&O insurance review records retained. Related-party transaction approvals retained.

## Deprecation
Retire when MBL has a General Counsel who manages board governance for all entities — with Matt Mathison retaining final authority on board composition and Dr. Lewis retaining the AI strategy and technology oversight inputs.
