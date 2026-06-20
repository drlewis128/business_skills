---
name: pe-deal-thesis-builder
description: "Build and validate investment theses for MBL Partners deal opportunities. Use when the user says 'investment thesis', 'deal thesis', 'thesis', 'thesis build', 'build a thesis', 'investment case', 'investment rationale', 'why invest', 'why buy', 'why this company', 'why this deal', 'deal rationale', 'deal memo', 'investment memo', 'IC memo', 'investment committee memo', 'preliminary thesis', 'initial thesis', 'thesis validation', 'thesis stress test', 'thesis assumptions', 'what is the thesis', 'test the thesis', 'value creation plan', 'value creation thesis', 'how do we create value', 'how do we make money', 'return thesis', 'return drivers', 'exit thesis', 'how do we exit', 'exit multiples', 'MOIC thesis', 'IRR thesis', 'base case', 'bull case', 'bear case', 'downside case', 'THRIVE deal', 'THRIVE deal filter', or 'go no go'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <company-name>] [--sector <healthcare|energy|ctv|general>] [--action <build|stress-test|update|present>] [--stage <initial|management-meeting|loi|ic>]"
---

# PE Deal Thesis Builder

Build and validate investment theses for MBL Partners deal opportunities — constructing the investment case, identifying the primary value creation levers, stress-testing the key assumptions, and applying the THRIVE filter to the investment and the management team. The investment thesis is the foundation of every MBL investment decision: it must articulate why this company, at this price, at this time, creates value for LPs; it must identify the specific actions MBL will take as a shareholder to drive that value; and it must be honest about the risks that could prevent value creation. Matt Mathison approves every investment thesis before an LOI is submitted; a thesis that cannot withstand direct questioning from Matt is not yet complete.

## When to Use
- Initial investment thesis before management meeting
- Full investment thesis before LOI submission
- Thesis update after due diligence findings
- Investment committee presentation preparation

## Deal Thesis Framework

```
MBL INVESTMENT THESIS STRUCTURE:

  1. COMPANY OVERVIEW (1 paragraph):
     What does the company do? Who are its customers?
     Revenue model (recurring? transactional? project-based?)
     Brief financial summary (revenue; EBITDA; employees; geography)
     Ownership history and reason for sale
     
  2. WHY MBL IS THE RIGHT OWNER (1 paragraph):
     Sector expertise: how does MBL's experience in this sector create value?
     Platform synergy: does this fit the Allevio / HIVE / Column6 platform?
     Operating value-add: what specific capability does Dr. Lewis / Matt bring?
     If MBL cannot articulate a specific reason it is the best owner → pass
     
  3. MARKET CONTEXT (2-3 bullets):
     Market size and growth rate
     Competitive dynamics (fragmented vs. concentrated; PE active?)
     Regulatory environment (tailwinds/headwinds)
     
  4. VALUE CREATION PLAN (3-5 specific initiatives):
     Each initiative: what is it? who executes? what is the financial impact? timeline?
     Categories:
       Revenue growth: new customers; new products; pricing; geographic expansion
       EBITDA expansion: cost reduction; operational efficiency; procurement
       Multiple expansion: narrative improvement; EBITDA quality; ESG story
       Platform value: add-on acquisitions; synergies with existing portfolio
       
  5. RETURN ANALYSIS (pe-sensitivity-analyzer):
     Entry: EV; revenue; EBITDA; purchase multiple (EV/EBITDA or EV/Revenue)
     Hold period: 3-5 years (standard)
     Exit: projected EBITDA at exit; exit multiple assumption; exit EV
     Base case MOIC: [X.Xx] | Base case IRR: [X%]
     Bull case MOIC: [X.Xx] | Bear case MOIC: [X.Xx]
     
  6. RISKS AND MITIGANTS:
     Top 3-5 risks that could prevent the thesis from working
     Each risk: probability (Low/Medium/High); impact (Low/Medium/High); mitigant
     Deal-breaker risk: any single risk that is both High probability AND High impact = investigate before LOI
     
  7. THRIVE FILTER:
     T — Truth: is the financial information the company has provided accurate? (validate in diligence)
     H — Hustle: does the management team execute with urgency? (assess in management meeting)
     R — Respect: how does leadership treat employees, customers, and vendors?
     I — Integrity: any integrity concerns with management team or financial history? → automatic kill
     V — Value: does this investment create real value for MBL's LPs? Clear yes required.
     E — Enjoy: is this a business and management team MBL wants to work with for 4-5 years?
     
  8. RECOMMENDATION:
     Proceed to LOI: Yes / No
     If yes: recommended LOI terms (price range; structure; exclusivity period)
     If no: primary reason for passing; is this a "not now" or "never"?

SECTOR-SPECIFIC THESIS ELEMENTS:

  HEALTHCARE / ALLEVIO PLATFORM:
    North Star alignment: employer GRR ≥91%; claim ratio ≤87%
    PCP connectivity and panel capacity
    MSO or value-based model (not fee-for-service)
    HIPAA compliance infrastructure (BAA capability; PHI data governance)
    OIG/LEIE check: all providers and key personnel clean (pe-deal-breaker-tracker)
    Regulatory status: any state medical board or CMS actions?
    
  ENERGY ROYALTIES / HIVE PLATFORM:
    Royalty interest type: override royalty; NPRI; mineral rights
    Production status: producing (PDP) vs. non-producing (PDNP/PUD)
    Operator quality: operator track record; financial stability
    WTI sensitivity: what is the investment value at $58/bbl? (below = pause new acquisitions)
    DOGM compliance: any outstanding NOVs or environmental violations?
    
  CTV / COLUMN6 PLATFORM:
    Revenue model: agency NRR ≥95% target; campaign-based or retainer?
    VCR: target ≥92% (Column6 North Star)
    IVT rate: target <2% (inventory quality)
    Agency concentration: any single agency >30% of revenue?
    DSP relationships: what demand-side platforms? CTV publisher access?
```

