---
name: ops-business-continuity-planner
description: "Build or review a business continuity plan. Use when the user says 'business continuity', 'BCP', 'disaster recovery plan', 'what happens if we lose a key person', 'business continuity planning', 'continuity plan', 'what if our office goes down', 'operational resilience', 'backup plan', 'what if we lose power', 'continuity of operations', 'BCP review', 'resilience planning', 'recovery plan', or 'what do we do if'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scope <people|systems|facility|full>] [--action <build|review|test>]"
---

# Ops Business Continuity Planner

Build and maintain business continuity plans (BCPs) at MBL portfolio companies — ensuring the business can continue to operate (or recover quickly) when something significant disrupts normal operations. BCPs cover the scenarios that feel unlikely until they happen: a key person leaves suddenly, a system goes down, a facility becomes unavailable, a vendor fails. At portfolio scale, the BCP doesn't need to be a 200-page document — it needs to be specific enough that the right people know what to do when they can't ask Dr. Lewis or Matt Mathison.

## When to Use
- A portfolio company has no formal BCP and needs one
- A near-miss event (system outage, staff loss, natural event) reveals gaps in continuity planning
- Annual review — confirming the BCP is still current and tested
- A new risk (from ops-risk-register) warrants a specific continuity response
- Matt Mathison asks "what would happen if [scenario]?"
- Allevio needs HIPAA-required contingency planning documentation

## Business Continuity Framework

```
BCP scope — four continuity categories:
  1. People continuity: What happens when a key person is unavailable?
     - Sudden departure (resignation, termination, medical emergency, death)
     - Extended leave (FMLA, disability, family emergency)
     - Key person dependency: who knows things only they know?
  
  2. System continuity: What happens when a critical system goes down?
     - SaaS platform outage (AdvancedMD, QuickBooks, Bill.com)
     - Internet or communication outage
     - Data loss or corruption
  
  3. Facility continuity: What happens when the office is unavailable?
     - Physical damage (fire, flood, natural disaster)
     - Building access issue
     - Public health emergency (COVID-type scenario)
  
  4. Supplier continuity: What happens when a critical vendor fails?
     - Vendor insolvency or acquisition
     - Critical vendor service interruption
     - Supply chain disruption (HIVE: well service contractors)

Recovery time objectives (RTO):
  Tier 1 — Mission critical: Resume within 4 hours (patient care at Allevio; active well operations at HIVE)
  Tier 2 — Business critical: Resume within 24 hours (billing, payroll, customer service)
  Tier 3 — Important: Resume within 72 hours (reporting, admin functions)
  Tier 4 — Normal: Resume within 1 week (non-critical projects, internal processes)

Healthcare note (Allevio — HIPAA §164.308(a)(7)):
  HIPAA Security Rule requires covered entities to have a contingency plan that includes:
  Data backup plan, disaster recovery plan, emergency mode operation plan,
  testing and revision procedures, and applications and data criticality analysis
  This is not optional — it is required by regulation
```

## Output Format

