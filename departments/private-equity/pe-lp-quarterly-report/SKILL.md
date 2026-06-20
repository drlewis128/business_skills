---
name: pe-lp-quarterly-report
description: "Produce quarterly LP reports for MBL Partners fund investors. Use when the user says 'LP quarterly report', 'quarterly LP report', 'LP report', 'investor report', 'investor quarterly', 'quarterly investor update', 'limited partner report', 'limited partner quarterly', 'fund quarterly', 'fund quarterly report', 'quarterly fund update', 'quarterly performance report', 'LP update', 'investor update', 'LP communication quarterly', 'Q1 report', 'Q2 report', 'Q3 report', 'Q4 report', 'quarterly performance', 'fund performance quarterly', 'portfolio update LP', 'LP portfolio update', 'capital account statement', 'LP capital account', 'quarterly capital account', 'NAV report', 'quarterly NAV', 'fund NAV report', 'quarterly IRR', 'quarterly MOIC', 'quarterly TVPI', 'quarterly DPI', 'RVPI quarterly', 'LP return update', 'ILPA reporting', 'ILPA quarterly', 'quarterly distribution notice', 'LP notice quarterly', or 'quarterly close'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--action <draft|review|distribute>] [--audience <all-lps|specific-lp|co-investor>]"
---

# PE LP Quarterly Report

Produce quarterly LP reports for MBL Partners fund investors — compiling portfolio performance, fund-level returns, capital account statements, and qualitative commentary into an ILPA-aligned investor report that delivers transparent, honest performance communication. LP quarterly reports are MBL's most important recurring LP communication: they build trust when honest, and destroy trust when they feel like marketing; LPs who receive reports that only say good things grow suspicious; LPs who receive reports that acknowledge challenges and explain what is being done earn confidence that the GP is on top of the business; Matt Mathison owns the quarterly report as the Managing Partner; Dr. Lewis produces it and ensures it is accurate before Matt reviews.

## When to Use
- End of each calendar quarter (Q1: April 30; Q2: July 31; Q3: October 31; Q4: January 31 of next year — or per LPA deadline)
- Matt Mathison asks for the quarterly LP report
- A specific LP requests a performance update

## LP Quarterly Report Framework

```
QUARTERLY REPORT STRUCTURE (ILPA-aligned):

  SECTION 1 — EXECUTIVE SUMMARY (1 page):
    Fund: name; vintage; strategy (LMM; multi-sector)
    Quarter summary: 2-3 sentences — what happened; what changed
    Fund performance (as-of quarter end): TVPI; DPI; RVPI; Net IRR
    Capital status: committed; called; distributed; remaining uncalled
    
  SECTION 2 — FUND PERFORMANCE (ILPA standard metrics):
    Contributions (capital called this quarter and total-to-date)
    Distributions (any LP distributions this quarter and total-to-date)
    Net Asset Value (NAV) = sum of portfolio FMVs per latest valuation
    TVPI = (NAV + distributions to date) / capital called to date
    DPI = distributions to date / capital called to date
    RVPI = NAV / capital called to date
    Net IRR: XIRR on dated cash flows (calls and distributions) vs. date of calculation
    
  SECTION 3 — PORTFOLIO COMPANY UPDATES (one page per entity):
    Entity name; investment date; cost basis; current FMV; period change
    Quarter highlights: what happened (factual; brief)
    Key metrics (North Star metrics; financial KPIs)
    Risks and outlook
    HIPAA constraint: Allevio update contains aggregate/de-identified data only — no PHI
    
  SECTION 4 — FINANCIAL DETAIL (per ILPA Reporting Template):
    Management fees paid this quarter (per LPA)
    Carried interest accrued (not yet distributed; per waterfall calculation)
    Expenses charged to the fund this quarter (per LPA expense policy)
    LP capital account (each LP's individual capital account statement provided separately)
    
  SECTION 5 — PIPELINE (optional; brief):
    Active deals in pipeline (sector; stage; no company names until LOI)
    Recent investments or exits

QUARTERLY REPORT TIMELINE:

  Day 1-15 post quarter-end: Dr. Lewis collects data (QuickBooks; AdvancedMD aggregate; Covercy; DSP data)
  Day 10-15: Portfolio KPI finalized (entities deliver their numbers)
  Day 15: FMV valuation updated (if quarterly FMV update; see pe-valuation-model)
  Day 15-25: Dr. Lewis drafts report
  Day 25: Draft to Matt Mathison for review
  Day 30: Matt Mathison review complete; revisions
  Day 30-45: Distribute to LPs (per LPA deadline — typically 45-60 days post quarter-end)

QUARTERLY NEGATIVE REPORTING:

  Any of the following → named, explained, and actioned in the report:
    Entity FMV down quarter-over-quarter: name it; explain why; state the plan
    Covenant breach or near-breach: name it; state status and cure timeline
    Management team change: name it; explain; state the transition plan
    Regulatory issue (healthcare; energy): name it; legal counsel quoted status
    Entity KPI below threshold (GRR; VCR; WTI): name it; management plan included
    THRIVE violation by entity management: Matt Mathison decides disclosure level
```

