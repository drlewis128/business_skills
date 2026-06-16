---
name: it-offboarding-deprovision
description: "Revoke IT access and recover equipment from departing employees. Use when the user says 'employee leaving', 'offboarding IT', 'deprovision access', 'revoke access', 'terminated employee', 'employee separation', 'access revocation', 'off-board employee', 'remove user access', 'departing employee IT', 'exit IT checklist', 'equipment recovery', 'deactivate account', or 'former employee access'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--type <voluntary|involuntary>] [--last-day <date>]"
---

# IT Offboarding Deprovision

Revoke IT access and recover equipment from departing employees at MBL portfolio companies — ensuring that separated employees cannot access company systems, data, or accounts after their last day. Offboarding is the most consistently under-executed IT control at small companies: departed employees retain active credentials, EHR access, and email access for weeks or months. A former employee with active credentials is a material security and liability risk.

## When to Use
- An employee is leaving the company (voluntary or involuntary)
- An employee's role changes and access needs to be reduced
- A contractor engagement is ending
- Auditing former employee access — are there any active accounts that should be disabled?

## Deprovision Framework

```
Timing — the most critical variable:
  Voluntary separation: Revoke all access on last day of employment (end of business)
  Involuntary termination: Revoke all access BEFORE or AT THE MOMENT the employee is informed
    → Do NOT wait; the termination conversation and account revocation happen simultaneously
    → HR coordinates timing with Dr. Lewis; Dr. Lewis prepares the revocation batch before the meeting
    → Dr. Lewis is on standby to execute within minutes of the termination meeting beginning
    → On-site: Dr. Lewis executes during the HR meeting; remote: executes the moment the call ends
    
  Failed timing = access revocation after a terminated employee has had time to react.
  This is the highest-risk scenario in offboarding.
  
Access revocation sequence (execute in this order):
  1. Microsoft Entra ID: Disable account (immediate — blocks all M365 SSO connections)
     → Revoke all active sessions (sign out everywhere)
     → Remove from admin roles (if any)
     
  2. Block M365 sign-in: Separate from disable (belt and suspenders)
  
  3. Revoke role-specific systems (simultaneously or immediately after #1-2):
     → QuickBooks: Deactivate user
     → Bill.com: Deactivate user
     → AdvancedMD (Allevio): Terminate user — PHI access revoked
     → GoHighLevel (CRM): Deactivate user
     → Covercy (HIVE): Terminate user
     → Any other system with independent credentials
     
  4. Change shared credentials (if the employee knew any):
     → Shared Wi-Fi passwords (office codes)
     → Any shared service accounts they had access to
     
  5. Forward or archive email:
     → Forward to manager (30-60 days) or set auto-reply
     → Archive mailbox before deletion
     
  6. Equipment recovery:
     → Request return of company laptop, phone, hardware tokens, keycards
     → Remote wipe as backup if equipment is not returned within 5 business days
     → If PHI on Allevio device: wipe immediately; initiate breach assessment if device not returned
     
  7. Revoke physical access:
     → Building keycards / key fob access disabled
     → Alarm codes changed if the employee knew them
     
  PHI access at Allevio (HIPAA):
    Former employee with active AdvancedMD access to PHI after separation = HIPAA violation
    Same-day revocation is required — not next business day
    Audit: check AdvancedMD access log after revocation to confirm no post-separation logins
```

## Output Format

```markdown
# IT Offboarding Checklist — <Employee Name>
**Company:** [Company] | **Role:** [Title] | **Last day:** [Date]
**Separation type:** Voluntary / Involuntary
**Executed by:** Dr. John Lewis | **Executed:** [Date, Time]
**Status:** Complete / In progress

---

## Access Revocation

| System | Access revoked? | Time | Method | Notes |
|--------|---------------|------|--------|-------|
| Microsoft Entra ID — account disabled | Yes/No | [HH:MM] | Entra ID admin > Block sign-in + revoke sessions | |
| M365 license | Yes/No | [HH:MM] | License removed (mailbox preserved 30 days) | |
| QuickBooks | Yes/No | [HH:MM] | Deactivated in QB admin | |
| Bill.com | Yes/No | [HH:MM] | Deactivated | |
| AdvancedMD (Allevio) | Yes/No | [HH:MM] | User terminated | PHI access: revoked same day ✅ |
| GoHighLevel | Yes/No | [HH:MM] | | |
| Covercy (HIVE) | Yes/No | [HH:MM] | | |
| Monday.com | Yes/No | [HH:MM] | | |
| Password manager (1Password/Bitwarden) | Yes/No | [HH:MM] | Removed from vault | |
| VPN access | Yes/No | [HH:MM] | VPN account disabled | |
| [Other system] | | | | |

**Shared credentials changed:**
- [ ] Office Wi-Fi code (if employee knew): Changed [Date]
- [ ] [Any shared service accounts]: Credential rotated [Date]

**Admin roles removed:**
- [ ] Entra ID admin role: [Role] — removed
- [ ] [Other admin roles]: removed

---

## Email and Data Handling

| Action | Status | Date | Notes |
|--------|--------|------|-------|
| Out-of-office reply set | Yes/No | [Date] | "Please contact [Manager name]" |
| Email forwarding to manager | Yes/No | [Date] | Forward to [Manager email] for [N] days |
| Mailbox archived | Yes/No | [Date] | Retained [N] days before deletion |
| OneDrive content transferred | Yes/No | [Date] | Transferred to manager / [Location] |
| Shared drives — access reviewed | Yes/No | [Date] | No data exfiltration detected |

---

## Equipment Recovery

| Item | Status | Expected return | Returned? | Action if not returned |
|------|--------|----------------|---------|----------------------|
| Laptop — [Asset ID] | Recovered / Outstanding | [Date] | Yes/No | Remote wipe by [Date] |
| Mobile phone — [Asset ID] | | | | |
| Hardware token (YubiKey) | | | | |
| Building keycard | | | | |

**Remote wipe triggered:** Yes / No — [Date, Reason]

---

## HIPAA Post-Separation Verification (Allevio)

- [ ] AdvancedMD access revoked same day: [Date, Time]
- [ ] AdvancedMD audit log reviewed: No post-separation logins confirmed ✅
- [ ] PHI device returned/wiped: [Status]
- [ ] If PHI device not returned: HIPAA breach assessment initiated

---

## Audit Trail

| Action | Executed | Time | By |
|--------|---------|------|-----|
| Entra ID account disabled | [Date] | [Time] | Dr. Lewis |
| AdvancedMD access terminated | [Date] | [Time] | Dr. Lewis |
| Equipment return confirmed | [Date] | [Time] | Dr. Lewis |
| All systems verified clear | [Date] | [Time] | Dr. Lewis |
```

