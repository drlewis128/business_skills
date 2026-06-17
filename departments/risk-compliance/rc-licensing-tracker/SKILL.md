---
name: rc-licensing-tracker
description: "Track business licenses, professional licenses, and regulatory registrations. Use when the user says 'business license', 'professional license', 'licensing tracker', 'license renewal', 'regulatory registration', 'state license', 'license expiration', 'license compliance', 'permits', 'license inventory', 'track licenses', 'license renewal calendar', 'contractor license', 'professional certification', or 'license status'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <business|professional|regulatory>] [--action <inventory|renew|report|add>]"
---

# Licensing Tracker

Track business licenses, professional licenses, and regulatory registrations at MBL portfolio companies — maintaining a current inventory of all required licenses, their renewal dates, and compliance status. Operating with an expired license is a compliance violation that can result in fines, service cessation, or regulatory action. At Allevio, professional licenses (physician, nurse, MA, physical therapist) are prerequisites for providing licensed clinical services and billing Medicare/Medicaid — an expired provider license creates both a legal and a billing compliance problem.

## When to Use
- Building the initial license inventory for a portfolio company
- 90-day pre-renewal review — which licenses are coming up?
- A license has been received, renewed, or changed — update the tracker
- A new employee is hired who requires a professional license for their role
- A new state, location, or service line requires a new license or registration
- Preparing for a regulatory audit or accreditation review

## Licensing Framework

```
License categories by entity:
  MBL Partners (PE/HoldCo):
    → AZ Registered Agent: Annual — Secretary of State filing
    → Entity annual reports: AZ/UT/other states where registered — due per state schedule
    → Investment advisor registration: If providing investment advice — check applicability (attorneys)
    → DBA registrations: If operating under any assumed name
    
  Allevio (Healthcare MSO):
    → Arizona LLC/entity registration: Annual report — AZ Corporation Commission
    → Facility/clinic license: AZ Department of Health Services — per clinic location; annual renewal
    → Medicare/Medicaid certification: CMS enrollment; revalidation every 5 years (CMS-855)
    → NPI (National Provider Identifier): Each clinic location; each provider — update if moving
    → Provider contracts: Insurance panels — Blue Cross, United, Cigna, Aetna — credentialing
    
  Professional licenses (Allevio — per individual):
    → Physicians: AZ Medical Board (or other state if licensed elsewhere); every 2 years
    → NPs/PAs: AZ Board of Nursing / AZ Regulatory Board of PAs; every 2 years
    → Registered Nurses: AZ Board of Nursing; every 2 years
    → Medical Assistants: Certification (CMA/RMA) — not state licensed but certification must be current
    → Physical/Occupational Therapists: AZ Board of Physical/OT Examiners — if applicable
    → Billing/coding certifications: CPC, CCS — not required by law but required by Allevio policy
    
  HIVE Partners (Oil & Gas):
    → Utah entity registration: Annual report — UT Division of Corporations
    → Oil and gas operator license: Utah Division of Oil, Gas and Mining (DOGM)
    → Water appropriation permits: Utah Division of Water Rights — production water handling
    → Environmental permits: EPA/state — spill prevention, air quality (if applicable)
    → Well permits: DOGM — per well drilled or reworked
    
  Column6/Siprocal (CTV/Media):
    → State entity registrations
    → FCC compliance (if broadcasting): Not typical for CTV but assess
    
License renewal lead times:
  Professional licenses: Begin renewal 90 days before expiration
  Entity registrations: Begin 60 days before due date
  Facility/clinic licenses (Allevio): Begin 120 days — often require extensive documentation
  Medicare/Medicaid revalidation: Begin 6 months before due date (CMS process is slow)
  
OIG LEIE integration:
  All licensed healthcare professionals at Allevio: OIG LEIE check annually (not just at hire)
  OIG database: https://exclusions.oig.hhs.gov
  Excluded person providing services = Medicare/Medicaid recoupment + potential exclusion of the entity
```

## Output Format

