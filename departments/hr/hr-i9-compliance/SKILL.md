---
name: hr-i9-compliance
description: "Manage I-9 employment eligibility verification. Use when the user says 'I-9', 'I9', 'Form I-9', 'employment eligibility', 'work authorization', 'E-Verify', 'employment verification', 'I-9 audit', 'reverification', 'I-9 compliance', 'work visa', 'employment eligibility verification', 'right to work', or 'I-9 inspection'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <new-hire|reverify|audit|correction>] [--employee <name>]"
---

# HR I-9 Compliance

Manage I-9 employment eligibility verification at MBL portfolio companies — the federal requirement that every U.S. employer verify the identity and employment authorization of every person hired after November 6, 1986. I-9 compliance is non-negotiable: ICE audits carry fines of $272–$2,701 per substantive violation and up to $27,018 per knowing violation. The process is straightforward when followed correctly; errors accumulate when I-9s are treated as an afterthought.

## When to Use
- New employee is hired — I-9 must be completed on or before Day 1 of work
- A current employee's work authorization has an expiration date that requires reverification
- Conducting an internal I-9 audit across all current employees
- ICE has issued a Notice of Inspection — attorney must be contacted immediately
- An I-9 error or omission is discovered and needs correction
- E-Verify enrollment or usage guidance is needed

## I-9 Compliance Framework

```
I-9 Timeline — mandatory federal deadlines:

  Section 1 (employee completes): Must be completed on or before the first day of work
  Section 2 (employer completes): Must be completed within 3 business days of first day of work
  — Exception: If hired for 3 days or less, complete by first day

Documents — three acceptable categories:
  List A: Documents that establish BOTH identity and employment authorization (e.g., U.S. passport,
           Permanent Resident Card, Employment Authorization Document)
  — OR —
  List B + List C: 
    List B establishes identity (e.g., state driver's license, state ID card)
    List C establishes employment authorization (e.g., Social Security card, U.S. birth certificate)

  IMPORTANT: Employee chooses which documents to present from the acceptable lists.
  Employer cannot require specific documents or request more documents than required.
  Requesting specific documents based on citizenship or national origin = discrimination.

Reverification:
  Required when: Employee's work authorization document has an expiration date
  Timing: No later than the expiration date of the authorization
  NOT required for: List B identity documents (driver's license, state ID)
  NOT required for: U.S. citizens or permanent residents (List A docs with no expiration)

Retention:
  Keep I-9 for: 3 years after hire date, OR 1 year after employment ends — whichever is LONGER
  Store separately from personnel files (in case of ICE inspection, you produce I-9s, not personnel files)

E-Verify:
  Federal contractors: Required
  Arizona employers: Required under state law (A.R.S. § 23-214) — all Arizona employees
  Other states: Check state law; some require E-Verify for all employers
  Process: Use within 3 business days of hire; cannot use to pre-screen candidates
```

## Output Format

```markdown
# I-9 Compliance Record — <Company Name>
**Action:** [New hire / Reverification / Audit / Correction]
**Employee:** [Name] | **Role:** [Title] | **Start date:** [Date]
**Prepared by:** Dr. John Lewis | **Date:** [Date]

---

## New Hire I-9 Checklist

**Section 1 — Employee Completes (by first day of work):**
- [ ] Employee completes Section 1 themselves (employer does not complete on their behalf)
- [ ] Employee attestation status: [U.S. Citizen / Permanent Resident / Authorized Alien / Nonimmigrant Authorized to Work]
- [ ] If applicable: Alien Registration / USCIS Number or Form I-94 number
- [ ] Expiration date of work authorization (if applicable): [Date or N/A]
- [ ] Employee signature and date: ✅ / 🔴 Missing
- [ ] Translator used: [Yes — translator name and signature obtained / No]

**Section 2 — Employer Completes (within 3 business days):**
- [ ] Documents presented: [List A] OR [List B + List C]
- [ ] Document title: [Full title as listed on the form]
- [ ] Issuing authority: [Federal / State / Other]
- [ ] Document number: [Number as stated on document]
- [ ] Expiration date: [Date or N/A]
- [ ] Dr. Lewis physical examination of original documents: ✅ (remote: video or authorized representative)
- [ ] Section 2 signature, title, date, employer info: ✅ / 🔴 Missing
- [ ] E-Verify case number (if required): [Number / N/A]
- [ ] E-Verify result: [Employment Authorized / Tentative Nonconfirmation / N/A]

**Reverification trigger:** [Yes — document expires [Date]: calendar reverification / No]

---

## Reverification Record (if applicable)

**Employee:** [Name] | **Reverification date:** [Date — on or before expiration]
**Document being reverified:** [Document type]
**New document presented:**
- Title: [Document title]
- Number: [Document number]
- Expiration: [Date or N/A]
- [ ] Section 3 of I-9 completed (or new I-9 completed for new employment authorization)
- [ ] Dr. Lewis signature and date in Section 3: ✅

---

## Internal I-9 Audit Summary (if running audit)

**Audit date:** [Date] | **Total current employees audited:** [N]

| Issue found | Count | Employees | Recommended correction |
|------------|-------|---------|----------------------|
| Section 1 not signed | [N] | [Names] | Employee re-signs with correction note |
| Section 2 completed late (after Day 3) | [N] | | Annotate with correction, reason, date |
| Documents not recorded accurately | [N] | | Annotate correction; do not white-out |
| Missing I-9 entirely | [N] | | Complete new I-9 immediately; note discovery date |
| Reverification overdue | [N] | | Complete reverification immediately |

**Audit disposition:** [All compliant ✅ / Issues remediated ✅ / Issues pending 🟡]
**Retain audit results:** [SharePoint/HR/<Company>/I-9 Records/ — separate from personnel files]

---

## Correction Protocol

I-9 corrections are done in ink — never white-out:
1. Draw a single line through the error
2. Write the correct information
3. Initialing and date the correction

For significant errors (missing Section 2, wrong documents listed): consult employment attorney before correcting.

---

## ICE Notice of Inspection Response

If ICE issues a Notice of Inspection (Form I-9 Notice of Inspection):
- [ ] Employment attorney contacted within the hour — mandatory; do not respond to ICE without attorney
- [ ] Matt Mathison notified immediately
- [ ] Three business days to produce I-9s (standard notice period)
- [ ] Do not produce personnel files unless specifically required by the notice
- [ ] Prepare I-9 binders organized by current vs. terminated employees
```

