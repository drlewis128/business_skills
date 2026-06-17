---
name: fpa-ebitda-bridge-builder
description: "Build EBITDA bridges showing movement from prior period to current. Use when the user says 'EBITDA bridge', 'bridge analysis', 'bridge chart', 'waterfall chart', 'EBITDA waterfall', 'EBITDA movement', 'explain EBITDA change', 'what drove the EBITDA change', 'EBITDA walk', 'EBITDA reconciliation', 'prior period to current EBITDA', 'budget to actual bridge', 'year-over-year EBITDA', 'EBITDA improvement', 'EBITDA decline analysis', 'earnings bridge', 'operating income bridge', 'margin bridge', 'bridge from last year', or 'reconcile EBITDA'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--from <period>] [--to <period>] [--type <budget-to-actual|yoy|sequential>] [--action <build|present>]"
---

# EBITDA Bridge Builder

Build EBITDA bridge analyses for MBL portfolio companies — showing exactly how EBITDA moved from one period to another, with each bridge item quantified and explained. An EBITDA bridge is the most efficient way to communicate financial performance to the CEO, board, and Matt Mathison: it shows the starting point, every factor that helped or hurt, and the ending point — in a format where a reader can immediately see what drove the change. Dr. Lewis builds EBITDA bridges for the monthly financial package, the board presentation, and any time a significant period-over-period EBITDA change needs to be explained.

## When to Use
- Monthly financial package — budget-to-actual EBITDA bridge (see fpa-variance-analyzer for full variance analysis; bridge is the visual/executive summary format)
- Board quarterly package — sequential quarter bridge and year-over-year bridge
- Annual review — year-over-year EBITDA bridge for LP reporting
- Any period where EBITDA changes by >$15K relative to prior period or budget
- Exit preparation — buyers expect to see a multi-year EBITDA bridge showing the improvement story

## EBITDA Bridge Framework

```
Bridge types (select the right type for the context):

  TYPE 1 — BUDGET-TO-ACTUAL BRIDGE (monthly/quarterly):
    Starting point: Budgeted EBITDA for the period
    Ending point: Actual EBITDA for the period
    Bridge items: Every factor that moved EBITDA from budget to actual
    Use when: Explaining monthly or quarterly variance to budget
    
  TYPE 2 — SEQUENTIAL BRIDGE (quarter-over-quarter or month-over-month):
    Starting point: Prior period EBITDA (Q1 → Q2; or January → February)
    Ending point: Current period EBITDA
    Bridge items: Every factor that moved EBITDA from the prior period to the current
    Use when: Explaining operating momentum (is the business improving?)
    
  TYPE 3 — YEAR-OVER-YEAR BRIDGE (YoY):
    Starting point: Prior year EBITDA (annual or YTD)
    Ending point: Current year EBITDA (annual or YTD)
    Bridge items: Every factor that moved EBITDA year over year
    Use when: Annual reviews, LP annual reports, exit preparation
    
  TYPE 4 — IMPROVEMENT BRIDGE (value creation story):
    Starting point: EBITDA at entry or a baseline date
    Ending point: Current EBITDA (or projected exit EBITDA)
    Bridge items: The specific actions and business improvements that drove EBITDA growth
    Use when: Board presentations, LP annual meeting, exit preparation, value creation narrative
    
Bridge item taxonomy (how to categorize each movement):

  REVENUE ITEMS (positive or negative):
    Volume: Member growth (Allevio); production growth (HIVE); campaign growth (Column6)
    Price/Rate: PMPM rate changes; WTI price changes; campaign average value changes
    Mix: Shift between segments (CTV vs. digital; commercial vs. payer)
    New business: New employer groups, new agency accounts, new well production
    Lost business: Churned groups, lost advertiser relationships, production decline
    One-time revenue: Non-recurring items (insurance reimbursement, legal settlement proceeds)
    
  COGS ITEMS (positive or negative):
    Direct cost efficiency: LOE per BOE improvement; billing fee % change
    Volume-driven COGS: More clinical hours needed for more members (semi-variable)
    One-time COGS: Non-recurring direct cost (temporary staffing during a gap, locum clinician)
    
  OPERATING EXPENSE ITEMS:
    Headcount changes: New hires (negative bridge item); departures (positive bridge item)
    Non-headcount efficiency: Technology cost reduction; insurance premium change
    One-time opex: Legal fees, recruiting costs, one-time project costs
    
  BRIDGE ITEM RULES:
    Maximum 8-10 items in the bridge; aggregate small items into an "Other" line
    Each item: Name, direction (favorable/unfavorable), dollar amount
    One-time items: Labeled as "One-time" so the reader knows it doesn't recur
    Every item should have a corresponding explanation in the narrative section
    The bridge must foot: Starting EBITDA + All bridge items = Ending EBITDA
    
  VALUE CREATION BRIDGE (for exit preparation or LP meetings):
    Organize by value creation levers, not accounting lines:
    Revenue growth: "Member growth (+450 members since entry = +$460K EBITDA)"
    Margin expansion: "PMPM rate improvement +$4/member = +$58K EBITDA"
    Operating efficiency: "G&A leverage as revenue scaled = +$85K EBITDA"
    One-time / non-recurring: "Excluded from management EBITDA presentation"
    This format tells the business story, not just the accounting story
```

