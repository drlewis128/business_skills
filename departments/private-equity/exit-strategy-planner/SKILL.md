---
name: exit-strategy-planner
description: "Plan the exit strategy for a portfolio company. Use when the user says 'exit strategy', 'exit planning', 'when should we sell', 'exit timing', 'who would buy this', 'exit process', 'how to sell the company', 'strategic vs. PE buyer', 'sell-side process', 'exit readiness', or 'prepare for exit'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--horizon <1year|2year|3year>] [--mode <planning|readiness|process>]"
---

# Exit Strategy Planner

Plan the exit strategy for a MBL portfolio company — the timing, buyer universe, process structure, and readiness requirements. In PE, the exit is the moment when value is realized. A poorly timed or poorly structured exit destroys returns that took years to build. Exit planning should begin at acquisition and be revisited annually — not scrambled together 90 days before launch.

## When to Use
- Annual portfolio review — is Allevio/HIVE/Column6 exit-ready?
- 12-18 months from target exit — begin formal exit preparation
- Matt Mathison asks "when should we think about selling X?"
- An unsolicited inbound offer received — assess vs. planned exit
- Hold period is extending beyond plan — re-evaluate exit options

## Exit Strategy Framework

```
Exit options for PE-backed companies:

1. Strategic sale (most common for MBL portfolio scale):
   Buyer: Corporate acquirer — larger company in same or adjacent sector
   Premium: Highest — strategic pays for synergies (revenue + cost)
   Process: Banker-run M&A process or proprietary deal
   Timeline: 4-9 months from launch to close
   Best for: Companies with clear strategic value to a larger player

2. PE-to-PE sale (secondary buyout):
   Buyer: Another PE fund
   Premium: Lower than strategic — PE buyer also needs to make returns
   Process: Controlled auction or bilateral deal
   Timeline: 3-6 months
   Best for: Companies that still have PE value creation runway; not yet strategic-sale-ready

3. Management buyout (MBO):
   Buyer: Existing management team, usually with PE backing
   Premium: Lowest — management has informational advantage
   Process: Negotiated; requires management to secure financing
   Best for: Management team with strong desire for ownership; seller motivated by continuity

4. Recapitalization (partial exit):
   MBL takes cash out by having the company take on debt; retains equity
   Premium: N/A — MBL stays as owner
   Process: Debt financing from banks/private credit
   Best for: Company not ready for full exit but MBL wants to return some capital
   Risk: Adds leverage to the portfolio company

5. IPO (rarely applicable at MBL's portfolio company scale):
   Public offering; requires $50M+ revenue and institutional quality
   Timeline: 12-18 months; very expensive
   Best for: Exceptional growth companies; not typical for MBL portfolio
```

## Output Format

```markdown
# Exit Strategy Plan — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis | **Reviewed by:** Matt Mathison
**Investment date:** <date> | **Target exit:** <Year/Quarter>
**Entry multiple:** X× | **Entry EBITDA:** $X | **Entry EV:** $X
**Current EBITDA:** $X | **Current EV estimate:** $X | **Current MOIC:** X.×

---

## Exit Readiness Assessment

| Factor | Status | Gap | Action to close gap |
|--------|--------|-----|-------------------|
| EBITDA at target level | ✅ / ⚠️ / ❌ | $X short | [Action] |
| Revenue quality (recurring %) | ✅ / ⚠️ / ❌ | X% recurring (target X%) | [Action] |
| Customer concentration | ✅ / ⚠️ / ❌ | Top customer X% (target <20%) | [Action] |
| Management team completeness | ✅ / ⚠️ / ❌ | CFO role unfilled | Hire CFO (in process) |
| Financial reporting quality | ✅ / ⚠️ / ❌ | Still on QuickBooks | Upgrade before exit |
| EBITDA adjustments (add-backs) | ✅ / ⚠️ / ❌ | $X in defensible add-backs | Document all one-time items |
| Compliance (HIPAA/regulatory) | ✅ / ⚠️ / ❌ | BAA gaps identified | Remediate before exit |
| Customer contracts (multi-year) | ✅ / ⚠️ / ❌ | X% month-to-month | Convert to 1-year contracts |
| IP / systems documented | ✅ / ⚠️ / ❌ | Tribal knowledge | Document key processes |

**Overall exit readiness:** ✅ Ready / ⚠️ Near-ready (X months to close gaps) / ❌ Not ready (X+ months)

---

## Buyer Universe

### Strategic Buyers (Primary Target)

| Buyer | Type | Rationale | Est. premium | Approach |
|-------|------|-----------|-------------|---------|
| [Large health system] | Strategic | Add Allevio clinical capabilities to their network | X× EBITDA (synergy premium) | Via banker |
| [Healthcare PE with platform] | PE/Strategic | Allevio as add-on to existing healthcare platform | X× EBITDA | Direct or banker |
| [National MSO chain] | Strategic | Geographic expansion — Allevio's markets are new to them | X× EBITDA | Via banker |

### PE Buyers (Secondary)

| Buyer | Type | Rationale | Est. price | Approach |
|-------|------|-----------|-----------|---------|
| [Healthcare-focused PE] | PE | Healthcare services roll-up strategy | X× EBITDA | Direct or banker |
| [Mid-market PE generalist] | PE | EBITDA profile fits their investment criteria | X× EBITDA | Via banker |

**Preferred buyer type:** Strategic — expected to pay X× vs. PE X× = $X premium

---

## Exit Valuation Range

| Scenario | EBITDA (at exit) | Multiple | Enterprise Value | LP Proceeds | LP MOIC | LP IRR |
|---------|----------------|---------|----------------|------------|---------|--------|
| Bear | $X | X× | $X | $X | X.× | X% |
| Base | $X | X× | $X | $X | X.× | X% |
| Bull | $X | X× | $X | $X | X.× | X% |

**Debt at exit:** $X (assumed fully paid down / $X outstanding)
**Net equity proceeds:** $X – $X
**Base case target: $X equity proceeds → X.× net MOIC / X% net IRR**

---

## Exit Process Design

### Option A: Banker-Run Auction (recommended for strategic sale)
- **Timeline:** 5-7 months from mandate to close
- **Phase 1:** Banker selection + CIM preparation (6 weeks)
- **Phase 2:** First-round marketing to 15-25 strategic + PE buyers (4 weeks)
- **Phase 3:** Management presentations + indicative bids (4 weeks)
- **Phase 4:** Final bids + exclusivity (2 weeks)
- **Phase 5:** Diligence + negotiation (8 weeks)
- **Phase 6:** Close
- **Cost:** 1-2% of transaction value (success fee)

### Option B: Proprietary Sale (bilateral with strategic)
- **Timeline:** 3-5 months
- **Lower cost:** No banker success fee; relies on MBL relationships
- **Risk:** Less competitive pressure → potentially lower price
- **Use when:** Strategic buyer already identified via relationship; or deal is highly sensitive

---

## Pre-Exit Action Plan (12-18 Month Timeline)

| Month | Action | Owner | Priority |
|-------|--------|-------|---------|
| Now | Assess exit readiness (this report) | Dr. Lewis | High |
| Month 1-3 | Close gaps (CFO hire, contract cleanup, compliance) | Dr. Lewis + Mgmt | High |
| Month 3-6 | Financial statement audit (if not already done) | External auditors | High |
| Month 6-9 | Begin banker conversations; select banker | Matt Mathison | High |
| Month 9-12 | CIM preparation; data room setup | Dr. Lewis + banker | High |
| Month 12 | Launch process | Matt Mathison + banker | High |
| Month 17-19 | Target close | All | — |

---

## Matt Mathison Summary

**Exit readiness for <Entity>: X months to exit-ready.** Biggest gap is [primary gap] — this takes X months to close. Target exit window: [Quarter Year]. Buyer universe: [strategic is preferred; X× EBITDA expected vs. X× from PE]. Base case exit proceeds: $X → X.× net MOIC on our $X investment. To meet this timeline, we need to: [1-2 specific actions Matt Mathison should know about / approve].
```

