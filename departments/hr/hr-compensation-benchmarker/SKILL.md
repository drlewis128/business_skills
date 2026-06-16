---
name: hr-compensation-benchmarker
description: "Benchmark compensation for a role. Use when the user says 'compensation benchmark', 'salary benchmark', 'what should we pay', 'market rate for', 'salary range for', 'pay benchmark', 'competitive compensation', 'what is the market for', 'comp analysis', 'are we paying market', 'salary survey', 'comp benchmarking', 'what does a controller make', or 'pay rate for a'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <title>] [--level <entry|mid|senior|executive>] [--location <city-state or remote>] [--market <national|local>]"
---

# HR Compensation Benchmarker

Benchmark compensation for a role at an MBL portfolio company against market data — determining what a fair, competitive pay range looks like for a specific role, level, and location. Getting compensation right matters in both directions: underpaying drives turnover of good performers and makes recruiting harder; overpaying compresses margins and sets expectations that become expensive to maintain. The goal is to pay at market for the role and adjust based on specific candidate quality.

## When to Use
- Before posting a new role — set the range before recruiting starts
- Before extending an offer — validate the proposed compensation against market
- During a compensation review — assess whether current employees are at market
- A current employee has a competing offer and the company needs to know if they should match
- Matt Mathison asks "are we paying market for [role]?"
- A portfolio company CEO wants to add a role and needs to know the cost

## Compensation Benchmarking Framework

```
Three data sources, in order of reliability:

1. DIRECT MARKET DATA (highest quality):
   - Glassdoor, LinkedIn Salary, Indeed Salaries, Payscale
   - Industry-specific surveys (AICPA for accounting; SHRM for HR; etc.)
   - National data needs geographic adjustment

2. GEOGRAPHIC ADJUSTMENT:
   - Major metros (NYC, SF, LA, Boston): +20-35% vs. national median
   - Secondary markets (Phoenix, Denver, Atlanta, Dallas): ±0-10% vs. national
   - Smaller markets: -10-20% vs. national median
   - Remote roles: typically median-to-national-median, market-priced

3. EXPERIENCE AND QUALITY ADJUSTMENT:
   - Entry/Junior (0-3 years): 25th-40th percentile of range
   - Mid-level (4-8 years): 40th-60th percentile
   - Senior (8-15 years): 60th-80th percentile
   - Executive/Best-in-class: 75th-90th percentile

MBL compensation philosophy:
   - Target: 50th-65th percentile for most roles (competitive but not leading)
   - Strong performers: 65th-75th percentile
   - Executive hires (CFO, CEO): 70th-80th percentile — we compete for quality
   - Equity/bonus supplements base; total comp should be market-competitive
```

## Output Format

```markdown
# Compensation Benchmark — [Role Title]
**Company:** <Entity> | **Location:** [City, State / Remote]
**Level:** [Entry / Mid / Senior / Executive]
**Prepared by:** Dr. John Lewis | **Date:** <Date>

---

## Market Data Summary

| Percentile | National | [Location-adjusted] | Notes |
|-----------|---------|-------------------|-------|
| 25th | $[X] | $[X] | Entry-level / basic proficiency |
| 50th (median) | $[X] | $[X] | Solid mid-level performer |
| 75th | $[X] | $[X] | Strong / senior-level |
| 90th | $[X] | $[X] | Elite / best-in-market |

**Primary data sources:** [Glassdoor / LinkedIn Salary / AICPA Survey / etc. — list what was used]
**Geographic adjustment applied:** [+X% / -X% / none — remote]

---

## Total Compensation Breakdown

| Component | Amount | Notes |
|-----------|--------|-------|
| Base salary | $[X] – $[X] | Recommended range |
| Performance bonus | [X%] target | [Annual / quarterly; tied to what metrics] |
| Benefits (est. employer cost) | $[X]/year | Health, dental, 401K match |
| **Total estimated comp** | **$[X] – $[X]** | |

---

## Recommended Compensation Range

**Target range for this hire:** $[X] – $[X] base + [bonus/benefits]

| Candidate profile | Recommended base |
|-----------------|-----------------|
| Strong candidate, meets all requirements | $[X] (50th-65th pct) |
| Excellent candidate, exceeds requirements | $[X] (65th-75th pct) |
| Entry-level / developing | $[X] (25th-40th pct) |

**Our current offer if applicable:** $[X] — positioned at [X]th percentile
**Assessment:** ✅ Competitive / ⚠️ Below market / ❌ Significantly below market

---

## Comparable Roles for Reference

| Role | Market median | Our equivalent | Gap |
|------|-------------|---------------|-----|
| [Similar role 1] | $[X] | $[X] | [±$X] |
| [Similar role 2] | $[X] | $[X] | [±$X] |

---

## Implications

**Recruiting impact:**
[At the proposed range of $[X]-$[X], we expect: strong applicant pool / competitive but achievable / will struggle to attract strong candidates]

**Retention risk (if benchmarking current employee):**
[At their current $[X], [Name] is at the [X]th percentile — [low / moderate / high] flight risk]

**Recommended action:**
- [Specific recommendation: adjust range / proceed as planned / add bonus component / etc.]
- [Rationale — why this range makes sense for the business and the market]

**Matt Mathison decision needed:** [Yes — range above $[X] requires approval / No — within Dr. Lewis authority]
```

