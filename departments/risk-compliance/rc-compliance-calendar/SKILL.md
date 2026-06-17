---
name: rc-compliance-calendar
description: "Manage the regulatory compliance calendar — all filings, deadlines, and renewals across the portfolio. Use when the user says 'compliance calendar', 'compliance deadlines', 'regulatory filings', 'compliance due dates', 'what's due this month', 'compliance schedule', '90-day compliance lookahead', 'upcoming compliance deadlines', 'regulatory calendar', 'filing deadlines', 'license renewal calendar', 'HIPAA deadlines', 'OSHA deadlines', 'tax filings', 'compliance dates', or 'what do we need to file'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name|all>] [--period <month|quarter|year>] [--action <review|update|alert>]"
---

# Compliance Calendar Manager

Manage the regulatory compliance calendar for MBL portfolio companies — tracking all filings, deadlines, license renewals, and compliance activities across the portfolio on a 90-day rolling basis. Compliance deadlines missed are not administrative inconveniences — they are regulatory violations with fines, penalties, and operational consequences; a missed OSHA 300A posting deadline is a citation, a missed license renewal is a loss of authorization to operate, and a missed HIPAA breach notification deadline is a regulatory violation. The compliance calendar is the system that ensures deadlines are tracked, responsibilities are assigned, and nothing falls through the cracks.

## When to Use
- Monthly compliance calendar review — what's due in the next 90 days?
- A new compliance obligation is identified — add it to the calendar
- A deadline is approaching and ownership needs to be confirmed
- CEO or Matt Mathison asks "what's on our compliance plate right now?"
- Annual planning — what is the full year compliance calendar?
- A new portfolio company is added — what deadlines need to be tracked?

## Compliance Calendar Framework

```
Recurring compliance deadlines (master calendar):

JANUARY:
  → January 1: AZ minimum wage effective (update payroll; confirm)
  → January 1: CO minimum wage effective (if CO employees)
  → January 15: Q4 estimated tax payments (federal; state)
  → January 31: W-2s to employees (payroll)
  → January 31: 1099-NEC to vendors (accounting)

FEBRUARY:
  → February 1: OSHA 300A Summary posting begins (all worksites; all entities)
  → February 15: ACA Form 1095-B/C to employees (if ALE — ≥50 FTE)
  → February 28 / March 31: 1099 electronic filing to IRS

MARCH:
  → March 15: Partnership/S-Corp federal tax returns (Form 1065/1120-S) or extension
  → March 15: K-1s to partners/members (or extension)
  → March 31: ACA Form 1094-C/1095-C to IRS (if ALE)
  → March 31: Colorado FAMLI Q1 report (if CO employees)
  → Annual: HIPAA Security Rule evaluation/risk analysis update (Allevio — timing varies; annual requirement)

APRIL:
  → April 15: Individual tax returns
  → April 30: OSHA 300A posting period ends (remove posting)
  → April 30: Q1 941 payroll tax return due
  → April 30: HIVE Partners — UT DOGM production report (if required monthly or quarterly)

MAY-JUNE:
  → May 31: Annual renewal check — AZ business licenses; Allevio AZ DHS facility license; professional licenses due in summer cycle
  → June 15: Q2 estimated tax payments (federal; state)
  → June: HIPAA privacy and security policy review (Allevio — good practice to align with mid-year)

JULY:
  → July 31: Q2 941 payroll tax return
  → July 31: Colorado FAMLI Q2 report (if CO employees)

AUGUST-SEPTEMBER:
  → August-September: EEO-1 filing season opens (if ≥100 employees or federal contractor) — confirm threshold
  → September 15: Q3 estimated tax payments (federal; state)
  → September 15: Partnership/S-Corp extended tax returns due (if extension filed)

OCTOBER:
  → October: EEO-1 filing deadline (confirm with EEOC; dates vary)
  → October 31: Q3 941 payroll tax return
  → October 31: Colorado FAMLI Q3 report

NOVEMBER:
  → November: OIG LEIE annual check — all Allevio clinical staff (CRITICAL; schedule before year-end)
  → November 15: CMS Physician Fee Schedule final rule published (impact analysis for Allevio)
  → Ongoing: License renewal planning for Q1 expiring licenses (90-day lead time)

DECEMBER:
  → December 15: ACA open enrollment (if applicable)
  → December 31: Colorado FAMLI Q4 report
  → December 31: Year-end financial close; audit preparation
  → Rolling: Annual audit plan for next year — build by December 31 (rc-audit-plan-builder)

ONGOING (monthly):
  → Monthly financial statements to Matt Mathison by 10th of following month
  → Monthly bank reconciliations
  → Monthly KRI review (rc-key-risk-indicator)
  → Payroll tax deposits (per payroll frequency)
  → Arizona new hire E-Verify (within 3 business days of hire)
  → Arizona new hire reporting to DES (within 20 days)
  
ONGOING (quarterly):
  → Debt covenant compliance testing (per lender agreement)
  → LP/investor reporting (per operating agreement)
  → User access review (Entra ID; QuickBooks; AdvancedMD)
  → Internal audit progress report to CEO and Matt Mathison
```

