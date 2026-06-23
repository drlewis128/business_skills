---
name: revops-ghl-architect
description: "Design and govern the GoHighLevel architecture for MBL Partners portfolio entities. Use when the user says 'GoHighLevel architecture', 'GHL architecture', 'GHL design', 'GoHighLevel design', 'GHL subaccount design', 'how to set up GoHighLevel', 'GoHighLevel for Allevio', 'GoHighLevel for Column6', 'GHL agency account', 'GHL subaccount', 'GoHighLevel structure', 'GHL pipeline design', 'GHL contact schema', 'GHL automation design', 'GHL workflow design', 'design the CRM', 'CRM architecture', 'CRM design', 'GoHighLevel blueprint', 'GHL blueprint', 'GHL configuration design', 'add a new entity to GHL', 'set up a new portfolio company in GHL', 'GHL entity setup', 'new entity GHL', 'GHL BAA architecture', 'HIPAA GHL design', 'GHL for healthcare', or 'architect GoHighLevel'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|new>] [--action <design|configure|audit|document>] [--area <subaccount|pipeline|contact|automation|user>]"
---

# RevOps GHL Architect

Design and govern the GoHighLevel architecture for MBL Partners portfolio entities — establishing the subaccount structure, contact schema, pipeline configuration, automation governance, and HIPAA-compliant design patterns that make GoHighLevel a reliable, secure, and auditable system across the entire MBL portfolio. GHL architecture decisions made at setup determine data quality, reporting accuracy, and compliance posture for years.

## When to Use
- Setting up GoHighLevel for a new portfolio entity
- Auditing existing subaccount configuration for compliance and quality
- Designing a new pipeline or automation within an existing subaccount
- Reviewing the overall GHL architecture for scalability or HIPAA compliance

## GHL Architecture Framework

```
MBL PORTFOLIO GOHIGHLEVEL ARCHITECTURE:

  AGENCY ACCOUNT (MASTER):
    Admin: Dr. Lewis (sole agency-level admin; no shared agency admin access)
    Subaccounts:
      ├─ MBL Partners (MBL-level contacts; LP relationships; portfolio-level ops)
      ├─ Allevio (HIPAA-designated subaccount; BAA in effect; strictest governance)
      ├─ Column6 (agency client relationships; CTV pipeline)
      └─ HIVE Partners (landowner relationships; mineral rights)
    
    Architecture principles:
      - Entity isolation: cross-subaccount visibility OFF for all non-admin users
      - Subaccount = entity (never combine entities in a single subaccount)
      - New portfolio company → new subaccount (not a new pipeline within existing subaccount)
      - Dr. Lewis provisions all new subaccounts; entity CEO gets subaccount admin access
      
  CONTACT SCHEMA DESIGN:
    Standard fields (all subaccounts):
      Required: First Name / Last Name / Company / Email / Phone / Entity Tag / Lead Source / ICP Status / Contact Owner
      Recommended: Title / LinkedIn URL / Timezone / Notes
    Entity-specific custom fields:
      Allevio: Employer Size Range / Benefit Decision Authority / HIPAA Consent Note ("No PHI in this record") / Broker Name
      Column6: Agency Tier (1/2/3) / Annual CTV Spend Estimate / Primary Media Type
      HIVE: Parcel Reference / Acreage / Landowner Type / County
    Schema change process: Dr. Lewis approves all new or modified custom fields; entity CEO justifies the need
    
  PIPELINE DESIGN:
    One pipeline per entity per deal type (not one pipeline for all entities)
    Pipeline stage names: consistent with revops-sales-process-manager (stage definitions must match)
    Stage field requirements: each stage has defined exit criteria fields in GHL (prompted on stage advance)
    Allevio pipelines: all pipeline data is aggregate employer data; no employee-level data in any deal record
    
  AUTOMATION GOVERNANCE:
    All automations (workflows) require:
      - Name following convention: [entity]-[trigger]-[action] (e.g., allevio-mql-notify-sales)
      - Owner assigned in workflow description
      - HIPAA review for all Allevio workflows (Dr. Lewis approval before activation)
      - Test run with dummy contact before going live
      - Quarterly activation status review (deactivate unused workflows)
    Workflow library: SharePoint → [Entity] → RevOps → GHL Workflows → [Workflow Name]
    
  HIPAA ARCHITECTURE (ALLEVIO SUBACCOUNT):
    Subaccount designation: HIPAA-designated (documented in agency account settings)
    BAA: signed with GoHighLevel; on file with Dr. Lewis; renewal review annually
    PHI prohibition: automated in field naming and onboarding instructions; CS team briefed
    Data residency: GoHighLevel US data residency confirmed; Dr. Lewis confirms annually
    Third-party integrations with Allevio subaccount: Dr. Lewis must approve before activation
      (any integration that accesses Allevio GHL data via API must have BAA documentation)
    
  NEW ENTITY SETUP PROTOCOL:
    Step 1: Dr. Lewis creates new subaccount in agency account
    Step 2: Dr. Lewis configures standard contact schema + entity-specific fields
    Step 3: Dr. Lewis configures pipelines (per revops-sales-process-manager stage definitions)
    Step 4: Dr. Lewis provisions entity CEO as subaccount admin
    Step 5: Entity CEO provisions additional users (within approved role types)
    Step 6: Dr. Lewis activates initial automation workflows after testing
    Step 7: Allevio only — BAA review before any contact data is entered
```

