---
name: conference-speaking-planner
description: "Plan a conference speaking strategy and submit speaker proposals. Use when the user says 'conference speaking', 'speaking at conferences', 'submit a speaker proposal', 'CFP submission', 'conference talk proposal', 'apply to speak at a conference', 'speaking strategy', 'how do we get on stage', 'speaking opportunities', or 'submit an abstract'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--exec <name>] [--topic <subject>] [--conference <name>] [--deadline <date>]"
---

# Conference Speaking Planner

Plan an executive speaking strategy and submit conference speaker proposals that earn stage time at the right events. Speaking opportunities are among the highest-ROI thought leadership investments: a 30-minute keynote at the right conference is worth months of LinkedIn content in terms of credibility signaling and relationship building. But conference speaking is competitive — most sessions have dozens of applicants; the proposals that get selected are the ones that make the program committee's lives easier.

## When to Use
- Building a speaking track as part of the thought-leadership-planner
- A conference CFP (call for proposals) is open for a target event
- Matt Mathison or a portfolio company CEO wants to get on more stages
- An executive has been invited to speak and needs proposal or abstract preparation
- Annual planning — building a conference target list for the year

## Conference Target Strategy

```
Conference selection matrix (for each target conference):

1. Audience alignment: Is the attendee profile our target audience?
   (PE professionals, healthcare operators, CTV advertisers, etc.)

2. Credibility signal: Does speaking here build the right association?
   (Tier 1: nationally recognized; Tier 2: strong industry; Tier 3: local/emerging)

3. Access value: Does this conference provide access to deals, LPs, or partners?
   (In-person conferences with deal rooms or networking dinners > virtual-only)

4. Competitive intensity: How many speakers are competing for this slot?
   (Niche conferences with <500 attendees have fewer applicants; better shot)

5. Logistics: Is the cost/time investment proportionate to the opportunity?
   (A national conference in Chicago for a 15-minute slot vs. a keynote in Phoenix 
    — weigh ROI before submitting)
```

## Output Format

```markdown
# Conference Speaking Plan — <Executive Name>
**Executive:** <Name, Title>
**Time period:** <Year / Quarter>
**Prepared by:** Dr. John Lewis | **Approved by:** <Executive + Matt Mathison>

---

## Annual Speaking Target List

| Conference | Audience | Tier | CFP deadline | Session format | Priority | Status |
|-----------|---------|------|-------------|---------------|---------|--------|
| [Name] | [PE investors / Healthcare CEOs / etc.] | 1 / 2 / 3 | [Date] | Keynote / Panel / Breakout | High / Medium | Targeting |
| [Name] | [Audience] | [Tier] | [Date] | [Format] | [Priority] | Targeting |

**Annual target:** [N] accepted speaking slots at Tier 1-2 conferences

---

## Speaker Proposal Template

*Most CFPs ask for the following — this template covers all standard fields:*

### Talk Title (5-10 words — the thing people decide to attend based on)
> "[Active, specific, slightly contrarian title that makes someone choose this session over the one next door]"

**Title options (test 2):**
1. [Option 1]
2. [Option 2]

### Abstract / Session Description (100-250 words — the selection committee reads this)

> "[What this talk covers — written as a pitch, not a description. Why this topic matters NOW. What the audience will leave with. Who specifically should attend. The abstract that gets selected is the one that makes the program committee think: 'Our attendees need to hear this.'

> Structure: Problem → Why current approaches fail → What this session covers → What attendees take away]"

### Audience (who this session is for)
> "[Specific — not 'business professionals'; specific: 'PE investors with lower-middle-market portfolios who are evaluating AI as an operational tool']"

### Key Takeaways (3-5 bullets — the things attendees will know/do after)
- [Specific actionable takeaway 1]
- [Specific actionable takeaway 2]
- [Specific actionable takeaway 3]

### Speaker Bio (75-150 words — for program and website)
> "[Name] is [title and affiliation]. [2-3 sentences about their background and expertise specifically relevant to this talk — not a general bio]. [1 sentence about what makes their perspective unique: 'As the investor behind X, Y, and Z, [Name] has unique firsthand insight into...']. [City, state location — conferences prefer local/regional speakers for regional events]."

### Speaker's Previous Speaking Experience
> "[Relevant conferences, webinars, panels. If limited: 'This will be [Name]'s first major conference keynote on this topic — they have spoken at [smaller/internal events] and have been featured in [media mentions as a way to demonstrate credibility]']"

---

## Submission Tracker

| Conference | Submitted | Response expected | Status | Notes |
|-----------|---------|-----------------|--------|-------|
| [Conference] | [Date] | [By date] | Pending / Accepted / Declined | |

---

## Post-Acceptance Checklist

- [ ] Confirm session details (date, time, room, format, duration)
- [ ] Speaker bio and headshot submitted by deadline
- [ ] AV requirements confirmed
- [ ] Slides prepared and reviewed (Dr. Lewis + executive)
- [ ] Travel and logistics confirmed
- [ ] Interview / media opportunities at the conference identified
- [ ] Post-conference LinkedIn post planned (announce before, recap after)
```

