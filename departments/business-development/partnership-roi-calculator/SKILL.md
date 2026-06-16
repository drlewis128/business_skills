---
name: partnership-roi-calculator
description: "Calculate and present the ROI of a partnership or partner program. Use when the user says 'partnership ROI', 'calculate partner ROI', 'is this partnership worth it', 'partner program return', 'ROI of our partner program', 'justify the partner investment', 'partnership economics', 'partner program value', 'measure partnership return', or 'partnership cost-benefit analysis'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--partner <partner name or 'program'>] [--period <annual|quarterly|LTV>]"
---

# Partnership ROI Calculator

Calculate and present the financial return on a partnership or the full partner program — converting the cost of BD time, referral fees, and program infrastructure into a clear ROI that can be evaluated against alternative uses of the same resources. Partnership ROI analysis is the key input to Matt Mathison's decision on whether to invest more, maintain, or scale back the partner program.

## When to Use
- Matt Mathison asks "is the partner program worth the investment?"
- Preparing a partner program budget request — need to justify the spend
- Evaluating whether to expand the partner program (more partners) or double down on fewer, better ones
- Comparing partnership as a growth channel vs. direct sales or marketing
- Evaluating a specific individual partnership before renewal

## ROI Framework

```
Partnership ROI requires two sides of the equation:

COST:
  1. Partner fees paid (referral fees, revenue share, royalties)
  2. BD team time (Dr. Lewis time + any BD staff cost)
  3. Partner program infrastructure (tools, events, materials, co-marketing)
  4. Opportunity cost (what else could that BD time have done?)

RETURN:
  1. Partner-attributed closed revenue (verified in CRM)
  2. Partner-generated open pipeline (at appropriate conversion probability)
  3. Strategic value (not always financial — market access, competitive positioning)
  4. Customer acquisition cost (CAC) comparison: partner-sourced vs. direct

Healthy partnership ROI: ≥3× return on total cost is the target for an active program.
Programs generating <2× should be restructured or exited.
Programs generating >5× should be scaled.
```

## Output Format

```markdown
# Partnership ROI Analysis — <Company Name>
**Scope:** [Specific partner / Full program] | **Period:** [Q[N] / Annual / LTV]
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison

---

## TL;DR

- **Partner program cost (total period):** $[X]
- **Partner-attributed revenue (closed):** $[X]
- **Partner-generated pipeline (open):** $[X]
- **ROI (closed revenue / total cost):** [X]×
- **Partner CAC vs. direct CAC:** $[X] vs. $[X] ([X%] cheaper/more expensive)
- **Recommendation:** [Scale / Maintain / Restructure / Exit]

---

## Cost Analysis

### Partner Fees Paid

| Partner | Type | Fees paid (period) |
|---------|------|-------------------|
| [Partner 1] | Referral | $[X] |
| [Partner 2] | Referral | $[X] |
| [Partner 3] | Co-sell | $[X] |
| **Total partner fees** | | **$[X]** |

### BD Time Investment

| Activity | Hours | Rate | Cost |
|---------|-------|------|------|
| Partner recruitment (outreach, calls, qualification) | [N] hrs | $[X]/hr | $[X] |
| Partner onboarding (kickoff, enablement, setup) | [N] hrs | $[X]/hr | $[X] |
| Partner management (QBRs, check-ins, health monitoring) | [N] hrs | $[X]/hr | $[X] |
| Co-marketing and joint GTM | [N] hrs | $[X]/hr | $[X] |
| Deal registration and attribution management | [N] hrs | $[X]/hr | $[X] |
| **Total BD time cost** | **[N] hrs** | | **$[X]** |

### Program Infrastructure

| Item | Cost |
|------|------|
| Co-marketing activities | $[X] |
| Partner events / QBR hosting | $[X] |
| Partner portal / tools | $[X] |
| Materials and content production | $[X] |
| **Total infrastructure** | | **$[X]** |

### **Total Partner Program Cost: $[X]**

---

## Return Analysis

### Closed Revenue (Verified Attribution)

| Partner | Closed deals | Revenue attributed | Gross margin |
|---------|------------|-------------------|-------------|
| [Partner 1] | [N] | $[X] | $[X] ([X%]) |
| [Partner 2] | [N] | $[X] | $[X] ([X%]) |
| **Total closed** | **[N]** | **$[X]** | **$[X] ([X%])** |

### Open Pipeline (Probability-Weighted)

| Partner | Pipeline value | Win probability | Weighted value |
|---------|--------------|----------------|---------------|
| [Partner 1] | $[X] | [X%] | $[X] |
| [Partner 2] | $[X] | [X%] | $[X] |
| **Total pipeline** | **$[X]** | | **$[X] weighted** |

### Total Return: $[X] closed + $[X] weighted pipeline = $[X] total return

---

## ROI Calculation

| Metric | Value |
|--------|-------|
| Total cost | $[X] |
| Closed revenue | $[X] |
| **ROI (closed/cost)** | **[X]×** |
| Including weighted pipeline | **[X]×** |

**ROI interpretation:**
| ROI | Verdict | Action |
|-----|---------|--------|
| >5× | Exceptional | Scale — invest more in this channel |
| 3-5× | Strong | Maintain and optimize |
| 2-3× | Acceptable | Maintain; identify what's holding it below 3× |
| 1-2× | Marginal | Restructure; identify underperformers to exit |
| <1× | Negative ROI | Exit or major restructure required |

**This program: [X]× — [Verdict]**

---

## Customer Acquisition Cost Comparison

| Channel | Customers acquired | Total cost | CAC |
|---------|-------------------|-----------|-----|
| Partner program | [N] | $[X] | $[X] |
| Direct sales | [N] | $[X] | $[X] |
| Marketing (inbound) | [N] | $[X] | $[X] |

**Partner CAC vs. direct:** $[X] vs. $[X] — [X%] [cheaper / more expensive]
[If cheaper: partner channel is capital-efficient; if more expensive: evaluate whether partner customers are higher LTV]

---

## Partner Program Optimization Opportunities

| Opportunity | Estimated impact | Priority |
|------------|-----------------|---------|
| Exit [Partner X] — negative contribution after fees | Free [N hrs/quarter]; save $[X] in fees | 🔴 High |
| Double down on [Partner A] — highest ROI; could scale to [N] more referrals | +$[X] potential revenue | 🔴 High |
| Automate deal registration (manual today — N hrs/quarter) | Save [N hrs/quarter] | 🟡 Medium |
| Simplify partner fee calculation to reduce attribution disputes | Save [N hrs/quarter] | 🟡 Medium |

---

## Matt Mathison Summary

Partner program ROI for [Company] [period]: [X]× return on $[X] total investment. [N] partners active; [N] partners driving 80% of value. Partner CAC: $[X] vs. direct $[X] — [cheaper/more expensive]. Best performer: [Partner A] at $[X] attributable revenue. Underperformer: [Partner X] — [N] hours invested, $[0] revenue in [N] months. **Matt Mathison decision needed:** [Scale program / Exit [Partner X] / No change — Dr. Lewis managing optimization]
```

