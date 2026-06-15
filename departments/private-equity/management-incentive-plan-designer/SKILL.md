---
name: management-incentive-plan-designer
description: "Design management equity and incentive plans for PE portfolio companies. Use when the user says 'management incentive plan', 'MIP', 'management equity', 'equity for management', 'management rollover', 'sweet equity', 'phantom equity', 'option plan', 'management carve-out', 'align management', or 'management incentives for portfolio company'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--type <equity|phantom|options|rollover>] [--pool-size <percent>]"
---

# Management Incentive Plan Designer

Design the management incentive plan (MIP) for a PE portfolio company — the equity or phantom equity structure that aligns management with PE sponsor return objectives. A well-designed MIP aligns management to create enterprise value (same as PE sponsor), retains key executives through the hold period, and rewards performance above return hurdles. A poorly designed MIP misaligns incentives and creates relationship friction at exit.

## When to Use
- New portfolio company acquisition — design MIP at close or within 60 days
- Key executive hire — need equity package to attract talent
- Existing management wants to renegotiate their equity
- Pre-exit — confirm MIP terms are clear and agreed before sale process
- Matt Mathison asks "what equity should we give the CEO?"

## MIP Structure Options

```
1. Real Equity (most common in PE):
   Management buys or receives equity at a discount to sponsor entry price
   Management co-invests alongside PE sponsor; has real skin in the game
   Tax: Capital gains on exit (if structured correctly)
   Pro: Strongest alignment; management has real money at risk
   Con: Management must purchase equity (if co-investment required)

2. Rollover Equity:
   Existing owner-manager rolls some sale proceeds back into the deal as equity
   Continues as shareholder alongside PE sponsor
   Pro: Signals confidence; alignment from day 1; tax-deferred rollover possible
   Con: Management keeps risk; must believe in the deal thesis

3. Phantom Equity / Appreciation Rights:
   Contractual right to receive cash equal to a % of equity appreciation
   No actual equity ownership; treated as compensation (ordinary income)
   Pro: Simple; no capital required from management; no complex securities
   Con: Taxed as ordinary income at exit (not capital gains); limited alignment signal

4. Stock Options / SARs:
   Option to purchase equity at a strike price (typically fair market value at grant)
   Value = appreciation above strike price
   Vesting: Typically 3-5 year schedule (time-based or performance-based)
   Pro: No upfront capital; familiar structure
   Con: Ordinary income risk if not structured correctly; dilution tracking required

5. Profits Interest (LLC / LP structures):
   Grant of a profits interest in the company LLC/LP (value above a threshold)
   Tax-efficient: capital gains at exit if structured correctly under IRS guidance
   Most common in PE-backed LLCs
   Pro: Tax-efficient; aligns on value creation above hurdle; no immediate tax
   Con: Complexity; requires proper IRS compliance (409A equivalent for LLC)
```

## Output Format

```markdown
# Management Incentive Plan — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis | **Reviewed by:** Matt Mathison + Tax/Legal Counsel
**Entity:** <Allevio / HIVE / Column6>
**MIP type:** [Real equity / Phantom equity / Profits interest / Options]
**MIP pool size:** X% of fully diluted equity
**Beneficiaries:** [CEO / CEO + CFO / CEO + 3 key executives]

---

## Business Context

**Why this MIP matters:**
- [Company] is an owner-operator business; [CEO] has been running it for X years
- We need [CEO] to stay through the exit (critical; buyer will price this in)
- [Key executive] is essential to executing the AI/automation initiative
- Without equity alignment, management may not be motivated to grow enterprise value

---

## MIP Design

### Pool Size and Allocation

| Role | % of MIP pool | % of total equity | Rationale |
|------|-------------|-----------------|----------|
| CEO | X% | X% | Most critical; largest value creation lever |
| CFO | X% | X% | Financial leadership for M&A readiness |
| VP Operations | X% | X% | Operational execution |
| [Other key exec] | X% | X% | [Reason] |
| Unallocated (for future hires) | X% | X% | Reserve for Yr 2 hires |
| **Total MIP pool** | **100%** | **X%** | |

---

### Vesting Schedule

**Vesting type:** Time-based / Performance-based / Hybrid (recommended)

**Time vesting (X% of MIP pool):**
- 25% vest at 12 months (cliff)
- Then X%/month thereafter over 36 months
- 100% vest at 4 years
- Accelerated vesting on exit: 100% on sale of company

**Performance vesting (X% of MIP pool — performance-based):**
| Milestone | Vesting event | % of performance pool |
|----------|--------------|----------------------|
| EBITDA reaches $X | Upon achievement | X% |
| New clinic opens + profitable | Upon achievement | X% |
| CFO hired + reporting upgraded | Upon achievement | X% |
| Exit at ≥ X× MOIC | At exit | X% |

**Acceleration on exit:** ✅ Full acceleration (all unvested equity vests on qualifying exit)
**Good leaver / Bad leaver provisions:** [Summary of treatment]

---

### Economics at Exit

**At entry:**
- PE sponsor equity: X% (after MIP dilution)
- Management MIP pool: X% (fully diluted)
- [Rollover equity: X% if applicable]

**Return scenarios at exit:**

| Exit EV | Exit equity | CEO share (X%) | All management (X%) | PE sponsor (X%) |
|--------|------------|--------------|--------------------|-----------------| 
| $X (X× MOIC) | $X | $X | $X | $X |
| $X (X× MOIC) | $X | $X | $X | $X |
| $X (X× MOIC) | $X | $X | $X | $X |

---

### Waterfall (if MIP has a hurdle)

**Hurdle structure (common for profits interest):**
- MIP has no value below X× MOIC (protects PE sponsor's preferred return)
- MIP participates in upside above X× MOIC
- Rationale: Management earns equity only if PE sponsor achieves target return

| Total equity value | PE sponsor gets | Management MIP gets |
|-------------------|----------------|-------------------|
| < $X (below hurdle) | 100% | $0 |
| $X to $X (above hurdle) | X% | X% |
| > $X | X% | X% |

---

### Key MIP Terms

| Term | Value | Notes |
|------|-------|-------|
| MIP type | Profits interest / Equity / Phantom | |
| Grant date | <date> | |
| Grant value / FMV at grant | $X | Per unit value at grant (for options/PU) |
| Vesting period | X years | Time-based; performance kickers |
| Cliff | X months | |
| Acceleration on exit | Yes — 100% on qualifying exit | |
| Good leaver treatment | Keep vested; unvested forfeited | |
| Bad leaver treatment | All equity forfeited (or at cost) | |
| Drag-along | Yes — management must sell when PE sells | |
| Tag-along | Yes — management may sell alongside PE in a sale | |
| Non-compete | X years post-exit in [geography/sector] | |
| Non-solicitation | X years post-exit | |

---

## Tax and Legal Notes

*IMPORTANT: MIP design has significant tax implications — management should have independent tax counsel review. The below is structural guidance, not tax advice.*

**Profits interest:**
- IRS Rev. Proc. 93-27: Profits interest generally not taxable at grant if value at grant = $0
- Requires "safe harbor" grant at or above current FMV threshold
- Exit proceeds: Capital gains (not ordinary income) if held > 1 year
- Requires proper valuation at grant date

**Phantom equity:**
- Treated as compensation at payout — ordinary income
- No capital required; simple structure
- Less valuable than real equity post-tax for high earners

**409A valuation:**
- Required for stock options in C-corps
- Not required for LLC profits interests (but best practice to document)
- If grants are above FMV: immediate ordinary income + penalties

---

## Implementation Checklist

- [ ] Matt Mathison approves MIP structure
- [ ] Tax and legal counsel reviews plan documents
- [ ] 409A valuation or profits interest valuation completed
- [ ] MIP plan document drafted by counsel
- [ ] Individual grant agreements executed by each participant
- [ ] Management informed of their grant and economics at various exit scenarios
- [ ] Non-compete and non-solicitation agreements signed
- [ ] MIP terms reflected in shareholder agreement / LLC Agreement
- [ ] Management has had independent legal review of their grant (recommended)
```

