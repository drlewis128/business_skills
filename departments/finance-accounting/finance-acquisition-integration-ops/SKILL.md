---
name: finance-acquisition-integration-ops
description: "Manage post-close financial integration for MBL Partners acquisitions. Use when the user says 'post-close integration', 'acquisition integration', 'integration plan', 'integrate the acquisition', 'onboard the acquisition', 'new entity setup', 'new acquisition setup', 'QuickBooks setup new entity', 'new entity QuickBooks', 'add entity QuickBooks', 'integration checklist', 'financial integration', 'accounting integration', 'post-close accounting', 'first month financials', 'Day 1 integration', 'Bill.com integration', 'Gusto integration new entity', 'new payroll setup', 'bank account setup new entity', 'new entity bank', 'acquire and integrate', 'integration milestones', 'integration timeline', 'post-close day 100', 'first 100 days acquisition', 'integration financial reporting', 'integration KPIs', 'financial integration risk', 'close and integrate', or 'transition period accounting'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--close-date <date>] [--stage <day1|day30|day60|day100>] [--action <setup|track|report>]"
---

# Finance Acquisition Integration Ops

Manage post-close financial integration for MBL Partners acquisitions — executing the Day 1 financial infrastructure setup (bank accounts; QuickBooks entity; Bill.com; Gusto payroll), building the integration financial reporting cadence, and tracking integration milestones through Day 100. Financial integration is where acquisition value is won or lost; the faster MBL's financial controls are in place, the faster Dr. Lewis can see the real post-close performance.

## When to Use
- Day 1: deal closes; financial integration begins immediately
- Day 30: first full month of financial reporting as an MBL entity
- Day 60: systems fully integrated; integration KPIs tracked
- Day 100: integration assessment; baseline established for value creation

## Financial Integration Framework

```
DAY 1 PRIORITIES (CLOSE DATE):
  1. Bank accounts:
     Open new entity bank account at MBL's preferred banking relationship
     Wire operating funds from closing proceeds
     Deactivate (don't close immediately) seller's existing accounts after transition period
     Change all ACH/payment routing to new account
     
  2. Payroll:
     Contact Gusto to set up new entity (EIN; bank account; payroll schedule)
     Transfer employee records from seller's payroll provider
     Confirm next payroll date and ensure sufficient funds in new entity account
     W-4s and I-9s collected for all employees (may already be on file; verify)
     
  3. Bill.com:
     Create new entity in Bill.com (entity isolated per MBL standards)
     Transfer approved vendor list from seller's AP system
     Set approval workflows (Dr. Lewis + entity CEO; per MBL authorization matrix)
     
  4. QuickBooks:
     Create new entity in QuickBooks (new company file)
     Set up chart of accounts (standardized to MBL's COA structure)
     Opening balance sheet: from closing balance sheet (DD-verified)
     Assign Dr. Lewis as accountant access
     
  5. Insurance:
     Confirm existing policies in force post-close (ask seller's broker for transition coverage)
     D&O, general liability, errors and omissions: verify with MBL insurance broker
     
DAY 30 MILESTONES:
  First month P&L for new entity (in QuickBooks; reviewed by Dr. Lewis)
  Reconcile first month actuals vs. Day 1 acquisition model projections
  Flag any immediate surprises (revenue below projection; unexpected expenses; cash shortfall)
  Entity CEO settles into leadership role; Dr. Lewis establishes monthly reporting cadence
  
DAY 60 MILESTONES:
  All financial systems fully MBL-integrated (no seller systems in use)
  Bill.com AP running smoothly (vendor payments on MBL payment run)
  Gusto payroll running on MBL schedule
  First full reconciliation of AR aging (any pre-close AR issue surfacing?)
  Entity added to MBL portfolio dashboard
  
DAY 100 INTEGRATION ASSESSMENT:
  Financial integration complete? ✅/❌ (systems; reporting; team)
  Performance vs. acquisition model: revenue; EBITDA; cash flow
  Integration surprises: what wasn't in DD? (cost items; revenue holes; HR issues)
  Customer retention: any churn post-announcement?
  Matt Mathison Day 100 integration briefing (10 minutes; BLUF format)
  
ALLEVIO-TYPE TARGET INTEGRATION:
  BAA review: any vendor without BAA → immediate remediation plan
  HIPAA reporting structure: establish aggregate-only reporting from Day 1
  Billing system: AdvancedMD access provisioned; Marshall Medical Billing relationship established
  Dr. Lewis reviews all Allevio content before distribution (HIPAA compliance gate)
```

