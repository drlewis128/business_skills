---
name: legal-kpi-dashboard
description: "Generate the legal and compliance KPI dashboard. Use when the user says 'legal KPIs', 'legal dashboard', 'legal metrics', 'compliance scorecard', 'legal performance', 'compliance KPIs', 'legal department metrics', 'how is compliance doing', 'legal department performance', or 'compliance dashboard'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name|all>] [--period <monthly|quarterly|annual>] [--audience <internal|executive|board>]"
---

# Legal KPI Dashboard

Generate the legal and compliance KPI dashboard for MBL Partners and portfolio companies. Legal and compliance metrics tell a different story than financial metrics — they track risk exposure, process efficiency, and regulatory standing. This skill produces the legal KPI report for Dr. Lewis's internal management, for Matt Mathison's executive view, and for the LP/board-level governance summary.

## When to Use
- Monthly legal operations review
- Quarterly executive legal summary for Matt Mathison
- Annual legal department performance review
- Board or LP governance briefing
- Assessing whether to invest in additional legal resources or automation

## Core Legal KPIs

| KPI | What It Measures | Target | Frequency |
|-----|----------------|--------|---------|
| **Compliance training completion** | % workforce with current mandatory training | 100% | Monthly |
| **Active litigation matters** | Count of active lawsuits/arbitrations | 0 (minimize) | Monthly |
| **BAA/DPA compliance rate** | % vendors with PHI/EU data access that have executed BAA/DPA | 100% | Quarterly |
| **Contract renewal lead time** | Days in advance that renewing contracts are flagged | >60 days | Monthly |
| **Legal spend vs. budget** | Actual legal spend as % of budget | <105% | Monthly |
| **Compliance incident rate** | Compliance incidents per quarter | Trending toward 0 | Quarterly |
| **Policy review compliance** | % of policies reviewed within 12-month cycle | 100% | Annual |
| **Regulatory filing on-time rate** | % of required filings submitted on time | 100% | Quarterly |
| **HIPAA compliance maturity** | HIPAA compliance score (Allevio) | Level 3+/4 | Annual |
| **SOC 2 readiness** | Level of SOC 2 preparedness | Type II ready | Annual |

## Output Format

