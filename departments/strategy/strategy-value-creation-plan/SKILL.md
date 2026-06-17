---
name: strategy-value-creation-plan
description: "Build and track the value creation plan for a portfolio company — 100-day plan and annual operational improvements. Use when the user says 'value creation plan', 'VCP', '100-day plan', 'post-acquisition plan', 'portfolio value creation', 'operational improvement plan', 'portfolio company improvement', 'how do we create value', 'value creation initiatives', 'PE value creation', 'portfolio transformation', 'operational playbook', 'growth and improvement plan', or '100 days post-acquisition'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--stage <100-day|year-1|ongoing>] [--focus <revenue|margin|multiple|risk>]"
---

# Value Creation Plan Builder

Build and track the value creation plan (VCP) for MBL portfolio companies — defining the specific operational and strategic levers that will improve EBITDA, de-risk the asset, and expand the exit multiple over the hold period. In PE, value creation is not an aspiration — it is the thesis operationalized: every action in the VCP should have a direct line to EBITDA improvement, risk reduction, or multiple expansion. A VCP that lists 30 "improvement opportunities" but can't quantify the financial impact of each one is not a value creation plan — it's a to-do list. At MBL scale, Dr. Lewis owns the VCP execution across the portfolio and reports progress to Matt Mathison quarterly.

## When to Use
- Post-acquisition — building the 100-day plan for a new portfolio company
- Annual planning — updating the VCP for the coming year
- A portfolio company is underperforming vs. plan — what levers are available?
- Matt Mathison asks: "What are we doing to improve [Company]?"
- Preparing for exit — which value creation actions most improve the exit multiple?

## Value Creation Framework

```
PE value creation levers (three primary sources of return):
  
  1. EBITDA growth (most sustainable, most valued by buyers):
     Revenue growth: New patients/customers, expanded services, pricing, new locations
     Margin expansion: Operational efficiency, cost reduction, billing optimization, vendor renegotiation
     Combined: Scale-driven margin expansion (revenue grows faster than costs)
     
  2. Multiple expansion (market timing + company de-risking):
     Re-rating: From a discount to a premium multiple through revenue quality improvement
     Compliance/regulatory de-risking: Removes discount applied by buyers for compliance uncertainty
     Management depth: Removes key person discount
     Financial quality: Audited statements > reviewed > unreviewed; removes financial quality discount
     
  3. Leverage (financial engineering):
     Buy with debt, repay with free cash flow, reduce equity at risk; note: MBL healthcare and O&G use leverage conservatively
     
  100-day plan framework:
    Days 1-30: Listen and learn (no major changes; understand how the business actually operates)
    Days 31-60: Identify quick wins + design medium-term improvements
    Days 61-100: Implement quick wins; finalize annual VCP; hire for gaps
    
  Annual VCP structure:
    Revenue initiatives: Specific; owner; $ impact; timeline
    Cost/margin initiatives: Specific; owner; $ impact; timeline
    Operational improvements: Process, technology, staffing
    Compliance/risk reduction: Items that improve multiple (exit readiness)
    Organizational: Team upgrades, management depth, key hires
    
  Value creation tracking (quarterly):
    EBITDA impact realized (actual vs. plan)
    Initiatives: On track / At risk / Behind
    Exit multiple impact (estimated change from completed initiatives)
    
  MBL portfolio entity VCP context:
    Allevio: Primary levers — provider productivity, referral network, billing cycle reduction, HIPAA compliance premium
    HIVE: Primary levers — production optimization, LOE reduction, permit acceleration, UT DOGM relationship
    Column6: Primary levers — advertiser concentration reduction, programmatic infrastructure, audience data quality
```

## Output Format

