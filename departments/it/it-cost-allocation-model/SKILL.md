---
name: it-cost-allocation-model
description: "Allocate IT costs across business units and portfolio entities. Use when the user says 'IT cost allocation', 'allocate IT costs', 'IT chargeback', 'how do we split IT costs', 'technology cost allocation', 'IT costs by entity', or 'allocate shared technology costs'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--method <headcount|usage|direct|hybrid>] [--period <monthly|quarterly|annual>]"
---

# IT Cost Allocation Model

Allocate IT costs across business units and portfolio entities. MBL operates a shared IT environment that serves multiple entities. Without allocation, shared IT costs sit at the holding company — distorting each entity's P&L and hiding the true cost of technology per business unit. Proper allocation creates transparency and accountability.

## When to Use
- Monthly or quarterly IT cost allocation to portfolio entities
- Building the annual IT budget with per-entity cost breakdowns
- Finance requests entity-level P&L that includes IT costs
- Portfolio company acquisition — allocating shared services costs
- Board or LP reporting that includes entity-level financials

## Allocation Methods

| Method | How It Works | Best For | Limitation |
|--------|------------|---------|-----------|
| **Headcount-based** | Allocate by % of total headcount per entity | Simple to calculate; good for productivity tools | Ignores heavy vs. light usage |
| **Usage-based** | Allocate by actual consumption (data, sessions, calls) | Cloud costs, telephony, storage | Requires metering; complex |
| **Direct assignment** | Cost belongs entirely to one entity (no sharing) | Entity-specific tools (AdvancedMD for Allevio) | Not applicable for shared services |
| **Hybrid** | Combination: direct for entity-specific + headcount or usage for shared | Most realistic | More complex to maintain |

## Cost Categories

| Category | Allocation Method | Notes |
|---------|----------------|-------|
| Microsoft 365 licenses | Headcount | Each user = 1 seat = 1 entity |
| Monday.com | Headcount (users per entity) | Bill by user |
| GoHighLevel | Direct (Sales team per entity) | Assign to entity owning the users |
| Krista.ai | Hybrid: base ÷ entities + usage | Orchestration platform is shared |
| Cloud infrastructure (AWS/Azure) | Usage (by account/tag) | Tag cloud resources by entity |
| IT staff time | Headcount + time-log | IT staff allocate time by entity weekly |
| Security tools (EDR, SIEM) | Headcount (endpoints protected per entity) | |
| Shared hardware | Headcount | Data center / office network shared |

## Output Format

```markdown
# IT Cost Allocation — <Period>
**Prepared by:** IT Manager | **Reviewed by:** Dr. Lewis | **For:** Finance

---

## Total IT Costs This Period

| Category | Total Cost | MBL Partners | Allevio | HIVE Partners | Column6 |
|---------|-----------|------------|---------|-------------|---------|
| Microsoft 365 | $<N> | $<N> (X seats) | $<N> (X seats) | $<N> (X seats) | $<N> (X seats) |
| GoHighLevel | $<N> | $<N> | $0 | $0 | $0 |
| Monday.com | $<N> | $<N> | $<N> | $<N> | $<N> |
| Krista.ai (AI Orchestration) | $<N> | $<N> (MBL control plane) | $<N> | $0 | $0 |
| AWS cloud | $<N> | $<N> | $<N> (Allevio app) | $0 | $<N> |
| IT staff (allocated hours) | $<N> | $<N> (50% MBL) | $<N> (30% Allevio) | $<N> | $<N> |
| Shared security tools | $<N> | $<N> | $<N> | $<N> | $<N> |
| **Total** | **$<N>** | **$<N>** | **$<N>** | **$<N>** | **$<N>** |

---

## Allocation Assumptions

| Cost | Allocation Method | Basis |
|------|----------------|-------|
| Microsoft 365 | Per-seat direct | X seats MBL, Y seats Allevio, Z seats HIVE |
| Krista.ai | 50% MBL, 30% Allevio, 20% HIVE | Usage estimate + negotiated per business plan |
| IT staff | Time-log allocation | IT team logs hours by entity weekly |
| AWS | Usage-based | AWS cost tags by entity account |

---

## Per-Entity IT Cost Summary

| Entity | IT Cost This Period | Headcount | IT Cost per Employee |
|--------|------------------|----------|---------------------|
| MBL Partners | $<N> | <N> | $<N>/employee |
| Allevio | $<N> | <N> | $<N>/employee |
| HIVE Partners | $<N> | <N> | $<N>/employee |
| Column6 | $<N> | <N> | $<N>/employee |
| **Total** | **$<N>** | **<N>** | **$<N>/employee** |

---

## Journal Entry Guidance (for Finance)

| Entity | Debit Account | Credit Account | Amount |
|--------|-------------|-------------|--------|
| Allevio | Technology Expense | IT Cost Pool (Intercompany) | $<N> |
| HIVE Partners | Technology Expense | IT Cost Pool (Intercompany) | $<N> |
```

## Output Contract
- Allocation assumptions always documented — Finance needs to audit this; "trust me" is not sufficient
- Per-employee IT cost always calculated — it's the benchmark comparison metric
- Journal entry guidance always provided — allocation is only real when it's in the books
- HITL required: IT Manager prepares; Finance reviews and books entries; Dr. Lewis reviews for any allocation dispute between entities

## System Dependencies
- **Reads from:** IT cost data, headcount per entity, cloud billing tags, IT staff time logs (provided by IT and Finance)
- **Writes to:** Nothing (allocation model for Finance to book)
- **HITL Required:** IT Manager prepares model; Finance reviews and approves; Dr. Lewis reviews for allocation methodology disputes; Matt Mathison informed of any entity-level IT cost that is significantly above or below budget

## Test Cases
1. **Golden path:** Monthly allocation for 4 entities → $38,500 total IT cost, allocated by method (direct, headcount, usage), journal entries prepared for Finance; Allevio highest per-employee ($380/employee) due to HIPAA compliance tools
2. **Edge case:** New portfolio company acquired mid-month → pro-rate allocation from acquisition date, document the proration method, notify Finance for journal entry timing
3. **Adversarial:** Portfolio company disputes their IT cost allocation ("MBL is charging us too much") → presents allocation methodology and assumptions transparently, offers to move from headcount to usage-based allocation if the entity believes that's more accurate, documents the dispute resolution for Finance and Dr. Lewis

## Audit Log
IT cost allocation models retained by period. Methodology changes documented and dated.

## Deprecation
Retire when Finance deploys an ERP or FP&A tool with shared services cost allocation and intercompany billing modules.
