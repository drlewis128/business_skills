---
name: customs-compliance-tracker
description: "Manage import/export customs compliance for international shipments. Use when the user says 'customs compliance', 'import compliance', 'export compliance', 'customs clearance', 'import duties', 'HS codes', 'tariffs', 'customs documentation', 'international shipping compliance', 'import restrictions', or 'customs broker'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--direction <import|export|both>] [--entity <Allevio|HIVE|MBL>] [--country <country>]"
---

# Customs Compliance Tracker

Manage import and export customs compliance for international shipments — documentation, classification, duties, and broker coordination. Customs compliance failures are expensive: incorrect HS codes result in wrong duty rates, missed declaration items create fines, restricted goods create legal liability, and incorrect country-of-origin claims can trigger trade law enforcement. For MBL's portfolio, HIVE is most likely to have international material or equipment sourcing; Allevio may import specialized medical devices; MBL may import technology hardware.

## When to Use
- Importing goods from an international supplier for the first time
- Export of equipment or goods from the US to another country
- HS code classification for a new product category
- Calculating landed cost for a purchase decision (including duties and fees)
- Customs broker selection or management
- Denied party screening for a new international supplier or customer

## Key Customs Concepts

```
HS Code (Harmonized System Code):
  6-10 digit code that classifies every internationally traded product
  Determines duty rate, import restrictions, and export controls
  Must be correct — incorrect codes = wrong duty rates + potential penalties
  Source: US HTS (Harmonized Tariff Schedule) at usitc.gov

Incoterms (International Commercial Terms):
  Defines who pays for shipping, insurance, and customs at each stage
  Common terms:
    FOB (Free on Board): Seller responsible until goods on ship; buyer pays from port
    CIF (Cost, Insurance, Freight): Seller pays to destination port
    DDP (Delivered Duty Paid): Seller pays everything including duties
    EXW (Ex Works): Buyer takes all responsibility from seller's facility
  For MBL: Default to DDP (seller handles customs) for simplicity; CIF/FOB for large orders

Landed Cost:
  Total cost = Product cost + Freight + Insurance + Import duties + Customs fees + Brokerage
  Always calculate landed cost before purchase decision — landed cost can be 20-40% above product price

Country of Origin:
  Determines which trade agreement applies (USMCA, etc.)
  Must match actual production country — mislabeling is a trade fraud offense
  Certificate of origin required for many duty-preference claims
```

## Output Format

```markdown
# Customs Compliance Tracker — <Shipment / Program>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE>
**Direction:** Import / Export | **Origin/destination country:** <Country>

---

## Product Classification (HS Code)

| Item | Description | HS Code (US HTS) | Duty rate | Notes |
|------|------------|-----------------|----------|-------|
| [Item 1] | <Description> | XXXX.XX.XXXX | X% | |
| [Item 2] | <Description> | XXXX.XX.XXXX | X% | Subject to Section 301 tariff +25% (China) |
| [Medical device] | <Description> | 9018.XX.XXXX | 0% | Many medical devices duty-free under HTS |

**Classification source:** USITC HTS database; Customs broker confirms
**Classification validation:** For items >$10K annual import value, binding ruling from CBP recommended

---

## Landed Cost Calculation

| Cost element | Amount | % of product cost |
|------------|--------|-----------------|
| Product cost (FOB origin) | $X | 100% |
| International freight | $X | X% |
| Marine insurance (0.5-1% of CIF) | $X | X% |
| Import duties (HS code rate × dutiable value) | $X | X% |
| MPF (Merchandise Processing Fee, 0.3464%) | $X | X% |
| HMF (Harbor Maintenance Fee, 0.125%) | $X | X% |
| Customs brokerage | $X | X% |
| Destination delivery | $X | X% |
| **Total landed cost** | **$X** | **X%** |

**Landed cost premium over product cost:** X% — factor into purchase decision

---

## Required Documentation (Import)

| Document | Required? | Source | Status |
|---------|---------|--------|--------|
| Commercial invoice (original) | ✅ Yes | Supplier | |
| Packing list | ✅ Yes | Supplier | |
| Bill of lading / Airway bill | ✅ Yes | Carrier | |
| Certificate of origin | ✅ Yes (if duty preference claimed) | Supplier | |
| FDA import entry (medical devices — Allevio) | ✅ Yes | Customs broker | |
| Import License (if required for this product) | Check per product | CBP | |
| Phytosanitary certificate (plant-based products) | If applicable | Exporting country | |
| CITES permit (protected species) | If applicable | US FWS | |

---

## Restricted / Controlled Import Check

Before importing, verify:
- [ ] Supplier not on OFAC sanctions list (check SAM.gov)
- [ ] Product not on Commerce Department restricted list (EAR)
- [ ] Medical devices: FDA registration confirmed (Allevio — medical device imports require FDA entry)
- [ ] Country of origin verified (avoid mislabeling; Section 301 tariffs on Chinese goods)
- [ ] No antidumping/countervailing duty orders on this product category (check USITC)

---

## Customs Broker Management

**Customs broker:** <Broker name> | **License:** CHB License # <XXXXX>
**Contact:** <Name, phone, email>

**Broker responsibilities:**
- Prepare and file customs entry on our behalf
- Classify goods and determine duty rates (verify against our own classification)
- Manage FDA, FWS, or other agency entries as required
- Handle any CBP queries, exams, or holds
- Provide classification and entry records for our files

**Our responsibilities:**
- Provide accurate commercial invoice and packing list
- Confirm HS code classification before first import
- Retain all customs entry records for 5 years (CBP requirement)
- Notify broker immediately of any product change that may affect classification

---

## Customs Compliance Calendar

| Action | Frequency | Owner | Next due |
|--------|---------|-------|---------|
| Denied party screening (new supplier/customer) | Before first transaction | Dr. Lewis | — |
| HS code review (tariff changes) | Annual (January — HTS updated) | Dr. Lewis + Broker | Jan <year> |
| Import entry record retention check | Annual | Dr. Lewis | <date> |
| Binding ruling renewal (if obtained) | As directed by CBP | Dr. Lewis | <date> |
| Customs broker performance review | Annual | Dr. Lewis | <date> |
```

