---
name: sec-security-awareness-trainer
description: "Plan and manage security awareness training for MBL portfolio company employees. Use when the user says 'security awareness training', 'security training', 'employee security training', 'phishing simulation', 'phishing test', 'phishing training', 'security education', 'security culture', 'teach employees about security', 'train employees on security', 'annual security training', 'security training completion', 'security training program', 'cybersecurity training', 'HIPAA training', 'security awareness program', 'click rate', 'phishing click rate', 'security behavior', 'human firewall', 'security culture', 'security policy acknowledgment', 'password training', 'social engineering awareness', 'business email compromise training', 'BEC training', 'security onboarding', 'new hire security training', 'mandatory security training', 'HIPAA workforce training', or 'security training report'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <build|run|report|phishing-sim>] [--audience <all|management|clinical>]"
---

# Sec Security Awareness Trainer

Plan and manage security awareness training for MBL portfolio company employees — building the human firewall through annual mandatory training, targeted phishing simulations, and behavioral metrics that Dr. Lewis and entity CEOs can track. Technology controls fail; people fail more often — but trained people fail less than untrained people, and HIPAA requires Allevio to train its workforce.

## When to Use
- Planning or scheduling annual security awareness training
- Running phishing simulations and reviewing click rates
- Tracking training completion to report to entity CEO or Dr. Lewis
- Building a security culture at a new entity

## Training Program Framework

```
MANDATORY TRAINING REQUIREMENTS:

  ALLEVIO (HIPAA Administrative Safeguard §164.308(a)(5)):
    Required by law: annual security awareness training for ALL workforce members
    (including part-time, contractors, volunteers with system access)
    Content required: security updates; protection from malicious software;
    log-in monitoring; password management
    Timing: new hire within 30 days; annual refresh by December 31
    Documentation: completion records retained 6 years; Dr. Lewis attestation
    Failure to train: HIPAA violation; potential OCR investigation; sanctions policy required
    
  ALL ENTITIES (MBL standard; insurance carrier requirement):
    Annual: mandatory for all employees with system access
    New hire: within 30 days of start date
    Role-based: additional training for finance (BEC), IT admins (privileged access), executives
    
TRAINING CURRICULUM (annual; 45-60 min):
  Module 1 — Phishing and Social Engineering (15 min):
    How phishing works; red flags; what to do if you clicked; report button
    MBL context: BEC targeting financial transfers; fake vendor invoices
    Allevio: HIPAA-specific phishing (fake EHR login pages; fake BAA update emails)
    
  Module 2 — Password and Account Security (10 min):
    Password requirements; password manager usage; MFA importance; shared accounts
    
  Module 3 — Data Handling (10 min):
    What data is sensitive; how to share/store it safely; encryption requirements
    Allevio: PHI handling — what is PHI; who can access it; minimum necessary standard
    Column6: consumer data handling; no cross-agency sharing; pixel tag data
    HIVE: LP data confidentiality; Covercy access security
    
  Module 4 — Incident Reporting (5 min):
    How to report a security incident; who to contact; what NOT to do
    (don't try to fix it yourself; don't tell the sender you clicked; report immediately)
    Contact: IT help desk → escalates to Dr. Lewis
    
  Module 5 — Physical Security and Remote Work (5 min):
    Clean desk; locked screen; secure Wi-Fi; device theft reporting
    
  Module 6 — Policy Acknowledgment (5 min):
    Review and sign Acceptable Use Policy; confirm understanding of Sanctions Policy (Allevio)
    
PHISHING SIMULATIONS:
  Frequency: quarterly (4 per year)
  Platform: KnowBe4 (free tier) or Microsoft Defender for Office 365 Attack Simulator
  
  Campaign types by quarter:
    Q1: Generic credential harvest (fake IT password reset)
    Q2: BEC simulation (fake CEO or CFO email requesting a transfer or gift card purchase)
    Q3: HIPAA-themed (Allevio) or Industry-themed (fake vendor update / fake IO confirmation)
    Q4: Vishing or SMS phishing awareness (no simulation — just training content)
    
  Response to clickers:
    Click rate >30%: immediate entity CEO notification + remedial training required
    Click rate 15-30%: targeted training for clickers; include in next sim
    Click rate <15%: document; continue program; recognize improvement
    Click rate <5%: program health target; note in security program status
    
  Do NOT shame employees for clicking — simulations are training, not punishment
  Clicker data: visible only to Dr. Lewis and entity CEO; never shared broadly
  
TRAINING COMPLETION TRACKING:
  Target: 100% completion by December 31 (annual) and within 30 days of hire (new hire)
  Tracking: training platform completion report → Dr. Lewis monthly
  Escalation: <80% by November 30 → entity CEO notified; push to all remaining employees
  <100% by December 31 → entity CEO + Dr. Lewis review; document for HIPAA records (Allevio)
  Exemptions: on leave employees get extended deadline (return + 30 days)
  
ROLE-SPECIFIC TRAINING ADDITIONS:
  Finance team / bill payers: BEC deep dive; wire transfer verification protocol
  IT / admins: Privileged access management; admin account hygiene
  Executives / management: Executive-targeted phishing; board member impersonation
  Allevio clinical coordinators: HIPAA deep dive; minimum necessary standard; authorized disclosure
  New hires (all roles): Security onboarding (30-day window; covers all 6 modules + role-specific)
```

