---
name: strategy-new-market-analyzer
description: "Analyze a new market entry opportunity — feasibility, entry strategy, and go/no-go recommendation. Use when the user says 'new market', 'market entry', 'enter this market', 'expand into', 'new geography', 'geographic expansion', 'new vertical', 'new customer segment', 'market expansion', 'should we enter', 'go-to-market new', 'expansion analysis', 'new market opportunity', 'expand to', or 'enter the market'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--market <description>] [--type <geography|vertical|segment|channel>]"
---

# New Market Analyzer

Analyze new market entry opportunities for MBL portfolio companies — assessing market attractiveness, entry feasibility, capital requirements, and strategic fit before committing resources. New market entry is one of the highest-risk strategic moves a small company can make: it divides management attention, stretches capital, and introduces operational complexity at the exact moment when the core business still requires maximum focus. At PE portfolio scale, new market entries must meet a high bar: the market must be meaningfully larger than the cost and risk of entering it, the entry must advance the investment thesis, and the timing must not compromise core business performance.

## When to Use
- A portfolio company CEO proposes expanding to a new geography or segment
- Matt Mathison asks about expanding an entity to a new market
- Annual planning — evaluating whether a geographic or vertical expansion is timely
- An acquisition target suggests a new market (the market, not just the company)
- Evaluating telehealth (Allevio), new ad formats (Column6), or new Uinta acreage (HIVE)

## New Market Analysis Framework

```
Entry feasibility analysis:

1. MARKET ATTRACTIVENESS:
   Size: Is the market large enough to justify the investment?
     Minimum viable market (MBL guideline): SAM ≥3× the entry investment required
   Growth: Is the market growing? (entering a declining market requires dominant position to work)
   Competition: Fragmented = opportunity; concentrated = much harder
   Margin profile: Does the market support the target EBITDA margin?
   
2. ENTRY FEASIBILITY:
   Capability transfer: Can our current capabilities translate to this market?
     High transfer = lower risk (Allevio physician model → adjacent geography is high transfer)
     Low transfer = higher risk (Allevio model → dental is low transfer → riskier)
   Capital required: How much does entry cost before first revenue?
   Time to first revenue: How long is the ramp?
   Regulatory complexity: Are there new licenses, permits, or compliance requirements?
   Talent: Can we recruit or transfer talent to operate in the new market?
   
3. COMPETITIVE POSITION IN NEW MARKET:
   Why would we win there? (Not just "it's a good market" — why would we specifically beat incumbents?)
   First-mover advantage: Is there one? Or are incumbents entrenched?
   Brand transferability: Does our brand/reputation carry into the new market?
   
4. TIMING (right time to enter?):
   Prerequisite check: Is the core business model at ≥90% capacity and ≥target margin?
   If no → enter core business first
   Management bandwidth: Does the team have capacity to manage both?
   Capital availability: Is capital available without compromising core business investment?
   
5. ENTRY STRATEGY OPTIONS:
   Organic: Build from scratch in new market — slowest, lowest capital, highest execution risk
   Tuck-in M&A: Acquire an existing player in the target market — faster, more capital
   Partnership: Partner with a local operator — shares risk and reward
   Pilot: Limited presence to test market before full commitment (reduces risk, slower to scale)
   
   MBL preference: Pilot → evaluate → commit (over build → scale)
   
Allevio geographic expansion to Tucson (example analysis):
  Market size: Tucson primary care SAM ~$85M (AZ DHS + CMS data)
  Growth: 5% CAGR — driven by Tucson metro population growth
  Competition: 4 independent MSOs operating in Tucson (fragmented; no dominant player)
  Capability transfer: High — same physician model, same payer relationships
  Entry strategy: Tuck-in acquisition of 1 existing Tucson practice (3-4 providers)
  Capital required: $800K-$1.2M (tuck-in acquisition)
  Time to first revenue: 60 days post-close
  Timing condition: Scottsdale/Phoenix model at ≥90% capacity and ≥18% EBITDA margin
  Current status: Core at 75% capacity and 16.5% EBITDA margin → timing: too early
  Recommendation: Design Tucson expansion plan now; execute when timing conditions are met (target Year 3)
```

## Output Format

