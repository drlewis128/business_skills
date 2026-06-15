---
name: social-media-crisis-responder
description: "Respond to a social media crisis or negative viral post. Use when the user says 'negative viral post', 'social media crisis', 'respond to a bad review', 'Twitter or LinkedIn blowup', 'negative post going viral', 'how do we respond on social', 'angry customer post', 'social media fire', 'handle social media backlash', or 'someone is attacking us online'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--platform <LinkedIn|Twitter|Facebook|Google>] [--post-url <url>] [--severity <1-3>]"
---

# Social Media Crisis Responder

Assess and respond to a social media crisis — a negative post, viral complaint, or coordinated attack on a platform like LinkedIn, Twitter/X, Facebook, or Google Reviews. Social media crises escalate fast and slow down slow; the first 2 hours matter most. This skill classifies the situation, determines whether and how to respond, drafts the response, and tracks the escalation.

## When to Use
- A negative post about a portfolio company is gaining traction (likes, shares, comments)
- An employee, patient, customer, or partner has posted a complaint publicly
- A coordinated negative campaign appears to be targeting a portfolio company
- Media monitoring alerts surface a post that could escalate
- Matt Mathison asks "is this going to be a problem?"

## Crisis Classification

```
Level 1 — Isolated complaint (respond within 24 hours, if at all)
  Definition: Single post, few or no engagements, appears to be one person's frustration
  Risk: Low — unlikely to escalate unless the post is factually wrong and spreading
  Response: Optional; if respond, use empathetic acknowledgment; do not argue
  
Level 2 — Escalating complaint (respond within 4 hours)
  Definition: Post is gaining likes/shares; other users are adding negative comments
  Risk: Medium — can attract media attention if it reaches >500 engagements in a specific audience
  Response: Required; move conversation to private if possible; address the core complaint
  
Level 3 — Viral crisis (respond within 1 hour; notify Matt Mathison immediately)
  Definition: Post is spreading rapidly; media may already be watching; hashtag emerging
  Risk: High — news outlet could pick up within hours
  Response: Immediate; coordinate with Matt Mathison; one response from official account; prepare media statement
```

## Response Rules

```
Always:
  - Respond from the official company account (not a personal account)
  - Acknowledge the concern (even if you disagree with it)
  - Keep the public response short (1-3 sentences) — offer to move it private
  - Check: is there a factual error? Correct it specifically and once
  - Inform Dr. Lewis + Matt Mathison before any official response

Never:
  - Argue publicly with a complainant — it always looks worse
  - Delete the post (unless it contains hate speech, personal info, or threats)
  - Respond emotionally or defensively
  - Respond if the post contains legal claims — route to counsel first
  - Let multiple people respond from different accounts — one voice only
  - Like or engage with posts attacking the complainant (even if they're wrong)
```

## Output Format

