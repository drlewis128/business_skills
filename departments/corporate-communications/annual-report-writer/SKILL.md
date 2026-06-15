---
name: annual-report-writer
description: "Write narrative sections of an annual report or annual letter. Use when the user says 'annual report', 'write an annual report', 'annual letter to stakeholders', 'year in review', 'annual report narrative', 'CEO letter for annual report', 'shareholder letter', 'annual company report', 'LP annual update', or 'year-end report'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--year <year>] [--audience <LPs|employees|customers|public>]"
---

# Annual Report Writer

Write the narrative sections of an annual report or year-end stakeholder letter — the CEO letter, the year in review, and the forward-looking statement. At MBL's portfolio company scale, a "formal" annual report is not required, but a structured annual communication to key stakeholders (LPs, key customers, employees, or board) produces the same benefits: trust building, narrative control, and relationship maintenance. This skill adapts to the level of formality required.

## When to Use
- Year-end LP annual update (for fund-level stakeholders)
- Annual portfolio company communication to employees or customers
- Board annual review narrative
- A portfolio company is transitioning to a more formal governance structure and needs an annual letter
- Matt Mathison asks "what should we send LPs at year-end?"

## Annual Report Formats for MBL Context

```
Format A — LP Annual Letter (most common at MBL scale):
  Audience: LPs / fund investors
  Content: Fund performance, portfolio company progress, notable events, outlook
  Length: 2-4 pages
  Tone: Professional, transparent, forward-looking
  Timing: 60-90 days after fiscal year end
  
Format B — Portfolio Company Annual Review:
  Audience: Employees + board
  Content: Year highlights, financial results, team accomplishments, next year priorities
  Length: 1-2 pages or presentation slides
  Tone: Celebratory but honest; mission-connected
  Timing: December or January
  
Format C — Customer Annual Letter:
  Audience: Key customers / partners
  Content: Year highlights, new developments, appreciation, future commitments
  Length: 1 page
  Tone: Warm, relationship-maintaining, forward-looking
  Timing: December/January
```

## Output Format

```markdown
# Annual Report / Letter — <Entity Name>
**Entity:** <Company> | **Year:** <Year>
**Format:** LP Letter / Company Review / Customer Letter
**Audience:** <LPs / Employees / Customers / Board>
**Date:** <date> | **Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison / CEO

---

## FORMAT A: LP Annual Letter

**[Fund Name] | Annual LP Letter | [Year]**

---

Dear [LP names or "Fellow Investors"],

**The year in summary:**

[2-3 sentence paragraph — the most important thing about this year. Not a list — a narrative. What was the year's defining theme: "2025 was the year we proved the thesis."]

---

**Fund Performance**

[Reference fund-performance-calculator output — summarized here]

| Metric | [Year] | Entry | Notes |
|--------|--------|-------|-------|
| Net IRR | X.X% | — | [Context] |
| Net MOIC | X.×× | 1.00× | [Progress] |
| DPI | X.×× | 0 | [Distributions to date] |

[2-3 sentence performance narrative — honest, with context. Do not spin poor performance; LPs see through it and trust collapses.]

---

**Portfolio Company Progress**

*[2-3 paragraphs, one per portfolio company]*

**Allevio:** [2-3 sentences — key progress, financial summary (revenue range or growth %, EBITDA trend), most important milestone of the year, and outlook for next year. Honest about challenges.]

**HIVE Partners:** [Same structure]

**Column6:** [Same structure]

---

**Notable Events**

- [Key event 1 — e.g., "We closed an add-on acquisition for Allevio in Q3, adding 3 practices in southern Arizona"]
- [Key event 2]
- [Key event 3]

---

**Looking Ahead**

[1-2 paragraphs — what to expect next year. Honest about what's uncertain, specific about what's planned. LPs don't need false optimism; they need accurate forecasts with clear reasoning.]

---

**A note of thanks**

[Personal paragraph from Matt Mathison — genuine appreciation for LP partnership; connection to the fund's mission; specific note about what the relationship means.]

[Matt Mathison name + signature block]
Dr. John Lewis, Director of AI Strategy
MBL Partners

---

## FORMAT B: Portfolio Company Annual Review

**[Company] | [Year] Year in Review**

---

**The year that was:**

[Opening paragraph — the CEO's honest characterization of the year. Not spin. What did we set out to do? What did we accomplish? What surprised us?]

---

**By the numbers:**

| Metric | [Year] | [Prior year] | vs. goal |
|--------|--------|-------------|---------|
| Revenue | $X | $X | [+X% / -X%] |
| [Key operational metric] | [Value] | [Value] | [Delta] |
| Headcount | [N] | [N] | [+/-N] |
| [Customer metric] | [Value] | [Value] | [Delta] |

---

**What we're proud of:**

[2-3 specific team accomplishments — name the people or teams, describe the outcome, explain why it mattered]

---

**What we're still working on:**

[1-2 honest challenges that persist or will carry into the next year — with the plan to address them]

---

**What [Year+1] looks like:**

[2-3 priorities for the coming year — specific, owned, with a sense of why they matter]

---

**Thank you:**

[CEO personal note — what they're grateful for from the team; what they believe about the company's future; why they're excited about the next year. Should sound like them, not a template.]

[CEO name]
```

