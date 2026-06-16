---
name: tax-filing-tracker
description: "Track tax filing deadlines and compliance calendar. Use when the user says 'tax deadlines', 'tax filing calendar', 'when are taxes due', 'tax compliance', 'estimated taxes', 'quarterly taxes', 'tax calendar', 'payroll taxes', 'sales tax filing', '1099 deadline', 'W-2 deadline', 'corporate tax return', or 'tax filing tracker'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--year <YYYY>] [--filter <federal|state|payroll|all>]"
---

# Tax Filing Tracker

Track all tax filing deadlines for MBL portfolio companies — federal, state, payroll, and information returns. Missing a tax deadline results in penalties, interest, and sometimes more serious compliance consequences. The tax calendar is complex because there are multiple filings per year, multiple entities, and multiple tax types. This skill maintains the full compliance calendar and surfaces upcoming deadlines before they become problems.

## When to Use
- Beginning of the year — establish the full tax filing calendar
- Quarterly — check which filings are coming up in the next 60-90 days
- Matt Mathison asks "what tax filings do we have coming up?"
- A new portfolio company is added — establish its tax filing obligations
- A state nexus question arises — does a new market create new filing obligations?

## Standard MBL Tax Calendar

```
Federal Tax Deadlines (Calendar Year):

January:
  Jan 15: Q4 estimated tax payment (prior year)
  Jan 31: W-2s distributed to employees (Form W-2)
  Jan 31: 1099-NEC issued to contractors >$600 (new vendors/contractors)
  Jan 31: 941 quarterly payroll tax deposit summary (Q4)

March:
  Mar 15: Partnership/S-Corp returns due (Form 1065/1120-S) — or file extension
  Mar 15: K-1s distributed to partners/shareholders

April:
  Apr 15: Individual tax returns due (Form 1040) — or file extension
  Apr 15: Corporate returns (C-Corp/1120) — or file extension
  Apr 15: Q1 estimated tax payment
  Apr 30: 941 quarterly payroll summary (Q1)

June:
  Jun 15: Q2 estimated tax payment

July:
  Jul 31: 941 quarterly payroll summary (Q2)

September:
  Sep 15: Q3 estimated tax payment
  Sep 15: Extended partnership/S-Corp returns due (if extended in March)

October:
  Oct 15: Extended individual and C-Corp returns due (if extended in April)
  Oct 31: 941 quarterly payroll summary (Q3)

December:
  Dec 31: Year-end tax planning window closes

Payroll tax deposits:
  Semi-weekly or monthly: Depends on lookback period liability
  Federal unemployment (FUTA): Quarterly if liability >$500
```

## Output Format

```markdown
# Tax Filing Calendar — <Company Name / All MBL Entities>
**Year:** <YYYY>
**Prepared by:** Dr. John Lewis | **CPA partner:** <CPA firm and contact>
**Last updated:** <Date>

---

## Upcoming Deadlines (Next 90 Days)

| Due date | Filing | Form | Entity | Status | Owner | Notes |
|---------|--------|------|--------|--------|-------|-------|
| [Date] | [Q[N] Estimated Tax] | [1040-ES / 1120-W] | [Entity] | 🔴 Due soon / ✅ Filed / 🟡 In progress | Dr. Lewis / CPA | Payment: $[X] |
| [Date] | [Payroll tax deposit] | [941] | [Entity] | | | |
| [Date] | [Partnership return] | [1065] | [HIVE Partners] | | | |

---

## Full Annual Filing Calendar — <Entity>

| Month | Filing | Due date | Status | Amount due | Notes |
|-------|--------|---------|--------|-----------|-------|
| **January** | | | | | |
| Jan 15 | Q4 Estimated Tax | Jan 15, [YYYY] | ✅ Filed $[X] / 🔴 Due | $[X] | |
| Jan 31 | W-2s to employees | Jan 31 | ✅ / 🔴 | — | [N] employees |
| Jan 31 | 1099-NEC to contractors | Jan 31 | ✅ / 🔴 | — | [N] contractors |
| Jan 31 | 941 Q4 summary | Jan 31 | ✅ / 🔴 | $[X] | |
| **March** | | | | | |
| Mar 15 | Partnership return (1065) / K-1s | Mar 15 | ✅ / 🔴 / Extension filed | — | HIVE + any partnerships |
| Mar 15 | S-Corp return (1120-S) | Mar 15 | | — | |
| **April** | | | | | |
| Apr 15 | Individual returns (1040) | Apr 15 | ✅ / Extension | — | Matt Mathison + Dr. Lewis |
| Apr 15 | C-Corp return (1120) | Apr 15 | | — | |
| Apr 15 | Q1 Estimated Tax | Apr 15 | | $[X] | |
| Apr 30 | 941 Q1 summary | Apr 30 | | $[X] | |
| **June** | | | | | |
| Jun 15 | Q2 Estimated Tax | Jun 15 | | $[X] | |
| **July** | | | | | |
| Jul 31 | 941 Q2 summary | Jul 31 | | $[X] | |
| **September** | | | | | |
| Sep 15 | Q3 Estimated Tax | Sep 15 | | $[X] | |
| Sep 15 | Extended partnership returns | Sep 15 | | — | If extension filed in March |
| **October** | | | | | |
| Oct 15 | Extended individual/corporate returns | Oct 15 | | — | |
| Oct 31 | 941 Q3 summary | Oct 31 | | $[X] | |
| **December** | | | | | |
| Dec 31 | Year-end tax planning deadline | Dec 31 | | — | See tax planning advisor |

---

## State Tax Obligations

| State | Entity | Filing type | Due date | Status | Amount |
|-------|--------|------------|---------|--------|--------|
| [Arizona] | [MBL Partners] | [State income tax] | [Apr 15] | ✅ / 🔴 | $[X] |
| [Utah] | [HIVE Partners] | [Severance / production tax] | [Quarterly] | | $[X]/Q |
| [Other states] | | | | | |

**Nexus watch:** [Any new state where the company is operating that may create filing obligations]

---

## Payroll Tax Calendar

| Deposit type | Frequency | Next due date | Amount | Status |
|-------------|----------|-------------|--------|--------|
| Federal withholding (941) | [Semi-weekly / Monthly] | [Date] | $[X] | ✅ / 🔴 |
| FUTA | Quarterly (if >$500) | [Date] | $[X] | |
| State withholding | [Monthly / Quarterly] | [Date] | $[X] | |
| State unemployment | Quarterly | [Date] | $[X] | |

---

## Filing Status Summary

| Status | Count | Items |
|--------|-------|-------|
| ✅ Filed / Paid | [N] | [List] |
| 🟡 In Progress | [N] | [List] |
| 🔴 Due in 30 days | [N] | [List — URGENT] |
| ⏰ Extension filed | [N] | [Extended return due dates] |

---

## Matt Mathison Flag

Tax calendar — [Entity] [Year]: Next due [filing] on [date] — [amount]. [Any 🔴 items]. Decision needed: [Approve estimated tax payment $[X] / Confirm extension filed / No decision needed].
```