## Output Format

```markdown
# Acquisition Integration Dashboard — [Entity Name]
**Close date:** [Date] | **Day [N] of Integration** | **Managed by:** Dr. Lewis

---

## Integration Checklist

| Milestone | Due | Status | Notes |
|-----------|-----|--------|-------|
| Bank account opened | Day 1 | ✅ [Date] | |
| Gusto payroll setup | Day 3 | ✅ [Date] | |
| Bill.com entity created | Day 1 | ✅ [Date] | |
| QuickBooks entity created | Day 1 | ✅ [Date] | |
| First payroll run | Day [next payday] | 🟡 Pending | |
| First full month P&L | Day 30 | 🟡 In progress | |

---

## Performance vs. Acquisition Model (Day 30)

| Metric | Acquisition Model | Actual | Variance |
|--------|-----------------|--------|---------|
| Revenue | $X | $X | +/-X% |
| EBITDA | $X | $X | +/-X% |
| Cash | $X | $X | |
```

## Output Contract
- Day 1 financial integration is a race against operational disruption — the seller's financial systems go dark at close; if MBL's systems are not ready on Day 1, the new entity operates in a financial control vacuum; Dr. Lewis prepares the integration infrastructure (QuickBooks entity; Gusto setup; Bill.com entity; bank account) before close so that everything goes live on the close date; the goal is that the first post-close payroll is processed on MBL's systems, not the seller's; the first post-close vendor payment goes through Bill.com, not the seller's AP system; and the first post-close P&L pulls from QuickBooks, not a spreadsheet; this is not aspiration — it is the execution standard for every MBL acquisition
- Day 100 is the moment where acquisition optimism meets financial reality — 100 days of actual operating data gives Dr. Lewis the first clean look at whether the acquisition is performing as modeled; revenue tracking to model? Any customers who churned on the change of control announcement? Any hidden expenses that appeared in Month 2 but weren't in the DD? Dr. Lewis presents the Day 100 assessment to Matt Mathison in BLUF format: what is working, what is behind plan, and what needs immediate attention; this is not a victory lap — it is an honest assessment of where the acquisition stands relative to the investment thesis
- HITL required: bank account opening → entity CEO sign-off + Dr. Lewis; Day 1 system setup → Dr. Lewis executes; first payroll → Dr. Lewis approves; Bill.com authorization matrix → entity CEO + Dr. Lewis configure; QuickBooks opening balance → Dr. Lewis verifies against closing statement; Day 100 briefing → Dr. Lewis prepares + Matt Mathison reviews; Allevio-type integration → HIPAA review from Day 1; BAA remediation → entity CEO + Dr. Lewis; Matt Mathison integration milestone approvals

## System Dependencies
- **Reads from:** Closing statement (opening balance sheet); DD financial reports (baseline for Day 1 model); seller's payroll records (employee information for Gusto transfer); seller's vendor list (for Bill.com migration); finance-deal-valuation (acquisition model for Day 30/100 comparison); finance-due-diligence-financial (DD baseline)
- **Writes to:** QuickBooks (new entity; opening balance sheet; monthly P&L); Gusto (new entity; employee payroll records); Bill.com (new entity; vendor setup; approval workflow); bank account records; integration milestone tracker (SharePoint → M&A → [Entity] → Integration); Matt Mathison Day 100 briefing; finance-portfolio-dashboard (new entity added)
- **HITL Required:** Bank account → entity CEO + Dr. Lewis; Day 1 setup → Dr. Lewis executes; first payroll → Dr. Lewis approves; Bill.com matrix → entity CEO + Dr. Lewis; QuickBooks opening balance → Dr. Lewis verifies; Day 100 → Matt Mathison reviews; Allevio-type → HIPAA from Day 1; BAA → entity CEO + Dr. Lewis; integration milestones → Matt Mathison