## Output Contract
- Exit economics always shown at multiple scenarios — management needs to understand what their equity is worth at various exit outcomes; this builds alignment and realistic expectations
- Hurdle vs. no-hurdle always explicit — a MIP without a hurdle gives management upside even if PE sponsor doesn't hit target returns; this is a negotiating point with real economics
- Tax note always included — MIP design is a tax-driven decision; the skill provides structure, not tax advice; always flag the need for counsel
- Good/bad leaver provisions always defined — the exit circumstances determine what management keeps; this must be agreed upfront, not negotiated at departure
- HITL required: Dr. Lewis designs options; Matt Mathison approves final structure; tax and legal counsel must review and draft documents; management should have independent counsel; grant documents require Matt Mathison signature as GP; no MIP commitments (verbal or written) without Matt Mathison approval

## System Dependencies
- **Reads from:** Cap table (fund accounting), employment agreements, LLC/LP operating agreement, exit scenario analysis
- **Writes to:** MIP design document (SharePoint/Portfolio/<Company>/MIP); cap table (updated); shareholder/LLC agreement amendments
- **HITL Required:** Dr. Lewis designs; Matt Mathison approves structure; tax/legal counsel drafts and reviews; Matt Mathison signs grant documents; management independent counsel recommended

## Test Cases
1. **Golden path:** Allevio CEO MIP at acquisition → Rollover: CEO rolls $500K of $3M proceeds back into deal (17% equity); MIP pool: 10% additional for 3 key executives; CEO additional: 5% profits interest (above 2× MOIC hurdle); CFO hire: 3% profits interest vesting 4 years; all accelerate on exit; economics at 3× MOIC: CEO total $X; CFO: $X; PE sponsor: $X; non-compete: 3 years healthcare in Arizona; tax counsel confirms profits interest structure is Rev. Proc. 93-27 compliant; grant documents executed at closing
2. **Edge case:** A key VP leaves the company 2 years into the MIP (voluntarily, in good standing) — they are a "good leaver" → per the good leaver provision, vested equity is retained (2 years = 50% vested per the schedule); unvested equity is forfeited; the company has the right (but not obligation) to buy back the vested equity at fair market value within X days; this is a standard PE MIP outcome — document it cleanly, honor the agreement, and update the cap table
3. **Adversarial:** CEO demands a much larger MIP pool (20% vs. the proposed 10%) and threatens to not stay through the exit → evaluate the ask vs. market norms (PE management pools typically 10-20%, with 15% common for critical management); if 15% is in market range and the CEO is truly irreplaceable, compromise at 12-15%; however, never give equity under duress without a corresponding commitment — link the larger pool to vesting, performance milestones, and a non-compete that's meaningful; if the CEO is holding the exit hostage, that's a relationship and governance issue that goes beyond MIP design — Matt Mathison involvement is essential

## Audit Log
MIP design documents retained. Grant agreements retained permanently. Cap table updates documented. Matt Mathison approval retained. Tax counsel review retained.

## Deprecation
Retire when MBL has dedicated equity management software (Carta, Shareworks) managing cap tables and MIP documents at portfolio companies.
