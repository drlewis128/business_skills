---
name: strategy-lp-reporting
description: "Prepare LP reporting — quarterly and annual limited partner updates on portfolio performance. Use when the user says 'LP report', 'LP update', 'limited partner reporting', 'LP communication', 'investor update', 'LP letter', 'quarterly LP report', 'annual LP report', 'LP performance update', 'fund update', 'investor communication', 'LP brief', 'write the LP update', 'LP quarterly', or 'report to investors'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--period <Q1|Q2|Q3|Q4|annual>] [--year <YYYY>] [--scope <full|brief|entity>]"
---

# LP Reporting

Prepare quarterly and annual LP reports for MBL Partners — communicating portfolio performance, thesis status, and capital activity to the limited partner base with the transparency and discipline that builds LP confidence and preserves the relationship for future capital raises. LP reporting is not a marketing exercise: it is a fiduciary communication. LPs have entrusted capital to Matt Mathison and MBL Partners; the LP report is MBL's accountability document that demonstrates whether that trust is warranted. At PE portfolio scale, the best LP reports are concise, honest about challenges (with recovery plans), and clear about what Matt Mathison is doing to create value and protect capital.

## When to Use
- Quarterly LP report — end of Q1/Q2/Q3/Q4
- Annual LP report — comprehensive year-end review
- A material event requires LP notification before the regular cycle
- A new LP needs an onboarding communication
- Matt Mathison asks for a draft LP report or letter

## LP Reporting Framework

```
LP report standards:

  Tone: Professional, direct, honest. No spin.
    LPs have seen spin. They know when a GP is papering over problems.
    When performance is below plan: state the facts, the root cause, and the recovery plan.
    When performance is above plan: state it clearly without false modesty, and explain sustainability.
    
  Content (quarterly standard):
    Portfolio summary: 2-3 sentences per company — performance vs. plan; thesis status
    Capital activity: Deployed, returned, pending
    Material events: Any event that materially affects an investment (regulatory, management, market)
    Valuation marks: Current fair value estimates (quarterly for material positions)
    Outlook: Next quarter priorities per entity
    
  Content (annual additions):
    Full financial statements: Audited fund-level P&L and balance sheet
    Vintage year comparison: How does this fund compare to similar vintage PE funds?
    Management letter: Matt Mathison's letter with the year's perspective
    Valuation methodology: How each position is valued
    Commitment draw and return schedule: Capital called to date; distributions paid; remaining commitment
    
  Valuation approach (PE standard):
    Non-realized positions: Fair market value based on EV/EBITDA multiple method
      Applied multiple: Based on comparable transactions (strategy-valuation-model)
      Key input: Most recent normalized EBITDA × sector multiple = EV; less net debt = equity value
    Material changes: Positions with >15% FMV change from last quarter must be footnoted
    Conservative default: If uncertain, mark down rather than up
    
  Material event notification (immediate, not quarterly):
    Triggers for immediate LP notification:
      Portfolio company bankruptcy or material impairment
      Key person departure (CEO or equivalent)
      Regulatory action that could materially affect investment value
      Acquisition of a new portfolio company (if not pre-disclosed)
      Distribution (always positive — always communicate with details)
      
  Key investor content hierarchy:
    1. What happened? (Facts, not narrative)
    2. Why? (Honest explanation — market, execution, timing)
    3. What are we doing about it? (Specific action plan)
    4. What should you expect next? (Specific — not "we are monitoring the situation")
```

## Output Format