```markdown
# Value Creation Plan — [Company Name]
**Stage:** [100-day / Year 1 / Ongoing] | **Date:** [Date]
**Prepared by:** Dr. John Lewis | **Matt Mathison reviewed:** ✅ [Date]

---

## Investment Thesis Recap

**Entry EBITDA:** $[X]M at [X]× = $[X]M entry value
**Hold period:** [N] years | **Entry date:** [Date]
**Target exit EBITDA:** $[X]M at [X]× = $[X]M exit value
**Target MOIC:** [X]× | **Target IRR:** [X]%
**Key assumption:** [What has to be true for the thesis to work?]

---

## Value Creation Initiatives

### Revenue Growth

| Initiative | Description | Year 1 $ impact | Year 2+ $ impact | Owner | Status |
|-----------|-------------|---------------|----------------|-------|--------|
| [Add provider (Allevio)] | [Hire 1 NP + patient panel build] | +$180K | +$280K | CEO | 🟢 On track |
| [Referral network expansion] | [3 new specialist referrers] | +$90K | +$150K | COO | 🟡 At risk |
| [Billing lag reduction] | [45→30 days DSO = cash release] | $60K cash | $60K cash | Controller | 🟢 |

**Revenue initiative total (Year 1):** +$[X]M

### Margin Improvement

| Initiative | Description | Year 1 $ impact | Owner | Status |
|-----------|-------------|---------------|-------|--------|
| [Vendor renegotiation] | [EHR pricing] | +$12K | Dr. Lewis | ✅ Complete |
| [Coding accuracy improvement] | [Marshall Medical billing audit] | +$35K | COO | 🟡 |

**Margin initiative total (Year 1):** +$[X]M

### Risk Reduction / Multiple Expansion

| Initiative | Risk eliminated | Estimated multiple impact | Owner | Status |
|-----------|---------------|------------------------|-------|--------|
| [HIPAA audit-ready certification] | OCR investigation risk | +0.5-1.0× | Dr. Lewis | 🟡 Q3 target |
| [CPA-reviewed financial statements] | Financial quality discount | +0.25× | Controller | ✅ Complete |
| [SOP documentation] | Key person dependency | +0.25× | CEO | 🔴 Behind |

---

## Milestone Tracker

### 100-Day Plan Status (if applicable)

| Day | Milestone | Status | Notes |
|----|---------|--------|-------|
| Day 30 | Operational assessment complete | ✅ | Key finding: billing lag 45 days vs. 32-day benchmark |
| Day 60 | Quick wins identified and launched | ✅ | 3 initiatives launched |
| Day 90 | Annual VCP finalized | ✅ | CEO approved |
| Day 100 | Reporting baseline established | ✅ | Monthly financials to Matt Mathison |

### Annual VCP Progress

| Quarter | Revenue initiatives | Margin initiatives | Risk reduction | EBITDA impact realized |
|---------|------------------|-----------------|---------------|----------------------|
| Q1 | [N] launched / [N] complete | | | $[X]K |
| Q2 | | | | |
| Q3 | | | | |
| Q4 | | | | $[X]K full year |

---

## Value Bridge (Entry → Exit)

| Component | EBITDA impact | Multiple impact | Exit value impact |
|---------|-------------|---------------|-----------------|
| Entry value | — | — | $[X]M |
| Revenue growth (Year 1-5) | +$[X]M | — | +$[X]M |
| Margin improvement | +$[X]M | — | +$[X]M |
| Risk reduction / multiple expansion | — | +[X]× | +$[X]M |
| **Projected exit value** | **$[X]M EBITDA** | **[X]×** | **$[X]M** |
| **MOIC** | | | **[X]×** |

---

## Matt Mathison Quarterly VCP Brief

[Company] VCP [Quarter]: EBITDA YTD $[X]M vs. plan $[X]M ([X]% [ahead/behind]). Revenue initiatives: [N] on track / [N] at risk. EBITDA impact realized: $[X]K vs. $[X]K plan. Multiple expansion: [X] initiatives complete. Exit trajectory: [On track for [X]× exit at [Date] / At risk — specific]. Next quarter focus: [Top 2 priorities]. Action from Matt Mathison: [None / Specific ask — e.g., approve provider hire].
```

