---
name: sec-cloud-security-posture
description: "Manage cloud security posture for MBL portfolio company cloud environments. Use when the user says 'cloud security', 'cloud security posture', 'CSPM', 'cloud misconfiguration', 'cloud configuration', 'Azure security', 'Microsoft 365 security', 'M365 Secure Score', 'Microsoft Secure Score', 'cloud storage security', 'S3 bucket security', 'public bucket', 'cloud access control', 'cloud IAM', 'cloud credentials', 'cloud logging', 'cloud monitoring', 'cloud compliance', 'SaaS security', 'SaaS governance', 'shadow IT', 'unauthorized SaaS', 'cloud spend audit', 'cloud inventory', 'cloud assets', 'multi-cloud', 'cloud hardening', 'cloud baseline', 'CIS cloud benchmarks', 'cloud security review', 'cloud risk', 'cloud data exposure', 'publicly exposed storage', 'open cloud storage', 'cloud access review', 'least privilege cloud', 'cloud security score', or 'secure cloud environment'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--platform <m365|azure|saas|all>] [--action <assess|harden|review|report>]"
---

# Sec Cloud Security Posture

Manage cloud security posture for MBL portfolio company cloud environments — assessing, hardening, and continuously monitoring the configuration of cloud platforms and SaaS applications against security baselines. MBL's portfolio runs almost entirely in the cloud (M365, GHL, AdvancedMD, Covercy, QuickBooks); a misconfigured SaaS application or cloud tenant is the modern equivalent of an unlocked server room — and it's usually harder to see.

## When to Use
- Assessing cloud security posture across entity tenants and SaaS applications
- Reviewing Microsoft 365 Secure Score and implementing recommendations
- Detecting and remediating cloud misconfigurations
- Inventorying SaaS applications in use (shadow IT discovery)

## Cloud Security Framework

```
MBL CLOUD SECURITY SCOPE:

  Microsoft 365 (all entities — primary cloud environment):
    Security controls: Microsoft Secure Score (target: ≥70/100 for all entities)
    Key M365 hardening actions (ordered by impact):
      1. Enable Security Defaults or Conditional Access (MFA enforcement)
      2. Block legacy authentication protocols (basic auth; SMTP Auth where unused)
      3. Enable Microsoft Defender for Office 365 (Safe Links; Safe Attachments)
      4. Set mailbox retention and litigation hold (for entities needing e-discovery)
      5. Enable audit logging (Unified Audit Log — 90-day minimum; 1-year preferred)
      6. Configure email authentication: SPF; DKIM; DMARC (prevent email spoofing)
      7. Disable anonymous sharing in SharePoint (no "anyone with link" for PHI or financial data)
      8. Review Teams external access settings (are external users able to join any meeting?)
      9. Enable Microsoft Defender for Business (if on Business Premium)
      10. Review and reduce Global Admin accounts (target: ≤3; see sec-privileged-access-manager)
      
  SaaS Applications (entity-specific):
    GoHighLevel: API key management; sub-account isolation; no cross-entity pipeline access
    AdvancedMD (Allevio): PHI access controls; audit logging enabled; no public-facing PHI
    Covercy (HIVE): LP data access controls; API credential management; backup verification
    QuickBooks: MFA enforcement; accountant access review; no shared admin credentials
    Krista.ai: integration credentials; entity-separated data flows; API scope minimization
    Monday.com: board/workspace isolation; no cross-entity data visibility
    
  Shadow IT (unapproved SaaS discovery):
    Definition: SaaS applications used by employees without IT / Dr. Lewis approval
    Risk: PHI in Dropbox; financial data in Google Sheets; credentials in personal LastPass
    Discovery methods:
      M365 Defender CASB (Cloud App Security) — detects cloud app traffic
      Monthly survey of employees: "What tools are you using for work?"
      Review of corporate credit card charges for unknown SaaS subscriptions
      Browser extension review (unapproved extensions may exfiltrate data)
    Response: evaluate the tool; if low risk and needed → formally approve and onboard;
              if risk exists → migrate to approved tool and off-board the shadow IT
              
EMAIL SECURITY (SPF / DKIM / DMARC):
  Why it matters: without email authentication, anyone can send email appearing to be from
  your domain; BEC attacks often spoof executive email addresses
  
  SPF (Sender Policy Framework): lists authorized mail servers for your domain
    MBL entities using M365: SPF record should include Microsoft's mail servers
    
  DKIM (DomainKeys Identified Mail): digital signature on outbound emails
    M365: enable DKIM signing per domain in M365 Admin Center → Security → DKIM
    
  DMARC (Domain-based Message Authentication Reporting and Conformance):
    Policy that tells receiving servers what to do with mail that fails SPF/DKIM
    Start: p=none (monitor only); progress to p=quarantine → p=reject
    MBL standard: p=reject when SPF and DKIM are confirmed working
    
M365 SECURE SCORE TARGET:
  Score measures percentage of recommended security controls implemented
  Scale: 0-100+
  MBL targets:
    MBL HoldCo: ≥70/100
    Allevio: ≥75/100 (HIPAA drives additional controls)
    Column6: ≥65/100
    HIVE: ≥60/100 (simpler environment)
  Below target: Dr. Lewis reviews Secure Score recommendations; implement top-impact items
  Secure Score is in M365 Admin Center → Security → Secure Score
  
CLOUD LOGGING AND AUDIT TRAILS:
  M365 Unified Audit Log: must be enabled; retain 90 days minimum (1 year for Allevio)
  What it captures: user sign-ins; email access; SharePoint downloads; admin changes
  Who reviews: Dr. Lewis (alert-based review); quarterly audit log spot-check
  Allevio: audit log evidence for HIPAA enforcement if breach investigation occurs
```

