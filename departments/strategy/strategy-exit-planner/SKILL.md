---
name: strategy-exit-planner
description: "Plan and prepare for portfolio company exits — sale process, buyer universe, timing, and exit readiness. Use when the user says 'exit strategy', 'exit planning', 'exit readiness', 'sell the company', 'strategic sale', 'exit process', 'prepare for sale', 'M&A sale', 'buyer universe', 'exit timeline', 'liquidity event', 'sale process', 'go-to-market for sale', 'when to sell', 'exit multiple', or 'maximize exit value'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--timeline <months to exit>] [--type <strategic|financial|recap|management-buyout>]"
---

# Exit Planner

Plan and prepare portfolio company exits for MBL Partners — identifying the optimal exit route, timing, buyer universe, and value maximization actions that deliver the best risk-adjusted return for Matt Mathison and the LP base. Exit planning begins at entry (the investment thesis defines the exit hypothesis) and runs continuously — every operational decision affects the eventual exit value. At PE portfolio scale, exits are the moment of truth: all the value creation work pays off only when the capital event actually occurs. The most common PE mistake is sub-optimal exit timing or exit readiness gaps that are discovered during due diligence rather than before the process starts.

## When to Use
- Matt Mathison asks about exit timing or strategy for a portfolio company
- 12-24 months before a planned exit — exit readiness assessment and action plan
- A strategic buyer or financial buyer makes an unsolicited inquiry
- Market conditions change (interest rates, M&A multiples) that affect exit timing
- Annual portfolio review — where is each company in its exit timeline?

## Exit Planning Framework

```
Exit strategy options (by type):
  
  Strategic sale: Sale to an operating company in the same or adjacent industry
    Buyers: Larger healthcare MSO groups (Allevio); major E&P companies (HIVE); programmatic platforms (Column6)
    Premium: Strategic buyers pay highest multiples (synergy value) but move slow; process risk from regulatory
    Best for: When there are clear strategic buyers who benefit directly from the acquisition
    
  Financial sale: Sale to another PE firm (secondary buyout)
    Buyers: Healthcare-focused PE (Allevio), O&G PE (HIVE), media/tech PE (Column6)
    Premium: Multiple-dependent on market conditions; EBITDA quality drives price
    Best for: Companies that are not yet at scale for strategic buyers but have strong financial performance
    
  Recapitalization: Partial exit — sell majority but retain equity stake; often refinanced with debt
    Best for: When exit timing is premature but capital return to LPs is needed; retains upside
    
  IPO: Public listing — typically requires $50M+ revenue and institutional infrastructure
    Not applicable at current MBL portfolio scale; not a near-term exit path
    
  Management Buyout (MBO): Management team acquires the company (often with PE backing)
    Best for: When management team has strong conviction and can access capital
    
Exit value drivers (what buyers pay for):
  Revenue quality: Recurring/contracted revenue is worth more than project/episodic
  EBITDA margin: Higher margin = higher multiple; margin expansion trend = buyer premium
  Growth trajectory: Growing companies command higher multiples than flat or declining
  Customer/revenue concentration: Top customer <20% of revenue = clean; >40% = discount
  Management depth: Key person dependency = discount; deep management = premium
  Clean regulatory standing: No open investigations, audits, or compliance gaps (rc-compliance-ops-review)
  Audit-quality financials: CPA-reviewed or audited statements; clean chart of accounts (audit-prep-coordinator)
  
Exit readiness checklist:
  Financial: Monthly financial statements clean; EBITDA bridge clear; no off-balance-sheet items
  Legal: Contracts documented; IP owned (not licensed); no material litigation; entity structure clean
  Compliance: HIPAA audit-ready (Allevio); OIG LEIE current; no open regulatory actions; rc-compliance-ops-review ✅
  Operational: SOPs documented; not dependent on one person; technology stable and supported
  Commercial: Customer contracts in place; top customer relationships transferable
  Financial controls: AP/payroll/reporting controls documented; rc-sox-lite-assessor ✅
  Related-party register: All RPTs disclosed and at arm's length; rc-conflict-of-interest-manager ✅
  
PE exit math (standard):
  Entry: Paid [X]× EBITDA at $[X]M
  Value creation levers: Revenue growth + margin expansion + multiple expansion (re-rating)
  Exit: Target [Y]× EBITDA at $[Y]M
  MOIC: Exit equity value / Invested equity = [N]×
  IRR: ([MOIC]^(1/hold_years) - 1) = [X]%
  MBL targets: ≥20% IRR; ≥2.5× MOIC at 5-year hold
```

## Output Format

