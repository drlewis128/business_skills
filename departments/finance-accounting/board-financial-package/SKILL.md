---
name: board-financial-package
description: "Build the financial section of a board package. Use when the user says 'board package financials', 'board financial report', 'prepare board financials', 'board meeting financial package', 'board financial update', 'board reporting', 'prepare the financial section for the board', 'board deck financials', 'investor financial update', or 'board financial presentation'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <quarterly|annual>] [--meeting-date <date>]"
---

# Board Financial Package

Compile the financial section of a board of directors package — a concise, board-appropriate financial summary that gives directors the information they need to fulfill their fiduciary duties and ask informed questions, without drowning them in detail. The board financial package is not the same as the full financial statements: it's a curated narrative with supporting data, designed for a 10-minute read and a 20-minute discussion.

## When to Use
- Quarterly board meeting preparation — 5-7 days before the board meeting
- Matt Mathison requests a financial update for a board conversation
- A portfolio company needs a standard board financial reporting template
- Annual board meeting — year-end financial review and next-year budget approval
- An investor or director requests a financial update outside of normal board cadence

## Board Financial Standards

```
What board members need from the financial package:

1. Is the company performing in line with plan?
   → Revenue vs. budget and prior year
   → EBITDA vs. budget and prior year
   
2. Is the company solvent and generating cash?
   → Cash position
   → Cash burn rate (if applicable)
   → Debt position and covenants (if applicable)

3. What are the 1-3 most important financial variances?
   → Why did they happen?
   → What is management doing about it?

4. What is the financial outlook?
   → Revised forecast vs. original budget
   → Key assumptions and risks to the forecast

Board members do NOT need: granular GL detail, full trial balance,
or transaction-level data. They need the summary + the key questions answered.
```

## Output Format

```markdown
# Financial Package — <Company Name>
**Board Meeting:** [Date]
**Period:** [Q/Year ending <date>]
**Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison
**Distributed:** [Date — at least 48 hours before board meeting]

---

## Executive Financial Summary

| Metric | Actual | Budget | $ Variance | % Variance | vs. Prior Year |
|--------|--------|--------|-----------|-----------|---------------|
| Revenue (period) | $[X] | $[X] | $[X] | [X%] 🟢/🟡/🔴 | [X%] |
| Revenue (YTD) | $[X] | $[X] | $[X] | [X%] | |
| Gross Profit | $[X] | $[X] | $[X] | [X%] | |
| Gross Margin % | [X%] | [X%] | | | |
| EBITDA (period) | $[X] | $[X] | $[X] | [X%] 🟢/🟡/🔴 | [X%] |
| EBITDA Margin % | [X%] | [X%] | | | |
| Net Income | $[X] | $[X] | | | |
| Cash (end of period) | $[X] | | | | |
| [Cash burn / runway — if applicable] | | | | | |

**TL;DR (2-3 sentences for directors):**
[Revenue was $[X], [X%] [above/below] budget — driven by [key factor]. EBITDA of $[X] reflects [key driver]. Cash position of $[X] represents [X months of runway / strong balance sheet / [relevant context]].]

---

## Revenue Analysis

### Revenue by Segment / Service Line (if applicable)

| Segment | Q[N] Actual | Q[N] Budget | Variance | YTD | YTD Budget |
|---------|------------|------------|---------|-----|-----------|
| [Segment 1] | $[X] | $[X] | $[X] | $[X] | $[X] |
| [Segment 2] | $[X] | $[X] | $[X] | | |
| **Total** | **$[X]** | **$[X]** | **$[X]** | | |

**Revenue narrative:** [What drove the variance? Which products/segments are outperforming/underperforming? What is the revenue trend? Is the business accelerating or decelerating?]

---

## P&L Summary

| | Q[N] | Q[N-1] | YTD | Prior YTD | Annual Budget |
|---|---|---|---|---|---|
| Revenue | $[X] | $[X] | $[X] | $[X] | $[X] |
| COGS | ($[X]) | | | | |
| **Gross Profit** | **$[X]** | | | | |
| **Gross Margin** | **[X%]** | | | | |
| SG&A | ($[X]) | | | | |
| **EBITDA** | **$[X]** | | | | |
| **EBITDA Margin** | **[X%]** | | | | |
| D&A | ($[X]) | | | | |
| Interest | ($[X]) | | | | |
| **Net Income** | **$[X]** | | | | |

---

## Cash and Balance Sheet Summary

| | End of Period | Prior Period | Change |
|---|---|---|---|
| Cash & Equivalents | $[X] | $[X] | $[X] |
| Total Debt | $[X] | $[X] | $[X] |
| Net Cash (Cash - Debt) | $[X] | $[X] | $[X] |
| Accounts Receivable | $[X] | $[X] | |
| DSO (Days Sales Outstanding) | [N days] | [N days] | |

**Cash narrative:** [Cash position is [strong/adequate/concerning — why]. Cash from operations was $[X] for the period. Key cash movement: [largest source or use of cash]. [Debt covenant compliance if applicable.]]

---

## Key Variances — Management Explanation

*Each variance >$[threshold] or >[X%] vs. budget should be explained.*

| Item | Variance | Explanation | Management Action |
|------|---------|------------|------------------|
| [Largest variance] | $[X] [above/below] budget | [Root cause — 1-2 sentences] | [What is being done — if negative] |
| [Second variance] | | | |
| [Third variance if applicable] | | | |

---

## Financial Outlook

### Revised Full-Year Forecast vs. Original Budget

| | Original Budget | Current Forecast | Variance | Change driver |
|---|---|---|---|---|
| Revenue | $[X] | $[X] | $[X] | [Key change] |
| EBITDA | $[X] | $[X] | $[X] | |
| Net Income | $[X] | $[X] | $[X] | |
| Year-end Cash | $[X] | $[X] | $[X] | |

**Forecast assumptions:** [Key assumptions underlying the revised forecast — what would have to be true for the forecast to hold?]

**Key risks to the forecast:** [1-3 specific risks that could cause material variance from the forecast — include magnitude if known]

---

## Board Discussion Questions (Management's Recommended Agenda)

1. [Most important financial topic for board input — specific]
2. [Second topic — approval needed / strategic question with financial implication]
3. [Third topic if applicable]

---

## Appendix: Full Financial Statements
*[Attached separately or on following pages — full P&L, Balance Sheet, Cash Flow]*
```

