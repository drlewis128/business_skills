---
name: hr-hris-manager
description: "Manage the HRIS (HR Information System) for MBL Partners portfolio companies. Use when the user says 'HRIS', 'HR system', 'HR software', 'HR information system', 'HRIS setup', 'HRIS implementation', 'HRIS evaluation', 'HR data', 'employee record', 'personnel record', 'employee file', 'maintain employee records', 'HRIS data quality', 'HRIS audit', 'HRIS access', 'who can see HR data', 'HR data access', 'HR system access', 'update employee record', 'correct employee record', 'HRIS training', 'onboard to HRIS', 'terminate in HRIS', 'HRIS reporting', 'pull employee data', 'HRIS extract', 'employee data export', 'data governance HR', 'HR data governance', or 'HR technology'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <setup|maintain|audit|report|access>] [--record-type <employee|position|comp|benefit>]"
---

# HR HRIS Manager

Manage the HR Information System across MBL Partners and portfolio companies — maintaining accurate employee records, controlling data access, auditing data quality, and ensuring the HRIS serves as the system of record for all people data. At portfolio company scale, the HRIS is often under-invested; inaccurate records create payroll errors, compliance gaps, and decisions made on bad data.

## When to Use
- A new employee needs to be added to the HRIS
- An employee's record needs to be updated (title; comp; manager; status)
- HRIS data quality audit is needed
- Access levels need to be reviewed or changed
- HRIS reporting or data extract is needed

## HRIS Management Framework

```
HRIS AS SYSTEM OF RECORD:
  The HRIS is the authoritative source for:
    Employee roster (who works here; who doesn't)
    Job titles and levels
    Manager relationships (org chart)
    Compensation (current salary; effective date; history)
    Benefits enrollment
    Employment dates (hire; termination)
    Location and work state (payroll tax implications)
  
  Corollary: if it's not in the HRIS, it didn't happen
  All changes (title; comp; manager; location) must be entered in HRIS before taking effect

HRIS SELECTION (for entities without a system):
  MBL standard recommendation: Rippling (mid-market; integrates payroll + benefits + HRIS)
  Alternative: Gusto (small entities; simpler); BambooHR (HR-only without payroll)
  Decision criteria:
    <20 employees: Gusto or BambooHR ($6-12/employee/month)
    20-50 employees: Rippling ($8-16/employee/month; payroll integration recommended)
    >50 employees: Rippling or ADP Workforce Now
  Dr. Lewis evaluates and recommends; entity CEO approves system selection
  
DATA STANDARDS (all entities):

  REQUIRED FIELDS (every employee record):
    Legal name; preferred name; date of birth; SSN (last 4 minimum)
    Start date; employment type (FTE / part-time / contractor)
    Current title; level (L1-L6); department; manager
    Work state (AZ vs. UT vs. remote — affects payroll tax)
    Current base salary; effective date; pay frequency
    Benefits enrollment status; plan election
    I-9 completion date (Section 1 + Section 2)
    Emergency contact
    
  SENSITIVE DATA HANDLING:
    SSN full digit: encrypted; not visible in standard user views
    Salary: visible to Dr. Lewis + entity CEO + direct manager (not peers)
    Performance ratings: visible to Dr. Lewis + entity CEO + direct manager
    Medical/accommodation records: separate confidential file; Dr. Lewis only
    I-9 documents: separate file; immigration counsel access only if needed
    
ACCESS CONTROL:
  Role-based access:
    Dr. Lewis: full access to all entities (read/write)
    Entity CEO: read/write for their entity; cannot see other entities
    Manager: read for their direct reports (name; title; start date — not salary unless authorized)
    Employee: read-only for their own record (name; title; department; start date)
    Payroll processor: salary + bank info (restricted view)
    Finance/CFO: headcount + salary bands (aggregate; not individual)
    
  Portfolio isolation: Allevio employees are not visible to HIVE users; etc.
  
  Access changes: Dr. Lewis approves all access changes; no self-service access escalation
  
DATA QUALITY AUDIT (quarterly):
  Check: all active employees have complete required fields
  Check: terminated employees are marked inactive on date of termination
  Check: manager relationships are current (org chart reflects actual reporting)
  Check: work state is correct (payroll tax destination)
  Check: salary is current (no pending merit changes not yet entered)
  Check: I-9 completion dates populated
  Frequency: quarterly; Dr. Lewis runs; findings corrected within 5 business days
  
HRIS CHANGES THAT REQUIRE AUTHORIZATION:
  Comp change: authorized by Dr. Lewis (per compensation thresholds)
  Title change: authorized by Dr. Lewis + entity CEO
  Manager change: authorized by entity CEO
  Termination record: Dr. Lewis enters within 1 business day of separation
  New employee: Dr. Lewis enters on or before start date
  Rehire: Dr. Lewis reviews prior employment record; CEO + Dr. Lewis authorize
  
REPORTING COMMON EXTRACTS:
  Headcount report: all active employees; FTE count; by department; by location
  Salary report: active employees; current salary; level; effective date (restricted distribution)
  Attrition report: departures in period; voluntary/involuntary; tenure at departure
  Benefits enrollment: enrollment status; plan elections; carriers
  I-9 compliance: Section 2 completion dates vs. start dates
  OIG/LEIE compliance (Allevio): active employee list for monthly screening
```

## Output Format