## Output Contract
- Landed cost always calculated before purchase decision — a supplier 10% cheaper on product price but with 25% Section 301 tariffs may be more expensive landed
- HS code always confirmed by customs broker — self-classified HS codes create liability; broker confirmation is standard practice
- Denied party screening always before first international transaction — OFAC violations carry criminal penalties
- Medical device FDA entry always flagged for Allevio — unregistered medical device imports are FDA enforcement targets
- HITL required: Dr. Lewis manages customs compliance program; customs broker retained by Dr. Lewis; denied party screening before any new international supplier or customer; medical device FDA compliance reviewed by Allevio clinical compliance; any customs examination or hold immediately escalated to Dr. Lewis and legal counsel; customs penalty assessments require Dr. Lewis + legal response

## System Dependencies
- **Reads from:** Supplier invoices, HS code database (usitc.gov), OFAC sanctions list (SAM.gov)
- **Writes to:** Customs compliance records (SharePoint/Legal/Customs); import entry records; landed cost calculator
- **HITL Required:** Dr. Lewis manages; customs broker for classification; denied party screening Dr. Lewis; medical device FDA compliance → Allevio; CBP examination/hold → Dr. Lewis + legal

## Test Cases
1. **Golden path:** Import specialized medical equipment for Allevio from Germany → HS code: 9018.XX.XXXX (medical equipment, 0% duty); landed cost calculation: $85K product + $4.2K freight + $0 duty + $1.8K fees + $600 brokerage = $91.6K landed (7.8% premium); FDA import entry required (medical device); supplier: not on sanctions list (OFAC clear); certificate of origin: Germany; broker files entry; equipment clears within 3 days; records retained
2. **Edge case:** A Chinese supplier offers 20% lower cost than the US/European alternative → check Section 301 tariff status for the HS code; if the product is subject to 25% Section 301 tariffs, the Chinese supplier may actually cost more landed (product -20% + duties +25% = net more expensive); calculate landed cost both ways before making the sourcing decision; Section 301 tariffs fundamentally change China-sourced product economics
3. **Adversarial:** Supplier suggests using incorrect HS code to lower the duty rate ("everyone does this") → misclassification is a customs fraud offense; CBP can audit entries for 5 years; penalties: up to 4× the unpaid duties + potential criminal liability; do not accept the supplier's HS code without independent verification; use the correct HS code regardless of cost impact; if the correct classification creates an unacceptable cost, find a compliant supplier or reconsider the sourcing decision

## Audit Log
Customs entry records retained 5 years (CBP requirement). HS code classifications documented with source. Landed cost calculations retained per shipment. Denied party screening results retained. Broker communications retained.

## Deprecation
Retire when MBL has a trade compliance manager or uses a trade compliance platform (TradeGecko, Amber Road, or similar) with automated HS code validation and denied party screening.
