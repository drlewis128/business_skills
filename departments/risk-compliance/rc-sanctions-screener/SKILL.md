---
name: rc-sanctions-screener
description: "Screen vendors, employees, and partners against OFAC and OIG exclusion databases. Use when the user says 'sanctions screening', 'OFAC screening', 'OIG LEIE screening', 'exclusion screening', 'sanctions check', 'OIG check', 'OFAC compliance', 'excluded person', 'sanctioned entity', 'HHS OIG exclusion list', 'screening new vendor', 'screen new employee', 'annual OIG check', 'OFAC SDN list', or 'sanctions compliance'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--screen-type <OFAC|OIG|both>] [--subject-type <employee|vendor|partner|board>] [--action <screen|annual-check|report>]"
---

# Sanctions Screener

Screen vendors, employees, business partners, and board members against OFAC (Office of Foreign Assets Control) sanctions lists and OIG (HHS Office of Inspector General) exclusion databases — and manage the response when a match is found. OFAC sanctions compliance is a US Treasury requirement that applies to all US persons and businesses; dealing with a sanctioned person or entity exposes the company to significant civil and criminal penalties. OIG LEIE exclusion screening is a Medicare/Medicaid compliance requirement for Allevio — employing an excluded person creates recoupment liability from the date of first employment. Both programs require screening at hire AND periodic ongoing screening.

## When to Use
- A new employee is being onboarded — OFAC and OIG screening required
- A new vendor is being added — OFAC screening required before first payment
- Annual OIG LEIE check for all Allevio clinical staff is due
- A potential business partner or investor needs screening
- A screening hit is returned — what is the response?
- The compliance calendar triggers the annual OIG screening cycle

## Sanctions Screening Framework

```
OFAC Screening:
  What is OFAC: US Treasury Office of Foreign Assets Control administers economic and trade sanctions against countries, individuals, and organizations
  SDN List: Specially Designated Nationals and Blocked Persons — the primary sanctions list; over 8,000 entries
  Additional lists: Sectoral sanctions (SSI); Foreign Sanctions Evaders (FSE); Correspondent Account or Payable-Through Account sanctions (CAPTA)
  Prohibition: US persons may not deal with SDN-listed persons or entities; no payments, no business relationships, no assets
  
  Screening requirements:
    Who to screen: All new vendors (before first payment); all new employees (at hire); all new significant business partners; board members; investors above ownership thresholds
    When: At hire/onboarding; before first payment to new vendor; at contract execution with new business partner
    Ongoing: Annual re-screen for existing relationships; or when a name change or new information is received
    
  Screening method:
    OFAC SDN List: Available at ofac.treas.gov; free web search; also available via commercial screening services
    Fuzzy matching: Name variations (spelling, transliteration) must be considered; don't just exact-match
    False positives: Common names may generate false positives (review DOB, nationality, company details)
    
  Penalty for violations: Civil — up to $1M+ per violation or twice the transaction value; Criminal — up to $1M and 20 years imprisonment
  
OIG LEIE Screening (Allevio — Medicare/Medicaid compliance):
  What is OIG LEIE: HHS Office of Inspector General List of Excluded Individuals/Entities — database of individuals and entities excluded from federal healthcare programs
  Grounds for exclusion: Conviction of Medicare/Medicaid fraud; patient abuse or neglect; license revocation; felony conviction for controlled substances or financial crimes; many other grounds
  
  Mandatory screening:
    Who: All Allevio employees + contractors + vendors with clinical/billing functions; not just clinical staff
    Timing: At hire (before first day); ANNUALLY for all current clinical and billing staff
    Frequency: Monthly is best practice (OIG recommends monthly for high-volume providers); ANNUAL is MBL minimum standard
    
  OIG LEIE screening method:
    OIG LEIE Database: exclusions.oig.hhs.gov; free; name search
    Download full list: Available for bulk screening via downloadable database
    State exclusion lists: Some states maintain separate exclusion lists (AZ HHS exclusion list); screen both
    
  Consequence of employing an excluded person:
    Recoupment: Medicare/Medicaid will demand repayment of ALL reimbursements received for services provided by or at the direction of the excluded person from the date of first exclusion
    Civil Monetary Penalty: Up to $10,000 per day of employment of excluded person; up to 3× amount claimed; exclusion of the employing entity
    Allevio's total Medicare/Medicaid revenue is at risk if an excluded person is on staff undetected
    
  Response to OIG exclusion match:
    Confirmed match: Immediate cessation of the individual providing services covered by Medicare/Medicaid; legal counsel engaged immediately; no billing under that individual's NPI until counsel advises
    Report to OIG: Voluntary self-disclosure considered (better outcome than discovery); attorney decides
    False positive: Document why the match is not the same person (DOB, SSN, location); retain documentation permanently
    
Screening log requirements:
  Retain: Name screened; date screened; list screened against; result (no match / match — action taken); screened by
  OIG LEIE: Must be retained — proof of annual check is required in an audit
  OFAC: Retain evidence of screening — regulatory expectation
```

