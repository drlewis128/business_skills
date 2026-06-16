---
name: partner-deal-registration-manager
description: "Manage partner deal registration. Use when the user says 'deal registration', 'partner deal registration', 'register a partner deal', 'partner deal protection', 'partner pipeline registration', 'how do partners register deals', 'deal registration policy', 'protect partner deals', 'partner deal conflict', or 'who owns this deal'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--partner <partner name>] [--prospect <prospect name>]"
---

# Partner Deal Registration Manager

Manage the deal registration process — the system by which partners formally claim credit for a prospect they are actively working, protecting their economics from being undercut by direct sales or other partners. Deal registration is the foundational trust mechanism in any partner program: without it, partners discover their referral was already in the company's CRM and they receive no credit. This destroys partner trust fast and permanently.

## When to Use
- A partner submits a referral and we need to verify it, register it, and protect it
- Two partners claim the same prospect ("conflict" scenario)
- A partner claims credit for a prospect that's already in the company's pipeline
- Building a deal registration policy for a new partner program
- A partner disputes a deal registration decision

## Deal Registration Principles

```
Core rule: First valid submission wins.
  A "valid submission" is a registered referral from a partner who:
  (1) has a signed partner agreement in good standing
  (2) has had meaningful contact with the prospect (not just knowing their name)
  (3) submits through the official registration channel within the registration window

Registration window: 
  How long a registered deal is protected varies by program:
  - Standard: 90 days (deal must close within 90 days for partner to earn the fee)
  - Extended: 180 days for complex enterprise deals with longer sales cycles

Exclusions (when a partner cannot claim a deal):
  - Prospect was already an active opportunity in company CRM before partner submission
  - Partner has not had direct contact with the prospect (second-hand referral with no relationship)
  - Partner is not in good standing (inactive agreement, performance issues)
  - The prospect has explicitly asked not to be referenced by this partner
```

## Output Format

```markdown
# Deal Registration Decision — <Prospect Name>
**Registered by:** <Partner name> | **Date submitted:** <date>
**Prospect:** <Name + brief description>
**Estimated deal value:** $[X]
**Registration status:** ✅ Approved / ❌ Denied / ⚠️ Conflict — Pending
**Processed by:** Dr. John Lewis | **Date:** <date>

---

## Registration Submission Details

| Item | Detail |
|------|--------|
| Partner | [Name] |
| Prospect | [Company name, contact] |
| Submission date | [Date] |
| Partner's stated contact with prospect | [What the partner told us about their relationship] |
| CRM check — was this prospect already in our system? | ✅ Not in CRM / ⚠️ In CRM — [date first entered, by whom] |
| Other partner claims on same prospect? | ✅ None / ⚠️ Yes — [Partner name, date submitted] |

---

## Eligibility Check

| Criterion | Status | Notes |
|-----------|--------|-------|
| Partner agreement in good standing | ✅ / ❌ | |
| Partner has direct contact with prospect (not just a name) | ✅ / ❌ | [Evidence provided?] |
| Submission through official channel | ✅ / ❌ | [Email / form / CRM entry] |
| Prospect not already an active opportunity | ✅ / ❌ | [If in CRM: how active? By whom?] |
| Submission within registration window | ✅ / ❌ | [If applicable — e.g., 90-day window] |
| No exclusion criteria apply | ✅ / ❌ | [See exclusion list above] |

---

## Decision

**Registration decision:** ✅ Approved / ❌ Denied / ⚠️ Conflict pending resolution

**If approved:**
- Partner is credited with this deal in our CRM
- Registration is valid through: [Date — 90 days from approval]
- Direct sales team notified: partner [Name] has registered this deal; do not independently pursue without informing Dr. Lewis
- If deal closes within registration window: [Partner fee] owed at [X%] of Year 1 contract value

**If denied:**
- Reason: [Specific — not in good standing / prospect was already active in CRM / no direct contact / submitted after registration window]
- Communication to partner: [Honest, specific explanation]
- Can partner re-register if they establish direct contact? [Yes / No]

**If conflict:**
- Conflict details: [Partner A submitted [date]; Partner B submitted [date]; prospect is in both]
- Resolution approach: [First submission wins / Investigate which partner has deeper relationship / Matt Mathison decides]
- Resolution target date: [Date — within 5 business days of conflict identification]

---

## Communication to Partner

**Approved:**
> "Hi [Partner name], I'm confirming that your deal registration for [Prospect] has been approved. This registration is valid through [date]. Our sales team is aware you're working this relationship. Please keep us updated on your progress and submit the referral through [process] when you're ready to bring us into the conversation. We'll honor your fee of [X%] if the deal closes within the registration window."

**Denied:**
> "Hi [Partner name], I reviewed your deal registration for [Prospect]. Unfortunately, I'm unable to approve this registration because [specific reason — the prospect was already an active opportunity in our pipeline as of [date] / your agreement requires a minimum of [N] direct interactions before registration / the submission was outside our [N]-day window]. [If applicable: Here's how you can resubmit if the situation changes: [process].]"

---

## Deal Registration Policy (Reference)

| Policy element | Standard |
|---------------|---------|
| Registration method | [Email to jlewis@mblpartners.com with subject "Deal Registration: [Prospect]" / Online form / CRM entry] |
| Acknowledgment SLA | Within 2 business days of submission |
| Registration window | 90 days (extendable to 180 days for enterprise deals >$50K — request required) |
| First-valid-submission rule | First partner with a valid submission owns the deal |
| Conflict resolution | 5 business days; decision made by Dr. Lewis; appeal to Matt Mathison |
| Direct sales protection | Once registered, direct sales may not independently close this deal without partner knowledge |
| Override (company-sourced) | If prospect was in CRM as an active opportunity before partner submission, company retains deal with no partner fee |
```

