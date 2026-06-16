---
name: it-security-awareness-trainer
description: "Build and manage security awareness training and phishing simulation programs. Use when the user says 'security training', 'security awareness', 'phishing training', 'phishing simulation', 'employee security training', 'cyber awareness', 'phishing test', 'security culture', 'train employees on security', 'phishing campaign', 'social engineering training', or 'security education'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <launch|report|phishing-sim|annual-training>]"
---

# IT Security Awareness Trainer

Build and manage security awareness training programs at MBL portfolio companies — ensuring employees can recognize phishing, social engineering, and common security threats before they cause incidents. People are the most consistent attack vector: phishing accounts for over 80% of reported security incidents at SMBs, and a trained employee who pauses before clicking an unexpected link is more effective than most technical controls. Training is also a HIPAA requirement at Allevio.

## When to Use
- Deploying security awareness training for the first time at a portfolio company
- Monthly or quarterly phishing simulation — how are employees performing?
- A security incident occurred via phishing — training response needed
- Annual HIPAA security awareness training at Allevio
- Onboarding a new employee who needs initial security training
- Reviewing training program effectiveness (click rates, quiz scores)

## Training Framework

```
Core training modules (all employees):
  1. Phishing recognition:
     - What does a phishing email look like? (urgent language, wrong sender domain,
       unexpected attachment, suspicious link)
     - How to verify: hover over links, check sender address carefully
     - What to do: Don't click; report to Dr. Lewis via Teams/email
     
  2. Password hygiene:
     - Use a password manager (LastPass, 1Password, Bitwarden) — required
     - Unique passwords for every account — no reuse
     - Never share credentials — even with IT (IT will never ask for your password)
     
  3. MFA — why it matters:
     - MFA blocks 99.9% of credential-based attacks (even if password is stolen)
     - Authenticator app > SMS — why and how to set up
     
  4. Device security:
     - Lock your screen when leaving your desk
     - Don't plug in unknown USB drives
     - Don't use public Wi-Fi without VPN for company work
     
  5. Reporting:
     - If you see something suspicious, report it — there is no penalty for false alarms
     - How to report: forward phishing emails as attachments; message Dr. Lewis
     
Healthcare-specific (Allevio — HIPAA §164.308(a)(5)):
  Additional required training:
    - PHI handling: minimum necessary access, no PHI via personal email
    - HIPAA privacy and security basics
    - What constitutes a PHI breach and how to report it
    - ePHI on devices: encryption required, never on personal devices without MDM
  Training must be documented with completion records
  New hires: Before PHI access is granted
  Existing staff: Annual refresher minimum
  
Phishing simulation program:
  Platform options: KnowBe4, Proofpoint SAT, Microsoft Attack Simulator (free with M365)
    Microsoft Attack Simulator: Built into M365 Defender; no additional cost
    KnowBe4: ~$15-25/user/year; more sophisticated templates and reporting
  Cadence: Monthly phishing simulations (employees who click get immediate micro-training)
  Templates: Rotate among credential phishing, file sharing lures, urgency scams
  Metrics tracked:
    Click rate: % of employees who clicked the phishing link
    Credential entry rate: % who entered credentials on fake phishing page
    Report rate: % who correctly reported the simulated phishing email
  Target metrics:
    Click rate: <5% (industry average: 17-20% before training)
    Credential entry: <2%
    Report rate: >20% (good security culture = employees who report)
    
Training delivery:
  LMS options: KnowBe4 (built-in), Microsoft Viva Learning, standalone LMS
  Video-based: 5-10 minute modules; completion tracked
  Testing: Quiz at end of each module; minimum 80% to pass
  Certificates: Issue upon annual completion (especially for HIPAA — Allevio)
```

## Output Format

