---
name: warehouse-management-planner
description: "Plan and optimize warehouse and storage operations. Use when the user says 'warehouse management', 'storage planning', 'warehouse layout', 'optimize our storage', 'inventory storage', 'warehouse operations', 'how to organize the warehouse', 'storage facility planning', 'pick and pack', 'warehouse efficiency', or 'organize our stockroom'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE>] [--focus <layout|process|safety|all>]"
---

# Warehouse Management Planner

Plan and optimize warehouse and storage operations to reduce picking errors, improve space utilization, and ensure safety and compliance. For MBL's portfolio, warehouse management is most relevant at Allevio (medical supply storage — HIPAA, FDA, temperature control) and HIVE (oil and gas equipment and materials storage — OSHA, hazmat). Both have regulatory requirements beyond standard warehousing.

## When to Use
- Setting up a new storage facility or stockroom
- Current warehouse is inefficient — items hard to find, picking errors high
- Regulatory compliance audit requires documented storage procedures
- Portfolio company acquisition — assessing their storage and warehouse operations
- Safety incident related to storage — redesign required

## Warehouse Design Principles

```
ABC slotting (match storage location to demand frequency):
  A-items (high velocity): Closest to receiving/dispatch; waist height; easy reach
  B-items (medium velocity): Secondary locations; standard reach
  C-items (low velocity): Remote locations, high shelves, bulk storage

Flow principles:
  Receiving → Inspection → Put-away → Storage → Pick → Pack → Dispatch
  Counter-clockwise product flow (industry standard for efficiency)
  Minimize cross-traffic between inbound and outbound flows

Space utilization:
  Target: 85% of cubic storage capacity (100% creates inefficiency)
  Vertical space: Use tall racking with appropriate equipment access
  Aisle width: Minimum 8 feet for forklifts; 5 feet for pallet jacks; 3 feet for hand trucks

Special requirements (Allevio):
  Temperature zones: Refrigerated (2-8°C), frozen (-20°C), ambient
  FIFO enforcement: Medication and clinical supply rotation
  Separation: Medications separate from general supplies; clear labeling
  Access control: Clinical supplies accessible to credentialed staff only

Special requirements (HIVE):
  Hazmat segregation: Flammable, oxidizing, corrosive materials separated per OSHA/DOT
  Equipment weight limits: Floor load ratings for heavy equipment storage
  Outdoor storage: Weatherproofing for equipment not stored indoors
  Fire suppression: Per OSHA and local fire code
```

## Output Format

```markdown
# Warehouse Management Plan — <Entity / Facility>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE>
**Facility:** <Address / description>
**Storage area:** <N> sq ft | **SKUs managed:** <N>

---

## Current State Assessment

| Issue | Impact | Priority |
|-------|--------|---------|
| No ABC slotting — high-velocity items far from dispatch | Picker inefficiency — X min/pick average | 🔴 High |
| No FIFO enforcement — expired items found in stock | HIPAA/FDA risk; patient safety | 🔴 Critical (Allevio) |
| No hazmat segregation — chemicals stored with general inventory | OSHA violation risk | 🔴 Critical (HIVE) |
| Space utilization 68% — aisles overcrowded | Safety risk; picking error rate high | 🟡 Medium |
| No receiving inspection process — items put away without inspection | Quality issues reach patients | 🟡 Medium (Allevio) |

---

## Warehouse Layout Design

### Zone Map

```
[ASCII layout representation]

RECEIVING          DISPATCH
|  ————————————————————  |
| ZONE A (A-items)        |
|  ————————————————————  |
| ZONE B (B-items)        |
|  ————————————————————  |
| ZONE C (C-items)        |
|  ————————————————————  |
| SPECIAL: REFRIGERATED   |
| SPECIAL: HAZMAT (HIVE)  |
 ————————————————————————
