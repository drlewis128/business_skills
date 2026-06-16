---
name: ops-equipment-tracker
description: "Track and manage business equipment and assets. Use when the user says 'equipment tracker', 'asset tracking', 'equipment inventory', 'track equipment', 'equipment list', 'asset register', 'equipment maintenance', 'equipment replacement', 'device inventory', 'IT assets', 'equipment audit', 'laptop inventory', 'hardware inventory', 'fixed assets', or 'depreciation schedule'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--category <IT|clinical|office|vehicles|all>] [--action <audit|add|retire|maintenance>]"
---

# Ops Equipment Tracker

Track and manage physical assets at MBL portfolio companies — including IT equipment, clinical devices (Allevio), field equipment (HIVE), and office assets. Equipment tracking serves three business purposes: knowing what you have and where it is (asset control), knowing when to replace it (lifecycle management), and ensuring it's properly recorded for accounting (depreciation schedule). Without an asset register, equipment gets lost, replacement decisions are reactive, and the balance sheet is inaccurate.

## When to Use
- Building an initial asset register for a portfolio company
- Adding new equipment (laptop, clinical device, vehicle)
- Annual asset audit — verifying equipment is present, functional, and assigned
- Equipment is due for maintenance or replacement
- An employee separates and equipment must be tracked and recovered

## Equipment Tracking Framework

```
Asset categories for MBL portfolio:
  IT Equipment: Laptops, desktops, monitors, peripherals, phones, tablets, networking equipment
  Clinical (Allevio): Medical devices, diagnostic equipment, clinical workstations, patient-facing tech
  Field/Operations (HIVE): Trucks, trailers, field measurement devices, safety equipment
  Office: Printers, copiers, projectors, conference room tech
  Furniture: High-value items only (ergonomic chairs >$500, standing desks, conference tables)

Asset record minimum fields:
  Asset ID: Company prefix + category code + sequential number (e.g., ALV-IT-0042)
  Description: Make, model, serial number
  Category: IT / Clinical / Field / Office / Furniture
  Purchase date: Exact date
  Purchase price: Actual cost (for depreciation)
  Assigned to: Employee name or "unassigned"
  Location: Physical location (building/room)
  Condition: New / Good / Fair / Poor / Retired
  Warranty expiration: Date if applicable
  Maintenance schedule: Annual / Per manufacturer / As needed

Depreciation (for QuickBooks alignment):
  IT equipment: 3-year useful life (straight-line)
  Clinical equipment: 5-year useful life (per Medicare DME schedules if applicable)
  Vehicles: 5-year useful life
  Office furniture: 7-year useful life
  
  CapEx threshold: Assets >$2,500 are capitalized; below is expensed immediately
  (Confirm threshold with controller — IRS Section 179 safe harbor may apply)

Lifecycle management:
  IT laptops: Replace at 3-4 years or when repair cost exceeds 50% of replacement cost
  Clinical devices (Allevio): Per manufacturer lifecycle + FDA/CMS guidance if applicable
  Vehicles (HIVE): Per mileage/condition — operational decision with field supervisor
```

## Output Format

```markdown
# Equipment Asset Register — <Company Name>
**Date:** [Date] | **Prepared by:** Dr. John Lewis
**Total assets tracked:** [N] | **Total book value:** $[X]
**Last full audit:** [Date] | **Next scheduled audit:** [Date]

---

## Asset Summary by Category

| Category | Asset count | Book value | Oldest asset | Notes |
|---------|------------|-----------|------------|-------|
| IT Equipment | [N] | $[X] | [Year] | |
| Clinical Equipment (Allevio) | [N] | $[X] | [Year] | |
| Office Equipment | [N] | $[X] | [Year] | |
| Furniture | [N] | $[X] | [Year] | |
| **Total** | **[N]** | **$[X]** | | |

---

## Full Asset Register

| Asset ID | Description | Serial # | Category | Assigned to | Location | Purchase date | Cost | Book value | Condition | Warranty exp |
|---------|------------|---------|---------|------------|---------|-------------|------|-----------|---------|------------|
| ALV-IT-0001 | [MacBook Pro 14" M3] | [Serial] | IT | [Employee] | [Location] | [Date] | $[X] | $[X] | Good | [Date] |
| ALV-IT-0002 | | | | | | | | | | |

---

## Maintenance Schedule

| Asset ID | Description | Maintenance type | Last performed | Next due | Owner |
|---------|------------|-----------------|--------------|---------|-------|
| [ID] | [Clinical device] | [Annual calibration] | [Date] | [Date] | [Vendor] |

**Overdue maintenance:** [N assets — list with Asset IDs]

---

## Replacement Planning

| Asset ID | Description | Age | Condition | Est. replacement cost | Recommended by |
|---------|------------|-----|---------|---------------------|---------------|
| [ID] | [Laptop] | [3.5 yrs] | Fair | $[X] | [Date] |

**Replacement budget next 12 months:** $[X] (estimated)

---

## Recent Changes

| Date | Action | Asset ID | Description | Notes |
|------|--------|---------|------------|-------|
| [Date] | Added | [ID] | [New laptop — Employee A] | |
| [Date] | Retired | [ID] | [Old laptop — returned from separated employee] | |
| [Date] | Reassigned | [ID] | [From Employee A to Employee B] | |

---

## Employee Separation Checklist (if applicable)

**Separated employee:** [Name] | **Last day:** [Date]
- [ ] Laptop returned and wiped (IT)
- [ ] Phone returned (if company-owned)
- [ ] Access cards returned (facilities)
- [ ] Clinical devices returned to clinical storage (Allevio)
- [ ] Vehicle keys returned (HIVE — if applicable)
- [ ] All equipment accounted for: [✅ Complete / ❌ Missing: Asset ID [X]]
```