```markdown
# Social Media Crisis Response — <Company Name>
**Platform:** <LinkedIn / Twitter / Facebook / Google Reviews>
**Post date:** <date/time> | **Discovered:** <date/time>
**Level:** 1 / 2 / 3
**Owner:** Dr. John Lewis | **Matt Mathison notified:** ✅ Yes / ❌ Not yet

---

## Post Details

**Original post (verbatim):**
> [Quote the exact post text]

**URL / Screenshot:** [Link or file reference]

**Author:** [Name or "anonymous"] — [Connection to company: former employee / customer / competitor / unknown]

**Current engagement:**
- Likes: [N] | Comments: [N] | Shares/Retweets: [N]
- Trending? ✅ Yes / ❌ No — [Rate of engagement: N per hour]
- Media picked it up? ✅ Yes — [Outlet] / ❌ Not yet

---

## Situation Assessment

**What is the complaint?**
[1-2 sentences summarizing the core allegation or complaint]

**Is it factually accurate?**
✅ Accurate / ⚠️ Partially accurate / ❌ Inaccurate / ? Unknown — verify first

**Is there a legal concern?**
✅ Yes — [route to legal before responding] / ❌ No

**Should we respond publicly?**
✅ Yes / ❌ No / ⚠️ Conditional — [reason]

**Should we escalate to Matt Mathison?**
✅ Yes (Level 2 or 3) / ❌ No (Level 1, low engagement)

---

## Drafted Public Response

*Keep public responses to 1-3 sentences. Offer to move private. Never argue.*

**Option A (acknowledgment + invite private):**
> "We're sorry to hear about your experience. This isn't the standard we hold ourselves to, and we'd like to understand what happened. Please reach out to us directly at [email/phone] so we can make this right."

**Option B (factual correction, if post contains clear error):**
> "We appreciate you sharing your concern. We want to clarify [specific fact] — [correct statement]. We'd welcome the chance to speak with you directly at [contact]."

**Option C (holding response for Level 3 viral):**
> "We're aware of the concerns being raised and take them seriously. We're looking into this now and will respond with more information by [specific time]. Our priority is [relevant value]."

**Selected response:** Option [A/B/C] — [Rationale]

---

## Private Follow-Up Plan

If the person accepts the offer to connect privately:
1. Move to DM or email within 1 hour of them responding
2. Understand the full situation before offering any resolution
3. Document what the complaint is and what resolution is offered
4. If the complaint is valid — resolve it and (optionally) ask them to share the resolution publicly
5. If the complaint is invalid or bad faith — explain clearly but don't argue; end the engagement

---

## Escalation Log

| Time | Action | Who | Status |
|------|--------|-----|--------|
| [Time] | Post discovered via media monitoring | Dr. Lewis | ✅ |
| [Time] | Level assessed: [N] | Dr. Lewis | ✅ |
| [Time] | Matt Mathison notified | Dr. Lewis | ✅ / Pending |
| [Time] | Public response posted | Dr. Lewis | Pending |
| [Time] | Outcome: [resolved / escalated / died down] | — | — |
```

## Output Contract
- Level classification always first — before drafting any response, classify the level; the response strategy is different for L1 vs. L3; rushing to respond to a Level 1 can amplify a dying post
- Matt Mathison notification is mandatory for Level 2 and 3 — Dr. Lewis does not respond to escalating social media situations without Matt Mathison awareness; even if the response is drafted, the send requires notification
- Public response is 1-3 sentences maximum — long responses are counter-productive; they validate the attack, provide more material to criticize, and look defensive; short, empathetic, and redirect to private
- Never delete unless it meets specific criteria — deleting a post creates "Streisand effect" (increases visibility); only delete if the post contains hate speech, personally identifiable patient/employee information, or credible threats; document the reason for deletion
- HITL required: Dr. Lewis assesses and drafts; Matt Mathison approves before posting for Level 2 and 3; legal must review before responding to any post that contains legal claims; any response that includes facts about a patient, employee, or deal requires specific approval

## System Dependencies
- **Reads from:** Social media monitoring (media-monitoring-plan output), brand monitoring alerts
- **Writes to:** Crisis response log (SharePoint/Comms/Crisis/Social); escalation log
- **HITL Required:** Dr. Lewis assesses; Matt Mathison approves Level 2/3 responses; legal clears legal-claim posts; all responses logged

## Test Cases
1. **Golden path:** Former Allevio patient posts on Facebook: "They lost my records and no one will call me back. Avoid this place." — 12 likes, 3 comments, Level 1 → assess: complaint appears genuine; no legal claims; factual accuracy unknown; respond: "We're sorry to hear this — that's not the experience we want for any patient. Please call [number] or email [address] so we can find your records and make this right." Patient responds privately; issue resolved (wrong record system was searched); patient updates post with positive follow-up
2. **Edge case:** The post contains HIPAA-covered patient information (even if the patient posted it themselves) → do not confirm, deny, or engage with any PHI in a public response; respond with general acknowledgment only: "We take patient care and privacy seriously. Please contact us directly at [contact]."; route to HIPAA counsel before any further engagement; do not confirm whether the person is or was a patient in public
3. **Adversarial:** A competitor's employee is posting fake negative reviews using multiple anonymous accounts → document the pattern (timing, account creation dates, similar language); do not respond to each one individually (it amplifies them); flag to the platform's content moderation team with evidence of coordinated fake reviews; consult legal on potential tortious interference; brief Matt Mathison; avoid public accusation unless you have definitive proof

## Audit Log
All social media crisis responses logged with original post, response text, timestamp, approvals, and outcome. Escalation log maintained. Platform deletion decisions documented.

## Deprecation
Retire when portfolio companies hire social media managers or digital marketing teams with defined crisis response protocols.
