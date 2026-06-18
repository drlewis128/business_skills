---
name: cs-portfolio-cs-rollup
description: "Build and deliver the portfolio-level CS metrics rollup for MBL Partners leadership. Use when the user says 'portfolio CS report', 'portfolio customer success report', 'portfolio CS rollup', 'portfolio CS metrics', 'MBL CS report', 'portfolio-level CS', 'cross-entity CS report', 'Matt Mathison CS report', 'CS summary for Matt', 'portfolio CS summary', 'executive CS summary', 'cross-portfolio CS', 'MBL portfolio CS dashboard', 'LP CS update', 'investor CS update', 'how is CS performing across the portfolio', 'all entities CS report', 'portfolio rollup', 'portfolio CS snapshot', 'CS health across portfolio', or 'MBL CS snapshot'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--audience <matt|ceo|board|lp>] [--action <build|review|send>]"
---

# CS Portfolio CS Rollup

Build and deliver the portfolio-level CS metrics rollup for MBL Partners leadership — consolidating CS performance across Allevio, HIVE Partners, and Column6/Siprocal into a single view that shows Matt Mathison and the CEO how the portfolio's customer relationships are performing, where the ARR risk is, and what actions are being taken. The portfolio rollup is the CS function's report card to private equity leadership; it must be honest, specific, and actionable.

## When to Use
- Monthly (by the 15th of each month — prior month data for all entities)
- Quarterly (full-quarter summary for Matt Mathison; includes comparison to prior quarter)
- Annual (LP-appropriate summary of CS performance across the portfolio)
- Before a board meeting (condensed format for the board deck)

## Portfolio Rollup Framework

```
AUDIENCE VERSIONS:

  MATT MATHISON (MANAGING PARTNER):
    Format: 1-2 pages; BLUF (Bottom Line Up Front)
    Detail level: Entity-level metrics; notable accounts; forward-looking risks
    Frequency: Monthly
    Lead with: One sentence — portfolio state ("Green", "Caution", or "Action Needed")
    
  CEO (PORTFOLIO COMPANY):
    Format: Same as Matt but entity-specific (CEO only sees their company's section)
    Detail level: Full entity metrics; specific account detail on at-risk accounts
    Frequency: Monthly; alerts immediately for major status changes
    
  BOARD OF DIRECTORS / LPs:
    Format: 2-3 paragraph narrative + 1 table; no sensitive account names
    Detail level: Portfolio-level only; percentages; trend direction; no specific customer names
    Frequency: Quarterly (included in board deck)

METRIC STRUCTURE (compile from cs-kpi-dashboard for each entity):

  PORTFOLIO HEADER:
    □ Total portfolio ARR: $[X]M
    □ Portfolio GRR: [X]% (Allevio target >90%; Column6 target >70%; HIVE target >85%)
    □ Portfolio NRR: [X]% (all entities target >100%)
    □ Total ARR at risk: $[X]K (At Risk + Lost from cs-renewal-forecast)
    □ Portfolio health distribution: [N]% Green / [N]% Yellow / [N]% Red

  ENTITY SECTIONS (one per entity):
    ALLEVIO:
      □ Total employer groups: [N] | Total members: [N]
      □ GRR: [X]% | NRR: [X]% | vs. last month: [▲▼ X pts]
      □ Average claim ratio: [X]% | Target: <80%
      □ Health distribution: [N] Green / [N] Yellow / [N] Red
      □ ARR at risk: $[X]K | Open enrollment season status (if applicable)
      □ Notable this month: [1-2 highlights or risks — specific, not vague]
      
    COLUMN6:
      □ Total agency relationships: [N] | Active IOs this month: [N]
      □ GRR: [X]% | NRR: [X]% | vs. last month: [▲▼ X pts]
      □ Portfolio average VCR: [X]% | Target: ≥92%
      □ Health distribution: [N] Green / [N] Yellow / [N] Red
      □ ARR at risk: $[X]K | IO booking velocity: [N] IOs in pipeline
      □ Notable this month: [1-2 highlights or risks]
      
    HIVE:
      □ Total landowner relationships: [N] | Total leased acres: [N]
      □ GRR: [X]% | NRR: [X]% | vs. last month: [▲▼ X pts]
      □ Total royalties distributed this month: $[X]K
      □ Health distribution: [N] Green / [N] Yellow / [N] Red
      □ ARR at risk: $[X]K | Lease renewals coming (12-month window): [N]
      □ Notable this month: [1-2 highlights or risks]

  ACTIONS TAKEN / RECOMMENDED:
    □ What interventions are in progress? (at-risk accounts; escalations; save plans)
    □ What interventions are needed from Matt Mathison or the CEO?
    □ What is the forward-looking risk in the next 30-90 days?

  EXECUTIVE SUMMARY FORMAT FOR MATT MATHISON:
    Opening line (Portfolio status):
      GREEN: "Portfolio CS is healthy — GRR tracking above target across all 3 entities.
        One account at risk in Allevio (save plan in progress)."
      CAUTION: "Portfolio CS shows early stress — Allevio GRR at 87% vs. 90% target;
        $[X]K at risk in active saves. Column6 and HIVE performing to target."
      ACTION NEEDED: "Immediate attention required — [specific situation].
        CEO involved. Recommend a portfolio CS call this week."
    3-5 bullet points with the specific details below the opener
    Recommended action from Matt (if any)
    CS team actions already underway (shows we're not waiting for direction)
```