## Output Contract
- Always cite sources — "market rate" without a source is an opinion; this skill always names the data sources used and their vintage; the user can validate the data independently; if sources conflict significantly (e.g., Glassdoor says $70K, LinkedIn says $90K), both are shown and the discrepancy explained (e.g., "LinkedIn tends to skew high; Glassdoor for this specific title is more consistent")
- Geographic adjustment always applied — national median for a Phoenix-based controller and a San Francisco-based controller are very different; the benchmark always starts with national data and applies a geographic adjustment; remote roles get national-median positioning unless the company has a policy of paying to the candidate's local market (some companies do; state the policy)
- Total comp presented, not just base — a $80K base + 15% bonus + $15K benefits is a $107K total comp package; candidates and retention decisions should be evaluated on total comp, not just base; the benchmark shows both
- MBL compensation philosophy applied — MBL targets 50th-65th percentile for most roles; this philosophy is applied consistently across portfolio companies; a CEO who wants to pay at 25th percentile will struggle to hire and retain; a CEO who wants to pay at 90th percentile for every role will compress margins; the benchmark includes guidance on where our target fits relative to market
- HITL required: Dr. Lewis conducts the benchmark and makes the recommendation; compensation ranges above Dr. Lewis authority ($X per role level) require Matt Mathison review; counter-offer decisions above 5% of initial offer require Matt Mathison approval; any compensation change for existing employees above $5K/year requires Matt Mathison awareness

## System Dependencies
- **Reads from:** Role description, level, location, current employee compensation (if retention benchmark), Glassdoor/LinkedIn Salary/AICPA survey data
- **Writes to:** Compensation benchmark report (SharePoint/HR/<Company>/Compensation/); offer letter input; salary band updates
- **HITL Required:** Dr. Lewis conducts benchmark; Matt Mathison approves ranges above authority thresholds; counter-offer decisions above 5% require Matt Mathison

## Test Cases
1. **Golden path:** Allevio Controller benchmark, Phoenix AZ → National median for Controller: $95K (AICPA survey); Glassdoor Phoenix: $78K-$105K median; LinkedIn Phoenix: $82K-$110K; Geographic adjustment: Phoenix is roughly at national median (secondary market, no adjustment applied); Target range: $82K-$95K for solid mid-level; strong candidate: up to $105K; recommended offer range: $85K-$92K for their experience profile; total comp with benefits and small bonus eligibility: $100K-$115K; assessment: "This range is competitive for Phoenix market. A strong Controller candidate will receive and hold this offer. Struggling to recruit below $80K for anyone with 5+ years experience."
2. **Edge case:** A current employee has been with the company 4 years and is being paid $65K as "Controller" — the market says the role should pay $85K-$95K → this is a significant retention risk; document it: "At $65K, [Name] is at the ~20th percentile for their role in this market. This creates moderate-to-high flight risk. If they are performing well, I recommend a market correction of $10K-$15K. This is painful now but replacing them would cost $15K-$25K in recruiting costs plus 2-3 months of productivity loss. I recommend scheduling the conversation with [Name] and implementing the adjustment at the next performance review." Bring to Matt Mathison.
3. **Adversarial:** A CEO says "our employees don't know what market pays, so we don't need to benchmark — just pay what we can afford" → this is a high-risk posture; employees absolutely know what market pays — Glassdoor, LinkedIn, and peer conversations are ubiquitous; respond: "I understand the budget pressure, but the 'they don't know' assumption carries real risk. The cost of turnover (recruiting, lost productivity, onboarding a replacement) almost always exceeds the cost of a market-rate correction. What I can do is show you a benchmark and calculate the exact cost difference between paying at market vs. the current rate — then you can make an informed tradeoff decision."

## Audit Log
All compensation benchmarks retained by role, location, and date. Data sources and vintage documented. Recommendations and outcomes tracked (was the benchmark followed? what happened in recruiting?). Retention decisions with compensation adjustments retained.

## Deprecation
Retire when each portfolio company has formal salary bands established with annual benchmarking cycles, and HR managers who own compensation reviews without Dr. Lewis performing individual role benchmarks on demand.
