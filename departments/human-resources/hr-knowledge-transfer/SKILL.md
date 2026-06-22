---
name: hr-knowledge-transfer
description: "Manage knowledge transfer when an employee departs from MBL Partners portfolio companies. Use when the user says 'knowledge transfer', 'knowledge handoff', 'role handoff', 'document the role', 'capture tribal knowledge', 'transition knowledge', 'what does this person know', 'what will we lose when they leave', 'transition plan', 'handover plan', 'handoff plan', 'succession knowledge', 'role documentation', 'process documentation departure', 'undocumented processes', 'knowledge capture', 'institutional knowledge', 'single point of failure', 'key person dependency', 'backfill knowledge', 'what do we need to document before they leave', 'transition document', or 'role runbook'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--employee <name>] [--entity <mbl|allevio|hive|column6>] [--role <role-title>] [--timeline <weeks>] [--risk <critical|medium|low>]"
---

# HR Knowledge Transfer

Capture critical role knowledge before a departing employee's last day — identifying undocumented processes, key relationships, system dependencies, and institutional context that would be lost without a structured handoff. The goal is not to document everything; it is to document the non-obvious things that a new hire or interim owner cannot derive from looking at existing systems.

## When to Use
- An employee resignation or departure is confirmed
- A role has been identified as a single point of failure
- A critical role is being restructured or eliminated
- Building resilience against key person dependency

## Knowledge Transfer Framework

```
RISK ASSESSMENT (first step):
  Assign knowledge transfer risk level:
    CRITICAL: role involves customer relationships; unique technical expertise; sole operator
      of a key system; financial signing authority; regulatory compliance function
      Timeline: begin immediately; minimum 2 weeks of overlap if possible
    MEDIUM: role has some undocumented processes but most work is system-based
      Timeline: 1-week intensive documentation
    LOW: role is well-documented; work is system-traceable; processes are standard
      Timeline: standard offboarding checklist only
      
  Entity-specific critical roles:
    Allevio: Care Coordinator (member relationships); AdvancedMD admin; HIPAA Coordinator
    HIVE: Lease Manager (landowner relationships); Royalty Accountant (Covercy)
    Column6: Account Manager (agency relationships); campaign ops lead (live campaigns)
    MBL: Dr. Lewis is the single point of failure — acknowledged; mitigated via documentation cadence

KNOWLEDGE CAPTURE AREAS:

  1. KEY PROCESSES (what you do that isn't in a system):
     Weekly/monthly tasks that have no documented SOP
     Recurring reports that are built manually
     Vendor or client contacts that exist only in personal email
     
  2. KEY RELATIONSHIPS:
     Client/customer contacts: primary contacts, decision makers, relationship history
     Vendor contacts: who to call; special arrangements; relationship context
     Internal cross-team contacts: "person X in finance knows Y about Z — reach out to them"
     Allevio: landowner-equivalent context is employer HR director relationships
     HIVE: landowner relationship history; any pending negotiations; any sensitivities
     Column6: agency buyer names; booking preferences; make-good history
     
  3. SYSTEM KNOWLEDGE:
     Undocumented features or workarounds in key systems
     Login credentials stored in departing employee's personal password manager (must be transferred)
     Any integrations or automations the departing employee set up personally
     
  4. INSTITUTIONAL CONTEXT:
     History of any ongoing disputes or sensitivities
     Decisions made in the past that are not documented but inform current approach
     "Why do we do it this way?" context for non-obvious processes
     
  5. IN-FLIGHT WORK:
     Open projects and their current status
     Upcoming deadlines in the 60 days after last day
     Any commitments made to clients or vendors that are undocumented
     
DOCUMENTATION FORMATS:
  Role runbook: step-by-step for recurring processes (use bullets; not paragraphs)
  Relationship register: client/vendor name; contact; relationship context; last interaction
  In-flight project tracker: project name; status; next action; owner after departure
  
CREDENTIAL TRANSFER:
  No shared credentials retained by departing employee after last day
  Password manager access: transferred or deprovisioned (not just removed from employee's device)
  Allevio PHI system credentials: deprovisioned at termination (hr-offboarding-manager)
  Any personal API keys or tokens: rotated before last day

INTERIM OWNERSHIP:
  Every critical area of knowledge must have a named interim owner before last day
  Interim owner attends final handoff meeting with departing employee
  Dr. Lewis assigns interim owners; entity CEO approves
```

## Output Format

