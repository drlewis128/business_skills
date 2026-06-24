---
name: sales-allevio-roi-calculator
description: "Calculate and present ROI models for Allevio employer prospects. Use when the user says 'Allevio ROI', 'ROI model', 'employer ROI', 'healthcare ROI', 'ROI calculator', 'ROI calculation', 'cost savings', 'savings model', 'healthcare savings', 'benefits savings', 'cost reduction model', 'cost model', 'healthcare cost model', 'Allevio savings', 'PMPM ROI', 'benefits cost analysis', 'cost vs savings', 'investment vs return', 'payback period', 'break-even', 'healthcare break-even', 'claims reduction model', 'claims cost model', 'employer savings calculation', 'show me the ROI', 'what is the ROI', 'how does the ROI work', 'build the ROI model', 'ROI for the CFO', 'CFO ROI', 'finance ROI', 'cost justification', 'justify the cost', 'prove the ROI', 'Allevio financial case', 'business case Allevio', 'Allevio business case', 'healthcare cost trend', 'claims trend', or 'medical cost trend'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--employees <N>] [--current-pmpm <$X>] [--allevio-pmpm <$X>] [--claims-trend <X%>]"
---

# Sales Allevio ROI Calculator

Calculate and present ROI models for Allevio employer prospects — building employer-specific financial cases that demonstrate Allevio's cost-reduction value in terms CFOs can evaluate against budget. The ROI model converts an HR problem (benefits utilization; provider access) into a CFO problem (cost trend; avoided cost; payback period). When the CFO can see the math, the conversation shifts from "how much does this cost?" to "when does this pay off?"