## Output Format

```markdown
# Cloud Security Posture Review — [Entity] | [Date]
**M365 Secure Score:** [X]/100 (Target: [Target]) | **Dr. Lewis reviewed:** [Date]

---

## M365 Hardening Status
| Control | Status | Impact | Priority |
|---------|--------|--------|---------|
| MFA / Conditional Access | ✅/⚠️/❌ | High | |
| Legacy auth blocked | ✅/⚠️/❌ | High | |
| DMARC at p=reject | ✅/⚠️/❌ | High | |
| Safe Links / Safe Attachments | ✅/⚠️/❌ | Medium | |
| Audit logging enabled | ✅/⚠️/❌ | High | |
| Anonymous SharePoint sharing disabled | ✅/⚠️/❌ | Medium | |

---

## SaaS Security Status
| Application | Access review | API keys rotated | MFA enforced | Issue |
|------------|--------------|-----------------|-------------|-------|

---

## Shadow IT Findings
| Tool | Found how | Dept | Risk level | Decision |
|------|----------|------|-----------|---------|
```

## Output Contract
- Email authentication (SPF/DKIM/DMARC) is the most impactful BEC defense in the MBL portfolio and is free — Business Email Compromise is the #1 financial cybercrime by dollar loss; BEC attacks often work by spoofing the CEO or CFO's email address; SPF/DKIM/DMARC prevent external parties from sending emails that appear to come from MBL's domains; DMARC at p=reject means that any email claiming to be from @mblpartners.com that fails SPF and DKIM is rejected before it reaches the recipient's inbox; implementing DMARC at p=reject eliminates a significant portion of BEC attack surface at zero cost (M365 includes SPF/DKIM/DMARC capabilities); Dr. Lewis implements email authentication for all entity domains; entities without DMARC are the highest-priority cloud security remediation item
- M365 Secure Score is a directional indicator, not a compliance certification — a Secure Score of 70/100 does not mean 70% of security work is done; it means 70% of Microsoft's recommended configuration checklist items are implemented; some items have high security impact (MFA — 15 points); others have low security impact (obscure audit settings — 0.5 points); Dr. Lewis prioritizes Secure Score recommendations by actual security impact, not by point value; the goal is not to maximize Secure Score for its own sake — it is to implement the recommendations that meaningfully reduce risk; Secure Score is a starting checklist, not a finished product; Allevio's HIPAA requirements add controls that Secure Score doesn't cover (PHI access logging; BAA compliance; workforce training)
- HITL required: M365 tenant security configuration changes → Dr. Lewis executes; DMARC policy change (p=none → p=quarantine → p=reject) → Dr. Lewis implements with prior testing (phased rollout); shadow IT discovery → Dr. Lewis + entity CEO decision on each tool found (approve or off-board); unauthorized SaaS storing PHI (Allevio) → immediate Dr. Lewis + entity CEO response; cloud logging configuration → Dr. Lewis enables; SaaS access review → entity CEO sign-off; Unified Audit Log retention extension → Dr. Lewis configures; new SaaS approval → Dr. Lewis evaluates security before approval

