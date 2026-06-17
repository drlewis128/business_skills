---
name: rc-bcp-builder
description: "Build and maintain the business continuity plan — BIA, RTO/RPO, and crisis leadership. Use when the user says 'business continuity', 'BCP', 'business continuity plan', 'disaster recovery plan', 'BIA', 'business impact analysis', 'RTO', 'RPO', 'recovery time objective', 'recovery point objective', 'continuity planning', 'crisis leadership', 'key person risk', 'backup procedures', 'operational resilience', 'HIPAA contingency plan', or 'continuity of operations'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <build|assess|test|update>] [--scope <full|IT|clinical|financial|all>]"
---

# Business Continuity Plan Builder

Build and maintain the business continuity plan (BCP) for MBL portfolio companies — ensuring that critical business functions can continue or rapidly recover in the event of a significant disruption: system failure, ransomware, facility loss, key person loss, or natural disaster. Business continuity planning at portfolio scale is practical, not academic: identify the processes that must continue to keep the company alive (patient care at Allevio, revenue at all entities), determine what is needed to continue them, and document the plan clearly enough that it can be executed by someone other than the person who wrote it. At Allevio, HIPAA requires a formal contingency plan (§164.308(a)(7)) — this is not optional.

## When to Use
- Building or updating the BCP for a portfolio company
- A disruptive incident has occurred — execute the relevant BCP section
- Testing the BCP (annual tabletop or live test)
- A key person risk is identified — document succession and coverage
- HIPAA contingency plan requirement needs to be documented or updated
- Preparing for buyer diligence — BCP is commonly requested

## BCP Framework

```
Business Impact Analysis (BIA) — foundation of BCP:
  Identify critical functions: What processes MUST continue for the company to survive?
    Allevio: Patient scheduling; clinical documentation; billing/claims submission; payroll; HIPAA access controls
    HIVE: Production reporting; LP reporting; financial reporting; safety compliance
    All entities: Payroll (miss one cycle = staff emergency); financial reporting; customer/patient communication
    
  Impact analysis per function:
    Time to impact: How long can this function be down before serious harm occurs?
    Financial impact: Revenue loss per day of downtime
    Regulatory impact: HIPAA (Allevio) — 0-tolerance for prolonged PHI system unavailability; HIVE — production reporting deadlines
    
  Recovery objectives:
    RTO (Recovery Time Objective): Maximum acceptable time to restore the function after disruption
    RPO (Recovery Point Objective): Maximum acceptable data loss (how old can the recovered data be?)
    
    MBL standard RTOs by function class:
      Payroll: 4-hour RTO (cannot miss payroll)
      Patient scheduling + billing (Allevio): 4-hour RTO
      Clinical documentation (Allevio): 8-hour RTO (paper backup for short outages)
      Financial reporting: 24-hour RTO
      Email/communication: 4-hour RTO (Microsoft 365 — highly available)
      File storage (SharePoint): 24-hour RTO
      
    MBL standard RPOs by data class:
      Financial transactions (QuickBooks, Bill.com): 4-hour RPO (daily backup minimum; cloud-hosted primary)
      PHI / clinical records (AdvancedMD — Allevio): 1-hour RPO (cloud-hosted EHR; AdvancedMD handles this; verify their SLA)
      Payroll: 24-hour RPO
      
HIPAA Contingency Plan (Allevio — §164.308(a)(7)):
  Required elements:
    Data backup plan: How ePHI is backed up; location; frequency
    Disaster recovery plan: How ePHI systems are restored; tested annually
    Emergency mode operation plan: How Allevio maintains clinical operations while systems are being restored (paper backup procedures)
    Testing and revision: Annual test of the contingency plan
    Applications and data criticality analysis: Which systems are most critical to patient care
    
Key person risk:
  Identify: Which individuals are critical to business operations with no documented backup?
  Common critical persons: CEO; controller/CFO; Dr. Lewis (IT, compliance, AI); lead clinical provider (Allevio)
  Mitigation: Document their key responsibilities; create cross-training plan; ensure systems are accessible to backups
  
BCP structure:
  Section 1: Activation criteria and leadership team
  Section 2: Critical functions and RTOs/RPOs
  Section 3: Communication plan (internal and external)
  Section 4: IT recovery procedures
  Section 5: Facility and workplace alternatives
  Section 6: Vendor and supplier continuity
  Section 7: HIPAA contingency plan (Allevio)
  Section 8: Key person succession
  Section 9: Test and exercise schedule
```