```markdown
# New Market Analysis — [Market Name / Geography]
**Entity:** [Company] | **Date:** [Date] | **Analyst:** Dr. Lewis
**Market type:** [Geographic / Vertical / Segment / Channel]

---

## Go / No-Go Summary

| Criterion | Assessment | Rating |
|---------|----------|--------|
| Market attractiveness | [One sentence] | 🟢/🟡/🔴 |
| Capability transfer | [High / Medium / Low] | 🟢/🟡/🔴 |
| Timing (core ready?) | [Ready / Not yet — condition] | 🟢/🟡/🔴 |
| Capital available | [Yes / No / Conditional] | 🟢/🟡/🔴 |
| Competitive position | [Strong / Moderate / Weak] | 🟢/🟡/🔴 |
| Thesis alignment | [Strong / Partial / Misaligned] | 🟢/🟡/🔴 |
| **Recommendation** | **✅ Proceed / ⚠️ Plan now, enter at [trigger] / ❌ Pass** | |

---

## Market Assessment

**SAM:** $[X]M ([Geography/segment]) | **Growth:** [X]% CAGR | **Competition:** [Fragmented/Moderate/Concentrated]
**Margin profile:** [X]% average EBITDA for comparable operators
**Entry investment required:** $[X] | **Time to first revenue:** [N months]

---

## Entry Strategy Options

| Option | Description | Capital | Timeline | Risk | Recommended? |
|--------|------------|---------|---------|------|-------------|
| Tuck-in M&A | Acquire existing [3-provider practice] | $[X]M | 6-9 mo | Low | ✅ Preferred |
| Organic build | Recruit providers and build from scratch | $[X]M | 18-24 mo | High | |
| Partnership | JV with local operator | $[X] | 3-6 mo | Medium | Consider if M&A unavailable |
| Pilot | 1-provider test presence | $[X] | 3-6 mo | Low | Alternative if timing unclear |

**Recommended entry strategy:** [Specific — with rationale]

---

## Timing Assessment

| Condition | Required | Current status | Met? |
|---------|---------|--------------|------|
| Core business capacity | ≥90% | [X]% | ✅/❌ |
| Core EBITDA margin | ≥[X]% | [X]% | ✅/❌ |
| Capital available | $[X]M | $[X]M available | ✅/❌ |
| Management bandwidth | CEO + 1 ops person for new market | [Current team capacity assessment] | ✅/❌ |

**Timing verdict:** [Ready now / Ready when [specific condition] — estimated [date/quarter]]

---

## Financial Model (if proceeding)

| Metric | Year 1 | Year 2 | Year 3 |
|--------|--------|--------|--------|
| Revenue | $[X]K | $[X]K | $[X]K |
| EBITDA | $[X]K | $[X]K | $[X]K |
| Capital invested (cumulative) | $[X]K | $[X]K | $[X]K |
| Payback | — | — | [N months] |
| IRR (3-year) | — | — | [X]% |

---

## Matt Mathison Brief

[Market] entry analysis for [Entity]: Recommendation — [Proceed now / Plan for Year 3 / Pass]. Market: SAM $[X]M, [X]% growth, [fragmented/concentrated]. Entry: [Tuck-in acquisition at $[X]M / Organic / Partnership]. Timing: [Ready / Condition: core at [X]% capacity — currently [X]%]. IRR at target entry: [X]%. Action from Matt Mathison: [None — timing not right / Approve entry strategy and capital / Begin M&A screening in new market].
```

## Output Contract
- The timing condition is a hard gate, not a guideline — if the core business is not at the required capacity and margin thresholds, Dr. Lewis does not recommend new market entry regardless of how attractive the market is; the reason is not conservatism — it is that a company that hasn't mastered its core model should not attempt to replicate it in a new market; the new market entry will draw management attention from the core and risk underexecuting both; Dr. Lewis enforces the timing gate and presents the specific conditions that need to be met before recommending entry
- "We can do both" requires evidence — a CEO who says "we can manage the core and the new market simultaneously" must show how: who manages the new market, what their capacity is, and what in the core market won't get done while they're managing the expansion; if the CEO is the one managing both, that's a key person risk that the analysis surfaces; Dr. Lewis tests the capacity claim rather than accepting it and presents the capacity analysis explicitly in the timing assessment section
- Capital for new market entry comes from the portfolio allocation, not from the entity's cash flow — a tuck-in acquisition for Allevio Tucson requires $800K-$1.2M that comes from MBL's capital pool, not from Allevio's operating EBITDA; the capital allocation analysis (strategy-capital-allocation) runs in parallel with the market entry analysis; if capital is constrained, the market entry may be theoretically attractive but practically unfeasible until capital is available
- HITL required: Dr. Lewis produces the analysis; CEO reviews for operational accuracy (particularly the timing condition assessment); Matt Mathison decides on market entry given capital and thesis implications; any market entry >$100K capital commitment requires Matt Mathison explicit approval; pilot or organic entry <$50K may proceed at CEO authority with Dr. Lewis recommendation

