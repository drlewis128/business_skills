---
name: make-vs-buy-analyzer
description: "Analyze whether to make, buy, or outsource a capability. Use when the user says 'make vs buy', 'should we build or buy', 'outsource or in-house', 'build vs buy decision', 'should we make this ourselves', 'insource vs outsource', 'build in-house vs vendor', 'should we hire vs contract', 'make or buy analysis', or 'build buy partner'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--capability <description>] [--entity <MBL|Allevio|HIVE|Column6>] [--focus <cost|strategic|speed>]"
---

# Make vs. Buy Analyzer

Analyze whether a capability should be built internally (Make), purchased from a vendor (Buy), or developed through a partner (Partner). This decision has long-term strategic and financial consequences: the wrong choice creates dependency, cost, or capability gaps that compound over years. For MBL, the default should be Buy or Partner for non-core capabilities — AI is core, so MBL builds it; payroll is not core, so MBL buys it.

## When to Use
- Evaluating a new capability — should we build it or buy it?
- A current vendor solution is failing — should we build instead?
- Cost reduction initiative — should we insource an outsourced function?
- Portfolio company acquisition — assess their make vs. buy decisions
- Strategic capability planning — what should MBL build vs. buy vs. partner?

## Decision Framework

```
Make (build in-house):
  When: Competitive differentiator; unique IP; vendor solutions inadequate; 
        long-term cost advantage; control over data/IP critical
  Best for MBL: AI orchestration (core competency); agent infrastructure (OpenFang)
  Risk: Takes longer; requires talent; ongoing maintenance burden
  Test: "Would a competitor with this capability have an unfair advantage?"

Buy (vendor/SaaS):
  When: Non-core function; vendor solution adequate; fast time-to-value;
        integration risk acceptable; lower total cost than building
  Best for MBL: CRM (GoHighLevel), payroll (Gusto), accounting (QuickBooks)
  Risk: Vendor dependency; data portability risk; subscription cost growth
  Test: "Is this a solved problem we'd be reinventing?"

Partner (co-develop or OEM):
  When: Capability needs external expertise + internal domain knowledge;
        shared risk; faster than building; better than generic buy
  Best for MBL: Meeting Intelligence (Krista.ai co-development)
  Risk: Partner alignment risk; IP sharing; relationship management
  Test: "Do we need someone else's capability + our knowledge = something neither could build alone?"

Hybrid:
  Buy the platform, customize the differentiating layer
  Example: Buy Metabase (BI platform), customize dashboards and data models
```

## Output Format

```markdown
# Make vs. Buy Analysis — <Capability>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Column6>
**Capability:** <Description of what is being analyzed>
**Decision needed by:** <date>

---

## Capability Definition

**What is the capability?** <Precise description — what does it do, who uses it, what does it output>
**Why do we need it?** <Business problem it solves; strategic importance>
**Current state:** <How are we doing this today? What's the gap?>
**Users:** <Who would use this? How many? How often?>

---

## Options Evaluated

### Option 1: Make (Build In-House)

**Description:** <How we would build this: who builds it, what stack, how long>

| Dimension | Assessment |
|----------|-----------|
| Build timeline | <N> months |
| Build cost (one-time) | $X (Dr. Lewis time + infrastructure) |
| Ongoing cost/year | $X (maintenance + hosting) |
| 3-year TCO | $X |
| Strategic fit | Core / Adjacent / Non-core |
| Differentiation | High / Medium / Low |
| Data control | Full |
| Flexibility | High (we control the roadmap) |
| Talent risk | <Requires skills we have / don't have> |

**Pros:**
- Full control over IP, data, and roadmap
- Customizable to MBL's exact needs
- No vendor dependency

**Cons:**
- Slower — <N> months to production
- Requires Dr. Lewis time away from other priorities
- Ongoing maintenance burden

---

### Option 2: Buy (Vendor/SaaS)

**Description:** <Vendor options and what they provide>

| Dimension | Vendor A | Vendor B |
|----------|---------|---------|
| Annual cost | $X/year | $X/year |
| 3-year TCO | $X | $X |
| Setup timeline | <N> weeks | <N> weeks |
| Feature coverage | 85% of requirements | 70% of requirements |
| Data portability | High (export available) | Low (locked in) |
| HIPAA BAA | Available | Not available |
| Integration effort | Low (native connector) | High (custom API) |

**Pros:**
- Fast — deployed in weeks
- No build cost
- Vendor maintains and upgrades

**Cons:**
- Subscription cost grows with scale
- Vendor dependency; data portability risk
- May not cover 100% of our requirements

---

### Option 3: Partner

**Description:** <How a partnership would work: who, what we provide, what they provide>

| Dimension | Assessment |
|----------|-----------|
| Partner candidate | <Name> |
| What they provide | <Technology / expertise / distribution> |
| What we provide | <Domain knowledge / data / distribution> |
| Revenue/cost model | <Shared revenue / co-investment / licensing> |
| IP ownership | <Joint / each retains own / shared> |
| Timeline | <N> months to launch |
| Exit path | <How we exit if partnership fails> |

**Pros:**
- Faster than build; more customized than buy
- Shared risk and cost
- Access to partner's expertise

**Cons:**
- IP sharing; alignment risk
- Partnership management overhead
- Exit complexity

---

## Decision Matrix

| Criterion | Weight | Make | Buy (Vendor A) | Partner |
|----------|--------|------|--------------|---------|
| 3-year TCO | 25% | $X (low cost) → 4 | $X (moderate) → 3 | $X (lowest) → 5 |
| Strategic fit / differentiation | 25% | Core → 5 | Non-core → 2 | Adjacent → 3 |
| Speed to value | 20% | <N> months → 2 | <N> weeks → 5 | <N> months → 3 |
| Data control | 15% | Full → 5 | Moderate → 3 | Shared → 3 |
| Talent / risk | 15% | Have skills → 5 | Low risk → 5 | Relationship risk → 3 |
| **TOTAL** | **100%** | **4.00** | **3.45** | **3.45** |

---

## Recommendation

**RECOMMENDED: Make (Build In-House)**

**Bottom line:** This capability is a core competency for MBL — AI orchestration. No vendor solution meets our requirements, and building it creates IP that differentiates us in the market. Dr. Lewis has the skills; the build timeline (3 months) is acceptable; the 3-year TCO ($X) is lower than the best vendor option ($X).

**If Make is not feasible (timeline constraint):** Buy Vendor A as interim solution while building the in-house version; plan to sunset Vendor A in 12 months.

**Decision owner:** Dr. Lewis (makes the call); Matt Mathison (approves if >$50K TCO commitment or strategic significance)
```

