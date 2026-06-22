---
name: hr-promotion-framework
description: "Manage employee promotions at MBL Partners portfolio companies. Use when the user says 'promotion', 'promote', 'promote an employee', 'ready for promotion', 'promotion decision', 'promotion criteria', 'how do we promote', 'promotion process', 'who to promote', 'is this person ready to be promoted', 'level up', 'move to next level', 'career advancement', 'career progression', 'title change', 'title promotion', 'role expansion', 'scope change', 'take on more responsibility', 'promotion path', 'promotion timeline', 'manager promotion', 'director promotion', 'VP promotion', 'promotion announcement', 'promotion offer', or 'when do we promote'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--employee <name>] [--entity <mbl|allevio|hive|column6>] [--from-level <L1|L2|L3|L4|L5>] [--to-level <L2|L3|L4|L5|L6>] [--action <assess|approve|announce>]"
---

# HR Promotion Framework

Evaluate and execute employee promotions — assessing readiness against role and level criteria, authorizing compensation changes, and communicating promotions in a way that reinforces THRIVE culture and performance norms. Promotions that are given without clear criteria undermine the culture (everyone wonders why they weren't promoted); promotions that are withheld from ready employees despite meeting criteria damage retention.

## When to Use
- A manager recommends an employee for promotion
- An employee asks about their promotion path
- A high performer's development plan includes a promotion target
- Scope has expanded enough to warrant a formal level change

## Promotion Framework

```
PROMOTION CRITERIA (all must be met):

  1. PERFORMANCE: sustained Exceeds or strong Meets rating for ≥6 months at current level
     Single-quarter Exceeds is not sufficient; the behavior must be sustained
     If the most recent performance cycle shows Developing or PIP: promotion is paused
     
  2. SCOPE EXPANSION: employee is already performing at the next level
     The most important criterion: promotion validates behavior already demonstrated
     Not: "we believe they will grow into this level" (that is a bet; promotion is a recognition)
     Evidence: taking on scope, complexity, or accountability that exceeds current level requirements
     
  3. SALARY BAND ALIGNMENT: promoted comp reaches at minimum the new level's band floor
     Promotion without a comp change is a title change, not a promotion
     New comp: at minimum band floor; target is 50th-75th percentile of new band
     If budget cannot support comp change: delay promotion until budget cycle supports it
     Do not communicate a promotion without confirming comp change timeline
     
  4. THRIVE ALIGNMENT: no active THRIVE Integrity concerns
     Any open Integrity investigation or coaching concern pauses all promotions
     Other THRIVE dimensions are assessed and noted but do not require perfection

APPROVAL THRESHOLDS:
  IC to IC (Level 1→2, 2→3): entity CEO + Dr. Lewis approve
  IC to Manager (Level 3→4): entity CEO + Dr. Lewis; Dr. Lewis interviews the candidate
  Manager to Director (Level 4→5): entity CEO + Dr. Lewis; Dr. Lewis conducts promotion review
  Director to VP (Level 5→6): Matt Mathison awareness; entity CEO + Dr. Lewis + Matt approve
  Any promotion >$25K comp increase: Matt Mathison notified

PROMOTION PROCESS:
  Step 1: Manager submits promotion recommendation (role; timing; rationale; proposed new comp)
  Step 2: Dr. Lewis reviews criteria (performance; scope; comp; THRIVE)
  Step 3: Dr. Lewis + entity CEO approve or decline (with feedback)
  Step 4: New comp confirmed; effective date set
  Step 5: Manager delivers promotion conversation
  Step 6: Announcement to team (within 48 hours of conversation with the promoted employee)
  
PROMOTION CONVERSATION (manager delivers):
  Timing: private 1:1 before any announcement
  Message: "I want to share news — you're being promoted to [title]. Here's why:
    [specific evidence of performance at next level]. Your new salary is $[X], effective [date]."
  Development: "At [new level], here are 2 things that will be most important for your success: [specifics]"
  Not: "You've earned this." (Platitude) — "Your management of the Q3 employer onboarding independently
    and the improvements you drove in claim ratio reporting are exactly what we needed from someone
    at this level. You were already doing the work." (Specific)
  
ANNOUNCEMENT:
  Within 48 hours of promotion conversation (build excitement; don't let it leak)
  Medium: team meeting or team message (entity CEO or manager delivers)
  Include: new title; effective date; why this person (brief, specific reference to performance)
  Do NOT disclose new salary in the announcement

DECLINE HANDLING:
  If promotion criteria are not met: honest conversation about what is missing and timeline
  Do not: say "maybe next quarter" without specific criteria
  Do: "Here are the 2 specific things I need to see to support your promotion: [X and Y].
    Once I see those for 2 consecutive quarters, I'll bring it to the CEO."
```

## Output Format

```markdown
# Promotion Assessment — [Employee Name] | [Entity] — [Date]
**Current level:** [L1-L5] → **Proposed level:** [L2-L6] | **Effective date:** [Date]
**Assessed by:** Dr. Lewis | **Approved by:** Entity CEO + [Matt Mathison if VP+]

---

## Criteria Assessment

| Criterion | Status | Evidence |
|-----------|--------|---------|
| Performance ≥6 months | ✅ / ❌ | [Rating; quarters at level] |
| Scope expansion | ✅ / ❌ | [Specific examples of next-level scope] |
| Comp alignment | ✅ / ❌ | Current $[X] → New $[X]; new band floor $[X] |
| THRIVE alignment | ✅ / ❌ | [No open Integrity concerns] |

---

## Promotion Decision
☐ **APPROVED** — All criteria met | Effective date: [Date]
☐ **DECLINED** — Criteria not met: [specific gap(s)] | Re-assess: [Date]

---

## Announcement Plan
- Promotion conversation with employee: [Date] — delivered by [Manager]
- Team announcement: [Date] — within 48 hours
- HRIS title update: effective [Date]
- Payroll comp update: effective [Date]
```

## Output Contract
- Scope expansion must be demonstrated before promotion — a promotion that is given in anticipation of future scope is a bet, not a recognition; if the employee is already performing at the next level and the entity benefits from that performance, the promotion validates what is already true; if the employee is performing at current level, a promotion to the next level creates pressure to perform at a level they haven't demonstrated; Dr. Lewis verifies scope expansion with specific examples (not "she seems ready") before approving any promotion
- Comp change is confirmed before the conversation — a manager who tells an employee they're promoted and then says "the comp change will happen next quarter" has de-motivated the person they just promoted; Dr. Lewis confirms the comp change effective date, payroll update date, and new salary amount before the manager has the promotion conversation; there should be no ambiguity about the financial terms when the manager delivers the news
- Promotion declines are explained with specific criteria — a declined promotion without specific feedback is a retention risk; "not yet" without specific criteria is a vague disappointment; "here are the 2 things I need to see" gives the employee a path and a goal; Dr. Lewis coaches managers to deliver declined promotion feedback with specific, actionable criteria that the employee can work toward
- HITL required: promotion recommendation → Dr. Lewis reviews all criteria; Manager→Director+ promotion → Dr. Lewis conducts promotion review interview; Director→VP → Matt Mathison awareness + approval; >$25K comp increase → Matt Mathison notified; THRIVE Integrity concern → Dr. Lewis holds promotion pending resolution; promotion conversation → Dr. Lewis confirms all components confirmed before manager delivers

## System Dependencies
- **Reads from:** hr-performance-review-cycle (rating history; sustained performance evidence); hr-salary-band-manager (new level band; comp alignment); hr-high-performer-identifier (HiPo development plan alignment); hr-okr-facilitator (OKR score history); HRIS (current title; comp; tenure)
- **Writes to:** Promotion record (SharePoint → HR → Promotions → [Entity] → [Employee]); HRIS title update; payroll comp update (QuickBooks); Matt Mathison notification (VP+ or >$25K); announcement text
- **HITL Required:** Criteria review → Dr. Lewis; Manager→Director+ → Dr. Lewis interview; Director→VP → Matt Mathison; >$25K → Matt notified; Integrity concern → Dr. Lewis holds; conversation confirmation → Dr. Lewis before delivery

## Test Cases
1. **Golden path:** Allevio Care Coordinator (L2, 18 months) → Senior Care Coordinator (L3). Criteria: Performance: Exceeds × 2 consecutive quarters ✅. Scope: independently managing caseload of 85 members (above L2 expectation of 60); training 2 new L1 coordinators ✅. Comp: current $56K; new band floor $61K; proposed $63K ✅. THRIVE: no concerns ✅. Approved by Allevio CEO + Dr. Lewis. Manager delivers promotion conversation. Team announcement next day.
2. **Edge case:** Manager nominates a HIVE Lease Manager for promotion but they've been at the company only 9 months → Dr. Lewis: "The 6-month sustained performance requirement exists to distinguish between 'new person energy' and demonstrated sustained performance. At 9 months, we have 2 quarters of data. Both were Meets — not Exceeds. For a Director-level promotion, I'd want to see Exceeds for 2 quarters and sustained scope expansion. I'd recommend having the specific promotion conversation with them (here's what you need to achieve; here's the timeline) and targeting promotion for January, after Q4 performance is confirmed."
3. **Adversarial:** An employee threatens to leave if not promoted immediately, and the CEO wants to promote them pre-emptively → Dr. Lewis: "I understand the retention pressure. Before we decide, let's separate two things: (1) is this person genuinely performing at the next level? If yes, let's promote — the criteria are met and we're just recognizing what's already true. (2) If the criteria are not met, a pressure-based promotion sets a precedent that the way to get promoted here is to threaten to leave, which will be noticed by the rest of the team. My recommendation: do the criteria assessment honestly. If they're ready, promote confidently with evidence. If they're not, have the honest conversation about what they need to build."

## Audit Log
All promotion records retained permanently (employment record). Criteria assessment retained. Approval records (CEO; Matt Mathison for VP+) retained. Declined promotion records retained with specific feedback documented. Comp change records retained (payroll audit).

## Deprecation
Promotion criteria reviewed annually alongside hr-salary-band-manager band review. Approval thresholds reviewed if entity structure changes (VP+ definition). THRIVE alignment component updated only if THRIVE framework changes.