## Output Format

```markdown
# Business Continuity Plan — <Company Name>
**Version:** [X.X] | **Effective date:** [Date] | **Owner:** Dr. John Lewis
**CEO:** [Name] | **Last tested:** [Date]

---

## Section 1: BCP Activation

**Activation criteria (any one of):**
- IT system outage >4 hours affecting critical functions
- Facility inaccessible (fire, flood, security incident)
- Key person unavailable for >1 business day (unplanned)
- Ransomware or significant cybersecurity incident
- Natural disaster affecting operations

**BCP Leadership Team:**
| Role | Primary | Backup | Contact |
|------|---------|--------|---------|
| BCP Coordinator | Dr. John Lewis | CEO [Name] | 602-880-6491 |
| CEO | [Name] | [Backup] | |
| IT Lead | Dr. Lewis / MSP | [MSP contact] | |
| Clinical Lead (Allevio) | [Lead Provider] | [Backup Provider] | |
| Payroll | [Controller] | Dr. Lewis | |

---

## Section 2: Business Impact Analysis

| Critical function | RTO | RPO | Impact if down | Recovery procedure |
|-----------------|-----|-----|--------------|------------------|
| Patient scheduling (Allevio) | 4 hrs | 1 hr | Patient harm; revenue loss | AdvancedMD recovery; paper scheduling as backup |
| Payroll | 4 hrs | 24 hrs | Employee emergency | Payroll processor backup; manual override |
| Clinical documentation (Allevio) | 8 hrs | 1 hr | Care continuity risk; HIPAA | AdvancedMD recovery; paper charting |
| Billing / claims (Allevio) | 24 hrs | 4 hrs | Revenue delay | Manual billing; clearinghouse direct |
| Email / Teams | 4 hrs | N/A | Communication disruption | Mobile fallback; personal email emergency |
| Financial reporting | 24 hrs | 4 hrs | Investor / lender delay | QuickBooks cloud recovery; offline reports |

---

## Section 3: Communication Plan

**During a disruption:**
- Internal: Dr. Lewis → CEO → all staff via: Teams (if available) / text/call tree (if not)
- Patients (Allevio): Phone calls for same-day appointments; website notice if outage >4 hours
- Lenders/investors: CEO notification within 24 hours if disruption affects financial reporting
- Vendors: Contact key vendors (MSP, payroll processor, clearing house) within 2 hours of confirmed major outage
- Regulatory (HIPAA): If PHI availability is impacted >24 hours, assess contingency mode compliance; Dr. Lewis + attorney

**Communication tree:**
[Dr. Lewis] → [CEO] → [Clinical Lead (Allevio)] → [All clinical staff]
                     → [Controller] → [Finance/Billing]
                     → [IT/MSP] → [Systems recovery]

---

## Section 4: IT Recovery Procedures

| System | Hosted by | Recovery procedure | RTO | Contact |
|--------|---------|------------------|-----|---------|
| AdvancedMD (EHR) | AdvancedMD cloud | AdvancedMD SLA covers; escalate to AM support | Per AM SLA | AM support: [#] |
| Microsoft 365 | Microsoft cloud | M365 admin portal; escalate to MSP | 2 hours | MSP: [Contact] |
| QuickBooks Online | Intuit cloud | Access from any browser; backup export weekly | 1 hour | Intuit support |
| Bill.com | Bill.com cloud | Mobile access available; backup approvals via email | 2 hours | Bill.com support |
| Local file server (if any) | On-premises | Azure Backup restore; MSP leads | 4-8 hours | MSP: [Contact] |
| SharePoint | Microsoft cloud | M365 recovery; admin portal | 2 hours | MSP |

**Annual backup test:** [Date last tested] | Next test: [Date]

---

## Section 5: HIPAA Contingency Plan (Allevio)

**Data backup:**
AdvancedMD: Cloud-hosted; AdvancedMD maintains backup per their BAA; RPO 1 hour per SLA
SharePoint (PHI documents): Azure geo-redundant storage; RPO 1 hour
Backup verification: Annual test — restore a non-PHI-containing backup to verify process

**Emergency mode operation plan:**
During AdvancedMD outage: Paper scheduling forms (located at front desk); paper clinical notes; scan and upload on restoration
During complete IT outage: No PHI systems accessible; schedule essential appointments by phone only; no new clinical documentation until systems restored; HIPAA minimum necessary enforced on paper records

**Testing:** Annual tabletop exercise; backup restore test; paper backup drill (Allevio clinical)
**Last contingency plan test:** [Date] | **Result:** [Pass / Issues found]

---

## Section 6: Key Person Succession

| Key Person | Role | Critical responsibilities | Backup | Documentation |
|-----------|------|------------------------|--------|--------------|
| Dr. John Lewis | IT, AI, Compliance, Systems | All IT decisions; HIPAA compliance; QuickBooks admin | CEO (limited); MSP (IT only) | System credentials in 1Password vault (CEO has emergency access) |
| [CEO] | Operations, Financial decisions | CEO approvals; investor relations; bank signatory | Board / Matt Mathison | Operating agreement |
| [Lead Provider] | Clinical care (Allevio) | Patient care; clinical oversight | [Backup provider] | Coverage agreement |
| [Controller] | Financial operations | AP, payroll, reconciliation | Dr. Lewis (emergency) | Documented procedures in SharePoint |

---

## Section 7: Annual BCP Test Schedule

| Test type | Frequency | Last tested | Next test | Owner |
|-----------|---------|-----------|---------|-------|
| Tabletop exercise (all teams) | Annual | [Date] | [Date] | Dr. Lewis |
| IT backup restore test | Annual | [Date] | [Date] | Dr. Lewis + MSP |
| Paper backup drill (Allevio clinical) | Annual | [Date] | [Date] | Clinical Lead |
| Communication tree test | Annual | [Date] | [Date] | Dr. Lewis |

---

## Matt Mathison Brief (after BCP activation or annual test with significant findings)

[Company] BCP status: Last tested [Date]. [Test finding / Activation summary]. RTO achieved: [Yes / No — actual recovery time]. Gaps identified: [List]. Actions: [Remediation]. HIPAA contingency plan: [Compliant / Gap]. Next scheduled test: [Date].
```