## Test Cases
1. **Golden path:** Phoenix MSO closes June 16, 2026. Day 1: Bank account opened (First Western Bank; MBL relationship) ✅; $150K operating funds wired ✅; QuickBooks entity "Allevio Phase 2 MSO" created ✅; opening balance from closing statement ✅; Bill.com entity created ✅; 8 approved vendors migrated ✅; Gusto entity created ✅; 5 employees transferred ✅. Day 3: First Gusto payroll setup complete (next payroll June 26). Day 28: First full month P&L (partial June: June 16-30). July 15: Day 30 report — July P&L: $42,000 revenue (model: $45,000; -6.7% — one employer delayed start; entity CEO explains → new employer onboarding target +30 days lag; not a churn event). EBITDA: $8,200 (model: $9,000; -8.9% — timing, not structural). Day 100: September 24, 2026. All systems running on MBL infrastructure ✅. Revenue through August: $123K vs. $135K model (-8.9%; consistent; employer ramp delay). EBITDA through August: $24K vs. $27K model (-10%; consistent with revenue variance; costs in line). Day 100 briefing to Matt Mathison.
2. **Edge case:** Day 3 and new entity's first payroll is due in 4 days, but Gusto needs 5 business days minimum to process first payroll → Dr. Lewis: "We have a payroll timing gap: close was June 16; first scheduled payroll for the acquired entity is June 20 (4 days); Gusto requires 5 business days minimum for first payroll run. We're 1 business day short. Options: (1) Manual payroll: Dr. Lewis issues ACH or checks from the new bank account directly for June 20 (one-time; then Gusto takes over); (2) Off-cycle Gusto start: ask Gusto for expedited setup (sometimes possible with a fee and an extra contact call); (3) Ask entity CEO if employees can accept a 1-week delay to June 27 (first full Gusto run). My recommendation: option 3 if employees can be reassured by the entity CEO; option 1 as fallback if employees need June 20 pay. Dr. Lewis can process manual ACHs for 5 employees within 2 hours. Entity CEO decision by COB June 17."
3. **Adversarial:** Acquired entity CEO wants to keep using the seller's QuickBooks (where "all our historical data is") and just start a new spreadsheet for MBL reporting → Dr. Lewis: "I understand the value of historical data continuity — and we will migrate the seller's QuickBooks history into MBL's QuickBooks entity as a read-only archive; nothing is lost. But starting MBL reporting from a spreadsheet is not the path forward. Here's why: (1) QuickBooks is the system of record for all MBL portfolio companies — it provides Matt Mathison with consistent reporting across entities; (2) a spreadsheet has no approval workflow, no audit trail, and no integration with Bill.com for AP or Gusto for payroll; (3) maintaining the seller's QuickBooks creates two parallel systems, both of which are incomplete; we'd be managing two books instead of one. The transition will take me 2-3 days to set up properly. The new QuickBooks entity goes live on close date. Historical seller data gets migrated as a read-only file available for reference. From close forward: all MBL financial reporting is in QuickBooks."

## Audit Log
Integration milestone records (all dates and completion status). Day 1 system setup records. Bank account opening records. Gusto employee transfer records. Bill.com vendor migration records. QuickBooks opening balance reconciliation records. First payroll run records. Day 30, 60, and 100 performance vs. model reports. Matt Mathison Day 100 briefing records. Allevio-type integration HIPAA review records. BAA remediation records.

## Deprecation
Integration checklist updated after each acquisition (lessons learned). Gusto/Bill.com setup process reviewed when platform capabilities change. QuickBooks COA template updated when MBL reporting standards change. Day 100 assessment format reviewed when Matt Mathison's reporting preferences change. HIPAA integration protocol reviewed when regulations change.
