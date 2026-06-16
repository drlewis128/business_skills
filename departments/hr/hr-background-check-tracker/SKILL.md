---
name: hr-background-check-tracker
description: "Manage employee background check process. Use when the user says 'background check', 'background screening', 'pre-employment screening', 'run a background check', 'background check status', 'criminal background check', 'employment verification', 'reference check vs background check', 'when does the background check clear', or 'background check on a new hire'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--candidate <name>] [--role <title>] [--level <standard|enhanced|executive>]"
---

# HR Background Check Tracker

Manage the pre-employment background check process for new hires at MBL portfolio companies — from initiation through clearance. Background checks protect the company, employees, customers, and investors. For Finance and executive roles, they are non-negotiable. For patient-facing roles at Allevio, they are legally required. The process must be compliant (FCRA, state law) and fast enough that it doesn't create unnecessary delays between offer acceptance and start date.

## When to Use
- A written offer has been accepted and the background check needs to be initiated
- A background check is in progress and status needs to be tracked
- A background check has returned a finding and a decision is needed
- Matt Mathison asks about the status of a background check for a key hire
- Allevio is onboarding a clinical or patient-facing employee (OIG excluded parties check required)

## Background Check Framework

```
Three levels of background screening:

Standard (all employees):
  - Criminal history: county, state, federal (7 years)
  - Employment verification: last 3 employers
  - Education verification (degree claimed vs. degree awarded)
  - Identity verification (SSN trace)
  - Timeline: 3-5 business days

Enhanced (Finance, operations, executive):
  - All Standard checks
  - Credit check (with candidate consent — FCRA required)
  - Professional license verification (CPA, RN, etc. if claimed)
  - Sex offender registry
  - Global watchlist / sanctions check
  - Timeline: 5-7 business days

Executive/Board-level:
  - All Enhanced checks
  - Civil court search
  - Deeper professional reference (structured call, not just verification)
  - Media/reputation search
  - Timeline: 7-10 business days

Healthcare-specific (Allevio — all patient-facing roles):
  - All Standard checks
  - OIG Excluded Parties (LEIE) — federal exclusion from Medicare/Medicaid
  - SAM.gov exclusion check
  - State professional license verification
  - Additional: DEA registration check (prescribers)
  - Timeline: 5-7 business days

FCRA compliance requirements:
  - Written disclosure: candidate must receive FCRA disclosure before check
  - Written consent: signed consent before check is run
  - Adverse action process: if a finding may disqualify the candidate —
    (1) pre-adverse action notice + copy of report, (2) 5 business day wait,
    (3) final adverse action notice if proceeding with disqualification
  - Do not run a background check without signed consent — FCRA violation
```

## Output Format

```markdown
# Background Check Tracker — <Candidate Name>
**Company:** <Entity> | **Role:** [Title]
**Check level:** [Standard / Enhanced / Executive / Healthcare]
**Initiated:** [Date] | **Provider:** [Checkr / Sterling / HireRight / other]
**Expected clear:** [Date] | **Actual clear:** [Date]

---

## Consent and Disclosure Status

| FCRA Requirement | Status | Date | Notes |
|----------------|--------|------|-------|
| FCRA disclosure provided to candidate | ✅ / 🔴 | | Required before check |
| Written consent signed | ✅ / 🔴 | | Required before check |
| Authorization submitted to provider | ✅ / 🔴 | | |

**⚠️ Do not initiate check without signed consent. This is an FCRA requirement.**

---

## Check Components and Status

| Check | Status | Clear? | Finding summary |
|-------|--------|--------|----------------|
| Criminal — county | ✅ Clear / 🟡 Pending / 🔴 Finding | | |
| Criminal — state | | | |
| Criminal — federal | | | |
| Employment verification — Employer 1 | | | |
| Employment verification — Employer 2 | | | |
| Education verification | | | |
| Identity (SSN trace) | | | |
| Credit check (Enhanced+) | ✅ / 🟡 / 🔴 | | For Finance roles |
| Professional license | | | |
| OIG/LEIE excluded parties (Allevio) | ✅ / 🔴 | | Required for all Allevio patient-facing hires |
| SAM.gov exclusion (Allevio) | | | |
| Global watchlist / sanctions | | | |

---

## Finding Assessment (if applicable)

**Finding:** [Description — type, date, jurisdiction]
**Individualized assessment required?** ✅ Yes — follow adverse action process / ❌ No — clear

Individualized assessment factors (EEOC guidance):
- Nature of the offense
- Time elapsed since offense
- Nature of the role (relevant link between offense and job duties?)
- Evidence of rehabilitation
- Age at time of offense

**Assessment decision:** Clear to hire / Adverse action process initiated / Disqualified

---

## Adverse Action Process (if finding)

| Step | Required | Status | Date |
|------|---------|--------|------|
| Pre-adverse action notice sent | ✅ Required if proceeding | | |
| Copy of background check report sent | ✅ Required | | |
| 5-business-day waiting period | ✅ Must wait | Start: | End: |
| Candidate response received | — | | |
| Final adverse action notice sent | ✅ If disqualifying | | |

**Note:** Never communicate a disqualification decision to the candidate without completing the adverse action process. This is an FCRA requirement with significant legal exposure.

---

## Clearance Decision

**Background check status:** ✅ Clear to start / 🔴 Adverse action initiated / ⚠️ Conditional — Dr. Lewis review

**Start date confirmed:** [Date] — background check cleared ✅

---

## Matt Mathison Update (if finding on executive hire)
Background check finding on [Candidate] for [Role]: [Finding summary in 1 sentence]. Assessment: [Clear / Adverse action / Conditional]. Recommended action: [1 sentence]. Decision needed from Matt Mathison: [Yes — approval required / No — clear to proceed].
```

