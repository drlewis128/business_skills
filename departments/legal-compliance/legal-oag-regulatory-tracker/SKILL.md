---
name: legal-oag-regulatory-tracker
description: "Track oil and gas regulatory compliance for HIVE Partners in the Uinta Basin. Use when the user says 'HIVE compliance', 'oil and gas compliance', 'O&G permits', 'EPA', 'environmental compliance', 'well permits', 'BLM', 'Utah Division of Oil Gas and Mining', 'DOGM', 'Uinta Basin regulatory', 'HIVE regulatory', 'oil and gas regulations', 'emissions compliance', 'EPA regulations', 'environmental permits', 'air quality permit', 'production reporting', 'oil royalties', 'gas royalties', 'mineral rights compliance', 'regulatory filing', or 'energy regulatory'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity hive] [--action <assess|track|file|report>] [--area <permits|environmental|royalty|production-reporting|land>]"
---

# O&G Regulatory Tracker

Track oil and gas regulatory compliance for HIVE Partners' Uinta Basin operations — covering Utah Division of Oil Gas and Mining (DOGM) permits, EPA environmental obligations, federal land compliance (BLM), production reporting, and royalty payments. Oil and gas regulatory violations carry significant financial penalties: EPA violations start at $70K+ per day per violation; DOGM can suspend operations; royalty underpayments trigger audits and penalties. Dr. Lewis maintains HIVE's regulatory compliance calendar and escalates to O&G counsel for any regulatory inquiry, violation, or permit application.

## When to Use
- Quarterly and annual production reporting is due
- A new well or facility requires permitting
- EPA or DOGM sends any communication or inquiry
- HIVE is expanding operations (new wells, new facilities)
- A regulatory violation or near-miss is identified
- Royalty payments are being calculated and verified

## O&G Regulatory Framework

```
HIVE PARTNERS — UINTA BASIN OPERATIONS:
  Location: Uinta Basin, Utah (Duchesne and Uintah Counties)
  Operations: Oil and gas production; surface operations; water disposal
  Land types: State mineral leases; private mineral leases; possibly federal BLM leases
  Regulatory authorities:
    Utah Division of Oil Gas and Mining (DOGM) — primary state regulator
    EPA Region 8 (Denver) — federal environmental oversight
    Bureau of Land Management (BLM) — if on federal lands
    Utah Division of Air Quality (DAQ) — air emissions
    Utah Division of Water Quality (DWQ) — water handling and disposal

PERMITS AND ONGOING OBLIGATIONS:

  DOGM — Well Permits:
    Drilling permit: Required before drilling any new well
    Permit to Operate (PTO): Annual renewal in most cases
    Plugging and Abandonment permit: Required when decommissioning a well
    Change of Operator: Required if ownership or operations management changes
    
  DOGM — Production Reporting:
    Monthly production reports: Due by the last day of the following month
      (e.g., January production report due by February 28)
    Report content: Barrels of oil; MCF of gas; produced water; disposition
    Accuracy requirement: Production reports are the basis for royalty calculations
      Under-reporting → royalty underpayment (penalties + interest)
      Over-reporting → difficult to reverse; accuracy is critical
      
  DOGM — Bonding Requirements:
    Every operator must post a bond (plugging bond) for each well
    Bond amount: Per-well amount set by DOGM based on well depth
    Failure to maintain bond = DOGM can suspend operations
    
  EPA — Air Emissions:
    Uinta Basin Ozone Non-Attainment: Uinta Basin is a designated ozone non-attainment area
      This means stricter air quality requirements apply to O&G operations
    Methane and VOC regulations: EPA Subpart OOOOb regulations (post-2022 wells)
    Air permits: Uinta Basin O&G operations require air quality permits from Utah DAQ
    Emissions monitoring: Leak detection and repair (LDAR) programs required
    
  ROYALTY PAYMENTS:
    Private mineral leases: Royalty rate specified in each lease agreement
      Typical Uinta Basin royalty: 12.5% to 20% of gross production value
      Payment timing: Monthly; typically 60-90 days after production month
        (e.g., January production → royalty check by March 31)
    State mineral leases: Utah Division of Oil Gas and Mining administers; royalties to state
    Federal leases (BLM): Office of Natural Resources Revenue (ONRR); royalties to federal government
    Royalty calculation: Royalty × wellhead price × net production (less allowable deductions)
    Deduction disputes: Common area of dispute — what deductions are allowable under the lease?
    
  WATER DISPOSAL:
    Produced water: Must be disposed per DOGM and EPA requirements
    Class II UIC well: Underground injection control permits for produced water disposal wells
    DOGM injection report: Monthly report required for disposal well operations
    
  LAND AGREEMENTS:
    Surface Use Agreements (SUA): Required for surface operations on private surface land
    Pipeline ROW (right-of-way): Required for gathering lines crossing other properties
    Mineral lease assignments: Any transfer of lease interest requires DOGM notification

REGULATORY VIOLATION PROTOCOL:
  Level 1 — Minor administrative (late report; minor documentation gap):
    Self-report to DOGM/EPA immediately (good faith self-reporting reduces penalties)
    File corrective action plan
    Penalties typically <$5K with self-reporting
  Level 2 — Operational violation (unauthorized discharge; emission exceedance):
    Immediately contain/stop the violation
    Notify Dr. Lewis same day
    Dr. Lewis notifies Matt Mathison same day
    Engage O&G environmental counsel within 24 hours
    Self-report per applicable regulatory timeline
  Level 3 — Significant event (spill; major emission release; DOGM/EPA notice of violation):
    Call Dr. Lewis immediately
    Engage O&G counsel and environmental consultant within hours
    Regulatory notification per statutory requirements (often 24-72 hours)
    Matt Mathison and Dr. Lewis manage communications
```

