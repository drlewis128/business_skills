---
name: fin-board-reporting
description: "Prepare the monthly and quarterly financial report package for the MBL Partners board. Use when the user says 'board financial report', 'board financials', 'financial package for the board', 'board financial package', 'prepare board financials', 'board financial reporting', 'monthly board report', 'quarterly board report', 'board P&L', 'financial report for the board', 'board financial update', 'board finance section', 'prepare the finance section', 'board financial summary', 'board financial narrative', 'board finance deck', 'financial presentation for board', 'board update financials', 'board reporting financials', 'board financial data', or 'board finance report'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <all|MBL|Allevio|HIVE|Column6>] [--period <monthly|quarterly|annual>] [--audience <board|lp|management>] [--action <build|review|approve|distribute>]"
---

# Fin Board Reporting

Prepare the monthly and quarterly financial report package for the MBL Partners board — producing the financial narrative, entity performance summaries, and variance explanations that give board members the information they need to fulfill their fiduciary obligations without requiring them to read 40 pages of spreadsheets. Board financial reporting at MBL is a communication exercise as much as it is a financial reporting exercise: the goal is to give the board a clear picture of portfolio financial health, surface the risks and concerns honestly, and provide the context they need to ask good questions and make good decisions.

## When to Use
- Monthly (financial summary to board by the 10th of the following month)
- Quarterly (full financial package with variance analysis and updated projections)
- Annual (audited financial statements and full-year performance review)
- A material financial event requires board awareness outside the regular cycle

## Board Financial Reporting Framework

```
MONTHLY BOARD FINANCIAL REPORT (due 10 business days after month-end):

  STRUCTURE:
    1. Portfolio Financial Summary (1 page)
       - Revenue vs. budget (all entities; portfolio total)
       - EBITDA vs. budget (all entities; portfolio total)
       - Cash position (all entities; total portfolio cash)
       - YTD performance vs. full-year budget
       
    2. Entity Performance (1 page per entity):
       - North star metric vs. target (Allevio: GRR; HIVE: Landowner GRR; Column6: Agency NRR)
       - P&L summary: Revenue / COGS / Gross profit / Opex / EBITDA
       - Cash position and runway
       - Top 3 variances: amount; category; explanation; management response
       - Status of prior month's action items (if any)
       
    3. Flags for Board Attention:
       - Any item requiring board awareness (not necessarily action)
       - Material events since last board meeting
       - Forward-looking risks in the next 90 days
       
QUARTERLY BOARD FINANCIAL REPORT (additional sections):

  Added to the monthly format:
    - Quarter vs. quarter comparison (current Q vs. same Q prior year)
    - YTD actuals vs. full-year budget (with updated full-year outlook)
    - Cash flow statement (quarterly operating/investing/financing)
    - Updated 13-week cash flow forecast (forward-looking)
    - Variance analysis by driver (fin-variance-analyzer output)
    - Capital deployment update (what was approved; what was spent; what's remaining)
    - Updated full-year projection vs. original budget
    
ANNUAL BOARD FINANCIAL REPORT:

  Additional sections:
    - Audited financial statements (all entities; after audit completion — Dec-Jan)
    - Full-year actual vs. budget performance analysis
    - Year-over-year comparison (current year vs. prior 2 years)
    - Capital allocation efficiency review (ROI on deployed capital by category)
    - Entity-level THRIVE and operational narrative (how performance was achieved)
    - Coming year budget summary (approved in December; presented at January board)
    
BOARD FINANCIAL REPORTING PRINCIPLES:

  Rule 1: No surprises — if something significant happened financially,
           the board should have heard about it before they see it in the report;
           material events (>10% variance; cash concern; regulatory issue) are
           communicated as they occur, not held for the monthly package
           
  Rule 2: Present honestly — show the bad news as clearly as the good news;
           a board that trusts the reporting is a more supportive board;
           a board that senses the reporting is managed loses confidence quickly
           
  Rule 3: Lead with the narrative — the financial tables are the evidence;
           the narrative is the communication; the board report leads with
           "here is what happened and why" before presenting the numbers
           
  Rule 4: Flags require recommended actions — if something is flagged for
           board attention, include what management intends to do about it;
           a board flag without a management response forces the board to
           improvise their reaction rather than evaluate a proposed response
           
  Rule 5: Matt Mathison reviews before distribution — no board financial
           report is distributed without Matt Mathison's review and approval;
           this is both a quality control and a fiduciary governance requirement

MATERIAL EVENT DISCLOSURE:

  Board notification required within 2 business days (not held for monthly report):
    - Cash position breach (any entity falls below minimum reserve)
    - Revenue miss >15% in any single month at any entity
    - A legal action or regulatory inquiry involving an entity
    - A key person departure at a CRITICAL role
    - A material change in entity valuation or market conditions
    - Any THRIVE integrity breach at the leadership level
```

## Output Format

