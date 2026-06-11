---
name: executive-sponsor-program
description: "Build or manage an executive sponsor program for strategic customer accounts. Use when the user says 'executive sponsor', 'exec sponsor program', 'executive relationship', 'C-level engagement', 'executive accountability for customers', 'exec sponsorship', or 'Dr. Lewis or Matt to sponsor accounts'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--account <specific>] [--sponsor <dr-lewis|matt-mathison|exec-name>]"
---

# Executive Sponsor Program

Build and manage an executive sponsor program for strategic customer accounts. Executive sponsorship is the highest-leverage retention tool for large accounts — it signals that MBL leadership is personally invested, provides an escalation bypass for relationship issues, and creates the C-level relationship that drives renewals and referrals.

## When to Use
- Strategic account (Tier 1, > $100K ACV) that needs executive attention
- At-risk account where standard CSM engagement hasn't moved the needle
- Key portfolio company account that has cross-entity implications
- New strategic customer where relationship needs to be seeded at the top
- Building a formal exec sponsor program for the CS team

## Who Should Be an Exec Sponsor at MBL

| Account Type | Recommended Sponsor |
|-------------|-------------------|
| Strategic account, ACV > $100K | Dr. Lewis |
| Portfolio company cross-entity relationship | Matt Mathison |
| Healthcare sector (Allevio-adjacent) | Dr. Lewis |
| Oil & gas sector (HIVE-adjacent) | Matt Mathison |
| New logo in priority segment | CS Manager initially; escalate if >$75K |

## Executive Sponsor Responsibilities

### 1. Relationship (4× per year minimum)
- One executive check-in call per quarter (15–30 minutes)
- Annual in-person or video business review
- Personal reach-out at key moments (renewal signed, expansion agreed, milestone achieved)

### 2. Escalation Bypass
- Available as escalation contact for P1 issues
- Customer executive can reach sponsor directly if needed
- Sponsor notified of any P1 or P2 escalation within 4 hours

### 3. Internal Advocacy
- Represents the customer's needs in internal strategy discussions
- Can unblock cross-team resource issues that the CSM can't resolve
- Provides strategic context to Product on this customer's roadmap priorities

### 4. Commercial
- Joins key renewal conversations when at-risk
- Approves retention offers for high-value accounts
- Makes the "we want you to stay" call if standard play doesn't close the renewal

## Executive Sponsor Briefing Format

Exec sponsors shouldn't need to read a 10-page account plan before a call. They need a 1-page brief.

## Output Format

```markdown
# Executive Sponsor Program — <Account / Full Portfolio>
**Entity:** <MBL entity> | **Date:** <date>

---

## Sponsor Assignments

| Account | ACV | Sponsor | Tier | Last Exec Contact | Renewal |
|---------|-----|---------|------|------------------|---------|
| <Account> | $<N> | Dr. Lewis | 1 | <date> | <date> |
| <Account> | $<N> | Matt Mathison | 1 | <date> | <date> |

---

## Executive Sponsor Call Brief — <Account>

**Prepared for:** <Sponsor name>
**Meeting date:** <date> | **Duration:** 20 minutes
**Customer contact:** <Name, Title>

### What They Need to Hear From You
<2-3 sentences: what is the strategic value of this call for the customer? What do they need to feel from the exec?  e.g., "They need to know MBL is committed to this relationship and investing in their industry. Reinforce that their feedback shapes our direction.">

### Current Account Health
**Health score:** <N> — 🟢 / 🟡 / 🔴
**Recent highlights:** <1-2 positive things to reference>
**Open concerns:** <1-2 things to acknowledge if they come up>

### Renewal Status
**Renewal date:** <date> | **Status:** Commit / At risk
**Renewal message if needed:** "We're [X months] from renewal and I want to make sure we're aligned on the value we've delivered and what's ahead."

### 3 Questions to Ask (Exec-to-Exec)
1. "What's on your mind strategically in [their industry] right now?"
2. "How is our team performing from your perspective?"
3. "Is there anything you feel we should be doing differently?"

### What to Avoid
- Don't get into product-level detail — that's the CSM's job
- Don't commit to anything specific without checking with CS Manager first

---

## Executive Engagement Cadence

| Account | Sponsor | Q1 | Q2 | Q3 | Q4 |
|---------|---------|----|----|----|----|
| <Account> | Dr. Lewis | ✅ Call done | Scheduled | — | — |
| <Account> | Dr. Lewis | ❌ Missed | Needs rescheduling | | |
```

## Output Contract
- Sponsor assignments always documented — no informal assignments
- Call brief always prepared before each exec call — sponsors don't go in cold
- Engagement cadence always tracked — missed cadence is a gap in the program
- HITL required: Dr. Lewis and Matt Mathison must personally approve their own sponsor assignments; briefing package delivered 24 hours before any exec call

## System Dependencies
- **Reads from:** Account health, CRM account data, renewal status (provided or from CS platform)
- **Writes to:** Nothing (program plan for HITL review and exec calendar management)
- **HITL Required:** Dr. Lewis approves his own sponsor assignments; briefings reviewed by CS Manager before being sent to sponsor; post-call notes entered in CRM by CSM within 24 hours

## Test Cases
1. **Golden path:** 6 Tier 1 accounts assigned to exec sponsors → Dr. Lewis sponsors 4 (healthcare/general), Matt Mathison sponsors 2 (LP/oil & gas), quarterly call briefs prepared, engagement tracker shows all current
2. **Edge case:** Account needs exec engagement but both Dr. Lewis and Matt Mathison are at capacity → CS Manager serves as interim sponsor with Dr. Lewis visibility, flags that capacity constraint needs to be addressed in quarterly planning
3. **Adversarial:** CSM wants exec sponsor to resolve a routine issue (standard support problem) → redirects to proper escalation path, explains exec sponsor channel is for relationship and strategic issues, not support tickets

## Audit Log
Sponsor assignments and call records retained by account and date. Engagement cadence tracked quarterly.

## Deprecation
Retire when CRM or CS platform provides formal exec sponsor program tracking with automated cadence reminders and briefing generation.
