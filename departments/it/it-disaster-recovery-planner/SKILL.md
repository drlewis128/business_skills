---
name: it-disaster-recovery-planner
description: "Build and test IT-specific disaster recovery plans. Use when the user says 'IT disaster recovery', 'IT DR plan', 'DR planning', 'IT business continuity', 'RTO', 'RPO', 'recovery point objective', 'recovery time objective', 'IT disaster plan', 'IT backup and recovery', 'system recovery plan', 'IT continuity', 'disaster recovery test', 'DR exercise', or 'IT contingency plan'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--system <specific system or all>] [--action <plan|test|review|exercise>]"
---

# IT Disaster Recovery Planner

Build and test IT-specific disaster recovery plans at MBL portfolio companies — defining Recovery Point Objectives (RPO) and Recovery Time Objectives (RTO) by system, documenting recovery procedures, and testing recovery capabilities. The IT DR plan is the technical companion to the ops-disaster-recovery skill (which covers business continuity): IT DR answers "how do we restore the systems that the business needs to operate?"

## When to Use
- Building an IT DR plan for a portfolio company that doesn't have one
- Annual DR plan review and test — is the plan current and does it actually work?
- After a system outage or incident — update the DR plan with lessons learned
- HIPAA §164.308(a)(7) contingency plan documentation at Allevio (required annually)
- Before onboarding a new critical system — add it to the DR plan
- Tabletop exercise — walk through a disaster scenario to identify gaps

## IT DR Framework

```
RPO/RTO targets by system tier:
  Tier 1 — Mission Critical (operations stop without it):
    Healthcare EHR (AdvancedMD — Allevio): RPO <1 hour; RTO <4 hours
    Financial systems (QuickBooks, Bill.com): RPO 4 hours; RTO 8 hours
    Email / M365: RPO 4 hours; RTO 4 hours (Microsoft provides built-in redundancy)
    
  Tier 2 — Business Critical (significant impact, workarounds exist):
    Project management (Monday.com): RPO 24 hours; RTO 24 hours
    CRM (GoHighLevel): RPO 24 hours; RTO 48 hours
    HIVE operations (Covercy): RPO 4 hours; RTO 24 hours
    
  Tier 3 — Departmental (partial operations continue):
    Reporting tools (Power BI): RPO 7 days; RTO 7 days
    Other SaaS tools: RPO 7 days; RTO 7 days
    
Backup strategy by system:
  SaaS systems (AdvancedMD, QB Online, Bill.com, Monday.com):
    Vendor provides backup within their infrastructure
    IT responsibility: Export/download critical data monthly (contingency)
    Vendor outage response: Activate manual workaround until vendor restores
    
  Self-managed systems (Azure VMs, on-prem servers):
    Automated daily backup to Azure Blob Storage (geo-redundant)
    Point-in-time recovery for databases (4-hour transaction logs)
    Tested restoration: Quarterly for Tier 1; semi-annually for Tier 2
    
HIPAA §164.308(a)(7) contingency plan (Allevio — required):
  Data backup plan: Daily backup of PHI; tested semi-annually
  Disaster recovery plan: How to restore EHR access within RPO/RTO
  Emergency mode operation: How clinical operations continue if EHR is down
    → Paper-based patient intake, medication records, and encounter documentation
    → Fax-based prescription fallback
  Testing and revision: DR plan tested and documented annually
  Application and data criticality analysis: Classification of which applications are critical
  
Emergency mode operation (EHR downtime procedure at Allevio):
  Duration ≤4 hours: Continue with pending paper fallback; catch up in system on restore
  Duration >4 hours: Activate full paper downtime procedure; all encounters documented on paper
  Patient scheduling: Postpone non-urgent appointments; notify patients
  Critical medications: Verify with pharmacy directly (not relying on EHR records)
  All paper records: Scanned and entered into EHR on system restoration
```

## Output Format

