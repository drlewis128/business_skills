---
name: portops-allevio-rcm-monitor
description: "monitor allevio rcm, revenue cycle management report, claim denial rate, clean claim rate, DSO tracking, days sales outstanding, collections efficiency, AdvancedMD billing report, Marshall Medical Billing status, AR aging buckets, denial pattern analysis, HIPAA billing compliance, collections ratio, write-off tracking, bad debt analysis, payer denials, RCM dashboard, billing performance, allevio billing review, revenue cycle health, coding compliance"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "billing period (e.g. 'May 2026') or 'full review'"
---

# Allevio RCM Monitor

Monitors Allevio's Revenue Cycle Management performance across AdvancedMD and Marshall Medical Billing, tracking DSO, claim quality, collections efficiency, and denial patterns against MBL portfolio benchmarks. Produces a monthly RCM dashboard for the entity CEO and Dr. Lewis with all outputs restricted to aggregate billing data — no individual PHI.

## When to Use

- Monthly RCM performance review for Allevio entity CEO and Dr. Lewis
- When DSO exceeds 40 days and escalation assessment is needed
- Denial rate spike investigation requiring payer-pattern root cause analysis
- Pre-board or pre-investor reporting requiring Allevio revenue cycle health summary
- Annual billing compliance review for HIPAA-aligned coding and documentation standards

## RCM Monitor Framework

```
RCM SYSTEM LANDSCAPE
Primary EHR/PM:    AdvancedMD (scheduling, clinical documentation, charge capture, claim generation)
Billing Partner:   Marshall Medical Billing (claim submission, AR follow-up, remittance posting, denial management)
Integration Points: AdvancedMD → Marshall claim feed; Marshall → remittance back-post to AdvancedMD AR module
Data Pull Cadence: Monthly close (hard close by day 5 of following month) + real-time denial queue review
PHI Scope:         ZERO individual patient data in any output — aggregate billing code classes and payer classes only
Roles:             Dr. Lewis (Security Officer / MBL oversight); Allevio entity CEO (operational accountability)

DSO MONITORING
Target DSO:        35–40 days (MBL portfolio benchmark for employer-sponsored primary care MSO model)
Breach Threshold:  >45 days → immediate alert to Dr. Lewis; entity CEO briefing within 48 hours
Calculation:       (Total AR Outstanding / Monthly Net Revenue) × Days in Period
AR Aging Buckets:
  Current (0–30d):   target ≥60% of total AR
  30–60 days:        target ≤20% of total AR
  60–90 days:        target ≤10% of total AR
  90–120 days:       target ≤7% of total AR
  120+ days:         target ≤3% (review all balances for write-off candidacy each cycle)
Trend Alert:       Month-over-month DSO delta ≥+5 days triggers root cause investigation before next cycle

CLAIM PERFORMANCE METRICS
Clean Claim Rate:     target ≥95% first-pass acceptance by payer (industry benchmark: 95–98%)
Denial Rate:          target <5% of submitted claims; breach threshold >8% → Dr. Lewis alert
First-Pass Resolution Rate: % of claims paid on first submission without rework or appeal
Denial Reason Code Tracking — Standard CARC Codes to Monitor:
  CO-4   Inconsistent modifier with procedure code
  CO-11  Diagnosis inconsistent with billed procedure
  CO-16  Missing or invalid information on claim
  CO-97  Service or procedure covered/bundled by prior adjudication
  PR-1   Patient deductible/copay (responsibility shift, not denial)
Denial Reason Code Distribution: top 5 codes ranked by volume and by dollar impact this period

COLLECTIONS EFFICIENCY
Collections Ratio:      Cash Collected / Net Charges (target ≥95%)
Adjusted Collections:   Cash / (Gross Charges − Contractual Adjustments) — most accurate efficiency measure
Write-Off Tracking:     Contractual write-offs (expected per payer contract) tracked separately from bad debt
Bad Debt Analysis:      Bad debt write-offs as % of gross charges (healthcare MSO benchmark: <2%)
Net Collection Rate:    [(Payments + Write-offs) / (Charges − Contractual Adjustments)] × 100

DENIAL PATTERN ANALYSIS
Top Denial Categories (rank by both volume and dollar impact):
  1. Eligibility / authorization failures (front-end)
  2. Coding errors — CPT/ICD-10 mismatch or bundling (mid-cycle)
  3. Timely filing limit exceeded (back-end process failure)
  4. Duplicate claim submission (workflow control failure)
  5. Medical necessity not established (documentation gap)
Payer-Specific Patterns: identify if one payer class drives disproportionate denial volume
Root Cause Tier Tags:    Front-end (eligibility, auth) | Mid-cycle (coding, documentation) | Back-end (billing/follow-up)
Action Assignment:       Each top denial category must be assigned to a named owner at Marshall Medical Billing
                         with a remediation target date; unassigned denials are not acceptable deliverables

HIPAA BILLING COMPLIANCE
Aggregate Only:          All metrics represent populations of claims — not individual patients
Prohibited Output Fields: patient name, DOB, MRN, SSN, diagnosis code at individual level, procedure linked to patient
Coding Compliance:       CPT and ICD-10 code pairs reviewed for medical necessity alignment (aggregate pattern review)
Documentation Adequacy:  % of claims with complete supporting documentation (tracked in aggregate by claim category)
Payer Contract Adherence: fee schedule compliance reviewed quarterly; variance flagged for renegotiation consideration
BAA Status:              AdvancedMD BAA and Marshall Medical Billing BAA current status verified every cycle

ESCALATION THRESHOLDS
DSO > 45 days:           → Immediate alert to Dr. Lewis; entity CEO briefing within 48 hours; remediation plan in 5 days
Denial Rate > 8%:        → Dr. Lewis + entity CEO; Marshall Medical Billing remediation plan due within 5 business days
Clean Claim Rate < 90%:  → Dr. Lewis review; root cause memo from Marshall within 3 business days
Collections Ratio < 90%: → Dr. Lewis flag; finance reconciliation review before next cycle
Bad Debt > 3%:           → Entity CEO escalation; write-off authorization from Dr. Lewis required for any amount above threshold
Expired BAA:             → CRITICAL; immediate Dr. Lewis notification; operations review within 24 hours
```

