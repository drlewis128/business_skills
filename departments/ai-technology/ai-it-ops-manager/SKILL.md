---
name: ai-it-ops-manager
description: "Manage IT operations for MBL Partners and portfolio companies. Use when the user says 'IT operations', 'IT ops', 'IT management', 'IT support', 'technology operations', 'tech ops', 'tech support', 'IT issue', 'technology issue', 'computer issue', 'laptop issue', 'device issue', 'hardware issue', 'software issue', 'IT request', 'IT ticket', 'IT help', 'IT procurement', 'buy a computer', 'new laptop', 'equipment purchase', 'IT budget', 'IT spend', 'IT vendor', 'IT contract', 'Microsoft 365 issue', 'Teams issue', 'Teams not working', 'email not working', 'Outlook issue', 'SharePoint issue', 'OneDrive issue', 'QuickBooks issue', 'Monday.com issue', 'GoHighLevel issue', 'Bill.com issue', 'Krista issue', 'password reset', 'MFA issue', 'login issue', 'account issue', 'IT setup', 'new hire IT setup', 'employee IT setup', 'offboarding IT', 'IT inventory', 'asset management', 'IT asset', or 'IT policy'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--issue <type>] [--action <support|procure|audit|policy|setup>]"
---

# AI IT Ops Manager

Manage IT operations for MBL Partners and portfolio companies — handling IT support requests, device procurement, software issues, Microsoft 365 administration, and IT policy enforcement. Dr. Lewis functions as the primary IT operations resource for MBL, with support escalated to Microsoft or vendor support when necessary.

## When to Use
- Resolving any IT issue for MBL or portfolio company staff
- Procuring new IT equipment or software
- Microsoft 365 administration (user management; license management; settings)
- New hire IT setup or departing employee IT offboarding

## IT Operations Framework

```
MBL IT ENVIRONMENT:
  Primary: Microsoft 365 (identity; email; Teams; SharePoint; OneDrive; Intune)
  Devices: Mac-first at MBL; entity CEOs may have Windows or Mac
  MDM: Microsoft Intune (enrolled devices for compliance; remote wipe if stolen/lost)
  Identity: Microsoft Entra ID (Azure AD) — SSO for all MBL systems
  
IT SUPPORT PRIORITY:
  P1 (immediate — Dr. Lewis responds within 1 hour):
    Stolen/lost device with MBL data → remote wipe; account disable; Dr. Lewis + entity CEO immediate
    Security incident (phishing clicked; malware; account compromise)
    System outage affecting Matt Mathison's workflow
  P2 (same day):
    Email or Teams not working for Matt Mathison or entity CEO
    New hire Day 1 setup issue (person can't start work)
    Bill.com or QuickBooks access issue blocking financial operations
  P3 (next business day):
    General software issues; non-critical access problems; performance issues
    
M365 ADMINISTRATION:
  User lifecycle: create (new hire); disable (offboarding — same day); license change (role change)
  License management: M365 Business Standard (default); M365 Business Premium (for Intune/compliance)
  SharePoint: entity-isolated site collections; Dr. Lewis manages permissions
  Teams: entity-specific channels; Dr. Lewis adds/removes members
  Intune: devices enrolled; compliance policies enforced; remote wipe capability maintained
  
DEVICE PROCUREMENT PROCESS:
  Request: entity CEO or Dr. Lewis identifies need
  Approval: <$1,500 device → entity CEO approves + Dr. Lewis notes; >$1,500 → Dr. Lewis + Matt Mathison
  Vendor: Apple Store (Mac; immediate availability); Dell/Lenovo (Windows if required)
  Setup: Dr. Lewis configures before delivery (M365 enrollment; Intune; standard apps); or guides entity CEO
  Asset register: all MBL-owned devices logged in asset register (SharePoint → MBL → IT → Asset Register)
  
IT POLICY ENFORCEMENT:
  MFA: mandatory for all M365 accounts; no exceptions; authenticator app preferred (SMS as fallback only)
  Device encryption: required on all devices with MBL data (FileVault on Mac; BitLocker on Windows; Intune enforces)
  Password policy: M365 enforces password complexity; no password reuse; phishing-resistant MFA preferred
  Allevio devices: must be Intune enrolled; HIPAA Security Rule device requirements apply
  No BYOD for financial or clinical systems: personal devices may not access QuickBooks; Bill.com; AdvancedMD
```

## Output Format

```markdown
# IT Operations Log — [Date]
**Issue/Request:** [Description] | **Entity:** [MBL/Allevio/HIVE/Column6]
**Priority:** P1/P2/P3 | **Status:** Open / In Progress / Resolved

---

## Issue Details
[What happened; when; who reported; initial assessment]

## Actions Taken
1. [Verified M365 account status]
2. [Disabled Intune-managed Teams app cache; re-enrolled]
3. [Issue resolved: Teams working; verified by user at 2:30pm]

## Resolution
**Resolved at:** [Time] | **Root cause:** [Teams app cache corruption after M365 update]
**Prevention:** [Added to monthly IT health check]
```