```markdown
# Business Continuity Plan — <Company Name>
**Version:** [1.0] | **Date:** [Date] | **Last tested:** [Date]
**Plan owner:** Dr. John Lewis | **Approved by:** [CEO / Matt Mathison]
**Review schedule:** Annual + event-triggered

---

## Critical Business Functions

| Function | Description | RTO | Key person(s) | Systems required | Backup exists? |
|---------|-------------|-----|-------------|----------------|--------------|
| [Patient billing — Allevio] | [Submit and track insurance claims] | Tier 2 — 24 hrs | [Billing manager] | [AdvancedMD, clearinghouse] | [Yes / No] |
| [Production reporting — HIVE] | [Daily BBL reporting to office] | Tier 2 — 24 hrs | [Field supervisor, controller] | [Covercy, Excel] | |
| [Payroll] | [Biweekly payroll processing] | Tier 2 — 24 hrs | [Controller] | [Payroll provider, QuickBooks] | |
| [AP/payments] | [Vendor payments, bill approvals] | Tier 3 — 72 hrs | [Dr. Lewis, controller] | [Bill.com, QuickBooks] | |

---

## Section 1: People Continuity

### Key Person Register

| Key person | Role | Critical knowledge held | Backup designated | Knowledge documented? |
|-----------|------|------------------------|-----------------|---------------------|
| [Name] | [Title] | [Specific: "only person who knows billing modifier rules"] | [Backup name] | [Yes — SOP / Partial / No] |

**Key person risk score:** [N persons with no backup / N total key persons]
**Highest risk:** [Name — reason]

### Sudden Departure Response Plan

**If [Key Person] is unavailable immediately:**
1. [Specific first action — who calls whom, what systems need access transferred]
2. [Interim coverage — who covers for how long, at what cost]
3. [Knowledge recovery — where is documentation, who can access it, what's missing]
4. [Hire/replace decision timeline — when does Dr. Lewis escalate to Matt Mathison for backfill decision]

**Emergency access credentials:** [How are system credentials managed if the key person is unreachable? Are passwords stored in a secure location accessible to Dr. Lewis?]

---

## Section 2: System Continuity

### Critical System Inventory

| System | Business function | RTO | Backup/alternative | Vendor SLA | Last outage |
|--------|-----------------|-----|------------------|-----------|------------|
| [AdvancedMD] | [Patient billing, scheduling] | Tier 2 | [Manual billing records] | [99.5% uptime] | [Date / N/A] |
| [QuickBooks] | [Financial records] | Tier 2 | [Excel backups, bank records] | | |
| [Bill.com] | [AP approvals] | Tier 3 | [Manual check approval] | | |
| [Microsoft 365] | [Email, files, Teams] | Tier 1 | [Mobile email] | 99.9% uptime | |

### System Outage Response

**For Tier 1 system outage (>4 hours):**
1. [Verify outage is vendor-side (check status page); escalate to vendor if our issue]
2. [Activate manual workaround — what specifically is the manual process?]
3. [Notify affected staff — how, by whom, what message]
4. [Notify Matt Mathison if outage exceeds [X hours] or during business-critical period]

**Data backup status:**
- [ ] Financial data (QuickBooks): Backed up [daily/weekly] to [location]
- [ ] Patient records (AdvancedMD — Allevio): Vendor-managed backup; HIPAA contingency confirmed
- [ ] HR records: SharePoint (Microsoft 365 — enterprise backup)
- [ ] Critical documents: SharePoint (OneDrive sync — local + cloud)

---

## Section 3: Facility Continuity

**Primary location:** [Address]
**Remote work capability:** [% of employees who can work fully remote]

**If primary facility is unavailable:**
1. [Trigger remote work protocol: notify all staff via [Teams/Email/Phone] by [person]]
2. [Critical on-site functions that cannot go remote: [list — Allevio patient-facing, HIVE field ops]]
3. [Alternate location (if needed): [designated location or hotel workspace]]
4. [Communication to clients/patients: [notify by [method] within [X hours]]]
5. [Return-to-office: [who makes the call; what criteria confirm it's safe to return]]

---

## Section 4: Supplier Continuity

| Critical supplier | Service | Alternate supplier | Switch time | Switch cost |
|-----------------|---------|------------------|------------|------------|
| [AdvancedMD] | RCM platform | [Manual + alternate clearinghouse] | [Weeks] | [High] |
| [Primary well service contractor — HIVE] | [Well completion] | [Secondary contractor on file] | [Days] | [Moderate] |

---

## HIPAA Contingency Plan (Allevio — Required)

**Data backup plan:** [AdvancedMD automated backup — daily; SharePoint for administrative records]
**Disaster recovery plan:** [AdvancedMD disaster recovery process — vendor managed; manual billing in emergency]
**Emergency mode operation:** [Manual patient check-in and paper records if system unavailable >4 hours]
**Testing schedule:** [Annual tabletop exercise; system backup restoration test]
**Applications criticality:** [AdvancedMD — mission critical; Microsoft 365 — critical; Bill.com — important]
**PHI access log during emergency:** [All emergency access to PHI must be logged even in manual mode]

---

## BCP Testing Schedule

| Test type | Scope | Frequency | Last test | Next test |
|---------|-------|-----------|---------|---------|
| Tabletop exercise | People + system scenarios | Annual | [Date] | [Date] |
| System backup restoration | Data recovery test | Semi-annual | [Date] | [Date] |
| Remote work drill | All-remote for 1 day | Annual | [Date] | [Date] |
| Supplier failure simulation | Identify alternative contact | Annual | [Date] | [Date] |

---

## Matt Mathison Brief

BCP last updated: [Date] | Tested: [Date]. [Highest continuity risk: e.g., "Key person risk at Allevio — billing manager has no documented backup"]. [Action underway: "SOP documentation in progress; expected complete by [Date]"].
```