## Output Format

```markdown
# Sanctions and Exclusion Screening Log — <Company Name>
**Maintained by:** Dr. John Lewis | **Date:** [Date]
**Entity:** [Company]

---

## OIG LEIE Annual Check — Allevio Clinical Staff (CRITICAL COMPLIANCE)

**Screening date:** [Date] | **Database:** exclusions.oig.hhs.gov + AZ HHS exclusions
**Screened by:** Dr. John Lewis
**Last screening:** [Prior date]

| Staff member (role) | OFAC screened | OIG LEIE screened | Result | Action |
|-------------------|-------------|-----------------|--------|--------|
| [RN — Clinical Staff] | ✅ [Date] | ✅ [Date] | ✅ No match | None |
| [Medical Biller] | ✅ [Date] | ✅ [Date] | ✅ No match | None |
| [New Provider — hire date] | ✅ At hire | ✅ At hire | ✅ No match | None |
| [Employee name] | ✅ [Date] | ⚠️ MATCH FOUND | 🔴 See action | See below |

**Annual check complete:** ✅ All [N] clinical and billing staff screened — [Date]
**All clear:** ✅ No matches / ⚠️ Matches found — see below

---

## Vendor OFAC Screening Log

| Vendor | Date screened | OFAC result | OIG LEIE (if applicable) | Screened by |
|--------|-------------|-----------|------------------------|-----------|
| [Vendor name] | [Date] | ✅ No match | ✅ No match (medical billing) | Dr. Lewis |
| [New vendor] | [Date] | ✅ No match | N/A | Dr. Lewis |

---

## Match Response Record

### Match: [Name] — [Date]
**Subject:** [Employee / Vendor / Partner] — [Role]
**Database:** OFAC SDN / OIG LEIE / AZ State Exclusion
**Match details:** [Name, DOB, exclusion reason, date of exclusion]
**False positive assessment:** [Same person confirmed / Different person — basis]

**If confirmed match:**
- Service cessation date: [Date] — Effective immediately
- CEO notified: [Date/Time]
- Matt Mathison notified: [Date/Time]
- Attorney engaged: [Date/Time]
- Billing review: Claims submitted after exclusion date being identified
- OIG voluntary self-disclosure: Under attorney advisement — [Date]
- Outcome: [Resolution]

---

## Annual Screening Summary

**OIG LEIE annual check completed:** ✅ [Date] / ⚠️ Pending
**Total staff screened:** [N]
**Confirmed exclusions:** [N — 0 is the expected answer]
**False positives investigated:** [N]
**CEO briefed:** [Date]

---

## Matt Mathison Brief (only if OIG exclusion confirmed or annual check incomplete)

[Company] OIG exclusion screening: Annual check [completed ✅ / incomplete ⚠️ — action]. Staff screened: [N]. Confirmed exclusions: [N — if any: description; action; attorney engaged; potential recoupment exposure: $[X]]. Status: [Resolved / Under attorney guidance].
```