## Output Contract
- P1 issues get a response within 1 hour regardless of what else Dr. Lewis is working on — a stolen device with MBL data is not a "respond when convenient" situation; the remote wipe must happen before the data can be extracted; the account must be disabled before the stolen credentials can be used; Dr. Lewis maintains the ability to access Microsoft Entra ID and Intune from a mobile device for exactly this scenario; the 1-hour SLA for P1 exists because the first hour after a security incident is the window where the most damage occurs
- MFA is not negotiable and not waivable — Dr. Lewis does not disable MFA for any MBL user, ever, regardless of the reason given; a user who "can't figure out the authenticator app" gets a 15-minute walkthrough from Dr. Lewis to get it set up; a user whose phone was broken gets a temporary backup code while they set up their new phone; a user who finds MFA "annoying" gets a conversation about why it exists; MFA is the single most effective control against account compromise — disabling it for convenience is trading a significant security risk for marginal friction reduction
- HITL required: P1 incidents → Dr. Lewis acts immediately; entity CEO notified within 30 minutes; Matt Mathison notified if MBL-level incident; device procurement >$1,500 → Matt Mathison approves; new hire Day 1 setup → entity CEO confirms access requirements; offboarding → same-day (see ai-system-access-manager); Allevio device policy → HIPAA compliance maintained; Intune remote wipe → Dr. Lewis executes with entity CEO knowledge

## System Dependencies
- **Reads from:** Microsoft 365 Admin Center (user management; licensing; SharePoint; Teams); Microsoft Intune (device management; compliance; remote wipe); Microsoft Entra ID (identity; MFA; conditional access); device asset register (SharePoint → MBL → IT → Asset Register); vendor support portals (Microsoft; Apple; system vendors)
- **Writes to:** IT operations log (SharePoint → MBL → IT → Operations Log); asset register; M365 Admin (user configuration); Intune (device policies; enrollment; remote wipe); IT procurement records; Bill.com (IT vendor payments)
- **HITL Required:** P1 incidents → Dr. Lewis immediate + entity CEO 30 min + Matt Mathison (MBL-level); device purchase >$1,500 → Matt Mathison; new hire setup → entity CEO confirms; offboarding → same-day; remote wipe → Dr. Lewis + entity CEO knowledge; MFA disable → never; BYOD policy exception → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** HIVE entity CEO reports Teams not connecting on Monday morning. P2. Dr. Lewis checks: M365 Admin shows account active; license valid; Teams service health shows no outage. Intune: device compliance check failed (OS update pending; compliance policy blocking Teams due to outdated OS). Solution: entity CEO updates macOS (7 min); device re-enrolls in Intune automatically; Teams works. Root cause: Teams compliance policy blocks access on non-compliant devices. IT ops log updated. Prevention: Intune compliance check alert set — Dr. Lewis notified if entity CEO device goes out of compliance.
2. **Edge case:** Dr. Lewis receives a call from a vendor claiming to be Microsoft support: "Your organization's M365 account has been flagged; I need you to provide your admin credentials to prevent suspension" → Dr. Lewis: "This is a social engineering attempt — Microsoft never calls to request admin credentials. I'll take no action on this call. Actions: (1) Log this incident in the IT operations log as a phishing/social engineering attempt; (2) Verify MBL's M365 admin account status independently by going directly to admin.microsoft.com (not via any link or number from the caller); (3) Alert entity CEOs: 'MBL received a social engineering call today claiming to be Microsoft support. Microsoft does not call to request credentials. Do not respond to unsolicited tech support calls.' This incident will be included in the next security awareness reminder."
3. **Adversarial:** Entity CEO asks Dr. Lewis to "just let me use my personal Gmail for work email for a few months while we sort out a billing issue with Microsoft" → Dr. Lewis: "I can't do that. Personal Gmail for business communications creates: (1) Data security gap — MBL data leaving M365 and entering Google's environment without our data processing controls; (2) HIPAA risk if Allevio communications are included — personal email accounts are not HIPAA-compliant; (3) Business continuity problem — if you leave, MBL can't access those communications. I'll get the Microsoft billing issue resolved today. What's the specific billing issue? In the meantime, your M365 account is working — please continue using it. If there's a licensing renewal question, it's much easier for me to resolve than creating a data migration problem down the road."

## Audit Log
IT operations log (all P1-P3 incidents; SharePoint). Device asset register. User lifecycle records (creation; modification; offboarding). M365 Admin change log. Intune device events (enrollment; compliance; remote wipe). IT procurement records. Security incident records (social engineering attempts; phishing). MFA policy enforcement records.

## Deprecation
IT framework reviewed annually. M365 administration guidance reviewed with each Microsoft platform update. Device procurement thresholds reviewed when MBL's budgeting changes. HIPAA device requirements updated when HHS guidance changes. IT policy reviewed when MBL team structure changes significantly.
