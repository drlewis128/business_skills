---
name: announcement-strategist
description: "Plan and execute a major company announcement. Use when the user says 'announce an acquisition', 'plan an announcement', 'how do we announce this', 'announcement strategy', 'news announcement plan', 'announcement for the press', 'roll out an announcement', 'go-to-market announcement', 'launch announcement', or 'communicate major news'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--announcement <type: acquisition|launch|leadership|expansion>] [--entity <company>] [--date <target date>]"
---

# Announcement Strategist

Plan and execute a major company announcement — an acquisition, leadership change, product launch, market expansion, or fund milestone. A great announcement doesn't just inform — it generates momentum, reinforces the brand narrative, and creates the news cycle that serves the company's goals. A poorly planned announcement leaks early, lands flat, and creates more confusion than clarity.

## When to Use
- MBL Partners or a portfolio company is closing an acquisition
- Announcing a new product, service, or market entry
- Executive leadership change (CEO hire, departure, or promotion)
- Company milestone (funding, significant growth, major partnership)
- Matt Mathison asks "how should we announce this?"

## Announcement Types and Lead Times

```
Acquisition close:
  Lead time: 4-6 weeks of prep before close date
  Key drivers: SEC/regulatory timing; NDA; LP notification requirement
  
Leadership change:
  Lead time: 2-4 weeks before effective date
  Key drivers: Successor confirmed before announcement; internal before external
  
Product/service launch:
  Lead time: 4-8 weeks before launch date
  Key drivers: Product ready; sales team briefed; customer success ready
  
Market expansion (new geography/vertical):
  Lead time: 2-4 weeks before first public-facing activity
  Key drivers: Operations ready; team hired; local customer notified
  
Fund milestone (fund close, major LP):
  Lead time: 2-4 weeks
  Key drivers: LP consent for any mention of names; legal review
```

## Output Format

```markdown
# Announcement Strategy — <Announcement Name>
**Type:** Acquisition / Leadership / Launch / Expansion / Milestone
**Entity:** <Company>
**Target announcement date:** <date>
**Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison

---

## Announcement Objective

**What we want the world to know after this announcement:**
[1-2 sentences — the message that should persist in the market after the announcement day]

**What this announcement positions us for:**
[What narrative or market position does this create or reinforce?]

**Success metrics:**
- [ ] [X] press pickups (realistic target)
- [ ] [Key audience] notified before press release
- [ ] No negative media coverage
- [ ] [Specific outcome metric, e.g., X inbound partner inquiries]

---

## Announcement Workback Schedule

| Milestone | Owner | Due date | Status |
|---------|-------|---------|--------|
| Announcement strategy approved (this document) | Matt Mathison | T-[N] weeks | Pending |
| Press release drafted + approved | Dr. Lewis | T-[N] weeks | |
| Key quotes approved (CEO + other spokespeople) | CEO / Matt Mathison | T-[N] weeks | |
| LP/board notification prepared | Matt Mathison | T-[N] days | |
| Employee communication prepared | CEO | T-[N] days | |
| Media pitches drafted | Dr. Lewis | T-[N] days | |
| Customer/partner notifications drafted | [Owner] | T-[N] days | |
| Embargoed media outreach (if applicable) | Dr. Lewis | T-[N] days | |
| LP/board notification delivered | Matt Mathison | T-2 days | |
| Employee announcement delivered | CEO | T-1 day / Day of | |
| Press release wire distribution | Dr. Lewis | T+0 (announcement time) | |
| Social media posts live | [Owner] | T+0 | |
| Customer/partner notifications sent | [Owner] | T+0 | |
| Media follow-up (answer questions) | Dr. Lewis | T+1 day | |
| Coverage monitoring | Dr. Lewis | T+1 to T+5 | |

---

## Core Messages (from Messaging Matrix)

**Headline message:** [The 1-sentence version of the news]

**Why this matters:**
1. [For our market / customers]
2. [For our company / growth]
3. [For our mission / values]

**CEO quote (approved for use in release):**
> "[Quote — sounds like the CEO, not a press release. Includes something specific and forward-looking.]"

---

## Announcement Assets Required

| Asset | Responsible | Due | Status |
|-------|------------|-----|--------|
| Press release (final) | Dr. Lewis | T-[N] days | |
| CEO quote approved | CEO | T-[N] days | |
| Executive headshots (updated) | CEO admin | T-[N] days | |
| Company logo (correct version) | Brand | T-[N] days | |
| Media kit (updated with announcement info) | Dr. Lewis | T-[N] days | |
| LinkedIn company page update | [Owner] | T+0 | |
| Website announcement (if applicable) | [Web owner] | T+0 | |
| Internal announcement email | CEO | T-1 day | |
| Employee FAQ (Q&A for managers) | Dr. Lewis | T-1 day | |

---

## Contingency Plan

**What if the announcement leaks early?**
> Accelerate: move press release and notification sequence up immediately; do not wait for the planned date; announce before the story runs without your participation

**What if the close date slips?**
> Notify all pre-briefed parties of the delay immediately; ensure embargoed media contacts are contacted before their deadline

**What if we get a negative press response?**
> Route to crisis-response-playbook; prepare a factual corrections document; Dr. Lewis manages media response with Matt Mathison approval

---

## Post-Announcement Recap (T+7 days)

- Press placements: [List]
- Social media performance: [Reach, engagement]
- Inbound inquiries: [N leads / partner inquiries / employee applications]
- Coverage tone: [Positive / Neutral / Negative] — [summary]
- What to do differently next time: [Notes]
- Matt Mathison summary: [3-bullet summary]
```

