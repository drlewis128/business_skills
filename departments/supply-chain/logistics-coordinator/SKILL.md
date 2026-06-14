---
name: logistics-coordinator
description: "Plan and coordinate inbound and outbound logistics. Use when the user says 'logistics', 'shipping', 'freight', 'delivery planning', 'coordinate shipments', 'inbound logistics', 'outbound logistics', 'shipping plan', 'carrier selection', 'last-mile delivery', 'expedite a shipment', or 'track a delivery'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--type <inbound|outbound|both>] [--entity <Allevio|HIVE|Column6>] [--urgency <standard|expedited|emergency>]"
---

# Logistics Coordinator

Plan and coordinate inbound and outbound logistics — getting goods from suppliers to operations and from operations to customers, on time, at the right cost. Logistics failures are often invisible until they cause a crisis: a shipment delayed 3 days doesn't matter until it's a critical supply for Allevio patient care or a HIVE drilling component that halts production. For MBL's portfolio, logistics management is most material at HIVE (field equipment movement in the Uinta Basin) and Allevio (medical supply delivery to clinical sites).

## When to Use
- Coordinating inbound supplier delivery for high-value or time-critical orders
- Outbound shipment from one site to another within the portfolio
- Expediting a delayed shipment
- Planning logistics for a site expansion or relocation
- Carrier selection and freight cost benchmarking
- Logistics audit — are we paying the right rates?

## Logistics Mode Selection

```
Selection guide:
  Parcel / Small package (<150 lbs):
    Carriers: UPS, FedEx, USPS, DHL
    Best for: Allevio clinical consumables; MBL documents/devices
    Cost: $20-$200 per shipment
    Transit: 1-5 business days

  LTL (Less than truckload, 150-10,000 lbs):
    Carriers: XPO, Estes, Old Dominion, R+L
    Best for: Medical equipment; HIVE smaller equipment
    Cost: $200-$2,000+ depending on weight/distance
    Transit: 2-7 business days; not time-definite

  FTL (Full truckload, >10,000 lbs or full trailer):
    Carriers: Broker via Convoy, Echo Global, or direct carrier
    Best for: HIVE large equipment movement; major supply deliveries
    Cost: $1,500-$8,000+ depending on lane and distance
    Transit: 1-5 business days (more reliable than LTL)

  Specialized / Hazmat:
    For HIVE: Chemicals, flammable materials — specialized carriers with hazmat certification
    Regulations: DOT hazmat regulations; carrier must be certified
    Cost: Premium (+20-50% over standard freight)

  Air freight (emergency only):
    Use for: Critical clinical supply stockout at Allevio; critical HIVE part
    Cost: 5-10× ground freight
    Use sparingly: Air freight is an indicator of a supply planning failure
```

## Output Format