## Output Contract
- Plans are specific, not generic — "have a backup" is not a plan; "if billing manager is unavailable, Dr. Lewis has admin access to AdvancedMD and can process claims using the manual billing guide at SharePoint/Ops/Allevio/Emergency Procedures/billing-emergency.docx" is a plan; the plan works when Dr. Lewis can't be reached for guidance because it's specific enough to execute without him
- HIPAA contingency planning is non-negotiable for Allevio — the HIPAA Security Rule (§164.308(a)(7)) requires a documented contingency plan; it's a compliance requirement, not best practice; the plan must include data backup, disaster recovery, emergency mode operation, testing, and application criticality analysis; Dr. Lewis ensures this is documented and tested annually
- Key person risk is addressed with documentation, not just backup assignment — naming a backup does no good if the backup doesn't know what to do; the BCP drives knowledge transfer (SOPs, documented processes, access provisioning) as the actual mitigation; "backup designated" without "knowledge documented" is a false sense of security
- BCPs are tested — an untested plan is an assumption; the testing schedule includes tabletop exercises (walk through a scenario without actually triggering it) and practical tests (actual system restoration, actual remote work day); the test reveals gaps that weren't apparent when the plan was written
- HITL required: Dr. Lewis builds and maintains BCP; CEO reviews and approves; Matt Mathison receives annual brief and is notified when a continuity event occurs; HIPAA contingency plan reviewed by clinical leadership at Allevio; BCP testing conducted by Dr. Lewis with team participation; gaps identified in testing are remediated before next annual review

## System Dependencies
- **Reads from:** Risk register (ops-risk-register), key person register, system inventory, vendor contracts, HIPAA security documentation (Allevio)
- **Writes to:** BCP document (SharePoint/Ops/<Company>/Business Continuity/); testing records; HIPAA contingency plan (Allevio — compliance documentation); Matt Mathison annual brief
- **HITL Required:** Dr. Lewis builds; CEO approves; Matt Mathison receives brief; testing conducted with Dr. Lewis coordination; Allevio HIPAA contingency requires clinical leadership review; any actual continuity event activates the plan with Dr. Lewis notification

## Test Cases
1. **Golden path:** Allevio first BCP → 4 sections completed: People (billing manager identified as highest risk; backup = second billing specialist with SOP; password vault access verified); System (AdvancedMD Tier 2 — manual billing procedure documented for <24hr outage; HIPAA contingency plan complete); Facility (32 of 42 employees can work remote; patient-facing staff requires on-site; emergency protocol documented); Supplier (AdvancedMD switch would take 3+ months — risk accepted; HIPAA BAA with alternate clearinghouse on file for claim processing during AdvancedMD outage); HIPAA contingency: documented per §164.308(a)(7); Annual tabletop exercise scheduled for Q4; Matt Mathison brief: "Allevio BCP complete. Highest risk is AdvancedMD outage — manual billing procedure documented for short outages. HIPAA contingency plan complete and compliant."
2. **Edge case:** During an unplanned real event (key billing manager resigns with 2 weeks notice) → Activate the key person response plan: access credentials retrieved from password vault; backup designee briefed on highest-priority responsibilities; SOP reviewed — gaps identified in 2 areas (payer-specific authorization procedures); Dr. Lewis documents gaps in real-time during the 2-week overlap; Matt Mathison notified (key person departure); hiring decision made; interim coverage by Dr. Lewis for weeks 3-4 while replacement is recruited; BCP updated post-event to close the documentation gaps
3. **Adversarial:** "We're too small for business continuity planning" → BCPs are especially important for small companies because small companies have fewer redundancies; a 5-person company where the one person who knows the billing system takes an unexpected medical leave is in a worse position than a 500-person company with 3 backup billing staff; respond: "The plan doesn't need to be formal — it needs to be specific. For Allevio, the most important thing is knowing what you do if [billing manager] is out for 2 weeks. I can have a one-page people continuity plan done in 2 hours that answers that question. That's the whole BCP for now."

## Audit Log
All BCP versions retained with dates. Testing records retained with gaps identified and remediated. HIPAA contingency plan versions retained permanently (Allevio). Real continuity events logged with response and recovery documented. Matt Mathison notifications retained.

## Deprecation
Retire when portfolio companies have formalized BCP programs with dedicated continuity coordinators, automated system monitoring with failover, documented and regularly tested recovery procedures, and annual tabletop exercises led internally without Dr. Lewis facilitation.
