---
name: agops-cost-budget-manager
description: "Manage the AI and agent operations budget for MBL Partners and portfolio entities. Use when you need to allocate monthly agent budget by entity, track budget consumption in real time, classify AI spend as CapEx vs OpEx, report cost-per-value ratios, prepare Matt Mathison's quarterly AI investment ROI briefing, flag budget overruns above the 20% threshold, recommend budget adjustments, model forward AI spend scenarios, calculate marginal cost of new skill deployment, review budget against actual spend, produce entity-level cost isolation reports, analyze portfolio AI spend efficiency, set budget by phase of the MBL AI orchestration roadmap, track spend by Krista.ai phase, report AI budget to finance ops for QuickBooks classification, support annual budget planning for AI infrastructure, or generate budget variance narratives for Dr. Lewis review."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[entity|all] [action: allocate|status|variance|roi-brief|adjust] [period: YYYY-MM|Q#-YYYY]"
---

# Agent Cost Budget Manager

Manage the full AI and agent operations budget for MBL Partners — from monthly entity-level allocation through CapEx/OpEx classification, budget variance flagging, and the quarterly AI investment ROI briefing that Dr. John Lewis delivers to Matt Mathison. This skill is the financial governance layer that ensures AI spend is accountable, isolated by portfolio entity, and defensible as a value-creating investment.

## When to Use

- Monthly budget allocations must be set or updated for MBL HoldCo, Allevio, HIVE, and Column6, and Dr. Lewis needs the current allocation state plus a forward-looking model for the next 90 days.
- Actual agent spend has crossed the 20% over-budget threshold for any entity, triggering the mandatory Dr. Lewis review and Matt Mathison awareness protocol before additional runs are authorized.
- The quarterly AI investment ROI briefing package is due for Matt Mathison and requires a narrative that translates raw spend into value metrics (cost per output unit, efficiency gains, savings from optimization, phase ROI).
- A new skill or workflow is being planned and its incremental budget impact must be modeled before deployment approval — the build decision requires a cost-per-value estimate and a budget impact statement.

## Agent Cost Budget Manager Framework

```
BUDGET MANAGEMENT FRAMEWORK — MBL PARTNERS AGENT OPERATIONS

═══════════════════════════════════════════════════════════
SECTION 1: BUDGET ALLOCATION STRUCTURE
═══════════════════════════════════════════════════════════
  ALLOCATION HIERARCHY
    Total MBL AI Ops Budget (Dr. Lewis sets monthly)
    ├── MBL HoldCo allocation     [$ amount | % of total]
    ├── Allevio allocation        [$ amount | % of total]
    ├── HIVE Partners allocation  [$ amount | % of total]
    ├── Column6 allocation        [$ amount | % of total]
    └── Shared Infrastructure     [$ amount | % of total]
        (Krista.ai orchestration, logging, monitoring, tooling)

  ALLOCATION PRINCIPLES
    - Each portfolio entity budget is isolated; overruns in one entity
      do not draw from another entity's allocation
    - Shared infra cost is allocated by run-count ratio at month end
    - Allevio budget includes HIPAA compliance overhead (audit logging,
      PHI-adjacent safeguards); classified separately from pure API cost
    - New entity onboarding: 90-day provisional allocation; reviewed at 60 days

  BUDGET SETTING INPUTS (Dr. Lewis reviews monthly)
    - Prior month actual spend by entity (from agops-cost-tracker)
    - Planned new skill deployments (from skill registry roadmap)
    - Phase milestone budget (MBL AI Orchestration Phase 0–4 spend plan)
    - Optimization savings achieved (from agops-cost-optimizer)
    - Forward volume forecast (meeting count, run frequency, batch schedule)

═══════════════════════════════════════════════════════════
SECTION 2: CAPEX VS. OPEX CLASSIFICATION
═══════════════════════════════════════════════════════════
  OPEX (period expense — classify to AI Operations cost center)
    - Claude API token costs (per-run consumption)
    - Krista.ai subscription / usage fees
    - Prompt caching overhead (cache write costs)
    - Monitoring and logging infrastructure fees
    - Ongoing skill maintenance and updates

  CAPEX (capitalize and amortize — coordinate with finance ops / QB)
    - Initial skill development labor (Dr. Lewis time on new skill builds)
    - Major platform integrations (e.g., Krista.ai Phase 0 buildout)
    - Infrastructure setup for new portfolio entity AI onboarding
    - Custom tooling or connectors built once and reused

  CLASSIFICATION RULES
    - When in doubt: OpEx (conservative; avoids capitalization disputes)
    - CapEx threshold: project spend > $5,000 and useful life > 12 months
    - All CapEx items require finance ops coordination for QB entry
    - Dr. Lewis provides classification memo for each CapEx item

═══════════════════════════════════════════════════════════
SECTION 3: BUDGET CONSUMPTION TRACKING
═══════════════════════════════════════════════════════════
  REAL-TIME STATUS DASHBOARD (updated daily from agops-cost-tracker)
    Entity          | Budget | Spent | Remaining | % Used | Burn Rate | EOM Forecast
    MBL HoldCo     |        |       |           |        |           |
    Allevio         |        |       |           |        |           |
    HIVE Partners   |        |       |           |        |           |
    Column6         |        |       |           |        |           |
    Shared Infra    |        |       |           |        |           |
    TOTAL           |        |       |           |        |           |

  BURN RATE CALCULATION
    burn_rate = spend_to_date / business_days_elapsed × remaining_business_days
    eom_forecast = spend_to_date + burn_rate

  ALERT THRESHOLDS
    75% budget consumed with >25% of period remaining  → Dr. Lewis advisory
    >20% over budget (any entity, any time)            → Dr. Lewis review REQUIRED
                                                         + Matt Mathison awareness
    EOM forecast > 110% of budget                      → Dr. Lewis advisory

═══════════════════════════════════════════════════════════
SECTION 4: COST-PER-VALUE TRACKING
═══════════════════════════════════════════════════════════
  VALUE METRICS BY WORKFLOW CLASS
    Meeting Intelligence Summaries
      Cost metric:   cost per summary delivered
      Value metric:  Matt Mathison time saved (est. 30 min/summary)
      Value at cost: [Matt Mathison effective hourly rate × 0.5]

    Pre-Meeting Prep Sheets
      Cost metric:   cost per prep sheet delivered
      Value metric:  meeting effectiveness improvement (qualitative + HITL rating)

    Anomaly / Alert Workflows
      Cost metric:   cost per alert resolved
      Value metric:  risk exposure avoided (estimated by Dr. Lewis per incident)

    Portfolio Analysis Skills
      Cost metric:   cost per analysis delivered
      Value metric:  decision support value (Dr. Lewis qualitative assessment)

  COST-PER-VALUE RATIO
    ratio = cost_per_unit / estimated_value_per_unit
    target: ratio ≤ 0.05 (AI cost < 5% of value delivered)
    alert:  ratio > 0.20 → skill economics review required

═══════════════════════════════════════════════════════════
SECTION 5: QUARTERLY ROI BRIEFING — MATT MATHISON
═══════════════════════════════════════════════════════════
  PACKAGE STRUCTURE
    1. Executive Summary (BLUF — 3 bullets)
       - Total AI investment this quarter
       - Primary value delivered (quantified where possible)
       - Forward recommendation (budget, phase, priority shift)

    2. Spend Breakdown by Entity and Phase
    3. Cost-Per-Value Analysis by Workflow Class
    4. Optimization Savings Realized (caching, right-sizing, batching)
    5. Anomalies Detected and Resolved
    6. Phase Progress vs. Budget (Phase 0–4 spend vs. plan)
    7. Next Quarter Budget Recommendation with assumptions

  DELIVERY PROTOCOL
    - Dr. Lewis assembles and reviews full package (HITL gate)
    - Package formatted per MBL Partners brand standards
    - Delivered to Matt Mathison in quarterly ops review or dedicated brief
    - Archived in MBL AI Operations records for audit trail

═══════════════════════════════════════════════════════════
SECTION 6: BUDGET ADJUSTMENT PROTOCOL
═══════════════════════════════════════════════════════════
  TRIGGER CONDITIONS (any → adjustment review)
    - Entity overrun > 20% of allocation
    - New skill deployment with material budget impact (> $500/month)
    - Phase milestone change (scope expansion or compression)
    - Optimization savings > 30% (budget can be right-sized down)

  ADJUSTMENT STEPS
    1. agops-cost-budget-manager generates variance report with root cause
    2. Dr. Lewis reviews and approves adjustment (documents rationale)
    3. If adjustment > 25% of entity allocation: Matt Mathison awareness
    4. Updated allocation written to budget ledger with effective date
    5. agops-cost-tracker notified of new budget baseline
```

## Output Format

```markdown
## AI Operations Budget Report — [Entity|All] | [Period]

**Generated:** [timestamp]  **Reviewed by:** Dr. John Lewis

### Budget Status Summary
| Entity | Allocated | Spent | Remaining | % Used | EOM Forecast | Status |
|--------|-----------|-------|-----------|--------|-------------|--------|
| MBL HoldCo | $X | $X | $X | X% | $X | ✓ On Track |
| Allevio | $X | $X | $X | X% | $X | ⚠ Advisory |
| HIVE | $X | $X | $X | X% | $X | ✓ On Track |
| Column6 | $X | $X | $X | X% | $X | ✓ On Track |
| Shared | $X | $X | $X | X% | $X | ✓ On Track |
| **TOTAL** | **$X** | **$X** | **$X** | **X%** | **$X** | |

### CapEx / OpEx Split This Period
- Total OpEx (API + subscriptions): $X.XX
- Total CapEx (development + setup): $X.XX
- Finance ops QB classification: [Pending / Submitted on DATE]

### Cost-Per-Value Summary
| Workflow | Cost/Unit | Est. Value/Unit | Ratio | Status |
|----------|-----------|-----------------|-------|--------|
| Meeting Summaries | $X.XX | $X.XX | X.XX | ✓ |
| Prep Sheets | $X.XX | $X.XX | X.XX | ✓ |

### Budget Alerts
[None | Alert description with entity, threshold crossed, recommended action]

### Recommended Budget Adjustments
[None required | Adjustment with rationale, impact, approval status]
```

## Output Contract

- **Every budget status report is derived from agops-cost-tracker's audited run ledger and never from estimates or manually entered figures, ensuring that the allocation, spend, and remaining figures Matt Mathison sees in the quarterly briefing are the same numbers that would appear in a finance ops audit.** Budget figures that cannot be traced to the run ledger are flagged as unreconciled and held from the Matt Mathison package until Dr. Lewis resolves the discrepancy. Portfolio entity cost isolation is absolute — Allevio spend never appears in HIVE figures and vice versa.

- **The 20% overrun threshold is a hard stop, not a soft advisory — when any entity crosses it, additional automated agent runs for that entity are paused pending Dr. Lewis review, and Matt Mathison receives a one-line awareness note within the same business day.** The threshold exists because AI spend can compound quickly (a misconfigured loop or an unexpectedly large context can drive a month of budget in hours), and the managing partner must be aware of material variances in the AI investment before they become a finance ops problem. Dr. Lewis's review documents root cause, corrective action, and whether the entity's allocation needs permanent adjustment.

- **The quarterly ROI briefing package translates every dollar of AI spend into a value narrative — time saved, risk avoided, decisions supported — and never presents raw token counts or API costs to Matt Mathison without a corresponding value metric.** The investment framing is deliberate: Matt Mathison evaluates AI spend as he would any capital allocation decision, asking whether the return justifies the cost. A briefing that leads with token prices fails that test; one that shows cost-per-prep-sheet versus the value of a well-prepared managing partner meeting passes it. Dr. Lewis owns the value estimation methodology and updates it quarterly.

## System Dependencies

**Reads from:**
- agops-cost-tracker entity cost ledger (daily spend feed)
- agops-cost-optimizer savings ledger (optimization efficiency gains)
- Dr. Lewis budget allocation file (monthly allocation targets by entity)
- Skill registry (planned deployments for forward cost modeling)
- MBL AI Orchestration Phase plan (phase-level budget targets)

**Writes to:**
- Budget status dashboard (daily update)
- Entity budget ledger (allocation changes with effective date)
- Finance ops QuickBooks classification memo (CapEx items)
- Matt Mathison quarterly ROI briefing package (staged for HITL review)
- Anomaly and adjustment log (audit trail)

**HITL Required:**
- All budget adjustments > 10% of any entity allocation (Dr. Lewis)
- All budget adjustments > 25% of any entity allocation (Dr. Lewis + Matt Mathison aware)
- All quarterly ROI briefing packages before delivery to Matt Mathison (Dr. Lewis)
- Any CapEx classification decision (Dr. Lewis + finance ops coordination)

## Test Cases

**Golden Path:** End of month, all four entities within budget. agops-cost-budget-manager pulls the ledger from agops-cost-tracker, calculates EOM forecasts (all under 100%), generates the budget status report, updates the cost-per-value metrics with the latest run data, and stages the report for Dr. Lewis review. No alerts triggered. Dr. Lewis reviews and closes the report. Finance ops receives the QuickBooks classification memo for the month's OpEx.

**Edge Case:** HIVE Partners has an unexpected spike in portfolio analysis skill runs due to a WTI price trigger firing 14 times in one week. Spend hits 118% of monthly allocation by day 19. Budget manager detects the >20% overrun, pauses further HIVE analysis skill runs, generates a variance report attributing the overrun to the WTI trigger cadence, and sends the one-line awareness note to Matt Mathison. Dr. Lewis reviews, confirms the trigger cadence is intentional, adjusts the HIVE allocation for the remainder of the month, and resumes runs. The adjustment is logged with rationale.

**Adversarial:** A request is submitted to reclassify three months of Krista.ai subscription fees from OpEx to CapEx to smooth a quarterly P&L. Budget manager correctly refuses — subscription fees are OpEx by definition regardless of their value — generates a classification memo explaining the rule, and flags the reclassification request in the audit log. Dr. Lewis is notified of the attempt. No QB entry is made without Dr. Lewis approval and finance ops coordination.

## Audit Log

Every budget allocation, adjustment, overrun alert, CapEx classification, and quarterly ROI package event is recorded in an append-only audit log with timestamps, entity, dollar amounts, triggering condition, Dr. Lewis review disposition, and (where applicable) Matt Mathison awareness confirmation. The log supports finance ops reconciliation, internal audit requests, and the historical record of MBL's AI investment decisions across all phases of the orchestration roadmap. Entries are retained for 36 months to cover standard audit look-back periods.

## Deprecation

This skill is deprecated when MBL's finance ops system (QuickBooks or a successor ERP) natively integrates with the AI operations cost ledger and provides entity-level allocation tracking, overrun alerting, and CapEx/OpEx classification without a separate budget management skill. Before deprecation, Dr. Lewis must confirm that the replacement system enforces the same portfolio isolation, 20% overrun protocol, HITL gates, and Matt Mathison briefing format. Historical budget records must be migrated to the new system before the skill is retired. A 60-day parallel-run period is required.
