---
name: strategy-m-and-a-screener
description: "Screen M&A acquisition targets against investment criteria. Use when the user says 'M&A screening', 'acquisition screening', 'evaluate an acquisition', 'acquisition target', 'acquisition criteria', 'deal screening', 'screen this company', 'should we acquire', 'acquisition fit', 'M&A candidate', 'tuck-in acquisition', 'add-on acquisition', 'strategic acquisition', 'buy-side screening', or 'acquisition analysis'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--target <company name>] [--entity <acquiring entity>] [--type <strategic|financial|tuck-in|platform>] [--stage <screen|deep-dive|IOI>]"
---

# M&A Screener

Screen potential acquisition targets for MBL portfolio companies — rapidly assessing whether a target meets the investment criteria for a strategic, financial, or tuck-in acquisition before committing significant due diligence resources. At PE portfolio scale, most acquisition ideas fail the initial screen; the screener's job is to eliminate the non-starters fast and identify the opportunities worth pursuing. A screen is not a due diligence — it is a structured hypothesis that the opportunity is real enough to investigate further.

## When to Use
- A business owner approaches about selling — does it merit a conversation?
- Proactive deal sourcing — evaluating targets in a scan
- Matt Mathison asks about a specific company: "What do you think about acquiring X?"
- A broker sends a CIM — quick screen before deciding to engage
- Inbound referral from a lender, attorney, or accountant

## Screening Framework

```
MBL acquisition screening criteria:

STRATEGIC FIT:
  Thesis alignment: Does this acquisition advance the existing investment thesis for the acquiring entity?
  Synergy hypothesis: Where does the 1+1>2 math come from? (Revenue synergies / Cost synergies / Market access)
  Capability gap fill: Does the target provide capabilities the acquirer lacks and can't easily build?
  Geographic expansion: Does it extend reach into a complementary market?
  Anti-thesis signals: Acquisitions that diversify away from the core thesis dilute management focus and PE return profile
  
FINANCIAL PROFILE:
  Revenue: Size, growth rate, and quality (recurring vs. project; diversified vs. concentrated)
  EBITDA margin: Current margin and path to expansion; PE minimum typically ≥10% for platform; tuck-ins can be negative if synergized
  Revenue concentration: Top customer > 25% = risk flag; > 40% = near-disqualifier without mitigation
  Working capital: Days sales outstanding, inventory dynamics, cash conversion cycle
  CapEx intensity: Asset-heavy vs. asset-light affects cash generation and returns
  Debt: Existing debt structure and whether it survives an acquisition
  
VALUATION RANGE:
  PE standard: EV/EBITDA multiples by sector; healthcare services 6-10×; oil & gas 3-5×; SaaS/media 5-15×
  Entry price check: At what EBITDA multiple does this create value vs. MBL return thresholds?
  IRR gate: ≥20% IRR at 5-year hold with realistic assumptions is the MBL minimum
  
OPERATIONAL AND REGULATORY:
  Management team: Will key operators stay? Is there key person concentration?
  Customer relationships: Are they with the company or the owner?
  Regulatory: Healthcare — licenses, HIPAA, OIG standing; O&G — permits, environmental; Media — contract terms
  Integration complexity: How hard is it to integrate this into the existing platform?
  
TIMING AND PROCESS:
  Seller motivation: Why now? (Retirement, liquidity, distress, competitive pressure)
  Process: Proprietary or banker-run? Proprietary = better pricing; process = competitive = pay up or exit
  Exclusivity: Can we get exclusivity before spending on diligence?
  Timeline: Urgency is a warning sign; rushed acquisitions miss problems
  
Acquisition types at MBL:
  Platform acquisition: Standalone entity to be built into a new portfolio company
  Tuck-in / add-on: Bolt into an existing portfolio company (e.g., additional physician practice into Allevio)
  Strategic asset: IP, customer base, or team being absorbed into existing operations
```

## Output Format