## Output Contract
- LP annual letter requires full performance disclosure — the LP letter must include fund performance metrics (IRR, MOIC, DPI); LPs who receive a year-end letter that omits performance metrics will assume the metrics are bad; transparent reporting builds LP trust even when numbers are below expectations
- Challenges acknowledged in every format — an annual report that reads like a highlight reel is not believed; every format must include honest acknowledgment of what didn't go as planned and what is being done about it
- CEO voice is personal and specific — the sign-off note from the CEO or Matt Mathison must not be formulaic; it should be the most personal section; generic "we appreciate your continued support" closing is deleted and replaced with a genuine human note
- All financial data verified before distribution — annual reports with inaccurate financial figures are a legal and reputational liability; every number is verified against source data before distribution
- HITL required: Dr. Lewis drafts; Matt Mathison reviews and approves LP letter (required — this is a fiduciary communication); CEO reviews and approves portfolio company letters; all financial data verified by fund accountant or CFO before distribution; legal reviews LP letter; no distribution without all required approvals

## System Dependencies
- **Reads from:** Fund performance calculator output, portfolio value creation tracker, PE KPI dashboard, company financial data
- **Writes to:** Annual letter (SharePoint/Fund/LP Relations/Annual Updates); LP communication log
- **HITL Required:** Matt Mathison approves LP letters (mandatory); CEO approves portfolio company letters; fund accountant/CFO verifies all financial figures; legal reviews LP letter

## Test Cases
1. **Golden path:** MBL Partners LP annual letter for [Year] → Fund performance: Net IRR 18.2%, MOIC 1.47×, DPI 0.2×; Allevio: revenue $X (up 24%), key milestone (new clinic open); HIVE: on plan despite WTI volatility (EBITDA -5% vs. plan — honest disclosure); Column6: below plan (honest: revenue target missed by $X — specific explanation); outlook: concrete plans for each company; Matt Mathison personal note (genuine, specific to the relationship); legal reviewed; fund accountant verified; distributed to LPs via email; 2 LP follow-up calls within 48 hours — both positive
2. **Edge case:** A portfolio company had a very difficult year and the annual report must address significant underperformance → do not bury the bad news; lead with an honest summary; explain the specific causes (market, operational, management); describe the concrete corrective actions taken or planned; LPs who feel misled about performance become hostile LPs; LPs who receive honest, specific explanations with credible plans become patient LPs
3. **Adversarial:** A LP calls after receiving the annual letter and is upset about performance, questions whether MBL is managing the portfolio effectively → route to Matt Mathison immediately; document the call; do not make commitments about performance in response to investor pressure; provide factual information about the corrective actions underway; schedule a formal follow-up with Matt Mathison leading

## Audit Log
All annual letters retained by year. Distribution dates and recipient lists documented. LP follow-up calls logged. Financial verification sign-off retained.

## Deprecation
Retire when MBL Partners hires investor relations staff or engages an IR firm to manage formal LP reporting communications.