## Output Contract
- The BCP is written to be executed by someone other than Dr. Lewis — this is the key design constraint; the IT recovery procedures, the communication tree, and the HIPAA emergency mode procedures must be clear enough that the CEO can execute them if Dr. Lewis is unavailable; procedures that require Dr. Lewis's specific knowledge to interpret are not BCP procedures — they are personal knowledge that has not been documented; Dr. Lewis documents: where to find system credentials (1Password vault), who the MSP contact is, how to restore from Azure Backup, and what the HIPAA emergency mode procedures are, in language that a competent non-IT executive can follow
- HIPAA contingency plan testing is a regulatory requirement, not a best practice — §164.308(a)(7)(ii)(D) requires testing and revision of the contingency plan; "testing" means: actually running the backup restore procedure to verify it works; doing a tabletop exercise at Allevio where clinical staff practice paper documentation; verifying that emergency mode procedures are understood; the test results are documented; if the test reveals that the backup restore fails (common finding — backups that are never tested are often corrupted or incomplete), the fix is immediate; the test documentation is the HIPAA audit evidence
- RTO and RPO are targets, not guarantees — the BCP defines what the organization is trying to achieve; the actual recovery capability is tested annually; if the RTO for payroll is 4 hours but the actual recovery capability is 12 hours, the BCP needs to be updated to reflect reality and a plan developed to close the gap; Dr. Lewis does not write optimistic RTO/RPOs that cannot be achieved — he tests them and updates the plan to reflect actual capability
- HITL required: Dr. Lewis manages BCP and coordinates recovery; CEO activates BCP for major events; Matt Mathison notified for any BCP activation that affects investor-reportable operations or triggers HIPAA breach notification; attorney for any BCP activation that involves PHI unavailability >24 hours or regulatory notification; test results reviewed by CEO annually