## Output Format

```markdown
# Security Awareness Training Status — [Entity] | [Period] | [Date]
**Owner:** Dr. John Lewis | **Completion target:** 100% by [Date]

---

## Training Completion
| Group | Total employees | Completed | % | Status |
|-------|----------------|-----------|---|--------|
| All employees | [N] | [N] | [%] | 🟢/🟡/🔴 |
| Finance team | [N] | [N] | [%] | |
| Allevio clinical | [N] | [N] | [%] | |
| IT / admins | [N] | [N] | [%] | |

---

## Phishing Simulation Results — [Quarter]
| Campaign type | Sent | Clicked | Click rate | Reported |
|--------------|------|---------|-----------|---------|
| [BEC simulation] | [N] | [N] | [%] | [N] |

**Trend:** [vs. prior quarter; % improvement]

---

## Required Actions
- [Employees not yet completed — follow-up plan]
- [Clickers requiring remedial training]
```

## Output Contract
- HIPAA training completion documentation is retained for 6 years — Allevio's training records are not just a compliance metric; they are evidence that the organization met its HIPAA Administrative Safeguard obligations; in the event of a HIPAA breach investigation, OCR reviewers will request training records; Dr. Lewis attests annually that Allevio workforce members received security awareness training; records include: employee name; date completed; training content covered; signature or electronic attestation; records stored in SharePoint → Allevio → Security → Workforce-Training → [Year]; Dr. Lewis retains for 6 years from the date created
- Phishing simulation data is used for training, not punishment — MBL's security culture is built on psychological safety; employees who click on phishing simulations and report them honestly are not penalized; the click data is visible to Dr. Lewis and entity CEO only; it is used to identify training gaps (high click rates in finance → BEC training); employees who click are sent immediate remedial training, not disciplinary action; the only exception: an employee who repeatedly clicks AND ignores remedial training AND engages in behavior that actually results in a security incident — that is a performance/conduct issue handled by the entity CEO; the simulation program's goal is behavior change, not gotcha metrics
- HITL required: training program → entity CEO approves annual curriculum; HIPAA training policy → Dr. Lewis reviews; completion <80% by November 30 → entity CEO notified with escalation plan; phishing simulation click rate >30% → entity CEO notified + remedial training required; annual completion documentation → Dr. Lewis attests (Allevio); HIPAA training record retention → Dr. Lewis maintains 6-year records; new hire training window violation (>30 days without training) → IT + entity CEO flagged; training platform access → Dr. Lewis controls who sees clicker data

