---
name: agops-strategy-roi-calculator
description: "Calculate and communicate the ROI of MBL's agent investments. Use when: calculating AI ROI, building ROI narrative for Matt, quantifying time saved by agents, translating hours to dollars, calculating error cost avoided, measuring decision quality improvement, tracking compliance value, building LP communications context for AI investment, preparing quarterly ROI update, writing annual AI investment summary, justifying agent build investment, presenting ROI in dollar terms, benchmarking AI spend vs value, computing Dr. Lewis hourly rate multiplier, measuring meeting prep time savings, calculating scale-without-headcount value, communicating AI value to Matt Mathison, building BLUF ROI one-pager, updating ROI model with actuals, comparing AI investment across portfolio entities"
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[quarterly-update | annual-summary | lp-context | phase-roi | full-model]"
---

# Agent Operations Strategy ROI Calculator

Calculates, tracks, and communicates the return on investment of MBL's agent program across all value categories — time saved, errors prevented, decisions improved, compliance maintained, and scale achieved without headcount. Outputs are structured for Matt Mathison consumption: BLUF, dollar terms, one page.

## When to Use

- Matt Mathison asks whether the AI investment is paying off or wants a dollar-denominated summary
- Dr. Lewis needs to justify a new phase investment with projected ROI against actuals to date
- Quarterly ROI update cycle — actuals vs. projected, updated model for next quarter
- Annual AI investment summary for LP communications context or board reporting

## Agent Operations Strategy ROI Calculator Framework

```
╔══════════════════════════════════════════════════════════╗
║           AGOPS ROI CALCULATOR FRAMEWORK                 ║
╚══════════════════════════════════════════════════════════╝

VALUE CATEGORY TAXONOMY
────────────────────────
CAT-1  TIME SAVED
  - Dr. Lewis hours recovered (agent handles vs. manual build/run)
  - Matt Mathison hours recovered (meeting prep, summary review)
  - Team hours recovered (admin, data gathering, report assembly)
  Rate basis: Dr. Lewis loaded rate; Matt Mathison loaded rate

CAT-2  ERRORS PREVENTED
  - Manual data entry errors caught by agent validation
  - Missed action items caught by Meeting Intelligence
  - Financial discrepancies flagged before QB/Bill.com posting
  Cost basis: avg error remediation cost (time + downstream impact)

CAT-3  DECISIONS IMPROVED
  - Pre-meeting prep sheets → better-prepared Matt Mathison
  - Portfolio monitoring alerts → faster executive response
  - Agent-surfaced anomalies → decisions made with better data
  Value basis: qualitative (hard to quantify); narrative for Matt

CAT-4  COMPLIANCE MAINTAINED
  - PHI isolation (Allevio) — HIPAA penalty avoided
  - LP data controls (HIVE) — regulatory and LP trust preserved
  - Audit trail completeness — audit readiness value
  Cost basis: regulatory penalty rates; audit preparation hours saved

CAT-5  SCALE WITHOUT HEADCOUNT
  - Agent workload equivalent in FTE hours per quarter
  - Headcount NOT added due to agent coverage
  Value basis: fully loaded FTE cost at equivalent role level

QUANTIFICATION METHODOLOGY
───────────────────────────
TIME SAVED FORMULA
  Hours Saved × Loaded Hourly Rate = $ Value
  Dr. Lewis: [rate TBD by Dr. Lewis; default placeholder]
  Matt Mathison: [rate TBD; use Managing Partner market rate]

ERROR COST FORMULA
  Errors Caught × Avg Remediation Cost = $ Value
  Remediation cost = (hours to fix) × (loaded rate of fixer)
    + downstream impact estimate (deal risk, compliance risk)

SCALE WITHOUT HEADCOUNT FORMULA
  Agent Hours Equivalent ÷ 2000 hrs/yr = FTE Equivalent
  FTE Equivalent × Fully Loaded FTE Cost = $ Value

TOTAL ROI FORMULA
  Total Value = CAT-1 + CAT-2 + CAT-3 (qualitative) + CAT-4 + CAT-5
  Total Investment = Dr. Lewis time + Krista.ai cost + Claude API cost
    + any tooling / infrastructure cost
  ROI % = (Total Value - Total Investment) / Total Investment × 100
  Payback Period = Total Investment / Monthly Value Generated

QUARTERLY UPDATE CADENCE
──────────────────────────
Q-UPDATE-1: Pull actuals from Dr. Lewis time log + Krista costs
Q-UPDATE-2: Update error catch counts from incident/audit log
Q-UPDATE-3: Update scale metrics from fleet usage report
Q-UPDATE-4: Reforecast next quarter based on roadmap phase
Q-UPDATE-5: Produce Matt Mathison 1-page BLUF ROI brief

ANNUAL AI INVESTMENT ROI — LP COMMUNICATIONS CONTEXT
──────────────────────────────────────────────────────
NOTE: LP communications use portfolio-level framing.
  - Express value as operational leverage, not just cost savings
  - Frame as competitive moat: AI-enabled portfolio ops
  - Quantify: scale achieved vs. headcount alternative
  - Flag: compliance value (HIPAA, CCPA, audit readiness)
  - NO LP names, fund amounts, or distribution details in agent outputs
    without explicit Dr. Lewis review (HITL required)
```

