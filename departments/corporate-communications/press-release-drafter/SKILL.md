---
name: press-release-drafter
description: "Draft a press release for MBL or portfolio company news. Use when the user says 'draft press release', 'press release', 'announcement draft', 'write the announcement', 'PR draft', 'acquisition announcement', or 'news release'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<announcement-topic> [--type <acquisition|leadership|partnership|milestone>] [--entity <name>]"
---

# Press Release Drafter

Draft professional press releases for MBL Partners and portfolio companies — acquisition announcements, leadership changes, partnerships, and milestones.

## When to Use
- After an acquisition closes (deal announcement)
- Leadership appointments or departures
- Strategic partnerships or milestones
- Award recognitions or certifications
- Any news requiring formal external announcement

## Press Release Structure

### Standard Format
**FOR IMMEDIATE RELEASE** (or **EMBARGOED UNTIL: <date/time>**)

**Headline:** Summarizes the news in one line — specific, not generic
**Subheadline (optional):** One line of additional context

**Dateline:** [City, State] — [Date] —

**Lead paragraph (who, what, when, where, why):**
The most important information first. A journalist should be able to write a story from just this paragraph.

**Body (2-3 paragraphs):**
- Context and background
- Quotes from executives (standard boilerplate quotes — professional and on-message)
- Details that expand on the lead

**Boilerplate:** Standard "About [Company]" paragraph (2-3 sentences each)

**Contact Information:** PR contact name, email, phone

**### (three pound signs):** Indicates end of release

### Headline Formulas

Acquisition: "[Company A] Acquires [Company B], Expanding [Sector] Presence in [Geography]"

Leadership: "[Company] Appoints [Name] as [Title] to Lead [Area]"

Milestone: "[Company] Achieves [Milestone] — [Context]"

## Quote Standards

Executive quotes should:
- Sound like humans, not press releases
- Add context or perspective not in the body text
- Be attributed with full name and title
- Be 1-3 sentences maximum

**Bad quote:** "We are thrilled to announce this exciting partnership that will create tremendous value for all stakeholders."

**Good quote:** "The Allevio team brings exactly the operational expertise we've been looking for in the Southwest market. This acquisition accelerates our clinical footprint by two years." — Matt Mathison, Managing Partner, MBL Partners

## Boilerplate Templates

**MBL Partners:**
MBL Partners is a private equity holding company focused on operationally intensive businesses in healthcare, energy, and digital media. MBL Partners and its affiliates own and operate Allevio, HIVE Partners, Column6, and other portfolio companies. For more information, visit [website].

## Output Format

```markdown
FOR IMMEDIATE RELEASE

**[HEADLINE]**
*[Subheadline]*

[City, State] — [Date] — [Lead paragraph]

[Body paragraph 1]

[Quote — Executive 1]

[Body paragraph 2]

[Quote — Executive 2, if applicable]

### About [Company]
[Boilerplate 2-3 sentences]

### About MBL Partners (if applicable)
[MBL boilerplate]

**Media Contact:**
[Name]
[Email]
[Phone]

###
```

## Output Contract
- Headline always specific — no generic announcements
- Lead paragraph answers who/what/when/where/why in 1-2 sentences
- Quotes sound like real people, not marketing copy
- HITL required (Matt Mathison) before any press release is distributed or embargoed with media

## System Dependencies
- **Reads from:** Announcement context provided
- **Writes to:** Nothing (draft for Matt review and PR distribution)
- **HITL Required:** Matt Mathison reviews all press releases before distribution. Legal review recommended for acquisition announcements.

## Test Cases
1. **Golden path:** Acquisition announcement — clean headline, lead paragraph with key facts, two relevant executive quotes
2. **Edge case:** Leadership departure → professionally framed, does not speculate on reason, focuses on transition and successor
3. **Adversarial:** Request to make a minor development sound like major news → writes accurate release, flags if the news doesn't merit a press release (suggests LinkedIn post or announcement email instead)

## Audit Log
Press releases versioned with distribution date and media outlets contacted.

## Deprecation
Retire when PR agency or dedicated PR platform handles drafting with MBL brand guidelines.
