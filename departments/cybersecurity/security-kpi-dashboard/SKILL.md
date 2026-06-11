---
name: security-kpi-dashboard
description: "Track and report security KPIs for leadership and board. Use when the user says 'security KPIs', 'security key performance indicators', 'board security report', 'security scorecard', 'what KPIs should security track', 'security metrics for the board', 'CISO dashboard', or 'security performance metrics'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--audience <board|executive|it-team>] [--period <monthly|quarterly|annual>]"
---

# Security KPI Dashboard

Track and report security KPIs for leadership and board. The difference between security metrics (for IT teams) and security KPIs (for leadership) is context and consequence. Leadership doesn't need to know the number of firewall rules — they need to know whether the organization is getting safer, whether compliance obligations are being met, and whether the risk profile supports strategic goals. This skill produces the board/executive-level security KPI dashboard.

## When to Use
- Quarterly board or executive security briefing
- Annual security report to Matt Mathison
- Building a KPI framework for the first time
- After a major security investment — showing ROI
- Investor or M&A due diligence security reporting

## KPI Selection Criteria

Good security KPIs for leadership must be:
```
✅ Outcome-focused — did we prevent/detect/respond to threats?
✅ Comparable — trend over time, not just point-in-time
✅ Actionable — tells leadership what decisions to make
✅ Business-linked — connects to revenue, compliance, or risk
❌ Not input-focused — "number of security tools deployed" is not a KPI
❌ Not volume-only — "1,000 alerts processed" means nothing without context
```

## Output Format

```markdown
# Security KPI Dashboard — <Entity>
**Period:** <quarter/year> | **Date:** <date>
**Audience:** Board / Matt Mathison / Executive
**Prepared by:** Dr. John Lewis

---

## Portfolio Security Scorecard

| Entity | Security Score | vs. Last Quarter | Risk Level | Insurance | Compliance |
|--------|-------------|----------------|-----------|---------|-----------|
| MBL Partners | 82/100 | ↑ +4 | Medium | ✅ Current | SOC 2 prep |
| Allevio | 79/100 | ↑ +6 | Medium | ✅ Current | HIPAA 88% |
| HIVE Partners | 71/100 | ↑ +2 | Medium | ✅ Current | Basic |
| Column6 | 68/100 | → 0 | Medium | ✅ Current | Basic |

---

## KPI 1: Security Posture Score

**Definition:** Microsoft Secure Score (weighted by entity risk profile)
**Target:** ≥ 80 across all entities by year end
**Why it matters:** Independent, third-party measure of security control deployment

| Entity | Q1 | Q2 | Q3 | Q4 Target |
|--------|-----|-----|-----|---------|
| MBL Partners | 74 | 78 | 82 | 85 |
| Allevio | 70 | 73 | 79 | 85 |
| HIVE | 65 | 68 | 71 | 75 |

**Trend:** ↑ All entities improving. MBL Partners on track to hit 85 target.

---

## KPI 2: P1 Security Incident Rate

**Definition:** Number of critical (P1) security incidents per quarter
**Target:** 0 P1 incidents per quarter
**Why it matters:** P1 incidents have direct financial impact (response costs, downtime, regulatory)

| Quarter | P1 Incidents | Impact | Key Lesson |
|---------|------------|--------|-----------|
| Q1 | 1 | $12K response cost | Unpatched vulnerability exploited; patching SLA tightened |
| Q2 | 0 | — | No P1 incidents ✅ |
| Q3 | 0 | — | No P1 incidents ✅ |

**Trend:** Improvement since Q1. Enhanced patching process working.

---

## KPI 3: Phishing Resilience Rate

**Definition:** 100% minus phishing simulation click rate
**Target:** ≥ 95% resilience (< 5% click rate)
**Why it matters:** Human layer is the primary attack vector for BEC and ransomware

| Quarter | Click Rate | Resilience | vs. Target |
|---------|-----------|-----------|-----------|
| Q1 | 14% | 86% | 🔴 Below target |
| Q2 | 9% | 91% | 🟡 Improving |
| Q3 | 6% | 94% | 🟡 Approaching target |
| Q4 target | <5% | >95% | Target |

**Trend:** Significant improvement. Security awareness training working.

---

## KPI 4: Vulnerability SLA Compliance

**Definition:** % of vulnerabilities remediated within defined SLA by severity tier
**Target:** 100% Critical on time; ≥ 95% High on time
**Why it matters:** Unpatched vulnerabilities are the primary ransomware entry point

| Period | Critical SLA | High SLA | Trend |
|--------|------------|---------|-------|
| Q1 | 80% | 72% | Baseline |
| Q2 | 90% | 83% | ↑ |
| Q3 | 100% | 91% | ↑ On track |

**Trend:** Critical vulnerability remediation now at 100%. High continuing to improve.

---

## KPI 5: MFA Coverage

**Definition:** % of all user accounts with MFA enrolled
**Target:** 100%
**Why it matters:** Mandatory for cyber insurance; most breaches bypass perimeter via stolen credentials

| Entity | Q3 Coverage | vs. Target | Action |
|--------|-----------|-----------|--------|
| MBL Partners | 100% | ✅ | None |
| Allevio | 97% | 🟡 3 users | Enrolled by Oct 15 |
| HIVE | 95% | 🟡 2 users | Enrolled by Oct 15 |
| Column6 | 98% | 🟡 1 user | Enrolled by Oct 15 |

---

## KPI 6: Compliance Status

| Framework | Entity | Status | Key Gap | Due |
|---------|--------|--------|---------|-----|
| HIPAA | Allevio | 88% compliant | Log retention (6-year) | Q4 fix |
| Cyber Insurance | All | ✅ Renewed | — | Renewal <date> |
| SOC 2 | MBL Partners | Readiness: 70% | Formal audit in 12 months | 2027 |

---

## Bottom Line for Matt Mathison

**The portfolio is getting safer:**
- Security scores improving across all entities (+4 to +6 points per entity this quarter)
- No P1 incidents for 2 consecutive quarters
- Phishing resilience approaching target (94%, up from 86% in Q1)
- MFA at or near 100% across all entities

**Watch items:**
- Allevio HIPAA log retention gap — being fixed Q4
- SOC 2 readiness at 70% — on track for 2027 audit

**Investment delivering returns:**
- Security awareness training: phishing click rate cut by 57% vs Q1
- Enhanced patching: 0 P1 incidents since Q1 incident drove process change
```

