---
name: finance-hive-acquisition-model
description: "Build financial models for HIVE Partners oil and gas acquisition opportunities. Use when the user says 'HIVE acquisition', 'oil and gas acquisition', 'acquire a well', 'acquire a lease', 'acquire working interest', 'working interest acquisition', 'ORRI acquisition', 'mineral acquisition', 'buy a well', 'well acquisition model', 'acquisition economics', 'acquisition returns', 'IRR', 'internal rate of return', 'cash-on-cash return', 'acquisition cash-on-cash', 'oil well IRR', 'WTI sensitivity acquisition', 'acquisition financial model', 'HIVE deal model', 'deal economics HIVE', 'reserve analysis', 'PV10', 'present value 10', 'acquisition price per BOE', 'acquisition payback period', 'breakeven WTI', 'acquisition WTI breakeven', 'acquisition offer price', 'bid price well', 'Matt Mathison acquisition', 'HIVE deal approval', or 'acquisition economics summary'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--asset <name>] [--working-interest <pct>] [--ask-price <amount>] [--production <boe-per-month>] [--loe-per-boe <amount>] [--wti <base-case-price>]"
---

# Finance HIVE Acquisition Model

Build financial models for HIVE Partners oil and gas acquisition opportunities — calculating IRR, cash-on-cash return, payback period, WTI breakeven, and reserve-based PV10 under bear/base/bull WTI scenarios. Every HIVE acquisition requires Matt Mathison's approval regardless of size; this model provides the financial justification for the go/no-go decision and is the primary deliverable in the acquisition approval package.

## When to Use
- HIVE is evaluating a working interest, ORRI, or mineral acquisition
- Setting a bid price for a lease or well package
- Stress-testing a deal under WTI scenarios before presenting to Matt Mathison
- Comparing multiple acquisition opportunities

## HIVE Acquisition Model Framework

```
ACQUISITION MODEL STRUCTURE:

  INPUTS:
    Asset description: well/lease name; working interest%; NRI%; current production (BOE/month)
    Ask price ($): seller's asking price or auction reserve
    WTI scenarios: bear ($48); base ($62); bull ($78) — use current market as base
    Uinta Basin differential: typically -$2.50 to -$4.00/bbl from WTI spot
    LOE per BOE: expected operating cost (benchmark target <$18/BOE; assume existing or new operator rate)
    Decline rate: expected annual production decline (typical Uinta Basin: 15-25% year 1; 10-15% thereafter)
    Reserve life: years of economic production (PV10 calculation horizon)
    G&A allocation: HIVE entity-level G&A allocated to this property (if applicable)
    
  OUTPUT METRICS:
    IRR (Internal Rate of Return): annualized return on investment over reserve life
      Acceptable: >15% base case IRR (PE-style threshold)
      Strong: >25% base case IRR
      Poor: <12% base case IRR → do not pursue
    Cash-on-cash (year 3): cumulative cash returned ÷ initial investment in year 3
      Target: >1.0× (return initial capital within 3 years base case)
    Payback period: months to recover initial investment (base case)
      Target: <24 months at base WTI
    PV10: present value of future net cash flows discounted at 10% (industry standard)
      PV10/acquisition price: HIVE targets >1.5× (buying for <67 cents on the reserve dollar)
    Breakeven WTI: the WTI price at which the acquisition just breaks even (NPV = $0)
      Target: breakeven WTI <$48/bbl (profitable even in bear case)
      
  WTI SENSITIVITY TABLE:
    Base structure: 5 WTI scenarios × (revenue; LOE; net income; IRR; payback)
    Scenarios: $48 / $55 / $62 / $70 / $78
    Acquisition pause context: if bear case ($48) shows negative IRR → requires Matt Mathison specific review
    
ACQUISITION PAUSE INTERACTION:
  If WTI trigger is active (realized WTI <$58 for 2+ weeks): no new acquisition commitments
  Model is built but held until trigger lifts
  Exception: if a distressed-price opportunity arrives during trigger → Matt Mathison can override pause
  (Override = explicit Matt Mathison decision; not Dr. Lewis unilateral)
  
MATT MATHISON APPROVAL PACKAGE:
  All HIVE acquisitions require Matt Mathison's approval regardless of size
  Package includes: asset description; acquisition model (full); WTI sensitivity table; recommendation
  Recommendation format: "RECOMMEND / DO NOT RECOMMEND at $[X] ask price; returns [Y]% IRR base case"
  Dr. Lewis delivers package to Matt Mathison → Matt Mathison decides → Dr. Lewis executes
```

## Output Format

```markdown
# HIVE Acquisition Model — [Asset Name]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Status:** For Matt Mathison Review

---

## Asset Summary
[Asset name; location; working interest%; NRI%; current production]

---

## Economic Returns (Base Case: WTI $X.XX/bbl)

| Metric | Value | Threshold | Status |
|--------|-------|----------|--------|
| IRR | X% | >15% | ✅/⚠️/🔴 |
| Cash-on-cash (Year 3) | X.X× | >1.0× | |
| Payback period | XX months | <24 months | |
| PV10 | $X | | |
| PV10 / Ask price | X.X× | >1.5× | |
| Breakeven WTI | $X | <$48 | |

---

## WTI Sensitivity Table

| WTI Scenario | Revenue (Yr 1) | LOE | Net Income | IRR | Payback |
|-------------|--------------|-----|-----------|-----|---------|
| Bear ($48) | $X | $X | $X | X% | X mo |
| Soft ($55) | $X | $X | $X | X% | X mo |
| Base ($62) | $X | $X | $X | X% | X mo |
| Strong ($70) | $X | $X | $X | X% | X mo |
| Bull ($78) | $X | $X | $X | X% | X mo |

---

## Recommendation
**[RECOMMEND / DO NOT RECOMMEND]** at $[X] ask price.
[2-3 sentence rationale]
```

