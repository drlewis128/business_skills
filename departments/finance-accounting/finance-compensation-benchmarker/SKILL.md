---
name: finance-compensation-benchmarker
description: "Benchmark compensation for MBL Partners portfolio entity roles against market data. Use when the user says 'compensation benchmark', 'salary benchmark', 'market salary', 'market comp', 'what should we pay', 'how much should this role make', 'is our comp competitive', 'comp comparison', 'salary comparison', 'market rate', 'pay rate', 'compensation analysis', 'compensation review', 'annual comp review', 'comp study', 'salary study', 'pay equity', 'are we underpaying', 'are we overpaying', 'comp for AE', 'comp for CS', 'comp for RevOps', 'comp for CFO', 'comp for CEO', 'comp for operations', 'total compensation', 'base salary', 'variable comp', 'bonus structure', 'equity consideration', 'OTE', 'on-target earnings', 'comp philosophy', 'pay philosophy', 'compensation philosophy', 'compensation strategy', 'salary range', 'pay band', 'pay range', or 'salary grade'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--role <ae|cs|revops|ceo|operations|all>] [--action <benchmark|review|set-range|annual-review>]"
---

# Finance Compensation Benchmarker

Benchmark compensation for MBL Partners portfolio entity roles against market data — ensuring that entity teams are paid competitively enough to attract and retain talent, without over-paying at a stage when cash discipline matters. Compensation philosophy at MBL portfolio entities is: market-competitive base (50th percentile of relevant market) + performance-based variable + non-cash benefits that early-stage companies can offer (mission alignment; equity in specific cases; flexibility).

## When to Use
- Hiring a new role: setting the comp range before posting
- Annual comp review: benchmarking current team against market
- Retention risk: an employee mentions market offers
- Entity CEO proposes a compensation change

## Compensation Benchmarking Framework

```
BENCHMARKING APPROACH:
  Primary sources (in order of preference):
    1. Industry-specific surveys (MGMA for healthcare/MSO; IAB/eMarketer for media/CTV; NAPE for O&G)
    2. Publicly available salary databases (Levels.fyi for tech; Glassdoor; LinkedIn Salary; Indeed)
    3. Recruiter intelligence: Dr. Lewis reaches out to 1-2 relevant recruiters for real-time data
    4. Peer company comparisons (entities of similar size and stage in similar markets)
    
  Geography adjustment:
    Phoenix, AZ: generally 85-90% of national median for most roles (lower cost of market)
    Adjustments: some roles (tech; specialized) are more national-market-priced
    Remote roles: if role can be filled remotely, national median applies
    
  Stage adjustment:
    Series A equivalent (Allevio; Column6 stage): slightly below public company for base; upside in variable
    PE-backed portfolio: more stable than venture startup; comp should reflect that (slightly above startup; below public co)
    HIVE: oil & gas field operations — standard Uinta Basin energy sector rates
    
MBL COMPENSATION PHILOSOPHY:
  Base salary target: 50th percentile of relevant market
  Variable compensation: meaningful upside for quota-carrying roles (AEs)
  Benefits: health insurance; standard PTO; no equity at this stage unless negotiated individually
  Non-monetary: mission alignment; direct access to leadership; fast growth environment
  Dr. Lewis does NOT compete on base salary alone — but does not underpay significantly
  
ROLE BENCHMARKS (PHOENIX METRO; CURRENT ESTIMATES):
  AE (Allevio; 2-5 years B2B SaaS/benefits experience):
    Base: $55-70K | OTE: $90-110K (45% variable target) | range: $50-120K OTE depending on experience
    
  CS Lead (Allevio; healthcare/benefits background):
    Base: $52-65K | no variable (non-quota; CS retention bonus if applicable) | benefits-heavy
    
  RevOps Analyst (MBL; 2-4 years ops/analytics):
    Base: $58-72K | no variable | growth environment value-add
    
  Marketing Coordinator (entity; 1-3 years):
    Base: $45-58K | possible small performance bonus | depends on entity
    
  Entity CEO (Allevio; Column6):
    Base: $120-160K | meaningful performance bonus tied to entity EBITDA and growth
    Note: entity CEO comp set by Dr. Lewis + Matt Mathison; not published
    
  HIVE field roles: standard Uinta Basin O&G field rates (Dr. Lewis pulls NAPE data annually)
    
ANNUAL COMP REVIEW PROCESS:
  November (alongside annual budget):
    Pull all employee comp records from Gusto
    Compare each role to current market benchmark (updated annually)
    Identify roles where entity employee is >10% below current 50th percentile market → flag for raise consideration
    Entity CEO proposes raises; Dr. Lewis validates vs. market; Matt Mathison informed if total raise budget >$30K
    Raises effective January 1 (or first payroll of new year)
    
ALLEVIO NOTE:
  Clinical provider compensation (if Allevio employs providers): governed by separate clinical compensation
  structure; not part of standard MBL portfolio comp benchmarking; entity CEO + Dr. Lewis review
```

## Output Format

```markdown
# Compensation Benchmark — [Role] — [Entity] — [Date]
**Prepared by:** Dr. Lewis | **Sources:** [Survey / Database / Recruiter]

---

## Market Data

| Percentile | Base | OTE / Total Comp |
|-----------|------|----------------|
| 25th | $X | $X |
| 50th (target) | $X | $X |
| 75th | $X | $X |

**Geography adjustment:** Phoenix AZ (-X% vs. national) → Adjusted 50th: $X

---

## Current vs. Market

| Employee / Offer | Current/Offered | 50th Market | Status |
|----------------|----------------|------------|--------|
| [Name/Candidate] | $X | $X | ✅ At market / ⚠️ Below / 🔴 Significantly below |

---

## Recommendation
[Set range at: $X-$X base; OTE $X / Annual review: raise to $X / Accept offer at $X]
```

