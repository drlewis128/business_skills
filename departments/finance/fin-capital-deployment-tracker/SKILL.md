---
name: fin-capital-deployment-tracker
description: "Track and report capital deployment across MBL Partners portfolio. Use when the user says 'capital deployment', 'deployed capital', 'track the capital', 'how much have we deployed', 'capital tracker', 'deployment tracker', 'capital spending', 'how much capital is left', 'remaining capital', 'available capital', 'capital utilization', 'capital commitments', 'committed capital', 'capital allocation status', 'deployment pace', 'capital deployed to Allevio', 'capital deployed to HIVE', 'capital deployed to Column6', 'capital return', 'return on deployed capital', 'capital efficiency', 'deploy the capital', 'capital schedule', 'investment schedule', 'capital plan vs actual', 'how are we tracking on capital', or 'fund deployment status'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <all|MBL|Allevio|HIVE|Column6>] [--period <ytd|quarterly|since-inception>] [--action <review|update|report|project>] [--view <summary|detail|roi>]"
---

# Fin Capital Deployment Tracker

Track and report capital deployment across the MBL Partners portfolio — maintaining a current, accurate view of how much capital has been deployed to each entity, what returns those deployments are generating, and how the deployment pace compares to the approved capital plan. Capital deployment tracking is the financial governance instrument that connects Matt Mathison's capital decisions (exec-capital-allocation) to actual financial outcomes; it ensures that capital is being deployed at the planned pace, that returns are being tracked against the investment thesis (exec-value-creation-plan), and that the portfolio stays within the capital reserve and concentration limits set in the MBL capital governance framework.

## When to Use
- Monthly: update the deployment tracker with the prior month's capital activity
- Quarterly: full deployment review for Matt Mathison and the board
- A new capital commitment or deployment is approved
- Matt Mathison asks "how much have we deployed and what are we getting for it?"
- Annual LP reporting (capital deployment summary is a required LP disclosure)

## Capital Deployment Framework

```
CAPITAL DEPLOYMENT CATEGORIES:

  ACQUISITION CAPITAL:
    Initial purchase price deployed at closing
    By entity: Allevio [initial investment]; HIVE [initial]; Column6 [initial]
    Track separately from operating capital (different return profile; different IRR calculation)
    
  OPERATING CAPITAL (follow-on investments):
    Capital injected into entities post-acquisition for operations; growth; working capital
    By entity and purpose (working capital; headcount; technology; marketing)
    Tracked against the VCP (Value Creation Plan) milestones (exec-value-creation-plan)
    
  CAPEX CAPITAL:
    Equipment; technology; facility improvements
    Tracked with expected life and ROI
    
  RESERVE (not deployed):
    MBL maintains minimum 15% of total available capital as undeployed reserve
    Reserve is tracked separately; never committed without Matt Mathison explicit approval

DEPLOYMENT TRACKING STRUCTURE:

  SINCE-INCEPTION TRACKING (per entity):
    Initial acquisition cost: $[X] — [Date]
    Operating capital injections:
      [Date]: $[X] — [Purpose] — [VCP milestone it supports]
      [Date]: $[X] — [Purpose]
    Total deployed since inception: $[X]
    
    Return metrics (current):
      LTM EBITDA: $[X]
      EV at current valuation: $[X]
      MBL equity value: $[X]
      Total return (equity value - total deployed): $[X]
      MOIC: equity value / total deployed
      IRR: annualized return since initial acquisition
      
  YTD TRACKING (vs. annual capital plan):
    Approved annual capital budget: $[X] (per fin-budget-builder)
    Deployed YTD: $[X]
    Remaining approved: $[X]
    Pace: [on track / ahead / behind vs. plan]
    
CAPITAL RESERVE MONITORING:

  Per exec-capital-allocation policy:
    Total available capital: $[X] (LP commitments + MBL operating capital)
    Minimum reserve: 15% = $[X]
    Deployed (all entities): $[X]
    Committed but not yet deployed: $[X]
    Available for new deployment: $[X] - reserve = $[X]
    
  Concentration check:
    No single entity >50% of annual deployment capital (without Matt approval + LP notification)
    Allevio: $[X] YTD / Total YTD = [%]
    HIVE: $[X] / [%]
    Column6: $[X] / [%]

DEPLOYMENT ROI TRACKING:

  For each capital deployment, track:
    Deployment ID: CAP-001, CAP-002, etc.
    Date deployed: [Date]
    Amount: $[X]
    Entity: [Entity]
    Purpose: [Working capital / Growth initiative / CapEx / Acquisition]
    VCP milestone: [Which VCP milestone this deployment supports]
    Expected return timeline: [When should this deployment generate measurable return?]
    Actual return generated (as of tracking date):
      Revenue enabled: $[X] (if attributable)
      EBITDA enabled: $[X]
      ROI: (Return / Deployment) × 100%
    Status: [On track / Below target / Exceeded / Write-off risk]
```