## Output Contract
- Executive scorecard always leads with bottom line — Matt Mathison reads the summary paragraph first
- All KPIs trend over time — point-in-time data is not a KPI
- HIPAA compliance always tracked separately for Allevio
- "Watch items" always explicit — leadership needs to know what to watch, not just what's going well
- HITL required: Dr. Lewis builds and presents; Matt Mathison receives quarterly briefing; Finance reviews any KPI with budget implications; Board receives annual security summary

## System Dependencies
- **Reads from:** Microsoft Secure Score, incident log, vulnerability management data, phishing simulation results, compliance assessments (provided)
- **Writes to:** KPI dashboard report (for HITL review and distribution)
- **HITL Required:** Dr. Lewis reviews and presents; Matt Mathison receives quarterly briefing; Allevio compliance officer reviews HIPAA KPI

## Test Cases
1. **Golden path:** Q3 KPI dashboard → all 6 KPIs improving, Secure Scores up, 0 P1 incidents for 2 quarters, phishing click rate down to 6%, vulnerability SLA compliance improving; bottom line positive with 2 watch items called out; Matt Mathison satisfied
2. **Edge case:** Q with a P1 incident — KPI 2 shows a P1 → include in dashboard with cost, root cause (one sentence), and what changed as a result; no hiding bad news; shows the response process worked
3. **Adversarial:** IT team wants to use metrics that "look good" but don't reflect true posture → KPI framework established upfront; cannot switch metrics to avoid showing a bad number; the point is accurate measurement, not marketing

## Audit Log
Quarterly KPI dashboards retained by entity and quarter. Annual summaries retained permanently.

## Deprecation
Retire when a security operations platform provides real-time KPI dashboards for leadership with automated data feeds, or when a GRC platform generates compliance KPIs automatically.