## Output Format

```markdown
# [Fund Name] — Quarterly Investor Report — Q[X] [YYYY]
**Reporting period:** [Quarter end date] | **Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison

---

## Executive Summary

[2-3 sentence quarter summary]

**Fund performance as of [Date]**

| Metric | This quarter | Inception-to-date |
|--------|------------|------------------|
| TVPI | [X.Xx]x | [X.Xx]x |
| DPI | [X.Xx]x | [X.Xx]x |
| RVPI | [X.Xx]x | [X.Xx]x |
| Net IRR | [X%] | [X%] |

**Capital summary**

| Item | Amount |
|------|--------|
| Total commitments | $[X]M |
| Called to date | $[X]M |
| Distributed to date | $[X]M |
| Remaining uncalled | $[X]M |

---

## Portfolio Company Updates

### Allevio Health — Healthcare MSO
**FMV: $[X]M** | **Cost basis: $[X]M** | **MOIC: [X.X]x**

*Quarter highlights:* [2-3 sentences]

| KPI | Q[X] [YYYY] | Prior quarter | Target |
|-----|------------|--------------|--------|
| Employer GRR | [X%] | [X%] | ≥91% |
| Claim ratio | [X%] | [X%] | ≤87% |
| DSO | [N] days | [N] days | ≤35 days |

*Risks and outlook:* [1-2 sentences]

---

## Financial Detail

| Item | This quarter | YTD |
|------|------------|-----|
| Management fees | $[X] | $[X] |
| Fund expenses | $[X] | $[X] |
| Carry accrued | $[X] | $[X] |
```

## Output Contract
- Negative performance is disclosed with the same prominence as positive performance — a quarterly report that leads with all the good news and buries the bad news in footnotes or omits it entirely is the most common GP communication failure; LPs are sophisticated investors who read footnotes; a report that softens, qualifies, or omits negative performance findings will be noticed; Dr. Lewis uses BLUF: if an entity had a bad quarter, the section starts with the bad news and the response plan, not with context-setting that delays the negative finding until paragraph 3
- FMV is locked before the report is distributed — the FMV used in the quarterly report must be the same FMV that was approved by the valuation committee (Dr. Lewis + Matt Mathison); using a preliminary FMV or an FMV that differs from the fund accounting records creates reconciliation problems and LP confusion; Dr. Lewis confirms the FMV used in the report against the fund accounting system before distributing; if the FMV changed between the fund accounting close and the report draft, the change is flagged to Matt Mathison and the fund administrator before the report is distributed
- ILPA standard metrics are calculated consistently quarter-over-quarter — TVPI; DPI; RVPI; Net IRR — using the same methodology every quarter; if the methodology changes (e.g., switching from a simplified IRR to XIRR), the change is disclosed with a reconciliation to the prior methodology; LPs who compare Q3 to Q2 using inconsistent methodologies become confused and suspicious; the fund administrator independently validates all ILPA metrics before distribution
- HITL required: quarterly report draft → Matt Mathison reviews and approves before distribution (no exceptions); any negative performance findings → Matt Mathison briefed before the report is drafted (not just at review stage); FMV validation → valuation committee (Dr. Lewis + Matt Mathison) approves before report uses it; management fee and expense calculations → fund administrator independently validates; HIPAA compliance review for Allevio section → Dr. Lewis confirms no PHI before report goes to Matt; distribution → Matt Mathison confirms recipient list matches current LP register

