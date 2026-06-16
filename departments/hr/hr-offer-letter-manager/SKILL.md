---
name: hr-offer-letter-manager
description: "Draft and manage employee offer letters. Use when the user says 'offer letter', 'draft an offer', 'send an offer', 'extend an offer', 'make an offer to', 'write an offer letter', 'offer package', 'compensation offer', 'job offer', 'formal offer', 'employment offer', or 'offer terms'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--candidate <name>] [--role <title>] [--salary <amount>] [--start-date <YYYY-MM-DD>]"
---

# HR Offer Letter Manager

Draft and manage employee offer letters for MBL portfolio company hires — from verbal offer through signed letter. An offer letter is both a legal document and a first impression of what it's like to work here. It should be clear, complete, and professional. Missing terms create confusion and disputes later; over-complicated language for a small company signals poor operations. The verbal offer always precedes the written offer — never send a written offer to someone who hasn't verbally accepted.

## When to Use
- A finalist has been selected and references are clear
- Matt Mathison or Dr. Lewis has approved the hire and compensation
- A verbal offer has been accepted and the written offer needs to go out within 24 hours
- An existing offer letter template needs to be reviewed or updated
- A candidate counter-offer situation requires guidance on how to respond

## Offer Process Framework

```
Offer process — 4 steps:

Step 1 — INTERNAL APPROVAL (before verbal offer):
  Compensation approved: Dr. Lewis (below director); Matt Mathison (director and above)
  Role confirmed: hiring manager confirmation that this is the right candidate
  Reference checks: complete and clear before verbal offer
  Background check: may start after verbal acceptance (state law varies)

Step 2 — VERBAL OFFER (same day as approval):
  Call the candidate — do not extend the verbal offer by email
  State: role, compensation, start date, key benefits
  Ask: "Does this work for you?" — listen for hesitation
  If accepted: "I'll have the written offer to you within 24 hours"
  If countered: "Let me check and come back to you today [or by X time]"

Step 3 — WRITTEN OFFER (within 24 hours of verbal acceptance):
  Standard template with all terms filled
  3-business-day acceptance window
  Attach: benefits summary (if available); any equity docs (if applicable)

Step 4 — SIGNED OFFER (before start date):
  Signed offer retained in employee file
  Background check cleared before start date
  Day-1 access setup initiated after signed offer received

Counter-offer guidance:
  Counter ≤5% of base: Dr. Lewis may approve with documented reason
  Counter 5-15% of base: requires Matt Mathison approval
  Counter >15% of base: flag — if we need to go 15%+ above what we offered,
                          we likely mispriced the role; consider whether this is
                          the right candidate or whether the comp band needs revision
```

## Output Format

### Written Offer Letter

```markdown
[Company Letterhead / Logo]

[Date]

[Candidate Full Name]
[Candidate Address — optional for professional roles]

Dear [First Name],

We are pleased to offer you the position of **[Job Title]** at **[Company Name]**, reporting to **[Manager Name / Title]**. We believe your skills and background are an excellent match for our team, and we're excited about what you'll bring to this role.

---

**Position details:**

| Term | Details |
|------|---------|
| **Title** | [Job Title] |
| **Department** | [Department] |
| **Reports to** | [Manager Name, Title] |
| **Start date** | [Date] — subject to background check clearance |
| **Employment type** | Full-time / Part-time | Exempt / Non-exempt |
| **Location** | [Office location / Remote / Hybrid — describe] |

---

**Compensation:**

| Component | Amount |
|-----------|--------|
| **Base salary** | $[X]/year, paid [bi-weekly / semi-monthly] |
| **Performance bonus** | [Up to X% of base salary, based on individual and company performance — paid [annually / quarterly]] / N/A |
| **Sign-on bonus** | $[X], payable on [first paycheck / 30-day anniversary] — repayable if you leave within 12 months / N/A |

---

**Benefits:**

[Company Name] offers the following benefits, which become effective [first day / 30 days / 1st of month following start]:

- **Health insurance:** [Medical, dental, vision — company pays X% of employee premium]
- **Retirement:** [401(k) with/without employer match — vesting schedule]
- **Paid time off:** [X days PTO per year / unlimited PTO policy]
- **Holidays:** [X paid holidays per year]
- [Any other material benefits]

---

**At-will employment:**

Your employment with [Company Name] is at-will, meaning that either party may terminate the employment relationship at any time, with or without cause or notice, subject to applicable law. This offer does not constitute a contract of employment for a specific period.

---

**Contingencies:**

This offer is contingent upon:
- Successful completion of a background check
- Verification of your legal authorization to work in the United States (Form I-9)
- [Any other contingencies — e.g., non-compete review, reference check if not yet complete]

---

**Acceptance:**

Please indicate your acceptance of this offer by signing below and returning this letter by **[Date — 3 business days from offer date]**. If you have questions, please contact Dr. John Lewis at jlewis@mblpartners.com or 602-880-6491.

We look forward to welcoming you to the team.

Sincerely,

[Authorized Signatory Name]
[Title]
[Company Name]

---

**Acceptance:**

I accept the terms of employment as described in this offer letter.

Signature: _________________________ Date: _____________

Printed name: _________________________
```