## Output Format

```markdown
# Capital Deployment Tracker — [Month/Quarter Year]
**Maintained by:** Dr. Lewis | **Reviewed by:** Matt Mathison | **As of:** [Date]

---

## Portfolio Capital Summary

| Entity | Deployed (inception) | Deployed (YTD) | Current equity value | MOIC | IRR |
|--------|---------------------|---------------|---------------------|------|-----|
| Allevio | $[X] | $[X] | $[X] | [N]x | [%]% |
| HIVE | $[X] | $[X] | $[X] | [N]x | [%]% |
| Column6 | $[X] | $[X] | $[X] | [N]x | [%]% |
| **Total** | **$[X]** | **$[X]** | **$[X]** | **[N]x** | **[%]%** |

---

## Capital Reserve Status

| Item | Amount | % of Total |
|------|--------|-----------|
| Total available capital | $[X] | 100% |
| Deployed (all entities) | $[X] | [%]% |
| Committed (approved; not yet deployed) | $[X] | [%]% |
| Reserve (available) | $[X] | [%]% |
| **Minimum required reserve** | **$[X]** | **15%** |
| **Reserve status** | 🟢/🟡/🔴 | |

---

## YTD Deployment vs. Plan

| Entity | Plan (YTD) | Actual (YTD) | Variance | Pace |
|--------|-----------|-------------|---------|------|
| Allevio | $[X] | $[X] | $[+/-X] | On track |
| HIVE | $[X] | $[X] | $[+/-X] | Behind |
| Column6 | $[X] | $[X] | $[+/-X] | On track |

---

## Recent Deployments

| ID | Date | Entity | Amount | Purpose | VCP milestone | ROI status |
|----|------|--------|--------|---------|-------------|-----------|
| CAP-[N] | [Date] | [Entity] | $[X] | [Purpose] | [Milestone] | [Status] |
```

## Output Contract
- Every deployment tracked to a VCP milestone — capital that is deployed without a clear VCP milestone connection is either misallocated or the VCP needs to be updated; Dr. Lewis requires that every operating capital deployment above $10K be linked to a specific milestone in the entity's Value Creation Plan; this creates the accountability loop between capital deployed and value created; Matt Mathison can look at the deployment tracker and see exactly what each dollar of operating capital was supposed to accomplish
- Reserve is non-negotiable — the 15% minimum reserve is not a guideline; it is a hard constraint that Matt Mathison has established; any deployment that would bring the reserve below 15% requires Matt Mathison explicit approval with documented justification; Dr. Lewis tracks the reserve weekly (in the cash flow update) and monthly (in the deployment tracker); concentration checks are run monthly; a single entity at >50% of annual deployment is flagged to Matt before the next deployment is approved
- ROI tracking closes the loop — deploying capital without tracking whether it generated the expected return is financial management without accountability; Dr. Lewis tracks the expected return timeline and actual returns for each deployment; deployments that are past their expected return date without measurable results are flagged to Matt Mathison and the entity CEO; this is the mechanism that prevents the portfolio from accumulating capital deployments that looked good at the time but aren't generating returns
- HITL required: Matt Mathison reviews the deployment tracker quarterly; any deployment bringing the reserve below 15% requires Matt explicit approval; concentration >50% at any entity requires Matt approval + LP notification; write-off risk assessments (a deployment unlikely to generate expected return) go to Matt within 24 hours; the quarterly deployment report is the input to the board's capital discussion; Matt Mathison is the sole authority on distribution waterfall calculations