## Output Format

```markdown
# Portfolio CS Rollup — [Month/Quarter YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date]
**Portfolio status:** 🟢 Green / 🟡 Caution / 🔴 Action Needed

---

## Portfolio Summary

| Metric | Allevio | Column6 | HIVE | Portfolio total |
|--------|---------|---------|------|----------------|
| ARR | $[X]M | $[X]M | $[X]M | $[X]M |
| GRR | [X]% | [X]% | [X]% | [X]% |
| NRR | [X]% | [X]% | [X]% | [X]% |
| ARR at risk | $[X]K | $[X]K | $[X]K | $[X]K |
| Health: Green | [N] | [N] | [N] | [N] |
| Health: Yellow | [N] | [N] | [N] | [N] |
| Health: Red | [N] | [N] | [N] | [N] |

---

## Entity Highlights

**Allevio:** [3-5 bullets — performance vs. target; notable accounts; actions]
**Column6:** [3-5 bullets]
**HIVE:** [3-5 bullets]

---

## Actions in Progress

| Account | Entity | Risk level | Action | Owner | ETA |
|---------|--------|-----------|--------|-------|-----|
| [Account] | Allevio | Critical | CEO save call scheduled | CEO | [Date] |

---

## Recommended Actions for Matt Mathison

[Zero or 1-2 bullets — only include if Matt's attention or decision is genuinely needed]

---

## Looking Ahead (Next 30-90 Days)

[Upcoming renewals; open enrollments; significant risks on the horizon]
```

## Output Contract
- BLUF is mandatory — the first sentence of the portfolio rollup is the bottom line; Matt Mathison reads executive summaries starting from the first line; a rollup that buries the key finding in paragraph 3 is a rollup that wastes Matt's time; Dr. Lewis writes the portfolio status line before writing any other section; if the status line says "Action Needed," Matt should know from the first sentence what the action is
- Specificity over safety — vague language like "some accounts are showing risk signals" does not help Matt make decisions; "Allevio has 2 accounts at Red health totaling $187K ARR — a CEO-led save plan is in progress for the $142K account; we are monitoring the $45K account closely" gives Matt a complete picture; Dr. Lewis does not protect Matt from difficult news by softening the language; the rollup is honest, even when the news is bad
- Matt's attention is reserved for decisions only — the portfolio rollup may include "recommended actions for Matt" — but only if a genuine decision is required that Matt is the right person to make; "FYI" items that don't require Matt's decision do not appear in this section; Dr. Lewis filters ruthlessly: if the CS team can handle it, it doesn't go to Matt; if it requires Matt's judgment, authority, or network, it does
- HITL required: Dr. Lewis prepares and reviews the portfolio rollup before it is sent; Matt Mathison receives the rollup by the 15th of each month (monthly) or within 5 business days of quarter end (quarterly); the CEO of each portfolio company receives their entity section before the portfolio rollup goes to Matt — they should not be surprised by something Matt sees before they do; any "Action Needed" status rollup is discussed with Dr. Lewis and the CEO before it goes to Matt; LP-facing versions are reviewed by the CEO before delivery