```markdown
# Security Awareness Training Report — <Company Name>
**Report period:** [Month/Quarter YYYY]
**Employees in program:** [N] | **Training completion:** [X%]
**Phishing click rate (latest sim):** [X%] — Target: <5%
**Prepared by:** Dr. John Lewis

---

## Training Completion Status

| Module | Required for | Completion rate | Average score | Status |
|--------|------------|----------------|-------------|--------|
| Phishing Recognition | All staff | [X%] | [X%] | Good/Watch/Act |
| Password Hygiene | All staff | [X%] | [X%] | |
| MFA Setup | All staff | [X%] | [X%] | |
| HIPAA Security Awareness | Allevio all | [X%] | [X%] | Must be 100% |
| PHI Handling | Allevio clinical | [X%] | [X%] | |

**Employees with incomplete required training:** [N — list by name]
**Allevio: PHI access blocked until HIPAA training complete:** [N staff blocked]

---

## Phishing Simulation Results

### Latest Simulation — [Date]
- **Campaign type:** [Credential phishing / File share lure / Urgency scam]
- **Emails sent:** [N]
- **Clicked:** [N] ([X%]) — Target: <5%
- **Entered credentials:** [N] ([X%]) — Target: <2%
- **Reported (correctly):** [N] ([X%]) — Target: >20%

### Trend (last 6 months)

| Month | Sent | Click rate | Credential rate | Report rate |
|-------|------|-----------|----------------|------------|
| [Month] | [N] | [X%] | [X%] | [X%] |

**Trend:** Improving / Flat / Worsening

---

## High-Risk Employees

Employees who clicked 2 or more simulations in the last 6 months or entered credentials:

| Employee | Role | Simulations clicked | Action |
|---------|------|------------------|--------|
| [Name] | [Role] | 3 of 4 | Additional 1:1 training + monthly simulation |

Note: High-risk lists are shared only with Dr. Lewis and CEO — not posted publicly.

---

## HIPAA Training Status (Allevio)

| Staff member | HIPAA training completed | Date | Certificate on file | PHI access |
|-------------|------------------------|------|--------------------|--------------------|
| [Name] | Yes | [Date] | Yes | Granted |
| [New hire - Day 3] | Pending | — | — | Blocked |

---

## Program Health

| Metric | Current | Target |
|--------|---------|--------|
| Overall click rate (6-month avg) | [X%] | <5% |
| HIPAA training completion (Allevio) | [X%] | 100% |
| New hire training before PHI access | [X%] | 100% |
| Annual refresher completion | [X%] | 100% |

---

## Matt Mathison Brief (if click rate >15% or completion <80%)

[Company] security training: [X%] click rate (target <5%). [Key issue]. [Next sim date].
```

## Output Contract
- No PHI access before HIPAA training is complete at Allevio — this is a hard gate; a new employee who has not completed HIPAA security awareness training does not get access to AdvancedMD or any system with PHI; this is enforced via access provisioning (it-onboarding-provisioner); the training takes 30 minutes; it is completed before access is granted on Day 1
- Phishing click rate measures culture, not individual failure — employees who click phishing simulations are busy people making fast decisions; repeated clickers get additional 1:1 coaching, not public shaming; the goal is a learning culture, not a gotcha program
- Report rate is as important as click rate — an employee who clicks and then reports is more valuable than one who neither clicks nor reports; building a culture where employees feel safe reporting suspicious emails is as important as reducing click rates; unreported incidents are the expensive ones
- HITL required: Dr. Lewis administers training platform; high-risk employee follow-up by Dr. Lewis; HIPAA training completion certificates reviewed by Dr. Lewis (Allevio); phishing simulation results reviewed by Dr. Lewis; training program changes require Dr. Lewis; training incident escalation (real phishing resulting in breach) triggers it-security-incident-responder

## System Dependencies
- **Reads from:** Training platform (KnowBe4 / Microsoft Attack Simulator / Viva Learning), M365 user list, new hire roster (HR), HIPAA training records (Allevio)
- **Writes to:** Training completion records (SharePoint/Ops/<Company>/IT/Security/Training/); HIPAA training certificates (Allevio — permanent records); phishing simulation reports; access provisioning gate (it-onboarding-provisioner)
- **HITL Required:** Dr. Lewis administers program; HIPAA training gates PHI access; high-risk employee 1:1 by Dr. Lewis; real phishing incidents escalate to it-security-incident-responder

## Test Cases
1. **Golden path:** Allevio Q2 phishing simulation + training review → Sim: "Urgent DocuSign signature needed" credential phishing; 18 employees targeted; Results: Click rate 11% (2 employees clicked); Credential entry: 1 employee entered credentials → immediate micro-training served; Reported: 4 employees correctly reported → 22% report rate; HIPAA training: 18/18 employees complete; 1 new hire completed HIPAA training on Day 1 — PHI access granted; Action: 1:1 session with 2 click employees; click rate trending down from 18% in Q1 to 11% in Q2
2. **Edge case:** An employee is frustrated the phishing simulation "tricked them" → Validate: "You are right — this simulation was designed to look authentic, because real attackers do the same thing"; explain the tell-tale signs (the link domain was not docusign.com; the sender address was off by one character); frustrated employees who feel tricked become the most vigilant after 1:1 coaching
3. **Adversarial:** "Our employees are smart — they know not to click phishing links — we do not need simulations" → Industry data: untrained employees click phishing at 17-33% rates; intelligence does not correlate with phishing resistance; executives are specifically targeted with spear phishing; at Allevio, HIPAA §164.308(a)(5) requires security awareness training — this is not optional

## Audit Log
Training completion records retained by employee and year. HIPAA training certificates retained permanently (Allevio). Phishing simulation results retained by campaign date. High-risk employee follow-up retained. Real phishing incidents retained. Training program version history retained.

## Deprecation
Retire when portfolio companies have dedicated security training administrators and the program runs autonomously — with Dr. Lewis reviewing quarterly completion and simulation reports rather than administering the program. HIPAA training documentation at Allevio is permanent.