```

### Zone Specifications

| Zone | Items | Shelving | Location | Special requirements |
|------|-------|---------|---------|---------------------|
| A — Active pick | Top 20% velocity items | Easy-reach; waist height | Nearest dispatch | None |
| B — Standard | Mid-velocity items | Standard shelving | Mid-facility | None |
| C — Bulk | Low velocity; overstock | High shelving; bulk storage | Rear | Ladder access |
| Refrigerated | Temperature-sensitive | Refrigerator units (2-8°C) | Monitored | Temp log; FIFO |
| Frozen | Frozen items | Freezer units (-20°C) | Monitored | Temp log; FIFO |
| Hazmat (HIVE) | Flammable/corrosive chemicals | Fire-rated cabinet | Ventilated area | OSHA labeling; spill containment |

---

## Operating Procedures

### Receiving Process

1. Delivery arrives — do not put away until inspected
2. Count items against PO quantity
3. Inspect for damage; temperature-sensitive: verify cold chain certificate
4. Lot number and expiration date logged (Allevio: all clinical supplies)
5. Put-away to correct zone following FIFO (oldest stock in front)
6. PO receipt confirmed in system → triggers 3-way match

### Pick Process

1. Pick list generated from order (system or manual)
2. Pick from FIFO sequence (oldest first)
3. Record lot/batch number picked (Allevio: required for traceability)
4. Verify quantity before leaving pick zone
5. Deliver to dispatch staging; confirm hand-off

### Cycle Count (physical inventory accuracy)

| Zone | Frequency | Method | Owner |
|------|---------|--------|-------|
| A-items | Weekly spot check (20% of A-items) | Physical count; compare to system | Warehouse staff |
| B-items | Monthly | Full physical count | Warehouse staff |
| C-items | Quarterly | Full physical count | Warehouse staff |
| Refrigerated / Hazmat | Monthly + after any disruption | Physical count + condition inspection | Dr. Lewis or supervisor |

**Variance threshold:** >2% count variance investigated; >5% variance requires root cause analysis

---

## Compliance Requirements

### Allevio — Medical Supply Storage
- [ ] Temperature monitoring: Continuous (data logger); reviewed daily
- [ ] FIFO enforced: All clinical supplies rotate by expiration date
- [ ] Medication storage: Separate cabinet; access controlled
- [ ] Recall readiness: Lot numbers tracked; can locate/quarantine within 1 hour
- [ ] FDA compliance: Medical device storage per FDA storage requirements
- [ ] Temperature excursion protocol: If temp out of range, quarantine all affected items; notify Dr. Lewis

### HIVE — Oil and Gas Equipment Storage
- [ ] Hazmat segregation: Chemicals stored per OSHA 29 CFR 1910.119
- [ ] MSDS/SDS available: All hazardous materials have current Safety Data Sheet on-site
- [ ] Spill containment: Secondary containment for all liquid chemicals
- [ ] Fire suppression: Functional; inspected annually
- [ ] Equipment load ratings: Floor rated for stored equipment weight
- [ ] Outdoor equipment: Weatherproofed and locked

---

## Warehouse KPIs

| KPI | Target | Frequency |
|-----|--------|---------|
| Picking accuracy (% error-free) | ≥99.5% | Weekly |
| Inventory accuracy (physical vs. system) | ≥98% | Monthly |
| Space utilization | 80-85% | Quarterly |
| Receiving cycle time (PO receipt to put-away) | <4 hours | Weekly |
| Temperature excursion incidents | 0 | Continuous |
| OSHA recordable incidents | 0 | Continuous |
```

## Output Contract
- FIFO enforcement always explicit for Allevio — expired clinical supplies in use is a patient safety and FDA compliance issue
- Hazmat segregation always explicit for HIVE — OSHA violations from improper chemical storage carry significant fines and safety risk
- Cycle count process always defined — physical inventory without a cycle count process degrades over time to inaccuracy
- Compliance checklists always separate by entity — Allevio and HIVE have fundamentally different regulatory environments
- HITL required: Dr. Lewis designs warehouse plan; Allevio clinical lead and facility manager co-approve clinical supply procedures; HIVE safety officer co-approves hazmat procedures; temperature excursion at Allevio → Dr. Lewis + Allevio clinical lead decision on whether affected items can be used; OSHA recordable incidents → immediate notification to Dr. Lewis and entity leadership

## System Dependencies
- **Reads from:** Inventory system (ABC classification), supplier delivery schedules, entity compliance requirements
- **Writes to:** Warehouse plan (SharePoint/Operations/Supply Chain); cycle count results; compliance checklists
- **HITL Required:** Dr. Lewis designs; entity clinical/safety lead co-approves procedures; temperature excursions → Dr. Lewis + clinical; OSHA incidents → immediate escalation

## Test Cases
1. **Golden path:** Design Allevio clinical supply storage at a new location → layout: 4 zones (A-active, B-standard, C-bulk, Refrigerated); FIFO enforcement: label-and-rotate procedure; receiving: inspection + lot logging + cold chain certificate required; compliance: temperature monitoring installed (continuous data logger); cycle count: weekly spot check on A-items, monthly full; KPIs tracked; Allevio facility manager co-approves
2. **Edge case:** Temperature excursion detected in refrigerated zone (temp rose to 12°C for 3 hours) → immediate quarantine of all affected items; do not use until clinical assessment complete; notify Dr. Lewis and Allevio clinical lead; clinical lead determines disposition (use/discard); document incident; notify supplier if temperature-sensitive product is affected; investigate cause of excursion (power failure, door left open); implement corrective action
3. **Adversarial:** Space is limited and the team wants to remove FIFO labeling to make more room → FIFO enforcement for clinical supplies is not optional — it's patient safety and FDA compliance; find space by improving ABC slotting (getting C-items out of prime space) or by adding vertical storage; the FIFO label system takes less than 1 sq ft; the consequence of not rotating is expired product reaching patients

## Audit Log
Warehouse layout versioned. Cycle count results retained. Temperature logs retained (Allevio). Compliance checklists retained. OSHA recordable incidents documented. Temperature excursion incidents documented.

## Deprecation
Retire when the entity has a WMS (Warehouse Management System) with automated FIFO enforcement, lot tracking, cycle count workflows, and compliance monitoring built in.
