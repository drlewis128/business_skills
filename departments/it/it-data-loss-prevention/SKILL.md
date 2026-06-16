---
name: it-data-loss-prevention
description: "Implement data loss prevention policies and PHI/PII classification. Use when the user says 'data loss prevention', 'DLP', 'data classification', 'PHI classification', 'PII protection', 'sensitive data', 'data leakage', 'prevent data exfiltration', 'classify data', 'data handling policy', 'data protection policy', 'prevent unauthorized data sharing', 'sensitive data controls', or 'information classification'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--data-type <PHI|PII|financial|all>] [--action <classify|policy|audit|configure-dlp>]"
---

# IT Data Loss Prevention

Implement data classification and DLP (Data Loss Prevention) controls at MBL portfolio companies — ensuring that sensitive data (PHI, PII, financial records, trade secrets) is identified, protected, and not shared with unauthorized parties. DLP at portfolio scale is primarily about knowing where sensitive data lives and ensuring that technical controls prevent accidental or intentional exposure.

## When to Use
- Implementing DLP controls for the first time at a portfolio company
- Conducting a data classification audit — where does sensitive data live?
- A data exposure incident occurred (email sent to wrong person, file shared externally)
- HIPAA Security Rule compliance review at Allevio (ePHI handling controls)
- Before deploying a new system that will store sensitive data
- Annual data classification review

## DLP Framework

```
Data classification tiers:
  Tier 1 — Public: Information that can be freely shared externally
    Examples: Marketing materials, published press releases, public pricing
    
  Tier 2 — Internal: Business information for internal use; not harmful if exposed
    Examples: Internal processes, meeting notes, project status
    
  Tier 3 — Confidential: Business-sensitive; harm if exposed but not regulatory
    Examples: Financial projections, M&A targets, vendor contracts, salary data
    Controls: Encrypt in transit and at rest; need-to-know access; no external sharing without authorization
    
  Tier 4 — Restricted: Regulatory or high-harm if exposed
    Examples: PHI (Allevio), PII (SSN, DOB, financial account numbers), LP returns (HIVE)
    Controls: Encryption at rest + in transit; access controls; DLP monitoring; audit logging
    
DLP controls by platform (Microsoft 365):
  Microsoft Purview DLP: Included in M365 Business Premium (or E3/E5 with compliance add-on)
    Can detect: SSNs, credit card numbers, ePHI patterns, financial data patterns
    Actions: Block, alert, or require justification when sensitive data is detected in:
      - Email (Outlook): Block sending PHI/SSN to external addresses
      - Teams: Warn before sharing sensitive content externally
      - SharePoint/OneDrive: Alert when files with sensitive content are shared externally
      
  Endpoint DLP (part of Purview):
    Monitor and restrict: Copy to USB, upload to unauthorized cloud, print sensitive data
    
PHI-specific controls (Allevio — HIPAA):
  ePHI may not be transmitted via personal email — ever
  ePHI at rest: Must be encrypted (AdvancedMD handles this; any file copies must be encrypted)
  ePHI in transit: TLS encryption required for any ePHI transmission
  ePHI on devices: Only on MDM-enrolled, encrypted devices (it-endpoint-manager)
  DLP policy: Alert when email with PHI patterns (name + DOB, name + MRN) sent externally
  
Common DLP gaps at small companies:
  1. PHI in email: Clinical staff emailing patient info to themselves at personal email
  2. SSNs in spreadsheets: Employee/patient SSNs in unencrypted Excel files on SharePoint
  3. Financial data in Teams: Sensitive financial data shared in Teams channels with guests
  4. USB transfer: Employees copying sensitive files to personal USB drives
  5. Shadow IT: Files uploaded to personal Dropbox/Google Drive (bypasses all controls)
```

## Output Format

```markdown
# Data Loss Prevention Assessment — <Company Name>
**Date:** [Date] | **Data classification framework version:** [1.0]
**DLP platform:** [Microsoft Purview / Other / None]
**PHI organization:** [Yes — Allevio / No]
**Prepared by:** Dr. John Lewis

---

## Data Classification Inventory

| Data type | Classification tier | Where it lives | Access controls | DLP monitoring | Risk |
|-----------|-------------------|---------------|----------------|--------------|------|
| PHI — patient records | Tier 4 Restricted | AdvancedMD | Role-based ✅ | Purview DLP | 🟢 |
| PHI — copied to SharePoint | Tier 4 Restricted | SharePoint /Clinical/ | ??? | None | 🔴 |
| Employee SSNs | Tier 4 Restricted | HR Excel on SharePoint | Only HR | None | 🟡 |
| LP returns / financials | Tier 4 Restricted | QuickBooks | QB access control | None | 🟡 |
| M&A targets / deal data | Tier 3 Confidential | Shared drive | Limited | None | 🟡 |
| Contract templates | Tier 2 Internal | SharePoint | All staff | N/A | 🟢 |
| Marketing materials | Tier 1 Public | SharePoint | Public | N/A | 🟢 |

**Tier 4 data without DLP monitoring:** [N types — priority to configure]

---

## DLP Policy Status

| Policy | Platform | Trigger | Action | Status |
|--------|---------|---------|--------|--------|
| PHI in external email | M365 Purview | PHI pattern (name+DOB, MRN) detected in email to external recipient | Block + alert Dr. Lewis | Configured / Not configured |
| SSN in external email | M365 Purview | SSN pattern in email | Block + alert | |
| Credit card in email | M365 Purview | PAN pattern | Block | |
| External file share with sensitive content | Purview/SharePoint | Tier 3/4 file shared externally | Require justification | |
| USB file copy | Endpoint DLP | Copy to removable drive | Alert + log | |

**DLP policies not yet configured:** [List — with priority]

---

## Data Exposure Risk Findings

| Finding | Location | Data type | Risk | Action |
|---------|---------|---------|------|--------|
| PHI found in uncontrolled SharePoint folder | SharePoint /Shared Documents/ | PHI | 🔴 High | Move to controlled folder; enable DLP; audit who has access |
| Employee SSNs in unencrypted Excel | SharePoint /HR/ | PII/SSN | 🟡 | Move to HR-only folder; consider encrypting file |
| Former employee has OneDrive access | OneDrive | All company files | 🔴 | Revoke access; check for exfiltration before departure |
| Patient records emailed to personal Gmail | Email logs | PHI | 🔴 HIPAA breach | Incident response; breach assessment (it-security-incident-responder) |

---

## Recommended DLP Configuration (Priority Order)

| Priority | Policy | Platform | Effort | Cost |
|---------|--------|---------|--------|------|
| 1 | PHI in external email — block | M365 Purview | 2 hrs | Included in M365 |
| 2 | SSN in external email — block | M365 Purview | 30 min | Included |
| 3 | External share of sensitive SharePoint content — require justification | SharePoint/Purview | 2 hrs | Included |
| 4 | USB copy monitoring — alert | Endpoint DLP (Intune) | 4 hrs | M365 Business Premium |
| 5 | Data classification labels — apply Tier labels to SharePoint libraries | Purview labels | 4 hrs | Included |

---

## Matt Mathison Brief (if PHI exposure found or critical DLP gap)

[Company] DLP assessment: [Key finding — e.g., "PHI found in uncontrolled SharePoint; DLP not monitoring"]. Action: [Configuring Purview DLP this week; moving PHI to controlled folder]. Risk resolved by [Date].
```

