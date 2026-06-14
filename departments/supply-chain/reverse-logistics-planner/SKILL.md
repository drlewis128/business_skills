---
name: reverse-logistics-planner
description: "Plan returns, recalls, and reverse supply chain operations. Use when the user says 'reverse logistics', 'product returns', 'return to supplier', 'product recall', 'recall management', 'return merchandise authorization', 'RMA', 'defective product return', 'end-of-life product return', 'asset disposal', or 'supply chain returns'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--type <return|recall|disposal|refurbishment>] [--entity <Allevio|HIVE|MBL>]"
---

# Reverse Logistics Planner

Plan and manage reverse supply chain operations — returns to suppliers, product recalls, asset disposal, and end-of-life handling. Reverse logistics is often treated as an afterthought, but it has real financial (recovery value) and compliance (HIPAA disposal, FDA recall) implications. For Allevio, a medical device recall is a patient safety event with regulatory reporting requirements. For HIVE, end-of-life equipment disposal must comply with environmental regulations.

## When to Use
- Returning defective goods to a supplier (RMA process)
- A product recall has been issued by a supplier — need to locate and quarantine
- Asset disposal for end-of-life equipment (medical or industrial)
- Supplier over-delivery — need to return excess inventory
- Lease return — equipment going back at end of lease term
- HIPAA-compliant disposal of media or devices containing PHI (Allevio)

## Reverse Logistics Types

```
Supplier return (RMA):
  Reason: Defective, over-ordered, or wrong item received
  Process: Request RMA from supplier; package and ship back; claim credit
  Key risk: Not getting credit if proper RMA process not followed

Product recall (supplier-initiated):
  Reason: Supplier identifies safety defect; regulatory requirement
  Urgency: HIGH — especially for clinical supplies (Allevio); equipment (HIVE)
  Process: Stop use immediately; quarantine affected lots; notify affected parties; return or dispose per supplier instructions
  Regulatory: FDA MedWatch (medical devices); EPA (hazmat); NHTSA (vehicles)

Asset disposal:
  Reason: End-of-life; replacement; lease return
  Options: Sell; trade-in; donate; recycle; secure destroy
  Key requirement: HIPAA data wipe for any device with PHI (Allevio)
  HIVE: Environmental compliance for equipment containing chemicals or oil

End-of-life returns (reverse supply):
  Reason: Supplier-managed return programs (packaging, equipment)
  Process: Coordinate with supplier; ship back per program terms
```

## Output Format

```markdown
# Reverse Logistics Plan — <Type / Event>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE / MBL>
**Event type:** RMA / Recall / Disposal / Lease return
**Urgency:** Immediate / Standard / Planned

---

## Event Details

**What happened / What needs to return:** <Description>
**Items affected:** <SKU, lot numbers, serial numbers, quantity>
**Supplier / Vendor:** <Name>
**Financial impact:** $X (credit expected / cost to return / disposal cost)
**Regulatory requirement:** HIPAA data wipe / FDA recall reporting / EPA disposal / None

---

## Scenario 1: Supplier Return (RMA)

### Initiation
- [ ] Identify defective/excess items: SKU __; Qty __; Lot __; Total value $X
- [ ] Contact supplier to initiate RMA: <Supplier contact name, date contacted>
- [ ] Receive RMA authorization: RMA # __________ | Authorization date: ________

### Packaging and Shipment
- [ ] Package per supplier instructions (protective packaging; hazmat if applicable)
- [ ] Attach RMA number to outer packaging (required — without it, credit is not issued)
- [ ] Arrange return shipment (prepaid by MBL or supplier — per contract)
- [ ] Obtain tracking number: _______________
- [ ] Ship by: <date>

### Credit Tracking
- [ ] Supplier confirms receipt: Expected by <date>
- [ ] Credit memo expected: $X by <date>
- [ ] Credit applied in QuickBooks / Bill.com: ✅ / Pending
- [ ] Reconcile credit to original invoice

**If credit not received within 30 days:** Escalate to supplier account manager; open dispute if unresolved in 45 days

---

## Scenario 2: Product Recall (Supplier-Initiated)

### Immediate Response (within 24 hours of notification)

- [ ] **STOP USE:** Immediately quarantine all items of the recalled SKU/lot
- [ ] Identify all affected inventory: Lot # ___; Qty in stock: ___; Qty already dispensed: ___
- [ ] Contact Allevio clinical lead (if already dispensed — patient safety assessment): ⏳
- [ ] Notify Dr. Lewis of recall: ✅ (Dr. Lewis owns all recall response)

**For medical device recalls (Allevio) — FDA classification:**
- Class I: Reasonable probability of serious adverse health consequence or death → IMMEDIATE action
- Class II: May cause temporary adverse health consequence → ACTION within 48 hours
- Class III: Unlikely to cause adverse health consequence → MONITOR; standard return process

### Quarantine and Segregation
- [ ] Affected items physically separated and labeled: "QUARANTINE — DO NOT USE"
- [ ] Refrigerated items: Maintain temperature chain during quarantine
- [ ] Quantity confirmed: _____ units quarantined

### Supplier Return Instructions
- [ ] Contact supplier for recall return instructions (some recalling companies send prepaid labels)
- [ ] Return or dispose per supplier instructions (do NOT assume standard RMA process)
- [ ] Get credit memo or refund commitment in writing

### Documentation (CRITICAL for FDA compliance)
- [ ] Recall notification from supplier: Retained (date received: ___)
- [ ] Quarantine log: Created (date, SKU, lot, quantity)
- [ ] Items dispensed before recall: Number ___; Patient notification: ✅ / N/A
- [ ] Return/disposal confirmation: Retained
- [ ] Corrective action: What system prevented this recall detection failure?

**FDA MedWatch (Allevio): If patient used recalled device with adverse event → mandatory FDA reporting**

---

## Scenario 3: Asset Disposal (End-of-Life)

### Asset Identification
- [ ] Asset ID: ___; Description: ___; Purchase date: ___; Net book value: $X
- [ ] Disposal reason: End-of-life / Replacement / Lease return

### Data Security (any device that may contain data — HIPAA critical for Allevio)
- [ ] Confirm whether device contains or ever contained PHI (Allevio: any device connected to clinical systems)
- [ ] Data destruction method:
  - Electronic media: NIST 800-88 compliant wipe (software) or physical destruction (degaussing/shredding)
  - Paper records: Cross-cut shredding by certified provider
- [ ] Certificate of data destruction obtained: ✅ / Not applicable
- [ ] HIPAA: Certificate retained in SharePoint/Legal/HIPAA/DataDestruction

### Disposal Method Selection

| Option | Value recovery | Environmental | Best for |
|--------|--------------|-------------|---------|
| Sell (eBay, surplus dealers) | High | Low | Working equipment with resale value |
| Trade-in | Medium | Low | Vendor trade-in programs |
| Donate (501c3) | Tax deduction | Low | Older but functional equipment |
| Certified e-recycle | $0 or small fee | Best | Non-functional; data destruction confirmed |
| Physical destruction | Cost | Acceptable | Highly sensitive devices; HIPAA |

- [ ] Disposal method selected: _________
- [ ] Disposal provider: _____ (if certified e-recycler: confirm R2 or e-Stewards certification)
- [ ] Fixed asset register updated: Removed from asset list as of <date>
- [ ] Depreciation stopped as of: <date>

---

## Reverse Logistics Tracker (portfolio-wide)

| Event | Entity | Type | Status | Financial impact | Resolved |
|-------|--------|------|--------|-----------------|---------|
| Cardinal Health Recall — Lot 12345 | Allevio | Recall | 🔴 Active | $X credit expected | No — quarantined |
| Old ultrasound disposal | Allevio | Disposal | ✅ Complete | $X written off; $X donated (tax deduction) | Yes |
| HIVE pump RMA — defective units | HIVE | RMA | 🟡 In process | $X credit | RMA shipped; awaiting credit |
```

