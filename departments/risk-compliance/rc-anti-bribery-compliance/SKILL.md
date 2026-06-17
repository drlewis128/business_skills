---
name: rc-anti-bribery-compliance
description: "Manage anti-bribery compliance — FCPA, gift policy, and due diligence on high-risk vendors. Use when the user says 'anti-bribery', 'FCPA', 'Foreign Corrupt Practices Act', 'gift policy', 'gifts and entertainment', 'bribery risk', 'government official gift', 'anti-corruption', 'kickback', 'facilitation payment', 'high-risk vendor', 'anti-bribery policy', 'bribery due diligence', or 'corruption risk'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <assess|advise|policy|due-diligence>] [--risk <vendor|official|gift|payment>]"
---

# Anti-Bribery Compliance Manager

Manage anti-bribery and anti-corruption compliance at MBL portfolio companies — ensuring that business activities comply with the Foreign Corrupt Practices Act (FCPA) and applicable domestic anti-bribery laws, and that the gift and entertainment policy prevents corruption risks in domestic business relationships. At MBL portfolio scale, the primary anti-bribery risk areas are: (1) Allevio's interactions with government programs (Medicare/Medicaid) that create Anti-Kickback Statute (AKS) risk, (2) HIVE's interactions with state regulatory bodies (Utah DOGM), and (3) any international business activities at Column6 that could trigger FCPA. The THRIVE value of Integrity is the foundation — no payment, gift, or benefit that creates an improper obligation or appearance of impropriety.

## When to Use
- A gift or entertainment situation needs to be assessed — is this appropriate?
- A vendor relationship has characteristics that suggest improper benefits
- A business partner asks for a payment or benefit outside normal business terms
- An international business activity requires FCPA screening
- A new vendor or business partner in a high-risk jurisdiction needs due diligence
- A government official interaction occurs that involves any benefit
- Anti-bribery training is being planned

## Anti-Bribery Framework

```
Anti-Kickback Statute (AKS) — primary risk for Allevio:
  Prohibits: Knowingly and willfully offering, paying, soliciting, or receiving anything of value to induce or reward referrals of items or services covered by federal healthcare programs (Medicare, Medicaid, CHIP)
  Applies to: Anyone — not just individuals; companies, LLCs, healthcare organizations
  Key risk at Allevio: Any benefit provided to a referring physician (meals, tickets, consulting fees, equipment) that could be construed as inducing referrals; any benefit received from vendors (suppliers, device companies) that could be construed as influencing purchasing decisions
  Safe harbors: Many commercial relationships are protected by AKS safe harbors (space rental, equipment rental, personal services — if requirements are met); attorney required for any arrangement involving a referral source
  Penalty: Criminal (fines, imprisonment) + Civil (False Claims Act treble damages) + exclusion from Medicare/Medicaid
  
FCPA (Foreign Corrupt Practices Act):
  Anti-bribery: Prohibits paying, offering, promising anything of value to a "foreign government official" to obtain or retain business
  Accounting: Requires accurate books and records; adequate internal controls; no off-the-books accounts
  Applies to: US companies and persons (and foreign companies listed on US exchanges)
  MBL applicability: Limited if MBL portfolio companies operate primarily in the US; FCPA becomes relevant if Column6 has international advertising relationships with state-owned media, or if any portfolio company operates internationally
  "Foreign official" defined broadly: Includes employees of state-owned enterprises; this is a fact-specific determination requiring attorney input
  
Domestic anti-bribery (Commercial Bribery):
  Prohibits: Offering or receiving private commercial benefits to influence business decisions (not government)
  Gift and entertainment policy: The operational implementation of anti-bribery for domestic business relationships
  
Gift and entertainment policy:
  Gifts received: May not accept >$50 in value from any vendor, customer, or business partner without disclosure and manager approval; cash or cash equivalents (gift cards) never acceptable regardless of amount
  Gifts given: Company gifts to business partners must have legitimate business purpose; must not be intended to influence a decision improperly; ≤$100 without CEO approval; >$100 requires CEO approval; no cash or cash equivalents
  Entertainment: Reasonable, infrequent business entertainment (meals, sporting events) is acceptable with a legitimate business purpose; lavish or frequent entertainment from a vendor is a red flag; entertainment involving a Allevio referring physician requires AKS safe harbor analysis
  Government officials: No gifts, meals, or entertainment to any government official without attorney review — include Medicare/Medicaid contractors, state regulators (AZ DHS, UT DOGM, OSHA), elected officials
  
High-risk vendor due diligence:
  Characteristics: Vendor requests cash payment; vendor in a high-corruption jurisdiction; vendor is related to a government official; vendor lacks transparency about ownership or operations; vendor agrees to unusually favorable terms with unusual speed
  Due diligence steps: Verify legal entity; confirm beneficial ownership; check against OFAC/OIG/FCPA enforcement lists; request references; document the basis for engaging them
```

