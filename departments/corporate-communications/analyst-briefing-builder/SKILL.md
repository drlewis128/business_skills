---
name: analyst-briefing-builder
description: "Build an analyst or investor briefing package. Use when the user says 'analyst briefing', 'investor briefing', 'build a briefing package', 'prepare for an analyst meeting', 'investor day prep', 'briefing materials', 'prepare a briefing for investors', 'analyst day', 'build investor materials', or 'LP briefing materials'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--audience <LPs|analysts|strategic partners>] [--occasion <annual|quarterly|one-time>]"
---

# Analyst Briefing Builder

Build briefing packages for LP meetings, investor analysts, or strategic partner briefings — providing decision-makers with the structured information they need to understand the company's performance, strategy, and opportunity. At MBL's scale, "analyst briefings" most often apply to LP meetings and strategic partner engagements. The output must be compelling enough to earn confidence and credible enough to withstand scrutiny.

## When to Use
- Preparing Matt Mathison for an LP meeting or annual LP day
- A prospective LP is conducting due diligence on MBL
- A portfolio company is meeting with a major prospective partner or acquirer
- A strategic investor or family office is evaluating a portfolio company
- Dr. Lewis is preparing a briefing for a prospective enterprise customer

## Briefing Package Structure

```
A strong briefing package:
  1. Earns the first 30 seconds (cover or executive summary that compels the read)
  2. Tells a coherent story (not a series of unrelated slides)
  3. Separates what is known from what is projected (no conflating actuals with forecasts)
  4. Anticipates the skeptic (includes the hard questions and honest answers)
  5. Ends with a clear ask or next step

What briefing packages are NOT:
  - All-caps bullets with no narrative
  - 50-slide deck with 10-point font
  - A rehash of the website
  - A collection of good news with no challenges
```

## Output Format

```markdown
# Briefing Package — <Entity Name>
**Audience:** <LPs / Analysts / Strategic Partners>
**Occasion:** <Annual LP Day / Quarterly Update / Prospective LP Meeting / Partnership Meeting>
**Date:** <date> | **Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison

---

## Section 1: Executive Summary (1 page)

**[Entity] at a Glance**

| Item | Detail |
|------|--------|
| Company / Fund | [Name] |
| Founded | [Year] |
| Headquarters | [City, State] |
| Fund size / AUM (if applicable) | $X |
| Portfolio companies | [N — with names] |
| Stage / Strategy | [Lower middle market PE / MSO / CTV media] |

**The one-paragraph brief:**
> "[What this entity is, what it has accomplished, and what the opportunity is. This is the paragraph a busy LP reads when they have 60 seconds. It must be complete and compelling in 60 seconds.]"

---

## Section 2: Strategy and Differentiation

**Our thesis:**
> "[Investment thesis or company strategy — specific, falsifiable, distinctive. Not 'we buy good businesses and make them better.' What specifically do we buy, why, and how do we create value?]"

**Why we win:**
| Differentiator | Evidence |
|---------------|---------|
| [Specific advantage] | [Proof — outcome, statistic, case study] |
| [Specific advantage] | [Proof] |
| [Specific advantage] | [Proof] |

---

## Section 3: Performance Summary

*All figures are actual unless noted as projected. No conflation of actuals and forecasts.*

### Fund Performance (if applicable)
| Metric | Value | Benchmark | Commentary |
|--------|-------|-----------|-----------|
| Net IRR | X.X% | [Benchmark if applicable] | [Brief context] |
| Net MOIC | X.×× | — | [Context] |
| DPI | X.×× | — | [Context] |

### Portfolio Company Performance
| Company | Revenue (LTM) | EBITDA (LTM) | vs. Entry | vs. Plan |
|---------|-------------|------------|---------|---------|
| [Company] | $X | $X (X%) | +X% | [+/-X%] |

---

## Section 4: Portfolio / Company Deep Dive

*[1-2 pages per major portfolio company or business unit — adapt for the audience]*

### [Company Name]

**Business description:** [2-3 sentences — what they do, for whom, and how]
**Entry thesis:** [What we believed when we invested / founded]
**Thesis validation:** [What has proven true]
**Current status:** [Key metrics, milestones reached]
**Value creation underway:** [Specific initiatives and their status]
**Risks / Challenges:** [Honest — 1-2 current challenges and plans]
**Outlook:** [Next 12-18 months — what should happen if the plan executes]

---

## Section 5: Risks and Mitigations

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| [Risk 1] | Medium | High | [Specific mitigation action] |
| [Risk 2] | Low | Medium | [Specific mitigation action] |

*Presenting risks proactively builds credibility. LPs who find risks themselves that weren't disclosed become suspicious of everything else.*

---

## Section 6: Team

| Name | Role | Background |
|------|------|-----------|
| Matt Mathison | Managing Partner | [Background relevant to this audience] |
| Dr. John Lewis | Director of AI Strategy | [Background relevant to this audience] |
| [Portfolio company CEO] | [Title], [Company] | [Background] |

---

## Section 7: Next Steps / The Ask

**For LP meetings:** "We are [raising / deploying capital / making distributions] — specifically: [clear ask or information being provided]"
**For strategic partner meetings:** "[The specific next step we are proposing: pilot, partnership, introductory call with the CEO]"
**For prospective LP:** "[Investment opportunity: minimum, target close date, terms overview]"

---

## Q&A Preparation

| Hard question | Prepared answer | Who answers |
|-------------|----------------|------------|
| [Performance question] | [Honest, specific answer] | Matt Mathison |
| [Risk question] | [Honest, mitigation-focused answer] | Dr. Lewis |
| [Thesis question] | [Specific and confident] | Matt Mathison |
```