```markdown
# Exit Plan — [Company Name]
**Date:** [Date] | **Prepared by:** Dr. John Lewis | **Reviewed by Matt Mathison:** ✅ [Date]
**Planned exit timeline:** [Q/Year] | **Exit type:** [Strategic / Financial / Recap]
**MOIC to date:** [X]× | **IRR to date:** [X]% | **Projected exit MOIC:** [X]× | **Projected IRR:** [X]%

---

## Exit Hypothesis

**Original exit thesis (at entry):** [What we planned to do and to whom we planned to sell]
**Current exit thesis:** [Has this changed? Why?]
**Optimal exit window:** [Timing — and why this timing is optimal vs. earlier or later]
**Exit trigger conditions:** [What needs to be true to start the formal process]

---

## Buyer Universe

| Buyer type | Estimated buyers | Rationale | Expected multiple | Timeline |
|-----------|----------------|---------|-----------------|---------|
| Strategic — Tier 1 (direct synergy) | [N companies, named] | [Why they would want this asset] | [X-Y]× EBITDA | [X months] |
| Strategic — Tier 2 (adjacent) | [N] | | [X-Y]× | [X months] |
| Financial / PE | [Sector-specific PE funds] | | [X-Y]× | [X months] |
| Management buyout | [Current management team] | | [Lower] | [X months] |

**Best exit path:** [Type] to [Buyer type] — rationale: [Why this maximizes risk-adjusted return]

---

## Exit Readiness Assessment

| Area | Current state | Exit-ready? | Gap | Actions to close gap |
|------|-------------|-----------|-----|---------------------|
| Financial statements (CPA-reviewed) | ✅/⚠️/❌ | ✅/❌ | [What's missing] | [Action by when] |
| EBITDA quality (no addbacks >20% of EBITDA) | | | | |
| Customer contracts (documented, assignable) | | | | |
| IP ownership (owned, not licensed) | | | | |
| Key person dependency (not dependent on one person) | | | | |
| Compliance — HIPAA audit-ready (Allevio) | | | | |
| Compliance — OIG LEIE current | | | | |
| Compliance — No open regulatory actions | | | | |
| Financial controls (SOX-lite assessment done) | | | | |
| Related-party register (disclosed, arm's-length) | | | | |
| Entity/legal structure (clean for acquisition) | | | | |
| Employment agreements (key employee retention) | | | | |

**Overall exit readiness:** 🟢 Ready / 🟡 Close with actions / 🔴 Significant work needed before process
**Estimated time to exit-ready:** [N months]

---

## Value Maximization Actions (12-24 months before exit)

| Action | Value impact | Owner | Timeline |
|--------|------------|-------|---------|
| [Revenue action: expand referral network / add provider] | +$[X]M revenue → +$[X]M exit value | CEO | [Date] |
| [Margin action: reduce billing lag → improve EBITDA] | +[X]% margin → +$[X]M exit value | CFO/Controller | [Date] |
| [Risk reduction: resolve open compliance gap] | -[X]% buyer discount → +$[X]M exit value | Dr. Lewis | [Date] |
| [Management depth: hire VP Operations] | Remove key person risk → +$[X]M exit value | CEO | [Date] |

---

## Exit Process Timeline

| Milestone | Target date | Owner |
|----------|------------|-------|
| Exit readiness complete | [Date] | Dr. Lewis |
| Banker/advisor selection (if using) | [Date] | Matt Mathison |
| CIM prepared | [Date] | Dr. Lewis + banker |
| First round — teaser to buyer universe | [Date] | Banker |
| IOI deadline | [Date] | |
| Management presentations | [Date] | CEO + Matt Mathison |
| LOI selection | [Date] | Matt Mathison |
| Due diligence | [Date range] | Dr. Lewis + banker |
| Purchase agreement negotiation | [Date range] | Attorney |
| Target close | [Date] | |

---

## Matt Mathison Brief

[Company] exit plan: Target exit [Q/Year] via [strategic/financial] sale. Buyer universe: [N] strategic + [N] PE buyers. Projected MOIC: [X]× / IRR: [X]% at [X]× EBITDA exit multiple. Exit readiness: [🟢/🟡/🔴] — [Key gap or "Ready"]. Value creation actions before exit: [Top 2 specific items]. LP return estimate: $[X]M distribution. Next milestone: [Specific — exit readiness complete by [Date] / process launch [Date]].
```