## System Dependencies
- **Reads from:** exec-capital-allocation (approved capital plan and thresholds); fin-investor-returns-model (IRR and MOIC calculations); fin-lp-financial-disclosure (LP capital account statements reference deployment data); exec-value-creation-plan (VCP milestones that deployments are mapped to); QuickBooks (cash disbursements to entities — actual deployment timing and amounts)
- **Writes to:** Capital deployment tracker (SharePoint → Finance → CapitalTracking → [YYYY]); exec-board-reporting (deployment summary in the quarterly board package); fin-lp-financial-disclosure (deployment data feeds into LP capital account statements); exec-lp-reporting (capital deployment pace and returns are LP-reported metrics); exec-action-tracker (deployment milestone tracking; reserve breach alerts)
- **HITL Required:** Quarterly tracker reviewed by Matt Mathison; reserve breach prevention requires Matt approval; concentration >50% requires Matt approval + LP notification; write-off risk → Matt within 24 hours; all new capital deployments follow exec-capital-allocation approval thresholds before the deployment tracker is updated

## Test Cases
1. **Golden path:** Q2 deployment tracker update; YTD deployed: Allevio $285K (on plan; 2 operating capital injections: clinical coordinator hire + AdvancedMD module upgrade; both tied to VCP milestones); HIVE $120K (behind plan by $40K — planned well development in Q2 deferred to Q3 due to permitting delay; capex trigger not met; appropriate given WTI at $61); Column6 $65K (on plan; sales hire + DSP tooling). Reserve: $1.85M available capital; $470K deployed YTD; $1.38M reserve (74.6% — well above 15% minimum). Concentration: Allevio 60.6% of YTD deployment (above 50% — but within annual plan which had Allevio at 58%; Matt was briefed at annual planning; no new flag needed). ROI: Allevio clinical coordinator hire ($95K fully-loaded) — employer group activation 2 months ahead of schedule ($186K incremental ARR); ROI = 1.96× in <6 months. On track.
2. **Edge case:** HIVE requests an unplanned $180K working capital injection after a production equipment failure → Dr. Lewis: "Before I process this, let me check the capital constraints. Current reserve: $1.4M (76% of available capital). Adding $180K: reserve drops to $1.22M (66% — still well above 15%). Concentration: HIVE YTD would go from $120K to $300K (63% of YTD deployed) — above the 50% threshold. This requires Matt Mathison awareness before we proceed. I'm flagging it now. Matt: HIVE is requesting a $180K unplanned working capital injection for equipment failure. I've done the preliminary analysis. This does put HIVE above 50% of YTD deployment concentration, which per our policy triggers LP notification. Do you want to approve the deployment and trigger the LP notification, or would you like to explore alternatives (equipment financing; insurance claim) that don't require an unplanned equity injection?" Matt makes the call.
3. **Adversarial:** An entity CEO asks for a capital deployment but can't tie it to a VCP milestone → Dr. Lewis: "I need a VCP milestone connection before I can take this to Matt for approval. The question isn't whether the deployment makes sense — I can often see how it fits. The question is whether it's in the Value Creation Plan, and if it's not, whether the VCP needs to be updated. Here's the issue: if every capital request that comes in gets approved as a 'good idea,' we lose the discipline that keeps the VCP meaningful and the capital reserve intact. So: is this deployment already implicit in the VCP under an existing milestone, or is it a new priority that represents a VCP change? If it's a VCP change, we bring Matt the full picture — here's what we planned to do; here's what we're actually doing; here's why the change is value-creating. That's the right conversation."

## Audit Log
All deployment records retained since inception (date; amount; entity; purpose; VCP milestone). Reserve checks retained monthly. Concentration checks retained monthly. ROI tracking records retained. Write-off risk assessments retained. Matt Mathison approval records for out-of-plan deployments. LP notification records for concentration breaches.

## Deprecation
The capital deployment tracker is a permanent MBL governance instrument. The mechanism (manual tracker vs. automated system) may evolve, but the Matt Mathison oversight function and the reserve/concentration controls do not retire while MBL has deployed capital in portfolio companies.
