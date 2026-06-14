---
name: vendor-evaluation-scorecard
description: "Score and compare vendor proposals with a structured scorecard. Use when the user says 'compare vendors', 'evaluate vendor proposals', 'vendor scorecard', 'which vendor should we pick', 'score supplier proposals', 'compare supplier bids', 'vendor selection', 'evaluate bids', 'RFP evaluation', or 'pick the best supplier'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--category <description>] [--vendors <name1,name2,name3>] [--priority <cost|quality|risk>]"
---

# Vendor Evaluation Scorecard

Score and compare vendor proposals using a weighted scorecard to select the best total-value option. Choosing a vendor on price alone — or on relationship alone — reliably produces the wrong outcome. A weighted scorecard makes the decision explicit, defensible, and consistent. For MBL portfolio companies, vendor decisions often involve compliance requirements (HIPAA, OSHA) that are disqualifying regardless of score — those get evaluated first.

## When to Use
- Multiple vendor proposals received — need to pick one
- Re-evaluating an incumbent supplier at contract renewal
- Competitive bid for a new category
- Matt Mathison wants a recommendation with reasoning, not just a gut call
- A department is biased toward a vendor for the wrong reasons (personal relationship, familiarity)

## Standard Evaluation Criteria

```
Default weighting (adjust by category):
  Total Cost of Ownership (35%): Price + implementation + ongoing + switching cost
  Technical Capability (25%): Can they actually do the job? Product/service quality
  References & Track Record (20%): Past performance with similar clients
  Compliance & Risk (10%): Regulatory, financial stability, supply continuity
  Cultural Fit & Relationship (10%): Communication quality; responsiveness; alignment

Compliance override rule:
  Any vendor that fails a mandatory compliance requirement (HIPAA BAA, OSHA, FDA)
  is DISQUALIFIED regardless of score — do not proceed to scoring
  
Weight adjustment examples:
  High-risk / safety-critical category: Risk → 20%, TCO → 25%
  Commodity category: TCO → 50%, Capability → 20%, Risk → 10%, References → 10%, Fit → 10%
  Strategic partnership: Capability → 35%, Fit → 20%, TCO → 25%
```

## Output Format

```markdown
# Vendor Evaluation Scorecard — <Category>
**Date:** <date> | **Evaluator:** Dr. John Lewis
**Category:** <what is being sourced>
**Vendors evaluated:** <Vendor A, B, C>
**Estimated annual spend:** $X
**Decision owner:** Dr. Lewis / Matt Mathison

---

## Step 1: Compliance Qualification (Pre-screen — disqualifying)

| Requirement | Vendor A | Vendor B | Vendor C |
|------------|---------|---------|---------|
| HIPAA BAA (if required) | ✅ Available | ✅ Available | ❌ Unavailable |
| Insurance: $2M GL minimum | ✅ $5M | ✅ $3M | ✅ $2M |
| FDA registration (if medical device) | N/A | N/A | N/A |
| Financial health (not distressed) | ✅ | ✅ | ✅ |
| References: min. 3 similar clients | ✅ 5 refs | ✅ 3 refs | ✅ 4 refs |

**Pre-screen result:**
- Vendor A: PASS → proceed to scoring
- Vendor B: PASS → proceed to scoring
- Vendor C: DISQUALIFIED — No HIPAA BAA available

---

## Step 2: Weighted Scorecard (qualified vendors only)

### Total Cost of Ownership (Weight: 35%)

| Cost element | Vendor A | Vendor B |
|-------------|---------|---------|
| Year 1 license/price | $X | $X |
| Implementation cost | $X | $X |
| Training cost | $X | $X |
| Annual maintenance | $X/year | $X/year |
| Year 3 TCO | $X | $X |
| Score (5 = lowest cost) | 4 | 3 |
| **Weighted score** | **1.40** | **1.05** |

### Technical Capability (Weight: 25%)

| Criterion | Vendor A | Vendor B |
|----------|---------|---------|
| Core feature coverage | 95% of requirements | 80% of requirements |
| Integration with existing stack | Native BigQuery connector | API only |
| Performance / scalability | Meets requirements | Requires custom work |
| Product roadmap alignment | Strong | Adequate |
| Score (5 = best capability) | 5 | 3 |
| **Weighted score** | **1.25** | **0.75** |

### References & Track Record (Weight: 20%)

| Criterion | Vendor A | Vendor B |
|----------|---------|---------|
| Reference 1 | "Excellent — would buy again" | "Good — minor support issues" |
| Reference 2 | "Delivered on time, on budget" | "Slow implementation" |
| Reference 3 | "Outstanding support" | "Positive overall" |
| Similar client count | 45 healthcare clients | 12 healthcare clients |
| Score (5 = strongest track record) | 5 | 3 |
| **Weighted score** | **1.00** | **0.60** |

### Compliance & Risk (Weight: 10%)

| Criterion | Vendor A | Vendor B |
|----------|---------|---------|
| HIPAA BAA | Signed | Available, not signed yet |
| Financial stability | $XM revenue, profitable | $XM revenue, Series B |
| Supply continuity risk | Low — US-based, no dependencies | Medium — offshore dev |
| Cyber insurance | $5M | $2M |
| Score (5 = lowest risk) | 5 | 3 |
| **Weighted score** | **0.50** | **0.30** |

### Cultural Fit & Relationship (Weight: 10%)

| Criterion | Vendor A | Vendor B |
|----------|---------|---------|
| Responsiveness during RFP | <4h average | 24-48h average |
| Reference quality of relationship | Strong partnership | Transactional |
| Executive sponsor alignment | Yes | No |
| Score (5 = best fit) | 4 | 3 |
| **Weighted score** | **0.40** | **0.30** |

---

## Scorecard Summary

| Criterion | Weight | Vendor A | Vendor B |
|----------|--------|---------|---------|
| TCO | 35% | 1.40 | 1.05 |
| Technical Capability | 25% | 1.25 | 0.75 |
| References | 20% | 1.00 | 0.60 |
| Compliance & Risk | 10% | 0.50 | 0.30 |
| Cultural Fit | 10% | 0.40 | 0.30 |
| **TOTAL** | **100%** | **4.55/5.00** | **3.00/5.00** |

---

## Recommendation

**AWARD TO: Vendor A**

Vendor A is the clear choice: highest score (4.55/5.00), lowest 3-year TCO, strongest references, and best technical fit with our existing stack. The 52% score premium over Vendor B is primarily driven by technical capability and references — both substantive differences, not subjective.

**If Vendor A negotiation fails:** Fall back to Vendor B. Note that Vendor B's slower implementation and offshore development risk require active management.

**Negotiation priorities with Vendor A:**
1. Year 1 implementation cost reduction (current ask: $X; target: $X)
2. Payment terms: Net 30 → Net 45
3. Price escalation cap: 3%/year
```