```markdown
# HRIS Data Quality Audit — [Entity] — [Quarter YYYY]
**Conducted by:** Dr. Lewis | **Date:** [Date] | **System:** [Rippling / BambooHR / Other]

---

## Completeness Check

| Required field | % complete | Exceptions |
|---------------|-----------|-----------|
| Legal name | | |
| Work state | | |
| Current salary + effective date | | |
| I-9 completion date | | |
| Manager (org chart) | | |
| Benefits enrollment | | |

---

## Inactive Records Check
- Active employees confirmed as current roster: ✅ / ⚠️ [X records need review]
- Terminated employees marked inactive on separation date: ✅ / ⚠️

---

## Access Audit
- Unauthorized access grants found: ✅ None / ⚠️ [X findings — corrected]
- Portfolio isolation confirmed (Allevio ≠ HIVE ≠ Column6): ✅ / ⚠️

---

## Corrections Required
| Record | Field | Issue | Corrected by | Due |
|--------|-------|-------|-------------|-----|
| [Employee] | [Field] | [Issue] | Dr. Lewis | [Date] |
```

## Output Contract
- Terminations are entered in HRIS on the day of separation — an employee who appears as active in the HRIS after they have been terminated creates: access provisioning errors (IT may not deprovision based on HRIS status); payroll errors (payroll may include them in the next cycle); benefits errors (carrier may bill for them next month); Dr. Lewis enters the termination record in the HRIS within 1 business day of the separation; the HRIS is the trigger for offboarding processes
- Salary data is visible only to authorized roles — salary is among the most sensitive HR data; unauthorized access to salary data creates jealousy, discrimination claims (if salary disparities exist), and legal exposure; Dr. Lewis configures HRIS role-based access so that peers cannot see each other's salaries; managers can see their direct reports' salaries only if explicitly authorized by Dr. Lewis and the entity CEO; access escalation requires Dr. Lewis approval — no self-service
- Work state is the most compliance-critical field — an employee who works in AZ is subject to AZ payroll tax; an employee who works in UT is subject to UT tax; a remote employee who moved from AZ to UT but whose HRIS record still shows AZ creates payroll tax errors and potential nexus issues; Dr. Lewis confirms work state for every employee at hire and when any remote employee relocates; work state changes are processed in the HRIS within 1 business day and communicated to the payroll processor
- HITL required: HRIS system selection → Dr. Lewis recommends; entity CEO approves; new employee entry → Dr. Lewis enters on or before start date; termination entry → Dr. Lewis within 1 business day; comp change entry → Dr. Lewis confirms authorization before entry; access grant → Dr. Lewis approves; quarterly audit → Dr. Lewis conducts; findings → Dr. Lewis corrects within 5 business days; salary report distribution → Dr. Lewis approves recipient list

## System Dependencies
- **Reads from:** hr-onboarding-planner (new hire record creation trigger); hr-offboarding-manager (termination record trigger + date); hr-salary-band-manager (comp data for HRIS compensation records); hr-benefits-manager (enrollment data for HRIS benefits records); fin-ops-payroll-processor (payroll integration — HRIS as compensation source of truth)
- **Writes to:** HRIS employee records (Rippling / BambooHR / system); org chart (HRIS-generated); headcount report (finance + entity CEO); attrition report (hr-attrition-analyzer input); OIG/LEIE employee list (Allevio monthly check); IT provisioning/deprovisioning triggers (HRIS status change → IT action)
- **HITL Required:** System selection → Dr. Lewis + entity CEO; new hire entry → Dr. Lewis; termination entry → Dr. Lewis within 1 business day; comp entry → authorized before entry; access grant → Dr. Lewis; quarterly audit → Dr. Lewis; salary report distribution → Dr. Lewis approves

## Test Cases
1. **Golden path:** New Allevio Care Coordinator starts January 6. Dr. Lewis creates HRIS record January 4 (before start). Fields complete: legal name; work state (AZ); title (Care Coordinator / L2); manager; salary ($58,000); start date; benefits enrollment (pending — 30-day window tracked). I-9 completion date entered January 7 after Section 2 complete. Benefits election received January 28 — entered same day. Quarterly audit (April): record fully complete. ✅
2. **Edge case:** HIVE (small team, 4 employees) is not currently using any HRIS → Dr. Lewis: "For 4 employees, a full HRIS may be overkill cost-wise. I'd recommend BambooHR at $6-8/employee/month ($24-32/month) for basic record-keeping, or at minimum, a structured SharePoint folder with standardized employee records. The minimum we need: a single source of truth for each employee's current salary, title, start date, work state, and I-9 completion date. If we don't have that, we're making payroll and compliance decisions from memory. Let me set up the BambooHR trial — it takes 2 hours to configure."
3. **Adversarial:** Entity CEO wants to give the controller access to individual employee salary data for a budget presentation → Dr. Lewis: "I can give the controller a salary report that includes the aggregate payroll cost for the budget analysis. If they need it at the individual level, I need to know specifically what they're building and why the individual-level data is required. Individual salary data should not be distributed beyond the standard access list without specific justification. I'll provide aggregate data by level and department — that covers 90% of budget modeling. If they genuinely need individual data, you and I both authorize it with a documented reason."

## Audit Log
HRIS access grants retained with authorization records. Quarterly audit records retained 3 years. Termination entry records retained (date of entry vs. date of separation — for auditing timeliness). Comp entry records retained (authorization confirmation). Salary report distribution log retained.

## Deprecation
HRIS system recommendation reviewed every 3 years (or when entity scales past tier threshold). Access control schema reviewed annually. Required fields list updated when compliance requirements change (I-9; state-specific fields).