## System Dependencies
- **Reads from:** pe-fund-accounting (FMV; TVPI/DPI/RVPI; NAV; management fees; expenses); pe-portfolio-kpi-dashboard (entity KPIs for the period); pe-irr-tracker (net IRR); pe-moic-calculator (TVPI; deal-level MOIC); pe-valuation-model (FMV for the period — must be approved); pe-covenant-compliance (any covenant status for portfolio companies with debt); pe-lp-admin (LP capital account balances; distribution history); entity management teams (qualitative commentary)
- **Writes to:** Quarterly LP report (SharePoint → Investor Relations → Quarterly Reports → [QQYYYY]); LP capital account statements (individual; per LP); Matt Mathison approval record; LP distribution list (email through secure channel)
- **HITL Required:** Report draft → Matt Mathison approves; negative findings → Matt briefed before draft; FMV → valuation committee approves; management fee/expense → fund administrator validates; Allevio HIPAA → Dr. Lewis confirms; distribution → Matt confirms recipient list

## Test Cases
1. **Golden path:** Q3 quarterly report. All three entities in the portfolio. Fund performance: TVPI 1.42x; DPI 0.18x; RVPI 1.24x; Net IRR 14.2%. Allevio: FMV up 8% quarter-over-quarter (employer GRR 91.8%; claim ratio 85.4%); positive quarter. HIVE: FMV flat (WTI held at $67/bbl; production volume stable); neutral quarter. Column6: FMV down 4% (agency NRR 92.3%; VCR 91.8% — slight VCR softness driven by one campaign format; management plan included). Report leads with fund-level metrics, then entity-by-entity with Column6 section leading: "Column6 experienced softness in VCR this quarter (91.8% vs. 92.0% target). Management has identified the underperforming campaign format and has implemented a detection adjustment that is already showing improvement in October data. No change to Column6 FMV at this time."
2. **Edge case:** A portfolio company missed its quarterly KPI targets significantly and the FMV needs to be reduced by 15% → Dr. Lewis: "Before I draft this section, I need Matt Mathison's guidance on communication approach. The FMV reduction is material (>10%) and will require an explanation that LPs will find credible. My recommendation: the section opens with the FMV reduction directly ('Allevio's FMV was reduced by $X in Q3 from $Y to $Z, reflecting…') followed by the specific drivers (claim ratio exceeded target; employer group added in Q2 underperforming expectations). Then the response plan. Matt: I'll draft the full language for your approval — I want to make sure we're aligned on the explanation before I put it in writing."
3. **Adversarial:** An LP calls Matt Mathison directly and asks why the quarterly report didn't mention [specific event] → Dr. Lewis investigation: "Reviewing the report against the entity update records — the event [was / was not] disclosed. If it was not disclosed and should have been, I'm flagging this as a reporting gap. We'll send a supplemental note to all LPs immediately with the missing information and an explanation of why it wasn't in the original report. If the LP believes an event was material when it was not (from our assessment), I'll prepare a response explaining our materiality judgment and the facts. Matt Mathison approves all LP responses."

## Audit Log
All quarterly reports retained permanently (with Matt Mathison approval; distribution date; LP recipient list). FMV validation records retained (valuation committee approval; date). ILPA metrics calculations retained (with methodology; fund administrator sign-off). HIPAA compliance records retained (Allevio section review). LP capital account statements retained per LP.

## Deprecation
Quarterly LP reporting is an ongoing function for the life of each fund. The report template is updated when ILPA issues new reporting standards or when Matt Mathison requests format changes.
