---
name: it-knowledge-base-builder
description: "Build and maintain IT documentation, runbooks, and self-service guides. Use when the user says 'IT documentation', 'knowledge base', 'runbook', 'IT guide', 'self-service IT', 'how-to document', 'IT wiki', 'document IT process', 'IT playbook', 'user guide', 'IT instructions', 'write IT docs', 'standard operating procedure', 'IT SOP', or 'IT help articles'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--doc-type <runbook|user-guide|policy|SOP>] [--topic <specific IT process>]"
---

# IT Knowledge Base Builder

Build and maintain IT documentation at MBL portfolio companies — creating runbooks, user guides, SOPs, and policies that allow IT processes to run consistently and employees to solve common problems without contacting IT. Good IT documentation is the leverage that lets Dr. Lewis scale support across multiple portfolio companies: a documented process can be delegated; an undocumented process cannot.

## When to Use
- A recurring IT issue is resolved and the fix should be documented so it doesn't repeat as a ticket
- A new IT process is implemented and needs to be documented before being handed off
- A user guide is needed for a newly deployed system or feature
- Onboarding documentation for a new employee or IT hire
- Preparing runbooks for critical IT procedures (backup restoration, device enrollment, emergency access)
- IT knowledge base audit — what's missing or outdated?

## Documentation Framework

```
Document types in the IT knowledge base:
  Runbooks: Step-by-step instructions for IT processes (backup restoration, device enrollment, server restart)
    Who writes: Dr. Lewis
    Who uses: IT staff, future IT hires, contractors
    Format: Numbered steps; prerequisites; expected outcome; what to do if it fails
    
  User guides: Instructions for employees using IT systems
    Who writes: Dr. Lewis
    Who uses: Employees (non-IT)
    Format: Plain language; screenshots where helpful; short (1-2 pages); single process per guide
    Examples: "How to set up MFA on your phone", "How to connect to VPN", "How to report a phishing email"
    
  SOPs (Standard Operating Procedures): Defined IT processes with roles and timing
    Who writes: Dr. Lewis
    Who uses: IT function; handed to future IT managers
    Format: Purpose, scope, process steps, roles, exceptions, review date
    
  Policies: Rules and requirements for IT use
    Who writes: Dr. Lewis + Legal review for compliance policies
    Who uses: All employees (acknowledgment required)
    Examples: Acceptable use policy, BYOD policy, password policy, data classification policy
    
Knowledge base structure (SharePoint recommended):
  IT Knowledge Base (SharePoint site)
  ├── Runbooks/
  │   ├── Backup-Restoration-Runbook.md
  │   ├── Device-Enrollment-Runbook.md
  │   ├── Emergency-Access-Procedure.md
  │   └── Patch-Window-Runbook.md
  ├── User Guides/
  │   ├── MFA-Setup-iPhone.pdf
  │   ├── VPN-Connection-Guide.pdf
  │   ├── How-to-Report-Phishing.pdf
  │   └── Password-Manager-Setup.pdf
  ├── Policies/
  │   ├── Acceptable-Use-Policy.pdf
  │   ├── Data-Classification-Policy.pdf
  │   └── BYOD-Policy.pdf
  └── SOPs/
      ├── New-Employee-IT-Provisioning-SOP.md
      └── Employee-Offboarding-IT-SOP.md
      
Documentation quality standards:
  1. Written for the reader, not the writer — assume the reader is doing this for the first time
  2. Numbered steps — not bullet points; steps are sequential and complete
  3. Prerequisites stated upfront — what do you need before starting?
  4. Expected outcome stated — what does "done" look like?
  5. Failure modes addressed — what to do if step X fails
  6. Review date set — documentation over 12 months old is reviewed; over 24 months is archived or retired
  7. Screenshots for UI-based processes — a screenshot of the right button is faster than 3 sentences describing it
```

## Output Format

```markdown
# [Document Title] — [Company Name]
**Document type:** Runbook / User Guide / SOP / Policy
**Version:** 1.0 | **Created:** [Date] | **Author:** Dr. John Lewis
**Review date:** [Date + 12 months]
**Audience:** IT staff / All employees / [Specific role]

---

## Purpose
[One sentence: what does this document help the reader do?]

## Prerequisites
- [What access/permissions/tools are needed before starting]
- [Who should be completing this document]

## Steps

### Step 1 — [Action]
[Clear description of what to do]
[Screenshot if applicable]
Expected result: [What you should see after this step]

### Step 2 — [Action]
[Continue...]

## Expected Outcome
[What "done" looks like — the state of the system when this process is complete]

## If Something Goes Wrong
| Problem | Likely cause | Resolution |
|---------|-------------|-----------|
| [Error message] | [Cause] | [Fix or who to contact] |
| [Step X fails] | | [Dr. Lewis — 602-880-6491] |

## Review History
| Date | Reviewer | Changes |
|------|---------|---------|
| [Date] | Dr. Lewis | Initial version |

---

[For user guides: end with support contact — "If you have trouble, message Dr. Lewis in Teams or email it@[company].com"]
```