## Output Format

```markdown
# HIVE Regulatory Compliance Status
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Period:** [Quarter/Year]

---

## Regulatory Permit Status

| Permit | Authority | Status | Expiration | Next Action |
|--------|----------|--------|-----------|------------|
| Permit to Operate — [Well] | DOGM | ✅ Active | [Date] | Annual renewal [Date] |
| Air Quality Permit | DAQ | ✅ Active | [Date] | Annual renewal [Date] |
| UIC Disposal Well Permit | EPA/DOGM | ✅ Active | [Date] | Annual renewal [Date] |

---

## Production Reporting Status

| Month | Report Due | Filed | Status |
|-------|-----------|-------|--------|
| [Month] | [Due date] | [Filed date] | ✅ / ❌ |

---

## Royalty Payment Status

| Lease | Lessor | Rate | Month | Amount | Payment Date | Status |
|-------|--------|------|-------|--------|-------------|--------|
| [Lease A] | [Name] | 16% | [Month] | $[X]K | [Date] | ✅ / ❌ |

---

## Open Regulatory Issues

| Issue | Authority | Status | Action | Owner | Due |
|-------|----------|--------|--------|-------|-----|
| [If any] | | | | | |

**No open regulatory issues** / **[N] open items — see above**
```

## Output Contract
- Production reports are the royalty calculation basis — inaccurate production reports are not just an administrative problem; they create financial liability; if HIVE under-reports production, the royalty calculation is wrong (HIVE underpays); when DOGM or the lessor audits production (which they regularly do), underpayments are assessed with interest and sometimes penalties; if HIVE over-reports production (rare), it may overpay royalties and face a credit/refund process; Dr. Lewis reviews production report accuracy before filing by reconciling against tank gauging records and Covercy production data; the production report number must match the operational records
- Self-reporting is always better than being caught — regulatory violations that are self-reported to DOGM or EPA are treated significantly more favorably than violations discovered during an inspection; a self-reported minor emission event typically results in a consent order and a small penalty; the same event discovered during an EPA inspection can result in $70K/day civil penalties and a referral to the Department of Justice; the business case for self-reporting is overwhelming; Dr. Lewis's protocol is to report at the first indication that a violation may have occurred — not after a full investigation determines certainty; the investigation can continue in parallel with the self-report
- Uinta Basin ozone non-attainment adds regulatory complexity — the Uinta Basin is designated a non-attainment area for ground-level ozone, which means HIVE faces more stringent air quality requirements than operators in attainment areas; this affects equipment choices (VRUs on tanks; low-emission completion equipment); LDAR programs; and potentially periodic Title V permit applicability reviews if operations expand to the major source threshold; Dr. Lewis tracks HIVE's aggregate emissions against the applicable thresholds quarterly
- HITL required: Dr. Lewis reviews all regulatory filings before submission; HIVE CEO confirms operational data accuracy; O&G counsel reviews any permit applications, regulatory inquiries, or violation responses; Matt Mathison notified immediately of any Level 2 or Level 3 regulatory event; Dr. Lewis does not respond to DOGM or EPA inquiries without O&G counsel review — any regulatory communication can create admissions that affect subsequent enforcement