## Output Contract
- All filings for all entities tracked in one place — the tax calendar should cover every MBL entity (MBL Partners, HIVE Partners, Allevio, Column6, and any other active entity); missing one entity's filing deadline because it wasn't in the tracker is not acceptable
- 60-day advance warning for every deadline — the tax calendar must surface every deadline 60 days in advance; the CPA needs time to prepare; Matt Mathison needs time to write checks; zero-notice deadlines result in late filings
- Estimated tax payments never missed — estimated tax underpayments result in penalties; every quarterly estimated payment must be calculated (based on prior year liability or current year projection), scheduled, and confirmed paid; the CPA calculates; Dr. Lewis confirms payment
- 1099s and W-2s tracked separately — information returns (1099-NEC, W-2) have specific recipients and paper/electronic filing requirements; missing a 1099 deadline results in per-form penalties that can add up quickly for companies with many contractors; the vendor tracking must feed the 1099 list
- HITL required: Dr. Lewis manages the calendar and flags upcoming deadlines; CPA prepares all returns; Matt Mathison approves all tax payments; any tax payment >$10K requires Matt Mathison approval before payment; any missed deadline must be reported to Matt Mathison immediately with a remediation plan

## System Dependencies
- **Reads from:** QuickBooks (financial data for return preparation), payroll records (for 941 and W-2), 1099 vendor list, prior year returns
- **Writes to:** Tax calendar (SharePoint/Finance/Tax/Calendar/); CPA task list; payment confirmations in QuickBooks
- **HITL Required:** Dr. Lewis manages calendar; CPA prepares returns; Matt Mathison approves all tax payments >$10K; missed deadlines reported immediately

## Test Cases
1. **Golden path:** MBL tax calendar Q3 review (September 2026) → September 15: Q3 estimated tax $28,400 — Dr. Lewis prepared payment instruction, Matt Mathison approved, paid September 12 via online banking ✅; September 15: HIVE Partners 1065 extended return — CPA filed September 14; K-1s delivered to LPs September 14 ✅; October 31: 941 Q3 summary due — payroll records sent to CPA September 20; filing in progress 🟡; No 🔴 items; Matt Mathison flag: "All September 15 deadlines met. October 31 in progress — CPA on it. Next decision: Q4 estimated tax due January 15, 2027 — CPA will provide calculation by December 1."
2. **Edge case:** HIVE Partners expands operations into a second state (Colorado) mid-year → new filing obligation: "HIVE Partners has begun operations in Colorado as of [month]. New obligations: (1) Colorado state income tax — apportionment required; CPA to determine filing method; (2) Colorado severance/oil production tax — quarterly; (3) Colorado employment tax if any Colorado employees. CPA to assess immediately and add to tax calendar. New filings may require retroactive registration." Nexus creation must be caught and addressed immediately, not at year-end when penalties have accumulated
3. **Adversarial:** The CPA firm misses a filing deadline and a late penalty is assessed → document immediately: "The CPA firm missed the [filing] deadline for [entity]. A penalty of $[X] has been assessed. Next steps: (1) Request penalty abatement from the IRS — first-time penalty abatement may be available if the entity has a clean compliance history; (2) Evaluate whether the missed deadline was a CPA failure or a failure to provide information to the CPA on time; (3) Establish a process to prevent recurrence — 60-day advance deadline alerts going forward." CPA engagement letters should address penalty responsibility; document the failure for potential billing adjustment.

## Audit Log
All tax returns and payment confirmations retained (minimum 7 years, forever for property-related). Filing calendar snapshots retained annually. CPA confirmation of all filings retained. Matt Mathison payment approvals retained. Late filings and penalties documented with remediation.

## Deprecation
Retire when MBL has a CPA firm that proactively manages the entire tax compliance calendar across all entities with automated deadline reminders, and when each portfolio company has a controller or CFO who owns the tax calendar with Dr. Lewis's role limited to oversight.