## Output Contract
- Every initiative has a financial value, not just a description — an initiative called "improve referral network" is a project; "add 3 specialist referrers generating 15 new patients/month at $185 average reimbursement = $33,300/month = $400K/year revenue" is a value creation initiative; Dr. Lewis quantifies every initiative at least to an order-of-magnitude estimate; initiatives without quantified impact are moved to an operational backlog until they can be quantified or are deprioritized
- The VCP tracks realization, not effort — a "completed" initiative that generated half its projected EBITDA impact is not a success; the VCP tracks what was projected vs. what was realized; variance is analyzed and used to improve the reliability of future projections; Dr. Lewis does not treat completion of activity as equivalent to achievement of outcome; the Matt Mathison brief leads with realized EBITDA impact vs. plan, not with "we launched N initiatives"
- Risk reduction initiatives belong in the VCP because they directly affect exit value — most PE firms track EBITDA initiatives in the VCP and treat compliance and operational initiatives as separate; at MBL scale, Dr. Lewis integrates them because a buyer applying a 0.5× discount for HIPAA compliance risk is a $200,000 impact on exit value at 4× EBITDA; that's larger than many revenue initiatives; risk reduction initiatives are monetized in the VCP via their impact on exit multiple
- HITL required: Dr. Lewis builds and tracks the VCP; CEO owns initiative execution; Matt Mathison reviews quarterly; major initiative approvals (significant capital, hiring, new service lines) require CEO + Matt Mathison approval; initiatives that affect LP distributions or exit timing require Matt Mathison decision

## System Dependencies
- **Reads from:** Financial statements (QuickBooks — monthly), investment thesis (strategy-investment-thesis), exit plan (strategy-exit-planner), compliance readiness (rc-compliance-ops-review), operational KPIs (entity-specific dashboards)
- **Writes to:** VCP document (SharePoint/Strategy/<Company>/VCP/); quarterly VCP progress report; Matt Mathison quarterly brief; exit readiness update; annual strategic plan (strategy-annual-plan-builder) — VCP initiatives are the source of annual priorities
- **HITL Required:** Dr. Lewis builds and tracks; CEO approves and executes; Matt Mathison reviews quarterly and approves major initiative commitments; Matt Mathison for any exit trajectory changes

## Test Cases
1. **Golden path:** 100-day VCP for a newly acquired 6-provider physician practice (Allevio tuck-in) → Days 1-30: operational assessment — billing lag 52 days (benchmark 32); 1 payer represents 38% of revenue (concentration risk); no formal SOPs; HIPAA policies last updated 2019; Days 31-60: identify initiatives: (1) billing lag reduction = $45K immediate cash release + $25K/yr revenue capture; (2) payer concentration — add 2 new payer contracts by Q3; (3) HIPAA update = compliance de-risking + exit readiness; (4) provider productivity — 1 low-volume provider has capacity for +30% patients with scheduling optimization; Days 61-100: VCP finalized: 4 revenue/margin initiatives ($290K combined Year 1 impact); 2 risk reduction initiatives (+0.5× estimated exit multiple); Dr. Lewis presents to Matt Mathison; approved; Q1 OKRs cascade from VCP
2. **Edge case:** An initiative is behind — billing lag is still 44 days at Q3 (target was 35 days) → Q3 VCP review: initiative 🔴 Behind; root cause: Marshall Medical billing company not implementing the process change; Dr. Lewis escalates with the CEO — is Marshall Medical the right vendor? Root cause analysis: Marshall Medical has capacity issues; decision options: (1) escalate within Marshall Medical with contractual pressure, (2) evaluate alternative billing vendor, (3) hire an internal billing manager; Dr. Lewis recommends Option 3 ($55K/yr fully-loaded) with projected recovery to 38 days by Q4 = $20K revenue capture + $12K/yr ongoing; CEO agrees; Matt Mathison briefed — VCP trajectory back on track
3. **Adversarial:** "Let's add 10 more initiatives to the VCP this quarter" → A VCP with 20 simultaneous initiatives across a 6-person leadership team means nothing gets done well; Dr. Lewis applies portfolio theory: concentrate on the 3-5 highest-value initiatives, execute them completely, then pick up the next tier; every initiative competes for CEO time, which is the scarcest resource; "we have 10 initiatives" is a description of a distracted organization; "we completed 4 high-impact initiatives and realized $280K in EBITDA improvement" is a VCP success; Dr. Lewis manages the active VCP list to 5 initiatives maximum at any given time

## Audit Log
VCP documents retained permanently (PE portfolio history). Quarterly progress reports retained. Matt Mathison briefing records retained. Initiative completion records retained. EBITDA realization vs. plan retained. Exit multiple impact estimates retained.

## Deprecation
Retire when MBL develops a portfolio operations function with dedicated operating partners — with Dr. Lewis maintaining the compliance and technology initiatives within the VCP while the operating partner drives revenue and operational initiatives.