## Output Contract
- Decision within 2 business days — deal registrations that sit unacknowledged for a week create partner frustration and uncertainty; the 2-day SLA is a trust signal as much as a process requirement
- First valid submission rule always applied consistently — inconsistent application of the registration rule is the fastest way to destroy partner trust; once a rule is established, it must be applied even when the outcome is inconvenient (e.g., even if the other partner has a stronger relationship, first-valid-submission wins)
- Communication to partner always specific — "your registration was denied" with no explanation is worse than no response; the denial reason must be specific, honest, and include what the partner could do differently
- CRM check always logged — the determination of whether a prospect was already in the CRM before the partner submitted must be documented (date first entered, by whom, activity status); this is the most frequently disputed element of deal registration
- HITL required: Dr. Lewis processes all deal registrations; conflicts require Matt Mathison arbitration if Dr. Lewis cannot resolve within 5 business days; any registration decision involving >$25K deal value requires Matt Mathison awareness; overrides (denying a registration because the prospect was already in CRM) require documentation and notification to the partner within 2 business days

## System Dependencies
- **Reads from:** Partner agreement (good standing), CRM (prospect history, active opportunities, first-entry date), partner registration log
- **Writes to:** Deal registration log (SharePoint/BD/Deal Registration); CRM (partner attribution tag on prospect record); partner notification email
- **HITL Required:** Dr. Lewis processes; Matt Mathison arbitrates conflicts; Matt Mathison notified for deals >$25K; overrides documented

## Test Cases
1. **Golden path:** Partner submits deal registration for AZ physician practice → CRM check: not in system (never contacted); Partner eligibility: in good standing, has met the prospect twice; submission via email with subject "Deal Registration: [Practice Name]"; approved within 1 business day; direct sales notified; registration window: 90 days; partner continues developing the relationship; deal closes Day 62; fee calculated: $6,800 (18% of $37,800); paid within 30 days of contract signature; partner receives confirmation; logs the win as evidence the program works
2. **Edge case:** A partner submits a deal registration for a prospect who is already in the CRM, entered 6 weeks ago after a trade show scan (business card captured but no follow-up activity) → "in the CRM" doesn't automatically mean "active opportunity"; if the prospect was entered but has had no meaningful engagement (no email, no call, no meeting), the partner's active relationship may reasonably supersede the CRM entry; evaluate the quality of the company's prior engagement: if it was a trade show scan with no follow-up, consider approving the registration; document the decision rationale; establish a CRM activity threshold policy for future cases
3. **Adversarial:** Two partners claim the same high-value deal ($120K) — Partner A submitted Monday, Partner B submitted Wednesday, but Partner B has a much stronger relationship (they're the prospect's primary business advisor) → apply first-valid-submission: Partner A wins if their submission is valid; Partner B's stronger relationship is not a basis to override a valid registration (if it were, the registration system becomes unpredictable and untrustworthy); explain this to Partner B specifically: "The registration policy is first valid submission — this applies to all partners equally to protect the integrity of the program"; if Partner B is frustrated, consider whether the policy needs a "meaningful engagement" threshold above first-submission; escalate this policy question to Matt Mathison as a learning to improve the policy

## Audit Log
All deal registrations logged with submission date, decision, and rationale. CRM check timestamps retained. Conflict resolutions documented. Override decisions (company-sourced denial) retained with evidence. Matt Mathison notifications logged.

## Deprecation
Retire when portfolio companies have a CRM-integrated deal registration system with automated partner notifications, conflict detection, and registration status tracking that eliminates the need for manual processing.
