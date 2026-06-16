---
name: hr-total-rewards-analyzer
description: "Analyze and design total rewards packages. Use when the user says 'total rewards', 'total compensation', 'compensation strategy', 'compensation package', 'what does it cost to employ', 'fully loaded cost of a hire', 'comp and benefits', 'total comp analysis', 'design a compensation package', 'reward strategy', 'incentive design', 'bonus plan design', or 'total employer cost'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <title or all>] [--action <analyze|design|benchmark>]"
---

# HR Total Rewards Analyzer

Analyze and design total rewards packages for MBL portfolio company employees — the full picture of what it costs to employ someone and what they receive in return. Total rewards includes base salary, bonus/incentive pay, benefits, PTO, equity (if applicable), and non-monetary elements like flexibility and development. Getting total rewards right is both a retention and a recruitment tool — employees who feel well-compensated relative to the market are more likely to stay and less likely to be receptive to competing offers.

## When to Use
- Designing a compensation package for a new role
- Comparing MBL portfolio company offers to market to assess competitiveness
- Calculating the true fully-loaded cost of an employee for budget purposes
- Assessing whether current employees are compensated at market (retention risk analysis)
- A CEO asks "are we competitive in how we're compensating our team?"
- Matt Mathison wants to understand the total compensation cost across a portfolio company

## Total Rewards Framework

```
Total Rewards Components:

CASH (immediate):
  - Base salary: primary market-rate driver
  - Variable / bonus: performance-linked; typically 5-20% of base for individual contributors
  - Commissions (sales): variable, results-based
  - Spot bonuses: discretionary recognition payments

BENEFITS (protection and security):
  - Health insurance (medical, dental, vision): major value component ($8K-$20K/employee/year employer cost)
  - Life insurance: group term, usually low cost
  - Disability insurance: short-term and long-term
  - 401(k): employer match component; often 3-6% of salary match

TIME AND FLEXIBILITY:
  - PTO days: monetary value + quality-of-life
  - Paid holidays: concrete value
  - Remote/hybrid flexibility: increasingly valued; hard to quantify but significant

DEVELOPMENT AND GROWTH:
  - Training budget / professional development
  - Career advancement path
  - Mentorship and learning opportunities

EQUITY (if applicable):
  - Stock options or profits interest (LLC/partnership)
  - Phantom equity: economic value without ownership
  - Retention bonuses as equity substitute for pre-equity companies

Fully-loaded employer cost rule of thumb:
  Employee's total annual cost = base salary × 1.25-1.35
  1.25× covers: payroll taxes (FICA ~7.65%), health insurance, 401k match, workers comp
  1.35× covers above + life/disability insurance, PTO cost, onboarding/equipment
```

## Output Format

```markdown
# Total Rewards Analysis — <Company Name>
**Role(s):** [Specific role / All roles] | **Date:** <Date>
**Prepared by:** Dr. John Lewis | **For:** [CEO / Matt Mathison]

---

## Total Rewards Summary — [Role]

| Component | Annual value (employee perspective) | Employer cost/year |
|---------|-----------------------------------|--------------------|
| **Base salary** | $[X] | $[X] |
| **Performance bonus** (target) | $[X] ([X%] of base) | $[X] |
| **Health insurance** — employer premium share | $[X] | $[X] |
| **Dental / Vision** — employer share | $[X] | $[X] |
| **401(k) match** | $[X] ([X%] match up to [X%]) | $[X] |
| **Life insurance** — employer-paid | $[X] | $[X] |
| **Paid time off** (cash value) | $[X] ([N] days × daily rate) | $[X] |
| **Paid holidays** (cash value) | $[X] ([N] days × daily rate) | $[X] |
| **Professional development budget** | $[X] | $[X] |
| **Payroll taxes (employer FICA)** | — | $[X] (7.65% of salary) |
| **Workers' compensation insurance** | — | $[X] (est.) |
| **Total annual value to employee** | **$[X]** | |
| **Total fully-loaded employer cost** | | **$[X]** |

**Fully-loaded cost multiplier:** $[Total cost] / $[Base salary] = [X.XX]×

---

## Market Competitiveness

| Component | Our offer | Market 50th pct | Market 75th pct | Our position |
|---------|---------|----------------|----------------|------------|
| Base salary | $[X] | $[X] | $[X] | [Xth percentile] |
| Target total cash (base + bonus) | $[X] | $[X] | $[X] | |
| Total comp (cash + benefits) | $[X] | $[X] | $[X] | |

**Competitiveness assessment:** [Above market / At market / Below market / Below market — recruitment risk]

---

## Incentive Design (if designing new plan)

**Target incentive percentage:** [X%] of base salary — [rationale: what % do competitors pay?]

**Payout trigger:** [Individual performance goals / Company performance goals / Both]

**Payout schedule:** [Annual / Semi-annual / Quarterly]

**Gate / Modifier:**
- Individual gate: must meet own goals to receive any incentive
- Company gate: company must reach [EBITDA / revenue] threshold for full payout
- Modifier: [X%] payout for meeting goals; [X%] for exceeding by [Y%]; [Z%] cap

**Approved by:** Matt Mathison (required for any incentive plan) | **Date:** [Date]

---

## Retention Risk Analysis (for existing employees)

| Employee | Current base | Market 50th | Gap | Flight risk | Recommended action |
|---------|------------|------------|-----|-----------|-------------------|
| [Name] | $[X] | $[X] | [+$X / at market / -$X] | 🟢 Low / 🟡 Medium / 🔴 High | [Adjust / Monitor / Retention bonus] |
| | | | | | |

**Total cost to address market gaps:** $[X]/year (annualized base increases)
**Estimated cost of turnover if not addressed:** $[X] (recruiting + productivity loss)

---

## Total Rewards Strategy Recommendation

**Current state:** [Competitive in cash / Below market in cash but strong in benefits / etc.]
**Gap:** [Specific — which component is weakest relative to market?]
**Priority 1:** [Immediate fix — e.g., "3 mid-level employees significantly below market on base salary"]
**Priority 2:** [Medium-term — e.g., "Add 401k match — currently no employer match; limiting recruiting competitiveness"]
**Priority 3:** [Longer-term — e.g., "Design a performance bonus plan to create variable pay tied to results"]

**Investment required:** $[X]/year | **Return:** [Reduced turnover / Improved recruiting / Retention of [key employee]]
**Matt Mathison decision needed:** [Yes — approve budget for recommendations / No — within existing budget]
```