## System Dependencies
- **Reads from:** M365 Admin Center (Secure Score; security settings; audit log status; admin roles); M365 Defender portal (alerts; CASB/shadow IT); SPF/DKIM/DMARC DNS records (MXToolbox or similar for verification); GHL admin (API keys; sub-accounts); AdvancedMD admin (access logs; PHI access controls); Covercy admin (access controls; API keys); QuickBooks (admin access; MFA status); credit card statements (SaaS subscription audit); prior cloud security posture review
- **Writes to:** Cloud security posture report (SharePoint → [Entity] → Security → Cloud-Security → [Date]); M365 configuration changes (Dr. Lewis executes in Admin Center); DMARC DNS records (Dr. Lewis or DNS admin updates); shadow IT decision log (approved / off-boarded; entity CEO decision; date); entity CEO cloud security briefing (quarterly); security program status (cloud security pillar); Secure Score trend tracking (quarterly — is score improving?)
- **HITL Required:** M365 security configuration → Dr. Lewis; DMARC p=reject rollout → Dr. Lewis phased; shadow IT → Dr. Lewis + entity CEO decision; unauthorized PHI SaaS → immediate Dr. Lewis + entity CEO; audit log config → Dr. Lewis; SaaS access review → entity CEO sign-off; new SaaS approval → Dr. Lewis security evaluation; Krista.ai integration scope changes → Dr. Lewis approves

## Test Cases
1. **Golden path:** Quarterly cloud security review for MBL HoldCo. M365 Secure Score: 62/100 (below 70 target). Top 3 recommendations by impact: (1) Enable DMARC at p=reject (5 points; High BEC risk reduction — currently at p=none); (2) Enable Safe Attachments policy for all users (4 points; currently only executives covered); (3) Disable anonymous SharePoint sharing (3 points; currently anyone-with-link sharing enabled). Actions: (1) DMARC — Dr. Lewis changes from p=none to p=quarantine (monitor 2 weeks for false positives); then p=reject. (2) Safe Attachments — Dr. Lewis creates ATP policy for all users. (3) SharePoint — Dr. Lewis disables anyone-with-link; sets to organization-only. Estimated new Secure Score: 74/100 after 3 changes (above 70 target). Entity CEO notified: "Three cloud security improvements implemented this quarter; Secure Score will rise from 62 to ~74 after changes propagate. No disruption expected."
2. **Edge case:** Shadow IT discovery: IT finds that the Allevio billing team is using a personal Google Drive account to share employer census files between staff (census files contain employer group enrollment data): Dr. Lewis: "This is a potential HIPAA issue — census files can contain employee health plan enrollment data that qualifies as PHI. Immediate action: (1) Instruct billing team to stop using personal Google Drive for work files — today. (2) Retrieve all census files currently in Google Drive — move to Allevio's SharePoint (entity CEO and Dr. Lewis access). (3) Revoke sharing links for all files moved. (4) Google: Google Drive personal accounts are not HIPAA-compliant (no BAA available for free personal accounts). (5) Dr. Lewis evaluates whether any PHI was improperly disclosed — if census data in Google Drive constitutes a HIPAA breach, a risk assessment is required. (6) Entity CEO notified and involved in assessment. (7) Long-term fix: SharePoint is the approved file sharing tool; IT deploys SharePoint training for billing team."
3. **Adversarial:** A new department at Column6 wants to start using a new AI writing tool for ad copy ("it's just for text, no sensitive data"): Dr. Lewis: "Before approving any new SaaS tool, I need to evaluate it. Questions: (1) What data goes into this AI tool — is there any chance it processes client campaign data or targeting information? (2) Is there a BAA or data processing agreement available? (3) Where is the data processed and stored? (4) Is the vendor SOC 2 certified? (5) Does the tool's terms of service allow them to use your input data for model training? For a tool that processes only generic marketing copy with no client data: moderate risk — I'll review the DPA and terms. If client campaign data could flow through it: high risk — need contractual protections and data isolation. Send me the vendor name and I'll complete the evaluation within 48 hours. Don't start using it until we've reviewed."

## Audit Log
Cloud security posture reviews (quarterly; entity; Secure Score; hardening status; Dr. Lewis review; entity CEO briefing; SharePoint). M365 configuration change records (change; date; Dr. Lewis execution; rationale; outcome). DMARC implementation records (entity domain; p=none date; p=quarantine date; p=reject date; false positive incidents). Shadow IT records (tool discovered; method; dept; risk assessment; entity CEO decision; off-board or approve date). Unauthorized SaaS / PHI response records (tool; data type; Allevio HIPAA assessment; Dr. Lewis + entity CEO response; date). SaaS approval records (new tool; security evaluation; Dr. Lewis decision; approval date).

## Deprecation
Cloud security framework reviewed annually. M365 Secure Score recommendations change as Microsoft adds new controls — review quarterly. DMARC implementation guidance updated when email authentication standards evolve. Shadow IT discovery methods updated when CASB capabilities change. SaaS approval process reviewed when portfolio adds new entity types or regulatory requirements.
