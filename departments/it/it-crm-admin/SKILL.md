---
name: it-crm-admin
description: "Administer CRM (GoHighLevel) and maintain data quality. Use when the user says 'CRM admin', 'GoHighLevel', 'GHL admin', 'CRM administration', 'CRM data quality', 'CRM contacts', 'CRM pipelines', 'CRM automation', 'CRM users', 'CRM cleanup', 'CRM configuration', 'CRM reporting', 'CRM permissions', or 'manage CRM'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|NorthVista|other>] [--action <audit|configure|data-quality|user-mgmt|report>]"
---

# IT CRM Admin

Administer the CRM (GoHighLevel) for MBL Partners and North Vista — managing users, pipelines, data quality, automations, and integrations. GoHighLevel (GHL) is the CRM and marketing automation platform used by MBL and North Vista. A CRM that is not actively administered accumulates bad data (duplicate contacts, incorrect pipeline stages, stale leads), which degrades reporting, confuses sales processes, and produces unreliable pipeline views. Good CRM administration keeps the data clean, the automations working, and the users accessing what they need.

## When to Use
- Monthly CRM health review — user activity, data quality, automation health
- A new user needs to be added to GHL with appropriate permissions
- CRM data quality issues detected (duplicates, incorrect data, stale contacts)
- A pipeline or automation is broken or not performing as expected
- A new pipeline, workflow, or automation needs to be configured
- CRM reporting is inaccurate — data quality investigation needed

## CRM Administration Framework

```
GoHighLevel structure at MBL:
  Agency account: MBL Partners top-level account
  Sub-accounts: North Vista (separate pipeline and marketing automation)
  
  User roles in GHL:
    Agency Admin: Full access — Dr. Lewis only
    Location Admin: Sub-account admin — assigned to sub-account managers
    Standard User: Access to assigned pipelines/contacts; cannot modify settings
    
Pipeline management:
  Each pipeline represents a sales or operational process
  Stages should reflect real decision points, not wishful thinking
  Contacts move to next stage when a specific action occurs (not "when it feels right")
  Stale pipeline audit: Any contact in a stage for >2× the expected stage duration = flag
  
Data quality controls:
  Duplicate contacts: GHL has merge functionality; duplicates degrade segmentation and reporting
  Required fields: Ensure key fields are populated (email, phone, source, assigned owner)
  Contact lifecycle stages: Align with sales process; do not let contacts accumulate in "New" indefinitely
  Opt-out compliance: Honor unsubscribe requests immediately; CAN-SPAM and TCPA compliance
  
Automation health:
  Each automation (workflow) should have a clear trigger and expected action
  Dormant automations (no triggers in 30 days): Evaluate — intentionally dormant or broken?
  Failed workflow alerts: GHL sends error notifications; review weekly
  
Integration points:
  GoHighLevel ↔ Krista.ai: AI orchestration integration (MBL AI orchestration project)
  GoHighLevel ↔ M365: Contact sync, email send
  GoHighLevel ↔ Monday.com: Deal tracking push (if configured)
```

## Output Format

```markdown
# CRM Administration Report — <MBL / North Vista>
**Date:** [Date] | **Platform:** GoHighLevel
**Total contacts:** [N] | **Active users:** [N]
**Pipeline health:** [Summary]
**Data quality score:** [X%] — contacts with complete required fields
**Prepared by:** Dr. John Lewis

---

## User Management

| User | Role | Last login | Access level | Status |
|------|------|-----------|-------------|--------|
| Dr. Lewis | Agency Admin | [Date] | Full | Active |
| [Name] | Location Admin | [Date] | [Sub-account] | Active |
| [Departed employee] | Standard | [Date 45 days ago] | [Pipeline] | 🔴 Deactivate |

**Users not logged in >30 days:** [N — review for deactivation]
**Users with excess permissions:** [N — review]

---

## Pipeline Health

| Pipeline | Stage | Contacts | Avg days in stage | Flag threshold | Status |
|---------|-------|---------|-----------------|--------------|--------|
| MBL Deal Flow | Discovery | 12 | 8 days | 21 days | 🟢 |
| MBL Deal Flow | LOI Sent | 4 | 34 days | 30 days | 🟡 Stale |
| North Vista | New Lead | 78 | 18 days | 14 days | 🟡 Stale — needs triage |
| North Vista | Proposal Sent | 6 | 7 days | 21 days | 🟢 |

**Stale contacts (flag):** [N — list with owner and stage]
**Pipeline stage definitions outdated:** [Yes/No — review with business owner]

---

## Data Quality

| Metric | Count | % Complete | Target | Status |
|--------|-------|-----------|--------|--------|
| Contacts with email | [N] | [X%] | >95% | |
| Contacts with phone | [N] | [X%] | >80% | |
| Contacts with source tag | [N] | [X%] | 100% | |
| Contacts with assigned owner | [N] | [X%] | >90% | |
| Duplicate contacts detected | [N] | — | 0 | 🔴 Merge |

**Data quality score:** [X%] — [Good >85% / Needs work 70-85% / Poor <70%]

---

## Automation Health

| Automation | Trigger volume (30-day) | Errors (30-day) | Status |
|------------|------------------------|----------------|--------|
| New lead welcome sequence | 45 triggers | 0 errors | 🟢 |
| Appointment reminder | 120 triggers | 3 errors | 🟡 Investigate |
| Inbound lead → Owner assignment | 52 triggers | 0 errors | 🟢 |
| [Dormant — no triggers 45 days] | 0 | — | 🟡 Evaluate — disable or fix |

---

## Compliance

| Requirement | Status | Notes |
|-------------|--------|-------|
| Unsubscribe requests honored <10 business days | Yes / No | |
| TCPA: SMS contacts opted in | Yes / No | |
| CAN-SPAM: Commercial email from business address | Yes / No | |

---

## Matt Mathison Brief (if critical pipeline health issue or data quality <70%)

CRM [sub-account]: [N] contacts; pipeline health [status]. Key issue: [Stale deals, data quality, automation failure]. Action: [What's being done].
```