## Output Contract
- PHI exposure findings trigger immediate incident response — if the DLP assessment finds that PHI was transmitted to an unauthorized party (email to personal address, shared externally), this is not a DLP finding; it is a HIPAA breach event that triggers it-security-incident-responder; the 60-day HIPAA notification clock starts from discovery date; Dr. Lewis does not resolve PHI exposure findings as IT cleanup items
- DLP policy blocks are configured before testing — M365 Purview DLP can run in "audit only" mode (log without blocking) or "block" mode; for PHI and SSN transmissions, block mode is configured immediately rather than spending weeks in audit mode; audit mode exists to tune false positives on less sensitive data types, not as a reason to delay blocking PHI exposure
- Data classification is not a one-time exercise — data classification is reviewed annually because data moves; a folder created "just for this project" becomes a permanent home for sensitive data that no one manages; the annual review finds these accumulations and addresses them; the first classification exercise is the hardest; subsequent annual reviews are 2-3 hours
- HITL required: Dr. Lewis configures DLP policies; PHI exposure findings escalate to it-security-incident-responder (not resolved as DLP cleanup); data classification results reviewed with CEO; Tier 4 data locations approved by Dr. Lewis; DLP false positives reviewed monthly and policies tuned by Dr. Lewis

## System Dependencies
- **Reads from:** Microsoft Purview compliance center, SharePoint content audit, OneDrive activity logs, email flow logs (M365), Entra ID access logs, Intune endpoint DLP logs
- **Writes to:** Data classification inventory (SharePoint/Ops/<Company>/IT/DataGovernance/); DLP policy log; exposure incident records; HIPAA breach assessment (Allevio — if PHI exposure); data handling policy
- **HITL Required:** Dr. Lewis configures DLP; PHI exposure triggers incident response; DLP policy changes by Dr. Lewis; Tier 4 data location changes require Dr. Lewis; CEO reviews classification inventory annually

## Test Cases
1. **Golden path:** Allevio DLP implementation → Purview DLP configured: (1) PHI pattern in external email → block + alert Dr. Lewis; (2) SSN in external email → block; (3) Sensitive SharePoint content shared externally → require justification; Endpoint DLP: USB copy → alert and log; Test: send test email with fake SSN to external address → blocked ✅; send test PHI pattern internally → allowed ✅ (internal OK); SharePoint: run content search for SSN patterns → found 1 HR file with employee SSNs → moved to HR-only folder with access restricted; Allevio summary: PHI blocking active; known sensitive data locations documented; HIPAA ePHI controls compliant
2. **Edge case:** DLP policy is blocking a legitimate business process — clinical staff cannot email AdvancedMD patient summaries to a referring physician's office → Evaluate: is this a HIPAA-compliant transmission? (referring physician = treatment purpose = permitted disclosure); configure an exception: the referring physician domain is whitelisted for PHI transmission after Dr. Lewis and Privacy Officer review and document the business justification; do not simply turn off the DLP policy; add the exception narrowly (specific domain, not all external)
3. **Adversarial:** "DLP will break clinical workflows at Allevio — staff need to be able to send patient information" → HIPAA permits PHI disclosure for treatment purposes; the DLP policy is configured to block transmissions to personal email addresses (gmail.com, yahoo.com), not to whitelisted clinical partners; staff who need to send to external clinical partners work through Dr. Lewis to whitelist those domains; the business need for PHI sharing does not mean PHI sharing is uncontrolled — it means the controls are calibrated to allow legitimate use while blocking unauthorized disclosure

## Audit Log
Data classification inventory retained annually. DLP policy configurations retained with effective dates. DLP policy alerts and blocks retained 90 days. PHI exposure events retained permanently (HIPAA). False positive reviews and policy tuning retained. Legitimate DLP exceptions documented with business justification and Privacy Officer sign-off (Allevio).

## Deprecation
Retire when portfolio companies have dedicated data governance programs with information security managers who own classification, DLP policy management, and annual review — with Dr. Lewis reviewing exception reports. HIPAA ePHI controls at Allevio are permanent requirements regardless of internal DLP maturity.