```markdown
# License and Registration Tracker — <Company Name>
**Last updated:** [Date] | **Maintained by:** Dr. John Lewis
**Next 90-day review:** [Date]

---

## License Inventory

### Business / Entity Licenses

| License / Registration | Issuing authority | Entity | License # | Expiration | Renewal due | Status | Owner |
|----------------------|-----------------|--------|----------|-----------|------------|--------|-------|
| AZ LLC Annual Report | AZ Corporation Commission | Allevio MSO | [File #] | [Date] | [Date - 30 days] | ✅ Current / ⚠️ Due soon / 🔴 Expired | Dr. Lewis |
| AZ Clinic Facility License — Phoenix | AZ DHS | Allevio | [License #] | [Date] | [Date - 120 days] | ✅ Current | Dr. Lewis |
| AZ Clinic Facility License — Scottsdale | AZ DHS | Allevio | [License #] | [Date] | | | |
| Medicare Enrollment CMS-855 | CMS | Allevio | [PTAN] | Revalidation [Date] | [Date - 6 months] | ✅ Current | Dr. Lewis |
| UT LLC Annual Report | UT Division of Corps | HIVE Partners | [File #] | [Date] | | | |
| UT Oil & Gas Operator License | UT DOGM | HIVE Partners | [License #] | [Date] | | | |

---

### Professional Licenses (Allevio Clinical Staff)

| Provider | License type | License # | Board | Expiration | Renewal due | OIG LEIE last check | Status |
|---------|------------|---------|-------|-----------|------------|-------------------|--------|
| [Provider name] | MD — AZ Medical Board | [#] | AZ Medical Board | [Date] | [Date - 90 days] | [Date] ✅ | ✅ Current |
| [Provider name] | NP — AZ Board of Nursing | [#] | AZ Board of Nursing | [Date] | | [Date] ✅ | |
| [Staff name] | CMA Certification | [#] | AAMA | [Date] | | [Date] ✅ | |

---

## 90-Day Renewal Calendar

| Due within 90 days | License / Registration | Entity | Expiration | Action required | Owner |
|-------------------|-----------------------|--------|-----------|----------------|-------|
| ⚠️ [Date] | [License name] | [Entity] | [Expiration] | [Specific renewal steps] | Dr. Lewis |

**Renewals due this month:** [N] | **Renewals due next 30 days:** [N] | **Renewals due 31-90 days:** [N]

---

## OIG LEIE Annual Check Log (Allevio)

| Provider / Staff | Role | Last OIG check | Result | Next check due |
|----------------|------|--------------|--------|--------------|
| [Name] | [Role] | [Date] | ✅ Clear | [Date + 12 months] |
| [Name] | | | | |

**OIG checks overdue:** [N] — immediate action required

---

## License Issue Log

| Date | License | Issue | Status | Resolution |
|------|---------|-------|--------|-----------|
| [Date] | [License] | [Expired / Suspended / Non-renewal] | [Resolved / In progress] | [Action taken] |

---

## Expired License Response Protocol

1. **Immediately:** Notify CEO and Dr. Lewis; assess service impact
2. **Same day (Allevio clinical license):** Assess whether clinical services can legally continue; legal counsel if Medicare/Medicaid billing involved
3. **Same day (provider license):** Provider may not see patients until license is reinstated; no billing for services provided with expired license
4. **Expedite renewal:** Contact licensing board immediately; request expedited processing if available
5. **Matt Mathison:** Notify if Medicare/Medicaid billing at risk or if services must halt

---

## Matt Mathison Brief (if license expiration affects operations or compliance)

[Company] license: [License name] expired / expiring [Date]. Impact: [Services affected / billing at risk]. Action: [Renewal in progress / Expedited request filed / Services halted pending reinstatement]. Timeline: Expected reinstatement [Date]. Attorney involved: [Yes/No].
```