## Output Format

```markdown
# Allevio RCM Monitor — [Month YYYY]

**Prepared by:** AI Agent (portops-allevio-rcm-monitor)
**Review Authority:** Dr. John Lewis → Allevio Entity CEO
**Data Source:** AdvancedMD + Marshall Medical Billing (aggregate only — no PHI)
**HIPAA Notice:** All data is aggregate and de-identified. No individual patient data is present in this report.

## Executive Summary
[2–3 sentences: overall RCM health, key variance vs prior month, and any escalation flags]

## DSO Performance
| Metric              | Current | Prior Month | Target  | Status |
|---------------------|---------|-------------|---------|--------|
| DSO (days)          |         |             | 35–40   |        |
| AR Current 0–30 (%) |         |             | ≥60%    |        |
| AR 30–60 (%)        |         |             | ≤20%    |        |
| AR 60–90 (%)        |         |             | ≤10%    |        |
| AR 90–120 (%)       |         |             | ≤7%     |        |
| AR 120+ (%)         |         |             | ≤3%     |        |

## Claim Performance
| Metric                   | Current | Prior Month | Target | Status |
|--------------------------|---------|-------------|--------|--------|
| Clean Claim Rate         |         |             | ≥95%   |        |
| Denial Rate              |         |             | <5%    |        |
| First-Pass Rate          |         |             | ≥95%   |        |

## Collections Efficiency
| Metric                   | Current | Prior Month | Target | Status |
|--------------------------|---------|-------------|--------|--------|
| Collections Ratio        |         |             | ≥95%   |        |
| Adjusted Collections     |         |             | ≥98%   |        |
| Bad Debt % of Charges    |         |             | <2%    |        |

## Top 5 Denial Reasons (This Period)
| Rank | CARC Code | Description | Claim Volume | Dollar Impact | Owner |
|------|-----------|-------------|-------------|---------------|-------|
| 1 | | | | | |
| 2 | | | | | |
| 3 | | | | | |
| 4 | | | | | |
| 5 | | | | | |

## Payer-Specific Flags
[Any payer class driving disproportionate denial volume — aggregate payer class only, no individual claim detail]

## HIPAA Billing Compliance
| Item | Status | Action |
|------|--------|--------|
| BAA — AdvancedMD | Current / Expiring [date] / EXPIRED | |
| BAA — Marshall Medical Billing | Current / Expiring [date] / EXPIRED | |
| HIPAA billing training — staff | [X]% current | |
| Last compliance audit | [date] — [X] open findings | |

## Escalation Flags
- [ ] DSO > 45 days
- [ ] Denial rate > 8%
- [ ] Clean claim rate < 90%
- [ ] Collections ratio < 90%
- [ ] Bad debt > 3%
- [ ] Expired BAA

## Recommended Actions
| # | Action | Owner | Due Date |
|---|--------|-------|----------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
```

## Output Contract