## Output Contract
- Being 20% below market on a key hire is not saving money — it's guaranteeing turnover; when a sales AE leaves because a competitor offered $15K more in base and they were never given a counter-offer, the replacement cost (recruiter fees + ramp time + lost pipeline) typically runs $80-120K; paying $15K more per year to retain them would have been a 6:1 ROI on the retention investment; Dr. Lewis benchmarks specifically to prevent the "we can't afford to pay more" decision from quietly becoming the "we can't afford to replace them" problem
- Compensation benchmarking for entity CEOs requires Matt Mathison's involvement — entity CEO comp is a Matt Mathison decision; Dr. Lewis provides the market benchmark and a recommendation, but the final determination is Matt Mathison's; this is both good governance (CEO comp is the Managing Partner's call) and practical (entity CEOs cannot set their own comp without oversight); Dr. Lewis presents CEO comp benchmarks to Matt Mathison annually and at any time an entity CEO raises the topic
- HITL required: annual comp review → entity CEO proposes; Dr. Lewis validates; raise budget >$30K → Matt Mathison informed; entity CEO comp → Dr. Lewis + Matt Mathison; any comp change >$15K/year → entity CEO + Dr. Lewis; Allevio clinical provider comp → entity CEO + Dr. Lewis separate review; new hire comp range → entity CEO + Dr. Lewis agree before offer; counter-offer situation → entity CEO + Dr. Lewis decide within 24 hours

## System Dependencies
- **Reads from:** Gusto (current employee comp records); industry salary surveys (MGMA; IAB; NAPE; Glassdoor; LinkedIn Salary); finance-headcount-planner (headcount plan → comp budget context); entity CEO comp proposals and hire requests
- **Writes to:** Compensation benchmarking reports (SharePoint → [Entity] → Finance → Compensation → [Year]); Gusto comp updates (after approval); annual comp review records; Matt Mathison comp notification records; new hire offer comp range documentation
- **HITL Required:** Annual review → entity CEO proposes; Dr. Lewis validates; >$30K raise budget → Matt Mathison; CEO comp → Dr. Lewis + Matt Mathison; >$15K change → entity CEO + Dr. Lewis; clinical provider → entity CEO + Dr. Lewis; new hire range → entity CEO + Dr. Lewis; counter-offer → entity CEO + Dr. Lewis 24hr

## Test Cases
1. **Golden path:** Allevio new AE hire (June 2026). Dr. Lewis benchmarks: AZ AE (2-3 years B2B; benefits/healthcare experience; Phoenix metro). Sources: Glassdoor (52 data points; median $62K base / $97K OTE); LinkedIn Salary (50th percentile: $60K base); recruiter intel ($58-68K base; $90-105K OTE for this experience level). Adjusted 50th percentile: $62K base / $97K OTE. Candidate asks: $68K base / $105K OTE. Dr. Lewis recommendation: $65K base / $100K OTE (competitive; above 50th; within budget). Entity CEO + Dr. Lewis agree. Offer extended.
2. **Edge case:** Allevio CS lead reports receiving an outside offer for $72K base (their current base is $58K) → Dr. Lewis: "This is a $14K gap — significant. Let me pull the current CS benchmark before we respond. [Pulls data: current CS 50th percentile for Phoenix benefits/MSO background is $63-68K — the employee is below market.] My recommendation: counter at $65K base, effective immediately. That brings them to market and removes $7K of the $14K gap. The remaining $7K gap is the premium for leaving (which many people won't take if they're happy otherwise). I'd also have the entity CEO express genuine appreciation directly — retention at this stage is often as much about being valued as it is about the last $7K. If the employee still leaves at $65K counter, we know the decision was primarily financial and we've done what we could. Entity CEO decides; needs to happen within 24 hours."
3. **Adversarial:** Entity CEO wants to pay a new AE $90K base (50% above market) because "they're exceptional" → Dr. Lewis: "I appreciate the enthusiasm about this candidate, and I want to make sure we're paying well. $90K base is 38-45% above the 50th percentile for this role in Phoenix. That creates two risks: (1) internal equity — if your current AE (same role, similar experience) is at $62K and the new hire comes in at $90K, you have a retention problem with your existing team the day it becomes known; (2) budget impact — $90K base at this stage is meaningful; it reduces your EBITDA margin target significantly. My recommendation: offer $72-75K base (competitive; 15-20% above market; clearly for a strong candidate) with a higher commission accelerator structure at 125%+ of quota. That way, exceptional performance pays for itself. If the candidate won't accept $75K, there's information there."

## Audit Log
Annual comp review records. Benchmark data sources (year and source documented). Entity CEO comp proposals and Dr. Lewis validation records. Matt Mathison notification records (CEO comp; >$30K raise budget). New hire offer comp documentation. Counter-offer records. Gusto comp update confirmation records. Allevio clinical provider comp review records.

## Deprecation
Benchmark sources reviewed annually. Role definitions reviewed when entity structure changes. Geography adjustment reviewed annually (Phoenix market changes). Comp philosophy reviewed when MBL portfolio strategy changes. Entity CEO comp process reviewed when Matt Mathison's oversight approach changes.