## Output Format

```markdown
## MBL AI Investment ROI — [Quarter / Period]

**BLUF:** MBL's agent program delivered $[X] in quantified value against $[Y] in investment this quarter, yielding [Z]% ROI. [One sentence on top value driver.]

### Value Summary
| Category | Metric | $ Value |
|---|---|---|
| Time Saved | [hrs] hrs recovered | $[X] |
| Errors Prevented | [N] errors caught | $[X] |
| Scale w/o Headcount | [N] FTE equivalent | $[X] |
| Compliance Value | [description] | $[X] |
| **Total Value** | | **$[X]** |

### Investment Summary
| Item | Cost |
|---|---|
| Dr. Lewis time (agent build/ops) | $[X] |
| Krista.ai platform | $[X] |
| Claude API | $[X] |
| **Total Investment** | **$[X]** |

### ROI Metrics
- **Net Value:** $[X]
- **ROI:** [X]%
- **Payback Period:** [X months]

### Next Quarter Forecast
[One paragraph: what value is expected, what investment is planned, key assumptions.]

### Recommended Decision
[BLUF — one sentence. Any action Matt Mathison needs to take.]
```

## Output Contract

- **All value figures are grounded in actuals or explicitly labeled as estimates.** The ROI model distinguishes between measured actuals (Dr. Lewis hours logged, Krista.ai invoices, error counts from audit log) and forward estimates (projected time saved in next phase, scale equivalent for agents not yet live). Matt Mathison makes investment decisions based on this output — mixing actuals with projections without labeling them destroys the credibility of the entire model and must never happen.

- **The one-page BLUF format is non-negotiable for Matt Mathison delivery.** Supporting detail (methodology, formula assumptions, per-category breakdowns) is appended as an exhibit, never in the main body. Matt Mathison reads BLUF first; if the numbers tell a clear story, he doesn't need the methodology. If the numbers are surprising, the methodology exhibit is available. This structure respects his time and ensures the ROI narrative lands before the detail obscures it.

- **LP communications framing is distinct from internal ROI framing and requires Dr. Lewis review before use.** Internal ROI outputs can be direct and granular (Dr. Lewis hourly rate, Krista.ai line-item cost). LP-context outputs frame AI investment as operational leverage and competitive moat — they do not expose internal rate structures or individual system costs. Any output destined for LP reporting or board decks must be flagged for Dr. Lewis HITL review before it leaves the agent system.

## System Dependencies

**Reads from:**
- Dr. Lewis time logs (manual input or tracked hours)
- Krista.ai billing / usage data
- Claude API usage logs (tokens, cost)
- Agent incident log (error catch counts)
- Fleet usage report (agent hours equivalent)
- agops-strategy-roadmap-planner (phase investment estimates)

**Writes to:**
- Matt Mathison quarterly ROI brief (HITL required before delivery)
- Annual AI investment summary (HITL required)
- LP communications ROI context (HITL required; board-level review)
- ROI model version history

**HITL Required:**
- Any ROI output delivered to Matt Mathison — Dr. Lewis reviews and approves
- Any LP-context framing — Dr. Lewis and Matt Mathison must both approve
- Any change to loaded rate assumptions used in the model

## Test Cases

**Golden Path:** Dr. Lewis requests a Q2 ROI update. Skill ingests time log (40 hrs Dr. Lewis on agent ops), Krista.ai cost ($X), Claude API cost ($Y), error catch count (12 errors), and fleet usage (equivalent to 0.5 FTE). Skill calculates total value, total investment, ROI%, and payback period. Produces a one-page BLUF brief. Dr. Lewis reviews, approves, and delivers to Matt Mathison.

**Edge Case:** Dr. Lewis has not maintained a time log for the quarter. Skill flags the missing input, requests an estimate (hours on agent ops this quarter), and notes in the output that time figures are estimates pending log reconciliation. ROI output is still produced but labeled "preliminary — time actuals pending." Error and scale figures from automated logs are marked as confirmed actuals.

**Adversarial Case:** A stakeholder requests the ROI brief with internal rate structures included for an LP update deck. Skill outputs the LP-context version (operational leverage framing, no internal rates) and appends a HITL flag: "This output is intended for LP communications context. Dr. Lewis and Matt Mathison must review before inclusion in any LP-facing document." The internal rate version is kept in the internal exhibit, not surfaced to LP context without explicit approval.

## Audit Log

Every ROI calculation run is logged with timestamp, period covered, input sources used (actuals vs. estimates), output document type (internal / Matt brief / LP context), and HITL approval status. Quarterly logs are retained for the duration of the AI program and are available for annual strategy review and LP diligence. Any change to rate assumptions or methodology is logged as a model version event with the rationale documented.

## Deprecation

This skill is deprecated if MBL adopts a dedicated financial analytics platform that natively tracks AI investment ROI with real-time actuals (e.g., an integrated BI layer over Krista.ai and Claude API billing). At that point, this skill transitions to a reporting template for human-readable narrative output, with calculation logic moved to the analytics platform. Archive the final ROI model version before removal so historical comparability is preserved.
