---
name: hr-policy-builder
description: "Build HR policies for a company. Use when the user says 'HR policy', 'employee policy', 'workplace policy', 'code of conduct', 'employee handbook', 'write an HR policy', 'drug and alcohol policy', 'remote work policy', 'dress code policy', 'social media policy', 'anti-harassment policy', 'attendance policy', 'HR policy document', or 'workplace rules'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--policy <conduct|remote|harassment|attendance|social-media|drug-alcohol|all>]"
---

# HR Policy Builder

Build HR policies for MBL portfolio companies — the written rules that govern workplace behavior, expectations, and procedures. HR policies serve two functions: they set clear expectations for employees (reducing ambiguity about what's acceptable), and they create legal protection for the company (documented policies that were communicated are far more defensible than unwritten rules applied inconsistently). Good policies are short, specific, and actually enforced. Bad policies are 50-page documents no one reads, with provisions that contradict actual practice.

## When to Use
- A new portfolio company has no employee handbook or written HR policies
- A specific policy is needed for a new situation (e.g., first time hiring remote employees)
- A policy is outdated (references former systems, incorrect thresholds, or expired procedures)
- An HR incident occurred that a clear policy would have prevented or better addressed
- Matt Mathison asks "do we have a written policy on [topic]?"
- State law has changed in a way that requires policy updates

## Policy Design Principles

```
Right-sized policy design:
  - A 5-person startup needs different policies than a 50-person company
  - Policies should match actual business risk, not theoretical best practice
  - Each policy should be readable in under 5 minutes
  - Policies not enforced consistently are worse than no policy (selective enforcement creates bias claims)

Core policies every MBL portfolio company needs:
  1. Code of Conduct / Employee Handbook foundation
  2. Anti-harassment and anti-discrimination policy
  3. Attendance and time-off policy (see hr-pto-manager for detail)
  4. Remote work policy (if applicable)
  5. Technology and social media use policy
  6. Drug and alcohol policy
  7. Confidentiality and data protection policy
  8. Disciplinary procedure
  
Policy approval chain:
  Dr. Lewis drafts → Matt Mathison approves → Employee acknowledgment obtained
  
Policy updates: reviewed annually or when triggered by legal/business change
```

## Output Format

### Code of Conduct

```markdown
# Employee Code of Conduct — <Company Name>
**Effective date:** [Date] | **Approved by:** Matt Mathison
**Applies to:** All employees, contractors, and representatives of [Company]

---

## Our Commitment

[Company Name] is committed to an honest, respectful, and professional workplace. We hold ourselves to the THRIVE values — Truth, Hustle, Respect, Integrity, Value, and Enjoy — in everything we do. This Code of Conduct applies to all employees, in the workplace, at company events, and in contexts where your conduct reflects on the company.

---

## Professional Conduct Standards

**We expect all employees to:**
- Treat colleagues, customers, and partners with respect and courtesy at all times
- Be honest and transparent in all professional communications
- Maintain confidentiality of company, client, and patient (Allevio) information
- Report concerns or violations to HR (Dr. Lewis) without fear of retaliation
- Avoid conflicts of interest; disclose any potential conflicts to Dr. Lewis immediately

**Conduct that is not acceptable:**
- Harassment, discrimination, or bullying of any kind, against any person
- Falsification of company records, time records, or expense reports
- Unauthorized use or disclosure of confidential company or client information
- Theft or misuse of company assets
- Violation of any applicable law in the course of employment

---

## Reporting and Non-Retaliation

Employees are expected to report violations of this Code to Dr. John Lewis (jlewis@mblpartners.com) or Matt Mathison (if the concern involves Dr. Lewis). Reports may be made in person, by email, or anonymously via [channel if available].

**No retaliation:** Any employee who makes a good-faith report of a Code of Conduct concern is protected from retaliation. Retaliation against a reporting employee is itself a violation of this Code and will result in disciplinary action up to and including termination.

---

## Disciplinary Procedure

Violations of this Code are taken seriously. Depending on the severity:
- Minor violations: coaching conversation and documented warning
- Moderate violations: formal warning; may include suspension
- Serious violations (harassment, discrimination, theft, falsification): termination
- Any violation that is also illegal: may be referred to law enforcement

The company reserves the right to skip progressive steps for serious violations.
```

---

### Anti-Harassment Policy

```markdown
# Anti-Harassment and Anti-Discrimination Policy — <Company Name>
**Effective date:** [Date] | **Approved by:** Matt Mathison

---

## Policy Statement

[Company Name] prohibits harassment and discrimination based on any protected characteristic, including but not limited to: race, color, religion, sex (including pregnancy, gender identity, and sexual orientation), national origin, age (40+), disability, veteran status, or any other characteristic protected by federal, state, or local law.

## What Is Harassment

Harassment includes:
- Unwelcome verbal conduct: slurs, epithets, jokes, or comments based on a protected characteristic
- Physical conduct: unwanted touching, blocking movement, physical intimidation
- Visual conduct: displaying derogatory images, symbols, or materials
- Sexual harassment: unwelcome sexual advances, requests for sexual favors, or conduct that creates a hostile work environment

## Reporting

Report any harassment or discrimination to Dr. John Lewis immediately. If the concern involves Dr. Lewis, report to Matt Mathison directly.

All reports are investigated promptly. Confidentiality is maintained to the maximum extent possible. The company will not retaliate against anyone who reports a concern or participates in an investigation.

## Consequences

Any employee found to have engaged in harassment or discrimination will be subject to disciplinary action up to and including immediate termination.
```

---

### Remote Work Policy

```markdown
# Remote Work Policy — <Company Name>
**Effective date:** [Date] | **Approved by:** Matt Mathison

---

## Eligibility

Remote work (fully remote or hybrid) is available for roles designated as remote-eligible by the hiring manager and Dr. Lewis. Not all roles are eligible — roles requiring physical presence (patient-facing roles, field operations) are not eligible for remote work.

## Expectations

Remote employees are expected to:
- Be available during core business hours [9 AM - 5 PM local time] for scheduled meetings and urgent communication
- Maintain a dedicated, professional workspace
- Secure their work devices and company data (no use of public WiFi without VPN)
- Attend required in-person meetings or events when notified with at least [5 business days] notice
- Meet the same performance expectations as in-office employees

## Equipment and Security

- Company-provided equipment is company property; return upon separation
- VPN required for access to company systems from outside secure networks
- Do not use personal devices for company work without IT approval
- Report lost or stolen devices to Dr. Lewis immediately

## Remote Work Approval

Remote work must be approved in writing (offer letter or written amendment) before the arrangement begins. Unauthorized remote work is not permitted and will be addressed under this policy.
```

## Output Contract
- Every policy requires Matt Mathison approval — no HR policy is effective without written approval from Matt Mathison; the approval date is noted in the policy header; policies without a documented approver are not company policy
- Policies distributed with acknowledgment — employees must acknowledge receipt of policies; this documentation is essential if the company needs to enforce a policy; "I didn't know about the policy" is not a defense when acknowledgment is on file; new policies are distributed with a written acknowledgment requirement; policies in the handbook are acknowledged at onboarding
- Anti-harassment policy always present — this is not optional; every company regardless of size needs a written anti-harassment policy; in many states it is legally required; it is always the first policy Dr. Lewis ensures is in place for a portfolio company with any employees
- Policies are enforced consistently — a policy that is enforced for some employees but not others creates discrimination claims; Dr. Lewis monitors enforcement patterns; if a policy is consistently not enforced, it should be updated (remove the unenforced provision) or enforced (begin applying it consistently)
- HITL required: Dr. Lewis drafts all HR policies; Matt Mathison approves before distribution; employees acknowledge receipt; policy exceptions require Matt Mathison approval; annual review of all policies by Dr. Lewis; state law changes that affect policy content require Dr. Lewis review with employment attorney

## System Dependencies
- **Reads from:** State employment law requirements, prior policies, employee handbook (if exists), legal counsel guidance on required provisions
- **Writes to:** Policy documents (SharePoint/HR/<Company>/Policies/); employee handbook; new hire onboarding packet; acknowledgment records
- **HITL Required:** Dr. Lewis drafts; Matt Mathison approves; employees acknowledge; exceptions require Matt Mathison; annual review by Dr. Lewis and legal counsel for high-risk policies

## Test Cases
1. **Golden path:** HIVE Partners — first formal HR policy set → Company has 8 employees; no written policies; Dr. Lewis drafts: Code of Conduct, Anti-Harassment Policy, Remote Work Policy (2 remote employees), Confidentiality Policy; each 1-2 pages; Matt Mathison reviews and approves all 4 via email (documented); all 8 employees receive policies and sign acknowledgment form; acknowledgments filed in employee records; policies added to SharePoint/HR/HIVE/Policies/; annual review scheduled for following January
2. **Edge case:** An employee does something that violates the code of conduct, but the company doesn't have a written policy on that specific behavior → the absence of a specific policy doesn't prevent the company from addressing the conduct; the Code of Conduct's general professional standards clause covers most conduct issues; address the conduct issue; use the opportunity to add a specific provision to the policy going forward so there's no ambiguity next time
3. **Adversarial:** A CEO says "we're small — we don't need written policies; everyone knows how we operate" → the informal culture works until it doesn't; respond: "I understand, and written policies don't have to change how you operate day-to-day. What they do is protect you when something goes wrong. If an employee files an EEOC charge, the first thing they'll ask for is your written anti-harassment policy. If a departing employee claims they weren't told about the code of conduct, a signed acknowledgment form is your defense. These 4 policies are 8 pages total and take 30 minutes to read. They cover 80% of the legal exposure from employee situations. Let me draft them — you review and let me know if anything doesn't match how you actually operate."

## Audit Log
All HR policy documents retained with version history, effective dates, and approval records. Employee acknowledgment records retained. Policy exceptions documented with Matt Mathison approval. Annual review completions retained. State law change triggers and policy updates documented.

## Deprecation
Retire when portfolio companies have legal counsel-reviewed employee handbooks specific to their state employment law, dedicated HR managers who own policy creation and updates, and acknowledgment management systems that don't require Dr. Lewis to draft each policy individually.