## Output Format

```markdown
# GHL Architecture Review — [Entity / Full Portfolio] — [Date]
**Reviewed by:** Dr. Lewis | **Focus area:** [Subaccount / Contact / Pipeline / Automation / All]

---

## Subaccount Configuration

| Item | Status | Notes |
|------|--------|-------|
| Entity isolation (cross-subaccount OFF) | ✅/⚠️ | |
| HIPAA designation (Allevio) | ✅/N/A | |
| BAA on file | ✅/⚠️ | Expires: [Date] |
| Agency admin: Dr. Lewis only | ✅/⚠️ | |

---

## Contact Schema

| Required field | Completion % | Status |
|----------------|-------------|--------|
| Entity tag | X% | ✅/⚠️ |
| ICP status | X% | |

---

## Pipeline Configuration

| Pipeline | Stages match process doc? | Exit criteria fields configured? | Status |
|----------|--------------------------|--------------------------------|--------|
| Allevio Employer | ✅/⚠️ | ✅/⚠️ | |

---

## Automation Audit ([N] active workflows)

| Workflow | HIPAA reviewed? | Last triggered | Status |
|---------|----------------|--------------|--------|
| [Name] | ✅/N/A | [Date] | Active / Stale |

---

## Issues Found
[Issue — severity — owner — resolution]

---

## Architecture Decisions
[Any significant design decision made; rationale; Dr. Lewis sign-off]
```

## Output Contract
- Architecture decisions made at setup are expensive to change later — a subaccount with poorly designed contact fields, no entity tagging standard, and pipelines that don't match the sales process document will produce months of data cleanup; Dr. Lewis invests the time upfront to design GHL correctly for each entity before the first contact is entered; "we'll fix it later" is never cheaper than "we'll design it right now"; every new entity setup follows the step-by-step protocol, no exceptions
- HIPAA architecture is not a one-time setup — the Allevio subaccount HIPAA posture must be verified quarterly (BAA current; data residency confirmed; integrations reviewed; PHI prohibition active); an Allevio subaccount that was HIPAA-configured at setup 18 months ago may have accumulated integrations, new fields, or new automations since then that have not been HIPAA-reviewed; Dr. Lewis owns the quarterly HIPAA architecture review as a standing obligation, not a one-time event
- HITL required: new subaccount creation → Dr. Lewis; new Allevio integration → Dr. Lewis BAA review before activation; schema changes (new custom fields) → Dr. Lewis approves; new Allevio workflows → Dr. Lewis HIPAA review before activation; Allevio BAA renewal → Dr. Lewis action; agency admin access change → Dr. Lewis exclusively; architecture design decisions → documented with Dr. Lewis sign-off

