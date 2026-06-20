---
name: pe-deal-breaker-tracker
description: "Track and enforce deal-breaker criteria for MBL Partners acquisitions. Use when the user says 'deal breaker', 'deal-breaker', 'kill a deal', 'deal killer', 'automatic pass', 'pass criteria', 'no-go criteria', 'stop criteria', 'deal-stop', 'red line', 'hard stop', 'OIG exclusion', 'OIG check', 'LEIE', 'LEIE check', 'excluded provider', 'excluded individual', 'excluded entity', 'CMS exclusion', 'Medicaid exclusion', 'Medicare exclusion', 'provider exclusion', 'NPDB', 'national practitioner data bank', 'fraud indicator', 'fraud flag', 'fraudulent billing', 'healthcare fraud', 'upcoding', 'RAC audit', 'RAC audit finding', 'false claims', 'False Claims Act', 'qui tam', 'whistleblower', 'material adverse change', 'MAC clause', 'material misrepresentation', 'seller misrepresentation', 'data fraud', 'financial fraud', 'litigation threshold', 'material litigation', 'environmental liability', 'superfund', 'Superfund site', 'asbestos', 'asbestos liability', 'WTI trigger', 'WTI $58', 'customer concentration kill', 'title defect', 'title failure', 'mineral title defect', or 'deal exit criteria'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <company-name>] [--check-type <oig-leie|fraud|litigation|environmental|concentration|financial|title|wti>] [--action <check|log|escalate|kill>] [--sector <healthcare|energy|ctv|general>]"
---

# PE Deal Breaker Tracker

Track and enforce deal-breaker criteria for MBL Partners acquisitions — maintaining the explicit list of conditions that automatically stop a deal, executing mandatory checks at the right stage, logging findings, and escalating deal-killer discoveries to Matt Mathison immediately. Deal-breakers are not negotiation points — they are conditions where the risk of proceeding outweighs any possible return; they are established before due diligence begins so that the team is not tempted to rationalize past a hard stop when they are emotionally invested in a deal. Dr. Lewis maintains the deal-breaker checklist and is empowered to kill a deal on any confirmed deal-breaker without going through the full DD process.

## When to Use
- A deal is advancing through the pipeline (check at key stage gates)
- A potential deal-breaker is identified and needs to be assessed
- OIG/LEIE check needs to be executed for a healthcare deal
- Matt Mathison needs confirmation that deal-breaker checks are complete

## Deal-Breaker Framework