## Output Format

```markdown
# EBITDA Bridge — [Entity] | [Type: Budget-to-Actual / YoY / QoQ]
**From:** [Period/EBITDA $XK] → **To:** [Period/EBITDA $XK]
**Change:** +/−$[X]K ([X]%) | **Prepared by:** Dr. Lewis | **Date:** [Date]

---

## EBITDA Bridge

| Item | Direction | Amount | Category |
|------|-----------|--------|---------|
| **Starting EBITDA** ([Period]) | — | $[X]K | — |
| Member growth — Allevio (+[N] members) | Favorable ✅ | +$[X]K | Revenue — Volume |
| PMPM rate improvement (+$[X]/member) | Favorable ✅ | +$[X]K | Revenue — Price |
| Group [X] contract loss | Unfavorable ⚠️ | −$[X]K | Revenue — Lost business |
| Clinical headcount addition (2 new FTE) | Unfavorable ⚠️ | −$[X]K | OpEx — Headcount |
| Billing fee rate reduction (Marshall) | Favorable ✅ | +$[X]K | COGS — Efficiency |
| G&A leverage (revenue scaled, G&A flat) | Favorable ✅ | +$[X]K | OpEx — Leverage |
| One-time legal expense | Unfavorable ⚠️ | −$[X]K | OpEx — One-time |
| **Ending EBITDA** ([Period]) | — | **$[X]K** | — |

**Bridge check:** Starting ($[X]K) + Net items ($[X]K) = Ending ($[X]K) ✅

---

## Bridge Item Narratives

**Member growth (+[N] members, +$[X]K EBITDA):** [Employer Group X started in February with 85 members; full year contribution will be $X. This was the largest positive driver of EBITDA improvement vs. the prior period.]

**Group [X] contract loss (−$[X]K EBITDA):** [Employer Group Y did not renew their annual contract — their 30 members exited at December 31. This is a structural loss that is fully reflected in the forecast going forward.]

**One-time legal expense (−$[X]K, non-recurring):** [Employment dispute settlement — resolved in Q2; no further legal exposure on this matter; excluded from management EBITDA if presenting to external parties.]

---

## Management EBITDA (if applicable)

| Metric | GAAP EBITDA | Add-back | Management EBITDA |
|--------|-------------|----------|------------------|
| [Period] | $[X]K | +$[X]K (one-time legal) | $[X]K |

*Management EBITDA excludes the one-time legal settlement. Both figures presented to board.*
```

## Output Contract
- The bridge must foot — the most important mechanical check on an EBITDA bridge is that the math is correct: Starting EBITDA + Sum of all bridge items = Ending EBITDA; a bridge that doesn't foot is wrong and cannot be presented; Dr. Lewis always includes a visible check cell or footnote confirming the bridge foots before sharing; a bridge that looks compelling but has a $3K math error in it undermines credibility with Matt Mathison and the board
- Maximum 8-10 items — the value of an EBITDA bridge is that it is scannable in 30 seconds; a 20-line bridge defeats the purpose; Dr. Lewis consolidates small items into "Other" and retains the detail in a supporting schedule; the bridge shows the 5-8 most important drivers; the reader sees the headline and the narrative provides the color; if someone asks "what's in Other?", the answer is in the supporting schedule — but Other should never be the largest line item
- One-time items are always labeled — a one-time legal settlement, a recruiting cost, or a non-recurring insurance reimbursement in the bridge must be labeled "(one-time)" so the reader knows it does not repeat; failing to label one-time items allows a reader to draw incorrect conclusions about the run-rate EBITDA; when the one-time item is material (>$10K), Dr. Lewis also shows the "management EBITDA" (GAAP EBITDA adjusted for the one-time item) alongside the GAAP figure — presenting both, not hiding the one-time item from the bridge
- HITL required: Dr. Lewis builds the bridge; CEO reviews for accuracy of narrative explanations; Matt Mathison reviews in the board package and monthly brief; bridge narratives must be factually accurate — if a bridge item explanation says "group [X] did not renew due to plan redesign" but the actual reason was a price dispute, the explanation is wrong and must be corrected; Dr. Lewis writes what is true, not what is flattering