```markdown
# IT Disaster Recovery Plan — <Company Name>
**Plan version:** [X.X] | **Date:** [Date] | **Author:** Dr. John Lewis
**Last tested:** [Date] | **Next test:** [Date + 6 months]
**HIPAA contingency plan (Allevio):** [Compliant / Not yet documented]

---

## System Inventory and Criticality

| System | Tier | Business function | RPO target | RTO target | Backup method | Last backup test |
|--------|------|-----------------|-----------|-----------|-------------|----------------|
| AdvancedMD (Allevio) | 1 — Mission Critical | EHR / patient care / RCM | 1 hour | 4 hours | Vendor + monthly export | [Date] |
| QuickBooks Online | 1 — Mission Critical | Financial SOR | 4 hours | 8 hours | Intuit backup + monthly export | [Date] |
| Microsoft 365 | 1 — Mission Critical | Email / communication | 4 hours | 4 hours | Microsoft geo-redundant | Microsoft SLA |
| Bill.com | 2 — Business Critical | AP automation | 24 hours | 24 hours | Vendor; monthly export | [Date] |
| Monday.com | 2 — Business Critical | Project management | 24 hours | 24 hours | Vendor; data export | [Date] |
| GoHighLevel | 2 — Business Critical | CRM | 24 hours | 48 hours | Vendor; monthly contact export | [Date] |
| [Azure VM / file server] | 1 — Mission Critical | [Function] | 4 hours | 8 hours | Azure Backup daily + PITR | [Date] |

---

## Recovery Procedures

### System: AdvancedMD (Allevio)
**Recovery scenario:** AdvancedMD is unavailable (vendor outage or network failure)

**Immediate actions (first 30 minutes):**
1. Check AdvancedMD status page (status.advancedmd.com) — is this a vendor outage?
2. Check local network and internet connectivity
3. Notify clinic manager and Dr. Lewis
4. Initiate downtime procedure if outage expected >1 hour

**Downtime procedure (if EHR unavailable):**
- Activate paper encounter forms (location: clinic manager's desk — green binder)
- Patient intake: paper registration forms
- Prescriptions: Verbal/phone prescription with pharmacy only for urgent medications
- Appointments: Continue current schedule; no new scheduling until EHR restored
- Duration >4 hours: Notify Dr. Lewis; consider rescheduling non-urgent appointments

**Recovery:**
1. Confirm AdvancedMD is restored (status page shows resolved + test login)
2. Enter all paper encounter documentation into EHR
3. Verify no billing records were missed
4. Document outage duration in IT incident log

**RTO target:** Vendor restoration expected within 4 hours per AdvancedMD SLA
**Manual workaround available:** Yes (paper-based)

---

### System: Microsoft 365 / Email
**Recovery scenario:** M365 service incident (Microsoft outage)

1. Check M365 Service Health (admin.microsoft.com/adminportal/home#/servicehealth)
2. Notify Dr. Lewis; CEO informed if >2 hours
3. Temporary workaround: SMS/phone for urgent communications; delay non-urgent
4. Microsoft SLA: 99.9% uptime; outages typically resolved <4 hours
5. Escalation: Microsoft Premier Support if extended outage (>4 hours)

---

## HIPAA Contingency Plan Summary (Allevio)

| HIPAA Requirement | Documentation | Status |
|------------------|------------|--------|
| Data backup plan | [See backup schedule and procedures] | Documented ✅ |
| Disaster recovery plan | [This document — Section above] | Documented ✅ |
| Emergency mode operation procedure | [Downtime procedure — AdvancedMD section] | Documented ✅ |
| Testing and revision | [Last test: Date; Next: Date] | [Current / Overdue] |
| Application criticality analysis | [System inventory above — Tier classification] | Documented ✅ |
| Backup test semi-annual | [Test dates: Date, Date] | [Current / Overdue] |

**HIPAA contingency plan compliance:** Compliant / Requires update — [Specific gap]

---

## DR Test Log

| Date | Test type | System tested | Scenario | Outcome | RTO achieved | Gap found |
|------|---------|-------------|---------|---------|------------|---------|
| [Date] | Tabletop | All Tier 1 systems | Ransomware scenario | All procedures followed | AdvancedMD: N/A (vendor) | Downtime procedure binder outdated |
| [Date] | Live restoration | Azure file server backup | Full server restore | Success | 3.5 hours | Backup job destination confirmed |

---

## Matt Mathison Brief (if DR plan not tested in >12 months or major gap found)

[Company] IT DR: Plan [current / not tested in X months]. Last test: [Date]. [Key gap or status]. HIPAA contingency plan (Allevio): [Compliant / Gap]. Next test: [Date].
```