## Output Format

```markdown
# Anti-Bribery Compliance Assessment — <Situation>
**Date:** [Date] | **Entity:** [Company] | **Assessed by:** Dr. John Lewis

---

## Situation Assessment

**Activity:** [What is being proposed or what occurred]
**Parties involved:** [Company / Individual / Government official / Vendor]
**Value involved:** $[Amount] / Non-monetary (describe)
**Business purpose:** [Legitimate business purpose or None]

---

## Risk Assessment

| Risk factor | Present? | Notes |
|------------|---------|-------|
| Government official involved | ✅ / ❌ | [Federal employee / State regulator / Medicare contractor] |
| Healthcare referral source (AKS risk) | ✅ / ❌ | [Allevio referring physician / Other] |
| Foreign jurisdiction | ✅ / ❌ | [Country — FCPA risk level] |
| Cash or cash equivalent | ✅ / ❌ | Always high risk |
| Value exceeds gift policy threshold ($50 receive; $100 give) | ✅ / ❌ | [Amount] |
| No clear legitimate business purpose | ✅ / ❌ | |
| Related to regulatory approval or business award | ✅ / ❌ | |

**Risk level:** 🟢 Low (policy-compliant) / 🟡 Medium (requires approval) / 🔴 High (requires attorney) / 🚨 Do not proceed

---

## Determination

**Policy compliant?** ✅ Yes / ❌ No — reason: [Why]
**Attorney required?** ✅ Yes — reason / No

**Action:**
- [ ] Proceed — within policy
- [ ] Proceed with CEO approval — above approval threshold
- [ ] Refer to attorney — AKS safe harbor analysis / FCPA / government official
- [ ] Do not proceed — prohibited

**Documentation:** [What to retain as evidence of legitimate business purpose]

---

## Gift/Entertainment Log

| Date | Giver | Receiver | Type | Value | Business purpose | Disclosed | Approved |
|------|-------|---------|------|-------|----------------|---------|---------|
| [Date] | [Vendor name] | [Dr. Lewis] | Lunch | $45 | Vendor quarterly review | Dr. Lewis — disclosed | Within policy |
| [Date] | [MBL] | [Business partner] | Sporting event tickets | $220/person | Client relationship | CEO approval | CEO — approved |

---

## Matt Mathison Brief (if AKS concern, FCPA risk, or government official involvement)

[Company] anti-bribery: [Situation]. Risk: [AKS / FCPA / Commercial bribery]. Analysis: [What attorney said]. Action: [Do not proceed / Restructure / Proceed with safeguards]. Potential exposure: $[Estimate if applicable].
```

