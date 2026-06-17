---
name: strategy-north-star-builder
description: "Define the long-term vision and north star metric for a company. Use when the user says 'north star', 'vision statement', 'company vision', 'long-term vision', 'north star metric', 'what does great look like', 'where do we want to be in 5 years', '5-year vision', 'company purpose', 'mission statement', 'define success', 'what are we building toward', 'big picture', 'long-term ambition', 'where is this company going', or 'strategic vision'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--horizon <3yr|5yr|10yr>] [--audience <leadership|lp|employees|board>]"
---

# North Star Builder

Define the long-term vision and north star metric for MBL portfolio companies — creating the clear, ambitious, achievable picture of what the company looks like at its best so every team member knows what they are building toward and every strategic decision can be tested against whether it moves closer to or further from that vision. The north star is not a mission statement to hang on the wall — it is the compass that makes daily trade-offs easier: when two paths diverge, the north star answers "which way?" At PE portfolio scale, the north star must be credible to two audiences simultaneously: inspiring enough to attract and retain talent, and grounded enough to represent a realistic exit-value destination for Matt Mathison and the LPs.

## When to Use
- A new portfolio company needs to articulate its vision for the team
- The current vision is stale or no longer reflects the actual direction
- Annual planning kickoff — resetting the north star before building the annual plan
- Leadership team alignment session — do we all see the same future?
- LP reporting — framing the portfolio company's ambition and trajectory

## North Star Framework

```
North star components:

1. VISION STATEMENT (where are we going?):
   Definition: A vivid, specific description of what the company looks like when it has fully succeeded
   Length: 2-3 sentences maximum — if it takes more, it's not clear enough
   Test: Can every employee read this and know whether their daily work moves toward it?
   Anti-patterns: Too generic ("be the best healthcare company"), too timid ("grow steadily"), too jargon-heavy
   
2. NORTH STAR METRIC (the single number that best captures progress):
   Definition: The one metric that, if it grows, almost certainly means the company is achieving its vision
   Not revenue (a lagging indicator) — the metric that revenue follows
   Not vanity metrics (social media followers, website visits) — the metric that reflects real value delivery
   
   Portfolio examples:
     Allevio: Patients under managed care (the more practices Allevio manages, 
       the more patients benefit — revenue follows patient volume; compliance follows patient safety)
     HIVE Partners: BOE produced per invested dollar (efficiency measure — 
       the better HIVE converts capital to production, the better the investment performs)
     Column6/Siprocal: Impression match rate (the percentage of available CTV impressions 
       matched to a targeted buyer — programmatic efficiency drives revenue and platform value)
       
3. 3-YEAR MILESTONE (where we'll be by the interim goal):
   Specific, measurable, achievement at Year 3 that demonstrates we're on the path to the vision
   Not "be bigger" — specific: "3 physician practice affiliations, 4,200 patients under management, $3.5M revenue"
   
4. THRIVE ALIGNMENT CHECK:
   Truth: Is the vision honest? Would a skeptic say "that's actually achievable and important"?
   Hustle: Does the vision require real ambition and urgency? Or is it comfortable and incremental?
   Respect: Does the vision reflect how we want to treat patients/customers/employees?
   Integrity: Is the vision consistent with how we actually behave and the decisions we make?
   Value: Does the vision create real economic and social value? Or is it primarily financial engineering?
   Enjoy: Can the team be genuinely excited about building toward this vision?
```

## Output Format

```markdown
# North Star — [Company Name]
**Date:** [Date] | **Horizon:** [3yr / 5yr] | **Prepared by:** Dr. John Lewis
**Audience:** [Leadership team / LP report / Employee communication]

---

## Vision Statement

> [2-3 sentences. Specific. Vivid. Honest. What does this company look like when it has succeeded?
> Example: "Allevio is the leading physician practice management partner in Arizona — the organization 
> that independent physicians choose when they want to grow their practice while preserving their clinical 
> autonomy. By 2030, Allevio manages 12 physician practices serving 9,000 patients across the greater 
> Phoenix-Scottsdale area, recognized as the employer of choice for primary care physicians who want to 
> practice medicine without the administrative burden of solo practice."]

---

## North Star Metric

**The number:** [Metric name]
**Definition:** [Exact definition — what counts, what doesn't]
**Current value:** [X] | **Target ([Year]):** [X]
**Why this metric:** [One sentence — why does this metric, if it grows, mean we are succeeding?]

**Dashboard view:**
| Period | Target | Actual | vs. Target |
|--------|--------|--------|-----------|
| Q1 | [X] | | |
| Q2 | [X] | | |
| Q3 | [X] | | |
| Q4 | [X] | | |
| Year target | [X] | | |

---

## 3-Year Milestone

**By [Year], [Company] will:**
- [Specific, measurable milestone 1]
- [Specific, measurable milestone 2]
- [Specific, measurable milestone 3]

**What that looks like financially:** Revenue $[X]M | EBITDA $[X]M ([X]%) | [Entity KPI at X]

---

## THRIVE Alignment

| Filter | Assessment | Evidence |
|--------|-----------|---------|
| Truth | ✅/⚠️ | [Is the vision honest and achievable?] |
| Hustle | ✅/⚠️ | [Does it require real ambition?] |
| Respect | ✅/⚠️ | [Does it reflect how we treat people?] |
| Integrity | ✅/⚠️ | [Is it consistent with our decisions?] |
| Value | ✅/⚠️ | [Does it create real economic and patient/customer value?] |
| Enjoy | ✅/⚠️ | [Can the team be excited building toward this?] |

---

## Connection to Annual Plan

**This year's priorities are derived from the north star:**
- Annual Priority 1: [Specific] → moves north star metric from [X] to [X]
- Annual Priority 2: [Specific] → builds capability required by [Year] milestone
- Annual Priority 3: [Specific] → de-risks the path to the vision

---

## Matt Mathison Brief

[Company] north star: "[One sentence vision summary]." North star metric: [Metric name] — current [X]; 3-year target [X]; 5-year vision [X]. 3-year milestone: $[X]M revenue, [X]% EBITDA, [entity KPI]. THRIVE alignment: ✅ all six filters. Connection to thesis: [One sentence — how the north star supports the exit hypothesis].
```

