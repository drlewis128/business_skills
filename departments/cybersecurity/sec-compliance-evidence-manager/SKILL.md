---
name: sec-compliance-evidence-manager
description: "Manage and maintain cybersecurity compliance evidence for MBL portfolio companies. Use when the user says 'compliance evidence', 'audit evidence', 'security evidence', 'document controls', 'evidence collection', 'compliance documentation', 'security documentation', 'evidence package', 'audit package', 'SOC 2 evidence', 'SOC 2 audit', 'compliance audit', 'internal audit evidence', 'control evidence', 'policy evidence', 'procedure evidence', 'training evidence', 'access review evidence', 'patch evidence', 'vulnerability evidence', 'incident evidence', 'HIPAA documentation', 'HIPAA audit evidence', 'HIPAA records', 'control effectiveness', 'security metrics', 'compliance metrics', 'compliance reporting', 'audit readiness', 'audit preparation', 'how do we show we are compliant', 'prove we are compliant', 'compliance artifacts', 'document that we did this', 'retention schedule', 'records retention', 'retention policy', 'records management', 'security records', 'compliance calendar', 'compliance schedule', or 'evidence repository'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--framework <hipaa|soc2|cis|nist>] [--action <collect|organize|report|audit-prep>]"
---

# Sec Compliance Evidence Manager

Manage and maintain cybersecurity compliance evidence for MBL portfolio companies — organizing the documentation, screenshots, logs, and attestations that prove security controls are operating as described. Compliance evidence is what stands between "we say we're secure" and "we can prove we're secure"; for Allevio, it is what stands between a HIPAA enforcement inquiry and a fine. Evidence collected continuously is infinitely easier than evidence reconstructed under pressure.

## When to Use
- Building an evidence repository for a new entity
- Preparing evidence packages for an internal or external audit
- Ensuring HIPAA documentation is complete and retained properly
- Setting up a compliance calendar for continuous evidence collection

## Compliance Evidence Framework

```
EVIDENCE CATEGORIES (what to collect and retain):

  1. POLICY AND PROCEDURE EVIDENCE:
     What: current approved versions of all security policies; procedures; standards
     Format: document + entity CEO approval + date; version history
     Location: SharePoint → [Entity] → Security → Policies → [Policy Name] → v[N]
     Frequency: update when policy changes; annual review cycle documented
     Retention: 6 years (HIPAA); 7 years (general business records); perpetual for active policies
     
  2. RISK MANAGEMENT EVIDENCE:
     What: annual risk assessment; risk register; treatment decisions; residual risk acceptance
     Format: risk analysis document (Dr. Lewis signature; entity CEO review); risk register (versioned)
     Retention: 6 years (HIPAA — risk analysis is a required record)
     
  3. WORKFORCE TRAINING EVIDENCE:
     What: completion records for all employees; training content covered; attestation or signature
     Format: LMS completion report; names; dates; module titles; acknowledgment
     Retention: 6 years (HIPAA); 3 years (general)
     
  4. ACCESS CONTROL EVIDENCE:
     What: quarterly access review reports; entity CEO certifications; user list changes
     Format: access review spreadsheet + entity CEO sign-off; provisioning/deprovisioning records
     Retention: 6 years (HIPAA — access reviews for AdvancedMD); 3 years (general)
     
  5. PATCH AND VULNERABILITY EVIDENCE:
     What: monthly patch compliance reports; vulnerability scan results; remediation records
     Format: tool-generated report; IT attestation; Dr. Lewis review
     Retention: 3 years
     
  6. INCIDENT RESPONSE EVIDENCE:
     What: incident logs; response timeline; HIPAA breach assessments; notifications
     Format: incident report (Dr. Lewis; entity CEO sign-off); HHS notifications (if applicable)
     Retention: 6 years (HIPAA incidents); 3 years (non-HIPAA incidents); permanently for litigation holds
     
  7. VENDOR / BAA EVIDENCE:
     What: signed BAAs; vendor security assessments; SOC 2 reports received; vendor contracts
     Format: executed BAA (entity CEO countersigned); assessment report; Dr. Lewis review
     Retention: 6 years from BAA termination (HIPAA); contract retention per entity legal policy
     
  8. AUDIT AND TESTING EVIDENCE:
     What: backup restore test results; tabletop exercise records; phishing simulation results
     Format: test report; IT executor; Dr. Lewis review; entity CEO briefing
     Retention: 3 years
     
  9. HIPAA-SPECIFIC EVIDENCE (Allevio — all retained 6 years):
     Risk analysis (annual); risk management plan; training records; sanction policy;
     IR plan; contingency plan; BAA register; breach records; access review records;
     AdvancedMD audit logs (evidence of audit control implementation); policy approval records

EVIDENCE COLLECTION CALENDAR (annual cycle):
  Q1: Annual risk assessment; risk register update; policy review cycle
  Q2: Workforce training launch; phishing simulation Q2; vendor BAA renewal check
  Q3: Tabletop exercise; backup restore test; phishing simulation Q3
  Q4: Annual security briefing to Matt Mathison; compliance evidence annual review;
      cyber insurance renewal; maturity assessment; next-year roadmap
  Monthly: patch compliance report; dark web scan; access review reminders
  Quarterly: access review + entity CEO sign-off; vulnerability scan; backup test
  
EVIDENCE REPOSITORY STRUCTURE (SharePoint):
  SharePoint → [Entity] → Security → [Category] → [Subcategory if needed] → [Dated artifact]
  
  Example (Allevio):
  SharePoint → Allevio → Security → HIPAA → Risk-Analysis → 2026-Risk-Analysis-v1-DrLewis.pdf
  SharePoint → Allevio → Security → HIPAA → Training-Records → 2026-Training-Completion.xlsx
  SharePoint → Allevio → Security → BAAs → AdvancedMD-BAA-2024.pdf
  SharePoint → Allevio → Security → Incidents → INC-2026-001-Report.pdf
  
  Access: Dr. Lewis (admin); entity CEO (read); legal counsel (read — per need); external auditor (read — during audit engagement only)
  
COMPLIANCE HEALTH DASHBOARD:
  Monthly metric for Dr. Lewis and entity CEO:
    Green: evidence collected and current (within required period)
    Yellow: evidence due within 30 days or last collected >75% of cadence period
    Red: evidence overdue; missing; or never collected
  Dashboard shared with entity CEO monthly (1-page; simple)
```