## Output Contract
- Abstract is written as a pitch, not a description — the committee receives 50-200 submissions; the abstract must earn the selection; "This session will cover X, Y, and Z" is not a pitch; "If you think AI is for large-scale PE — this session will challenge that assumption" is a pitch
- Title options are always plural — the title determines session attendance and selection; never submit with a single title option without testing alternatives
- Specific audience always defined — the selection committee wants to put the right session in front of the right attendees; a specific audience claim helps them place the session in the right track
- Speaker bio must be relevant to this specific talk — a general bio that doesn't connect to the session topic is wasted space; every sentence of the bio should increase the committee's confidence that this speaker has something unique to say on this specific topic
- HITL required: Dr. Lewis drafts proposals; executive reviews and approves all submission content; Matt Mathison reviews for any speaking engagement where MBL's investment strategy or portfolio performance is the topic; any acceptance requires executive confirmation before committing to the date

## System Dependencies
- **Reads from:** Thought leadership plan, executive bio, brand messaging framework, company news
- **Writes to:** Speaking tracker (SharePoint/Comms/Speaking); submitted proposals archive; conference calendar
- **HITL Required:** Executive approves all submissions; Matt Mathison reviews fund-level speaking topics; acceptance requires executive confirmation

## Test Cases
1. **Golden path:** Matt Mathison submits to Arizona Business Journal Leadership Summit → CFP deadline: 8 weeks out; Dr. Lewis drafts title ("The PE investor who bet on AI before it was obvious — and what happened"), abstract (220 words, problem-solution structure), bio (125 words, specific to PE + AI expertise); executive reviews; adjusts abstract opening; submits; 3 weeks later: accepted for 20-minute keynote + panel; Dr. Lewis prepares slides and speaker prep; executive-speech-writer engaged; post-acceptance LinkedIn post from Matt ("Looking forward to..."); post-event post ("Three things I heard in the room today..."); 4 business card exchanges from attendees in the next month
2. **Edge case:** All 4 conferences targeted reject the speaker proposal → analyze why: Was the topic too niche for the audience? Was the abstract too academic? Was the speaker's profile not yet strong enough for Tier 1 events? Start with Tier 3 events to build a speaking track record; apply to podcast appearances to build credibility; resubmit to Tier 2 with an updated bio and stronger abstract; the first accepted speaking slot is the hardest — once it's on the bio, the next is easier
3. **Adversarial:** A conference accepts the submission but changes the session format from keynote to a panel with 4 other speakers → evaluate: is the panel worth the time investment? panels provide less individual exposure; does the panelist quality make it worthwhile (are the other panelists credible names in the space)? if the event is important, accept and prepare for the panel format; the spokesperson-prep-coach skill applies

## Audit Log
All submitted proposals retained. Acceptance/rejection outcomes tracked. Speaking calendar maintained. Post-conference recaps retained.

## Deprecation
Retire when executives have dedicated communications staff managing speaking programs and conference relationships.