## Output Contract
- Actuals and projections are never conflated — every number in the briefing must be labeled as actual, estimated, or projected; conflating these is a credibility violation; sophisticated LPs will catch it immediately
- Risks section is always included — briefings that present only strengths are not believed by experienced investors; the risks section is what makes the rest of the briefing credible; every risk must have a specific mitigation, not a general statement
- Executive summary is self-contained — a recipient who reads only the executive summary and nothing else must come away with a complete picture; it is not a table of contents; it is a standalone document
- Hard questions prepared in advance — no LP meeting should catch the team off guard; the Q&A prep section must include the 5 questions the team is most hoping no one asks
- HITL required: Dr. Lewis builds the briefing; Matt Mathison reviews and approves all content (mandatory for LP-facing materials); all financial figures verified by fund accountant; legal reviews for any securities-related statements; no briefing distributed without Matt Mathison's explicit approval

## System Dependencies
- **Reads from:** Fund performance calculator, portfolio value creation tracker, financial statements, company strategy documents
- **Writes to:** Briefing package (SharePoint/Fund/LP Relations/Briefings); LP meeting tracker
- **HITL Required:** Matt Mathison approves all LP briefings (mandatory); fund accountant verifies financials; legal reviews securities-related content; no distribution without Matt Mathison sign-off

## Test Cases
1. **Golden path:** Annual LP briefing day for 6 MBL LPs → Executive summary: 1 page; Fund performance: Net IRR 18.2%, MOIC 1.47×, DPI 0.2×; Portfolio: Allevio (on plan), HIVE (slight miss on WTI sensitivity — disclosed), Column6 (below plan — explained with corrective action); Risks: WTI volatility (HIVE), CFO search delay (Allevio), CTV market competition (Column6); Q&A prep: 8 questions prepared; Matt Mathison delivers; 2 LPs ask about Column6 underperformance (anticipated, answered well); no surprises; 1 LP expresses interest in participating in next fund
2. **Edge case:** A portfolio company has a significant pending legal matter that will affect the briefing → consult legal counsel on what must be disclosed and how; most LP agreements have a notification obligation for material events; if the matter is material, disclosure is required; draft the disclosure language with counsel; do not omit material legal matters from LP briefings
3. **Adversarial:** An LP pushes back hard on projections, calling them unrealistic → do not defend projections defensively; acknowledge the skepticism: "That's a fair challenge — let me walk you through the assumptions"; walk through each assumption specifically; where assumptions may be aggressive, say so; an LP who pushes back on projections and receives a substantive, honest response becomes a more confident LP than one who receives a defensive sales pitch

## Audit Log
All briefing materials retained by date and audience. Distribution list documented. LP meeting notes retained. Follow-up commitments tracked.

## Deprecation
Retire when MBL Partners hires a dedicated investor relations professional who manages LP communications and briefing materials as a standard function.