## System Dependencies
- **Reads from:** cs-kpi-dashboard (entity-level metrics for each portfolio company — GRR; NRR; health distribution; churn); cs-renewal-forecast (ARR at risk; by entity); cs-health-score-tracker (health distribution; Red account count and ARR); cs-at-risk-responder (active save plans — what is the status?); cs-escalation-manager (open escalations — any at P1/P2 level?); cs-okr-tracker (OKR grades — are we on track for the quarter?)
- **Writes to:** Portfolio rollup report (SharePoint/Portfolio/CSReports/[YYYY-MM]_PortfolioCSRollup.pdf); email to Matt Mathison (monthly and quarterly); entity CEO email (their section before the full rollup goes to Matt); LP-facing CS summary (SharePoint/Portfolio/LPUpdates/<YYYY>_Q[X]_CSUpdate.pdf — quarterly); board deck CS section (as needed)
- **HITL Required:** Dr. Lewis prepares and reviews before sending; each portfolio company CEO receives their section before Matt; "Action Needed" status requires Dr. Lewis discussion with CEO before delivery to Matt; LP-facing versions reviewed by CEO; Matt receives by the 15th of each month

## Test Cases
1. **Golden path:** Monthly portfolio rollup — Status: GREEN; Allevio GRR 93.2% ✅; Column6 GRR 78.1% ✅; HIVE GRR 100% ✅; Portfolio NRR 104.1% ✅; No accounts at Red; 2 Yellow accounts ($87K combined ARR — save plans in progress, both expected to Green within 60 days); Matt's section: "Portfolio CS is healthy. GRR and NRR are tracking above target across all 3 entities. The two Yellow accounts in Allevio are under active management — I expect both to return to Green within 60 days; both have specific action plans in place. No action needed from you this month — I wanted to make sure you had the full picture." Matt replies: "Great update — concise and clear. Thanks, John."
2. **Edge case:** The quarterly rollup for Q3 reveals that Column6's GRR has dropped to 64% (below the 70% target) due to 3 IO-based accounts going quiet (no rebooking in 90+ days) → Dr. Lewis: "This is a Caution status month for Column6. The Q3 number is concerning but not a crisis — it reflects a booking velocity issue, not account churn. Here's the action: I'm reviewing the 3 dormant accounts this week and running pulse checks. I expect at least 2 of the 3 to rebook in Q4. I'm flagging this in the portfolio rollup as a Caution and including a Q4 recovery plan. Matt needs to see the honest number and the plan — not a softened number." Rollup sent with Caution status; Matt responds: "Good transparency — what do you need from me?" Dr. Lewis: "Nothing yet — I'll know in 2 weeks whether the pulse checks confirm Q4 bookings. I'll flag if I need your help with any of the accounts."
3. **Adversarial:** A CS rep suggests removing an account from the "ARR at risk" table in the rollup because "it's going to be fine and it'll alarm Matt" → Dr. Lewis: "If it's going to be fine, it'll be fine and Matt will see that next month — the ARR at risk column moves to zero and the story writes itself. What I can't do is pull an account from the risk table to manage Matt's reaction and then have that account churn. If that happens, Matt will ask why it wasn't in last month's report. The answer 'we thought it would be fine' is not an answer. Every account that meets the At Risk criteria appears in the risk table. That's the contract." Account stays in the risk table; detailed context on the active save plan included; Matt sees the honesty as a positive — responds: "Thanks for the transparency — keep me posted."

## Audit Log
All portfolio rollup documents retained by period and date. Email distribution records retained (Matt; entity CEOs; LP distribution list). "Action Needed" status briefing records retained. Entity CEO pre-delivery confirmation records retained. LP-facing version CEO approval records retained.

## Deprecation
Retire when MBL Partners has a portfolio intelligence dashboard that automatically aggregates CS metrics across all entities — with Dr. Lewis reviewing the dashboard output before it goes to Matt and the CEO of each portfolio company approving their entity's section before publication.
