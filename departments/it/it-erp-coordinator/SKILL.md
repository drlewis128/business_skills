---
name: it-erp-coordinator
description: "Coordinate ERP and core business system implementations. Use when the user says 'ERP', 'ERP implementation', 'QuickBooks migration', 'accounting system', 'core business system', 'financial system implementation', 'system consolidation', 'ERP selection', 'ERP rollout', 'ERP coordinator', 'business system integration', 'financial system upgrade', 'QuickBooks', 'Bill.com implementation', or 'NetSuite'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--system <QuickBooks|Bill.com|NetSuite|Covercy|other>] [--phase <select|implement|maintain|migrate>]"
---

# IT ERP Coordinator

Coordinate ERP and core business system implementations at MBL portfolio companies — managing QuickBooks Online, Bill.com, Covercy (HIVE), and any future ERP implementations. Core business systems (finance, operations, EHR) are the hardest IT implementations because they involve financial data, high-stakes data migration, extensive user training, and long-term consequences if done wrong. The coordinator role ensures IT requirements, data migration, integrations, and go-live are executed correctly — in partnership with finance and operations owners.

## When to Use
- A portfolio company needs to implement or upgrade a core financial system
- A new portfolio company acquisition needs to be onboarded to MBL's financial systems (QuickBooks, Bill.com)
- QuickBooks or Bill.com is being connected to a new integration (Krista.ai, bank feed, payroll)
- Covercy (HIVE Partners) needs configuration or integration support
- A core business system is being migrated from one platform to another
- Data quality issues in QuickBooks or Bill.com need IT investigation

## ERP Coordination Framework

```
MBL portfolio core systems:
  QuickBooks Online (QBO): Financial system of record for all portfolio companies
    → Managed by Finance; IT provides: SSO (if available), integration support, backup
    → QB data is NOT edited by IT — Finance owns data integrity
    → IT role: User provisioning, integration setup, export/backup procedures
    
  Bill.com: AP automation; bill payment; expense management
    → Connected to QuickBooks (sync)
    → IT role: User provisioning, integration support, SSO (if available), DLP (financial data)
    
  Covercy: HIVE Partners oil & gas operations platform
    → Production tracking, LP reporting, distributions
    → IT role: User access, integration with QuickBooks, data exports for reporting
    
  AdvancedMD: Allevio EHR/RCM — see it-app-lifecycle-manager for lifecycle; IT coordinates technical aspects
  
Implementation roles (finance vs. IT):
  Finance owns: Data accuracy, chart of accounts, workflows, reporting requirements, go-live readiness
  IT owns: Technical configuration, integrations, SSO/MFA, data backup, security, user access
  Both own: Data migration validation (Finance validates accuracy; IT validates completeness)
  
QuickBooks Online administration (IT scope):
  User management: Add/remove users; set permission levels (Admin, Standard, Custom)
  Custom roles: Create roles aligned with separation of duties requirements
    → AP staff: Create bills; cannot approve or pay
    → Controller: Full access except payroll processing (separate if possible)
    → Auditors: Read-only; no edit access
  MFA: QBO supports MFA at application level; enforce for all users
  Integration: Connect to Bill.com, bank feeds, payroll (Gusto, ADP), reporting tools
  Export/backup: Monthly QBO data export as contingency (QBO is SaaS — Intuit owns backup)
  
Bill.com administration (IT scope):
  Approval workflows: Configure to match company authority matrix
    → Bills <$1K: Controller approves
    → Bills $1K-$10K: Dr. Lewis approves
    → Bills >$10K: Dr. Lewis + CEO
    → Bills >$25K: Matt Mathison required
  Vendor management: IT ensures vendor bank info is verified before first payment
  API integration: Bill.com API for Krista.ai integration (future)
  
Data migration standards:
  Data mapping: Every field in the old system mapped to a field in the new system
  Historical data: Determine cutover date; import balance forward or full history
  Validation: Finance team validates 100% of imported balances; IT validates import completeness
  Reconciliation: Bank reconciliation in new system before go-live
  Rollback window: Old system kept accessible for 60 days post-go-live (read-only)
```

## Output Format

```markdown
# ERP/Core System Report — <Company Name> — <System>
**System:** [QuickBooks / Bill.com / Covercy / Other]
**Phase:** Select / Implement / Maintain / Migrate
**Date:** [Date] | **Prepared by:** Dr. Lewis

---

## System Status (Maintain phase)

| Area | Status | Issue | Action |
|------|--------|-------|--------|
| User access (separation of duties) | Compliant / Gap | [Description] | |
| MFA enforcement | Enabled / Disabled | | Enable |
| Integration health (QB ↔ Bill.com sync) | Syncing / Error | Last sync: [Date] | |
| Bank feed (QB) | Connected / Disconnected | | Reconnect |
| Data backup / export | Current / Overdue | Last export: [Date] | |
| Separation of duties | Compliant / Violation | [Description] | Remediate |

---

## User Roster

| User | System | Role | Last login | Separation of duties | Status |
|------|--------|------|-----------|---------------------|--------|
| Controller | QB + Bill.com | QB Admin / Bill.com Approver | [Date] | No payroll conflict ✅ | Active |
| AP Staff | Bill.com | Standard (create bills only) | [Date] | Cannot approve ✅ | Active |
| Dr. Lewis | QB + Bill.com | QB Admin / Bill.com Admin | [Date] | | Active |
| [Departed] | QB | Standard | [Date - 30 days] | — | 🔴 Deactivate |

---

## Integration Status

| Integration | Systems | Status | Last successful sync | Error |
|-------------|---------|--------|---------------------|-------|
| QB ↔ Bill.com | QBO / Bill.com | Active / Error | [Date/Time] | [If error: description] |
| QB ↔ Bank feed | QBO / [Bank] | Active | [Date] | |
| QB ↔ Payroll | QBO / Gusto | Active | [Date] | |
| Bill.com ↔ Krista.ai | Bill.com / Krista | Planned / Active | — | |

---

## Implementation Status (if in Implement phase)

| Milestone | Target | Status | Owner | Notes |
|-----------|--------|--------|-------|-------|
| Chart of accounts configured | [Date] | Done | Finance | |
| Historical data import | [Date] | In progress | IT + Finance | |
| Bank feed connected | [Date] | | Dr. Lewis | |
| Bill.com approval workflow | [Date] | | Dr. Lewis | |
| User training | [Date] | | | |
| Parallel run (old + new) | [Start-End] | | | |
| Go-live | [Date] | | | |

---

## Matt Mathison Brief (for new implementations >$10K/year or critical integration failure)

[Company] [System]: [Phase/status]. [Key decision or issue]. Investment: $[X]. [Action required from Matt: Yes/No].
```

