---
name: engineering-kpi-dashboard
description: "Generate the engineering KPI dashboard and metrics report. Use when the user says 'engineering KPIs', 'engineering metrics', 'engineering dashboard', 'engineering performance', 'team velocity', 'deployment frequency', 'DORA metrics', 'engineering health', 'sprint metrics', or 'engineering scorecard'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--team <name>] [--period <sprint|monthly|quarterly>] [--audience <internal|executive>]"
---

# Engineering KPI Dashboard

Generate the engineering KPI dashboard for MBL engineering teams. Engineering metrics tell you whether the team is delivering reliably, improving over time, and building the right things. The DORA metrics (Deployment Frequency, Lead Time, MTTR, Change Failure Rate) are the industry standard for measuring engineering delivery health — they correlate with organizational performance better than story points or velocity alone.

## When to Use
- End of sprint — sprint retrospective metrics
- Monthly engineering review with Dr. Lewis
- Quarterly engineering summary for Matt Mathison
- Evaluating team health after a difficult quarter
- Comparing engineering effectiveness across portfolio companies

## Core KPI Framework (DORA + MBL)

### DORA Metrics (Delivery Performance)

| Metric | Elite | High | Medium | Low |
|--------|-------|------|--------|-----|
| **Deployment frequency** | Multiple/day | Daily | Weekly | Monthly |
| **Lead time for changes** | <1 hour | <1 day | <1 week | >1 week |
| **MTTR (Mean Time to Restore)** | <1 hour | <1 day | <1 day | >1 day |
| **Change failure rate** | 0-5% | 5-10% | 10-15% | >15% |

### MBL Engineering Metrics

| Metric | Target | Frequency |
|--------|--------|-----------|
| **Sprint velocity** | Stable or increasing | Per sprint |
| **Sprint goal hit rate** | >80% | Per sprint |
| **Test coverage (critical paths)** | >80% | Monthly |
| **Build pipeline success rate** | >95% | Weekly |
| **P1 incident count** | 0 (minimize) | Monthly |
| **Technical debt items resolved** | Net positive | Quarterly |
| **Security vulnerabilities (open critical)** | 0 | Weekly |
| **Documentation coverage** | >70% | Quarterly |

## Output Format

```markdown
# Engineering KPI Dashboard — <Team/Entity>
**Period:** <sprint N / month / quarter> | **Date:** <date>
**Prepared by:** Dr. John Lewis

---

## Executive Summary

**Delivery health:** Elite / High / Medium / Low
**Key win this period:** <specific achievement>
**Top risk:** <specific concern>
**Action needed from leadership:** <specific ask or decision>

---

## DORA Metrics

| Metric | This Period | Last Period | Trend | Benchmark |
|--------|-----------|-----------|-------|----------|
| Deployment frequency | 3/week | 2/week | ↑ | High performer |
| Lead time for changes | 2 days | 4 days | ↑ Better | High performer |
| MTTR | 45 min | 2.5 hours | ↑ Better | Elite |
| Change failure rate | 6% | 12% | ↑ Better | High performer |

---

## Sprint Metrics

| Metric | This Sprint | Last Sprint | Trend |
|--------|-----------|-----------|-------|
| Committed points | 28 | 30 | |
| Completed points | 26 | 22 | ↑ |
| Sprint goal hit | ✅ | ❌ | ↑ |
| Carry-over items | 1 | 3 | ↑ Better |
| Velocity (3-sprint avg) | 25 | 22 | ↑ |

---

## Quality Metrics

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Build success rate | 97% | >95% | ✅ |
| Test coverage (critical) | 82% | >80% | ✅ |
| Open critical vulnerabilities | 0 | 0 | ✅ |
| P1 incidents this period | 1 | 0 | 🟡 |
| P2 incidents this period | 2 | <3 | ✅ |

---

## Incident Summary

| Incident | Severity | Duration | Root Cause | Status |
|---------|---------|---------|-----------|--------|
| API timeout spike | P2 | 45 min | Missing index added | ✅ Resolved |
| Deploy failure | P2 | 20 min | Config env var missing | ✅ Resolved |
| Auth service P1 | P1 | 1.5 hr | Cert expired | ✅ Resolved — cert auto-renewal enabled |

**MTTR this period:** 45 min avg (target: <1 hr) ✅

---

## Technical Debt and Backlog Health

| Category | Open Items | Resolved This Period | Net |
|----------|-----------|-------------------|-----|
| Technical debt | 8 | 2 | -2 (improving) |
| Security findings | 3 | 5 | -2 (improving) |
| Documentation gaps | 12 | 4 | -4 (improving) |

---

## Engineering Capacity

| Category | Hours/Sprint | % of Capacity |
|----------|------------|--------------|
| Feature development | 120 | 60% |
| Bug fixes | 30 | 15% |
| Technical debt | 20 | 10% |
| Incidents | 15 | 7.5% |
| Meetings/process | 15 | 7.5% |

**Target distribution:** Features 65%, Bugs <15%, Tech debt 10%, Incidents <5%
**Concern:** Incidents at 7.5% — above target; root cause: cert expiry and config gaps → automation in progress

---

## Bottom Line (Matt Mathison)

**Engineering health:** High performer — improving delivery frequency and MTTR. One P1 incident (cert expiry — now automated). Sprint velocity stable.

**Key risks:** Incident rate slightly above target — cert renewal automation resolves the primary cause. Documentation coverage needs investment (72%).

**Investment request:** 2 engineer-days/sprint dedicated to observability tooling — will reduce incident MTTR to <30 min.
```

## Output Contract
- DORA metrics always included and benchmarked against industry levels — internal-only metrics miss industry context
- Incident summary always included with root cause — incidents without root cause tracking repeat
- Capacity breakdown always included — capacity consumed by incidents and bugs directly reduces feature throughput
- Bottom line always written for Matt Mathison — he needs signal, not data
- HITL required: Dr. Lewis reviews before distribution; Matt Mathison receives executive version quarterly

## System Dependencies
- **Reads from:** Monday.com sprint boards, CI/CD pipeline logs, incident log, deployment history, security scan results
- **Writes to:** Engineering KPI dashboard (SharePoint); quarterly summary for Matt Mathison
- **HITL Required:** Dr. Lewis reviews; Matt Mathison receives quarterly executive summary

## Test Cases
1. **Golden path:** Q2 engineering dashboard for MBL → DORA: High performer level; sprint velocity 25 pts avg (stable); 1 P1 incident (cert expiry — resolved); 2 P2s (45 min MTTR avg); build success rate 97%; 0 open critical vulnerabilities; capacity at 62% features, 16% bugs (slightly above target); recommendation: invest in cert auto-renewal (done) and test coverage for auth paths
2. **Edge case:** Sprint velocity dropped 40% due to a week of incidents → incidents consumed 40% of capacity; report this transparently; root cause: lack of alerting on cert expiration; fix: implement automated cert renewal and monitoring; don't inflate velocity by excluding incident time — the team's actual throughput matters
3. **Adversarial:** Engineering team wants to cherry-pick which metrics to report to Matt Mathison → all 8 core KPIs are reported every quarter; declining metrics are reported with root cause and remediation plan, not hidden; Matt Mathison can handle bad news better than surprises; selective reporting erodes trust

## Audit Log
Engineering KPI dashboards retained by period. DORA metrics history maintained for trend analysis. Incident history retained.

## Deprecation
Retire when engineering team adopts a dedicated engineering analytics platform (LinearB, Jellyfish, Haystack) with automated metric collection and dashboarding.