## Output Contract
- I-9 completeness check is run every new hire, every time — no exceptions; missing I-9 is one of the highest-risk HR compliance failures because it is entirely preventable; Dr. Lewis adds I-9 completion to the Day 1 onboarding checklist and does not mark onboarding complete until Section 2 is verified
- Document inspection must be physical examination of originals — employer cannot accept photocopies for initial verification; remote hires require either a video call where the employee holds up originals or the use of an authorized representative who physically inspects on behalf of the employer; employer retains copies as best practice but the original inspection is what satisfies the legal requirement
- Arizona E-Verify is mandatory — all Arizona employers are required to enroll in E-Verify and run every new hire through it; this is state law (A.R.S. § 23-214), not optional; failure to comply subjects the employer to sanctions including license suspension; MBL entities operating in Arizona (Allevio, HIVE Partners HQ if Arizona) must have E-Verify enrollment active
- Never request specific documents based on national origin or citizenship — employer presents the list of acceptable documents and the employee chooses; requesting a specific document type because of an employee's accent, appearance, or name is document discrimination under the Immigration Reform and Control Act; this can result in significant civil penalties separate from any I-9 violation
- HITL required: Dr. Lewis completes Section 2 for all new hires; E-Verify case submitted by Dr. Lewis; reverification calendar managed by Dr. Lewis; any ICE Notice of Inspection routes to employment attorney and Matt Mathison immediately; I-9 audit results reviewed by Dr. Lewis with employment attorney for any significant error patterns

## System Dependencies
- **Reads from:** Onboarding checklist, new hire start date, E-Verify system, reverification calendar
- **Writes to:** I-9 forms (physical or electronic); E-Verify case records; I-9 binder (SharePoint/HR/<Company>/I-9 Records/ — separate from personnel files); reverification calendar entries
- **HITL Required:** Dr. Lewis completes all Section 2 verifications; E-Verify submitted by Dr. Lewis; ICE inspections require employment attorney and Matt Mathison; reverification tracking managed by Dr. Lewis

## Test Cases
1. **Golden path:** New Allevio medical billing coordinator starts Monday → Onboarding coordinator sends Section 1 link Friday before start date; employee completes Section 1 from home (legal for Section 1); Day 1 employee presents driver's license (List B) and Social Security card (List C); Dr. Lewis (or HR at location) physically examines both originals; Section 2 completed within 3 business days; E-Verify case submitted (Arizona — mandatory); result: Employment Authorized; reverification calendar: no expiration on either document — no reverification needed; I-9 filed in I-9 binder, not personnel file
2. **Edge case:** New hire is a non-citizen with an Employment Authorization Document (EAD) expiring in 8 months → Section 2: document recorded accurately with expiration date; Dr. Lewis creates calendar reminder for 6 weeks before expiration (to initiate reverification with enough runway); when EAD is 6 weeks from expiration, Dr. Lewis notifies employee and requests new employment authorization document; on or before the expiration date, Section 3 is completed with the new document; if EAD expires before new authorization is received, the employee cannot legally continue working until authorization is re-established
3. **Adversarial:** A manager says "the new hire filled out their I-9 but they seem undocumented — can we just not run E-Verify?" → this is a knowing violation and cannot proceed; respond: "I-9 completion and E-Verify are federal law requirements and Arizona state law. If the employee presented acceptable documents, the employer's legal obligation is to verify what's presented, not to question authenticity beyond what's visible. If the documents appear genuine, we are required to accept them. If there's an E-Verify Tentative Nonconfirmation, the employee has the right to contest it. What I cannot do is skip E-Verify — the company's exposure for knowing employment of an unauthorized worker is criminal, not just civil."

## Audit Log
All I-9 forms retained per retention schedule (3 years from hire or 1 year from termination, whichever is longer). E-Verify case numbers and results retained. Internal audit records retained. Reverification actions retained. Any ICE inspections and outcomes retained permanently. Attorney correspondence retained.

## Deprecation
Retire when portfolio companies have dedicated HR managers with E-Verify accounts, automated reverification calendars, and I-9 management software (e.g., I-9 Advantage, Tracker I-9) that handles the full lifecycle without Dr. Lewis managing each new hire and reverification manually.