- All output is strictly aggregate billing data with no individual patient identifiers, claim-level detail traceable to a patient, or diagnostic information linked to any individual. This is non-negotiable under HIPAA's Minimum Necessary standard — any individual-level data appearing in an RCM report constitutes a reportable compliance incident that must be immediately escalated to Dr. Lewis as Allevio's MBL-level Security Officer. The skill must validate data inputs for PHI content before any computation begins and must refuse to process any input that contains individual patient fields, logging the attempt in the Allevio HIPAA incident register.

- DSO and denial rate thresholds are calibrated against healthcare MSO benchmarks specifically for employer-sponsored primary care models with PMPM contract structures. The 35–40 day DSO target reflects Allevio's predictable revenue model — PMPM contracts clear on a defined schedule, so a DSO above 45 days signals a collections process failure, payer dispute, or credentialing gap that will compress cash flow within 60–90 days if uncorrected. Every DSO breach must be accompanied by a root cause hypothesis and a corrective action timeline with a named owner, because presenting a number without a plan does not serve Dr. Lewis or Matt Mathison's investor-mindset decision process.

- Denial pattern analysis is the operational lever that drives clean claim rate improvement over time — tracking the top denial reason codes by both volume and dollar impact ensures that remediation effort is directed to the highest-value categories first rather than the easiest to fix. Each denial category must be tagged to a root cause tier (front-end, mid-cycle, back-end) and assigned to a named owner at Marshall Medical Billing with a remediation target date; this ownership accountability structure is what converts a reporting exercise into a cycle-over-cycle improvement program.

## System Dependencies

**Reads from:** AdvancedMD (aggregate charge data, claim status, AR aging), Marshall Medical Billing (remittance data, denial codes, EOBs — aggregate export only), Allevio Finance (revenue recognition, write-off authorization ledger), QuickBooks Allevio entity (cash AR reconciliation)
**Writes to:** SharePoint /Allevio/RCM/[YYYY]/ (monthly dashboard archive), Monday.com Allevio Ops board (escalation action items), entity CEO email (monthly brief), Dr. Lewis Security Officer log
**HITL Required:** Entity CEO reviews and approves monthly dashboard before distribution; Dr. Lewis signs off on HIPAA compliance section and any escalation flags; write-off authorizations above threshold require Dr. Lewis sign-off; any breach or PHI-in-input incident escalates to Matt Mathison within 24 hours

## Test Cases

- **Golden path:** June 2026 RCM pull — DSO 37 days, denial rate 4.2%, clean claim rate 96.1%, collections ratio 97%, bad debt 1.4%, both BAAs current — dashboard generated cleanly with no escalation flags; top 3 denial codes identified with Marshall owner names and remediation dates assigned; executive summary states healthy status.
- **Edge case:** Month with a mid-period payer contract renegotiation that changes the contractual adjustment percentage — skill must use the updated fee schedule for collections ratio denominator calculation, flag the methodology change in the report header, and note prior-period comparability caveat so Dr. Lewis and the entity CEO understand why the ratio may appear to shift without a true collections efficiency change.
- **Adversarial:** An analyst attempts to include a denial detail export with individual CPT codes linked to specific visit dates that, when combined, could be used to identify a patient in a small employer group plan context. The skill must detect the individual-linkable fields, refuse to process the input, strip and discard the PHI-risk content, log the attempt with timestamp and source in the HIPAA incident register, and notify Dr. Lewis before generating any output — even a partial output is prohibited until a compliant aggregate-only dataset is provided.

## Audit Log

Every execution of this skill is logged with timestamp, requesting user, billing period covered, data sources queried, escalation flags triggered, HITL sign-offs completed, and any PHI-in-input incidents detected. Audit records are retained per Allevio's HIPAA record retention policy (minimum 6 years from the date of the report) and are available to Dr. Lewis as Security Officer for breach investigation, OCR inquiry response, or internal compliance review. No aggregate metric output is modified or deleted post-generation without a logged amendment entry co-signed by Dr. Lewis that documents the reason, the original value, and the corrected value.

## Deprecation

This skill is deprecated when Allevio implements a direct RCM analytics platform — such as an AdvancedMD reporting module upgrade, a dedicated RCM BI layer, or a third-party RCM analytics tool — that produces equivalent DSO, denial, collections, and HIPAA compliance metrics with validated aggregate-only output accessible to MBL without PHI exposure. Before deprecation, Dr. Lewis must run a minimum 30-day parallel operation period comparing platform outputs to skill outputs and confirm parity. Allevio entity CEO and Dr. Lewis both must sign off on deprecation. The skill version history and audit log archive are retained in SharePoint indefinitely for regulatory continuity.
