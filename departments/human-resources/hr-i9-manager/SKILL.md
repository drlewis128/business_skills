---
name: hr-i9-manager
description: "Manage Form I-9 employment eligibility verification for MBL Partners portfolio companies. Use when the user says 'I-9', 'Form I-9', 'employment eligibility', 'work authorization', 'verify employment eligibility', 'I-9 verification', 'I-9 compliance', 'I-9 audit', 'I-9 error', 'I-9 correction', 'I-9 expiring', 'reverification', 'work permit', 'EAD', 'employment authorization document', 'E-Verify', 'I-9 retention', 'I-9 record', 'Section 1', 'Section 2', 'Section 3', 'List A', 'List B', 'List C', 'document verification', 'original documents', 'acceptable documents', 'right to work', 'immigration compliance', or 'new hire verification'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--employee <name>] [--action <complete|audit|reverify|correct>] [--state <az|ut>]"
---

# HR I-9 Manager

Manage Form I-9 compliance — completing new hire I-9s, conducting periodic audits, managing reverification for expiring work authorizations, and correcting errors. I-9 violations are strictly liability-based: ICE does not care about intent; a form that is incomplete, untimely, or has documentation errors is a violation, period. At portfolio company scale, a single ICE audit can disrupt operations for weeks.

## When to Use
- A new employee starts (I-9 must be completed)
- An existing employee's work authorization is expiring (reverification required)
- Periodic I-9 audit is being conducted
- An I-9 error needs to be corrected

## I-9 Framework

```
NEW HIRE I-9 PROCESS:

  TIMING (absolute deadlines):
    Section 1 (employee): completed on or before Day 1 (first day of work for pay)
    Section 2 (employer): completed within 3 business days of start date
    If employment is 3 days or less: Section 2 on Day 1
    
  SECTION 1 (employee completes):
    Legal name; address; date of birth; SSN (voluntary unless using E-Verify)
    Attestation: citizen / non-citizen national / lawful permanent resident / alien authorized to work
    Employee signature + date
    Preparer/translator section: if someone assists (e.g., limited English proficiency)
    
  SECTION 2 (employer completes — Dr. Lewis or authorized designee):
    Examine original documents (never copies, never faxes)
    List A (identity + employment authorization): passport; passport card; Perm Resident Card; EAD
    OR List B (identity) + List C (employment authorization): driver's license + SSN card / birth cert
    Record: document title; issuing authority; document number; expiration date
    Employer certification: employer name; title; signature; date; business address
    
  COMMON ERRORS (avoid these):
    Accepting copies instead of originals
    Recording wrong document expiration date
    Missing employee or employer signature
    Not completing Section 2 within 3 business days
    "Pre-populating" Section 1 for the employee
    Accepting expired documents (List A only; List B identity docs don't expire)
    Annotating in wrong fields

REVERIFICATION (Section 3):
  Required when: work authorization expires (EAD; limited-validity visas)
  NOT required: for documents with no expiration (SSN cards; birth certificates; US passports)
  NOT required: to re-examine ID documents that have since expired
  Timing: before the expiration date (not after)
  Dr. Lewis tracks all expiring work authorizations in a tickler file (60-day advance alert)
  
  Process: employee presents new document showing continued authorization
  Record in Section 3: document title; number; new expiration date; employer signature + date
  
PROHIBITED CONDUCT:
  Cannot specify which documents employee must present (List A is employee's choice; 
    cannot require passport if employee presents List B+C)
  Cannot require more documents than required by the form
  Cannot reverify documents that don't require reverification (US citizens)
  Cannot discriminate based on immigration status or national origin in document acceptance
  Document abuse (rejecting valid documents) = IRCA violation

I-9 AUDIT (periodic — recommend annually):
  Pull all active employee I-9 forms
  Check completeness: all fields completed; signatures dated; no blanks
  Check timing: Section 2 completed within 3 business days (compare to hire date)
  Check document records: expiration dates match what was presented
  Check reverification: any expiring work authorizations flagged and reverified?
  Correction protocol for errors discovered during self-audit (see below)
  
SELF-AUDIT CORRECTION:
  Do NOT white-out or obliterate errors — this makes it worse
  Draw a single line through the error; write correct information; add initials + date
  If substantial errors: complete a new I-9; attach to old one with explanation memo
  Never backdate any corrections
  
RETENTION:
  Retain I-9 for: 3 years from date of hire OR 1 year from date of separation (whichever is later)
  Destroyed after retention period: shred (contain personal info)
  Paper or electronic storage: both acceptable; electronic must have audit trail
  Keep I-9s separate from personnel file (best practice — if ICE audits, limits access to other HR data)
  
AZ-SPECIFIC:
  E-Verify: required for AZ employers with ≥15 employees (AZ Employer Sanctions Law)
  Allevio: likely requires E-Verify depending on FTE count; Dr. Lewis confirms annually
  HIVE (UT-based): E-Verify is voluntary at federal level; no UT state mandate (as of 2026)
  Federal contractors: E-Verify may be required per FAR clause
```

## Output Format