## Output Contract
- Exit planning starts at entry — the investment thesis written at acquisition should include the exit hypothesis (to whom, at what multiple, at what scale); Dr. Lewis maintains the exit hypothesis in the investment thesis document (strategy-investment-thesis) and updates it annually; exits that are planned late are rushed and leave value on the table; exits planned early are executed at the optimal time with the right buyer
- Exit readiness gaps discovered in diligence kill value — a buyer's due diligence team that finds an open OCR investigation, a related-party transaction that wasn't disclosed, or 3 years of bookkeeper-level (unreviewed) financials will either walk away or reprice the deal at a discount greater than the cost of fixing those issues before the process started; Dr. Lewis maintains an exit readiness checklist year-round (rc-compliance-ops-review) so that when the exit window opens, no remediation is required under time pressure
- The buyer universe must be real and specific, not generic — "strategic buyers" is not a buyer universe; "Envision Healthcare, Privia Health, and Catalyst Health Network are the three MSO consolidators most active in Arizona who have explicitly targeted the Scottsdale/Tempe corridor" is a buyer universe; the specificity of the buyer universe determines the quality of the exit process; Dr. Lewis maintains a live buyer universe document that is updated at least annually
- HITL required: Dr. Lewis produces exit plan and maintains readiness assessment; Matt Mathison reviews and approves exit strategy and timeline; Matt Mathison manages banker and buyer relationships directly; attorney for purchase agreement, reps & warranties, and any regulatory approvals; no contact with prospective buyers without Matt Mathison approval; exit decision is Matt Mathison's

## System Dependencies
- **Reads from:** Financial statements (QuickBooks), compliance readiness (rc-compliance-ops-review), investment thesis (strategy-investment-thesis), M&A market data (strategy-market-analyzer), buyer universe research, attorney guidance on entity structure
- **Writes to:** Exit plan document (SharePoint/Strategy/<Company>/Exit/); exit readiness tracker; value maximization action list; CIM data room (strategy-data-room-builder); Matt Mathison exit brief; LP distribution projections (lp-financial-report)
- **HITL Required:** Dr. Lewis produces and maintains; Matt Mathison approves strategy and timeline; attorney for all legal documents; Matt Mathison manages buyer relationships; no buyer contact without Matt Mathison approval

## Test Cases
1. **Golden path:** Allevio 18-month exit planning → Matt Mathison asks Dr. Lewis to assess Allevio's exit readiness for a potential 2028 strategic sale; Dr. Lewis runs the exit readiness checklist: financial statements — CPA-reviewed ✅; EBITDA quality — 22% margin, minimal addbacks ✅; customer (patient) concentration — distributed across payer mix ✅; HIPAA — OCR audit-ready per rc-compliance-ops-review ✅; OIG LEIE — current ✅; no open regulatory actions ✅; key person — practice manager is critical but succession documented ✅; contracts — physician employment agreements 2-year terms ✅; gap: no formal SOPs for clinical processes (buyer will want operational documentation); action: Dr. Lewis builds SOP library by Q2 2027; exit readiness: 🟡 Close — 2 actions in 6 months; value creation focus: add 1.5 providers to grow EBITDA to $520K (from $380K current) → at 8× EBITDA: exit value $4.16M vs. $3.04M today; buyer universe: HealthiNation MSO (AZ-active), Unified Women's Healthcare (primary care expansion), Optum (AZ presence); target process start: Q3 2027; Dr. Lewis presents exit plan to Matt Mathison; approved
2. **Edge case:** An unsolicited buyer reaches out to the Allevio CEO directly — they want to acquire Allevio → The CEO should not engage substantively without Matt Mathison's direction; Dr. Lewis is notified; CEO says interest exists but we're not in a formal process; Dr. Lewis updates exit plan: if this buyer is credible, the unsolicited expression means the strategic sale buyer universe is validated; Matt Mathison is notified immediately; decision: (1) engage and test price/terms (may accelerate exit timeline if the price is right), or (2) acknowledge interest but defer to planned 2028 process; Matt Mathison makes the decision; Dr. Lewis supports with rapid exit readiness assessment update and preliminary valuation estimate; CEO does not provide financials or commit to any process without Matt Mathison approval
3. **Adversarial:** CEO wants to hire an investment banker immediately even though exit is 3 years out → Bankers hired 3 years before exit burn management time, create process fatigue, and sometimes accelerate exits before the company has maximized value; Dr. Lewis recommends: build the relationship with 2-3 bankers now (quarterly calls, stay-in-touch), formalize the engagement 12 months before the target process launch; if the CEO wants help now, the action is to engage a banker for limited advisory work (exit readiness review, buyer universe intelligence) rather than a full mandate; Matt Mathison decides the timing; Dr. Lewis provides the recommendation and the rationale

## Audit Log
Exit plans retained permanently (PE portfolio history). Exit readiness assessments retained annually. Matt Mathison approval records retained. Buyer universe documents retained. Process materials (CIM, data room index) retained permanently. LP distribution projections retained.

## Deprecation
Retire when MBL develops a dedicated M&A/corporate development function with an exit management process — with Dr. Lewis maintaining the compliance and operational components of exit readiness while the M&A team manages the process and buyer relationships.