```markdown
# Logistics Coordination — <Shipment>
**Date:** <date> | **Coordinator:** Dr. John Lewis
**Entity:** <Allevio / HIVE / Column6>
**Shipment type:** Inbound / Outbound | **Urgency:** Standard / Expedited / Emergency

---

## Shipment Details

| Field | Value |
|-------|-------|
| Origin | <Supplier / Warehouse / Site> |
| Destination | <Delivery address> |
| Items | <Description> |
| Total weight | <N> lbs |
| Dimensions | <L × W × H> inches |
| Special handling | Temperature-controlled / Hazmat / Fragile / None |
| Required delivery date | <date> |
| PO reference | <PO number> |

---

## Carrier Selection

| Carrier | Mode | Transit time | Cost estimate | On-time rate | Selected? |
|---------|------|------------|-------------|------------|---------|
| FedEx Ground | Parcel | 3 business days | $X | 95% | ✅ Selected |
| UPS Ground | Parcel | 4 business days | $X | 93% | |
| XPO LTL | LTL | 5 business days | $X | 88% | Too slow |

**Selection rationale:** FedEx Ground — meets required delivery date at lowest cost

---

## Shipment Tracking Plan

| Checkpoint | Expected date | Monitoring method | Escalation trigger |
|-----------|------------|-----------------|------------------|
| Pickup confirmed | <date> | Tracking email | Not picked up by <time> |
| In transit | <date> | Tracking URL: <link> | Delay >1 day |
| Out for delivery | <date> | Tracking update | — |
| Delivered + confirmed | <date> | Receiving confirmation | Not received by EOD |

**Escalation path:** 
- Day 1 delay: Contact carrier customer service
- Day 2 delay: Contact supplier to file tracer
- Day 3+ delay (critical shipment): Consider air freight replacement

---

## Special Handling Requirements

### Allevio — Temperature-Sensitive Medical Supplies
- Cold chain requirement: 2-8°C throughout transit
- Carrier: Must have temperature-controlled vehicles
- Documentation: Certificate of temperature compliance required at receipt
- If temperature deviation detected: Quarantine shipment; contact supplier; do not use

### HIVE — Hazmat (Chemicals / Flammable Materials)
- DOT hazmat class: <Class X>
- Required documentation: SDS (Safety Data Sheet), shipping declaration
- Carrier certification: Verify hazmat carrier certification before booking
- Emergency contact: CHEMTREC 1-800-424-9300

---

## Freight Spend Tracker (YTD)

| Entity | Mode | YTD spend | Shipments | Avg cost/shipment | Budget |
|--------|------|----------|----------|-----------------|--------|
| Allevio | Parcel | $X | <N> | $X | $X |
| HIVE | LTL + FTL | $X | <N> | $X | $X |
| MBL | Parcel | $X | <N> | $X | $X |
| **Total** | | **$X** | **<N>** | **$X** | **$X** |

**Air freight YTD:** $X (<N> emergency shipments) — each air freight indicates a supply planning failure; investigate root cause

---

## Logistics KPIs

| KPI | Target | Actual | Trend |
|-----|--------|--------|-------|
| On-time delivery rate | ≥95% | X% | ↑/↓/→ |
| Freight cost as % of COGS | <3% | X% | |
| Emergency/air freight % | <2% of shipments | X% | |
| Claims rate (lost/damaged) | <0.5% | X% | |
| Average transit time | <X days | X days | |
```

## Output Contract
- Carrier selection always matched to urgency and cost — air freight is a last resort, not a default for anything time-sensitive
- Special handling always documented separately for temperature-sensitive (Allevio) and hazmat (HIVE) shipments — these have regulatory requirements
- Air freight always flagged as a supply planning failure — tracking air freight spend is how you measure how often the supply plan failed
- Receiving confirmation always required before invoice payment — unconfirmed delivery is an unverified PO receipt; the 3-way match can't close
- HITL required: Dr. Lewis coordinates logistics; emergency air freight decisions >$1K require Dr. Lewis approval; hazmat shipments reviewed by HIVE ops before carrier booking; temperature deviation at Allevio receipt triggers Dr. Lewis + Allevio clinical lead review before use determination

## System Dependencies
- **Reads from:** PO records (QuickBooks), supplier shipping confirmations, carrier tracking systems
- **Writes to:** Shipment log (SharePoint/Operations/Logistics); freight spend tracker; receiving confirmation (links to 3-way match)
- **HITL Required:** Dr. Lewis coordinates; emergency shipments approved by Dr. Lewis; hazmat HIVE ops review; temperature deviation Allevio clinical review; receiving confirmation triggers invoice payment clearance

## Test Cases
1. **Golden path:** Coordinate inbound shipment of clinical supplies for Allevio (temperature-sensitive, $4,200) → Mode: parcel (FedEx temperature-controlled); carrier selected; tracking set up; delivery expected in 2 business days; received on time; temperature certificate: 2-6°C throughout transit ✅; receiving confirmed; 3-way match closed; invoice approved for payment
2. **Edge case:** Shipment is delayed in transit and the item is critically needed at Allevio → check carrier tracking; contact carrier for status; if delay >24 hours and item is patient-critical, order replacement via air freight from backup supplier (safety stock-plan-B); document the delay and the air freight cost as a supply planning failure; add the item's safety stock level to the improvement list
3. **Adversarial:** A team member books air freight for a routine supply order "to make sure it arrives on time" → air freight for routine orders is $300-$500 extra per shipment with no delivery urgency — pure cost waste; requires Dr. Lewis approval for all air freight; if standard ground delivery is insufficient, the problem is the order timing (too late), not the mode — fix the planning, not the freight mode

## Audit Log
Shipment records retained. Freight invoices retained. Temperature compliance certificates (Allevio) retained. Claims filed and resolved retained. Air freight exceptions documented with root cause.

## Deprecation
Retire when Allevio or HIVE has a TMS (Transportation Management System) or 3PL (Third-Party Logistics) partner that handles logistics coordination, carrier selection, and tracking automatically.