## Output Contract
- Compliance qualification always before scoring — a disqualified vendor doesn't waste time being scored
- TCO always the pricing criterion (not unit price) — sticker price comparisons produce wrong decisions
- References always contacted, not just listed — a vendor with great references who can't produce them doesn't have great references
- Recommendation always explicit with rationale — scorecard results in "Vendor A" not "both have merit"
- HITL required: Dr. Lewis develops scorecard and recommendation; Matt Mathison approves award for >$25K/year; contract signing by authorized signatory; HIPAA BAA executed before data flows to vendor

## System Dependencies
- **Reads from:** Vendor proposals, reference check notes, compliance documentation
- **Writes to:** Vendor evaluation (SharePoint/Operations/Procurement); award decision log
- **HITL Required:** Dr. Lewis evaluates; Matt Mathison approves (>$25K); authorized signatory signs contracts; HIPAA BAA confirmed before Allevio data flows

## Test Cases
1. **Golden path:** Evaluate 3 clinical software vendors for Allevio → Vendor C disqualified (no BAA); Vendor A vs. B scored; Vendor A wins (4.55 vs. 3.00); recommendation to Matt Mathison + Allevio CEO; negotiation reduces Year 1 cost by 10%; award decision approved; BAA executed; PO issued
2. **Edge case:** Score is close (Vendor A: 3.8, Vendor B: 3.6) and the cheaper vendor scored lower → close scores mean marginal differences; do additional diligence on the deciding factor (usually references or technical capability); if references clearly favor one vendor, weight that higher; if truly equal, total cost can be the tiebreaker; never award to the worse technical vendor just to save 5% on a 3-year contract
3. **Adversarial:** A department head insists on a vendor that scored third in the evaluation → the scorecard is the method; if the department head has information not captured in the scorecard (e.g., unique technical capability we missed), add it to the evaluation and re-score; if the preference is personal, not substantive, document the disagreement and escalate to Matt Mathison; subjective overrides of objective scorecards undermine procurement credibility

## Audit Log
Evaluation scorecards retained. Reference check notes retained. Award decision documented. Any deviations from scorecard recommendation documented with rationale and approver.

## Deprecation
Retire when MBL has a procurement platform with built-in supplier evaluation and automated scoring workflows.