## Output Format

```markdown
# Compliance Evidence Status — [Entity] | [Date]
**Evidence Custodian:** Dr. John Lewis | **HIPAA 6-year retention:** Managed ✅

---

## Evidence Health by Category
| Category | Last collected | Required cadence | Status | Due next |
|---------|---------------|-----------------|--------|---------|
| Risk assessment | [Date] | Annual | 🟢 Current | [Q1 Next Year] |
| Workforce training | [Date] | Annual | 🟢 Current | [Dec] |
| Access review | [Date] | Quarterly | 🟡 Due next month | [Date] |
| Incident records | [N/A if no incidents] | Event-triggered | ✅ | — |
| BAA register | [Date] | Quarterly review | 🟢 Current | [Date] |
| Patch reports | [Date] | Monthly | 🟢 Current | [Next month] |
| Backup test | [Date] | Quarterly | 🟢 Current | [Date] |

---

## Audit Readiness Summary
**If audited today, [%] of required evidence is current and retrievable.**
```

## Output Contract
- Evidence collected at the time of the control activity is infinitely more credible than evidence reconstructed after the fact — "we always do quarterly access reviews; I just don't have the records from last year" is not an audit defense; the standard is: every time a control activity occurs (access review; risk assessment; training; patch report), Dr. Lewis immediately files the evidence in SharePoint with a date, reviewer attestation, and entity CEO sign-off where required; the discipline of filing evidence in the moment is the difference between a 30-minute audit package pull and a crisis reconstruction; for HIPAA records, the 6-year retention requirement means evidence from 2020 forward must exist today; Dr. Lewis confirms this annually in the Q4 evidence review
- The compliance evidence repository is a legal and regulatory asset, not a file archive — for Allevio, the HIPAA records in SharePoint are the primary documentary evidence in any OCR audit or enforcement action; for any entity, the security records support the insurance coverage attestation, the board-level risk reporting, and the M&A due diligence process (acquirers increasingly review cybersecurity compliance evidence); Dr. Lewis treats the SharePoint security evidence repository as a legal asset: access is controlled (entity CEO and Dr. Lewis access; external parties only during authorized engagements); records are retained per schedule; the repository is backed up (M365 backup covers SharePoint); Dr. Lewis reviews repository completeness quarterly
- HITL required: evidence repository access grants (external auditor or legal) → Dr. Lewis grants time-limited access; entity CEO informed; HIPAA evidence retention review → Dr. Lewis quarterly; annual confirmation of 6-year retention completeness; compliance dashboard review → entity CEO reviews monthly; missing evidence escalation → Dr. Lewis remediation plan; entity CEO notified if significant evidence gap; Matt Mathison annual briefing includes compliance evidence status; audit engagement (OCR; external) → Dr. Lewis prepares evidence package; entity CEO + legal counsel (HIPAA) review before submission; all HIPAA-specific evidence retention → Dr. Lewis is sole custodian; back-up access: entity CEO can access if Dr. Lewis unavailable

