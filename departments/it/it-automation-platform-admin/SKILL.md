---
name: it-automation-platform-admin
description: "Administer automation platforms — Power Automate, Zapier, Krista.ai. Use when the user says 'automation platform', 'Power Automate', 'Zapier', 'Krista.ai admin', 'automation admin', 'workflow automation', 'automation platform administration', 'manage automations', 'automation governance', 'automation inventory', 'broken automation', 'automation error', or 'automation platform management'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--platform <PowerAutomate|Zapier|Krista|all>] [--entity <company name>] [--action <audit|configure|troubleshoot|govern>]"
---

# IT Automation Platform Admin

Administer automation platforms at MBL portfolio companies — managing Power Automate, Zapier, Krista.ai, and other workflow automation tools. Automation platforms are force multipliers that operate in the background; when they work, nobody notices; when they fail silently (the most common failure mode), business processes break without anyone knowing why. Good automation platform administration means every automation is documented, monitored, and has an owner who is notified when it fails.

## When to Use
- Automation platform health review — what automations are running? Any errors?
- A specific automation has stopped working or is behaving incorrectly
- Governing automations built by employees without IT involvement (shadow automations)
- A new automation needs to be built and deployed through the formal process
- Evaluating automation platform costs — are Zapier/Power Automate licenses optimized?
- Krista.ai integration health check and administration

## Automation Platform Framework

```
Automation platforms in the MBL ecosystem:
  Microsoft Power Automate (included in M365 Business Premium):
    → M365-native; Outlook/Teams/SharePoint triggers and actions
    → Available to all M365 users — risk: employees can create automations without IT oversight
    → Premium connectors (QuickBooks, Salesforce, etc.) require Power Automate Premium license (~$15/user/mo)
    → Governance: Set environment policies; require naming conventions; audit flows in admin center
    
  Zapier (if in use at portfolio companies):
    → Wide connector library; easier for non-technical users
    → Risk: Employees can create Zaps with company data in personal accounts
    → Enterprise license: Centralized admin; company-owned Zaps; SSO
    → Monitor: Check company Zapier account for all active Zaps and their owners
    
  Krista.ai (MBL primary AI orchestration platform):
    → Dr. Lewis is the primary administrator and integration builder
    → Connects: Microsoft 365, QuickBooks, Bill.com, Monday.com, GoHighLevel
    → All Krista skills and integrations are documented by Dr. Lewis
    → PHI handling: No PHI flows through Krista unless HIPAA BAA in place
    
Automation governance principles:
  1. Every automation has an owner — if the owner leaves, the automation gets reviewed
  2. Every automation has a name and description — "Flow 47" is not a name
  3. Every automation has error alerts — silent failures are worse than no automation
  4. No autonomous financial actions — any automation that moves money requires HITL
  5. PHI automations at Allevio require HIPAA review before deployment
  6. Automations are documented — what triggers it, what it does, what systems it touches
  
Shadow automations (built without IT oversight):
  Power Automate: Any M365 user can build flows — check admin center for unapproved flows
  Zapier: Employees may have personal Zapier accounts with company connections
  Discovery: Monthly Power Automate admin review; Zapier account audit; employee survey
  Resolution: Review with owner; approve, modify, or decommission
  
Automation health monitoring:
  Power Automate: Check run history for failures; set up admin alerts for high-failure-rate flows
  Zapier: Task history; error notifications configured at Zap level
  Krista.ai: Integration logs reviewed by Dr. Lewis; error alerts configured
  Target: 0 silent failures; all errors alerted and acknowledged within 24 hours
```

## Output Format

```markdown
# Automation Platform Administration Report — <Company Name>
**Date:** [Date] | **Platforms:** [Power Automate / Zapier / Krista.ai]
**Total automations:** [N] | **Active:** [N] | **Failing/Error:** [N] | **Unapproved:** [N]
**Prepared by:** Dr. John Lewis

---

## Platform Health Summary

| Platform | Status | Active automations | Errors (30-day) | Cost/month |
|----------|--------|------------------|----------------|-----------|
| Power Automate | Healthy / Issues | [N] | [N errors] | $[X] (included in M365) |
| Zapier | Healthy / Issues | [N] | [N] | $[X]/month |
| Krista.ai | Healthy / Issues | [N skills/integrations] | [N] | $[X]/month |

---

## Automation Catalog

| Automation name | Platform | Owner | Trigger | Action | Systems | Status | PHI? |
|----------------|---------|-------|---------|--------|---------|--------|------|
| Meeting → Monday.com task | Power Automate | Dr. Lewis | Teams meeting ends | Creates Monday task | Teams + Monday | Active ✅ | No |
| Bill.com approval alert | Power Automate | Dr. Lewis | Bill.com bill created | Email to approver | Bill.com + Outlook | Active ✅ | No |
| Krista weekly meeting summary | Krista.ai | Dr. Lewis | Teams transcript | Summary + push to Monday | Teams + Monday | Active ✅ | No |
| [Unapproved — "My Flow 3"] | Power Automate | [Employee] | [Unknown] | [Unknown] | [Unknown] | Unapproved 🔴 | Unknown |

**Unapproved automations discovered:** [N — require review within 1 week]

---

## Error Report (30 days)

| Automation | Platform | Error count | Last error | Error type | Status |
|------------|---------|------------|-----------|-----------|--------|
| [Automation name] | Power Automate | 12 | [Date] | HTTP 401 — connection expired | Fix: Re-authorize QB connection |
| [Automation name] | Zapier | 3 | [Date] | Timeout on webhook | Investigate webhook endpoint |

**Silent failures (automation ran but produced incorrect output):** [N — if any — describe]

---

## PHI Automation Review (Allevio)

| Automation | PHI data flow? | HIPAA reviewed? | BAA in place? | Status |
|------------|-------------|----------------|-------------|--------|
| AdvancedMD → Monday (appointment count — aggregate) | No PHI — aggregate only | Dr. Lewis verified | N/A | Approved ✅ |
| [Any automation with patient data] | YES — PHI | Requires review | Required | 🔴 Stop until reviewed |

---

## Cost Optimization

| Platform | Current plan | Users | Monthly cost | Optimization |
|----------|------------|-------|------------|-------------|
| Power Automate | M365 included | 18 users | $0 | [N] unused premium flows — downgrade to standard |
| Zapier | Team plan | [N Zaps] | $[X] | [N] Zaps inactive 60+ days — disable |
| Krista.ai | [Plan] | [N] | $[X] | |

---

## Matt Mathison Brief (if Krista.ai integration failure or major automation error)

[Entity] automation: [N] automations; [N] failing. Key issue: [Description]. Fix: [Action and timeline]. Impact: [What business process is affected].
```