## System Dependencies
- **Reads from:** Covercy production data (monthly production by well — used to prepare DOGM production reports); well permits (DOGM files — permit numbers, conditions, annual renewal dates); royalty lease agreements (rate, payment timing, deduction allowances); air permit records (DAQ permit number, conditions, emission thresholds); EPA Subpart OOOOb compliance records; LDAR inspection records; disposal well records (injection volumes, pressure data for UIC reports)
- **Writes to:** DOGM monthly production reports (filed online via DOGM eFiling portal); royalty payment records (matching production data to payment amounts — reconciliation); permit renewal applications; DOGM UIC monthly injection reports; DAQ air emission inventories; any regulatory self-disclosure reports; Matt Mathison O&G regulatory compliance summary (quarterly); O&G counsel engagement memos for any regulatory event
- **HITL Required:** Dr. Lewis reviews; HIVE CEO confirms production data and operational facts; O&G counsel required for permit applications, regulatory inquiries, any violation response, and royalty disputes; Matt Mathison notified immediately of Level 2/3 events; Dr. Lewis does not file DOGM production reports without reconciliation against Covercy operational data; Dr. Lewis does not respond to regulatory inquiries without O&G counsel involvement

## Test Cases
1. **Golden path:** HIVE's February DOGM production report is due March 31 → Dr. Lewis pulls Covercy data for February: 940 BOE/day × 28 days = 26,320 BOE gross production; confirmed with tank gauging records (within 1% — acceptable reconciliation); Dr. Lewis prepares DOGM report: oil production, gas production (MCF), produced water disposition, facility; reviews for accuracy; submits via DOGM eFiling portal on March 15 (15 days early); receipt confirmation logged; royalty calculation verified: Lease A (16%) → 26,320 × 16% × $63.50 realized = $267,541 royalty payment; payment processed via Bill.com by March 25 (within the 60-day contractual payment window from production month end); all filings and payments confirmed
2. **Edge case:** HIVE's operator discovers a small crude oil spill (~15 barrels) near a tank battery — oil reached the earthen berm but did not reach a water body → Dr. Lewis activated: (1) Contain and clean up the spill immediately; (2) Document with photos and measurements; (3) Dr. Lewis determines DOGM self-reporting threshold: Utah requires reporting of oil spills to land ≥100 barrels or spills to water; 15 barrels to land within a berm = below the mandatory reporting threshold but self-reporting is still advisable; (4) Engage O&G counsel to confirm threshold and determine whether DAQ reporting is needed (VOC emissions from spilled oil); (5) Voluntary self-report to DOGM with cleanup documentation; DOGM acknowledges; no formal enforcement; (6) Root cause analysis: determine why the tank connection failed; implement preventive maintenance
3. **Adversarial:** A Uinta Basin landowner sends HIVE a demand letter claiming that HIVE's produced water disposal well is contaminating their groundwater, and threatens to file an EPA complaint → Dr. Lewis immediate response: "This is a Level 3 regulatory event. Call me. Do NOT respond to the demand letter without counsel. Do NOT send anyone to meet with the landowner without counsel. The steps: (1) O&G counsel and environmental consultant engaged today; (2) Matt Mathison notified today; (3) Order baseline groundwater sampling immediately (to establish current conditions before any further action); (4) Counsel reviews the demand letter and determines whether a formal EPA complaint is imminent; (5) If EPA is contacted, EPA notification protocols are followed; (6) Do not admit any connection between HIVE's operations and the claimed contamination without a full hydrological investigation." Counsel engaged; EPA not contacted by the landowner; hydrological investigation shows no connection to HIVE's disposal well; demand letter resolved without litigation

## Audit Log
All DOGM production reports retained (5 years — DOGM audit window; 7 years for MBL standard). Royalty payment records retained (7 years). Permit records retained permanently (active) and 7 years (after expiration). Regulatory correspondence retained (all DOGM and EPA communications — permanently). Any violation self-reports and responses retained permanently. Spill and environmental incident records retained permanently. Royalty reconciliation records retained 7 years.

## Deprecation
Retire when HIVE Partners has a dedicated land and regulatory team with an in-house or retained O&G environmental compliance specialist — with Dr. Lewis reviewing annual regulatory status and Matt Mathison receiving quarterly O&G regulatory health reports.