## Output Contract
- Package distributed at least 48 hours before board meeting — board members need time to read before the meeting; same-day distribution is a governance failure; 72 hours preferred for annual reviews
- TL;DR always written as standalone paragraph — board members who only have 2 minutes before the meeting should be able to read the TL;DR and understand the most important things; it must be complete, not a teaser
- Key variances always explained with management action — a variance without an explanation leaves board members either confused or needing to ask a question that management should have anticipated; every material negative variance must include what management is doing about it
- Forecast revised vs. original budget whenever current trajectory differs materially — boards need to know if the original plan is still achievable; a forecast that quietly aligns with actual results without acknowledging it has been revised is misleading
- HITL required: Dr. Lewis prepares package; CPA or controller reviews financial accuracy; Matt Mathison reviews and approves before distribution; distribution list managed by Dr. Lewis; any restatement of previously reported numbers requires board notification

## System Dependencies
- **Reads from:** QuickBooks (financial data), financial statements (prior month's close), annual budget model, prior board package
- **Writes to:** Board package (SharePoint/Finance/Board Packages/); board meeting materials; LP updates (where applicable)
- **HITL Required:** Dr. Lewis prepares; CPA reviews; Matt Mathison approves; CEO confirms narrative accuracy before distribution

## Test Cases
1. **Golden path:** Allevio Q2 board package → Revenue: $987K (vs. $920K budget — +7.2%); EBITDA: $142K (14.4% margin, vs. $130K budget — +$12K); Cash: $387K (vs. $314K prior quarter); Key variance: Revenue above budget due to 3 new MSO practice onboardings in June (expected Q3); management note: "Pipeline remains strong — 4 additional practices in late-stage discussions; at current pace, we are tracking to full-year revenue of $4.1M vs. $3.8M budget"; Cash narrative: "Strong operating cash flow; no debt; DSO improved from 42 to 37 days"; Board questions: (1) Approve Q3 expansion of implementation team (2 headcount), (2) Discuss capital allocation for potential acquisition target; distributed 72 hours before meeting
2. **Edge case:** EBITDA is below budget because of a one-time unplanned expense (legal settlement, equipment failure) → clearly segregate the one-time item: "EBITDA of $[X] is $[X] below budget, including a one-time [legal settlement / equipment replacement] cost of $[X]. Excluding this one-time item, EBITDA would have been $[X] ($[X] above budget). The underlying business is performing in line with plan." Board members need to distinguish recurring underperformance from one-time hits
3. **Adversarial:** Management wants to present a board package that shows revenue in line with budget by accelerating recognition of Q3 revenue into Q2 → hard stop; revenue recognition is governed by GAAP (or cash basis if that's the company's policy); revenue cannot be accelerated for the purpose of meeting board expectations; this is a financial integrity issue; escalate to the CPA and legal counsel; do not prepare a package containing improperly recognized revenue; inform Matt Mathison immediately

## Audit Log
Board packages retained by entity, period, and version. Distribution dates logged. Matt Mathison approval documented. Any restated numbers (and reason for restatement) retained permanently. Board meeting discussion outcomes tracked.

## Deprecation
Retire when portfolio companies have CFOs who own board financial reporting with a dedicated board communications process, and Dr. Lewis's role shifts to oversight and review rather than preparation.