```markdown
# MBL Partners — Board Financial Report
**Period:** [Month/Quarter/Year] | **Prepared by:** Dr. Lewis | **Reviewed by:** Matt Mathison
**Distribution:** Board of Directors + Dr. Lewis (Confidential)

---

## Portfolio Financial Summary

| Entity | Revenue (Budget / Actual / Var%) | EBITDA (Budget / Actual / Var%) | Cash | Status |
|--------|--------------------------------|-------------------------------|------|--------|
| Allevio | $X / $X / [+/-]% | $X / $X / [+/-]% | $X | 🟢/🟡/🔴 |
| HIVE | ... | ... | ... | |
| Column6 | ... | ... | ... | |
| **Portfolio** | **$X / $X / [+/-]%** | **$X / $X / [+/-]%** | **$X** | |

---

## Flags for Board Attention

| Priority | Entity | Issue | Management response |
|----------|--------|-------|-------------------|
| 🔴 HIGH | [Entity] | [Issue] | [Action being taken] |
| 🟡 MONITOR | [Entity] | [Issue] | [Action being taken] |

---

## Entity Performance Details

### Allevio — [Month/Quarter Year]

**North star:** GRR [X%] ([Green/Yellow/Red] vs. ≥91% target)

| Metric | Budget | Actual | Variance |
|--------|--------|--------|---------|
| Revenue | $X | $X | [+/-]% |
| EBITDA | $X | $X | [+/-]% |
| Cash | — | $X | — |

**Top variance:** [Item] — $[X] — [Category A/B/C/D/E] — [Explanation]
**Management action:** [What's being done]

[Repeat for HIVE and Column6]
```

## Output Contract
- Board reports due 10 business days after month-end — the monthly close must be complete and the report prepared and reviewed by Matt Mathison in time to deliver to the board 10 business days after the period closes; this requires the entity close to be done by the 15th (exec-cfo-oversight) so Dr. Lewis can prepare the board package by the 18th-20th and Matt can review by the 22nd; any entity that closes late compromises the board reporting timeline, which is a fiduciary commitment, not a convenience
- Narrative leads numbers — board members read the narrative first; if the narrative is clear, they know what questions to ask and the numbers confirm the story; if there is no narrative, they read the numbers without context and ask questions that take the entire board meeting to answer; Dr. Lewis writes the narrative section of the board report with the same BLUF discipline as all MBL communications — bottom line up front, details below
- Matt Mathison approves every board financial report — the board financial report is a fiduciary document; it reflects MBL management's representation of the portfolio's financial condition; Matt Mathison reviews every word before it goes to the board; this is not a rubber stamp — Matt's review is the last quality control before a document that could affect LP confidence and board decisions goes out the door
- HITL required: Matt Mathison reviews and approves every board financial report before distribution; material events go to the board within 2 business days (not held for the monthly package); board financial reports are distributed only to the board and Dr. Lewis (Confidential); entity financial data in the board report is entity-specific and isolated (board members of one entity do not receive data from other entities); the annual report includes audited financials which are also distributed to LPs per exec-lp-reporting

## System Dependencies
- **Reads from:** QuickBooks (all entities — actuals for all P&L and balance sheet items); fin-variance-analyzer (variance analysis output for each entity); fin-cash-flow-planner (cash position and runway data); fin-kpi-dashboard (entity KPI status); exec-cfo-oversight (monthly financial summary — the source material for the board package); fin-audit-readiness (annual audit status and results)
- **Writes to:** Board financial reports (SharePoint → Finance → BoardReports → [YYYY]-[MM]); exec-board-communication (financial section of the board package); exec-lp-reporting (quarterly audited financials shared with LPs after board review); exec-action-tracker (board-assigned financial action items)
- **HITL Required:** Matt Mathison reviews and approves every report before distribution; material events go directly to board within 2 business days; annual audited financials approved by Matt before board and LP distribution; entity CEOs review their entity section before it goes to Matt (no surprises); board financial reports are confidential — distribution is limited to the named board and Dr. Lewis

## Test Cases
1. **Golden path:** Q2 board financial report; portfolio revenue $7.4M vs. $7.1M budget (+4%); portfolio EBITDA $1.1M vs. $0.98M budget (+12%); all entities Green; Allevio: strong (GRR 93%; EBITDA margin 9.2% — above budget); HIVE: solid (WTI at $63 — slightly above budget; landowner GRR 87% — on target); Column6: strong quarter (VCR 94%; agency NRR 101%). Flags: zero this quarter. Matt reviews June 22nd: "Clean quarter. Let's lead with the Allevio GRR improvement — it's the most strategically meaningful metric this period. Add a sentence about the clinical program driving the claim ratio improvement." Dr. Lewis updates. Report sent to board June 23rd. Board chair response: "Best financial quarter in two years. Well done."
2. **Edge case:** HIVE has a positive financial quarter but a negative landowner event (competing operator signed a lease with 2 HIVE landowners) that isn't captured in the financial statements yet → Dr. Lewis: "I'm adding a flag to the HIVE board section even though the financial results are positive. The competing operator situation is not yet in the numbers — royalties from those 2 landowners aren't affected until Q3 — but the board should know about it now so they're not surprised by the Q3 impact. Flag text: 'Landowner risk: competing operator signed lease agreements with 2 HIVE landowners (combined royalty revenue impact: ~$45K/year). HIVE is actively executing the retention playbook — executive outreach this week. Expect to report resolution or escalation at the July board meeting.'" Matt: "Right call. Include it."
3. **Adversarial:** A board member contacts Dr. Lewis directly asking for financial data outside the board report → Dr. Lewis: "I received your request for the [entity] detailed financial data. I want to make sure Matt Mathison is aware before I share anything beyond what was in the board package — both for proper governance and to make sure the data is contextualized correctly. I'll let Matt know you've asked and get back to you within 24 hours. If there's a specific question you're trying to answer, sharing that with me now will help Matt and I provide the most useful response. I want to be helpful here — I just want to make sure we're handling board information requests through the right channel." Contacts Matt immediately.

## Audit Log
All board financial reports retained by period and distribution date. Matt Mathison approval records retained. Material event notification records retained (what; when; to whom; how). Board member data request records. Annual audit distribution records.

## Deprecation
Retire when MBL has a dedicated CFO or finance function who prepares the board financial reports — with Dr. Lewis providing technology and AI financial input and Matt Mathison retaining review authority for all board financial communications.