## Output Contract
- Consent before check — always; this is a legal requirement under FCRA, not a preference; running a background check without written consent is an FCRA violation that creates legal exposure for the company; the consent must be obtained before the check is run, not after; if a candidate refuses to consent, that is their right, but it also means the offer cannot be completed
- Allevio OIG/LEIE check is non-negotiable — healthcare companies that employ or contract with OIG-excluded parties risk Medicare/Medicaid exclusion and CMS sanctions; every patient-facing hire at Allevio must clear the OIG LEIE exclusion check before their start date; this check is fast (same day on the LEIE database) but must be documented
- Individualized assessment before adverse action — a criminal record does not automatically disqualify a candidate; EEOC guidance requires individualized assessment that considers the nature of the offense, its relevance to the job, and time elapsed; a 15-year-old misdemeanor is different from a recent financial fraud conviction for a Finance role; Dr. Lewis documents the assessment before the adverse action process begins
- Five-day wait on adverse action — the FCRA requires a minimum waiting period after sending the pre-adverse action notice, giving the candidate time to dispute the findings; do not issue the final adverse action notice before the waiting period ends; candidates occasionally find errors in background check reports (wrong person, expunged records) that resolve with the waiting period
- HITL required: Dr. Lewis initiates and tracks all background checks; findings that may be disqualifying require Dr. Lewis's individualized assessment before adverse action; executive-level findings require Matt Mathison awareness; Allevio OIG findings are automatic disqualifiers with no exception; start date is not confirmed until background check is clear

## System Dependencies
- **Reads from:** Candidate consent form, background check provider results (Checkr, Sterling, HireRight), OIG LEIE database (for Allevio), SAM.gov (for Allevio)
- **Writes to:** Background check tracker (SharePoint/HR/<Company>/Employees/<Name>/); clearance confirmation in offer file; adverse action notices (if applicable)
- **HITL Required:** Dr. Lewis initiates, tracks, and assesses findings; Matt Mathison notified of executive-level findings; Allevio OIG findings are automatic disqualifiers; no start date without clearance

## Test Cases
1. **Golden path:** Allevio clinical coordinator hire — Enhanced + Healthcare level → FCRA disclosure and consent signed Day 1 (day of verbal acceptance); check initiated with Sterling same day; Standard: criminal clear (Day 3), employment verification confirmed (Day 4), education: degree confirmed (Day 4); Healthcare-specific: OIG LEIE clear (Day 1 — same day database), SAM.gov clear (Day 1), AZ state license verified (Day 3); all clear Day 4; start date confirmed; clearance documented in employee file
2. **Edge case:** A background check reveals a DUI from 8 years ago for a candidate being hired as a non-driving office manager → individualized assessment: DUI 8 years ago; role has no driving requirement; no pattern (single offense); candidate was transparent when asked about background in interview; assessment: offense is not related to the duties of an office manager; 8 years elapsed; candidate disclosed it proactively; Clear to hire; document assessment with specific reasoning; do not initiate adverse action
3. **Adversarial:** A CEO says "just skip the background check — I know this person personally and trust them" → this is a legal compliance matter, not a trust question; for Allevio patient-facing roles, it's also a healthcare regulatory matter; respond: "I understand you trust them, and I expect the check will confirm what you already know. For patient-facing roles, the OIG check is a regulatory requirement — if we skip it and they're on the exclusion list, Allevio faces potential Medicare/Medicaid sanctions. For any role, we also have a duty of care to other employees. The check is 5 days and doesn't change your hire — let me initiate it now."

## Audit Log
All background checks retained by candidate and date. Consent forms retained permanently. Check results retained. Finding assessments with individualized assessment documentation retained. Adverse action notices retained. OIG/SAM checks for Allevio retained. Clearance confirmations retained permanently in employee file.

## Deprecation
Retire when each portfolio company (especially Allevio) has a dedicated HR function with automated background check initiation integrated into the onboarding workflow, and standing relationships with a screening provider that doesn't require Dr. Lewis's manual oversight for each check.