## System Dependencies
- **Reads from:** IT infrastructure documentation (it-disaster-recovery-planner), AdvancedMD SLA, Azure Backup status, MSP contacts, HIPAA contingency plan (rc-hipaa-security-program), key person roster (HR), vendor contacts (rc-third-party-compliance)
- **Writes to:** Business Continuity Plan document (SharePoint/<Company>/BCP/); HIPAA contingency plan (Allevio — required standalone); test records; CEO and Matt Mathison BCP status reports; key person succession documentation
- **HITL Required:** Dr. Lewis manages BCP; CEO activates; Matt Mathison for investor-reportable disruptions; attorney for HIPAA PHI unavailability >24 hours; test results to CEO annually

## Test Cases
1. **Golden path:** Annual BCP tabletop exercise for Allevio → Scenario: AdvancedMD is unavailable for 8 hours due to cloud provider outage; Participants: Dr. Lewis, CEO, Clinical Lead, Controller; Tabletop walkthrough: Communication tree activated (15 minutes) ✅; Paper scheduling deployed for incoming patients (30 minutes) ✅; Clinical Lead directs paper charting (2 hours into outage) ✅; Billing team on standby — no claims submitted during outage ✅; Dr. Lewis contacts AdvancedMD support and establishes estimated restoration time (1 hour) ✅; System restored at T+8; paper records scanned and entered into AdvancedMD; Gap found: no paper scheduling forms in the satellite office (only main location had them); Action: paper forms distributed to satellite office and logged in BCP; HIPAA contingency plan test: documented; annual requirement met; test record filed
2. **Edge case:** The controller goes on unexpected medical leave — who processes payroll? → Key person risk activated; BCP Section 6 consulted; Controller's responsibilities: AP, payroll, bank reconciliation; documented backup: Dr. Lewis (emergency); immediate actions: Dr. Lewis gains access to payroll system (credentials in 1Password vault — CEO has emergency access); contacts payroll processor for next cycle; ensures correct hours submitted; CEO reviews and approves payroll run; bank reconciliation: CEO takes over until controller returns or replacement hired; lesson: controller's procedures were documented sufficiently but the payroll processor's emergency contact protocol was not in the BCP — added; risk register updated with key person risk for controller role
3. **Adversarial:** "We have cloud systems — we don't need a BCP" → Cloud systems provide high availability for the system itself; they do not plan for: the user who can't log in (credential reset procedure); the ransomware attack that encrypts local caches and prevents sync; the vendor outage where the cloud service itself fails (AdvancedMD has had outages); the key person who is the only one who knows how to use the system in an emergency; the regulatory requirement (HIPAA contingency plan is not optional); the BCP covers the people-and-process layer above the technology; cloud availability does not eliminate the need for documented recovery procedures, communication plans, or key person succession

## Audit Log
BCP document retained with all versions (permanently). Annual test records retained permanently. BCP activation records retained permanently with timeline. HIPAA contingency plan test records retained 6 years (HIPAA). CEO and Matt Mathison BCP communications retained. Key person succession documentation updated at least annually.

## Deprecation
Retire when portfolio companies have formal business continuity programs with dedicated BCP owners and professional testing protocols — with Dr. Lewis providing oversight of the HIPAA contingency plan at Allevio and IT recovery procedures for all portfolio companies.