## Output Contract
- CRM data quality is actively maintained, not passively monitored — bad data in a CRM compounds over time; 6 months without a data quality review produces hundreds of duplicate contacts, hundreds of contacts in the wrong pipeline stage, and contact records with missing emails that cannot be included in campaigns; the monthly CRM health review includes a targeted data quality cleanup, not just a report of the problems
- Departed employees are removed from the CRM same day as offboarding — a former employee who still has CRM access can view pipeline data, contact data, and competitive intelligence; CRM deactivation is part of the it-offboarding-deprovision checklist and happens the same day; contacts and deals owned by the departed employee are reassigned before deactivation
- Compliance with CAN-SPAM and TCPA is non-optional — unsubscribe requests must be honored within 10 business days (CAN-SPAM); SMS contacts must have provided consent before the first text (TCPA); a campaign that sends to an opted-out contact or a non-consented SMS recipient creates legal liability; GHL's opt-out management is configured to honor these automatically, and Dr. Lewis verifies the configuration works
- HITL required: Dr. Lewis is Agency Admin; pipeline configuration changes require Dr. Lewis + business owner; new user provisioning by Dr. Lewis; automation changes require Dr. Lewis; data quality corrections by Dr. Lewis or designated user under Dr. Lewis supervision; compliance settings by Dr. Lewis; Matt Mathison for critical pipeline health issues

## System Dependencies
- **Reads from:** GoHighLevel admin console, pipeline reports, automation error logs, contact activity logs, user activity logs
- **Writes to:** CRM configuration; user access log; data quality report (SharePoint/Ops/MBL/IT/CRM/); automation change log; contact merge records
- **HITL Required:** Dr. Lewis owns CRM administration; pipeline changes by Dr. Lewis + business owner; new users by Dr. Lewis; automations by Dr. Lewis; compliance settings by Dr. Lewis

## Test Cases
1. **Golden path:** Monthly MBL CRM health review → Users: 4 active; 1 former employee account active (deactivated immediately); Pipeline: MBL Deal Flow — 3 deals in LOI stage for >45 days (flag for Matt Mathison); North Vista pipeline: 78 new leads from Q1 campaign, 22 not contacted in 14 days (stale — assign to North Vista team for follow-up); Data quality: 94% of contacts have email ✅; 12 duplicate contacts detected → merged; Automations: appointment reminder failing at 3% rate (GHL API timeout — investigate) → temporary fix: add retry logic; Data quality score: 91% ✅; Actions: deactivate former employee, flag stale deals, merge duplicates, fix reminder automation; complete in 2 hours
2. **Edge case:** A bulk contact import (2,000 leads from a trade show) creates massive data quality issues — many duplicates, missing required fields, wrong pipeline stage → Handle systematically: (1) first, de-duplicate the import file before loading if possible; (2) GHL import: map fields correctly during import; (3) post-import: run duplicate detection; (4) use GHL's bulk actions to assign owner and source tag to all imported contacts; (5) verify 50-record sample for accuracy; (6) do not launch email campaign until data quality verified; bulk imports should be staged (500 at a time) to contain problems
3. **Adversarial:** A sales team member requests "admin access so they can configure their own pipeline stages" → Decline; pipeline stage changes affect the data integrity of all contacts in that pipeline and reporting accuracy; grant Location Admin on their specific sub-account only if they need to create their own views; otherwise, collect their stage change requests and implement through Dr. Lewis; pipeline changes take 20 minutes to implement correctly; ad-hoc changes by non-IT users take 20 minutes to create and 4 hours to diagnose when they break reporting

## Audit Log
Monthly CRM health reports retained. User access changes retained permanently. Automation change log retained. Data quality scores tracked over time. Compliance settings configuration retained. Bulk import records retained. Duplicate merge records retained.

## Deprecation
Retire when MBL Partners and North Vista have dedicated CRM administrators (marketing ops or sales ops roles) who own CRM configuration, data quality, and user management — with Dr. Lewis retaining Agency Admin access for security oversight. Automation changes affecting Krista.ai integration require Dr. Lewis review regardless of delegation.