```markdown
# Knowledge Transfer Plan — [Employee Name] | [Role] | [Entity] — Last Day: [Date]
**Risk level:** Critical / Medium / Low | **Prepared by:** Dr. Lewis

---

## Key Processes to Document

| Process | Frequency | Documentation status | Interim owner |
|---------|-----------|--------------------|--------------| 
| [Process 1] | Weekly | In progress / Complete | [Name] |
| [Process 2] | Monthly | | |

---

## Key Relationships

| Relationship | Contact | Context | Handoff to |
|-------------|---------|---------|-----------|
| [Employer X] (Allevio) | HR Director [Name], [email] | Renewal coming in March | [CSM Name] |
| [Landowner] (HIVE) | [Name], [phone] | Lease expires Aug; relationship sensitive | [Lease Mgr] |

---

## In-Flight Work

| Project | Status | Next action | Due date | Owner after departure |
|---------|--------|------------|---------|----------------------|
| [Project 1] | 60% complete | [Next step] | [Date] | [Name] |

---

## Credential Transfer Status
- [ ] Password manager shared entries transferred / deprovisioned
- [ ] PHI system credentials deprovisioned (Allevio)
- [ ] API keys/tokens rotated
- [ ] Personal email forwarding for client contacts (if applicable; legal check)

---

## Handoff Meetings Completed
- [ ] Interim owner briefed on all critical areas: [Date]
- [ ] Relationship handoff calls scheduled: [Dates]
- [ ] Final walkthrough with departing employee: [Date]
```

## Output Contract
- Interim owners are named before last day with no unowned areas — a knowledge transfer that completes documentation but leaves ownership ambiguous fails its purpose; every critical process, relationship, and in-flight project has a named interim owner who has attended the handoff meeting before the departing employee's last day; "the team will figure it out" is not acceptable for any Critical risk area
- Credentials are transferred or rotated, not abandoned — a departing employee's credentials that remain active are a security risk (former employee still has access) and a productivity risk (the team cannot access what they need); Dr. Lewis requires a credential sweep as part of every Critical and Medium risk departure; any credential that was personal (set up in the departing employee's personal account) and cannot be transferred must be re-created by the new or interim owner before the departing employee's last day
- Allevio relationship handoffs include only aggregate context — any client relationship context involving a specific member's health information must be handled with HIPAA compliance; the employer relationship context (aggregate utilization; GRR; open issues) is documented; individual member cases are not included in a knowledge transfer document; the clinical team handles clinical continuity per their own protocol
- HITL required: knowledge transfer risk assessment → Dr. Lewis assigns risk level; interim owner assignment → Dr. Lewis assigns; entity CEO approves; Critical risk areas → Dr. Lewis confirms all documented before last day; credential transfer/rotation → Dr. Lewis confirms; Allevio: PHI system credential deprovisioning → Dr. Lewis confirms per hr-offboarding-manager

## System Dependencies
- **Reads from:** hr-offboarding-manager (last day; departure type; access revocation timeline); role profile (hr-job-profiler — context on what the role does); entity CEO (interim owner designation decisions); GoHighLevel (client contact records for handoff); Monday.com (in-flight project tracker)
- **Writes to:** Role runbook (SharePoint → HR → Knowledge Transfer → [Entity] → [Role]); relationship register (SharePoint); in-flight project tracker (Monday.com); credential transfer log; Dr. Lewis completion confirmation; entity CEO interim owner confirmation
- **HITL Required:** Risk level → Dr. Lewis; interim owner → Dr. Lewis assigns + CEO approves; Critical areas completed → Dr. Lewis confirms; credential transfer → Dr. Lewis confirms; Allevio PHI deprovisioning → Dr. Lewis confirms

## Test Cases
1. **Golden path:** HIVE Lease Manager resigns with 2 weeks notice. Risk: Critical (active lease negotiations; landowner relationships). Dr. Lewis: role runbook created for lease renewal process; relationship register built (12 active landowners; 3 with upcoming renewals noted); in-flight work: 2 pending lease negotiations documented with negotiation position and landowner context; all credentials transferred to HIVE CEO (interim owner); final handoff meeting Day 10; clean handoff by last day.
2. **Edge case:** Column6 Account Manager resigns but key agency contacts only exist in their personal phone's contacts app, not in GoHighLevel → Dr. Lewis: "We have a gap. Before last day, I need all agency contacts imported into GoHighLevel — I'll work with them this week to do that data entry. If they're unwilling, I'll request a written contact list as part of the offboarding requirement. Personal devices containing company contacts is a data governance issue we'll address in hr-data-governance going forward."
3. **Adversarial:** Departing employee refuses to participate in knowledge transfer meetings → Dr. Lewis: "I understand this is a difficult transition. The knowledge transfer isn't optional — it's a reasonable notice-period expectation. If participation continues to be refused, I'll note that in the separation record (relevant if they're seeking a reference or rehire eligibility), and I'll work with the team to reconstruct what we can from systems data. But I'd prefer to handle this professionally. Can I schedule a call today to understand what's making this difficult?"

## Audit Log
All knowledge transfer plans retained (SharePoint). Interim owner assignments retained. Critical risk area completion confirmation retained. Credential transfer logs retained. Allevio PHI deprovisioning records retained (HIPAA audit).

## Deprecation
Knowledge transfer templates reviewed annually. Entity-specific relationship register formats updated when systems change (GoHighLevel, Covercy, AdvancedMD).
