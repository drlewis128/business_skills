---
name: offer-letter-drafter
description: "Draft a job offer letter for a selected candidate. Use when the user says 'offer letter', 'draft an offer', 'write the offer', 'job offer', 'extend an offer', 'send an offer to', or 'offer package'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<candidate-name> <role-title> [--entity <name>] [--start-date <YYYY-MM-DD>] [--salary <amount>]"
---

# Offer Letter Drafter

Draft a professional job offer letter for a selected candidate. The offer letter is a legal document — it must be accurate, clear, and consistent with company policy.

## When to Use
- After interview process is complete and hire decision is made
- After verbal offer has been accepted in principle (letter confirms in writing)
- When a counter-offer or negotiation requires a revised offer document
- Converting a contractor to full-time employee

## Pre-Offer Checklist (Complete Before Drafting)
- [ ] Approved job requisition on file (`job-requisition-writer`)
- [ ] Compensation approved by Finance/HR (within approved range)
- [ ] Background check policy confirmed (pre-offer or post-offer depending on jurisdiction)
- [ ] Start date confirmed with hiring manager
- [ ] Benefits enrollment package ready to accompany offer
- [ ] Equity/bonus terms approved (if applicable)

## Offer Letter Components

### Required Fields
1. Candidate name and address
2. Role title and department
3. Start date
4. Compensation (base salary, stated as annual, with pay frequency)
5. Employment type (FTE, at-will, etc.)
6. Benefits summary (reference full enrollment packet)
7. At-will employment statement (required in most US states)
8. Offer expiration date (typically 5-7 business days)
9. Signature block (hiring manager or HR)

### Optional Components
- Sign-on bonus (amount, clawback terms, payment timing)
- Annual bonus eligibility (% of base, discretionary/target)
- Equity (grant amount, vesting schedule — reference separate equity agreement)
- Relocation assistance (amount, conditions)
- Remote/work arrangement confirmation

## Legal Notes
- **At-will language** is required in most US states — always include
- **Do not make promises** about job security, tenure, or guaranteed raises
- **Equity details** should reference a separate grant agreement, not be fully described in the offer letter
- **Background check** — state contingencies explicitly if offer is conditional
- **Non-compete / NDA** — if required, attach as separate document and reference in letter

## Output Format

```markdown
[Company Letterhead — <Entity Name>]

<Date>

<Candidate Full Name>
<Address if known, or omit>

Dear <First Name>,

We are pleased to offer you the position of **<Role Title>** at **<Entity Name>**, reporting to <Manager Name and Title>. We believe you will make a significant contribution to our team and we look forward to welcoming you.

**Position Details**

- **Role:** <Role Title>
- **Department:** <Department>
- **Start Date:** <date>
- **Work Arrangement:** <Remote / Hybrid / On-site at <location>>
- **Employment Type:** Full-time, exempt / non-exempt

**Compensation**

- **Base Salary:** $<amount> per year, paid <bi-weekly / semi-monthly>
- **Sign-on Bonus:** $<amount>, payable within <N> days of start date, subject to <clawback terms> (if applicable)
- **Annual Bonus:** Eligible to participate in the company's discretionary bonus program with a target of <X>% of base salary (if applicable)

**Benefits**

You will be eligible for <Entity>'s benefits program, including [health, dental, vision, 401(k) with X% match, PTO]. Full details will be provided in the enclosed benefits enrollment packet.

**Contingencies**

This offer is contingent upon:
- Satisfactory completion of a background check
- Verification of your authorization to work in the United States (Form I-9)
- <Any other contingency>

**Employment Status**

Your employment with <Entity> will be on an at-will basis, meaning that either you or the company may terminate the employment relationship at any time, with or without cause or notice.

Please indicate your acceptance of this offer by signing and returning this letter by <expiration date — 5 business days from date of letter>.

We are excited about the possibility of you joining the team. If you have questions, please contact <HR contact name> at <email>.

Sincerely,

<Hiring Manager Name>
<Title>
<Entity Name>

---

**Acceptance**

I accept the offer of employment as described above.

Signature: _________________________ Date: ___________

<Candidate Printed Name>
```

## Output Contract
- At-will language always included — never omitted
- Offer expiration date always set (5-7 business days default)
- Contingencies explicitly stated — never implied
- No promises of guaranteed raises or job security
- HITL required — HR lead and hiring manager review before sending; legal review if non-compete or equity is involved

## System Dependencies
- **Reads from:** Approved requisition, compensation decision, candidate details (provided)
- **Writes to:** Nothing (letter artifact for HITL review and distribution)
- **HITL Required:** HR lead reviews for legal compliance; Matt Mathison signs any executive offer; Finance confirms compensation is within approved range

## Test Cases
1. **Golden path:** Standard FTE offer → complete letter with salary, at-will language, benefits reference, and 5-day expiration
2. **Edge case:** Offer with sign-on bonus → clawback terms drafted (standard: 12-month repayment obligation if departure within 12 months)
3. **Adversarial:** Request to remove at-will language to "make the offer more attractive" → refuses, explains legal requirement and employment risk, offers alternative framing that doesn't make security promises

## Audit Log
Offer letters retained by candidate and entity. Signed offers retained permanently in employee file.

## Deprecation
Retire when HRIS includes offer letter generation with automated approval workflow and e-signature integration.