## Output Contract
- Every number in the acquisition model must be defensible, not optimistic — Dr. Lewis uses conservative production decline assumptions (slightly faster than the operator's projection), does not count production volume that is currently curtailed or shut-in as baselined production, and uses the bear/base/bull WTI structure to show the distribution of outcomes rather than a single-point estimate; a model that only works at $78/bbl WTI is not a model, it's a hope; the value of the model is that it shows Matt Mathison explicitly where the deal breaks down and what the bear case looks like, not that it shows the best-case path to making the deal pencil; Dr. Lewis would rather recommend against a deal that was attractive than proceed with a deal that fails in the bear case Matt Mathison didn't see
- The WTI trigger interaction must be honored even when a deal looks exceptional — if WTI is below $58 and the pause is active, Dr. Lewis builds the model (so it's ready when the trigger lifts) but does not present it as an actionable recommendation until Matt Mathison explicitly overrides the pause for this specific opportunity; bypassing the pause without explicit Matt Mathison override would undermine the governance structure that the trigger represents; the trigger is not a suggestion — it is a commitment to LP that HIVE made in the partnership documentation
- HITL required: all HIVE acquisitions → Matt Mathison approval regardless of size (mandatory hard requirement, no exceptions); WTI trigger active → no new commitments without Matt Mathison explicit override; acquisition model → Dr. Lewis prepares; recommendation → Dr. Lewis recommends + Matt Mathison decides; bid price → Matt Mathison authorizes; execution → Dr. Lewis; LOI or binding commitment → Matt Mathison signs

## System Dependencies
- **Reads from:** Operator data rooms (production reports; reserve reports; LOE history); EIA WTI price data; Uinta Basin differential data; HIVE existing portfolio NRI/WI schedule; finance-hive-production-financials (current LOE benchmark; production context); finance-scenario-modeler (HIVE WTI sensitivity table as reference)
- **Writes to:** Acquisition model files (SharePoint → HIVE → Acquisitions → [Asset Name] → Financial Model); Matt Mathison acquisition approval package; QuickBooks (after approval: capital deployment entry); Covercy (new asset added after acquisition close); HIVE acquisition decision log (approved/rejected/held)
- **HITL Required:** Matt Mathison approval → all acquisitions, all sizes, mandatory; WTI trigger override → Matt Mathison explicit only; bid submission → Matt Mathison authorizes; LOI signing → Matt Mathison; capital deployment → Matt Mathison approved

## Test Cases
1. **Golden path:** HIVE evaluates a Uinta Basin working interest package (25% WI; 78% NRI; 3,800 BOE/month current production; $1.2M ask price). Model inputs: base WTI $62; Uinta differential -$3 = $59 realized; LOE $16.50/BOE; decline rate 18% year 1 / 12% thereafter; 8-year reserve life. IRR (base): 28.4% ✅. Cash-on-cash year 3: 1.8× ✅. Payback: 19 months ✅. PV10: $2.1M vs. $1.2M ask = 1.75× ✅. Breakeven WTI: $43.20 ✅. Bear case ($48): IRR 11% (below 15% threshold but still positive). Dr. Lewis recommendation: RECOMMEND at $1.2M; strong base case returns; breakeven WTI well below acquisition pause trigger; even bear case generates positive IRR. Package delivered to Matt Mathison.
2. **Edge case:** Model shows strong base case (IRR 24%) but breakeven WTI = $61/bbl — above the $58 acquisition trigger → Dr. Lewis: "The economics of this acquisition are strong at base WTI ($62) and above — IRR 24%, payback 22 months. However, the breakeven WTI is $61/bbl, which is above our $58/bbl acquisition pause threshold. This means: (1) if WTI drops below $58, this acquisition is marginally negative; (2) we'd be buying an asset that triggers an acquisition pause at exactly the WTI level where the asset loses money. My recommendation: DO NOT RECOMMEND at $1.6M ask price. If the seller would accept $1.1M (24% discount), the breakeven drops to $52/bbl, which gets us comfortable. Alternatively, if Matt Mathison is comfortable with the $61 breakeven given the overall portfolio strength, I'll defer to his judgment — but I want him to see the breakeven explicitly."
3. **Adversarial:** Entity CEO brings a deal to Dr. Lewis saying "Matt already knows about it and says to move forward" → Dr. Lewis: "Before I model this deal or commit any capital, I need direct confirmation from Matt Mathison that he wants to proceed. HIVE's acquisition governance requires Matt Mathison's documented approval — not a message relayed through the entity CEO. This isn't bureaucracy; it's the control that protects the LP relationship. I'll send Matt Mathison a quick message right now: 'Matt, [entity CEO] shared that you've seen [Asset Name] and want to proceed — can you confirm you want Dr. Lewis to begin due diligence and modeling for this deal?' Once I have that confirmation, I'll move immediately."

## Audit Log
All acquisition models (permanent; including rejected deals). Matt Mathison approval records. Acquisition decision log (asset name; ask price; recommendation; decision; date; WTI at decision). WTI trigger status at time of acquisition evaluation. LOI and purchase agreement records. Capital deployment records. Post-acquisition production vs. model comparison (quarterly for first 2 years).

## Deprecation
IRR threshold reviewed annually by Matt Mathison. WTI scenario ranges reviewed quarterly (market conditions). Decline rate assumptions reviewed when Uinta Basin geological data changes. PV10 discount rate reviewed annually. Acquisition pause trigger reviewed annually by Matt Mathison.