```markdown
# Legal & Compliance KPI Dashboard
**Period:** <month/quarter/year> | **Date:** <date>
**Entity:** <All entities / specific entity>
**Prepared by:** Dr. John Lewis

---

## Executive Bottom Line
<2-3 sentences: overall legal/compliance health, top risk, top win this period>

---

## KPI Scorecard

| KPI | Target | This Period | Last Period | Trend | Status |
|-----|--------|-----------|-----------|-------|--------|
| Compliance training completion | 100% | 97% | 98% | ↓ | 🟡 |
| Active litigation matters | Minimize | 1 | 0 | ↑ | 🟡 |
| BAA compliance rate | 100% | 95% | 90% | ↑ | 🟡 |
| Contract renewal lead time | >60 days | 45 days avg | 38 days avg | ↑ | 🟡 |
| Legal spend vs. budget | <105% | 98% | 103% | ↑ | ✅ |
| Compliance incidents | Trending ↓ | 1 (P3) | 0 | | 🟢 Low severity |
| Policy review rate | 100% | 100% | 86% | ↑ | ✅ |
| Regulatory filings on-time | 100% | 100% | 100% | → | ✅ |
| HIPAA compliance maturity (Allevio) | Level 3+/4 | Level 3 | Level 3 | → | ✅ |
| SOC 2 readiness | Type II ready | Type I ready | Type I ready | → | 🟡 |

---

## KPI Detail

### Compliance Training — 97% (Gap: 3 employees)
**Gap employees:** IT dept (2), Operations (1)
**Action:** Manager escalation this week; completion required by <date>
**HIPAA Note:** 0 gaps on Allevio HIPAA training — all clinical staff current

### Active Litigation — 1 Matter
**Matter:** Allevio employment claim (P2)
**Status:** Outside counsel engaged; discovery phase
**Estimated exposure:** $50K-$150K
**Insurance:** EPL coverage confirmed; deductible $10K
**Next milestone:** Mediation scheduled <date>

### BAA Compliance — 95% (Gap: 1 vendor)
**Vendor:** <IT MSP> — PHI access possible
**Action:** BAA being negotiated; expect execution within 14 days
**Risk:** PHI access restricted until BAA executed

### Legal Spend — $<amount> (98% of budget)
**On track to finish under budget:** Yes — forecast $<amount> vs. $<budget> budget
**Significant matters:** Allevio litigation ($15K YTD); HIPAA assessment ($8K)

---

## Risk Indicators

| Risk | Entity | Level | Change | Action |
|------|--------|-------|--------|--------|
| HIPAA compliance gap — audit log retention | Allevio | Medium | Improving — Sentinel config in progress | Expected resolution: <date> |
| Missing BAA (1 vendor) | Allevio | Medium | Active — negotiating | Expected resolution: <date> |
| Training gap (3 employees) | MBL | Low | Escalated to managers | Expected resolution: <date> |

---

## Legal Department Efficiency Metrics

| Metric | This Quarter | Last Quarter | Trend |
|--------|------------|------------|-------|
| Contract turnaround time (avg) | 8 days | 12 days | ↑ Better |
| Contracts reviewed | 22 | 18 | ↑ |
| Outside counsel invoices reviewed | 15 | 15 | → |
| Billing savings from invoice review | $2,100 | $1,800 | ↑ |
| Compliance incidents investigated | 1 | 0 | |

---

## Bottom Line (for Matt Mathison)

**Legal/compliance health:** Strong overall. One active litigation matter (low exposure, insured). HIPAA compliance improving — audit log gap being remediated. Training at 97% — 3 employee gap being closed this week. Legal spend under budget.

**Key risks:** SOC 2 Type II gap (still at Type I readiness); BAA for 1 IT vendor being finalized.

**Action items from this review:**
1. Training: Managers notified — expect 100% by <date>
2. BAA: Execution expected within 14 days
3. Sentinel config: Complete audit log retention fix by Q2
```

## Output Contract
- HIPAA metrics always separated for Allevio — healthcare compliance is higher-consequence than general compliance
- Training completion always tracked to 100% — anything less is a finding
- Litigation always disclosed with insurance status — LP/investors need to know if litigation is material
- Legal spend always compared to budget — overage triggers immediate notification to Matt Mathison
- Bottom line always written for Matt Mathison — he needs the signal, not the noise
- HITL required: Dr. Lewis reviews and approves before distribution; Matt Mathison receives executive version; board/LPs receive summary version only; detailed KPI data retained internally

## System Dependencies
- **Reads from:** Training LMS, litigation tracker, BAA inventory, contract lifecycle tracker, legal spend tracker, compliance incident log (provided by Dr. Lewis and entity teams)
- **Writes to:** Legal KPI dashboard (distributed to appropriate audience based on tier)
- **HITL Required:** Dr. Lewis reviews; Matt Mathison receives executive summary; board/LPs receive governance summary only

## Test Cases
1. **Golden path:** Q1 Legal KPI dashboard → training at 97% (3 employees — escalated to managers), 1 active litigation (Allevio employment, insured, $50-150K exposure), BAA gap closing (1 vendor in negotiation), legal spend at 98% of budget, no HIPAA incidents, policy review at 100% — executive summary sent to Matt Mathison
2. **Edge case:** KPI shows a trend of increasing compliance incidents (0, 1, 3, 2 over last 4 quarters) → trend analysis more important than single data points; 0→1→3→2 suggests a systemic issue (training? control failure? growth outpacing compliance?); trigger root cause analysis; brief Matt Mathison on trend and proposed response
3. **Adversarial:** Business unit requests that a particular KPI be removed from the dashboard because "it makes us look bad" → KPIs are objective measures of compliance performance; the answer to a bad KPI is not to remove it from the dashboard, it's to fix the underlying issue; document the request and decline it; brief Dr. Lewis

## Audit Log
Monthly/quarterly KPI dashboards retained. KPI source data retained. Trend data maintained for 3 years.

## Deprecation
Retire when entity deploys a GRC platform with automated KPI collection and dashboard generation, reducing manual compilation to zero.