```markdown
# M&A Acquisition Screen — [Target Company]
**Acquirer:** [Company / MBL Partners] | **Date:** [Date]
**Analyst:** Dr. John Lewis | **Acquisition type:** [Tuck-in / Platform / Strategic asset]
**Screen stage:** [Initial / Indicative / Pre-LOI]
**Recommendation:** ✅ PURSUE / ⚠️ CONDITIONAL / ❌ PASS

---

## Target Overview

**Company:** [Name] | **Location:** [City, State]
**Business description:** [2-3 sentences: what they do, who they serve, how they make money]
**Revenue (LTM):** $[X] | **EBITDA (LTM):** $[X] ([X]% margin)
**Revenue growth (2yr):** [X]% CAGR | **Employees:** [N]
**Owner:** [Founder-owned / PE-backed / Family] — [Seller motivation if known]

---

## Screen Scorecard

| Criterion | Score (1-5) | Assessment | Flag |
|----------|------------|-----------|------|
| Thesis alignment | [Score] | [One sentence] | |
| Financial quality (margin, growth, recurring) | [Score] | | |
| Valuation (at likely ask price) | [Score] | $[X]M estimated; [X]× EBITDA | |
| Customer concentration | [Score] | [Top customer = X%] | ⚠️ if >25% |
| Management / key person risk | [Score] | | |
| Regulatory / operational risk | [Score] | | |
| Integration complexity | [Score] | | |
| Seller process / timing | [Score] | [Proprietary / banker / competitive] | |
| **Overall** | **[Avg]** | | |

**Score key:** 5 = Strong positive; 3 = Neutral; 1 = Significant concern; 2+ FAILs = Pass

---

## Thesis Alignment

**How this advances [Acquirer] thesis:** [Specific — patient volume addition / production increase / revenue synergy]
**Synergy hypothesis:** [Revenue: how? Amount? Timeline?] [Cost: which lines? Amount?]
**Risk to thesis:** [What could make this acquisition thesis-dilutive?]

---

## Financial Assessment

| Metric | Target | MBL benchmark | Assessment |
|--------|--------|-------------|-----------|
| Revenue LTM | $[X] | N/A | |
| EBITDA margin | [X]% | ≥10% platform | 🟢/🟡/🔴 |
| Revenue growth | [X]% | ≥10% preferred | |
| Top customer concentration | [X]% | <25% | 🟢/🟡/🔴 |
| Estimated EV/EBITDA | [X]× | 6-10× healthcare | |
| IRR at [X]× entry | [X]% | ≥20% | 🟢/🟡/🔴 |

---

## Key Risks

1. [Risk 1 — specific, with probability assessment]
2. [Risk 2]
3. [Risk 3 — must-verify in diligence if pursuing]

---

## Recommendation

**Decision:** ✅ PURSUE — [Specific next step: reach out; engage broker; request CIM; schedule management meeting]
**OR** ⚠️ CONDITIONAL — [What needs to be true: valuation below $X; key person agrees to stay; regulatory clear]
**OR** ❌ PASS — [Primary reason: wrong thesis; price too high; regulatory risk; customer concentration]

**If pursuing:** [Specific next steps — who reaches out, what we ask for, what we don't disclose yet]

---

## Matt Mathison Brief

[Target] acquisition screen: [Recommend: Pursue / Conditional / Pass]. Revenue $[X]M, EBITDA $[X]M ([X]%), estimated ask $[X]M ([X]× EBITDA). IRR at ask: [X]% — [above/below] MBL threshold. Thesis alignment: [Strong/Moderate/Weak]. Key risk: [One sentence]. Next step: [Specific — reach out / decline / request terms].
```