## Output Format

```markdown
# Investment Thesis — [Company Name] — [Date]
**Prepared by:** Dr. Lewis | **Status:** [Initial / Pre-LOI / Post-DD / IC Ready]

---

## Company Overview
[1 paragraph]

## Why MBL Is the Right Owner
[1 paragraph — specific, not generic]

## Market Context
- [Bullet 1]
- [Bullet 2]
- [Bullet 3]

## Value Creation Plan

| Initiative | Owner | Financial impact | Timeline |
|-----------|-------|-----------------|---------|
| [Initiative 1] | [CEO/MBL] | +$[X] EBITDA | [N] months |
| [Initiative 2] | [Dr. Lewis] | +[X%] margin | [N] months |

## Return Analysis (base case)

| | Entry | Exit (yr [N]) | Change |
|-|-------|-------------|-------|
| Revenue | $[X] | $[X] | +[X%] CAGR |
| EBITDA | $[X] | $[X] | +[X%] CAGR |
| EV multiple | [X.Xx] | [X.Xx] | [expansion/compression] |
| Equity value | $[X] | $[X] | |

**Base case MOIC:** [X.Xx]x | **Base case IRR:** [X%]

## Risks

| Risk | Probability | Impact | Mitigant |
|------|------------|--------|---------|
| [Risk 1] | [L/M/H] | [L/M/H] | [Mitigant] |

## THRIVE Filter

| Value | Assessment |
|-------|-----------|
| T — Truth | ✅ Financial data consistent; validate in DD |
| H — Hustle | ✅ CEO has track record of execution |
| R — Respect | ✅ No employee complaints identified |
| I — Integrity | ✅ Clean background; no fraud indicators |
| V — Value | ✅ [X.Xx]x base case MOIC — clear LP value creation |
| E — Enjoy | ✅ Sector fits MBL expertise; management team engaging |

## Recommendation
**[PROCEED TO LOI / PASS]** — [One-sentence rationale]
```