```
MBL ABSOLUTE DEAL-BREAKERS (confirmed finding = deal is killed; Matt Mathison informed immediately):

  1. OIG/LEIE EXCLUSION (Healthcare deals):
     What: A provider, officer, director, owner, or key employee is excluded from federal healthcare programs
     Why it kills: An excluded individual cannot receive payment from Medicare or Medicaid programs;
       employing an excluded individual means MBL/the entity is billing federal programs illegally;
       penalties: repayment + treble damages + potential criminal liability
     Check: HHS OIG exclusion list (https://exclusions.oig.hhs.gov); NPDB (providers only)
     Timing: Day 1-2 of DD (before any other significant work)
     
  2. MATERIAL MISREPRESENTATION BY SELLER:
     What: Financial data or material facts in the CIM or seller representations were knowingly false
     Examples: EBITDA was fabricated (not just optimistically presented); customer list included 
       customers who had already cancelled; revenue was recognized that had not been earned
     Why it kills: We cannot build a business relationship with a dishonest seller who will be
       our partner post-close; any information asymmetry found during DD may be the tip of the iceberg
     Check: Cross-reference CIM data against data room documents; QoE verification
     Matt Mathison: immediate notification if misrepresentation is confirmed
     
  3. ACTIVE FRAUD OR CRIMINAL INVESTIGATION:
     What: The company or its principals are under active DOJ; OIG; FBI; SEC; state AG investigation
     Examples: Qui tam (False Claims Act) lawsuit; open RAC audit with material findings;
       criminal investigation of owner/officers; open SEC investigation
     Why it kills: MBL cannot acquire a company under active criminal investigation without
       inheriting legal exposure; the reputational and legal risk is unmanageable
     Check: Background checks; SEC EDGAR; court records search; ask in DD process
     
  4. ENVIRONMENTAL SUPERFUND LIABILITY (Energy deals and general):
     What: The company is a potentially responsible party for a Superfund or other environmental cleanup
     Examples: Prior operations caused contamination; company is named in an EPA cleanup action
     Why it kills: Environmental cleanup liability is uncapped and can exceed the purchase price;
       CERCLA (Superfund) liability is strict (don't need to have caused the problem to be liable)
     Check: Phase I Environmental Site Assessment (required for any real property)
     
  5. TITLE DEFECT (Energy/royalty deals):
     What: The royalty or mineral interest being acquired does not have clear, marketable title
     Examples: Missing deed in the chain of title; disputed ownership; prior unpaid liens;
       unauthorized lease of mineral rights by surface owner
     Why it kills: Without clear title, MBL does not own what it thinks it bought;
       title insurance may not cover the defect; the royalty payments may go to the actual title holder
     Check: Title search and title opinion from a licensed title attorney
     
  6. WTI OIL PRICE TRIGGER (HIVE energy acquisitions):
     What: WTI crude oil price is <$58/barrel for 2 consecutive weeks
     Why it pauses: New HIVE energy acquisitions are paused; existing investments are maintained
     Action: Any new energy royalty deal in the pipeline is put on hold; Matt Mathison review
     Note: This is a PAUSE, not a kill — deal can resume when WTI recovers above $58/bbl
     Check: Continuous monitoring; verify before signing any LOI for a HIVE energy deal
     
  7. CUSTOMER CONCENTRATION KILL THRESHOLD:
     What: A single customer represents >50% of revenue (extreme concentration)
     Why it kills: MBL's investment thesis assumes sustainable, diversified revenue;
       a business where one customer is >50% of revenue is a vendor relationship, not an investment
     Check: Customer concentration analysis during commercial DD (pe-commercial-diligence)
     Note: 30-50% is a HIGH risk managed with specific reps and price; >50% is a deal-breaker
     
  8. THRIVE INTEGRITY VIOLATION BY MANAGEMENT:
     What: Evidence of dishonesty, fraud, or ethical violation by the management team that will stay post-close
     Examples: Fabricated revenue; bribed customers; intentionally misled MBL during DD;
       prior fraud conviction discovered in background check; proven false representation in management interview
     Why it kills: THRIVE Integrity is a kill criterion — MBL does not do business with dishonest people
       regardless of the financial return; one partner who lacks integrity erodes the entire business
     Check: THRIVE filter in management interviews; background checks; cross-reference of management statements

DEAL-BREAKER CHECK SCHEDULE:

  BEFORE LOI (Stage 0-4):
    WTI check (HIVE deals only)
    Customer concentration preliminary check (>50% threshold from initial data)
    Basic background check on CEO and founder (criminal; major litigation)
    
  DAY 1-2 OF DD (immediately after LOI signing):
    OIG/LEIE check: ALL providers + key personnel (healthcare deals)
    NPDB check: all licensed providers (healthcare)
    Environmental Phase I authorization (energy/real property deals)
    Title search authorization (energy/royalty deals)
    
  DURING DD:
    Material misrepresentation check (continuous — flag as found)
    Criminal investigation check (background check + court records)
    THRIVE Integrity assessment (continuous through management interviews)
    Customer concentration final assessment (pe-commercial-diligence)
```

## Output Format

```markdown
# Deal-Breaker Check Log — [Company Name] — [Date]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison + Fund Counsel

---

## Deal-Breaker Check Status

| Check | Required for | Date completed | Result | Matt notified |
|-------|-------------|---------------|--------|--------------|
| OIG/LEIE — all providers | Healthcare | [Date] | ✅ CLEAR ([N] people) | N/A — clear |
| OIG/LEIE — key personnel | Healthcare | [Date] | ✅ CLEAR ([N] people) | N/A — clear |
| Background check — CEO | All | [Date] | ✅ Clean | N/A |
| WTI check | HIVE energy | [Date] | ✅ $[X]/bbl (above $58) | N/A |
| Customer concentration | All | [Date] | ✅ Top customer 28% | N/A |
| Environmental Phase I | Energy | Pending | — | — |
| Title search | Energy | Pending | — | — |

---

## Active Deal-Breaker Findings

| Finding | Type | Confirmed? | Matt notified | Status |
|---------|------|-----------|--------------|--------|
| [None this deal] | | | | |

---

## Deal-Breaker Resolution Log

| Finding | Resolution | Outcome | Date |
|---------|-----------|---------|------|
| [Prior deal — OIG match] | Excluded provider terminated pre-close | Deal killed (provider was critical to business) | [Date] |
```