## Output Contract
- Government official interactions require attorney review before any benefit is provided — in the healthcare context, Medicare/Medicaid contractors are "government officials" for purposes of some anti-bribery analysis; AZ DHS regulators, OSHA investigators, and UT DOGM officials are state government officials; Dr. Lewis does not approve any gift, meal, entertainment, or payment to a government official without attorney review regardless of the amount; this includes small items (a $20 lunch for an OSHA inspector is as prohibited as a $2,000 event); the AKS penalty for improper benefits to referral sources is severe enough that any ambiguous situation requires counsel
- The Anti-Kickback Statute makes ordinary business relationships risky at Allevio — a medical practice receiving free technology from a device company that markets to their patients may have an AKS problem; a provider receiving speakers bureau fees from a pharmaceutical company may have an AKS problem; Allevio receiving below-market rent from a landlord who is also a referring physician may have an AKS problem; all arrangements with referring physicians or with vendors who interact with referring physicians are analyzed through the AKS lens with attorney involvement; "it seems fine" is not an AKS analysis
- Gift policy violations are reported, not self-resolved — an employee who receives a gift above the policy threshold and chooses to keep it without disclosing is violating the gift policy regardless of their intent; Dr. Lewis implements a disclosure-first culture where employees are encouraged to report received gifts without fear, and the evaluation (keep / return / donate) is made transparently; a culture where employees are afraid to report gifts because of consequences results in undisclosed gifts and the compliance risk they represent
- HITL required: Dr. Lewis manages anti-bribery compliance; attorney for any AKS question (Allevio referral sources or vendors), FCPA question (international), or government official interaction; CEO for gifts above approval threshold; Matt Mathison for AKS, FCPA, or government official situations; Dr. Lewis does not independently authorize any benefit to a government official or healthcare referral source

## System Dependencies
- **Reads from:** Gift/entertainment log, vendor registry (rc-third-party-compliance), rc-conflict-of-interest-manager (vendor relationships), attorney guidance (AKS safe harbors, FCPA), OFAC/OIG screening results (rc-sanctions-screener)
- **Writes to:** Anti-bribery assessment records (SharePoint/RC/<Company>/AntiBribery/); gift/entertainment log; CEO approval records; attorney correspondence; Matt Mathison brief for AKS/FCPA situations
- **HITL Required:** Dr. Lewis assesses; attorney for AKS, FCPA, government official interactions; CEO for gifts above threshold; Matt Mathison for material anti-bribery concerns

## Test Cases
1. **Golden path:** A device company representative offers to take the Allevio clinical director to a 4-day medical conference (all expenses paid) in exchange for "featuring their device" in Allevio's protocol → Immediate AKS flag: free conference + request to feature product in clinical protocol; this is exactly the type of arrangement the AKS prohibits — providing value (conference paid) to influence clinical decisions (feature the device); attorney engaged immediately; assessment: no AKS safe harbor applies; the arrangement cannot proceed; clinical director declines; device company may offer to present the device at a Allevio-hosted lunch under AKS-compliant terms (attendance open to all staff; educational; food at reasonable per-person amount); Dr. Lewis documents the declined arrangement; anti-bribery training reinforced for clinical staff
2. **Edge case:** Dr. Lewis is invited to speak at an industry conference — the conference pays a $2,500 speaking honorarium → This is Dr. Lewis receiving payment for providing a service (speaking); different from a gift; assess: does the conference organizer have any business relationship with MBL or portfolio companies where the payment could influence Dr. Lewis's decisions? If no: legitimate speaking fee for legitimate service; disclose to CEO; document the business purpose (industry thought leadership); accept with CEO disclosure. If the conference is organized by a vendor of MBL: conflict of interest concern — disclose to CEO; CEO decides whether honorarium should be returned or donated; CEO makes the call with Dr. Lewis's disclosure
3. **Adversarial:** "This is just relationship building — everyone in the industry does it" → The AKS and FCPA did not create exceptions for "industry custom"; what "everyone does" in a given industry may reflect widespread non-compliance, not permission; in healthcare specifically, "everyone takes meals from device reps" has been the basis of DOJ settlements involving hundreds of millions of dollars; the standard is whether the benefit is designed to induce referrals or influence decisions — not whether it is common; Dr. Lewis applies the policy consistently regardless of industry norms

## Audit Log
Gift/entertainment log retained 7 years. Anti-bribery assessments retained permanently. Attorney AKS/FCPA engagement records retained permanently. CEO approval records retained. Declined or returned gifts documented. Matt Mathison anti-bribery briefs retained.

## Deprecation
Retire when portfolio companies have healthcare compliance officers managing AKS compliance at Allevio — with Dr. Lewis providing portfolio-level anti-bribery oversight and reviewing AKS arrangements with referring physicians.