## Output Contract
- Every asset >$500 is in the register — under-tracking is the default failure mode; assets that exist but aren't tracked get lost, stolen, or forgotten; the register starts with IT equipment (highest turnover and value concentration), then expands to clinical and other categories; any new equipment purchase triggers an immediate asset record creation
- Separation triggers equipment recovery — when an employee separates (voluntary or involuntary), the asset register is checked immediately for all equipment assigned to that person; recovery is coordinated as part of the offboarding process; missing equipment is documented and escalated (either recovered or written off with documentation); clinical devices at Allevio require especially careful tracking due to regulatory requirements
- Depreciation records feed QuickBooks — assets above the CapEx threshold are communicated to the controller for capitalization; the asset register provides the data (purchase date, cost, category, useful life) that the controller uses to maintain the fixed asset schedule in QuickBooks; Dr. Lewis maintains the operational register; the controller maintains the accounting register; they are reconciled annually
- HITL required: Dr. Lewis builds and maintains the asset register; new assets >$2,500 are communicated to the controller for capitalization; asset disposals >$2,500 are communicated to controller for write-off; clinical device maintenance at Allevio requires clinical department coordination; vehicle decisions at HIVE require field supervisor and Dr. Lewis alignment

## System Dependencies
- **Reads from:** Purchase records (Bill.com, QuickBooks), equipment vendor invoices, manufacturer maintenance schedules, HR system (active employees for assignment tracking)
- **Writes to:** Asset register (SharePoint/Ops/<Company>/Assets/); QuickBooks fixed asset schedule (controller maintains); maintenance calendar; Monday.com (equipment replacement as project tasks)
- **HITL Required:** Dr. Lewis maintains register; controller receives CapEx notifications; clinical devices require clinical coordination at Allevio; employee separation equipment recovery coordinated by Dr. Lewis + HR

## Test Cases
1. **Golden path:** Allevio initial asset register → IT: 14 laptops (avg age 2.1 yrs), 3 clinical workstations, 2 iPads; Clinical: 2 diagnostic devices ($8K each, annual calibration due March), 1 EKG machine; Office: 2 printers, 1 conference system; Total book value ~$47K; 2 laptops flagged for replacement in next 6 months ($1,800 budgeted); 1 clinical device calibration overdue — schedule vendor appointment; 1 laptop assigned to employee who separated 30 days ago (!!!) — immediately: was the laptop returned at offboarding? escalate to HR; asset register published to SharePoint; controller notified of total capitalized asset value for reconciliation
2. **Edge case:** A $6K clinical device is discovered in a storage room with no asset record → Add to register retroactively; pull the purchase invoice to get exact date and cost; assign to clinical category; check with controller — has it been capitalized? If not, process a retroactive capitalization entry; investigate how it was purchased without a record being created; use this as a trigger to audit all purchases >$2,500 in the past 2 years to find other unregistered assets
3. **Adversarial:** "Tracking this level of detail is too much overhead for a small company" → The overhead is in setup, not maintenance; an initial register for a 20-person company takes 4-6 hours; after that, maintenance is 15 minutes per new asset and a 2-hour annual audit; what's more overhead: 6 hours upfront, or discovering a $5K laptop is missing when the separated employee was the last person to have it?

## Audit Log
Asset register versioned annually and on significant changes. Equipment purchases logged at time of entry. Retirements and disposals documented with reason and date. Controller notifications for CapEx items retained. Separation equipment recovery records retained by employee.

## Deprecation
Retire when portfolio companies have controllers or finance managers who own the fixed asset register in an ERP or accounting system, and IT managers who maintain the device inventory independently, with automated alerting for lifecycle events.
