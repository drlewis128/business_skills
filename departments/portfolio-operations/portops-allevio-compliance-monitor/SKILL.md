---
name: portops-allevio-compliance-monitor
description: "allevio compliance monitor, HIPAA compliance dashboard, OIG exclusion list screening, clinical licensure tracking, BAA register, business associate agreement status, compliance training completion, state regulatory filings, MSO licensure, Dr Lewis security officer, HIPAA audit readiness, OIG LEIE monthly check, licensure expiration alert, BAA expiration tracking, HIPAA risk assessment, breach notification tracking, compliance calendar, HIPAA Privacy Rule, HIPAA Security Rule, monthly compliance dashboard"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "reporting month (e.g. 'June 2026'), or compliance area ('HIPAA/OIG/licensure/BAA/training/regulatory')"
---

# Allevio Compliance Monitor

Monitors Allevio's full regulatory and compliance posture — HIPAA Privacy and Security Rules, OIG exclusion list screening, professional licensure currency, BAA register integrity, compliance training completion, and state regulatory filings — with Dr. Lewis serving as the MBL-level Security/Compliance Officer. Produces a monthly compliance dashboard for the Allevio entity CEO and Dr. Lewis with all escalation flags routed through the standard HITL chain.

## When to Use

- Monthly compliance dashboard for Allevio entity CEO and Dr. Lewis sign-off as Security Officer
- BAA gap, expiration, or missing agreement identified requiring immediate corrective action
- Pre-OCR audit or state regulatory examination preparation
- OIG exclusion screening cycle execution (monthly minimum for patient-facing staff)
- HIPAA incident or potential breach discovery requiring 60-day clock tracking
- Annual HIPAA Security Risk Assessment status review

## Allevio Compliance Monitor Framework