## System Dependencies
- **Reads from:** GoHighLevel (agency account configuration; subaccount settings; contact schema; pipeline configurations; automation workflows; user provisioning); BAA files (SharePoint → Legal → Vendor BAAs → GoHighLevel); revops-crm-admin (user access; audit records); revops-customer-data-integrity (data quality downstream of architecture decisions)
- **Writes to:** GHL architecture documentation (SharePoint → RevOps → GHL Architecture → [Entity]); GoHighLevel (subaccount configuration; field schema; pipeline stages; workflow library); Dr. Lewis architecture decision log; BAA tracking records; HIPAA architecture review records (Allevio — quarterly; permanent)
- **HITL Required:** New subaccount → Dr. Lewis; Allevio integration → Dr. Lewis BAA; schema changes → Dr. Lewis; Allevio workflows → Dr. Lewis; Allevio BAA renewal → Dr. Lewis; agency admin change → Dr. Lewis only; architecture decisions → Dr. Lewis sign-off

## Test Cases
1. **Golden path:** New portfolio company (fictional: "Apex Staffing") joining the MBL portfolio. Step 1: Dr. Lewis creates Apex Staffing subaccount in GHL agency account. Step 2: Standard contact schema deployed + staffing-specific custom fields (placement type; client industry; billable FTE count). Step 3: Pipeline created (New Client Acquisition — 7 stages matching Apex sales process document). Step 4: Dr. Lewis provisions Apex CEO as subaccount admin. Step 5: Apex CEO provisions 2 AEs and 1 marketing coordinator (within approved role types). Step 6: Initial automations designed and tested with dummy contact (lead notification; MQL nurture sequence; stage advance prompt). Step 7: Architecture documentation written and stored in SharePoint → RevOps → GHL Architecture → Apex Staffing. Setup complete before first contact is entered.
2. **Edge case:** Entity CEO wants to build an automation in Allevio's GHL subaccount that sends a personalized SMS to employer HR contacts referencing "benefit renewal season for [Company Name]" → Dr. Lewis: "I need to review this before activation. A few things to check: (1) is the SMS content HIPAA-compliant? (benefit renewal reference is employer-level, not employee-level — likely compliant); (2) is the contact list being used for this SMS entirely employer contacts (not employees)? (3) Does GoHighLevel's SMS sending comply with TCPA (have these contacts opted in for SMS contact)? If all three pass, I'll approve. The automation goes live after my review and a test run with a dummy contact. I'll complete the review within 48 hours."
3. **Adversarial:** A Column6 team member with standard user access attempts to export the full Allevio subaccount contact list — they accessed it incorrectly through an admin action → Dr. Lewis: "This is a security incident. Standard user roles for Column6 should have zero visibility into the Allevio subaccount — the cross-subaccount isolation is supposed to prevent this. I'm treating this as a Priority 1 architecture failure: (1) immediately revoke the Column6 user's elevated access that allowed the cross-subaccount action; (2) confirm whether any data was actually exported (access log review); (3) if data was exported, treat as a HIPAA data incident — entity CEO and Dr. Lewis immediate action, potentially attorney review; (4) audit all user permissions across the agency account to confirm no other cross-subaccount access has been granted. Architecture isolation must be verifiable, not assumed."

## Audit Log
GHL architecture documentation (version history; permanent). Architecture decision log with Dr. Lewis sign-off. HIPAA architecture review records (Allevio — quarterly; permanent). BAA tracking records. New subaccount setup records. Integration approval records (Allevio). Security incident records (cross-subaccount access; export attempts). User provisioning records.

## Deprecation
Architecture reviewed when GoHighLevel platform updates significantly. Contact schema reviewed when entity data model changes. Pipeline design reviewed when entity sales process changes. HIPAA architecture reviewed when regulations change or Allevio data practices change. Automation library reviewed quarterly (deactivate stale workflows).