## Output Contract
- "Why MBL is the right owner" is specific, not a template — "we bring operational expertise" is not a thesis; "Matt Mathison's decade building employer-sponsored healthcare models means we understand the employer group sales cycle, the clinical quality levers, and the payer dynamics better than any other PE firm in this space — and we have Allevio as a proof point and a potential acquirer" IS a thesis; Dr. Lewis does not approve a thesis that contains generic ownership rationale; every thesis must answer the question: if we were not the buyer, why would we lose?
- Integrity is a kill criterion with no threshold — if the THRIVE Integrity filter reveals any evidence of financial misrepresentation, fraud, or ethical violations by the management team or the business, the deal is killed regardless of the financial returns; a 4.0x MOIC deal with an untrustworthy management team is a deal MBL will spend four years cleaning up and still lose money on; Dr. Lewis flags any Integrity concern to Matt Mathison immediately; there is no deal that is good enough to overlook an Integrity red flag
- Risks must include the downside that kills the thesis — every deal has a risk that, if it materializes, results in a loss of invested capital; that risk must be named explicitly in the thesis; "competitive landscape changes" is not a specific risk; "the top 2 employer groups (representing 60% of revenue) cancel their contracts" IS a specific risk; Dr. Lewis identifies the top 3 specific ways this deal could lose money and assesses whether those risks are manageable before recommending an LOI
- HITL required: every investment thesis before LOI → Matt Mathison reviews and approves; any Integrity flag (THRIVE I) → Matt Mathison immediately (deal may be killed before thesis is complete); thesis presented to IC (investment committee) → Matt Mathison leads the IC meeting; any material change to the thesis post-LOI (DD finding changes the return profile) → Matt Mathison immediately; downside case below 1.0x MOIC → automatic Matt review before proceeding

## System Dependencies
- **Reads from:** pe-deal-screener (initial thesis fit check); pe-deal-pipeline-manager (deal stage and context); company financials (provided by seller or banker); management meeting notes; pe-deal-breaker-tracker (integrity and regulatory checks); pe-sensitivity-analyzer (return scenario modeling); comparable transaction data (Pitchbook; DealEdge)
- **Writes to:** Investment thesis documents (SharePoint → Deals → [Company] → Thesis); pe-deal-pipeline-manager (thesis status; LOI recommendation); Matt Mathison briefings (thesis presentation; Integrity flags; pass decisions); pe-diligence-coordinator (thesis assumptions to validate in DD); pe-exit-value-optimizer (value creation plan to execute post-close)
- **HITL Required:** Every thesis → Matt Mathison review before LOI; Integrity flag → Matt immediately; IC presentation → Matt leads; material thesis revision post-LOI → Matt immediately; downside case <1.0x → automatic Matt review

## Test Cases
1. **Golden path:** Healthcare MSO with $6M revenue, 3 employer groups, founder wants to retire in 3 years. Value creation plan: (1) Expand from 3 to 7 employer groups via MBL/Allevio sales relationships (+$3M revenue); (2) PCP connectivity improvement from 72% to 85% (+0.8% EBITDA margin from claim ratio improvement); (3) Integrate with Allevio billing infrastructure (reduce billing costs 15%). Entry: $12M EV / 2.0x revenue. Exit (Year 4): $22M EV / 2.2x revenue. MOIC: 1.8x. IRR: 16%. THRIVE: all green. Recommendation: Proceed to LOI. Matt reviews and approves: "Proceed — let's offer $10.5-$12M in the LOI."
2. **Edge case:** A deal with excellent financials but the seller's CFO (who would stay post-close) was involved in an accounting restatement at a prior company → Dr. Lewis: "I'm pausing the thesis on [Company]. I've identified that the CFO who is expected to stay post-close was CFO at [Prior Company] during an accounting restatement for revenue recognition errors. This is a THRIVE Integrity flag — not automatically a kill, but requires Matt's judgment. The restatement may have been the CFO's discovery (positive) or their error (kill). Matt: I recommend we get more information before proceeding — a direct conversation with the CFO about the restatement, and fund counsel's view on the disclosure obligation. I'm not proceeding to LOI until we've resolved this."
3. **Adversarial:** Matt Mathison pushes back on Dr. Lewis's risk section, saying "you're being too negative — let's not show the bear case in the IC deck" → Dr. Lewis: "I hear you on tone, but I'd push back on removing the bear case. The bear case in the IC deck serves two functions: (1) It demonstrates to LPs (who will read the board minutes and eventually the LP report) that we stress-tested the investment honestly; (2) It protects us legally — if the investment performs poorly, a contemporaneous record showing we identified the downside risk protects the fund. My recommendation: we include the bear case but lead with the bull case and base case. The bear case is in the appendix with a clear statement of why we believe the base case is more likely. That's the honest and defensible approach."

## Audit Log
All investment theses retained permanently (with version history; Matt approval date; LOI submission date). THRIVE filter assessments retained. Pass decisions retained with reasons. Post-investment thesis tracking (actual vs. projected value creation). IC meeting records retained.

## Deprecation
Deal thesis building is active during the fund's investment period. Sector-specific thesis elements are updated when market conditions change (e.g., WTI trigger for HIVE; healthcare regulatory changes for Allevio). THRIVE filter criteria are permanent.
