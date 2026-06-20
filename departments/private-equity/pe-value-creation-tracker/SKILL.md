---
name: pe-value-creation-tracker
description: "Track and manage value creation initiatives across MBL Partners portfolio companies. Use when the user says 'value creation', 'value creation plan', 'VCP', 'value creation tracker', 'value creation initiatives', 'value creation progress', 'how are the initiatives going', 'initiative tracker', 'initiative progress', 'post-close initiatives', 'hundred day plan', '100-day plan', '100 days', 'first 100 days', 'integration plan', 'integration tracker', 'integration progress', 'post-acquisition plan', 'post-close plan', 'EBITDA improvement', 'EBITDA enhancement', 'revenue initiatives', 'cost initiatives', 'efficiency initiatives', 'growth initiatives', 'multiple expansion', 'value drivers', 'thesis execution', 'thesis progress', 'are we on track', 'hitting our targets', 'behind on initiatives', 'initiative delay', 'add-on acquisition', 'tuck-in', 'tuck-in acquisition', 'platform add-on', 'synergies', 'synergy tracking', or 'synergy realization'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|all>] [--period <monthly|quarterly>] [--action <track|update|flag|report>] [--initiative <initiative-name>]"
---

# PE Value Creation Tracker

Track and manage value creation initiatives across MBL Partners portfolio companies — maintaining the value creation plan (VCP) for each entity, tracking progress against targets, identifying initiatives that are off track, and reporting to Matt Mathison on thesis execution. Value creation is the primary mechanism by which MBL creates LP returns: the investment thesis defines what MBL will do to increase EBITDA and/or the exit multiple; the value creation plan is the actionable plan; this skill tracks whether that plan is being executed. An investment thesis that is fully validated in DD but never executed operationally results in flat EBITDA and disappointing LP returns.

## When to Use
- Monthly progress update on value creation initiatives
- An initiative is behind schedule or has failed
- A new initiative needs to be added to the VCP
- Matt Mathison asks for a thesis execution update

## Value Creation Tracking Framework

```
VALUE CREATION FRAMEWORK:

  INITIATIVE TYPES:
    Revenue growth: new customers; new products; geographic expansion; pricing
    EBITDA expansion: cost reduction; procurement; operational efficiency
    Multiple expansion: narrative improvement; EBITDA quality improvement; ESG
    Platform value: add-on acquisitions; synergy realization; platform integration
    
  INITIATIVE STATUS:
    🟢 On track: progressing per plan; no material delays
    🟡 At risk: 1-3 month delay; additional support needed
    🔴 Off track: >3 month delay or failure to achieve target; intervention required
    ✅ Completed: initiative fully executed; financial impact confirmed
    ⏸ Deferred: postponed (with reason); rescheduled to future period
    ❌ Abandoned: initiative cancelled (with reason); alternative identified
    
  FINANCIAL IMPACT TRACKING:
    Planned EBITDA impact (from original VCP)
    Actual EBITDA impact to date (realized)
    Projected EBITDA impact (current estimate)
    Variance: actual vs. planned (explanation required)

PORTFOLIO ENTITY VALUE CREATION PLANS:

  ALLEVIO:
    REVENUE INITIATIVES:
      Employer group expansion (pipeline target: +[N] new groups by [Date])
      Geographic expansion (target markets: [specify per current plan])
      Product line extension (new clinical services: [specify per current plan])
    OPERATIONAL INITIATIVES:
      Claim ratio improvement to ≤87% (key levers: utilization management; network adequacy)
      Billing efficiency improvement (DSO target: ≤35 days; clean claim rate improvement)
      PCP panel optimization (fill rate improvement; appointment availability)
    EBITDA TARGET: [per investment thesis — verify current target with Matt Mathison]
    HIPAA: all reporting is aggregate/de-identified — no PHI in value creation tracking
    
  HIVE PARTNERS:
    REVENUE INITIATIVES:
      Royalty interest acquisition (new acreage: per approved acquisition plan)
      Operator relationship expansion (new operators; diversification)
    OPERATIONAL INITIATIVES:
      Landowner GRR improvement to ≥85%
      DSO improvement to ≤45 days (royalty payment timeliness)
    MACRO DEPENDENCY: WTI price; new acquisitions paused if WTI <$58/bbl for 2+ weeks
    EBITDA TARGET: [per investment thesis]
    
  COLUMN6 / SIPROCAL:
    REVENUE INITIATIVES:
      Agency NRR improvement to ≥95% (retention + expansion)
      New agency partnerships (target count per business plan)
      CTV inventory expansion (new publisher relationships)
    OPERATIONAL INITIATIVES:
      VCR improvement to ≥92% (creative quality; placement optimization)
      IVT rate below 2% (inventory quality program)
      DSO improvement to ≤55 days
    EBITDA TARGET: [per investment thesis]

INITIATIVE MANAGEMENT:

  NEW INITIATIVE APPROVAL:
    Any initiative with cost >$50K → Dr. Lewis + entity CEO approval
    Any initiative with cost >$250K → Matt Mathison approval
    New add-on acquisition → Matt Mathison approval (all sizes)
    
  INITIATIVE FAILURE PROTOCOL:
    Initiative rated RED for 2 consecutive months → formal review
    Review: why is it failing? Is the root cause fixable? Is the person accountable the right person?
    Matt Mathison briefed on any initiative rated RED 2+ consecutive months
    Decision: reinvest and recommit; restructure; or abandon and reallocate resources

QUARTERLY BUSINESS REVIEW (QBR) COORDINATION:

  Entity CEO presents: prior quarter actual vs. VCP; next quarter plan
  Dr. Lewis presents: MBL's assessment of initiative progress (may differ from CEO's view)
  Matt Mathison chairs; makes decisions on resource allocation and priority changes
  VCP is updated after each QBR to reflect current state
```