## When to Use
- Prospect asks "what's the ROI?" or "can you show me the financial case?"
- Building a proposal where the CFO is the economic buyer
- Demo preparation (populate the ROI model with prospect's numbers)
- Coaching a rep on how to present the financial case

## ROI Model Framework

```
ALLEVIO ROI MODEL — INPUTS (from discovery):
  E = enrolled employees (from employer census estimate; typically 70-80% of total headcount)
  C = current estimated healthcare cost/employee/month (ask in discovery; or use industry benchmark)
  T = current claims trend (% YoY increase; national benchmark: 6-8%/year; ask employer for their number)
  P = Allevio PMPM (from rate card; based on employee count and service tier)
  U = expected utilization rate (Allevio benchmark: [X]% of enrolled employees access care in year 1)
  
ALLEVIO ROI MODEL — CALCULATION:
  Year 0 (current state):
    Monthly healthcare cost: E × C
    Annual healthcare cost: E × C × 12
    
  Year 1 (with Allevio — transition year):
    Allevio PMPM investment: E × P × 12
    Claims trend with Allevio (conservative): T × 0.6 (Allevio reduces trend by ~40% in year 1 — benchmark)
    Net change in claims cost: E × C × (T × 0.6) — compare to E × C × T without Allevio
    Year 1 net: Allevio investment + reduced claims trend vs. status quo claims trend
    Break-even: depends on claims base and trend; typically 12-24 months
    
  Year 2+ (with Allevio — compounding effect):
    Claims trend reduction deepens: T × 0.25 (75% reduction vs. status quo trend — benchmark)
    Annual avoided cost: difference between status quo trend and Allevio trend × base cost
    Net ROI: avoided cost − Allevio PMPM investment
    Typical Year 2 ROI: 15-22% net savings on healthcare cost per employee
    
  SENSITIVITY TABLE:
    Run 3 scenarios:
      Conservative (claims trend reduction 30%): baseline estimate
      Base (claims trend reduction 40-50%): benchmark from comparable employers
      Optimistic (claims trend reduction 60%+): top-quartile Allevio employers
    Show all 3 scenarios in CFO presentation; use Conservative as base case
    
HIPAA CONSTRAINTS ON ROI MODEL:
  Inputs: employer total headcount + estimated enrolled count (not individual employee data)
  Do NOT use: individual employee health data; individual claims data; specific diagnoses in any scenario
  Aggregate proof points: "Allevio employers average X% trend reduction" — source is Allevio aggregate portfolio
  Client testimonials in ROI materials: employer name + aggregate outcome only (not individual stories)
  Census data for enrollment estimate: use employer's estimate from discovery (exact census collected AFTER contract)
  
CFO PRESENTATION OF ROI MODEL:
  Lead with their number first: "Your current healthcare cost is approximately $X/employee/year"
  Present trend risk: "At your current claims trend of X%, year 2 cost would be $Y"
  Then Allevio: "At [P] PMPM, Allevio costs $Z/employee/year — here's the trend impact"
  Show crossover point: "At Year 2, avoided cost exceeds Allevio investment — this is the break-even"
  Conservative case: always present Conservative first; Base and Optimistic as upside
  Key CFO question: "What would need to be true for this not to work?" → answer that directly
  
BENCHMARKS (aggregate; not entity-specific):
  Average Allevio employer claims trend reduction: Year 1: 30-40%; Year 2: 50-75% (vs. status quo trend)
  Average employer break-even: 12-18 months
  Average employee utilization rate Year 1: [X]% (Allevio benchmark — entity CEO provides this number)
  Source: Allevio aggregate employer portfolio data — always cited as "across Allevio employer portfolio" not as guarantees
```

## Output Format

```markdown
# Allevio ROI Model — [Employer Name] | [Date]
**Prepared for:** [CFO/HR Director name] | **By:** [Rep name] | **HIPAA: Employer-aggregate only**

---

## Your Current Healthcare Cost Profile
| Metric | Estimate |
|--------|---------|
| Total employees | [N] |
| Estimated enrolled | [N (~75%)] |
| Current PMPM estimate | $[X] |
| Annual healthcare cost | $[X] |
| Current claims trend | [X%]/year |
| Year 2 projected cost (status quo) | $[X] |

---

## Allevio Investment
| Metric | Monthly | Annual |
|--------|---------|--------|
| Allevio PMPM | $[X] | — |
| Total annual investment | — | $[X] |

---

## Projected Savings — 3 Scenarios

| Scenario | Year 1 Trend Reduction | Year 1 Net | Year 2 Net | Break-even |
|----------|----------------------|-----------|-----------|-----------|
| Conservative | 30% | $[X] | $[X] | [Months] |
| Base | 45% | $[X] | $[X] | [Months] |
| Optimistic | 65% | $[X] | $[X] | [Months] |

*Source: Allevio aggregate employer portfolio benchmarks. Not a guarantee.*

---

## Sensitivity Analysis
[Single variable: claims trend ± 2%; employee count ± 10%; PMPM rate options]

---

## Recommendation
[1 sentence: what this model shows and the recommended scenario for the CFO's decision]
```

## Output Contract
- The ROI model uses Conservative as the base case — not Base, not Optimistic; the CFO's job is risk management, not upside optimization; presenting Optimistic as the headline number and then having to qualify it with "but results vary" damages credibility; presenting Conservative and then saying "here's what top-quartile employers experience" gives the CFO a defensible number to approve and upside to be pleasantly surprised by; a CFO who approves Allevio based on a Conservative case that comes in at Base is delighted; a CFO who approves based on Optimistic that comes in at Base feels misled; Dr. Lewis coaches reps to always lead with Conservative and let the CFO ask about the upside
- ROI inputs come from the employer, not from assumptions — the rep uses the employer's stated healthcare cost trend from discovery (not a national benchmark default) whenever possible; if the employer doesn't know their claims trend, the rep uses the national benchmark as a proxy and says "we're using the industry benchmark of 6-8% — your actual number from your broker would make this model more accurate"; a model built on employer-provided data is more credible than one built on generic benchmarks; and an employer who has provided their own numbers has invested in the model and is more likely to act on it
- HITL required: ROI model sent to CFO → Dr. Lewis or entity CEO reviews the model before it goes to the prospect (numbers must be accurate; benchmarks must be sourced; Conservative must be the base case); Allevio proof points in ROI model → aggregate only (no PHI); benchmark data → entity CEO confirms current Allevio aggregate outcomes before rep uses them; ROI model used in board/executive presentation → entity CEO reviews; model used in an RFP response → entity CEO + Dr. Lewis review

## System Dependencies
- **Reads from:** Discovery notes (GHL — employer-stated healthcare cost and trend); Allevio rate card (PMPM by employee count and tier); Allevio aggregate portfolio benchmarks (entity CEO provides — employer outcome data; no individual member data); employer estimated enrollment count (from discovery); national healthcare cost trend benchmarks (source: KFF or HHS aggregate data)
- **Writes to:** ROI model document (SharePoint → Allevio → Sales → ROI Models → [Employer] → [Date]); proposal attachment (if included in proposal); GHL (ROI model sent; date; version); CFO presentation record; entity CEO review record
- **HITL Required:** ROI model to CFO → entity CEO or Dr. Lewis reviews before send; benchmarks → entity CEO confirms current aggregate outcomes; PHI check → aggregate only; board/executive presentation → entity CEO reviews; RFP → entity CEO + Dr. Lewis review; model updates after initial send → entity CEO review before revised version goes to prospect

## Test Cases
1. **Golden path:** 140-employee manufacturing employer. Discovery: HR Director states "healthcare costs about $750/employee/month; been going up about 12% a year; CFO wants answers." Allevio PMPM: $72 (140 employees; standard tier). ROI model inputs: E=105 enrolled (75% × 140); C=$750; T=12%; P=$72. Year 1: Allevio investment $90,720; claims trend with Allevio (Conservative 30% reduction): 8.4% vs. 12% status quo; avoided cost ~$26,460 in Year 1; net Year 1 cost $64,260 above status quo. Year 2: trend reduction deepens to 45%; avoided cost ~$71,820; net Year 2 savings $19,100 positive. Break-even: 19 months (Conservative). Base scenario: break-even 14 months. Model reviewed by entity CEO. Sent to CFO with proposal. CFO asks: "What makes you confident in the trend reduction figure?" Response: "Across our employer portfolio, we see 30-40% claims trend reduction in year 1 — we're using 30% as your Conservative case. Happy to connect you with our VP of Employer Success who can walk through two comparable employer examples."
2. **Edge case:** Rep wants to use a specific employer's outcome as a "proof point" in the ROI model: "ABC Manufacturing reduced healthcare costs by $X" → Dr. Lewis: "Before using any specific employer name, we need: (1) Written permission from ABC Manufacturing to name them publicly; (2) Confirmation that the $X figure is employer-level aggregate cost data, not derived from individual member claims. If we have neither, use the aggregate format: 'An Arizona manufacturing employer with 120 employees reduced healthcare cost trend by 19% in year 1' — no company name, no data that could identify individuals. The proof is in the aggregate; the credibility is in the specificity of the benchmark. Ask entity CEO whether we have any signed employer references who've approved being named."
3. **Adversarial:** CFO pushes back: "These benchmarks are from your own portfolio — of course you're going to say they work. Can I see independent data?" → Dr. Lewis coach: "That's a fair challenge. The honest response: 'Our benchmarks come from our employer portfolio, which is the best data we have — it's actual results, not projected outcomes. For independent context: KFF (Kaiser Family Foundation) publishes annual employer health benefits data showing average trend of 5-8%/year; MGMA publishes primary care utilization data; these support the premise that better primary care access reduces cost trend. What I can also offer: a conversation with one of our current employers — we have [N] who are willing to speak to prospective employers about their experience.' If the CFO says no to references, that's a signal about their decision process, not a reason to fabricate independent validation."

## Audit Log
ROI model records (all models by employer; version; date sent; entity CEO review; SharePoint). Benchmark data records (source; date; entity CEO confirmation). CFO presentation records. Proof point source records (employer aggregate; no PHI). Model accuracy records (outcome vs. projection at 12-month review for enrolled employers). RFP ROI model records.

## Deprecation
ROI model benchmarks reviewed quarterly (Allevio aggregate outcomes update as employer portfolio grows). Claims trend benchmarks reviewed annually (KFF/HHS data refreshes). Model structure reviewed when Allevio's service offering or PMPM pricing changes. CFO presentation format reviewed when Matt Mathison updates financial presentation standards.