## Output Contract
- Silent failures are the primary risk — an automation that fails with an error notification is manageable; an automation that runs and produces incorrect output or stops running without anyone noticing is dangerous; every automation is configured to alert Dr. Lewis on failure; the monthly review checks that alert configurations are still active (they can be accidentally disabled); silent failures are found via the monthly run history audit
- No autonomous financial actions — no automation moves money, sends wire transfers, approves invoices above the controller's authority, or initiates payroll without a human approval checkpoint; Bill.com approval workflows are configured with HITL; no automation bypasses the authority matrix in it-erp-coordinator; this includes Krista.ai integrations
- PHI automations at Allevio are reviewed before deployment — an automation that touches clinical data (even just an appointment count from AdvancedMD) is reviewed by Dr. Lewis before it goes live; if it involves identifiable PHI, it requires a HIPAA review and the receiving system must have a BAA; aggregate data (appointment count, total revenue) does not constitute PHI; identifiable data (patient name, DOB, MRN) always does
- HITL required: Dr. Lewis administers all automation platforms; new Krista.ai integrations by Dr. Lewis; Power Automate policy settings by Dr. Lewis; PHI automation review by Dr. Lewis + Privacy Officer (Allevio); financial automations require HITL approval checkpoints by Dr. Lewis configuration; unapproved automations reviewed by Dr. Lewis within 1 week; Matt Mathison for Krista.ai integration failures or business-impacting automation errors

## System Dependencies
- **Reads from:** Power Automate admin center (M365), Zapier admin account, Krista.ai admin console, automation run histories, error logs
- **Writes to:** Automation catalog (SharePoint/Ops/MBL/IT/Automation/); error alert configuration; PHI automation review log (Allevio); automation change log
- **HITL Required:** Dr. Lewis administers all platforms; new automations require Dr. Lewis review; PHI automations require Dr. Lewis + Privacy Officer review (Allevio); financial automations have HITL approval checkpoints; unapproved automations reviewed within 1 week

## Test Cases
1. **Golden path:** Monthly Power Automate admin review for MBL HoldCo → 8 active flows; 6 running cleanly ✅; 1 failing: "Meeting → Monday task" — OAuth token expired for Monday.com connection → re-authorize in 10 minutes ✅; 1 unapproved: "My Flow" built by an employee — investigation shows it sends a weekly Excel report from SharePoint to a personal email — review with employee: is the SharePoint data confidential? If yes: decommission; if not: document and approve; Cost: all flows using standard connectors (included in M365 Business Premium) — no premium connectors needed; Total review time: 45 minutes; all issues resolved
2. **Edge case:** Krista.ai meeting summary integration starts producing summaries for meetings that should not be summarized (executive compensation discussions) → Immediate fix: add meeting exclusion criteria to the Krista trigger configuration (exclude meetings with "compensation" or "personnel" in the title, or limit to explicitly opted-in meetings); review: who received summaries that should not have been generated? Were any sent to participants who should not have seen them? This is a data sensitivity issue, not a security breach, but it requires prompt correction and communication; update trigger configuration; test with a meeting that should be excluded — confirm it is not summarized ✅
3. **Adversarial:** An employee has built 15 automations in Power Automate connecting company systems to personal Gmail and Dropbox → This is a shadow automation and data exfiltration risk; Power Automate Conditional Access policies can be set to block connections to personal (consumer) cloud storage and personal email; configure policy in the Power Automate admin center to block these connectors for standard users; work with the employee to rebuild the automations using approved company connectors (OneDrive, SharePoint, company Outlook); the personal connections are disabled; if sensitive data was already sent to personal storage, initiate a data governance review

## Audit Log
Monthly automation platform review reports retained. Automation catalog maintained with creation and modification dates. Error reports retained 90 days. PHI automation reviews retained permanently (Allevio). Unapproved automation discovery and resolution retained. Financial automation HITL checkpoint configuration retained. Krista.ai integration change log retained.

## Deprecation
Retire when MBL Partners has dedicated automation engineers or an iPaaS administrator who manages the automation catalog and platform administration — with Dr. Lewis retaining ownership of Krista.ai integrations and reviewing PHI automation approvals at Allevio. Financial automation HITL controls are permanent requirements regardless of automation engineering maturity.