## Output Contract
- Deal-breakers are enforced before emotional or financial investment builds — the purpose of the deal-breaker checklist is to stop deals early, before MBL has spent $50K on advisors and 200 hours of management time; this is why OIG/LEIE check happens in the first 48 hours of DD; if we find an excluded provider on Day 2, we save 8 weeks of work and $150K in advisor fees; Dr. Lewis treats the deal-breaker checklist as the first priority of any DD engagement, not the last
- A confirmed deal-breaker produces an immediate Matt Mathison call, not an email — when a deal-breaker is confirmed (not suspected — confirmed), Dr. Lewis calls Matt Mathison within the hour; the call is brief: "We've found a deal-breaker on [Company] — [specific finding]. My recommendation: kill the deal. Do you want to review, or do you want me to proceed with the notification to the banker?" Matt Mathison has the right to review any deal-breaker before the decision is communicated externally, but the internal notification is immediate
- No deal-breaker is rationalized past — when MBL is deep in DD and has built internal momentum for a deal, the temptation is to rationalize past a deal-breaker ("the OIG exclusion is for a minor provider who isn't core to the business"; "the misrepresentation was probably just an honest mistake"); Dr. Lewis does not yield to this pressure; a deal-breaker is a deal-breaker; if Matt Mathison wants to proceed past a confirmed deal-breaker, that decision is documented explicitly with Matt's written approval, fund counsel's legal opinion, and a specific mitigation plan — and the deal-breaker is disclosed to LPs in the investment report
- HITL required: every confirmed deal-breaker → Matt Mathison call within 1 hour; proceeding past a deal-breaker (if Matt chooses to) → Matt written approval + fund counsel legal opinion; OIG/LEIE results → retained permanently regardless of outcome; any deal killed due to deal-breaker → Matt Mathison + fund counsel aware; WTI trigger check before HIVE LOI signing → Dr. Lewis confirmation on the day of LOI submission

## System Dependencies
- **Reads from:** HHS OIG exclusion list (real-time check); NPDB (National Practitioner Data Bank); background check service; pe-commercial-diligence (customer concentration); pe-financial-diligence (misrepresentation check); pe-operational-diligence (THRIVE Integrity); court records (open investigations); SEC EDGAR (securities investigations); DOGM (HIVE environmental); WTI price feed
- **Writes to:** Deal-breaker check log (SharePoint → Deals → [Company] → DealBreakers); Matt Mathison notifications (confirmed findings); fund counsel briefings (legal implications); pe-diligence-coordinator (deal-breaker check status); deal pipeline (Stage 9 / Passed with reason if deal killed)
- **HITL Required:** Confirmed deal-breaker → Matt within 1 hour; proceeding past deal-breaker → Matt written approval + fund counsel opinion; WTI check → Dr. Lewis confirmation before HIVE LOI; OIG/LEIE records → permanent retention; deal kill notification to banker → Matt Mathison approval of communication

## Test Cases
1. **Golden path:** Healthcare MSO DD begins. Day 1: Dr. Lewis runs OIG/LEIE check on all 8 providers and 4 key staff. All 12 clear. Logged with timestamp and source. Results retained. NPDB check: no adverse reports. No criminal history on CEO or CFO. WTI not applicable (not energy). Customer concentration: top customer 28% — below 50% kill threshold. All deal-breaker checks: PASS. DD continues through financial, commercial, legal, operational workstreams.
2. **Edge case:** OIG/LEIE check reveals that the head nurse (a key operational employee, not a provider billing federal programs) has an OIG exclusion from 10 years ago for a minor infraction → Dr. Lewis: "Escalating immediately to Matt Mathison and fund counsel. The head nurse has an OIG exclusion. Even if this individual is not billing federal programs directly, the OIG exclusion means MBL cannot employ this person in any capacity in a business that receives federal healthcare payments — the exclusion applies to the organization as a whole, not just the billing function. Our options: (1) Kill the deal; (2) Require the head nurse to be terminated before closing as a condition precedent (major operational risk given her role); (3) Get a fund counsel legal opinion on whether this specific exclusion, for this specific role, creates a material risk. I'm not proceeding without Matt's direction."
3. **Adversarial:** After an OIG exclusion is found, the seller's banker argues "you can structure around this — just carve out the provider's billing from Medicaid programs" → Dr. Lewis: "Structural workarounds for OIG exclusions are a fund counsel question — I will not make this call internally. Fund counsel needs to assess whether the proposed structure actually eliminates the federal program billing risk, or whether it creates an even larger compliance risk by suggesting that MBL knew of the exclusion and tried to structure around it. Until fund counsel provides a written opinion, the deal is on hold. If the deal has a deal-breaker that can be solved via structure, I need that in writing from lawyers — not from the deal's banker whose fee depends on it closing."

## Audit Log
All deal-breaker check results retained permanently (with dates; source; results; personnel checked). Matt Mathison notifications retained (confirmed deal-breakers; with timestamps). Fund counsel opinions retained. OIG/LEIE results retained for all deals (even those that didn't close). Deal kill records retained (with reason and Matt approval). WTI price logs retained (for HIVE deals).

## Deprecation
Deal-breaker tracking is active for the fund's investment period. Deal-breaker criteria are reviewed annually with fund counsel and updated when regulatory requirements change (e.g., HIPAA updates; environmental regulations; OIG exclusion enforcement priorities).