## Output Contract
- Always show total cost, not just salary — when a CEO says "we need to add a $70K employee," the actual cost is $87.5K-$95K; every total rewards analysis shows the fully-loaded employer cost so decisions are made with accurate financial information; a headcount plan built on salary alone understates labor cost by 25-35%
- Market data drives the competitiveness assessment — total rewards strategy is not decided by what the company wants to pay; it's assessed against what the market actually offers; the analysis always includes a market benchmark so the company knows where its package stands relative to what a candidate will be comparing it to
- Incentive plans require Matt Mathison approval — any new incentive or bonus plan is a compensation commitment; the design, trigger, and payout schedule require Matt Mathison approval before being communicated to employees; a verbal bonus promise without written approval is a legal and budget risk
- Retention risk quantified — the analysis calculates not just the cost to fix a compensation gap but the cost of not fixing it (turnover cost); this framing often reveals that the retention investment is significantly cheaper than the replacement cost; the comparison must be explicit so the business case is clear
- HITL required: Dr. Lewis designs and analyzes total rewards; Matt Mathison approves any new incentive plan, any package change exceeding $10K annually, and all executive-level total rewards decisions; compensation benchmarks shared with CEO for awareness and manager input; retention actions above $5K/year require Matt Mathison sign-off

## System Dependencies
- **Reads from:** Payroll records, benefits carrier cost data, market salary data (Glassdoor, LinkedIn, SHRM surveys), offer letters, performance review ratings
- **Writes to:** Total rewards analysis (SharePoint/HR/<Company>/Compensation/); incentive plan documents; Matt Mathison compensation brief; budget headcount cost inputs
- **HITL Required:** Dr. Lewis analyzes; Matt Mathison approves incentive plans and changes >$10K; retention actions >$5K require Matt Mathison; all executive total rewards decisions require Matt Mathison

## Test Cases
1. **Golden path:** Allevio total rewards analysis for 18-employee company → For bookkeeper role ($52K): base $52K + bonus (none) + health $7.2K/year employer share + dental/vision $1.8K + 401k (no match currently) + PTO value $3,200 (15 days × $200 daily) + holidays $1,600 + FICA $3,978 + workers comp $520 = fully-loaded $70,298 vs. salary $52K = 1.35× multiplier; Market: bookkeeper 50th pct in Phoenix $48K-$54K — we're at 50th; Retention risk: 3 employees below market by >8% — $18K combined gap; turnover cost if one leaves: $35K-$55K (recruiting + productivity); recommendation: market-rate adjustments for the 3 at-risk employees ($18K/year cost); return: prevents >$35K/year in turnover cost; Matt Mathison approval: required (>$10K annual increase)
2. **Edge case:** An employee compares their benefits to a competitor's and says "they offer a 6% 401k match and we offer nothing — that's worth $4,200/year difference on my salary" → they're correct; this is a concrete competitive gap worth acknowledging; respond: "You're right that no 401k match is a real difference in total comp. We don't currently offer a match because [cost constraint / stage of company]. Here's what we can do: I'll bring this to Matt Mathison as part of the next total rewards review. A 3% match on your salary is about $1,560/year employer cost — meaningful but manageable. I can't promise the timing, but it's a legitimate gap I'll advocate for."
3. **Adversarial:** A CEO wants to cut the health insurance plan to save costs → calculate the retention impact before recommending: "Cutting health insurance saves $[X]/year but creates a retention and recruiting problem worth analyzing first. Let me model it: [X employees] × $[X] value reduction = [X]% effective pay cut to each employee. Industry voluntary turnover rate increases roughly 15-20% when employers reduce benefits significantly at this scale. If we lose 2 of 18 employees, that's $70K-$100K in turnover cost vs. $[X] in insurance savings. Let me build the full model before we decide."

## Audit Log
All total rewards analyses retained by company and date. Incentive plan documents retained with Matt Mathison approval. Market data sources and vintage documented. Retention risk assessments retained. Compensation adjustment approvals retained. Total employer cost calculations retained for budget records.

## Deprecation
Retire when portfolio companies have dedicated HR managers and finance leads who jointly own total rewards strategy with annual benchmarking cycles, approved incentive plan frameworks, and market data subscriptions (SHRM, Mercer, Radford) that don't require Dr. Lewis to conduct individual role analyses on demand.