## Output Format

```markdown
# Value Creation Tracker — [Quarter Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Allevio Value Creation Summary

| Initiative | Owner | EBITDA impact (planned) | EBITDA impact (actual YTD) | Status | Notes |
|-----------|-------|------------------------|--------------------------|--------|-------|
| Employer group expansion | CEO | +$[X] | +$[X] | 🟡 At risk | 2 groups signed; 1 delayed |
| Claim ratio improvement | COO | +$[X] | +$[X] | 🟢 On track | | 
| Billing efficiency | CFO | +$[X] | +$[X] | ✅ Complete | DSO now 31 days |

**Allevio YTD value creation:** $[X] realized vs. $[X] planned | [X%] of plan

---

## HIVE Value Creation Summary

| Initiative | Owner | Target | Actual YTD | Status |
|-----------|-------|--------|-----------|--------|
| Royalty acquisition (add-ons) | Dr. Lewis | [N] acres | [N] acres | 🟡 At risk: WTI watch |
| Landowner GRR improvement | CEO | ≥85% | 88.2% | ✅ Complete |

---

## Decisions Needed from Matt

1. Allevio employer group expansion is 2 months behind plan — recommend allocating $[X] to hire a dedicated employer group BD resource. Your call.
```

## Output Contract
- Initiative tracking uses actual financial data, not management's projected outcomes — value creation plans fail when they are tracked based on management's self-reported progress rather than actual financial results; Dr. Lewis measures initiative completion by the financial output it produces (EBITDA added; DSO reduced; GRR improved) not by the activity (meetings held; proposals sent; process changes described); "we're making good progress on employer group expansion" is Yellow at best; "+2 employer groups signed representing $280K annualized EBITDA" is data; the VCP tracks data
- RED initiatives get a specific failure analysis, not a hope — when an initiative is rated RED for one month, Dr. Lewis prepares a failure analysis: what specifically has not happened that was planned to happen? What is the root cause? What is the recommended response? "We're looking into it" is not a response; "the employer group expansion initiative is RED because the CEO has been personally leading the sales process and has closed 0 new groups in 6 months; the root cause appears to be that the CEO is a strong clinical operator but not a sales leader; my recommendation is to hire a dedicated employer group BD person ($80-100K) within 30 days and transfer the initiative from the CEO to that person" is a response
- All Allevio value creation data is aggregate financial and operational — no PHI to Dr. Lewis or Matt Mathison; the financial impact of clinical initiatives (claim ratio improvement; utilization management) is reported in PMPM economics and aggregate dollars — the word "member" in a value creation report refers to aggregate member populations, not individuals; if a value creation initiative's progress cannot be measured without PHI, the measurement methodology is redesigned to use aggregate data
- HITL required: any initiative requiring >$50K incremental investment → Dr. Lewis + entity CEO approval; initiatives requiring >$250K → Matt Mathison; add-on acquisition → Matt Mathison (all sizes); RED initiative for 2+ months → Matt Mathison decision on accountability; VCP revision (removing a planned initiative) → Matt Mathison awareness; QBR outcome debrief → Matt Mathison leads the QBR