## System Dependencies
- **Reads from:** Market analysis (strategy-market-analyzer), investment thesis (strategy-investment-thesis), competitive intelligence (strategy-competitive-intelligence), capital available (strategy-capital-allocation), core business capacity and margin (QuickBooks + VCP)
- **Writes to:** Market entry analysis (SharePoint/Strategy/<Company>/Markets/); annual strategic plan (if entry is approved for upcoming year); M&A pipeline (strategy-deal-flow-manager — if tuck-in strategy); capital allocation request (strategy-capital-allocation)
- **HITL Required:** Dr. Lewis analyzes; CEO reviews; Matt Mathison decides on entries >$100K; M&A entry route requires full M&A process (strategy-m-and-a-screener through strategy-due-diligence-coordinator)

## Test Cases
1. **Golden path:** Allevio Tucson expansion analysis → Market: Tucson SAM $85M, 5% CAGR, fragmented (4 MSOs, none dominant); capability transfer: high (same physician model, AZ payer relationships, same AdvancedMD system); entry strategy: tuck-in acquisition of 2-3 provider practice ($600-900K); timing: ❌ Core is 75% capacity and 16.5% EBITDA (requires 90% and 18%); current trajectory: 90% capacity by Q3 Year 2, 18% margin by Q4 Year 2; timing: ready for entry in Q1 Year 3; action now: begin building Tucson M&A target list (0 capital, Dr. Lewis + CEO network); entry capital request: $800K — include in Year 3 capital plan (Matt Mathison Year 3 planning discussion); Dr. Lewis presents to Matt Mathison; Matt Mathison approves preparing for Year 3 entry; no capital committed now; plan documented
2. **Edge case:** HIVE CEO wants to enter a new oil play in the Permian Basin (vs. Uinta) → Entirely different geography, geology, regulatory environment (TX Railroad Commission vs. UT DOGM), competitive landscape (supermajors in Permian vs. smaller E&P in Uinta), and operational logistics; capability transfer: low — HIVE's competitive advantage is Uinta Basin operational knowledge, relationships with UT DOGM, and optimized logistics for the Uinta; entering Permian is effectively a new company strategy; thesis alignment: ❌ HIVE's thesis is Uinta Basin Tier 1 production; Permian is a different thesis; recommendation: Pass — if Matt Mathison is interested in Permian Basin as a standalone investment thesis, evaluate it as a new platform investment, not as an extension of HIVE; HIVE's capital and management should remain focused on the Uinta Basin
3. **Adversarial:** "The Tucson market is huge — we should move fast before competitors get there" → Speed is valuable in the right context; rushing into a new market before the core is ready is not speed, it's impatience; the "huge market" and "competitors moving fast" arguments are the most common justifications for premature market entry; Dr. Lewis tests: (1) How large is the realistic SAM in Tucson for Allevio's model — $85M, not the Arizona MSO market at $1.4B; (2) Are competitors moving fast into Tucson? (What is the evidence?); (3) If we wait 18 months for the core to be ready, what specifically do we lose? (How many Tucson practices will be taken that otherwise would have been available?); usually the urgency is overstated and the timing gate is the more important discipline

## Audit Log
All market entry analyses retained. Timing condition assessments retained (when conditions were met and entry recommended). Matt Mathison decision records retained. Entry strategy plan documents retained. Post-entry performance vs. entry analysis retained (learning for future entries).

## Deprecation
Retire when portfolio companies have strategy or business development leaders capable of producing market entry analyses — with Dr. Lewis reviewing for thesis alignment and Matt Mathison receiving the same decision brief regardless of who produces the analysis.