## Output Contract
- Involuntary termination access revocation is simultaneous with the termination conversation — Dr. Lewis has the revocation prepared (browser tabs open, ready to execute) before the HR meeting begins; execution happens during or immediately after the meeting, not after the employee has left the building; a terminated employee with active credentials who has 30 minutes of access has enough time to exfiltrate data, send damaging emails, or delete records; this timing is non-negotiable and is coordinated with HR for every involuntary separation
- PHI access at Allevio is same-day revocation regardless of separation type — a former Allevio employee with active AdvancedMD credentials after their last day has unauthorized access to PHI; this is a HIPAA violation; Dr. Lewis revokes AdvancedMD access on the last day for voluntary separations and simultaneously for involuntary; a post-separation audit of AdvancedMD access logs confirms no access occurred after revocation
- Equipment recovery is tracked and followed up — if a departing employee does not return equipment, Dr. Lewis follows up within 5 business days and initiates a remote wipe if the device is not returned; for Allevio devices that accessed PHI, a non-returned device triggers a HIPAA breach assessment; equipment has a replacement cost and a data security risk; the remote wipe is not optional
- HITL required: Dr. Lewis executes all deprovisioning; involuntary timing coordinated with HR same day; Allevio AdvancedMD revocation and post-separation audit by Dr. Lewis; PHI device breach assessment by Dr. Lewis + Privacy Officer; equipment recovery tracked by Dr. Lewis; audit log filed by Dr. Lewis

## System Dependencies
- **Reads from:** HR separation notice, employee system access inventory (from provisioning record), AdvancedMD access logs (Allevio), Intune device records, equipment inventory
- **Writes to:** Offboarding checklist (SharePoint/Ops/<Company>/IT/Access/Offboarding/); access revocation log (permanent); HIPAA post-separation audit record (Allevio — permanent); equipment recovery log; breach assessment trigger (if PHI device unreturned)
- **HITL Required:** Dr. Lewis executes all deprovisioning; involuntary timing by Dr. Lewis + HR (simultaneous); PHI access revocation audit by Dr. Lewis (Allevio); breach assessment by Dr. Lewis + Privacy Officer if PHI device unreturned; all actions logged with timestamps

## Test Cases
1. **Golden path:** Allevio billing specialist voluntary resignation — last day Friday → Dr. Lewis notified Monday; prepares access revocation list; Friday 5 PM: Entra ID account disabled + sessions revoked; AdvancedMD billing access terminated; QB read-only deactivated; Bill.com deactivated; GoHighLevel removed; password manager vault access removed; out-of-office set; email forwarding to billing manager for 30 days; OneDrive: no action needed (no critical files); equipment: laptop returned at end of day — verified in Intune as returned; AdvancedMD audit log: no logins after 5 PM Friday ✅; HIPAA post-separation check: clean ✅; checklist filed; complete by Friday 5:30 PM
2. **Edge case:** Involuntary termination of Allevio clinical coordinator who has AdvancedMD access to patient PHI → HR schedules termination meeting for Thursday 10 AM; Dr. Lewis is briefed Wednesday — prepares all revocation actions (browser tabs open for Entra ID, AdvancedMD, all systems); Thursday 10:00 AM: termination meeting begins; Dr. Lewis is available via phone; 10:05 AM: Dr. Lewis receives signal from HR → executes all revocations immediately; Entra ID: disabled 10:06 AM; AdvancedMD: terminated 10:06 AM; by 10:10 AM all access revoked; employee escorted out at 10:30 AM; post-separation AdvancedMD audit: no logins after 10:06 AM ✅; keycard deactivated; equipment collected; HIPAA record filed
3. **Adversarial:** A manager says "keep [former employee]'s account active for 2 more weeks so we can access their files" → This request violates the security and HIPAA policy; the correct response: "We will immediately transfer their OneDrive files to you and forward their email to you for 60 days — but their account must be disabled now; having an active account for a former employee is a security risk and, at Allevio, a HIPAA risk; file access is handled through transfer, not by keeping the account active"

## Audit Log
All offboarding checklists retained permanently (regulatory and legal reasons). Access revocation timestamps retained permanently. HIPAA post-separation audit records retained permanently (Allevio). Equipment recovery records retained. Remote wipe records retained with reason and date. PHI breach assessments triggered by non-returned devices retained permanently.

## Deprecation
Retire when portfolio companies have dedicated HR/IT coordinators who execute offboarding from an HRIS workflow — with Dr. Lewis reviewing exception reports and approving sensitive access revocations. Involuntary termination timing coordination and PHI access revocation at Allevio require Dr. Lewis involvement regardless of internal HR/IT maturity.