## Output Contract
- DR plans are tested, not just documented — an untested DR plan is a document that claims to describe recovery procedures; a tested DR plan knows the actual RTO (because the restoration was timed), knows what failed during the test, and has a current fix for those failures; for Allevio, HIPAA §164.308(a)(7) requires testing — "we have a plan" is not the same as "we've tested the plan"; tests are documented with actual times and findings
- Paper downtime procedures are maintained in a physical binder at clinical locations — when AdvancedMD is unavailable, the clinical team cannot access electronic downtime instructions if the network is also down; the downtime binder is the physical fallback; it is current (patient forms, reference sheets, phone numbers for pharmacies and specialists) and located where the team knows to find it; Dr. Lewis reviews and reprints it annually
- HIPAA §164.308(a)(7) requires all 5 components — the contingency plan is not just "we have backups"; HIPAA requires documentation of: data backup plan, disaster recovery plan, emergency mode operation plan, testing and revision, and application criticality analysis; all 5 must be documented and the plan must be tested semi-annually; an OCR audit will ask for all 5; Dr. Lewis documents all 5 in the IT DR plan
- HITL required: Dr. Lewis builds and maintains IT DR plan; live restoration tests by Dr. Lewis; tabletop exercises facilitated by Dr. Lewis with CEO and clinical leadership; HIPAA contingency plan reviewed by Privacy Officer (Allevio); DR plan reviewed annually; Matt Mathison notified if plan is not tested in >12 months or if a major gap is discovered

## System Dependencies
- **Reads from:** System inventory (from IT asset tracking), backup monitoring logs, vendor SLA documentation, AdvancedMD status, M365 Service Health, business impact assessment
- **Writes to:** IT DR plan (SharePoint/Ops/<Company>/IT/DisasterRecovery/); HIPAA contingency plan (Allevio — also filed in compliance folder); test log; Matt Mathison annual brief
- **HITL Required:** Dr. Lewis builds and tests plan; HIPAA contingency reviewed by Privacy Officer (Allevio); live restoration tests by Dr. Lewis; tabletop with CEO + clinical leadership; Matt Mathison notified if major gap or plan not tested in >12 months

## Test Cases
1. **Golden path:** Allevio annual DR plan review and test → Tabletop exercise (45 minutes with clinic manager, billing lead, and Dr. Lewis): Scenario: AdvancedMD unavailable at 9 AM on a clinic day — what happens? Walk through: check status page ✅, notify clinic manager ✅, activate paper downtime procedures — binder located, forms current ✅; Prescription fallback: pharmacy phone list current ✅; Appointment handling: postpone non-urgent — protocol clear ✅; Live test: Azure file server backup restoration (on test instance, not production) — restoration time: 2.5 hours (under 8-hour RTO ✅); Gap found: paper downtime binder has forms from 2024 that reference a printer that was replaced — update forms ✅; HIPAA contingency plan: all 5 components documented ✅; test documented ✅; plan updated ✅; Privacy Officer signed off ✅
2. **Edge case:** A cloud provider announces it is shutting down a service that hosts a business-critical database in 90 days → 90-day migration is aggressive but possible; triage: what data is in this service? What are the migration options? Define RPO/RTO for the migration period (the data is at elevated risk during migration); identify the target service; build a migration plan with a 60-day target (leaving 30-day buffer); update the DR plan to reflect the new hosting after migration; this is also an argument for the tech standards decision (ADR) that defined the cloud provider — if it is outside the Azure/AWS standard, this incident justifies migrating to the standard platform
3. **Adversarial:** "We are all SaaS — we don't need a DR plan; if a vendor goes down, we wait for them to come back" → Waiting for a vendor to restore service is a recovery strategy, but it is not a DR plan; the questions the DR plan answers: how long can operations continue without the system? What manual workarounds exist during the outage? Who is notified and when? How is data entered when the system comes back? At Allevio, a 6-hour AdvancedMD outage without a downtime procedure means 6 hours of patients seen with no documentation — which is a billing and compliance problem, not just an inconvenience; the DR plan is what makes the outage manageable rather than catastrophic

## Audit Log
IT DR plan versions retained permanently. HIPAA contingency plan versions retained permanently (Allevio — 6-year retention per HIPAA). DR test logs retained permanently. Tabletop exercise records retained. Gap findings and resolutions retained. Privacy Officer sign-off retained permanently (Allevio). Matt Mathison notifications retained.

## Deprecation
Retire when portfolio companies have dedicated IT operations or IT continuity managers who maintain the DR plan, conduct annual tests, and update procedures independently — with Dr. Lewis reviewing HIPAA contingency plan compliance at Allevio and providing strategic guidance on RTO/RPO targets. HIPAA §164.308(a)(7) contingency plan requirement at Allevio is permanent.
