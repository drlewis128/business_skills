---
name: rc-risk-report
description: "Produce executive risk reports for CEO and Matt Mathison. Use when the user says 'risk report', 'executive risk report', 'risk summary', 'risk update', 'report on risks', 'risk briefing', 'risk status report', 'monthly risk report', 'quarterly risk report', 'risk communication', 'risk board report', 'risk overview', 'Matt Mathison risk update', or 'risk presentation'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly|annual>] [--audience <CEO|Matt|board>]"
---

# Risk Report

Produce executive risk reports for CEO and Matt Mathison at MBL portfolio companies — synthesizing risk register status, KRI trends, and mitigation progress into a clear, action-oriented narrative that enables leadership to understand the risk posture and make informed decisions. The risk report is not a data dump — it is a curated view of the risk landscape that answers: "what is our top risk right now, what are we doing about it, and what do you need to know or decide?"

## When to Use
- Monthly risk brief to CEO — current risk status, KRI alerts, action updates
- Quarterly risk report to Matt Mathison — portfolio risk posture, high/critical risks, capital-at-risk
- Annual risk review — full risk register review, appetite alignment, year-over-year trends
- Board meeting preparation — risk committee reporting (if applicable)
- After a significant risk event — post-event risk report to leadership

## Risk Reporting Framework

```
Report types and cadence:
  Monthly CEO risk brief:
    → Length: 1 page / 5-minute read
    → Content: KRI status (Red/Amber changes); any new High/Critical risks; mitigation updates; decisions needed
    → Tone: BLUF — bottom line first; specific; no hedging
    
  Quarterly Matt Mathison portfolio brief:
    → Length: 1-2 pages
    → Content: All portfolio companies; top 3 risks per entity; High/Critical risks only (Medium/Low summarized)
    → Focus: Capital-at-risk, regulatory exposure, strategic risk; decisions that require Matt Mathison
    
  Annual risk review:
    → Length: Full risk register review
    → Content: Year-over-year comparison; risks closed; new risks added; mitigation effectiveness; appetite review
    
  Post-event risk report:
    → Triggered by: Any risk event (incident, breach, regulatory action, significant loss)
    → Content: What happened; risk register update; were KRIs signaling; what changed in controls
    
Reporting principles:
  BLUF — what is the risk posture in the first sentence; details below
  Trend over point-in-time — is the portfolio safer or more exposed than last quarter?
  Action-orientation — every significant risk has a named owner, mitigation, and deadline
  No false comfort — if a risk is High, report it as High; do not soften language
  Decision clarity — what, if anything, does the CEO or Matt Mathison need to decide?
  
Risk heat map categories for executive reporting:
  Report to CEO: All Red KRIs; all High/Critical risks on register; any new risk in current period
  Report to Matt Mathison: All High/Critical across portfolio; any >$250K potential impact; regulatory actions; compliance status
  Do not burden with: Individual Medium/Low risks with active mitigations and no escalation needed
```

## Output Format

```markdown
# Monthly Risk Brief — <Company Name> — [Month YYYY]
**Prepared by:** Dr. John Lewis | **Date:** [Date]
**Audience:** CEO [Name]

---

## Risk Posture (BLUF)

**Overall:** 🟢 Stable / 🟡 Elevated attention / 🔴 Active risk — [One sentence]

**Since last month:**
- 🔴 New Red KRI: [KRI name — action in progress]
- ✅ Risk closed: [Risk — why closed]
- ⚠️ Risk escalated: [Risk — why score changed]
- ✅ Mitigation completed: [Mitigation — risk score improvement]

---

## Top Risks This Month

| # | Risk | Score | Status | Update |
|---|------|-------|--------|--------|
| 1 | [Highest residual score risk] | 🔴 [Score] | Active mitigation | [2-sentence update] |
| 2 | | | | |
| 3 | | | | |

---

## KRI Alerts

| KRI | Status | Value | Threshold | Action |
|-----|--------|-------|-----------|--------|
| HIPAA training completion (Allevio) | 🔴 Red | 94% | <95% = Red | Training assigned; gated from PHI systems |
| Microsoft Secure Score | 🟡 Amber | 62/100 | 55-64 = Amber | Continuing; target ≥65 by [Date] |

**No Red KRIs / [N] Red KRIs requiring CEO awareness**

---

## Mitigation Progress

| Risk | Mitigation action | Owner | Due date | Status |
|------|-----------------|-------|---------|--------|
| [Risk R001] | [Specific action] | Dr. Lewis | [Date] | ✅ Complete / 🟡 On track / 🔴 At risk |
| | | | | |

---

## Compliance Status Summary (Allevio)
- HIPAA risk analysis: Current ✅ / Overdue — [Action]
- BAA tracker: 100% complete ✅ / Gaps: [Count vendors]
- OIG LEIE checks: Current ✅ / Overdue: [Count staff]
- Security awareness training: [X]% complete ✅ / Gaps: [Count staff]

---

## Decisions Needed

[No decisions required this month]
or:
- **[Decision]:** [Context — options — Dr. Lewis recommendation]

---

# Quarterly Risk Report — Portfolio — Q[N] [YYYY]
**Prepared by:** Dr. John Lewis | **Date:** [Date]
**Audience:** Matt Mathison

---

## Portfolio Risk Posture (BLUF)

**Overall portfolio risk trend:** Improving / Stable / Elevated
**Capital at risk (High/Critical risks):** $[X]K-$[X]M potential exposure across portfolio

---

## Risk Summary by Entity

| Entity | Critical (21-25) | High (15-20) | Medium (9-14) | Low (1-8) | Overall | Key risk |
|--------|----------------|-------------|--------------|----------|---------|---------|
| MBL Partners | [N] | [N] | [N] | [N] | 🟢/🟡/🔴 | [Top risk] |
| Allevio | [N] | [N] | [N] | [N] | | HIPAA residual: [Score] |
| HIVE Partners | [N] | [N] | [N] | [N] | | [Top risk] |

---

## High/Critical Risks Requiring Matt's Awareness

| Entity | Risk | Score | Potential impact | Mitigation | Status |
|--------|------|-------|----------------|-----------|--------|
| Allevio | [Risk] | 🔴 [Score] | $[X]K | [Mitigation plan] | [On track / At risk] |
| | | | | | |

---

## Compliance Posture Summary

| Entity | HIPAA status | Key compliance risk | Action |
|--------|-------------|-------------------|--------|
| Allevio | 🟢 Compliant / 🟡 Gap — [detail] | [Risk] | [Action] |
| HIVE | [State regulatory] | | |
| MBL | [PE fiduciary / employment] | | |

---

## Decisions Required from Matt Mathison

[No decisions required] / [Decision — context — recommendation]

---

## Year-to-Date Risk Activity

| Metric | Q1 | Q2 | Q3 | Q4 | YTD |
|--------|----|----|----|----|-----|
| New risks added | [N] | [N] | | | |
| Risks closed | [N] | [N] | | | |
| High risks mitigated to Medium/Low | [N] | [N] | | | |
| Risk events (incidents with risk impact) | [N] | [N] | | | |
```

