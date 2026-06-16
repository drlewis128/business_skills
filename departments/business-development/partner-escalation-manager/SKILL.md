---
name: partner-escalation-manager
description: "Manage a partner escalation or dispute. Use when the user says 'partner escalation', 'partner dispute', 'partner is upset', 'handle a partner complaint', 'partner conflict', 'partner disagreement', 'resolve a partner issue', 'partner is threatening to leave', 'partner escalation response', or 'deal with an angry partner'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--partner <company name>] [--issue-type <fee-dispute|misrepresentation|attribution|performance|relationship>]"
---

# Partner Escalation Manager

Manage a partner escalation — a situation where a partner has a complaint, dispute, or grievance that needs a structured response. Partner escalations are common: referral fee disputes, attribution disagreements, expectations that weren't met, or feeling undervalued. How these escalations are handled is as important as the outcome — a partner who escalated and was treated with respect and resolution will often be a stronger partner afterward than one who never escalated at all.

## When to Use
- A partner contacts us with a complaint (fee dispute, attribution issue, poor referral handling)
- A partner threatens to leave or terminate the agreement
- A partner publicly complains about the company
- An internal team member surfaces a partner conflict
- A partner's communication tone has become adversarial

## Escalation Categories

```
Common partner escalation types:

1. Referral fee dispute: "You didn't pay me for a referral I submitted"
   Most common. Usually traceable. Resolve fast.

2. Attribution dispute: "My referral is in your CRM but marked as company-sourced"
   Complex. Requires policy documentation. Escalate quickly.

3. Performance complaint: "You responded too slowly to my client introduction and they went elsewhere"
   Often legitimate. Acknowledge, fix, and prevent recurrence.

4. Expectation mismatch: "I thought the partnership would generate more revenue for me by now"
   Often a communication failure during onboarding. Address root cause.

5. Relationship grievance: "No one from your company has talked to us in 3 months"
   Engagement failure on our side. Acknowledge and repair.

6. Contract dispute: "Your agreement doesn't say X but your team promised X"
   Legal risk. Escalate to Matt Mathison and legal immediately.
```

## Output Format

```markdown
# Partner Escalation Response — <Partner Name>
**Issue type:** [Fee dispute / Attribution / Performance / Expectation / Relationship / Contract]
**Reported by:** <Partner contact name, title>
**Date received:** <date> | **Severity:** 🔴 High / 🟡 Medium / ⚪ Low
**Prepared by:** Dr. John Lewis

---

## Issue Summary

**What the partner is saying:** [Their claim in their words — quote directly if available]
**What we know happened:** [Our account of the same events — from CRM, email records, agreement]
**Gap:** [Where the accounts differ — or "Our records confirm their account"]

---

## Severity Assessment

| Factor | Assessment |
|--------|-----------|
| Financial impact (fee owed?) | $[X] in dispute — or Not applicable |
| Relationship risk (likely to exit if not resolved?) | High / Medium / Low |
| Reputational risk (will they talk to others?) | High (they're vocal in industry) / Low |
| Legal exposure (contract dispute?) | Yes — route to legal / No |
| Our fault? | ✅ Yes / ⚠️ Partially / ❌ No |

**Severity: 🔴 High / 🟡 Medium / ⚪ Low**

---

## Response Approach

| Severity | Response timeline | Who responds | Escalate to |
|---------|-----------------|--------------|------------|
| 🔴 High | Within 24 hours | Dr. Lewis (+ CEO if relationship-critical) | Matt Mathison immediately |
| 🟡 Medium | Within 48 hours | Dr. Lewis | Matt Mathison if involves economics |
| ⚪ Low | Within 5 business days | Dr. Lewis | No escalation needed |

---

## Response Script Framework

**Opening (always acknowledge first — never defend first):**
> "Thank you for bringing this to my attention directly. I take this seriously, and I want to understand exactly what happened from your perspective before we figure out how to make it right."

**Listen completely before speaking:**
- Do not interrupt
- Do not explain why we did what we did
- Do not defend yet
- Take notes

**After listening:**
> "I hear you. Let me be honest — [one of three paths below]"

**Path 1 — We were wrong:**
> "You're right. We made an error. Here's specifically what happened on our end [explain briefly], and here's what we're going to do: [specific remedy — pay the fee, credit the referral, accelerate the response]. I'll personally ensure [specific commitment with date]."

**Path 2 — Partial fault:**
> "There are things we could have done better — [acknowledge specifically]. There are also some facts from our records I want to share with you [explain calmly]. I think the right resolution is [specific — not just "let's figure it out together"]."

**Path 3 — We weren't at fault but they had a poor experience:**
> "I'm sorry your experience wasn't what we intended. I can see why you felt [their emotion]. Even though [specific facts that explain our position], I don't want this to be where we end up. Here's what I'd like to do: [specific good-faith offer]."

**Close:**
> "I'll follow up with you in writing today to confirm everything we discussed and what we're committing to. My goal is to resolve this to your satisfaction — and more importantly, to make sure it doesn't happen again."

---

## Resolution Options by Issue Type

| Issue type | First-choice resolution | Escalation needed? |
|-----------|----------------------|-------------------|
| Fee dispute (our error confirmed) | Pay the fee + 30-day timeline guarantee going forward | Matt Mathison (financial) |
| Fee dispute (disputed attribution) | Internal review → apply documented attribution policy → communicate decision | Matt Mathison if >$2,500 |
| Attribution dispute | Apply documented attribution policy; if undocumented, make fair judgment and document policy going forward | Matt Mathison |
| Performance complaint (our failure) | Acknowledge specifically; show the fix; offer a goodwill gesture (fee advance, tier upgrade consideration) | No |
| Expectation mismatch | Clarify what the partnership can realistically deliver; reset expectations; evaluate whether to restructure or wind down | No |
| Relationship grievance | Acknowledge the gap; schedule QBR within 2 weeks; restore communication cadence | No |
| Contract dispute | Stop the commercial discussion; route to legal immediately; do not make any commitments | Matt Mathison + legal ASAP |

---

## Post-Resolution Follow-Up

Within 24 hours of the resolution call:
- [ ] Send written recap of what was discussed and what was committed to
- [ ] Complete any financial commitments within stated timeline
- [ ] Update CRM: escalation documented, outcome, date resolved
- [ ] Conduct internal debrief: what caused this? What process change prevents recurrence?
- [ ] Matt Mathison notified of resolution (for 🔴 escalations)

---

## Matt Mathison Summary

**Partner:** [Name] | **Issue:** [Type] | **Severity:** [🔴 / 🟡]
**Summary:** [1 sentence — what they claim, what we know, what we're doing]
**Financial exposure:** $[X] / None
**Matt Mathison action needed:** [Approve resolution / Approve economics / Immediate call with CEO / None]
```

