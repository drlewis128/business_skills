---
name: sec-dlp-manager
description: "Manage Data Loss Prevention (DLP) controls for MBL portfolio companies. Use when the user says 'DLP', 'data loss prevention', 'data leakage prevention', 'prevent data leakage', 'prevent data loss', 'data exfiltration', 'stop data exfiltration', 'sensitive data sharing', 'unauthorized data sharing', 'block sensitive email', 'block sensitive file sharing', 'block PHI email', 'PHI email controls', 'prevent PHI sharing', 'classify data', 'data classification controls', 'sensitivity labels', 'Microsoft Purview', 'Purview DLP', 'M365 DLP', 'Microsoft DLP', 'information protection', 'Microsoft Information Protection', 'MIP', 'prevent sharing outside company', 'external sharing controls', 'SharePoint sharing controls', 'OneDrive sharing controls', 'Teams sharing controls', 'prevent copying PHI', 'USB DLP', 'USB data loss', 'block USB', 'endpoint DLP', 'block personal email', 'block Gmail', 'sensitive data policy', 'data handling policy enforcement', 'DLP policy', 'DLP alert', 'DLP incident', 'DLP violation', 'data protection policy', or 'sensitive data monitoring'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--scope <email|sharepoint|endpoint|all>] [--action <configure|review|respond|report>]"
---

# Sec DLP Manager

Manage Data Loss Prevention (DLP) controls for MBL portfolio companies — configuring M365 Purview DLP policies, sensitivity labels, and endpoint controls that prevent sensitive data (PHI, financial data, LP data, M&A information) from leaving authorized channels. DLP is the technical enforcement arm of the data classification policy (sec-data-classification-manager); classification defines what's sensitive, DLP prevents it from being shared unsafely.

## When to Use
- Configuring DLP policies for a new entity in M365 Purview
- Responding to a DLP policy alert (sensitive data shared)
- Reviewing DLP policy effectiveness (is it catching real violations without excessive false positives?)
- Implementing Purview sensitivity labels to protect classified documents

## DLP Management Framework

```
M365 PURVIEW DLP — MBL CONFIGURATION:

  Microsoft Purview DLP is included in M365 Business Premium (and E3/E5)
  Scope: Exchange email; SharePoint; OneDrive; Teams; Endpoint (Windows devices via Intune)
  
  SENSITIVITY LABELS (configure before DLP policies):
    Labels are metadata tags applied to documents and emails that drive DLP rules
    MBL label hierarchy:
    
    Label: Restricted (Tier 1)
      Color: Red
      Applies to: ePHI documents; LP financial reports; M&A deal docs; API credentials
      Auto-apply trigger: credit card numbers; SSNs; medical record numbers (built-in classifiers)
      Manual: Dr. Lewis or authorized user can apply manually
      DLP action: block external sharing; require justification; alert Dr. Lewis
      
    Label: Confidential (Tier 2)
      Color: Orange
      Applies to: deal memos; employee records; client pricing; employer group data (Allevio)
      Auto-apply: M365 built-in trainable classifier (contracts; financial statements)
      DLP action: block sharing with personal email; warn on external sharing; audit
      
    Label: Internal (Tier 3)
      Color: Yellow
      Applies to: internal policies; procedures; operational data
      DLP action: warn if shared externally (don't block — override allowed)
      
    Label: Public (Tier 4)
      Color: Green
      Applies to: marketing materials; published content; public-facing docs
      DLP action: none
      
  DLP POLICIES (configure per entity — M365 Compliance Center → Data Loss Prevention):
  
    Policy 1 — PHI Protection (Allevio):
      Detects: SSNs; medical record numbers; health insurance ID numbers; provider NPI numbers
      Scope: Exchange; SharePoint; OneDrive; Teams; Endpoint
      If detected externally (outside @allevio.com domain):
        Block: emails with PHI to external recipients (require OME if sending externally)
        Alert: Dr. Lewis immediately
        Notify user: "This email may contain health information — please verify."
        High confidence threshold: report to Dr. Lewis + entity CEO for HIPAA review
        
    Policy 2 — Financial Data (all entities):
      Detects: credit card numbers; bank account numbers; ABA routing numbers
      Scope: Exchange; SharePoint; OneDrive; Teams
      If detected externally:
        Block: emails containing payment card data to external recipients
        Warn: user that the content may contain sensitive financial information
        Alert: Dr. Lewis
        
    Policy 3 — LP Data (HIVE):
      Detect: Covercy LP report labels; LP-specific terminology in documents
      Scope: Exchange; SharePoint; OneDrive; Teams
      If detected externally (to non-LP recipients):
        Warn: "This document may contain LP information — verify the recipient is an authorized LP"
        Alert: Dr. Lewis
        Block: sharing with external parties not listed in the approved LP contact list
        
    Policy 4 — Confidential Label Enforcement:
      Detects: documents labeled Confidential (Tier 2) or Restricted (Tier 1)
      Scope: Exchange; SharePoint; OneDrive; Teams; Endpoint
      If shared externally without justification:
        Warn or block (Restricted = block; Confidential = warn + require justification)
        Alert: Dr. Lewis (all Restricted violations; Confidential when override used)
        
  ENDPOINT DLP (requires Intune MDM + M365 Business Premium):
    Blocks: copying Restricted or Confidential labeled files to USB drives
    Blocks: printing Restricted documents to unmanaged printers
    Blocks: uploading Restricted documents to personal cloud storage (Dropbox; personal Google Drive)
    Allows: SharePoint; OneDrive (managed); Teams (managed)

DLP ALERT RESPONSE:
  Low severity (Policy override by user with justification): review weekly; audit trail only
  Medium severity (External share of Confidential data): Dr. Lewis reviews within 48 hours
  High severity (PHI detected outside Allevio; Financial data external; Restricted data external):
    Dr. Lewis reviews within 4 hours
    HIPAA 4-factor assessment if PHI involved (sec-incident-responder)
    Entity CEO notified if actual data breach determined
    
DLP FALSE POSITIVE MANAGEMENT:
  False positives: DLP blocks legitimate business activity → user frustration → policy bypass attempts
  Balance: start with Policy Tips (warn; no block) → gather data → tighten after 30 days
  Tuning: Dr. Lewis reviews false positive rate monthly; adjust confidence thresholds
  Override process: user documents justification; Dr. Lewis reviews overrides monthly
```