```
HIPAA COMPLIANCE STATUS
Overall HIPAA Posture: [🟢 Compliant / 🟡 Gaps Identified / 🔴 Breach or Active Violation]
Security/Compliance Officer (MBL level): Dr. John Lewis
Entity Privacy Officer: [Allevio-designated contact — name and title]
Last Security Risk Assessment: [date] | Required frequency: Annual | Status: [current/overdue]
Next required SRA due: [date]

HIPAA PRIVACY RULE
Notice of Privacy Practices (NPP): [current — date / outdated — action required]
Patient rights request response SLA (30-day requirement):
  Requests received this period: [X] | Responded within SLA: [X] | Overdue: [X]
Minimum necessary standard training: [current / gap — details]
Privacy complaints received this period: [X] | Resolved: [X] | Open: [X] | Avg resolution days: [X]
Breach and incident log:
  Open incidents under investigation: [X]
  Confirmed reportable breaches (HITECH 60-day clock):
    Incident ID | Discovery Date | Day [X] of 60 | Notification Status
    [ID-001]    | [date]         | Day [X]        | [filed/pending/OVERDUE]
  Note: Any confirmed reportable breach at Day 55+ without filed notification → CRITICAL escalation

HIPAA SECURITY RULE
Security Risk Assessment status: [current — date / OVERDUE — action required]
Security policies last reviewed: [date] | Required review frequency: Annual | Next due: [date]
Access control audit (user access review): [date] | Unauthorized access incidents: [X] | Resolved: [X]
ePHI encryption status:
  AdvancedMD (EHR/PM):         [encrypted / gap: description]
  Marshall Medical Billing:    [encrypted in transit + at rest / gap]
  Email / communication tools: [encrypted / gap]
  Mobile devices with PHI:     [MDM enrolled + encrypted / gap]
Workforce security training completion: [X]% | Target: 100% | Overdue staff: [X]
Automatic logoff policy: [enforced / gap]
Audit log / access monitoring: [active / gap — system(s) lacking]

OIG EXCLUSION LIST MONITORING
Screening date this cycle: [date] | Method: OIG LEIE + SAM.gov
Patient-facing staff screened: [X] of [X] total patient-facing | Coverage: [X]%
Non-clinical staff/contractors screened: [X] (quarterly minimum)
Exclusions found: [X] | Action taken: [description, or NONE]
Alert: Any screening gap extending beyond 35 days from last check = compliance risk requiring entity CEO attention
Next screening due: [date]
Vendor/contractor OIG screening cadence: [current / gap]

BAA REGISTER
Total active Business Associate Agreements: [X]
Status Summary:
  Current (valid, not expiring soon): [X]
  Expiring within 90 days: [X]
    Vendor/Service Class | BAA Type | Expiration Date | Renewal Owner | Renewal Status
    AdvancedMD (EHR/PM)  | [type]   | [date]          | [owner]       | [status]
    Marshall Medical Billing | [type] | [date]         | [owner]       | [status]
    [Other vendor]        | [type]   | [date]          | [owner]       | [status]
  Expired BAAs: [X] — CRITICAL if any; list vendor and PHI scope; escalate to Dr. Lewis same day
  Missing BAAs (vendors with PHI access but no BAA on file): [X] — list vendor/service
BAA register last full audit: [date] | Next audit: [date] (recommended: semi-annual minimum)
Note: Any expired or missing BAA means Allevio is operating outside HIPAA BA requirements —
      OCR civil monetary penalties can exceed $1.9M per violation category per year under HITECH

CLINICAL LICENSURE TRACKING
State medical licenses expiring within 90 days: [X] | License type(s): [physician, NP, PA, etc. — no names]
DEA / Controlled Substance Registration expiring within 90 days: [X]
Nursing licenses (RN, LPN) expiring within 90 days: [X]
CLIA laboratory certification: [current — date / expiring / lapsed]
Facility / clinic operating license: [current — date / expiring / lapsed]
Malpractice / professional liability coverage: [current / gap] | Policy period: [date range]
Credentialing with payers: [current / pending / lapsed — payer class]
90-day advance alert ensures renewal initiated before expiration — lapsed license = immediate removal from patient care

COMPLIANCE TRAINING
HIPAA annual training completion: [X]% of total staff | Target: 100% | Overdue: [X] staff
Security awareness training: [X]% | Target: 100%
New hire compliance onboarding (within 30 days of hire): [X]% | Completed on time: [X] of [X] new hires
Role-specific training (clinical staff, billing staff): [X]% | Target: 100%
Training records retention: [current / gap] | Required: 6 years per HIPAA

STATE REGULATORY FILINGS
State | Filing Type | Due Date | Filed Date | Status
[UT]  | MSO Annual Registration | [date] | [date] | [filed/pending/overdue]
[UT]  | State Health Dept. Report | [date] | [date] | [filed/pending/overdue]
[AZ]  | [applicable filing] | [date] | [date] | [filed/pending/overdue]
[Other] | [applicable filing] | [date] | [date] | [filed/pending/overdue]
Overdue filings → 🔴 escalation; fines accumulate daily in most jurisdictions

DR. LEWIS SECURITY/COMPLIANCE OFFICER ROLE
Oversight Responsibilities:
  - Monthly review and sign-off on Allevio compliance dashboard as MBL Security Officer
  - Attestation that HIPAA compliance posture is acceptable for MBL portfolio oversight standards
  - Authorization for any HIPAA breach notification filings before submission to OCR
  - Approval for BAA renewals with new or modified PHI scope
  - Quarterly review of HIPAA incident register for pattern analysis and systemic risk
  - Annual sign-off on Security Risk Assessment completion
HITL Chain: Dr. Lewis → Entity CEO → Matt Mathison (notified on any 🔴 finding within 24 hours)
Dr. Lewis Action Items This Cycle: [listed in output below]
```

## Output Format

