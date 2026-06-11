---
name: customer-roi-review
description: "Document and present the ROI a customer has realized from the solution. Use when the user says 'customer ROI', 'value review', 'what value have we delivered', 'prove our ROI', 'business value delivered', 'ROI report for the customer', or 'document the outcomes'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--period <quarterly|annual>] [--format <internal|qbr|renewal>]"
---

# Customer ROI Review

Document and present the ROI a customer has realized from the solution. ROI reviews are CS's most powerful retention tool — customers who see the value they've received renew at dramatically higher rates. The CSM who shows up to a renewal conversation with a quantified business case wins more than the one who shows up with a relationship.

## When to Use
- Before a QBR (make it the centerpiece of the conversation)
- 90 days before renewal (anchor the value before price is discussed)
- When customer questions value or asks for a discount
- When building the case study or reference program
- Quarterly value summary to the economic buyer

## ROI Measurement Framework

### Layer 1: Input Metrics (Easiest to Measure)
- Hours saved per week/month
- Headcount redeployed or not hired
- Transactions processed or errors prevented

### Layer 2: Business Outcome Metrics (More Meaningful)
- Revenue recovered or enabled
- Cost reduced (operational, compliance, acquisition)
- Error rate reduction
- Processing time reduction

### Layer 3: Strategic Value (Hardest to Quantify but Most Powerful)
- Risk avoided (regulatory, financial, reputational)
- Competitive advantage maintained
- Customer experience improvement that drives retention

## Measurement Approach

1. **Establish baseline** — What was the situation before? (Set in success plan at kickoff)
2. **Measure current state** — What is the situation now?
3. **Calculate delta** — What improved?
4. **Convert to dollars where possible** — Not always possible, but always try
5. **Let the customer validate** — Ask them to confirm the numbers before presenting publicly

## Output Format

```markdown
# Customer ROI Review — <Account>
**Entity:** <MBL entity> | **Period:** <date range> | **Date:** <date>

---

## ROI Summary

| Metric | Baseline | Current | Improvement |
|--------|---------|---------|------------|
| [Primary metric] | <Baseline> | <Current> | X% improvement |
| [Secondary metric] | <Baseline> | <Current> | |
| [Efficiency metric] | | | |

**Estimated dollar value of improvements:** $<N>
**Investment (contract ACV for period):** $<N>
**Net ROI:** $<N> | **ROI multiple:** <N>× | **Payback period:** <N> months

---

## Value Delivered — Detail

### [Category 1: e.g., Time Savings]
**Before:** [Specific description of the process/state before]
**After:** [Specific description now]
**Measurement:** [Hours per week × $X loaded hourly rate × N weeks]
**Value:** $<N>
**Confidence:** Customer-confirmed / Estimated from data / Conservative estimate

### [Category 2: e.g., Error Reduction]
**Before:** X errors per month at $Y average cost per error
**After:** X% fewer errors
**Value:** $<N>
**Confidence:** Customer-confirmed

### [Category 3: e.g., Revenue Impact]
**Description:** [How the solution enabled or recovered revenue]
**Value:** $<N>
**Confidence:** [Estimated — conservative]

---

## Customer Goals vs. Achievement

| Goal (From Success Plan) | Target | Achieved | Status |
|------------------------|--------|---------|--------|
| Goal 1 | <Target> | <Actual> | ✅ / ⚠️ / ❌ |
| Goal 2 | | | |

---

## Qualitative Value (Non-Quantifiable)

- [Strategic value 1 — e.g., reduced compliance risk]
- [Strategic value 2 — e.g., team morale improvement from eliminating manual work]

---

## Looking Ahead

**Unrealized value (opportunity):** <Where there's still value to unlock>
**Next steps to capture it:** [Specific — expansion, training, feature adoption]

---

## Customer Quote (For Post-Renewal Use)

> "[Quote from champion or economic buyer about the value they've received]"
> — [Name, Title, Company]

*Note: Confirm customer approves this quote for potential public use before including in external materials.*
```

## Output Contract
- Every value item labeled with confidence level — customer-confirmed is the gold standard
- Goals vs. achievement always shown — honest about gaps, not just wins
- Dollar value calculated where possible — "significant improvement" is not a business case
- HITL required before ROI review is used in renewal proposal, case study, or external communication

## System Dependencies
- **Reads from:** Success plan (baseline goals and metrics), usage data, customer-provided data, support tickets (provided)
- **Writes to:** Nothing (review for HITL approval before customer use)
- **HITL Required:** Customer validates numbers before external use; Dr. Lewis reviews for use in board/LP reporting; Legal reviews any ROI claim used in marketing materials

## Test Cases
1. **Golden path:** Allevio healthcare customer, 12-month review → billing lag reduced 31%, $180K estimated time savings, $45K revenue recovered, 3 success plan goals met, customer-validated quote for case study
2. **Edge case:** Customer has no baseline data established at kickoff → builds ROI from industry benchmarks and current state, clearly labels as estimated, recommends establishing baseline measurement before next contract year
3. **Adversarial:** CSM wants to inflate ROI numbers to secure a larger renewal → refuses to include unvalidated or exaggerated numbers, uses conservative estimates only, explains that inflated ROI creates renewal expectations that can't be met in year 2

## Audit Log
ROI reviews retained by account and period. Customer-confirmed values documented separately from estimates.

## Deprecation
Retire when CS platform tracks customer outcomes automatically and generates value reviews from live data with customer confirmation workflow.