### Verbal Offer Script

```
"[Candidate name], I'm calling with great news — we'd like to offer you the [Job Title] position at [Company].

Here are the terms:
- Base salary: $[X]/year
- [Bonus: up to X% based on performance]
- Start date: [Target date]
- Benefits: [Brief summary]

Does this work for you?"

If accepted:
"Excellent. I'll have a written offer to you by [tomorrow / end of day]. 
Background check will start shortly — standard process, let me know if you have any questions about it."

If countered:
"I appreciate you being direct. Let me check on that and come back to you by [today / end of day tomorrow]. 
Can I ask — is compensation the only thing keeping you from accepting, or are there other terms you'd like to discuss?"
```

## Output Contract
- Verbal before written — always; a written offer that arrives before a verbal acceptance creates confusion and false urgency; the call also surfaces counter-offers and hesitation before ink is on paper, which gives the company more flexibility to respond; the written offer should confirm an already-accepted offer, not be the first moment the candidate hears the terms
- At-will language always included — every MBL portfolio company offer letter includes at-will language; an offer letter without at-will language (or that promises employment for a specific duration) creates implied contract risk; if a candidate pushes back on at-will language, escalate to legal counsel before responding
- 3-day acceptance window — long enough to be fair, short enough to keep the process moving; if a candidate asks for more time, Dr. Lewis can extend by 2 business days; beyond that, the candidate is either not ready to decide or has another offer they're waiting on — either way, the company needs to know
- Counter-offer guidance always provided — when a candidate counters, the response must be decided quickly (same day if possible); a candidate who counter-offers and then waits 3 days for a response often takes the competing offer in the interim; Dr. Lewis has authority up to 5% above the approved range; Matt Mathison is the decision-maker above that threshold
- HITL required: Dr. Lewis approves compensation and drafts the written offer; Matt Mathison approves director and above hires and counter-offers exceeding 5% above approved range; signed offer retained in employee file; background check clearance before start date

## System Dependencies
- **Reads from:** Approved compensation range, benefits summary, background check results, reference check notes
- **Writes to:** Offer letter (SharePoint/HR/<Company>/Employees/<Name>/); employee file (on acceptance); payroll system (new employee setup after acceptance)
- **HITL Required:** Dr. Lewis verbal offer and written offer; Matt Mathison approval for director and above; counter-offer >5% requires Matt Mathison; signed offer required before start date

## Test Cases
1. **Golden path:** Allevio controller hire — candidate verbally accepts → Dr. Lewis calls with verbal offer ($88K base, no bonus, standard benefits, Monday start); candidate accepts on the call; written offer sent within 3 hours; candidate signs within 24 hours; background check initiated same day; clear by Day 5; employee file created with signed offer, background check clearance, and reference notes; payroll setup initiated; Day-1 access setup (QB, Bill.com, Microsoft 365) confirmed by start date
2. **Edge case:** Candidate counters at $95K vs. offered $88K ($7K counter, ~8% above offered range) → this is above Dr. Lewis's 5% authority; Dr. Lewis calls Matt Mathison: "Candidate countered at $95K. Our offered $88K is at the top of our range. I believe they're worth it — their close experience is stronger than expected and references confirm they're a strong performer. Recommend approving." If approved: Dr. Lewis calls back same day with acceptance. If not approved: Dr. Lewis calls back with either a best-and-final counter or a respectful pass. Do not go silent on a counter — respond same day.
3. **Adversarial:** A candidate asks to see the employee handbook before signing the offer letter, and the company doesn't have one → do not fabricate policy or make verbal commitments about policies that don't exist in writing; respond: "We're a lean team and our employee handbook is in development — I can share our current written policies on [expense reimbursement / PTO / code of conduct] which cover the most important areas. Is there a specific policy you're concerned about? Happy to address it directly." Escalate to Dr. Lewis if the candidate's question reveals a significant policy gap that needs to be addressed before the hire starts.

## Audit Log
All offer letters retained by candidate and date. Verbal offer notes retained (date, time, candidate response). Counter-offer decisions documented with approver. Signed offers retained permanently in employee file. Background check clearances retained. Declined offers documented with reason.

## Deprecation
Retire when portfolio companies have HR managers and legal counsel-reviewed offer letter templates specific to their state employment law, with documented offer processes that don't require Dr. Lewis to draft each offer individually.