## System Dependencies
- **Reads from:** QuickBooks P&L actuals (current and prior periods); annual budget (for budget-to-actual bridge); fpa-variance-analyzer (variance root cause analysis feeds the bridge narratives); fpa-rolling-forecast-updater (for current forecast vs. prior month bridge); prior period financial package (starting EBITDA); entity-specific business intelligence (new customers, lost customers, price changes)
- **Writes to:** Monthly CEO financial package (EBITDA bridge section); board financial package (quarterly EBITDA bridge); LP annual report (YoY EBITDA bridge); exit preparation materials (value creation bridge); Matt Mathison monthly brief (bridge summary); board slide deck (EBITDA waterfall chart for visual presentations)
- **HITL Required:** Dr. Lewis builds; CEO reviews narrative accuracy; Matt Mathison reviews in board package; one-time item classification approved by CEO and Dr. Lewis jointly; management EBITDA presentation (with add-backs) reviewed by Matt Mathison before external use; no adjusted EBITDA presented to external parties (investors, banks) without Matt Mathison approval

## Test Cases
1. **Golden path:** Allevio Q2 YoY EBITDA bridge (Q2 Prior Year $165K → Q2 Current Year $192K, +$27K, +16.4%) → Bridge: +$48K member volume (increased 85 members YoY at $85 PMPM × 35% gross margin × 6 months); +$12K PMPM rate increase (+$4/member on renewals); −$28K new clinician hire (added in February; 5 months of cost in Q2 period); +$8K G&A leverage (rent and IT are flat YoY); −$13K one-time HIPAA audit cost (non-recurring); bridge foots: $165K + $48K + $12K − $28K + $8K − $13K = $192K ✅; narrative: member growth is the primary driver; one-time HIPAA audit suppressed the full EBITDA improvement; management EBITDA excluding one-time = $205K (+24% YoY); board presentation leads with the management EBITDA and discloses the GAAP figure
2. **Edge case:** Column6 Q-over-Q bridge: EBITDA declined from $85K (Q1) to $52K (Q2) — CEO is frustrated and wants a simple explanation → Dr. Lewis builds: −$18K seasonal ad spending decline (Q2 is slower for CTV campaigns; Q3 and Q4 are peak); −$8K new account manager hire (onboarding in Q2; will generate revenue in Q3); −$7K one-time platform licensing annual fee (Q2 renewal); total: −$33K; bridge foots ✅; Dr. Lewis narrative: "The Q2 decline is largely seasonal (−$18K) and one-time (−$7K platform renewal). The AM hire (−$8K) is an investment that should generate $40K-$60K of new campaign revenue in H2. Management EBITDA ex-one-time: $59K vs. $85K Q1 — a seasonal decline, not a structural one. Q3 forecast: $95K (peak ad season). Matt Mathison receives this framing; board package leads with the seasonal context
3. **Adversarial:** The CEO asks to exclude the new clinician hire from the bridge so "the EBITDA improvement story is cleaner for the board" → Dr. Lewis declines: "The clinician hire is a $28K item that we chose to make — it's a real EBITDA driver and the board should see it. What I can do is label it as 'investment in capacity for H2 growth' so the board understands the context. If we hide the $28K and only show the $55K gross improvement, we're not giving the board a complete picture of the decisions management is making. Let me frame it positively: 'Operating EBITDA bridge shows $55K improvement; $28K of that was reinvested in clinical capacity; net EBITDA improvement $27K (+16%).' That's accurate and tells a growth story." The bridge includes all items; the narrative provides context

## Audit Log
All EBITDA bridges retained by period and type. Bridge check cell (footing) verified and documented. One-time item classification decisions retained with rationale. Management EBITDA presentations retained separately from GAAP presentations. Board presentation bridge slides retained. Exit preparation bridges retained permanently.

## Deprecation
Retire when each portfolio company has a CFO who builds EBITDA bridges as standard output — with Dr. Lewis reviewing all bridges in the board package and Matt Mathison approving any management EBITDA adjustments before external use.