## Output Contract
- Workback schedule is always built first — announcements fail because the schedule slips and corners get cut (legal review rushed, LP notification skipped); the workback schedule makes the plan real
- Contingency plan always included — "what if it leaks" is not a hypothetical; it is a planning requirement; the contingency plan must exist before announcement day
- CEO quote approved before press release distribution — a press release with a placeholder quote that hasn't been reviewed by the executive is a liability; the quote must be approved verbatim before the release goes out
- Post-announcement recap always scheduled — announcements without a recap don't improve; the recap drives the next announcement's quality
- HITL required: Dr. Lewis builds the strategy and assets; Matt Mathison approves the strategy; CEO approves all quotes attributed to them; LP notification requires Matt Mathison delivery; legal reviews for M&A, regulatory, or securities-related announcements; nothing goes out until all required approvals are in

## System Dependencies
- **Reads from:** Messaging matrix, press release, company news, legal clearance
- **Writes to:** Announcement strategy (SharePoint/Comms/Announcements); press release; internal announcement; coverage tracker
- **HITL Required:** Matt Mathison approves strategy; CEO approves quotes; legal reviews; LP notification delivered by Matt Mathison

## Test Cases
1. **Golden path:** Allevio acquisition close announcement → T-4 weeks: strategy approved; T-3 weeks: press release drafted, CEO quote approved; T-2 weeks: LP notification prepared; T-2 days: LPs notified by Matt Mathison phone; T-1 day: employee all-hands at 4pm; T+0 9am: press release distributed via PR Newswire; LinkedIn post; customer notifications sent; media pitches sent to Becker's and Modern Healthcare; T+1: Becker's responds — wants interview; T+3: 2 press placements; T+7: recap complete — exceeds target
2. **Edge case:** The acquisition falls through after LP notification is already delivered → notify LPs immediately by phone (Matt Mathison); do not let them learn it from the absence of a press release; prepare a brief private communication explaining the situation without revealing deal terms; update the contingency plan to require deal close confirmation before LP notification in the future
3. **Adversarial:** Acquiree's PR team wants to control the announcement messaging in a way that conflicts with MBL's brand messaging → negotiate the announcement approach in the deal term sheet if possible; if post-close, establish a clear lead (MBL or the portfolio company) for the press release authorship; a dual announcement with contradictory messages is worse than either party's preferred announcement; agree on one release

## Audit Log
Announcement strategy documents retained by event. Workback schedule completion tracked. Coverage results documented. Post-announcement recaps retained.

## Deprecation
Retire when MBL or portfolio companies have in-house communications teams managing announcement planning as a standard function.
