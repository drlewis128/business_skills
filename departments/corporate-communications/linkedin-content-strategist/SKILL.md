---
name: linkedin-content-strategist
description: "Build an executive LinkedIn content strategy and write posts. Use when the user says 'LinkedIn content', 'LinkedIn strategy', 'write a LinkedIn post', 'executive LinkedIn', 'build LinkedIn presence', 'LinkedIn posts for Matt', 'LinkedIn thought leadership', 'what to post on LinkedIn', 'LinkedIn content calendar', or 'LinkedIn writing'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--exec <name>] [--topic <subject or news hook>] [--format <short|long|article>]"
---

# LinkedIn Content Strategist

Build an executive LinkedIn content strategy and write individual posts that build the executive's professional profile, reinforce their thought leadership positioning, and generate the kinds of business conversations that matter. LinkedIn is the most valuable earned media channel for a PE investor or business leader — the ROI per post, measured in relevant conversations generated, exceeds most other channels by a wide margin.

## When to Use
- Building Matt Mathison's LinkedIn profile and content cadence
- Writing a LinkedIn post for Dr. Lewis on AI strategy or PE/operations topics
- A portfolio company CEO needs a post to mark a company milestone
- Building a LinkedIn content calendar for an executive as part of the thought-leadership-planner
- An industry event just happened and there's a content opportunity to seize

## LinkedIn Algorithm Basics

```
What LinkedIn rewards (2025 factors):
  - Engagement in the first 60 minutes (most important)
  - Comments > Likes > Shares (algorithm weights engagement type)
  - Posts that keep users on LinkedIn (no external links in the post body)
  - Consistent posting (3+ per week builds feed presence; 1/week minimum to stay visible)
  - Personal profiles outperform company pages (10-50× by reach)
  - Long-form posts (600-1,200 words) get pushed to more feeds than short posts

What kills reach:
  - External links in the post body (put links in first comment)
  - Asking for engagement directly ("Like if you agree")
  - Reposting without added commentary
  - Inconsistency (posting 5 times in a week then going dark for 3 weeks)
```

## Post Formats

```
Format 1 — The Observation (100-200 words)
  Structure: Observation from real life → what it reveals → implication
  Best for: Quick Tier 3 content; reacting to news; 2-3x per week
  
Format 2 — The Story (400-800 words)
  Structure: Story opening → conflict → insight → implication for the reader
  Best for: Flagship Tier 2 content; monthly; company milestone moments
  
Format 3 — The List (300-600 words)
  Structure: Contrarian headline → numbered list with brief explanation each
  Best for: Tier 2 content; practical insight; "what I've learned after X years"
  
Format 4 — The Take (200-400 words)
  Structure: Clear position statement → 3 reasons → conclusion
  Best for: Tier 2 content; trending topic; "here's my view on X"
  
Format 5 — The Newsletter-style Long Post (1,000-1,500 words)
  Structure: Title + hook → sections with headers → summary
  Best for: Tier 1 content; earned distribution; quarterly
```

## Output Format

```markdown
# LinkedIn Post — <Executive Name>
**Format:** Observation / Story / List / Take / Long-form
**Topic:** <Subject>
**Target audience:** <PE peers / Healthcare operators / Business leaders / etc.>
**Thought leadership pillar:** <Pillar 1/2/3 from thought-leadership-planner>
**Estimated reach:** [Based on executive's current follower count and post history]

---

## Post Draft

*[For Algorithm: no external links in the body — put links in the first comment]*

[Opening line — this is the "above the fold" text; LinkedIn shows ~200 characters before "see more"; the opening must create a reason to click "see more"]:

> [Hook — 1-2 sentences maximum. Direct statement, surprising fact, or the beginning of a story that doesn't resolve until after the fold]

[Body — in the voice of the executive]:

> [Substantive content — the observation, story, or analysis. Use line breaks generously. LinkedIn reads better with white space. Short paragraphs. No walls of text.]

[Close — the implication or invitation]:

> [What this means / what the reader can take from it / a question that invites engagement]

---

## First Comment (for link if applicable):

> "For those who want to go deeper: [URL]"

---

## Engagement Considerations

- Post at: [Recommended time — Tuesday-Thursday, 7-9am or 12-1pm in exec's timezone performs best]
- Engage immediately: [Executive should reply to first 5-10 comments within first hour — this signals the algorithm to push the post further]
- Tag strategy: [If relevant people should be tagged — "If you mention [Name], tag them — they may share it"; do not tag people gratuitously]
- Follow-up post: [If this topic warrants a follow-up 2 weeks later]

---

## Alternate Opening Lines (test 2-3):
1. [Option 1 — direct]
2. [Option 2 — story-based]
3. [Option 3 — contrarian]
```

## Output Contract
- No external links in the post body — this is an algorithm fact, not a preference; links go in the first comment; any draft with a link in the body will underperform
- Opening line is the make-or-break — LinkedIn shows ~200 characters before truncating; the opening must be compelling enough to earn the "see more" click; the draft is not complete until the opening line passes the "would I click see more?" test
- Voice must be the executive's — read every draft aloud before submitting; if it sounds like a corporate memo, rewrite it; if it could have been written by anyone, it's too generic; the test is whether a reader who knows the executive would recognize their voice
- Posting cadence is part of the strategy — one great post per month is not a strategy; the cadence must be realistic and sustainable; better to commit to 1x/week and do it for 52 weeks than to plan 3x/week and last 2 months
- HITL required: Dr. Lewis drafts; executive must review and often edit (their voice is the product); Matt Mathison reviews posts that reference fund-level metrics, portfolio companies, or LP relationships; no post goes live without executive approval

## System Dependencies
- **Reads from:** Thought leadership plan, company news, industry news, brand messaging framework
- **Writes to:** LinkedIn content calendar (SharePoint/Comms/LinkedIn); thought leadership tracker
- **HITL Required:** Executive approves every post; Matt Mathison reviews fund-level references; posts go live from executive's personal account

## Test Cases
1. **Golden path:** Matt Mathison "Take" post on AI in PE → Hook: "Most PE firms are talking about AI. Very few are using it. Here's the difference."; Body: 3 concrete examples of how MBL uses AI in portfolio operations (without naming specific companies or metrics); Close: "The competitive advantage in PE won't be capital access — it'll be operational velocity. Which camp are you building toward?"; 487 words; link to a relevant Becker's article in first comment; Matt reviews and adds one personal story; posts Tuesday 8am; 1,200 impressions, 62 reactions, 18 comments in first 48 hours; 2 inbound connection requests from PE professionals
2. **Edge case:** Executive posts without review and mentions a portfolio company financial metric that hasn't been publicly disclosed → this is a serious risk (could constitute a selective disclosure if MBL ever raises institutional capital); immediately reach out to the executive; if the post is very recent, they can delete and repost without the metric; if it's been up for hours, consult legal on whether to leave it or delete it; establish a policy: any post mentioning portfolio company financials requires Dr. Lewis review before posting
3. **Adversarial:** A commenter leaves a negative, antagonistic response on a thought leadership post → do not engage defensively; two options: (1) respond with calm, substantive engagement if the criticism has merit ("Fair point — here's what I'd add..."); (2) if it's purely antagonistic with no substance, do not respond and do not delete (unless it's abusive); engaging with trolls gives them reach

## Audit Log
All approved posts retained with date and platform performance data. Thought leadership calendar maintained. Content attribution to business conversations tracked.

## Deprecation
Retire when executives hire dedicated social media managers or communications assistants who manage LinkedIn as a standard function.