## System Dependencies
- **Reads from:** All sec-* skills output (every skill generates evidence that feeds this registry); SharePoint (evidence repository — all entities); training platform (completion records); access review records; patch compliance reports; vulnerability scan results; incident reports; BAA register; risk assessment documents; backup test results; audit log outputs (M365; AdvancedMD); vendor SOC 2 reports; entity CEO sign-offs; Dr. Lewis attestations
- **Writes to:** Evidence repository (SharePoint → [Entity] → Security → [Category]); compliance health dashboard (SharePoint → [Entity] → Security → Compliance-Dashboard; updated monthly); evidence index (SharePoint → [Entity] → Security → Evidence-Index.xlsx — master list of all evidence artifacts; last updated; retention date); Matt Mathison annual compliance briefing (1-page; evidence status + compliance posture); entity CEO monthly compliance dashboard briefing
- **HITL Required:** External access grants (auditor/legal) → Dr. Lewis + entity CEO; HIPAA evidence retention review → Dr. Lewis quarterly; compliance dashboard → entity CEO reviews monthly; missing evidence → Dr. Lewis remediation + entity CEO notified; Matt Mathison annual briefing prep → Dr. Lewis prepares; audit engagement evidence package → Dr. Lewis prepares + entity CEO + legal counsel review; all HIPAA records → Dr. Lewis sole custodian; 6-year retention annual confirmation → Dr. Lewis

## Test Cases
1. **Golden path:** Q4 compliance evidence annual review. Dr. Lewis opens the evidence index (SharePoint → [Entity] → Security → Evidence-Index.xlsx). Reviews each category: Risk assessment (v2026 — filed March 2026; Dr. Lewis signed; entity CEO reviewed ✅); Training records (65/65 employees; December 15 completion; HIPAA attestation ✅); Access reviews (4 quarterly reviews; all with entity CEO sign-off ✅); BAA register (4 active BAAs; all current ✅); Patch reports (12 monthly reports ✅); Backup tests (4 quarterly tests + 1 annual full ✅); Incident records (2 minor incidents — both documented ✅). Retention check: all 2020 HIPAA records present in SharePoint (6-year check). Compliance health: 100% Green. Dr. Lewis notes for Matt Mathison briefing: "Allevio compliance evidence is complete and current for 2026. 6-year HIPAA retention verified. Ready for OCR audit if contacted."
2. **Edge case:** Dr. Lewis discovers that Q1 access reviews for Column6 were conducted verbally but never documented (entity CEO did a walk-through of user lists with IT but nothing was signed or filed): Dr. Lewis: "Verbal reviews without documentation provide no audit defense. The Q1 review happened — but without a signed certification, an auditor cannot verify it. Actions: (1) Reconstruct the Q1 review evidence: entity CEO signs a certification documenting the date, systems covered, and confirmation that access was verified as appropriate. I'll draft the certification for their signature. (2) This is acceptable for Q1 since it can be reconstructed with reasonable certainty. (3) For Q2 forward: I'll set up a Monday.com reminder 2 weeks before each quarter-end: 'Prepare access review report — due [Date].' The review process now produces a signed document every quarter without exception. (4) Note in compliance dashboard: Q1 evidence reconstructed (date of reconstruction noted)."
3. **Adversarial:** An M&A buyer conducting due diligence on an MBL portfolio company requests the company's "entire security documentation package": Dr. Lewis: "Sharing the security documentation package with an M&A buyer requires careful scoping. What we can provide: (1) A security program summary (high-level description of the security program; controls implemented; maturity level — no sensitive details); (2) A third-party attestation or security questionnaire response (we answer the buyer's security questions in writing); (3) HIPAA compliance attestation (Allevio). What we do NOT provide without NDA and legal review: (1) Risk assessments and risk registers (these identify our vulnerabilities); (2) Incident records (these reveal our security weaknesses and may have legal implications); (3) Full system architecture documentation; (4) BAA details with third parties. Matt Mathison and legal counsel review what is shared in M&A due diligence. Dr. Lewis prepares the M&A security summary."

## Audit Log
Evidence repository access records (who accessed; date; reason; Dr. Lewis authorization; entity CEO informed). Evidence filing records (all evidence filed; category; date; Dr. Lewis confirmation; key artifacts indexed in Evidence-Index.xlsx). Compliance dashboard records (monthly; entity; Green/Yellow/Red status by category; entity CEO review). 6-year HIPAA retention annual review records (all categories confirmed; Dr. Lewis; date; any gaps identified). Audit engagement evidence package records (audit; date; evidence provided; Dr. Lewis preparation; entity CEO + legal review; submission date). Missing evidence remediation records (category; gap identified; remediation action; Dr. Lewis + entity CEO; date resolved).

## Deprecation
Evidence collection calendar reviewed annually. Retention schedules reviewed when regulatory requirements change (HIPAA updates; state law changes). Evidence repository structure reviewed when entity SharePoint structure changes. Compliance dashboard updated when new security controls are added to the program. M&A evidence package template reviewed when MBL M&A due diligence process updates.