## Output Contract
- Acknowledge before defending — the most common failure in partner escalation is leading with a defense; partners who feel they aren't being heard escalate further; the response framework always starts with acknowledgment and listening before any explanation or defense
- Response within 24 hours for 🔴 escalations — delayed responses to serious partner issues signal that the company doesn't care; a partner who hasn't heard anything 3 days after raising a serious complaint will assume the worst; speed of response is often more important than the specific resolution
- Written follow-up always within 24 hours — verbal commitments are untracked and forgettable; every resolution call is followed by a written recap of what was committed to; this protects both parties
- Internal debrief always required — resolving the individual escalation without fixing the underlying cause creates a recurring escalation pattern; every escalation should result in a documented process change or a documented finding that no change is needed
- HITL required: Dr. Lewis handles all escalations; Matt Mathison notified within 24 hours of 🔴 escalations; any financial commitment (paying disputed fee, offering goodwill credit) requires Matt Mathison approval if >$2,500; contract disputes route immediately to Matt Mathison and legal before any response is given

## System Dependencies
- **Reads from:** Partner agreement, CRM (referral records, attribution data), communication history, fee payment records
- **Writes to:** Escalation log (SharePoint/BD/Partners/<Partner>/Escalations); CRM partner record; resolution confirmation email
- **HITL Required:** Dr. Lewis manages; Matt Mathison notified for 🔴; financial commitments >$2,500 require Matt Mathison; contract disputes require Matt Mathison + legal

## Test Cases
1. **Golden path:** Allevio referral partner claims they submitted a referral 90 days ago and were never paid → Check CRM: referral submitted Day 1, prospect contacted Day 3, contract signed Day 45, fee calculation: $6,800 (18% of $37,800 contract) — but payment was sent to wrong email address; Resolution: called partner within 4 hours of complaint; acknowledged immediately ("You're right — we owe you this fee and we didn't deliver it"); resent payment with corrected address; $6,800 paid within 48 hours; follow-up email same day with payment confirmation; internal fix: added payment email confirmation step to fee payment process; partner submitted 2 new referrals within 30 days
2. **Edge case:** Partner claims they referred a client who is now a customer, but the CRM shows the client as "company-sourced" because a different team member also met this person at a conference → this is a genuine attribution ambiguity; don't declare a winner immediately; review the facts: when did the partner submit? When did the conference contact happen? Who had the substantive conversation that moved the prospect forward? Apply the attribution policy (or document one on the spot if it doesn't exist); split the credit if appropriate; communicate the decision clearly; whatever you decide, document it as the attribution policy going forward
3. **Adversarial:** A partner threatens to post negative reviews about the company unless their dispute is resolved immediately in their favor → do not capitulate to threats; acknowledge the concern professionally: "I understand you're frustrated and I want to resolve this properly. Making a threat to post negative reviews doesn't change what the right resolution is, but I am committed to resolving your concern fairly and quickly." Then follow the normal resolution process; if the threat escalates to actual defamatory posts, route to legal; paying a settlement to a partner who is threatening public damage sets a precedent that damages the entire program

## Audit Log
All escalations logged with date, type, severity, resolution, and financial impact. Matt Mathison notifications documented. Financial commitments and approvals retained. Internal process changes resulting from escalations logged.

## Deprecation
Retire when portfolio companies have a formal partner success and dispute resolution function with a ticketing system and documented escalation SLAs.