```markdown
# Allevio Compliance Monitor — [Month YYYY]

**Prepared by:** AI Agent (portops-allevio-compliance-monitor)
**Security/Compliance Officer (MBL):** Dr. John Lewis
**Entity Privacy Officer:** [Name, Title]
**Overall Status:** [🟢 Compliant / 🟡 Gaps Identified / 🔴 Breach or Active Violation]

## Executive Summary
[2–3 sentences: overall compliance posture, top escalation flag if any, Dr. Lewis action required]

## HIPAA Privacy Rule
| Item | Status | Action Required |
|------|--------|-----------------|
| NPP currency | | |
| Patient rights SLA compliance | [X] of [X] within SLA | |
| Open privacy complaints | [X] | |
| Reportable breach incidents | [X] | |

## HIPAA Security Rule
| Item | Status | Action Required |
|------|--------|-----------------|
| Security Risk Assessment | [Current / OVERDUE] | |
| ePHI encryption (all systems) | [Complete / Gaps] | |
| Workforce security training % | [X]% | |
| Access control audit | [date] | |
| Unauthorized access incidents | [X] | |

## OIG Exclusion Screening
| Item | Detail |
|------|--------|
| Last screening date | [date] |
| Patient-facing staff covered | [X] of [X] ([X]%) |
| Exclusions found | [X] |
| Next screening due | [date] |

## BAA Register
| Status | Count | Notes |
|--------|-------|-------|
| Current | [X] | |
| Expiring within 90 days | [X] | [vendor classes and dates] |
| **EXPIRED** | **[X]** | **CRITICAL — list here** |
| Missing (PHI access, no BAA) | [X] | CRITICAL — list here |

## Clinical Licensure
| License Type | Expiring ≤90 Days | Action |
|-------------|-------------------|--------|
| State medical licenses | [X] | |
| DEA/CDS certificates | [X] | |
| RN/nursing licenses | [X] | |
| CLIA certification | [status] | |
| Malpractice coverage | [status] | |

## Compliance Training
| Training Type | Completion % | Overdue Staff | Due Date |
|---------------|-------------|---------------|----------|
| HIPAA annual | [X]% | [X] | |
| Security awareness | [X]% | [X] | |
| New hire onboarding | [X]% | [X] | |

## State Regulatory Filings
| State | Filing | Due | Status |
|-------|--------|-----|--------|
| | | | |

## Escalation Flags — 🔴 Critical Items
[Bulleted list of critical items with immediate action steps and named owner, or "None — fully compliant"]

## Dr. Lewis Action Items (Security Officer)
1. [Item requiring Dr. Lewis sign-off, attestation, or action]
2.
3.
[Or: "Sign-off required on compliant monthly dashboard — no additional actions"]
```

## Output Contract

- BAA register gaps are classified as 🔴 Critical automatically because operating without a valid Business Associate Agreement with any vendor that handles PHI exposes Allevio and MBL Partners to OCR civil monetary sanctions and potential criminal referral under HITECH. Penalties are assessed per violation per year and can exceed $1.9M per violation category — a single expired BAA with AdvancedMD or Marshall Medical Billing during a period of active claims processing represents a significant legal and financial exposure. There is no acceptable grace period; corrective action must begin the same business day the gap is identified, Dr. Lewis must be notified immediately, and the escalation must be logged in the HIPAA incident register regardless of how quickly the BAA is subsequently renewed.

- OIG exclusion screening is a monthly non-negotiable for patient-facing staff because employing or contracting with an OIG-excluded individual during any period of federal health program claim submission disqualifies Allevio from Medicare, Medicaid, and other federal program participation for that period — an existential event for an MSO whose employer clients may include federal program beneficiaries or whose billing involves any federal program coding. This skill tracks the last screening date and flags any gap exceeding 35 days (a 5-day buffer on the 30-day calendar cycle) as a compliance risk requiring entity CEO attention and same-day remediation scheduling. Vendor and contractor screening must occur at minimum quarterly and must be logged separately from employee screening.