## Output Format

```markdown
# DLP Status Report — [Entity] | [Period] | [Date]
**Purview DLP:** Active | **Sensitivity labels deployed:** ✅/❌ | **Endpoint DLP:** ✅/❌

---

## DLP Policy Status
| Policy | Status | Alerts this period | False positives | Actions |
|--------|--------|-------------------|-----------------|---------|
| PHI Protection (Allevio) | 🟢 Active | [N] | [N] | [Reviews pending] |
| Financial Data | 🟢 Active | [N] | [N] | |
| LP Data (HIVE) | 🟢 Active | [N] | [N] | |
| Confidential Label | 🟢 Active | [N] | [N] | |

---

## High-Severity Alerts (require Dr. Lewis review)
| Date | User | Policy triggered | Data type | Action taken |
|------|------|-----------------|----------|-------------|
| [Date] | [User] | PHI Protection | SSN detected in email | Blocked; HIPAA review |
```

## Output Contract
- DLP policies must start in Policy Tips (warn) mode before switching to block mode — a DLP policy set to block from day one will immediately disrupt legitimate business workflows (the auto-classifier will generate false positives; users will be blocked from sending legitimate emails; IT will be flooded with exception requests; entity CEO will receive complaints; security leadership will be pressured to disable the policy); the correct deployment approach: (1) Deploy policies in Policy Tips mode for 30 days (show users a warning but don't block); (2) Dr. Lewis reviews all alerts from the 30-day period — which are true positives (real sensitive data shared externally)? which are false positives (legitimate business activity flagged)? (3) Tune confidence thresholds to reduce false positives; (4) Switch to block mode for high-confidence violations; maintain warn mode for lower-confidence triggers; users are trained on what the warnings mean and why they appear
- PHI DLP alerts are pre-screened for HIPAA breach potential — when M365 Purview DLP detects PHI in an email or document being shared externally by an Allevio user, Dr. Lewis receives an alert within 4 hours; the review question is: was this actual ePHI (individually identifiable health information) or a false positive (the SSN classifier triggered on a random number sequence)? If actual ePHI: HIPAA 4-factor breach risk assessment is initiated (sec-incident-responder); the 60-day notification clock may have started; the entity CEO is notified same day; if false positive (SSN classifier triggered on a fake example number in a training document): document as false positive; adjust classifier threshold; no HIPAA assessment required; Dr. Lewis documents the determination for the compliance evidence file
- HITL required: DLP policy creation → Dr. Lewis configures in M365 Purview; entity CEO informed of new policies affecting user workflow; DLP policy mode switch (warn → block) → Dr. Lewis reviews 30-day Policy Tips data; entity CEO confirms acceptable false positive rate before switch; PHI DLP alert (high severity) → Dr. Lewis reviews within 4hr; HIPAA assessment if actual PHI; entity CEO notified if breach determination; Restricted data external share alert → Dr. Lewis reviews within 4hr; entity CEO if confirmed unauthorized share; DLP policy exception request → Dr. Lewis reviews; entity CEO approves if business need is legitimate

## System Dependencies
- **Reads from:** M365 Compliance Center (Purview DLP — policy configuration; alert dashboard; override log); M365 Purview (sensitivity labels; labeled document inventory); sec-data-classification-manager (data classification tiers — drives label policy); Intune (endpoint DLP capability — device compliance; policy deployment); alert email (Dr. Lewis receives DLP high-severity alerts); sec-incident-responder (HIPAA breach assessment trigger for PHI DLP alerts); DLP false positive log (Dr. Lewis maintained — tuning history)
- **Writes to:** DLP policy configuration (M365 Compliance Center → Data Loss Prevention — policies per entity); sensitivity label configuration (Purview → Information Protection → Labels); DLP status report (SharePoint → [Entity] → Security → DLP → [Period]-Status); DLP alert response log (SharePoint → [Entity] → Security → DLP → Alert-Log.xlsx — date; user; policy; data; action; determination); entity CEO DLP briefing (quarterly + any high-severity determination); HIPAA breach assessment record (sec-incident-responder trigger — PHI DLP alert)
- **HITL Required:** DLP policy creation → Dr. Lewis configures; entity CEO informed; mode switch (warn → block) → Dr. Lewis 30-day review + entity CEO confirmation; PHI DLP alert → Dr. Lewis within 4hr; HIPAA assessment if actual PHI; entity CEO notified if breach; Restricted data alert → Dr. Lewis within 4hr; entity CEO if unauthorized share confirmed; exception request → Dr. Lewis review; entity CEO approval if legitimate

## Test Cases
1. **Golden path:** Monthly DLP review. Dr. Lewis opens Purview DLP dashboard. Alerts this month: PHI Protection — 3 alerts; Dr. Lewis reviews each: (1) SSN in email body — user was sending a benefits enrollment form to an employee's personal email "for convenience." Determination: actual SSN exposure (potential HIPAA violation — Allevio health data adjacent). Employee counseled; HIPAA review: Allevio employer census data is not ePHI if de-identified at the employer level; SSN may be ePHI if tied to health plan enrollment. Dr. Lewis documents determination; updates DLP policy to add SSN in email to confirmed-block (not just warn). (2) Credit card number detected — user was forwarding a vendor receipt. False positive (legitimate business purpose). (3) Medical terminology detected in a training document being shared with a new employee. False positive. Summary: 1 true positive (policy counseled + tightened); 2 false positives (threshold adjustment considered). Entity CEO briefed.
2. **Edge case:** M365 Purview DLP blocks a legitimate Allevio business process — the clinical coordinator sends a weekly eligibility file to Marshall Medical Billing that contains employee SSNs and health plan enrollment data: Dr. Lewis: "This is a legitimate business process that triggers the PHI DLP policy. But the file transmission to Marshall Medical Billing is covered by a BAA and is a required operational workflow. Resolution: (1) Create a DLP policy exception for the specific process — sender (clinical coordinator account); recipient (Marshall Medical Billing domain); data type (SSN + health data). (2) The exception requires entity CEO approval and documentation. (3) The alternative: instead of email with PHI, use Marshall Medical Billing's secure portal for file submission (removes DLP trigger AND improves security). (4) I'll recommend the secure portal method to the entity CEO — better security than a DLP exception. (5) If the email method must continue: exception documented; BAA confirmed; email encrypted with OME."
3. **Adversarial:** An employee complains to the entity CEO: "The DLP keeps blocking my emails and it's slowing me down. Can we just turn it off?": Dr. Lewis (briefing entity CEO): "DLP is protecting the company from data breach. The complaint is a legitimate productivity concern but the solution is tuning, not disabling. Here's the analysis: this employee triggered 8 DLP alerts in the last 30 days. Of those 8: 6 were the policy tips mode (the user saw a warning but the email went through — no disruption to productivity). 2 were actual blocks: (1) An email with an SSN to an external non-BAA recipient — this was a real DLP catch; the employee was told why it was blocked and sent the data via the secure portal instead. (2) An email with a document labeled 'Confidential' to the employee's personal Gmail — this was also a correct block; employees shouldn't be sending confidential company documents to personal email. The 8 'blocks' that the employee experienced are 2 actual blocks — both were correct catches. I'll meet with the employee to explain the policy and help them find compliant alternatives for their workflow."

## Audit Log
DLP policy configuration records (entity; policy; creation date; mode — Policy Tips or Block; Dr. Lewis configured; entity CEO informed; SharePoint). DLP alert response log (all high-severity alerts; date; user; policy; data type; Dr. Lewis determination; HIPAA assessment if applicable; entity CEO notification; action; SharePoint). DLP false positive log (alert; false positive determination; tuning action; Dr. Lewis; date). DLP exception records (exception; business justification; entity CEO approval; BAA confirmation if PHI; duration; Dr. Lewis; date). Sensitivity label deployment records (labels created; user training; Dr. Lewis configured; entity CEO informed; date). DLP mode switch records (policy; Policy Tips period; decision date; entity CEO confirmation; Block enforced; Dr. Lewis; date).

## Deprecation
DLP policies reviewed quarterly (false positive rate; new business processes; new data types). Sensitivity label definitions reviewed when sec-data-classification-manager updates classification tiers. Purview capabilities reviewed annually — Microsoft updates DLP and sensitivity label features frequently. Endpoint DLP scope reviewed when Intune device enrollment changes. HIPAA auto-classification confidence thresholds reviewed annually (HHS guidance; classifier accuracy updates).