## Output Contract
- Recall response always treated as urgent for Allevio clinical items — a Class I recall is a patient safety event
- HIPAA data destruction always documented with certificate — disposing of a device with PHI without certified destruction is a HIPAA violation
- Credit memo tracking always included — unclaimed RMA credits are lost money
- FDA MedWatch always referenced for Allevio medical device recalls — adverse events from recalled devices require mandatory reporting
- HITL required: Dr. Lewis manages all recall responses; Allevio clinical lead notified immediately for any clinical supply recall; Matt Mathison notified for Class I recalls and any recall with patient impact; HIPAA data destruction certificates retained by Dr. Lewis; disposal of assets >$5K book value requires Matt Mathison awareness; FDA reporting only after Dr. Lewis + legal review

## System Dependencies
- **Reads from:** Inventory system (lot numbers, quantities), fixed asset register (QuickBooks), supplier recall notifications
- **Writes to:** Recall log (SharePoint/Operations/Supply Chain/Recalls); HIPAA data destruction log (SharePoint/Legal/HIPAA); fixed asset register (QuickBooks)
- **HITL Required:** Dr. Lewis leads; Allevio clinical → patient safety assessment; Matt Mathison → Class I recalls + patient impact; FDA reporting → Dr. Lewis + legal; data destruction certificates retained

## Test Cases
1. **Golden path:** Allevio supplier recall (Class II, lot 12345, blood pressure cuffs) → Quarantine immediately: 24 units found in stock; 6 units dispensed to patients — Allevio clinical lead assesses: no adverse events reported; all quarantined units returned per supplier instructions with prepaid label; credit memo: $X received and applied; FDA: no adverse events to report; documentation complete; supplier RCA requested; safety stock added for replacement units
2. **Edge case:** HIVE returns a defective pump but the supplier denies the RMA claim ("no defect found when we tested it") → document the defect with photos and test data before shipping; get the claim denial in writing; escalate to the supplier's quality manager (not just the account manager); if the denial is upheld and the defect is real, escalate to legal for breach of warranty claim; keep the defective unit until the claim is resolved — once returned and denied, you have nothing
3. **Adversarial:** Allevio team wants to repurpose an old tablet that was used in clinical settings (may have PHI) → repurposing does not replace data destruction; the device must be wiped to NIST 800-88 standards regardless of the new use; if the device will stay within Allevio's HIPAA-covered environment and be used only by authorized staff, a full wipe may not be required — but document the decision; if it leaves the HIPAA environment, wipe it and get the certificate first

## Audit Log
RMA log with tracking and credit status retained. Recall response log retained per event. HIPAA data destruction certificates retained indefinitely. Asset disposal records retained. FDA MedWatch reports retained.

## Deprecation
Retire when MBL has a returns management platform with automated RMA workflows, recall tracking, and HIPAA-compliant asset disposal management built in.