## Output Contract
- Exit readiness always assessed before timeline — exit readiness gaps determine how much time is needed before launch; don't set a timeline before knowing the gaps
- Strategic vs. PE buyer premium always quantified — the difference between strategic and PE pricing is the single biggest lever in exit planning; always show the math
- Pre-exit action plan always includes specific milestones — "prepare for exit" is not a plan; show the exact 12-18 month action sequence
- HITL required: Dr. Lewis builds the plan; Matt Mathison approves exit timing and process; banker selection requires Matt Mathison; LOI acceptance requires Matt Mathison; exclusivity grant requires Matt Mathison; purchase agreement signing requires Matt Mathison + legal; LP notification of exit process per LP Agreement
- No deal communication with potential buyers without Matt Mathison direction

## System Dependencies
- **Reads from:** Investment thesis, value creation tracker, portfolio company financials, LP Agreement (exit notification requirements)
- **Writes to:** Exit strategy document (SharePoint/Portfolio/<Company>/Exit Strategy); pre-exit action plan; investment committee update for Matt Mathison
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves all key decisions; banker selection, LOI, exclusivity, and close all require Matt Mathison + legal; LP notification per LP Agreement

## Test Cases
1. **Golden path:** Allevio exit planning, 18-month horizon → Exit readiness: CFO hired, financial audit completed, customer contracts 80% multi-year, HIPAA compliance clean; Buyer universe: 3 strategic (national health systems), 2 PE healthcare platforms; Exit EBITDA: $X; Target multiple: 8× strategic vs. 6× PE; Base case: $X proceeds, 2.8× MOIC; Process: banker-run auction starting in 9 months; pre-exit actions: 3 items, all on track; Matt Mathison: approve timeline and begin banker conversations
2. **Edge case:** Unsolicited inbound offer from strategic buyer at 6× EBITDA, below the estimated 8× from a full process → do not accept immediately; use the inbound to validate market interest; request a detailed LOI; assess whether a full banker-run process would likely yield more; the cost of running a 5-month auction process (banker fees, management distraction) vs. the premium gap ($X at 8× vs. $X at 6×); Matt Mathison decides; most often: run the process — the premium gap usually exceeds the process cost
3. **Adversarial:** Management team lobbies for an MBO — they want to buy the company themselves → evaluate on the merits: what's their financing plan? at what price? MBO price is typically below strategic sale; if MBO price leaves returns on the table vs. a competitive process, the LP obligation is to pursue maximum value; MBO can proceed only if management can match or approach market value, or if a competitive process has already been run and management is the best bid; never accept MBO without testing the market

## Audit Log
Exit strategy plans retained by version. Pre-exit action plan tracked quarterly. Banker conversations documented. LOI and purchase agreement in fund deal files. LP notification of exit per LP Agreement.

## Deprecation
Retire when MBL has a dedicated M&A/exit team with formalized exit planning process and investment committee that manages this function.