## System Dependencies
- **Reads from:** Employee roster (HR system → entity; all active employees with system access); training platform completion reports (KnowBe4 or M365 Attack Simulator or equivalent); prior year completion records; phishing simulation results; HIPAA training requirements (§164.308(a)(5)); security awareness training calendar
- **Writes to:** Training completion report (SharePoint → [Entity] → Security → Workforce-Training → [Year]); HIPAA training attestation (Allevio — Dr. Lewis signature; SharePoint → Allevio → Security → HIPAA → Workforce-Training); phishing simulation results (Dr. Lewis + entity CEO only; SharePoint → [Entity] → Security → Phishing-Sims → [Quarter]); entity CEO completion notification (monthly); security program status input (annual % and trend); Monday.com (new hire training task — assigned day 1; due day 30)
- **HITL Required:** Training curriculum → entity CEO approves; completion <80% Nov 30 → entity CEO escalation; click rate >30% → entity CEO notified; HIPAA attestation → Dr. Lewis signs annually; new hire training overdue → IT + entity CEO; clicker data access → Dr. Lewis controls; phishing sim design (Q3 entity-specific) → Dr. Lewis approves content

## Test Cases
1. **Golden path:** Annual security training launch for Allevio (65 employees). Dr. Lewis sends training announcement from entity CEO email (entity CEO endorsement increases completion rate). Training platform sends automated assignments to all 65. Deadline: December 15 (2 weeks before year-end). Progress at November 15: 52/65 complete (80%). Dr. Lewis sends reminder to entity CEO with list of 13 not-yet-complete employees. Entity CEO sends personal email to those 13 with direct ask. By December 15: 64/65 complete. 1 employee on maternity leave (return + 30 days = January 31 extended deadline). HIPAA documentation: 64 completed by Dec 15 + 1 extended with documented reason. Dr. Lewis attestation signed. Stored in SharePoint. Retention calendar set for 6 years.
2. **Edge case:** Q2 phishing simulation (BEC — fake CEO requesting gift card purchase): 40/120 employees clicked (33% click rate). Dr. Lewis: "Click rate >30% — entity CEO notification required. Email to entity CEO: 'Q2 phishing simulation click rate was 33% (40/120 employees). This is above our 30% threshold that triggers remedial training. I'm deploying a targeted 15-minute BEC training module to all 40 clickers this week. I'd recommend you send a brief all-hands message reminding employees of the financial transfer verification protocol (any financial request via email, regardless of sender, is verified via phone before action). I'll retest with another BEC simulation in 45 days to measure improvement. No actual security incident occurred — this is training data.' 45-day re-simulation: click rate 12% (down from 33%). Document improvement in security program status."
3. **Adversarial:** Employee asks: "Why do I have to do this training? I've been here 10 years and I know about phishing." Dr. Lewis response via entity CEO: "Experience doesn't protect against the current threat landscape — this year's BEC attacks are significantly more sophisticated than what existed even 3 years ago. Last quarter, [industry peer] lost $180K to a BEC attack where the CFO's email was perfectly impersonated. Annual training keeps everyone current on new attack methods, not just the ones from 10 years ago. For Allevio specifically, this training is required by HIPAA — it's not optional for any workforce member with system access, regardless of tenure. The training takes 45-60 minutes annually. I'll ask IT to send you your completion link directly."

## Audit Log
Training completion records (annual; entity; employee list; completion date; platform; Dr. Lewis review; HIPAA attestation if Allevio; SharePoint; 6-year retention). Phishing simulation records (quarter; campaign type; click rate; clicker count; entity CEO notification if >30%; remedial training dispatched; re-simulation if applicable). New hire training records (employee; start date; assignment date; completion date; within 30-day window or extended with reason). Role-specific training records (finance BEC; IT admin; executive; Allevio clinical; completion). Training curriculum approval records (entity CEO approval; year; date).

## Deprecation
Training curriculum reviewed annually — content updated when new threat classes emerge (AI phishing; deepfake social engineering; new BEC techniques). Phishing simulation templates updated quarterly. HIPAA training requirements reviewed when HHS guidance updates. Click rate thresholds reviewed when program matures (target: reduce <5% across portfolio). Training platform reviewed annually for cost and capability.