```markdown
# MBL Partners LP Report — [Q/Annual Period] [Year]
**Distribution:** [LP names or "Limited Partners of Record"]
**Date:** [Date] | **From:** Matt Mathison, Managing Partner
**Classification:** CONFIDENTIAL — Limited Partner Distribution Only

---

## Dear Limited Partners,

[Opening paragraph: 3-4 sentences. State the period, the headline of portfolio performance (positive or mixed — be direct), and what this report covers. Do not begin with pleasantries.]

Example: "This report covers [Q] [Year] activity across the MBL Partners portfolio. Portfolio performance was [in line with plan / mixed — with Allevio below plan due to provider turnover and HIVE above plan on strong WTI pricing]. Each company's status, the actions underway, and the capital position are detailed below."

---

## Portfolio Summary

| Entity | Revenue vs. plan | EBITDA vs. plan | Thesis | Current FMV | MOIC |
|--------|----------------|----------------|--------|------------|------|
| Allevio | [+/-X%] | [+/-X%] | ✅/⚠️/❌ | $[X]M | [X]× |
| HIVE Partners | [+/-X%] | [+/-X%] | ✅/⚠️/❌ | $[X]M | [X]× |
| Column6/Siprocal | [+/-X%] | [+/-X%] | ✅/⚠️/❌ | $[X]M | [X]× |
| **Total portfolio** | | | | **$[X]M** | **[X]× blended** |

---

## Allevio — [Q/Year]

**Performance:** Revenue $[X]K ([+/-X]% vs. plan of $[X]K); EBITDA $[X]K ([X]% margin).
[If below plan:] Root cause: [Specific — provider vacancy in Q2 reduced patient volume by approximately 120 visits/month]. Recovery plan: New NP started June 15; panel expected at 60% by September 30.
**Thesis status:** [Intact. The MSO consolidation thesis is supported by continued physician interest in the Allevio model. Two new practice conversations initiated in Q2 for potential Year 3 tuck-in.] OR [Under pressure — specific].
**Current FMV:** $[X]M ([X]× trailing EBITDA) | **Invested to date:** $[X]M | **MOIC:** [X]×

---

## HIVE Partners — [Q/Year]

**Performance:** Production [N] BBL/day average (vs. plan [N]); LOE $[X]/BOE (vs. plan $[X]/BOE); EBITDA $[X]K.
**WTI context:** Q average $[X]/bbl; current $[X]/bbl.
**Thesis status:** [Intact / specific update]
**Current FMV:** $[X]M | **Invested to date:** $[X]M | **MOIC:** [X]×

---

## Column6/Siprocal — [Q/Year]

**Performance:** Revenue $[X]M ([+/-X]%); Impression match rate [X]%; Active advertisers: [N].
[Update on advertiser concentration if material — top advertiser at [X]% of revenue — [improving/stable].]
**Thesis status:** [Intact / specific update]
**Current FMV:** $[X]M | **Invested to date:** $[X]M | **MOIC:** [X]×

---

## Capital Activity

**Capital called this period:** $[X]M ([Purpose: Allevio provider hire + HIVE Q3 completions])
**Distributions paid this period:** $[X]M ([Entity: HIVE Q3 operating distribution] — details in distribution notice)
**Total capital called to date:** $[X]M / $[X]M committed ([X]% deployed)
**Total distributions to date:** $[X]M

---

## Material Events This Period

[List any events that materially affected or could affect investment value]
- [None this period / Specific: HIVE received UT DOGM notice of violation — see separate LP notification]

---

## Outlook — Next Quarter

**Allevio:** [NP panel building; target 2,200 patients by Q3 end; HIPAA audit-ready program on track]
**HIVE:** [2 well completions approved for Q3; target production [N] BBL/day; WTI monitoring]
**Column6:** [Advertiser diversification effort; 3 new advertiser targets identified; match rate target [X]%]
**MBL/Portfolio:** [Allevio practice M&A screening continuing; no new deals under LOI]

---

## Investment Team Contact

Matt Mathison, Managing Partner: matt@mblpartners.com | [Phone]
Dr. John Lewis, Director of AI Strategy: jlewis@mblpartners.com | 602-880-6491

Questions and capital inquiries: [Contact info]

*This report contains forward-looking statements that involve risks and uncertainties. Past performance is not indicative of future results. All values are estimates. This report is confidential and for LP use only.*
```