## Output Contract
- Both cost AND return always calculated — the most common failure in partnership reporting is calculating only the return (referral fees are easy to see) without fully accounting for the cost (BD time is invisible without an explicit calculation); a program with $200K in revenue and $180K in BD time + fees is not a high-ROI program
- CAC comparison always included — partnership ROI must be compared to the alternatives; a 3× ROI on a partnership channel that has a higher CAC than direct sales may not justify the complexity; the comparison gives context to the ROI
- ROI verdict always produces a recommendation — "our ROI is 2.8×" is a fact; "2.8× means we should maintain the program and identify which 20% of partners are generating 80% of the value" is a recommendation; the output must include a disposition
- Partner-level granularity always shown — program-level ROI obscures the 80/20 reality; a program with 6 partners where 1 is generating 90% of the return is not a "6-partner program" — it's a 1-partner program with 5 relationships burning BD time; the partner-level breakout reveals this
- HITL required: Dr. Lewis calculates; Matt Mathison reviews annually; any decision to scale or restructure the partner program (add partners, exit partners, change economics) requires Matt Mathison approval; partner exits require Matt Mathison approval; program investment increases require Matt Mathison approval

## System Dependencies
- **Reads from:** CRM (partner-attributed revenue and pipeline), fee payment records, BD time tracking, marketing spend data
- **Writes to:** Partnership ROI report (SharePoint/BD/ROI Reports); Matt Mathison brief; program investment recommendation
- **HITL Required:** Dr. Lewis calculates; Matt Mathison reviews; scaling and exit decisions require Matt Mathison

## Test Cases
1. **Golden path:** Allevio annual partner program ROI analysis → 5 partners; Fees paid: $28,400; BD time: 180 hrs × $125/hr = $22,500; Infrastructure: $3,600; Total cost: $54,500; Closed revenue: $187,000; Open pipeline weighted: $45,000; Total return: $232,000; ROI: 3.4× (closed) / 4.3× (including pipeline); CAC via partners: $6,820 (27 customers) vs. direct: $9,200 — partners are 26% more capital-efficient; 80/20: Partners A and B generate 78% of revenue; Partners D and E have generated $0 in 9 months; Recommendation: exit Partner D and E (free 45 hrs/year); double down on Partner A (QBR + tier upgrade); scale to 2 new partners using saved BD time; Matt Mathison approved all recommendations
2. **Edge case:** BD time is not tracked (Dr. Lewis doesn't log hours) → the ROI analysis will undercount cost and overstate ROI; estimate conservatively: "partner management requires approximately [N hours/quarter] based on [N] active partners × [activity frequency]"; document the estimate and its basis; flag to Matt Mathison that the cost calculation is an estimate and recommend implementing time tracking going forward; a partnership program whose true BD cost is unknown is not being managed to its actual economics
3. **Adversarial:** The ROI calculation shows a 1.2× return on the partner program (marginal), but the CEO believes the partners provide strategic value beyond direct revenue → quantify the strategic value or acknowledge it's unquantifiable; if it's unquantifiable, the ROI analysis shows the financial component only; strategic value (market access, competitive positioning, relationship network) is a real but hard-to-measure input; make the case explicitly to Matt Mathison: "financial ROI is 1.2× — below our target; however, [Partner A] provides [specific strategic value]; our recommendation is to retain [Partner A] on strategic grounds while exiting [Partners D and E] who provide neither financial nor strategic value"

## Audit Log
ROI analyses retained by period. Cost calculations documented. Revenue attribution verified against CRM. Partner exit and scale decisions with rationale retained. Matt Mathison reviews logged.

## Deprecation
Retire when portfolio companies have BI dashboards that calculate partnership ROI automatically on a monthly cadence with real-time CRM and cost data integration.
