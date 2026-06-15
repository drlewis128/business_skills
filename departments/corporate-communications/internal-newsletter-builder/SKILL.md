---
name: internal-newsletter-builder
description: "Build an employee internal newsletter. Use when the user says 'employee newsletter', 'internal newsletter', 'company newsletter', 'team update email', 'weekly team update', 'monthly company email', 'internal comms newsletter', 'what happened this month', 'staff newsletter', or 'team newsletter'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--frequency <weekly|biweekly|monthly>] [--period <date range>]"
---

# Internal Newsletter Builder

Build a concise, engaging employee newsletter for a portfolio company — keeping the team informed, connected, and aligned without overwhelming them. Employee newsletters that are too long aren't read. Newsletters that are too corporate feel disconnected. The goal is a 3-minute read that makes every employee feel informed and valued.

## When to Use
- Portfolio company wants to launch an internal newsletter
- Monthly or quarterly team communications need structure
- A portfolio company has grown to a size where informal communication no longer reaches everyone
- CEO asks "can we do a better job keeping the team in the loop?"
- After a company event or milestone that deserves recognition

## Newsletter Design Principles

```
1. 3-minute read maximum — if it takes longer, it won't be read
2. Conversational, not corporate — written as from a person, not an institution
3. Specific over vague — "revenue grew 12% in Q2" not "we had a good quarter"
4. Name names — recognize specific people; general praise disappears
5. One visual or photo if possible — makes it feel real, not like a memo
6. Consistent format — same structure every issue reduces friction
```

## Output Format

```markdown
# [Company] Team Update — [Month/Quarter] [Year]

**From:** [CEO name] | **To:** All team
**Date:** <date>
**Reading time:** ~3 minutes

---

## The Headline

*[1-2 sentences — the most important thing that happened or is happening. Write this like a news editor would — lead with the news.]*

---

## By the Numbers

| Metric | This period | Last period | vs. Goal |
|--------|------------|------------|---------|
| [Key metric 1] | [Value] | [Value] | ✅ / ⚠️ / ❌ |
| [Key metric 2] | [Value] | [Value] | ✅ / ⚠️ / ❌ |
| [Key metric 3] | [Value] | [Value] | ✅ / ⚠️ / ❌ |

[1-2 sentence context — what drove the numbers. If a metric is red, say why and what we're doing.]

---

## Team Wins

🏆 **[Specific win — name the people involved]**
*[2-3 sentences — what they did, why it mattered, outcome. Specific and personal.]*

🏆 **[Second win]**
*[2-3 sentences]*

*(Max 3 wins per issue — quality over quantity)*

---

## What's Coming

| Initiative | What it is | Timeline | Who's leading |
|-----------|-----------|---------|--------------|
| [Project/initiative] | [1-sentence description] | [When] | [Name or team] |
| [Project/initiative] | [1-sentence description] | [When] | [Name or team] |

---

## Welcome / Farewell

**New to the team:** [Name] joins as [Title] — [1-sentence introduction, role they're playing]
**Farewell:** [Name] leaves [Company] after [N] years — [1-sentence appreciation] / *[None this period]*

---

## Word from [CEO First Name]

*[3-5 sentences in the CEO's voice — personal, direct, specific. What's on their mind. What they're proud of. What they're worried about and working on. Not a corporate message — something the team actually wants to read.]*

> *"[CEO direct quote or first-person message]"*

---

## Quick Links / Resources

- [Relevant internal link 1: e.g., updated PTO policy, benefits enrollment]
- [Relevant link 2]
- [Upcoming event or deadline]

---

*Questions? Reply to this email or reach out to [CEO / HR contact / Dr. Lewis] directly.*
*[Unsubscribe language if using email platform]*
```

## Output Contract
- 3-minute read maximum — enforced by keeping each section to its specified length; if the newsletter is growing, cut sections, not quality
- Specific names in Team Wins — every issue must recognize specific people by name; a "great quarter for the team" with no names is not recognition; if there are no wins this period, find one (there always is one)
- Numbers section is always honest — if a metric is red, report it with context; newsletters that only share good numbers become propaganda that nobody trusts
- CEO voice section is personal — if it sounds like a corporate press release, rewrite it; the CEO's section must have some of their actual personality; this is the section that determines whether the newsletter gets read or deleted
- HITL required: Dr. Lewis drafts; CEO reviews and personalizes their voice section; any financial metrics must be approved by the CFO or finance lead before inclusion; new hire announcements require HR confirmation; no distribution without CEO approval

## System Dependencies
- **Reads from:** Company performance data, HR updates, CEO input, team announcements
- **Writes to:** Newsletter draft (SharePoint/Comms/Newsletter); distribution via company email
- **HITL Required:** CEO approves all content; CFO approves financial metrics; HR confirms personnel announcements; Dr. Lewis sends after CEO sign-off

## Test Cases
1. **Golden path:** Allevio monthly newsletter, June → Headline: "June was our best revenue month in two years"; Numbers: revenue +8% MoM, denials rate 12.4% (down from 14.1%), patient NPS 74 (up 6 points); Wins: Dr. Garcia and the Tucson billing team for the denials improvement; New hire: Sarah Kim as Practice Manager; CEO section: 4 sentences from the CEO about what the Tucson team's work means for the company's mission; sent 10am Monday after CEO approval; 78% open rate
2. **Edge case:** Nothing particularly good happened this period and the CEO doesn't want to send a "bad news" newsletter → there is always something to report honestly and something to recognize; find the honest headline (even if the number is flat, say "we held steady in a challenging month — here's what that took"); find the team win (even if it's process improvement, not revenue); the newsletter still goes out; dark periods are exactly when communication matters most
3. **Adversarial:** A department head wants to include a self-promotional piece about their own team that doesn't pass the THRIVE "Truth" standard (claims credit for results that came from a different team) → cut or rewrite; the newsletter's credibility depends on accuracy; every win must be attributed to the people who actually drove it; if the credit is genuinely split, say so

## Audit Log
All newsletter issues retained by date. Distribution lists maintained. Open rate / engagement data retained if email platform provides it.

## Deprecation
Retire when portfolio companies hire internal communications managers who own the employee newsletter function with dedicated email marketing tools.
