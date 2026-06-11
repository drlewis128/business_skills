---
name: roi-calculator
description: "Calculate and present the ROI of a proposed solution for a prospect. Use when the user says 'ROI', 'return on investment', 'business case', 'calculate the value', 'justify the cost', 'ROI model', 'what is this worth to them', or 'build a business case'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<solution-context> [--entity <name>] [--prospect <company>] [--investment <amount>]"
---

# ROI Calculator

Calculate and present the ROI of a proposed solution for a prospect. ROI framing shifts the conversation from cost to investment. A rep who can't articulate business value loses to a rep who can — even at a higher price.

## When to Use
- Prospect says "We need to justify this internally"
- Economic buyer asks "What's the business case?"
- Deal is stalling at the proposal stage — need to add financial urgency
- Preparing a proposal that needs an executive summary ROI section
- Quantifying the cost of inaction (what it costs them NOT to buy)

## ROI Framework

### Revenue Impact (Value Created)
- Additional revenue enabled by the solution
- Revenue recovered (previously lost due to the problem)
- Revenue accelerated (cycles shortened, deals closed faster)

### Cost Reduction (Value Protected)
- Headcount cost avoided (FTEs saved or redeployed)
- Process time reduced (hours × hourly loaded cost)
- Error/rework costs eliminated
- Technology consolidation (replace multiple tools with one)

### Risk Reduction (Value Protected)
- Compliance penalties avoided
- Churn prevented (customer retention value)
- Downtime costs prevented
- Liability exposure reduced

### Cost of Inaction
- What does the status quo cost per month?
- What does delay cost? (Problem gets worse, competitors gain ground, penalty accumulates)

## ROI Calculation

```
Simple ROI = (Total value created + Total costs reduced) - Investment
ROI% = (Net benefit / Investment) × 100

Payback period = Investment / (Annual benefit / 12) in months

3-Year ROI = Σ(annual benefits × 3) - Investment
```

## Confidence Levels for Estimates

Always label estimates with confidence level — credibility matters:
- **Confirmed:** Customer provided the data
- **Estimated:** Based on industry benchmark or customer's general description
- **Conservative:** Deliberately understated to avoid over-promising

## Output Format

```markdown
# ROI Analysis — <Solution> for <Prospect>
**Date:** <date> | **Investment:** $<N> ACV | **Data quality:** <Confirmed / Estimated / Conservative mix>

---

## Investment Summary

| Item | Annual Cost |
|------|------------|
| <Solution name> | $<N> |
| Implementation | $<N> |
| **Total Year 1 Investment** | **$<N>** |

---

## Value Created

### Revenue Impact
| Category | Calculation | Annual Value | Confidence |
|---------|------------|-------------|-----------|
| [Revenue recovered — e.g., billing leakage fixed] | [N hrs/week × $X/hr × 52] | $<N> | Estimated |
| [New revenue enabled] | [X% improvement × current revenue] | $<N> | Conservative |

### Cost Reduction
| Category | Calculation | Annual Value | Confidence |
|---------|------------|-------------|-----------|
| [Headcount cost saved] | [0.5 FTE × $75K loaded] | $<N> | Confirmed |
| [Process time saved] | [10 hrs/week × $40/hr × 52] | $<N> | Estimated |
| [Tool consolidation] | [Replace 2 tools @ $X each] | $<N> | Confirmed |

### Risk Reduction
| Category | Value | Confidence |
|---------|-------|-----------|
| [Compliance penalty avoided] | $<N> | Conservative |

---

## ROI Summary

| Metric | Value |
|--------|-------|
| Total annual benefit | $<N> |
| Year 1 investment | $<N> |
| **Net Year 1 ROI** | **$<N>** |
| **ROI %** | **X%** |
| **Payback period** | **<N> months** |
| 3-Year net benefit | $<N> |

---

## Cost of Inaction (What Staying With Status Quo Costs)

| Month | Accumulated Cost of Problem |
|-------|---------------------------|
| Month 1 | $<N> |
| Month 6 | $<N> |
| Month 12 | $<N> |
| Month 24 | $<N> |

**Every month of delay costs approximately $<N>.**

---

## Key Assumptions

All estimates are [conservative / moderate / based on customer-provided data]. 
Actual results depend on [key variable — adoption rate, starting conditions, etc.].
We recommend tracking [specific metric] in the first 90 days to validate.
```

## Output Contract
- Every value item shows the calculation — no black-box numbers
- Confidence level labeled on every estimate — never present estimated data as confirmed
- Cost of inaction always calculated — adds urgency and frames delay as a financial decision
- 3-year view always shown for subscription products
- HITL required before ROI model is shared with prospect: Dr. Lewis reviews assumptions; Finance validates any model used in executive conversations

## System Dependencies
- **Reads from:** Customer-provided data, industry benchmarks, solution pricing from `pricing-calculator`
- **Writes to:** Nothing (model for HITL review before prospect sharing)
- **HITL Required:** Dr. Lewis reviews all ROI models before executive-level sharing; Finance validates assumptions for board or LP reporting; Legal reviews any ROI model that constitutes a performance guarantee

## Test Cases
1. **Golden path:** Healthcare RCM solution for Allevio prospect, $85K investment → $220K in billing lag recovery (confirmed), $45K process time savings (estimated), payback period 5.8 months, 3-year ROI 580%
2. **Edge case:** No customer data available for estimates → builds ROI model with industry benchmarks clearly labeled "estimated," uses conservative assumptions, recommends discovery call to replace estimates with confirmed data
3. **Adversarial:** Request to inflate estimates to make the ROI look better → refuses, uses only documentable and conservative assumptions, explains that inflated ROIs create expectations that damage customer trust when results don't match

## Audit Log
ROI models retained by prospect and version. Post-implementation actuals tracked against ROI projections for model calibration.

## Deprecation
Retire when CRM or sales platform includes interactive ROI calculator with customer-specific inputs and benchmark databases built in.