## Output Contract
- The annual OIG LEIE check at Allevio is not a calendar suggestion — it is a Medicare/Medicaid compliance requirement that carries recoupment liability from the date of first exclusion for every dollar billed under an excluded person's care; Dr. Lewis conducts this check in November every year (before year-end) for every clinical and billing staff member; the check is documented with the date, the list searched, and the result; if the check is not done, Allevio has no defense against OIG recoupment for any excluded staff member found in an audit
- Name matching requires judgment — common names will generate false positive matches on the OFAC SDN list; the name "Mohammed Ahmed" may match multiple SDN entries; the response is not to assume a match — it is to compare DOB, nationality, location, and other identifying information; a false positive with documented rationale is a valid result; an undocumented assumption that a match is a false positive is a liability; Dr. Lewis documents the comparison for every match result (confirmed exclusion AND false positive) so there is a written record of the analysis
- An excluded person's service must stop immediately on confirmed match — not after a transition period, not after finding a replacement, not after the end of the month; the Medicare/Medicaid recoupment liability accrues for every day the excluded person provides services covered by federal programs; Dr. Lewis notifies the CEO immediately and engages attorney to advise on the specific response (voluntary self-disclosure may reduce penalties); the excluded person's services stop the same day the match is confirmed; Dr. Lewis does not delay to minimize operational disruption
- HITL required: Dr. Lewis conducts all OFAC and OIG screenings; CEO notified immediately for any confirmed exclusion; Matt Mathison notified immediately for any confirmed exclusion (Medicare/Medicaid recoupment risk); attorney engaged same day for any confirmed exclusion; Dr. Lewis notifies Matt Mathison when the annual OIG check is complete and all-clear

## System Dependencies
- **Reads from:** Employee roster (HR); vendor list (rc-third-party-compliance); OFAC SDN database (ofac.treas.gov); OIG LEIE database (exclusions.oig.hhs.gov); AZ state exclusion list; rc-compliance-calendar (annual check trigger)
- **Writes to:** Screening log (SharePoint/RC/Allevio/Sanctions/ and /Allevio/OIG/); annual screening summary; CEO and Matt Mathison notifications for matches; attorney engagement log; billing audit trigger if match confirmed
- **HITL Required:** Dr. Lewis screens; CEO same-day for confirmed exclusion; Matt Mathison same-day for confirmed exclusion; attorney same-day for confirmed exclusion; billing review for excluded person triggered by Dr. Lewis + attorney

## Test Cases
1. **Golden path:** Annual OIG LEIE check — November, Allevio → Dr. Lewis downloads OIG LEIE database for current month; screens all 22 Allevio employees (clinical and billing) by name against the database; also checks AZ state exclusion list; results: 20 of 22 — no match; 2 require follow-up — "Maria Rodriguez" matches 3 entries in LEIE; comparison: DOB for Allevio employee is [Date]; all 3 LEIE matches have different DOBs; documented as false positive with DOB comparison; "James Williams" — one LEIE match; DOB matches; SSN last 4 confirms same person (OIG provides SSN last 4); exclusion reason: license revocation; excluded since [Date] — 8 months ago; James Williams has been employed for 3 years; CRITICAL: confirmed OIG exclusion; service cessation immediate; CEO and Matt Mathison notified within 1 hour; attorney engaged; billing review for 8 months of claims where James Williams was involved; voluntary self-disclosure under attorney advisement; annual check complete; all-clear except this confirmed exclusion in remediation
2. **Edge case:** A vendor (medical billing company) submits an invoice — how do we screen them? → OFAC screening before first payment: Dr. Lewis searches the OFAC SDN list for the company name and the listed principals; OIG LEIE screening also performed because this is a medical billing company with Allevio billing access (clinical function); no matches found for either; BAA confirmed (rc-third-party-compliance); W-9 on file; first payment approved; screening result documented; re-screen: annual for existing vendors with healthcare functions
3. **Adversarial:** "We already checked when they were hired — we don't need to recheck every year" → OIG exclusions happen after employment; a provider can be excluded at any time during their employment — license revocation, fraud conviction, state board action; if Allevio only screens at hire and an exclusion occurs 2 years later, the company has been billing Medicare/Medicaid under an excluded person for however long between the exclusion date and when it's caught in the next non-routine check; the annual check exists precisely to catch post-hire exclusions before the recoupment liability becomes material; at $250,000/year in Medicare billing per provider, 1 year of undetected exclusion is $250,000 of recoupment risk

## Audit Log
All screening records retained permanently (OIG LEIE audit evidence). Annual check documentation retained permanently. False positive analysis retained permanently. Confirmed exclusion response records retained permanently including attorney correspondence and self-disclosure. CEO and Matt Mathison notifications retained. Billing audit results for excluded persons retained permanently.

## Deprecation
Retire when Allevio has a dedicated compliance function with automated monthly OIG LEIE screening and OFAC screening integrated into vendor onboarding — with Dr. Lewis receiving quarterly screening summary reports and being notified immediately of any confirmed exclusion.