## Output Contract
- 90-day advance tracking is not optional — a license that expires without advance action creates a crisis; a license tracked 90 days out creates a managed renewal; the tracker sends alerts at 90, 60, and 30 days; professional licenses at Allevio are tracked at 90 days because the AZ Medical Board renewal process can take weeks; Medicare enrollment revalidation is tracked at 6 months because CMS processing is slow; "we didn't realize it expired" is a failure of the tracking system, not a surprise
- Expired professional licenses at Allevio trigger immediate service cessation for that provider — a provider with an expired license may not legally provide licensed services; billing for services provided by a provider with an expired license is fraudulent billing to Medicare/Medicaid (False Claims Act exposure); if a provider's license expires, they stop seeing patients immediately, the billing team is notified not to submit claims for services after expiration, and the reinstatement process is expedited; there is no gray area here
- OIG LEIE checks are annual for all clinical staff, not just at hire — a provider who was clear at hire may be added to the exclusion list later; Medicare/Medicaid require that covered entities check the exclusion list at hire AND periodically after hire; "annually" is the minimum; for high-risk roles (providers, billers), annual re-checks are documented; the check date and result are recorded; an excluded provider discovered after-the-fact = recoupment of all Medicare/Medicaid payments for services they provided since exclusion date
- HITL required: Dr. Lewis maintains the license tracker; CEO notified of upcoming renewals affecting operations (90-day alert); expired license immediate notification to CEO and Dr. Lewis; provider license expiration: CEO notified; services halted; Matt Mathison notified if Medicare/Medicaid billing is at risk; attorney involvement for expired facility licenses and Medicare enrollment issues

## System Dependencies
- **Reads from:** AZ Corporation Commission (entity registration), AZ DHS (facility licenses), AZ Medical Board / Board of Nursing (provider licenses), CMS PECOS (Medicare enrollment), OIG LEIE exclusion database, hr-onboarding-coordinator (new hire license requirements)
- **Writes to:** License tracker (SharePoint/RC/<Company>/Licensing/); 90-day renewal calendar; OIG LEIE check log; license issue log; CEO and Matt Mathison notifications
- **HITL Required:** Dr. Lewis maintains tracker; CEO notified at 90-day alert and for expired licenses; provider license expiration: immediate CEO notification + service cessation; Matt Mathison if Medicare/Medicaid billing at risk; attorney for facility license and CMS enrollment issues

## Test Cases
1. **Golden path:** 90-day license review for Allevio → Tracker shows: (1) AZ Medical Board license for Dr. [Provider] expiring in 67 days — renewal initiated; instructions sent to provider; 30-day follow-up scheduled; (2) Clinic B facility license expiring in 45 days — AZ DHS renewal package submitted; application confirmed received; (3) CMA certification for [Staff] expired 3 days ago (missed the 90-day flag — certification lapsed) — staff notified; continuing education requirements checked; AAMA re-examination eligibility confirmed; staff is not a licensed provider so patient services continue but updated certification must be obtained within 30 days per Allevio policy; OIG LEIE checks: all current ✅; no expired licenses in current tracker
2. **Edge case:** A physician joins Allevio who is licensed in multiple states — which licenses are tracked? → Track all licenses under which the physician will practice clinical services for Allevio; if Allevio operates only in Arizona, the AZ Medical Board license is the operational license; other state licenses may be tracked for credentialing completeness or if Allevio provides telehealth to patients in other states (in which case those state licenses are legally required for the telehealth services); DEA registration (if prescribing controlled substances) is also tracked; all licenses appear in the tracker with their respective expiration dates and renewal schedules
3. **Adversarial:** "The licenses auto-renew — we don't need to track them manually" → Some business registrations auto-renew with a credit card on file; professional licenses do NOT auto-renew — they require the individual to complete continuing education, pay the renewal fee, and submit the application; facility licenses require documented inspections and compliance attestations; Medicare enrollment revalidation requires completing CMS-855 forms; the "auto-renewal" assumption is the assumption that leads to finding a lapsed license in the middle of a payer audit; the tracker exists precisely because each license type has different requirements, different agencies, and different deadlines

## Audit Log
License tracker maintained with version history. Renewal records retained by license type and year. OIG LEIE check records retained permanently (Allevio). Expired license incidents retained permanently. CEO and Matt Mathison notifications retained. Attorney correspondence retained. Medicare enrollment records retained 10 years.

## Deprecation
Retire when portfolio companies have dedicated compliance and credentialing staff who maintain the license tracker — with Dr. Lewis reviewing quarterly license status and providing oversight of Medicare/Medicaid enrollment compliance. OIG LEIE annual checks at Allevio are a permanent compliance requirement regardless of who performs them.
