---
name: shareholder-letter-drafter
description: "Draft a shareholder or key stakeholder letter. Use when the user says 'shareholder letter', 'write a letter to stakeholders', 'key stakeholder letter', 'board letter', 'write a letter to investors', 'annual shareholder letter', 'LP letter', 'stakeholder update letter', 'letter to the board', or 'formal stakeholder communication'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--from <exec name>] [--audience <shareholders|LPs|board|key stakeholders>] [--occasion <annual|quarterly|event-driven>]"
---

# Shareholder Letter Drafter

Draft formal letters to shareholders, LPs, board members, or other key stakeholders — the kind of high-stakes written communication where every word is deliberate and every claim must be defensible. Shareholder and LP letters are the most scrutinized written communications a company produces; they are read by sophisticated readers who will notice inconsistencies, hedge language, and omissions.

## When to Use
- Annual LP letter (fund level) for MBL Partners
- Board letter prior to or following a board meeting
- Event-driven stakeholder letter (responding to a significant development)
- Formal notification to investors about a material event
- Letter from Matt Mathison to LPs or portfolio company boards

## Shareholder Letter Standards

```
What distinguishes a great stakeholder letter:

1. Honest about performance — including what didn't go as planned
   The Buffett standard: "Tell shareholders what you would want to know 
   if the roles were reversed." A letter that reads like investor relations 
   spin is immediately discounted.

2. Specific and concrete — no vague corporate language
   "Revenue grew 24% driven by increased patient volume at Allevio's new 
   Tucson clinic" is better than "the portfolio performed well."

3. Forward-looking with clear reasoning
   Commitments about the future must be specific enough to be evaluated 
   later. "We expect Allevio to reach $X EBITDA by Q4" is a commitment. 
   "We are optimistic about Allevio's growth" is not.

4. Acknowledged uncertainty honestly
   What do you not know yet? What external factors could change the outlook? 
   Pretending certainty when there is none destroys credibility on the day 
   the uncertainty resolves unfavorably.

5. Signed from a person, not a company
   "Matt Mathison" is the signatory. Not "MBL Partners Management." 
   The personal signature signals personal accountability.
```

## Output Format

```markdown
# Shareholder / Stakeholder Letter Draft
**From:** <Name, Title>
**To:** <LPs / Board / Shareholders / Key Stakeholders>
**Date:** <date>
**Occasion:** Annual / Quarterly / Event-driven
**Approved by:** Matt Mathison (required before send)

---

[Date]

Dear [LP names / "Fellow Investors" / "Board Members" / "Valued Stakeholders"],

**Opening paragraph — the most important thing:**
> "[Start with the most significant thing. Not a pleasantry, not a disclaimer. The thing the reader most needs to know. If it's a good result: lead with it specifically. If it's a difficult result: lead with honest acknowledgment, not a preamble.]"

**Performance / Status (the substance):**
> "[Specific and factual. Performance data — actual numbers, time periods. Milestones achieved. Initiatives underway. Honest acknowledgment of shortfalls. Structure: what happened → why → what it means going forward.]"

**Looking ahead:**
> "[Specific outlook — what specific outcomes you expect and why. Risk factors that could affect the outlook. Not vague optimism — specific commitments with reasoning. 'We expect X because Y' format. If uncertain, say so: 'We expect X if Y holds; if Y deteriorates, the outcome would be Z.']"

**Closing — personal and accountable:**
> "[Return to the relationship. What the writer values about this partnership. A specific note about what they're committed to. Sign in first name — warmth without informality.]"

Sincerely,

[Full name]
[Title]
[Company]
[Contact information]

---

## Quality Checklist (before sending)

- [ ] Every financial figure is verified against source data
- [ ] Every forward-looking statement is specific and has reasoning behind it
- [ ] Shortfalls or challenges are acknowledged honestly (not buried or spun)
- [ ] Matt Mathison has reviewed and approved (mandatory)
- [ ] Legal has reviewed (for any securities-related content)
- [ ] Tone is personal, not corporate — reads like a letter from a person
- [ ] Reading time: 3-5 minutes (appropriate for the occasion)
- [ ] Signatory has reviewed and is comfortable with every claim attributed to them
```

## Output Contract
- Honest acknowledgment of shortfalls is mandatory — a letter that reads as all-positive will lose credibility with sophisticated stakeholders; every letter must address what didn't go as planned and what is being done
- Every number is sourced and verified — no estimated or unverified figures in a formal stakeholder letter; the fund accountant or CFO must sign off on all financial data before distribution
- Matt Mathison approval is non-negotiable — this is a formal fiduciary or governance communication; it cannot go out without Matt Mathison's explicit approval
- Forward-looking statements must be specific — "we are optimistic" is not a forward-looking statement; "we expect revenue of $X-$X in [Year]" is; vague optimism is not more cautious than specific forecasts — it's less credible
- HITL required: Dr. Lewis drafts; Matt Mathison reviews and approves (mandatory); legal reviews for securities, LP agreement, or regulatory implications; signatory personally reviews every word before signing; no distribution without all approvals

## System Dependencies
- **Reads from:** Fund performance data, portfolio company performance, LP agreements, legal guidance
- **Writes to:** Letter draft (SharePoint/Fund/LP Relations/Letters); distribution log
- **HITL Required:** Matt Mathison approves (mandatory); legal reviews; fund accountant verifies financial figures; signatory personally reviews

## Test Cases
1. **Golden path:** Annual LP letter, [Year] → Leads with honest performance summary: net IRR 18.2%, MOIC 1.47×; acknowledges Column6 below plan with specific reason and corrective action; forward-looking: Allevio's Q1 expansion adds $X estimated annual revenue; HIVE: WTI price risk acknowledged with sensitivity ($X EBITDA per $1/bbl move); closes with Matt Mathison personal note; verified by fund accountant; legal reviewed; Matt Mathison edits and signs; distributed to 6 LPs; 2 LPs respond positively, 1 LP requests call about Column6 (expected and prepared for)
2. **Edge case:** A major event occurs between the draft date and the distribution date that changes the narrative → update the letter before distribution; never send a letter that is already factually outdated; if the event is material (portfolio company crisis, significant financial development), reassess the appropriate communication — an event-driven letter may be warranted before the scheduled periodic communication
3. **Adversarial:** An LP calls after receiving the letter and challenges a forward-looking statement that didn't materialize → the forward-looking statement should have included the reasoning and risk factors that could prevent it from materializing; if it did, point the LP to the risk disclosure; if it didn't, acknowledge the omission honestly; going forward, ensure all forward-looking statements include the conditions under which they hold

## Audit Log
All letters retained with version history and approval records. Distribution dates and recipient lists documented. LP/board responses logged.

## Deprecation
Retire when MBL Partners hires investor relations staff who manage formal LP and board communications as a standard function.