## Output Contract
- 3-year TCO always calculated for all options — one-time build cost vs. subscription cost diverge significantly over 3 years
- Strategic fit always evaluated — a capability that is a competitive differentiator should be built; a commodity should be bought
- Recommendation always explicit with BLUF — the matrix produces a score; the skill produces a recommendation
- Data portability and control always evaluated for Buy options — lock-in risk is a strategic cost not captured in the subscription price
- HITL required: Dr. Lewis runs analysis and makes recommendation; Matt Mathison approves for decisions with >$50K TCO or strategic significance; AI/IP decisions reviewed by Dr. Lewis; partnership agreements require Matt Mathison sign-off; contracts signed by authorized signatory

## System Dependencies
- **Reads from:** Vendor pricing (vendor documentation), internal cost data (Dr. Lewis time + infrastructure), strategic plan
- **Writes to:** Make vs. buy analysis (SharePoint/Strategy); decision log
- **HITL Required:** Dr. Lewis recommendation; Matt Mathison approval (>$50K TCO or strategic); partnership agreements → Matt Mathison; contracts → authorized signatory

## Test Cases
1. **Golden path:** Make vs. buy for meeting intelligence transcript → Make: OpenFang + Claude API (core IP, full control, 3-month build); Buy: Krista.ai (existing relationship, 4-week deployment, $X/year); Partner: Krista.ai as platform + MBL builds the intelligence layer on top; Decision matrix: Partner scores highest (speed + cost + access to Krista capability + MBL domain knowledge on top); Recommendation: Partner with Krista.ai; Matt Mathison approves partnership agreement
2. **Edge case:** Make option requires a skill Dr. Lewis doesn't have (e.g., mobile app development) → adjust the Make analysis: either add the cost of hiring the skill (contractor), or increase timeline to account for learning curve; if neither is acceptable, remove Make as a viable option; don't recommend Make when the required skill doesn't exist in the team
3. **Adversarial:** A team member has a strong vendor preference ("we've always used Salesforce") → familiarity bias is real and expensive; run the full analysis; if Salesforce wins on the scorecard, great — the preference is validated; if a competitor scores higher, present the data; personal preference for a vendor is not a business justification; the analysis exists to override preference with evidence

## Audit Log
Make vs. buy analyses retained. Decision rationale documented. Vendor evaluations retained. Build decisions linked to project plans. Buy decisions linked to vendor contracts.

## Deprecation
Retire when MBL has a formal technology governance process with an architecture review board that makes build vs. buy decisions using a standardized framework.