## Output Format

```markdown
# Compliance Calendar — <Entity or Portfolio> — [Month/Quarter/Year]
**Maintained by:** Dr. John Lewis | **Date:** [Date]
**90-Day Lookahead Window:** [Start date] → [End date]

---

## Critical / Overdue Items

| Deadline | Item | Entity | Owner | Status | Days remaining / overdue |
|---------|------|--------|-------|--------|------------------------|
| [Date] | OIG LEIE annual check — all clinical staff | Allevio | Dr. Lewis | Not started | [N] days remaining |
| [Date] | OSHA 300A posting | All entities | Dr. Lewis / CEO | ✅ Posted [Date] | Complete |
| [Date] | Q[N] 941 payroll return | MBL Holdings | Controller | ✅ Filed | Complete |

---

## 90-Day Compliance Lookahead

| Due date | Item | Entity | Responsible | Action required | Status |
|---------|------|--------|-----------|----------------|--------|
| [30 days] | Q[N] estimated tax payment | All entities | Controller | File with IRS and AZ | Not started |
| [35 days] | UT DOGM quarterly production report | HIVE | HIVE Ops | Submit to DOGM portal | In progress |
| [45 days] | AZ DHS facility license renewal — Allevio clinic | Allevio | Dr. Lewis | 120-day lead; file by [Date] | ✅ Submitted [Date] |
| [60 days] | LP Q[N] financial report | All portfolio | Dr. Lewis + Matt Mathison | Prepare financials; CEO review | Not started |
| [90 days] | Annual HIPAA risk analysis update | Allevio | Dr. Lewis | Schedule audit | Not started |

---

## Annual Calendar Summary (Full Year)

| Month | Key deadlines | Entities |
|-------|-------------|---------|
| January | W-2s; 1099s; Wage update | All |
| February | OSHA 300A posting begins | All |
| March | Tax returns (or extension); ACA | All |
| April | OSHA posting ends; Q1 941; Estimated tax | All |
| May-June | License renewals (summer cycle) | Allevio; entities |
| July | Q2 941; CO FAMLI | |
| September | Q3 tax estimates; Extended returns | |
| October | EEO-1 (if applicable); Q3 941 | |
| November | OIG LEIE annual; CMS PFS analysis | Allevio |
| December | Year-end close; Audit plan; Renewal planning | All |

---

## Compliance Calendar Exceptions and Alerts

**Overdue items:** [N — list]
**Items due within 7 days:** [List]
**Items requiring CEO decision:** [List]
**Items requiring Matt Mathison input:** [List]

---

## Matt Mathison Monthly Compliance Snapshot

[Month] compliance status: [N] items due this month ([N] complete; [N] pending; [N] overdue). Key items: [Most significant upcoming or overdue]. No action required / Action required: [What Matt Mathison needs to decide or know].
```

