---
name: cash-runway-calculator
description: "Calculate how long a company's cash will last. Use when the user says 'cash runway', 'how long will our cash last', 'burn rate', 'months of runway', 'when will we run out of cash', 'cash burn', 'runway analysis', 'calculate burn rate', 'how much runway do we have', 'cash depletion', 'time to zero', or 'extend the runway'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scenario <current-burn|optimized|growth>] [--include-revenue <yes|no>]"
---

# Cash Runway Calculator

Calculate and communicate cash runway — how long the company's current cash will last at the current rate of spending (or projected spending). Runway is the most time-sensitive financial metric for growing companies and any company under financial stress. A company that doesn't know its runway can't make informed decisions about hiring, spending, or fundraising. This skill delivers the runway calculation with full scenario analysis and a clear action framework.

## When to Use
- A portfolio company is burning cash (expenses > revenue) — how long can it survive?
- Matt Mathison asks "how much runway does [Company] have?"
- A company is considering increasing spending (hiring, marketing) — runway impact analysis
- Capital raising decision — how much runway is needed before the next financing round?
- Stress-testing a business plan — what if revenue takes longer than expected?
- Any company with less than 12 months of runway at current burn

## Runway Framework

```
Two runway calculations:

1. Gross Burn Runway (worst case):
   = Cash / Monthly Gross Expenses
   Answers: How long can we survive with zero revenue?
   Use when: Revenue is unreliable, highly variable, or at-risk

2. Net Burn Runway (operating runway):
   = Cash / Monthly Net Cash Burn (Expenses - Revenue)
   Answers: How long at current revenue and expense levels?
   Use when: Revenue is reliable and predictable

Most useful metric: Net burn at BASE case vs. BEAR case assumptions.

Runway warning thresholds:
  🟢 >18 months: Comfortable — focus on execution
  🟡 12-18 months: Monitor — plan for next financing or path to profitability
  🔴 6-12 months: Action required — begin fundraising or expense reduction NOW
  ☠️ <6 months: Crisis — immediate action; cut non-essential expenses today
```

## Output Format

```markdown
# Cash Runway Analysis — <Company Name>
**As of:** <Date>
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison

---

## Cash Position

| Account | Balance |
|---------|---------|
| Operating cash | $[X] |
| Savings / reserve | $[X] |
| **Total available cash** | **$[X]** |

*Excluded from runway calculation: restricted cash $[X] (security deposits, escrow)*

---

## Burn Rate Analysis

| | Monthly | Quarterly | Annual |
|---|---|---|---|
| **Total expenses (gross burn)** | $[X] | $[X] | $[X] |
| − Revenue (contracted/reliable) | ($[X]) | ($[X]) | ($[X]) |
| **Net cash burn** | **$[X]** | **$[X]** | **$[X]** |

**Burn rate trend:**
| Month | Gross Burn | Revenue | Net Burn | Cumulative Cash Burned |
|-------|-----------|---------|---------|----------------------|
| [Month-3] | $[X] | $[X] | $[X] | $[X] |
| [Month-2] | $[X] | $[X] | $[X] | $[X] |
| [Month-1] | $[X] | $[X] | $[X] | $[X] |
| [Current] | $[X] | $[X] | $[X] | |

**Burn trend:** [Burn increasing / Stable / Decreasing — and why]

---

## Runway Scenarios

| Scenario | Net Burn/Month | Cash ($[X]) | Runway | Cash-zero date |
|---------|---------------|-------------|--------|---------------|
| **Base case** (current trajectory) | $[X] | $[X] | **[N] months** | **[Month YYYY]** |
| **Bear case** (revenue -20%) | $[X] | $[X] | [N] months | [Month YYYY] |
| **Optimized** (identified cost cuts) | $[X] | $[X] | [N] months | [Month YYYY] |
| **Path to profitability** (if revenue grows [X%]/mo) | $[X] → $0 | | Break-even: [Month] | N/A — sustainable |
| **Gross burn** (zero revenue) | $[X] | $[X] | [N] months | [Month YYYY] |

---

## Runway Status

**Current runway (base case): [N] months**
**Status:** 🟢/>18 mo / 🟡/12-18 mo / 🔴/6-12 mo / ☠️/<6 mo

**Key date:** Cash-zero (base case): **[Month YYYY]**

---

## Runway Extension Options

| Option | Monthly burn reduction | Runway extension | Implementation | Risk |
|--------|----------------------|-----------------|---------------|------|
| [Defer planned hire — Q[N]] | $[X]/month | +[N] months | Immediate | Low |
| [Reduce contractor spend] | $[X]/month | +[N] months | 30 days | Low-Medium |
| [Accelerate revenue — 1 new client = $[X]/month] | ($[X]) net burn | +[N] months | 60-90 days | Medium |
| [Full cost optimization plan] | $[X]/month | +[N] months | 60 days | Medium |
| [New financing — bridge / LOC] | | + indefinite | 60-90 days | [Dilution / debt burden] |

**Recommended action at current runway ([N] months):**
[One specific recommendation based on the runway status — e.g., "Begin cost optimization now to extend runway to 18 months before considering external financing" / "Start fundraising process immediately — 6 months is not sufficient lead time for most financing"]

---

## Path to Cash-Flow Positive

| Month | Net Burn → Cash Generation | Cumulative Cash | Milestone |
|-------|--------------------------|----------------|---------|
| [Current] | ($[X]) | $[X] | |
| [Month+3] | ($[X]) | $[X] | [Revenue milestone] |
| [Month+6] | ($[X]) | $[X] | [Break-even revenue: $[X]/month] |
| [Break-even month] | $0 | $[X] | **Cash-flow positive** |
| [Month+12] | +$[X] | $[X] | |

**Revenue needed to stop burning:** $[X]/month ([X] additional [clients / units / BBL/day])
**Distance from break-even:** $[X] in additional monthly revenue needed

---

## Matt Mathison Summary

[Company] runway — [Date]: Cash $[X], net burn $[X]/month. **Runway: [N] months** (cash-zero: [Month YYYY]). Status: 🟢/🟡/🔴/☠️. **Most important action:** [1 sentence — specific]. **Decision needed:** [Specific — begin fundraising / approve cost cuts / extend LOC / no action needed].
```