## Output Contract

**User guides (employee-facing):**
- Plain language, not IT jargon — "go to the Settings app" not "navigate to the device configuration panel"
- Short — a user guide longer than 2 pages will not be read; break it into multiple guides if needed
- Single process per guide — "MFA Setup on iPhone" not "Complete IT Security Configuration Guide"

**Runbooks (IT-facing):**
- Numbered steps that can be followed under pressure — runbooks are used during incidents and maintenance windows when attention is divided; ambiguous steps cause errors; every step is a clear action with an expected result
- Failure modes are documented — the most important line in a runbook is "if this fails, do X"; the second most important is "if you're not sure, call Dr. Lewis at 602-880-6491 before proceeding"
- Tested before publishing — Dr. Lewis walks through the runbook once from scratch before publishing; a runbook that has never been executed is a guess, not a procedure

**General:**
- HITL required: Dr. Lewis writes and reviews all IT documentation; policies require CEO acknowledgment before distribution to employees; HIPAA-related documentation (Allevio) reviewed by Privacy Officer; documentation is reviewed annually and updated when processes change; retired documents are archived, not deleted

## System Dependencies
- **Reads from:** Existing IT processes (from Dr. Lewis's operational experience), help desk ticket history (it-help-desk-manager recurring issues), system documentation from vendors
- **Writes to:** SharePoint IT Knowledge Base (SharePoint/Ops/<Company>/IT/KnowledgeBase/); linked from relevant Monday.com tasks; distributed to employees via Teams/email for user guides
- **HITL Required:** Dr. Lewis writes; policies require CEO acknowledgment; HIPAA documentation reviewed by Privacy Officer (Allevio); annual review by Dr. Lewis; retired docs archived by Dr. Lewis

## Test Cases
1. **Golden path:** After resolving the recurring "VPN connection fails on new iPhones" issue (which generated 8 tickets in Q1) → Dr. Lewis writes "How to Connect to VPN on iPhone (iOS 17+)" user guide: 1 page, 8 numbered steps, 4 screenshots, expected outcome ("You will see 'VPN Connected' in the status bar"), troubleshooting table (3 common failure scenarios with fixes); posted to SharePoint IT Knowledge Base; sent to all employees via Teams with "VPN issues? Try this guide first before contacting IT"; ticket volume for VPN drops to 0 in Q2; guide reviewed at 12-month mark to confirm iOS version is still current
2. **Edge case:** Backup restoration runbook is needed urgently after a server failure — there is no existing runbook → During recovery, Dr. Lewis documents each step in real-time ("as-you-do-it" documentation); after recovery, the notes are cleaned up into a proper runbook within 48 hours while the steps are fresh; the disaster made the runbook necessary — it now exists for next time; the lesson: critical runbooks (backup restoration, device enrollment, emergency access) should be written before they are needed, not during the crisis
3. **Adversarial:** "Documentation is wasted effort — by the time it's written, things change" → Documentation that accurately reflects current state is living documentation: when a process changes, the doc is updated (takes 20 minutes); the alternative is institutional knowledge that lives in Dr. Lewis's head only; when Dr. Lewis is unavailable during an incident, an undocumented process cannot be executed by anyone else; at portfolio scale, the 10× leverage of documented processes (contractors can follow them, new IT staff can execute them, escalations are reduced) justifies the maintenance overhead

## Audit Log
Documentation version history retained in SharePoint. Policy acknowledgment records retained (by employee and date). Annual review dates tracked. Retired documents archived with retirement date. User guide distribution records retained. Runbook test-execution records retained.

## Deprecation
Retire when portfolio companies have dedicated IT staff who own and maintain the knowledge base — creating new documentation for new processes and reviewing annually — with Dr. Lewis receiving a quarterly knowledge base health report rather than writing all documentation. Policy documentation requires Dr. Lewis or designated IT manager review regardless of internal maturity.