## Output Contract
- The north star must be specific enough to make real decisions — "become a leading healthcare company" passes no decisions through it; "be the physician practice partner in Arizona that 10 independent practices choose to affiliate with by 2030, serving 8,000 patients" passes nearly every decision: do we expand to Colorado? (No — AZ is the north star); do we launch telehealth? (Only if it helps attract physician practices or serve patients in our AZ network); do we acquire a billing company? (Only if it makes us better for physician practices we serve); vague visions are not north stars — they are aspirations without direction
- The north star metric is singular — not "revenue and EBITDA and patient satisfaction" — one number; the north star metric is not revenue because revenue measures what we extract from customers, not the value we create for them; Allevio's north star is patients under managed care because when that number grows, physicians are affiliating, patients are being served, revenue follows, and the exit thesis is being validated; choosing the north star metric is one of the highest-leverage strategic decisions; Dr. Lewis challenges any proposal that nominates revenue as the north star metric
- The vision must be honest, not impressive — a vision that leadership doesn't genuinely believe is achievable produces cynicism, not alignment; if the management team privately believes "5 new practices by 2028" is unrealistic but the official north star says that, every planning meeting will produce plans that don't match the north star; Dr. Lewis applies the THRIVE Truth filter: would a reasonable, informed skeptic look at the north star and say "that's ambitious but credible"? If yes, it's honest; if the skeptic would say "that's a marketing headline, not a plan," it needs revision
- HITL required: Dr. Lewis drafts; CEO reviews and must genuinely own the vision (it fails if the CEO doesn't believe it); full leadership team reviews for their buy-in; Matt Mathison reviews for thesis alignment and LP credibility; company-wide communication of the north star is coordinated by CEO; Dr. Lewis does not publish the north star without CEO and Matt Mathison approval

## System Dependencies
- **Reads from:** Investment thesis (strategy-investment-thesis), market analysis (strategy-market-analyzer), annual strategic plan (strategy-annual-plan-builder), employee feedback, CEO aspirations
- **Writes to:** North star document (SharePoint/Strategy/<Company>/Vision/); annual strategic plan (strategy-annual-plan-builder — annual priorities derive from north star); LP reporting (strategy-lp-reporting); employee communication
- **HITL Required:** Dr. Lewis drafts; CEO approves and owns; Matt Mathison aligns for LP credibility and thesis fit; company communication of north star requires CEO delivery (not Dr. Lewis)

## Test Cases
1. **Golden path:** North star for Allevio → Vision: "Allevio is Arizona's most trusted physician practice partner — the organization that independent primary care and specialist physicians choose to affiliate with when they want to grow their practice, reduce administrative burden, and preserve their clinical autonomy. By 2030, Allevio manages 10 physician practices serving 7,500 patients across the Phoenix-Scottsdale-Tempe metro, with a reputation as the employer of choice for independent physicians who want practice freedom with enterprise support." North star metric: Patients under managed care — current 1,850; Year 1 target 2,200; 3-year target 4,500; 5-year vision 7,500; THRIVE: Truth ✅ (realistic given market size); Hustle ✅ (requires adding 6-8 practices); Respect ✅ (physician autonomy central); Integrity ✅ (matches current operating model); Value ✅ (real patient care + physician support + LP return); Enjoy ✅ (mission-driven work); CEO reviews and genuinely endorses; Matt Mathison approves for LP report
2. **Edge case:** The CEO wants the north star to mention a specific revenue number ($10M by 2029) → Revenue targets belong in the financial plan, not the vision — the north star should describe what the company will be for its customers and team, not how much money it will make; a vision that leads with revenue is internally focused and doesn't inspire physicians to affiliate or patients to choose Allevio; however, the 3-year milestone section can include the revenue number as a financial indicator of mission achievement; Dr. Lewis structures: vision = physician-centered language; 3-year milestone = includes $10M revenue as an outcome, not the vision itself; CEO satisfied because the financial ambition is in the document; but the vision statement itself is customer-focused
3. **Adversarial:** The prior CEO wrote a north star 3 years ago and no one references it anymore → A north star that no one uses is a decoration; Dr. Lewis diagnoses why: either (1) it was never adopted because leadership didn't genuinely believe it, (2) the company has changed direction and the vision is now stale, or (3) it was installed as a compliance exercise and never connected to the annual plan; the fix is not to write a better north star — it's to run the north star workshop with the CEO and leadership team so the vision they articulate is theirs, not Dr. Lewis's; a north star that the team builds is used; one that Dr. Lewis builds for them is filed

## Audit Log
North star documents retained permanently. Annual review records retained (is it still the right vision?). Employee communication records retained. Matt Mathison approval records retained. Annual plan connection documents retained.

## Deprecation
Retire when portfolio companies have strong internal leadership capable of facilitating strategic vision-setting — with Dr. Lewis reviewing the north star for thesis alignment rather than faciliting the development process.