## Output Contract
- Bear case runway always calculated — the base case runway tells what happens if everything goes as planned; the bear case tells what happens if it doesn't; for companies with <18 months of base case runway, the bear case is the number that should drive behavior
- Cash-zero date always stated — "12 months of runway" is abstract; "cash-zero on June 2027" is concrete; the specific date creates urgency and a planning horizon; every runway analysis must state the calendar date at which cash hits zero under each scenario
- Path to profitability always modeled — runway analysis should not just tell management how long they can survive; it should tell them what revenue milestone closes the gap between current burn and break-even; this focuses management on the revenue action that matters most
- Action recommendation always matched to runway severity — a company with 24 months of runway needs a different recommendation than one with 5 months; the action recommendation must reflect the urgency of the situation without either causing panic when unnecessary or understating a real crisis
- HITL required: Dr. Lewis prepares analysis; Matt Mathison receives any company with <18 months of runway immediately (not at the next scheduled report); companies with <6 months of runway require an emergency meeting with Matt Mathison and the CEO within 48 hours; any financing decision requires Matt Mathison lead

## System Dependencies
- **Reads from:** QuickBooks (expense history and revenue), bank statements (actual cash), revenue pipeline, headcount/payroll records
- **Writes to:** Runway analysis (SharePoint/Finance/Cash Flow/Runway/); Matt Mathison brief; fundraising memo (if applicable)
- **HITL Required:** Dr. Lewis prepares; Matt Mathison must receive <18 months immediately; <6 months requires emergency meeting within 48 hours; all financing decisions require Matt Mathison

## Test Cases
1. **Golden path:** Allevio runway analysis June 2026 → Cash: $234K; Monthly gross burn: $78K; Monthly revenue: $114K (14 practices × $2,200 × 12 / 12); Net burn: revenue > expenses = CASH FLOW POSITIVE by $36K/month; Runway: N/A — not burning; Cash is growing at $36K/month (before any distribution); Status: 🟢; Matt Mathison summary: "Allevio is cash-flow positive at $36K/month. Current cash of $234K is growing, not depleting. No runway concern. Monitoring for growth investment opportunities."
2. **Edge case:** A pre-revenue portfolio company (or startup acquisition) has $600K in cash and burns $85K/month gross → Runway: $600K / $85K = 7.1 months (🔴); Bear case (-20% slower revenue ramp): still same burn, now 7.1 months total — no revenue offset; Immediate action required: "Runway of 7.1 months is below the 12-month minimum for a company at this stage. At the current burn rate, cash-zero is February 2027. Recommend: (1) Implement cost reduction to extend to 10+ months — Dr. Lewis preparing analysis; (2) Begin bridge financing conversations immediately — 6+ months lead time required; (3) CEO to prioritize first revenue-generating customer — every $10K/month in revenue extends runway by 6 weeks. Matt Mathison meeting within 48 hours to align on path."
3. **Adversarial:** A CEO downplays the runway situation ("we'll close a big deal next month") to avoid tough decisions → do not accept revenue pipeline as runway — only contracted, predictable revenue belongs in the base case; pipeline deals go in the bull case only; respond: "I understand the deal looks promising. In the base case model, I can only include contracted revenue. The pipeline deal goes in our bull case, which shows runway of [N] months if it closes. The base case (contracted revenue only) shows [N] months. Given that [N] months base case is below our 12-month threshold, we need to act on the base case, not the bull case. If the deal closes, great — we'll update the model. But we can't wait for it."

## Audit Log
Runway analyses retained by entity and date. Bear case assumptions documented. Matt Mathison notifications for <18 months and <6 months documented. Emergency meetings documented. Financing decisions and outcomes retained.

## Deprecation
Retire when portfolio companies are sustainably cash-flow positive with diversified revenue, maintaining 24+ months of reserve at all times, and when cash monitoring is handled by a dedicated CFO or controller function with real-time cash dashboards.