```markdown
# I-9 Completion Record — [Employee Name] | [Entity] — [Date]
**Section 1 completed:** [Date] (must be on or before start date)
**Section 2 completed:** [Date] (must be within 3 business days of start date)
**Completed by:** Dr. Lewis / [Authorized designee]

---

## Document List
**Type:** ☐ List A (one document) / ☐ List B + List C (two documents)

| List | Document title | Issuing authority | Document # | Expiration |
|------|--------------|------------------|-----------|-----------|
| [A/B/C] | [Driver's license / Passport / EAD] | [State / DHS] | [Number] | [Date / N/A] |

---

## Reverification Tracking (if applicable)
**Work authorization expires:** [Date] | **60-day alert sent:** [Date]
**Section 3 completed:** [Date] | **New document:** [Title/Number/Expiry]

---

## Audit Notes (if self-audit)
- [ ] Section 1 complete and signed
- [ ] Section 2 complete within 3 business days
- [ ] Documents accepted appropriate (List A or B+C)
- [ ] Expiration dates recorded correctly
- [ ] Reverification current (if applicable)
```

## Output Contract
- Original documents only, examined in person — a photocopy of a passport is not acceptable I-9 documentation; the employer must physically examine original documents; for remote hires, the employer must authorize a third-party representative to physically examine documents and complete Section 2 (a common solution is using a UPS store, notary, or trusted local business contact); Dr. Lewis ensures remote hire I-9 completion has a designated authorized representative; no Section 2 is completed based on scanned or emailed copies
- Expiring work authorizations tracked 60 days in advance — Dr. Lewis maintains a tickler file of all employees with time-limited work authorization; 60-day advance alert allows time for the employee to obtain renewal documents; a reverification done after the expiration date is technically a violation even if the renewal was in process; Dr. Lewis does not allow reverification to happen after the expiration date
- Self-audit corrections are never backdated — a discovered error corrected with today's date and initials is defensible in an ICE audit; a discovered error "corrected" with a date from the original hire event (backdating) is fraud; Dr. Lewis instructs anyone correcting I-9 errors to draw a line through the error, write the correction, and initial and date with today's date — no exceptions; backdating I-9 corrections converts an administrative violation into a criminal one
- HITL required: Section 2 completion → Dr. Lewis or authorized designee; remote hire I-9 → Dr. Lewis designates authorized representative; E-Verify submission (AZ entities ≥15 FTE) → Dr. Lewis or designee; reverification trigger → Dr. Lewis 60-day alert + Section 3 completion; self-audit findings → Dr. Lewis reviews and corrects; ICE audit → Dr. Lewis + legal counsel same day

## System Dependencies
- **Reads from:** hr-onboarding-planner (new hire start date — triggers I-9 timeline); hr-compliance-calendar (I-9 and E-Verify deadlines); HRIS (employee roster — basis for audit); hr-offboarding-manager (separation date — triggers retention calculation)
- **Writes to:** I-9 forms (paper or electronic — separate from personnel file); E-Verify case records (AZ entities); reverification tickler file; self-audit findings record; Dr. Lewis compliance log
- **HITL Required:** Section 2 → Dr. Lewis or authorized designee; remote → designated representative; E-Verify → Dr. Lewis; reverification → 60-day alert + Dr. Lewis Section 3; self-audit corrections → Dr. Lewis; ICE audit → Dr. Lewis + legal counsel

## Test Cases
1. **Golden path:** Allevio Care Coordinator starts January 6. Section 1 completed January 6 (Day 1). Dr. Lewis examines documents January 7: US Passport (List A). Records: document title, DHS, document #, expiration. Section 2 signed January 7 (within 3 business days). E-Verify case created same day (Allevio is AZ employer). I-9 filed separately from personnel file. Retention reminder set: 3 years from Jan 6 OR 1 year from separation — whichever is later.
2. **Edge case:** Remote HIVE hire (Vernal, UT) — Dr. Lewis can't examine documents in person → Dr. Lewis: "For remote hires, I'll designate an authorized representative to complete Section 2. I'll contact [local contact in Vernal] to meet with the employee on their start date, examine the original documents, and complete and sign Section 2 as my authorized representative. I'll send them instructions. The completed form is then scanned and sent to me; I retain the original or the electronic copy."
3. **Adversarial:** Manager asks Dr. Lewis to accept a photocopy of an employee's passport because "they forgot their documents at home" → Dr. Lewis: "I cannot accept copies. Section 2 requires examination of original documents. The employee needs to bring originals before the 3-business-day deadline. If they genuinely don't have them — for example, their passport is being used for a visa application — they have 3 business days to present a receipt for replacement documents. I'll send them the USCIS receipt rule guidance. We have [X days] before the deadline — there's time."

## Audit Log
All I-9 forms retained per retention schedule (3 years from hire / 1 year from separation). E-Verify case records retained 3 years. Self-audit records retained (findings; corrections; dates). Reverification tickler records retained. Authorized representative designations retained. Correction log (who corrected; what; date) retained.

## Deprecation
I-9 acceptable documents list updated when USCIS revises the List (typically with each new form edition). E-Verify AZ threshold reviewed if AZ Employer Sanctions Law changes. Remote I-9 process reviewed if DHS remote I-9 pilot programs become permanent.