- HIPAA breach notification timelines are enforced with zero tolerance because the 60-day notification clock under HITECH runs from the date of discovery — not the date of breach — and missing the notification deadline is an independent HIPAA violation separate from the underlying breach, carrying its own civil monetary penalty exposure. Any confirmed reportable breach at day 55 or beyond without a filed notification plan must generate an immediate emergency escalation to Dr. Lewis and Matt Mathison, including a step-by-step OCR notification checklist with a deadline of day 60. Dr. Lewis must authorize all breach notification filings before submission to OCR.

## System Dependencies

**Reads from:** OIG LEIE database (public, monthly pull), SAM.gov (public, monthly pull), Allevio compliance management system (BAA register, training records, incident log), state licensing board portals (public), AdvancedMD (BAA integration confirmation), QuickBooks Allevio (vendor payment records for BAA cross-reference), sec-allevio-security-monitor skill (feeds HIPAA Security Rule status)
**Writes to:** SharePoint /Allevio/Compliance/[YYYY]/ (monthly dashboard archive), Monday.com compliance calendar board, entity CEO email (monthly dashboard brief), Dr. Lewis Security Officer sign-off log, Allevio HIPAA incident register (any PHI incidents or breach notifications)
**HITL Required:** Dr. Lewis reviews and signs monthly dashboard as Security Officer before distribution; any 🔴 item escalates to Matt Mathison within 24 hours; OIG exclusion finding requires entity CEO same-day action; any breach notification requires Dr. Lewis authorization before OCR filing; expired BAA requires Dr. Lewis and entity CEO joint action within the same business day

## Test Cases

- **Golden path:** June 2026 — all BAAs current, OIG screening completed on day 28 with zero exclusions found, 99% HIPAA training completion, no open breaches, SRA completed 3 months ago and current, all state filings current — clean dashboard generated with Dr. Lewis sign-off action as sole item; escalation flags section reads "None — fully compliant."
- **Edge case:** One BAA expiring in 38 days (within 90-day alert window) — skill generates a renewal action item with vendor class, BAA type, expiration date, renewal owner, and a target completion date of 14 days before expiration; entity CEO is listed as action owner; Dr. Lewis is listed for sign-off on the renewed BAA before execution.
- **Adversarial:** A confirmed reportable HIPAA breach is at day 54 of the 60-day notification clock with no notification plan on file. Skill generates an immediate 🔴 emergency escalation to Dr. Lewis and Matt Mathison with: exact days remaining (6), OCR notification submission steps in numbered order, required elements of the breach notice (nature of PHI exposed, individuals affected, description of breach), and a warning that missing the deadline is an independent HIPAA violation. Skill also generates a draft breach notification checklist for Dr. Lewis to review and authorize.

## Audit Log

Monthly compliance dashboards are archived in SharePoint /Allevio/Compliance/ with Dr. Lewis sign-off timestamp confirming Security Officer review and attestation. The HIPAA breach incident log is maintained as an append-only register with fields for: incident ID, discovery date, 60-day clock count, notification status, OCR submission confirmation, and post-incident remediation action. OIG screening logs are retained for 6 years per HIPAA record retention requirements. BAA expiration and renewal actions are tracked with outcome dates and successor BAA document references for regulatory examination readiness and OCR audit response capability.

## Deprecation

Retire when Allevio deploys a dedicated compliance management platform (e.g., Compliancy Group, Accountable HQ, Jotform Compliance) with automated HIPAA and OIG monitoring, BAA lifecycle tracking, licensure alerts, and compliance training reporting accessible to MBL oversight — validated as producing equivalent or superior monitoring outputs. The replacement skill routes Dr. Lewis Security Officer sign-off through the standard HITL chain using the platform's compliance attestation workflow. Retirement requires Dr. Lewis approval and a minimum 60-day parallel operation period with side-by-side output comparison before the legacy skill is decommissioned. All historical audit records in the SharePoint archive are retained indefinitely regardless of skill deprecation.