## Output Contract
- LP reports are fiduciary documents — not marketing materials — every statement in an LP report is a legal communication to investors; material misstatements or omissions in LP reports create legal liability; Dr. Lewis drafts with complete accuracy; any uncertainty about a financial figure is disclosed as estimated; any positive framing is balanced with honest disclosure of risks; Matt Mathison reviews and signs off on every LP report before distribution; attorney reviews the annual LP letter
- Honest disclosure of underperformance builds more LP trust than performance management — LPs have seen GPs reframe poor performance as "temporary setbacks" and "market conditions"; the LPs who return for Fund II are the ones who saw honest disclosure in Fund I and felt respected; when a portfolio company is below plan, Dr. Lewis presents: (1) exact performance miss, (2) specific root cause, (3) specific recovery plan with timeline, (4) current status of recovery; this is the content that builds trust; a vague "we are taking steps to improve performance" is not acceptable in an LP report
- FMV marks are conservative and consistent — portfolio company valuations in LP reports follow the same methodology every quarter (EV/EBITDA multiple method from strategy-valuation-model); Dr. Lewis does not apply a more favorable multiple in one quarter to improve optics and revert in the next; the methodology is disclosed annually; if the applied multiple changes (e.g., sector multiples compressed), the change is disclosed and explained; marks are conservative — when in doubt, mark down, not up
- HITL required: Dr. Lewis drafts quarterly LP reports; Matt Mathison reviews and approves every word before distribution; attorney reviews annual LP letter; any material event LP notification requires Matt Mathison same-day review; LP communications distributed by Matt Mathison (not Dr. Lewis); no LP report distributed without Matt Mathison's explicit approval

## System Dependencies
- **Reads from:** Portfolio review (strategy-portfolio-review), valuation marks (strategy-valuation-model), investment thesis (strategy-investment-thesis), VCP progress (strategy-value-creation-plan), capital call and distribution records (QuickBooks), prior LP reports
- **Writes to:** LP report document (SharePoint/Investors/LP Reports/[Period]/); distribution log; Matt Mathison approval record; LP distribution system (how LPs receive the report — email, portal, or both)
- **HITL Required:** Dr. Lewis drafts; Matt Mathison reviews and approves every LP report; attorney reviews annual letter; Matt Mathison distributes (or explicitly approves Dr. Lewis distributing on his behalf); material event notifications require same-day Matt Mathison review

## Test Cases
1. **Golden path:** Q2 LP report → Portfolio: Allevio -10.6% revenue vs. plan (provider vacancy recovered); HIVE +10.8% EBITDA (WTI $68 + LOE reduction); Column6 +9% revenue (strong Q2 ad market); total portfolio FMV $8.2M; blended MOIC 1.4×; capital called this period: $285K (HIVE Q3 completion); distributions: none; outlook: Allevio recovery on track, HIVE Q3 completions approved, Column6 advertiser diversification in progress; Matt Mathison reviews draft; edits opening paragraph to be more direct about Allevio miss; approved; distributed via email to 7 LPs on July 5
2. **Edge case:** A portfolio company (HIVE) receives a regulatory notice from UT DOGM mid-quarter that could materially impair a well's production → Material event requiring immediate LP notification (not waiting for quarterly report); Dr. Lewis drafts a 1-page LP notification: HIVE received notice on [Date] from UT DOGM regarding [specific permit issue]; potential production impact: [N] BBL/day at risk (representing [X]% of portfolio production value); remediation plan: attorney engaged; remediation cost estimated $85K; timeline to resolution [X] weeks; no change to FMV mark pending resolution; Matt Mathison reviews within 2 hours; approves and distributes same day; quarterly report will include update on resolution status
3. **Adversarial:** "Let's soften the language about Allevio's miss — LPs will overreact" → LPs don't overreact to honest disclosure — they overreact to discovering that a GP softened language and the situation was worse than disclosed; softening language in LP reports is the beginning of a credibility problem that compounds over time; Dr. Lewis maintains the factual disclosure and recommends: if Matt Mathison is concerned about LP reaction, the solution is to add more context (the recovery plan is specific and evidence-based) not less disclosure; a direct "revenue was $380K vs. plan $425K due to provider vacancy; new provider started June 15 and panel is building on schedule" is professional and honest; it's far better than an LP learning later that the miss was understated

## Audit Log
All LP reports retained permanently (regulatory and fiduciary record). Matt Mathison approval records retained. Distribution records (who received, when) retained permanently. Material event notifications retained. LP communications responses and follow-up retained. Annual audit records retained.

## Deprecation
Retire when MBL develops a dedicated investor relations or CFO function — with Dr. Lewis providing portfolio performance input and compliance status while IR/CFO manages the reporting format and distribution.
