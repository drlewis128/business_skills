---
name: finance-scenario-modeler
description: "Build financial scenarios and sensitivity analysis for MBL Partners portfolio entities. Use when the user says 'scenario analysis', 'financial scenario', 'scenario model', 'scenario modeling', 'sensitivity analysis', 'bear case', 'base case', 'bull case', 'what if analysis', 'what if we lose a big client', 'what if WTI drops', 'what if we grow faster', 'downside scenario', 'upside scenario', 'conservative scenario', 'optimistic scenario', 'pessimistic scenario', 'revenue scenario', 'scenario planning', 'financial model scenarios', 'stress test', 'financial stress test', 'worst case', 'best case', 'most likely case', 'WTI sensitivity', 'enrollment sensitivity', 'IO sensitivity', 'revenue sensitivity', 'margin sensitivity', 'scenario comparison', 'scenario output', 'what happens if', 'model this scenario', or 'sensitivity table'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--driver <wti|enrollment|io-volume|growth|churn>] [--scenarios <3|5>] [--action <build|present|update>]"
---

# Finance Scenario Modeler

Build financial scenarios and sensitivity analyses for MBL Partners portfolio entities — modeling bear/base/bull cases for each entity based on the key revenue driver (WTI for HIVE; employer enrollment for Allevio; IO volume for Column6) and producing decision-relevant output that shows Matt Mathison and entity CEOs the financial range of outcomes under different conditions. Scenario analysis is how you make decisions under uncertainty without pretending certainty exists.

## When to Use
- Budget planning: build bear/base/bull scenarios before finalizing plan
- HIVE WTI trigger approaching: WTI sensitivity table for Matt Mathison
- Significant business decision (major hire, market expansion, product change)
- Matt Mathison LP presentation: scenario range for investor materials

## Scenario Modeling Framework

```
STANDARD 3-SCENARIO STRUCTURE:

  BEAR CASE (downside — credible bad outcome, not catastrophe):
    What: the scenario where the key drivers underperform reasonably
    Purpose: shows minimum capital requirements; tests runway; identifies break-even
    Probability: 20-30% (real risk, not improbable)
    
  BASE CASE (most likely outcome):
    What: management's best estimate of actual performance given current information
    Purpose: the planning basis; what the budget is built on
    Probability: 50-60% (most likely)
    
  BULL CASE (upside — credible good outcome, not fantasy):
    What: the scenario where key drivers outperform; execution is strong
    Purpose: shows capital needs for growth investment; return potential for Matt Mathison
    Probability: 20-30% (achievable with strong execution)
    
ENTITY-SPECIFIC SCENARIO DRIVERS:

  HIVE PARTNERS — WTI SENSITIVITY (PRIMARY):
    Driver: WTI price ($/bbl) and production volume (BOE/month)
    Bear: WTI $50/bbl; production 4,000 BOE/month → Revenue: $X; LOE coverage: tight
    Base: WTI $62/bbl; production 4,200 BOE/month → Revenue: $X; LOE coverage: comfortable
    Bull: WTI $75/bbl; production 4,400 BOE/month → Revenue: $X; LOE coverage: strong; acquisitions viable
    Trigger note: if bear case = WTI $50 and trigger is $58, bear case implies acquisition pause
    Table format: WTI row ($48-$78; $5 increments) × BOE column (3,800-4,600; 200 increments) = revenue matrix
    
  ALLEVIO — ENROLLMENT SENSITIVITY:
    Driver: new employer adds per quarter and churn rate
    Bear: 3 new employers/quarter; 12% annual churn → Revenue: $X; EBITDA: -$X
    Base: 6 new employers/quarter; 8% annual churn → Revenue: $X; EBITDA: -$X (improving)
    Bull: 9 new employers/quarter; 5% annual churn → Revenue: $X; EBITDA: +$X (positive)
    Sensitivity table: new adds (2-10/quarter) × churn rate (5-15%) = ARR matrix
    HIPAA: enrollment sensitivity uses aggregate counts; no individual member data
    
  COLUMN6 — IO VOLUME SENSITIVITY:
    Driver: average IO size and number of IOs per quarter
    Bear: 4 IOs/quarter; avg $22K → Revenue: $X
    Base: 6 IOs/quarter; avg $28K → Revenue: $X
    Bull: 8 IOs/quarter; avg $35K → Revenue: $X
    Sensitivity table: IO volume (3-10) × avg IO size ($15K-$50K) = quarterly revenue matrix
    
SCENARIO OUTPUT STRUCTURE:
  Table 1: scenario summary (3 scenarios × 5 metrics: revenue; gross profit; EBITDA; cash; runway)
  Table 2: sensitivity matrix (key driver × key driver → revenue or EBITDA)
  Analysis: what conditions move you from base to bear? What does the team need to execute to reach bull?
  Decision point: if bear case materializes, what are the 3 actions to protect cash runway?
```

## Output Format

```markdown
# Financial Scenario Analysis — [Entity] — [Period/Decision]
**Prepared by:** Dr. Lewis | **Key Driver:** [WTI / Enrollment / IO Volume]

---

## Scenario Summary

| Metric | Bear | Base | Bull |
|--------|------|------|------|
| Full-Year Revenue | $X | $X | $X |
| Gross Profit | $X | $X | $X |
| EBITDA | $X | $X | $X |
| Year-End Cash | $X | $X | $X |
| Runway | X months | X months | X months |

*Bear: [assumption]; Base: [assumption]; Bull: [assumption]*

---

## Sensitivity Table — [Entity-Specific Driver]

*(HIVE example: Revenue at each WTI × BOE combination)*

| WTI ↓ / BOE → | 3,800 | 4,000 | 4,200 | 4,400 | 4,600 |
|--------------|-------|-------|-------|-------|-------|
| $78 | $X | $X | **$X** | $X | $X |
| $72 | | | **$X (base)** | | |
| $66 | | | | | |
| $60 | ⚠️ | ⚠️ | ⚠️ | | |
| $54 | 🔴 | 🔴 | 🔴 | 🔴 | |
| $48 | 🔴 | 🔴 | 🔴 | 🔴 | 🔴 |

*⚠️ = near acquisition trigger | 🔴 = below acquisition pause trigger*

---

## Bear Case Response Plan
If bear case materializes:
1. [Action — impact — owner]
2.
3.
```