## Output Contract
- Separation of duties in financial systems is enforced at configuration — the QuickBooks and Bill.com user roles are configured to enforce separation of duties from day one; the person who creates bills should not be the person who approves them; the person who processes payroll should not be the person who sets pay rates; these are fraud prevention controls embedded in the system configuration, not just policies on paper; Dr. Lewis configures the roles correctly and audits them quarterly
- Financial data belongs to Finance, not IT — IT configures, integrates, and maintains access to financial systems; IT does not edit financial records; if a financial data quality issue is found, it is flagged to the controller or CFO to correct; IT confirms the technical completeness of data imports (all records present), but Finance validates the accuracy of the numbers; this boundary prevents IT from inadvertently creating audit trail problems
- Data migration validation is done by Finance, not assumed — when historical financial data is migrated to a new system, Finance performs a detailed reconciliation: beginning balances match, prior year financials reconcile, chart of accounts is correctly mapped; "the import completed without errors" is not validation; IT confirms the technical transfer completed; Finance confirms the numbers are right; go-live is blocked until Finance signs off
- HITL required: Dr. Lewis configures all core financial systems; Bill.com approval workflows require Dr. Lewis + controller sign-off; user provisioning/deprovisioning in financial systems by Dr. Lewis (see it-offboarding-deprovision); integration changes require Dr. Lewis; data migration by Dr. Lewis + Finance validation; implementation decisions >$10K/year need CEO; >$25K/year need Matt Mathison

## System Dependencies
- **Reads from:** QuickBooks Online admin, Bill.com admin, Covercy admin, bank feed status, payroll integration logs, financial system integration health
- **Writes to:** Financial system configuration; user access log (SharePoint/Ops/<Company>/IT/CoreSystems/); integration configuration; data migration records; approval workflow documentation
- **HITL Required:** Dr. Lewis configures; Bill.com workflows with controller sign-off; user changes by Dr. Lewis; data migration validated by Finance; implementation >$10K by CEO; >$25K by Matt Mathison

## Test Cases
1. **Golden path:** Onboarding new portfolio company acquisition to MBL financial systems → Week 1: Dr. Lewis reviews existing QB account (if any); assesses migration vs. fresh start; Week 2: QB configuration — chart of accounts aligned to MBL standard; users provisioned with correct roles; separation of duties enforced; Week 3: Bill.com configured — approval workflows match company authority matrix; QB ↔ Bill.com sync connected and tested; Week 4: Bank feeds connected; payroll integration if applicable; Covercy if oil & gas; Week 5: Finance team trained on QB + Bill.com; Week 6: Finance validates opening balances and historical data accuracy; Week 7: Go-live; all users active; old system kept read-only 60 days; documentation filed
2. **Edge case:** The QuickBooks ↔ Bill.com sync breaks — bills created in Bill.com are not appearing in QuickBooks → Diagnose: check QB sync log in Bill.com (Settings > Accounting > QuickBooks); common cause: QB OAuth token expired (fix: re-authorize QB connection in Bill.com); or QB chart of accounts mismatch (Bill.com expense category doesn't map to a QB account); fix: re-authorize or create missing QB account; test sync with 1 bill; verify in QB before resuming; total fix time: typically 30-60 minutes; notify controller of sync outage duration and number of transactions to review
3. **Adversarial:** "The controller wants Admin access to everything in QuickBooks so they can fix anything" → QB Admin access for the controller is appropriate — the controller is the financial system owner; however, verify: (1) the controller does not also process payroll (if so, restrict payroll access to a separate role); (2) the controller is not also the only approver of their own expense reports; (3) bank account and payment method access is reviewed; QB Admin is a standard controller access level but does not override separation of duties requirements for specific workflows

## Audit Log
Core system configuration retained with effective dates. User access log retained permanently. Separation of duties audit retained quarterly. Integration configuration and change history retained. Data migration records retained permanently. Approval workflow configuration retained. Implementation project records retained.

## Deprecation
Retire when portfolio companies have dedicated finance systems administrators (controller or finance ops role) who own QuickBooks, Bill.com, and financial system administration — with Dr. Lewis providing IT support for integrations and access management. Financial system authority matrix and separation of duties configuration require annual Dr. Lewis review regardless of delegation.