## Output Contract
- The screen protects diligence capital, not just time — conducting full due diligence costs $50,000-$200,000 in legal, financial, and operational advisory fees plus significant management distraction; the screen's job is to eliminate opportunities that would fail diligence before spending those resources; a screen that passes everything through is worthless; Dr. Lewis applies the threshold scoring rigorously and recommends Pass on roughly half of screened opportunities
- Seller motivation is one of the most important data points — why is this seller selling now? Retirement is low risk; liquidity event at company peak is neutral; distress is a signal of hidden problems; competitive pressure is a warning that the market is moving against the business; the seller's motivation shapes how to interpret every other data point in the screen; Dr. Lewis investigates seller motivation before spending time on financial analysis
- The valuation check must include the return math, not just the multiple — saying "they're asking 8× EBITDA" is not a valuation assessment; "at 8× EBITDA with $2M of identified synergies and a 5-year hold, we achieve 22% IRR at a 7× exit multiple" is a valuation assessment; Dr. Lewis runs the return math (even roughly) in every screen that survives the qualitative filters; no deal gets to Matt Mathison without a return estimate
- HITL required: Dr. Lewis produces the screen; CEO reviews for operational fit assessment; Matt Mathison receives all screens rated "Pursue" or "Conditional" — he decides whether to proceed; attorney engaged if moving to LOI; no expressions of interest or LOIs without Matt Mathison approval

## System Dependencies
- **Reads from:** CIM (if available), public information, referral source knowledge, financial benchmarks (QuickBooks comparable data), existing investment theses (strategy-investment-thesis), deal flow database (strategy-deal-flow-manager)
- **Writes to:** Deal screen memo (SharePoint/Strategy/DealFlow/<Target>/Screen/); deal pipeline (strategy-deal-flow-manager); Matt Mathison deal brief; attorney engagement log if proceeding
- **HITL Required:** Dr. Lewis screens; CEO reviews operational fit; Matt Mathison approves all Pursue/Conditional recommendations and all next steps; attorney for any LOI or exclusivity agreement

## Test Cases
1. **Golden path:** A practice management consultant refers a 4-provider physical therapy practice in Scottsdale — the owner is retiring → Screen: Revenue $820K, EBITDA $145K (17.7% margin), no debt, 2 payers represent 65% of revenue (concentration flag), owner/therapist plans 2-year transition; thesis alignment: healthcare services + AZ geography = strong thesis fit for Allevio tuck-in; valuation estimate: owner wants $1.1M (7.6× EBITDA); IRR at $1.1M with Allevio integration: 24% at 5-year hold (Allevio overhead absorption reduces true cost, existing referral network accelerates volume); key risk: 65% payer concentration and owner-practitioner transition dependency; recommendation: Conditional — pursue if (1) owner commits to 2-year transition and (2) payer concentration is verified as long-term contracts (not year-to-year); Dr. Lewis reaches out to the referral source for an introduction; Matt Mathison briefed and approves proceeding to conversation
2. **Edge case:** A broker sends a CIM on a 3-location HVAC company in Colorado — it generates strong cash flow → Screen: Revenue $4.2M, EBITDA $840K (20%), no debt; thesis alignment: ❌ MBL portfolio thesis is healthcare, oil & gas, CTV/media; HVAC is off-thesis; no platform acquirer in MBL portfolio would benefit; diversification away from portfolio thesis is a negative for LP returns; pass; Dr. Lewis sends a one-sentence decline to the broker; does not spend time on financial analysis; thesis misalignment at the screen stage is a fast pass
3. **Adversarial:** CEO of Allevio wants to acquire a competing practice because "they have a great location" → Location is a factor, not a thesis; Dr. Lewis runs the screen and discovers: the competing practice has a dominant payer who is 72% of revenue and has announced leaving the network in 6 months; the location is excellent but the practice is about to lose its economic engine; this is a distress acquisition dressed as a strategic one; recommendation: Pass unless payer contract is resolved (which changes the price dramatically); Dr. Lewis presents this to the CEO and Matt Mathison — the enthusiasm for the location doesn't survive the financial reality

## Audit Log
All deal screens retained permanently (PE portfolio history). Pursue/Pass decisions and rationale retained. Matt Mathison approvals retained. Attorney engagement records retained. Deal pipeline log updated for all screened targets.

## Deprecation
Retire when MBL develops a dedicated M&A/corp dev function with deal analysts — with Dr. Lewis reviewing screens for thesis alignment and Matt Mathison receiving the same executive brief regardless of who produces the underlying analysis.