## Output Contract
- Scenario analysis is how Dr. Lewis prevents surprise — Matt Mathison does not like financial surprises; a HIVE WTI sensitivity table delivered in November shows Matt Mathison exactly what HIVE revenue looks like at every WTI price from $48 to $78 per barrel; when WTI drops to $59/bbl in March, Matt Mathison has already seen that outcome modeled and knows the financial implications; the conversation is "we're in the yellow zone from November's sensitivity table" rather than "this is a surprise and we're figuring it out"; scenario analysis converts uncertain futures into anticipated ranges that leaders can plan around
- The bear case response plan is as important as the scenario numbers — knowing that bear case HIVE revenue is $290K vs. $440K base case is useful; knowing specifically that "if bear case materializes, we (1) pause all acquisitions (already in protocol), (2) reduce LOE by deferring 2 non-critical well interventions (-$18K/month), (3) HIVE G&A reviewed for any deferral-eligible items" is actionable; Dr. Lewis always includes a 3-action bear case response plan in scenario analyses so that Matt Mathison and the entity CEO are not starting from zero when a downside scenario begins to materialize
- HITL required: scenario assumptions → entity CEO + Dr. Lewis align; HIVE WTI sensitivity → Dr. Lewis builds; bear case response plan → entity CEO + Dr. Lewis agree on actions; LP or investor materials with scenarios → Matt Mathison reviews; scenario showing cash runway <90 days in bear case → Matt Mathison immediate; major decision scenario (expansion, acquisition) → Matt Mathison reviews before decision

## System Dependencies
- **Reads from:** QuickBooks (historical actuals for base case calibration); Covercy (HIVE production history + forward curve inputs); finance-annual-budget-builder (base case starting point); finance-cash-flow-manager (runway calculation in each scenario); entity CEO key assumption inputs
- **Writes to:** Scenario analysis documents (SharePoint → [Entity] → Finance → Scenarios → [YYYY]); Matt Mathison scenario presentations; bear case response plans; budget bear/base/bull range documentation; LP presentation scenario section
- **HITL Required:** Scenario assumptions → entity CEO + Dr. Lewis; HIVE WTI → Dr. Lewis builds; bear case response → entity CEO + Dr. Lewis; LP materials → Matt Mathison reviews; bear case <90 days runway → Matt Mathison immediate; major decision → Matt Mathison reviews

## Test Cases
1. **Golden path:** HIVE 2027 budget scenario analysis. Base case: WTI $62/bbl; 4,200 BOE/month; production revenue $260K/year; royalty $144K/year; total $404K. Bear case: WTI $54/bbl; 4,000 BOE/month; revenue $260K (acquisition pause triggered). Bull case: WTI $72/bbl; 4,400 BOE/month; revenue $380K + 1 acquisition in H2 ($40K incremental). Sensitivity table built (WTI $48-$80 × BOE 3,600-4,600). Bear case response plan: (1) acquisition pause (protocol); (2) defer 2 well interventions (-$12K/quarter LOE); (3) G&A freeze for 60 days. Matt Mathison reviews in November budget meeting. "Exactly what I needed — now I know the whole range."
2. **Edge case:** Entity CEO asks to present only the bull case to Matt Mathison in a board meeting ("it's more motivating") → Dr. Lewis: "I understand the motivation — showing a compelling upside is energizing. But Matt Mathison is a sophisticated investor, and presenting only the bull case is both incomplete and credibility-damaging if he asks 'and what's the downside?' and entity CEO doesn't have an answer. The better approach: present all three scenarios, frame the bull case as 'here's what strong execution unlocks' and the bear case as 'here's what disciplined financial management protects against.' That's a more compelling investor narrative than optimism alone. Investors fund credibility, not just enthusiasm."
3. **Adversarial:** Allevio entity CEO argues that scenario modeling is "for big companies, not a company our size" → Dr. Lewis: "The smaller the company, the more important scenario analysis is — a big company can weather a bad quarter; a company with 4 months of runway cannot. The HIVE WTI sensitivity table took 90 minutes to build. It has saved Matt Mathison from a financial surprise every time WTI has moved significantly. The Allevio enrollment scenario takes 2 hours to build. It answers: if we sign 4 fewer employers than planned next quarter AND lose 2 to churn, how long is our runway? 2 hours of modeling gives you a clear answer to that question; without it, you're managing the company based on intuition about a question that has a definitive answer. I'll build the model; you tell me the assumptions. 30-minute call."

## Audit Log
Scenario analysis documents (permanent). Matt Mathison scenario presentation records. Bear case response plan records. Assumption alignment records (entity CEO + Dr. Lewis). LP/investor scenario presentation records. Scenario-to-actual comparison (quarterly: how did the bear/base/bull assumptions hold up?). HIVE WTI trigger scenario records.

## Deprecation
Scenario driver selection reviewed when entity business model changes. WTI trigger level reviewed if HIVE acquisition threshold changes. Scenario probability ranges reviewed annually. Bear case response plans reviewed quarterly. Sensitivity table ranges reviewed when entity operating range changes. LP presentation scenarios reviewed when LP reporting requirements change.