## Output Contract
- The risk report opens with the bottom line — if Matt Mathison reads only the first sentence, he knows whether to keep reading; "Risk posture: Stable — no new High or Critical risks this quarter; HIPAA KRI at Allevio briefly reached Red (training gap, now resolved); top risk is ransomware at inherent 20, residual 10 with Defender deployment" is a complete first sentence; "I am pleased to present the quarterly risk report" is not a first sentence — it is filler that wastes the reader's time
- Only High and Critical risks go to Matt Mathison — reporting every Medium and Low risk to Matt Mathison creates noise that obscures the signal; the value of the risk scoring system is that it filters: Medium and Low risks are managed by Dr. Lewis and reported to the CEO; High and Critical risks are reported to Matt Mathison because they represent the potential for material portfolio impact; if everything is reported to Matt Mathison, nothing is prioritized
- Potential impact is quantified in dollars — "significant financial risk" is not useful; "$150K-$400K potential impact from HIPAA breach (OCR fine range + remediation costs) with current residual risk score of 10" is useful; Matt Mathison evaluates risk against capital deployed; dollar estimates allow him to make proportionate decisions about mitigation investment
- HITL required: Dr. Lewis prepares all risk reports; CEO receives monthly brief; Matt Mathison receives quarterly portfolio brief; annual risk review presented to CEO and Matt Mathison; any new Critical risk triggers same-day notification to Matt Mathison outside of regular reporting cadence

## System Dependencies
- **Reads from:** Risk register (rc-risk-register), KRI dashboard (rc-key-risk-indicator), compliance status (rc-hipaa-security-program, rc-compliance-calendar), incident log, mitigation tracking (Monday.com)
- **Writes to:** Risk reports (SharePoint/RC/<Company>/RiskManagement/Reports/); CEO monthly brief; Matt Mathison quarterly portfolio brief; annual risk report
- **HITL Required:** Dr. Lewis prepares reports; CEO reviews monthly; Matt Mathison quarterly; same-day notification for new Critical risks; annual review with CEO and Matt Mathison

## Test Cases
1. **Golden path:** Monthly CEO risk brief for Allevio → BLUF: "Risk posture: Stable. HIPAA training KRI briefly hit Red (3 new hires, 94% completion) — training assigned same day, gated from AdvancedMD until complete. Ransomware risk remains top risk at residual score 10 (Defender deployment complete — was 12 last month). No new High or Critical risks. No decisions needed."; Details: Secure Score 62 (Amber, improving); 0 open critical vulns; BAA tracker 100%; 1 mitigation completed (Defender deployment); CEO reviews in 5 minutes; acknowledges; brief filed
2. **Edge case:** A risk event occurs mid-quarter (ransomware attempt — blocked by Defender, no breach) → Post-event risk report triggered immediately: What happened (attack vector, detection, containment); risk register updated (ransomware likelihood revised up from 3 to 4 based on active targeting); KRI review (phishing click rate was 4% — one click that was blocked by Defender; good news/bad news); mitigation status (Defender worked; next step: verify all endpoints enrolled); CEO notified same day; Matt Mathison informed within 24 hours; post-event report filed; next quarterly brief references the event and response
3. **Adversarial:** "Risk reporting creates anxiety — we don't want to scare the CEO with risk reports" → Risk reports don't create risk — they create visibility into risk that already exists; a CEO who doesn't know the ransomware risk is High residual isn't less exposed — they're less informed and less able to make proportionate decisions about IT security investment; the risk report framed correctly is not alarming — it is organized and shows that the risks are identified, scored, owned, and mitigated; "ransomware residual risk: 10 (Medium), down from 12 last month; Defender fully deployed" is reassuring, not alarming; the reports that create anxiety are the ones that surface a critical risk the CEO didn't know about — and the solution to that is earlier, regular reporting, not less reporting

## Audit Log
Monthly CEO risk briefs retained by month. Quarterly Matt Mathison portfolio briefs retained. Annual risk reports retained permanently. Post-event risk reports retained permanently. Same-day Critical risk notifications retained. CEO and Matt Mathison acknowledgment records retained.

## Deprecation
Retire when portfolio companies have dedicated risk management officers who produce standard risk reports to the CEO and board — with Dr. Lewis reviewing the Matt Mathison quarterly portfolio brief for accuracy and contributing AI/technology risk content. Same-day Critical risk notification to Matt Mathison is a permanent requirement regardless of who produces the reports.