## System Dependencies
- **Reads from:** Entity quarterly financials (QuickBooks; AdvancedMD aggregate; Covercy; DSP reports); entity CEO initiative reports; pe-portfolio-health-monitor (entity health scores); pe-entity-ceo-monitor (CEO performance assessment); pe-deal-thesis-builder (original VCP commitments); Monday.com (initiative tracking boards)
- **Writes to:** VCP tracker (SharePoint → Portfolio → VCP → [Entity] → [YYYY]); Matt Mathison quarterly briefings; entity CEO performance reviews (pe-entity-ceo-monitor); pe-portfolio-reporting (LP quarterly report value creation section); Monday.com initiative boards (progress updates)
- **HITL Required:** Initiative investment >$50K → Dr. Lewis + entity CEO; >$250K → Matt; add-on → Matt; RED 2+ months → Matt decision; VCP revision → Matt awareness; QBR → Matt leads

## Test Cases
1. **Golden path:** Allevio QBR. Dr. Lewis presents: employer group expansion — 3 new groups signed (vs. 5 planned: 2 deferred to next quarter due to benefits cycle timing — Yellow); claim ratio improved from 89% to 85.4% (ahead of plan — Green); billing efficiency: DSO improved from 42 to 31 days (plan was 35 — complete). Column6: agency NRR 96.3% (above 95% target — Green); VCR 93.1% (above 92% target — Green). HIVE: landowner GRR 88.2% (above 85% target — Green). Matt: "Allevio employer group expansion needs attention — let's discuss the BD approach at next week's call."
2. **Edge case:** A value creation initiative (Column6 new publisher relationships) was planned to add $400K in annual EBITDA but the publishers are not signing — the initiative is now 4 months old and 0% realized → Dr. Lewis: "Column6 publisher expansion initiative is RED for the second consecutive month. Root cause analysis: the target publishers have existing relationships with [Competitor] who offers minimum volume guarantees that Column6 does not currently match. Three options: (1) Match the volume commitments ($200K+ risk if we don't fill the inventory — escalation to Matt); (2) Target smaller publishers where we have a competitive advantage (lower EBITDA impact but achievable); (3) Abandon this initiative and reallocate the BD resources to agency NRR defense (VCP revision). Matt: this needs a decision this week."
3. **Adversarial:** The entity CEO reports that all value creation initiatives are "on track" but the financial data shows EBITDA is 18% below the VCP target → Dr. Lewis: "The CEO's self-assessment and the financial data don't align — EBITDA is 18% below VCP target while all initiatives are reported as on track. This is a credibility issue I need to address directly with the CEO before the next Matt Mathison briefing. My ask to the CEO: show me the specific financial outcome of each initiative you've reported as on track. If the initiatives are on track, where is the EBITDA going? I'll present both the CEO's view and the financial reality to Matt with my own assessment of the gap."

## Audit Log
All VCP versions retained (with effective dates). Quarterly progress reports retained. RED initiative failure analyses retained. Matt Mathison decision records retained (initiative investments; VCP revisions; accountability decisions). QBR records retained. EBITDA realization vs. plan history retained.

## Deprecation
Value creation tracking is active for the hold period of each portfolio investment. The VCP for each entity is retired at exit. The tracking methodology is reviewed after each exit for lessons learned.