## Output Contract
- The compliance calendar is proactive, not reactive — deadlines are tracked 90 days in advance; lead times are built in (professional licenses need 90 days; facility licenses need 120 days; CMS PFS impacts need 2 weeks to quantify); Dr. Lewis identifies upcoming deadlines before they become urgent; a deadline that appears in the compliance calendar with 7 days remaining has failed the 90-day standard; the purpose of 90-day tracking is to have sufficient lead time that every deadline is met without crisis
- OIG LEIE annual check at Allevio is the single highest-consequence recurring compliance deadline in the portfolio — a Medicare/Medicaid excluded person working at Allevio creates recoupment liability from the date of first exclusion; the annual check must be done for every clinical staff member; Dr. Lewis schedules this in November (before year-end) with enough time to act if an exclusion is found; "we'll do it next quarter" is not acceptable; the check is done, documented, and confirmed
- The compliance calendar is the authoritative source — if a deadline is not in the compliance calendar, Dr. Lewis treats it as not tracked; when a new compliance obligation is identified (new regulation, new state, new license), it is added to the calendar within 24 hours with the deadline, responsible party, and lead time; Dr. Lewis reviews the calendar weekly; the CEO reviews the calendar monthly; Matt Mathison receives a monthly compliance snapshot
- HITL required: Dr. Lewis manages and updates the calendar; CEO is notified 30 days before any high-consequence deadline (HIPAA, OIG, license renewal, LP reporting); Matt Mathison receives monthly compliance snapshot; Dr. Lewis escalates any overdue item to CEO immediately; attorney for deadline questions involving regulatory filings and for missed HIPAA breach notification deadlines

## System Dependencies
- **Reads from:** All regulatory filing requirements (OSHA, IRS, EEOC, HHS, AZ DHS, UT DOGM, CO FAMLI), license tracker (rc-licensing-tracker), regulatory change monitor (rc-regulatory-change-monitor), LP/investor agreements (reporting obligations), debt agreements (covenant testing), HIPAA compliance program (rc-hipaa-security-program)
- **Writes to:** Compliance calendar (SharePoint/RC/Portfolio/ComplianceCalendar/); monthly CEO compliance summary; Matt Mathison monthly snapshot; 90-day lookahead report; filing confirmation log
- **HITL Required:** Dr. Lewis manages; CEO notified 30 days before high-consequence deadlines; Matt Mathison monthly snapshot; overdue items: CEO immediately; attorney for missed HIPAA notification deadlines and regulatory filing questions

## Test Cases
1. **Golden path:** Monthly compliance calendar review — October → 90-day lookahead from October 1: October 31 — Q3 941 payroll return (Controller; submitted October 28 ✅); October — EEO-1 filing: Allevio has 18 employees (below 100-employee threshold; not applicable); November 15 — OIG LEIE annual check due (Allevio; Dr. Lewis; 45 days out; schedule this week); November 15 — CMS PFS final rule published (Dr. Lewis; 2-week quantification window; impact analysis for Allevio billing rates); December 31 — next year audit plan (Dr. Lewis; begin November 1); LP Q3 report due November 15 (Controller + Dr. Lewis; drafting begins October 15); October compliance snapshot sent to Matt Mathison; CEO reviewed; no overdue items
2. **Edge case:** A new Colorado employee is hired — what deadlines does this add? → Immediately add to compliance calendar: CO FAMLI (paid leave insurance) employer enrollment (register with FAMLI before first CO payroll); CO minimum wage verification ($14.42/hr); CO new hire reporting to CO DOR within 20 days of hire; CO EPEWA (Equal Pay for Equal Work Act) — ensure job posting includes pay range; CO FAMLI quarterly reports (Q1: April 30; Q2: July 31; Q3: October 31; Q4: January 31 next year); CO non-compete review for any new CO employment agreements; all added to compliance calendar with lead times; Controller and Dr. Lewis assigned; CEO notified of new state obligations
3. **Adversarial:** "We don't need a compliance calendar — we'll know when things are due" → A compliance calendar tracks 50+ annual deadlines across 4 portfolio companies in 3+ states; the assumption that this can be managed by memory or by reacting to due dates as they arrive is the basis of missed deadlines; the most commonly missed deadlines are: OIG LEIE annual check (no external reminder — must be self-initiated); OSHA 300A posting period (February 1 — April 30; easy to forget); license renewals (120-day lead time; renewal notice from state may not arrive); LP reporting (contractual; no external reminder); the compliance calendar is the system that turns reactive compliance into proactive compliance

## Audit Log
Compliance calendar maintained with version history. Filing confirmations retained (e.g., OSHA 300A photo; 941 filing receipt; license renewal confirmation). Overdue item escalation records retained. Monthly CEO and Matt Mathison compliance summaries retained. Annual compliance calendar retained for 7 years.

## Deprecation
Retire when portfolio companies have dedicated compliance functions managing entity-specific compliance calendars — with Dr. Lewis maintaining the portfolio-level calendar for cross-entity obligations (OIG LEIE, HIPAA, LP reporting) and receiving confirmation from each entity's compliance function that deadlines are being met.
