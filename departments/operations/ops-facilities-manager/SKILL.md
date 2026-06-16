---
name: ops-facilities-manager
description: "Manage office facilities and workspace operations. Use when the user says 'facilities', 'office management', 'office operations', 'workspace', 'office maintenance', 'facilities issue', 'office setup', 'building management', 'workspace management', 'office cost', 'facilities audit', 'office space', 'janitorial', 'HVAC', 'building access', 'office supplies', or 'workspace planning'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--location <office address>] [--action <audit|issue|plan|cost-review>]"
---

# Ops Facilities Manager

Manage office and workspace operations at MBL portfolio companies — covering facility audits, maintenance coordination, cost management, vendor oversight, and workspace planning. Facilities management at portfolio scale is about keeping the workspace functional and cost-effective without over-investing in space or services that don't create value. The goal: employees can do their work, the space reflects the brand, and the costs are appropriate for the business.

## When to Use
- A facilities issue needs to be tracked and resolved (HVAC, plumbing, access)
- Annual facilities audit — reviewing costs, vendor performance, and space utilization
- A new location is being set up or an existing one is being reconfigured
- Lease renewal is approaching and the space needs to be evaluated
- Matt Mathison asks about occupancy costs

## Facilities Framework

```
Facilities scope at MBL portfolio scale:
  Physical space: Office, clinical (Allevio), field/warehouse (HIVE), server room
  Mechanical: HVAC, plumbing, electrical — vendor-managed or landlord responsibility
  Access: Door access systems, keys, building security, after-hours access
  Cleaning/janitorial: Contract cleaning, standards, frequency
  Supplies: Office supplies ordering and stocking
  Equipment: Printers, copiers, appliances — maintenance and replacement
  Safety: Fire extinguisher inspection, first aid kits, OSHA posting requirements
  Signage: Building directory, suite signage, brand standards

Occupancy cost targets (rough benchmarks):
  Professional services office: $30-60 per sq ft per year (fully loaded)
  Healthcare clinic (Allevio): Higher — clinical fit-out costs; ADA compliance required
  Field office (HIVE): Lower — functional over premium
  
  Occupancy as % of revenue: Target <8% for most portfolio companies
  If >12% of revenue, evaluate: downsize, sublease, remote-first restructure

Facilities issues triage:
  P1 (Immediate): Safety hazard, building access failure, HVAC in summer/winter, flooding
    → Landlord or vendor same day; escalate if not resolved in 4 hours
  P2 (Urgent): Plumbing non-emergency, power outlet issues, door lock issues
    → Vendor within 48 hours
  P3 (Normal): Aesthetics, minor supply issues, light bulb replacement
    → Batch and resolve weekly
```

## Output Format

```markdown
# Facilities Status — <Company Name> | <Location>
**Date:** [Date] | **Prepared by:** Dr. John Lewis
**Square footage:** [X sq ft] | **Annual occupancy cost:** $[X] | **Per sq ft:** $[X]
**Lease term:** [Dates] | **Days until lease expiration:** [N]

---

## Facilities Snapshot

| Category | Status | Notes |
|---------|--------|-------|
| Physical space | 🟢/🟡/🔴 | [Description] |
| HVAC | 🟢/🟡/🔴 | |
| Building access | 🟢/🟡/🔴 | |
| Cleaning/Janitorial | 🟢/🟡/🔴 | |
| Safety compliance | 🟢/🟡/🔴 | |
| Space utilization | 🟢/🟡/🔴 | [Est. X% utilized] |

---

## Open Issues

| # | Issue | Priority | Reported | Owner | Target resolution |
|---|-------|---------|---------|-------|-----------------|
| 1 | [Issue description] | P1/P2/P3 | [Date] | [Vendor/Landlord] | [Date] |

---

## Facilities Vendors

| Service | Vendor | Annual cost | Contract expires | Score |
|---------|--------|------------|----------------|-------|
| Cleaning/Janitorial | [Vendor] | $[X] | [Date] | [A-F] |
| HVAC maintenance | [Vendor] | $[X] | [Date] | |
| Pest control | [Vendor] | $[X] | [Date] | |
| Security monitoring | [Vendor] | $[X] | [Date] | |

---

## Occupancy Cost Analysis

**Annual occupancy costs:**
| Cost category | Annual amount |
|-------------|--------------|
| Base rent | $[X] |
| Operating expenses/CAM | $[X] |
| Utilities (if separate) | $[X] |
| Cleaning/janitorial | $[X] |
| Security | $[X] |
| Maintenance/repairs | $[X] |
| Office supplies | $[X] |
| **Total occupancy cost** | **$[X]** |

**Occupancy as % of revenue:** [X%] — 🟢 <8% / 🟡 8-12% / 🔴 >12%
**Cost per employee:** $[X/year] — [N employees at this location]

---

## Safety & Compliance

- [ ] Fire extinguishers: Last inspection [Date] | Next due [Date]
- [ ] First aid kits: Stocked and current (checked [Date])
- [ ] Emergency exits: Unobstructed ✅
- [ ] OSHA postings: Current ✅
- [ ] ADA accessibility: Compliant ✅ (Allevio — clinical compliance required)

---

## Space Utilization

**Configured workstations:** [N] | **Average daily occupancy:** [N staff] ([X%] utilization)
**Remote work ratio:** [X% of staff remote >3 days/week]
**Conference rooms:** [N rooms — average booking utilization: X%]

**Rightsizing analysis (if underutilized):**
- Current space: [X sq ft] at $[X/year]
- If rightsized to [Y sq ft]: estimated $[X] annual savings
- Lease flexibility: [Can downsize at renewal / Cannot — locked in until Date]

---

## Matt Mathison Brief (if occupancy issue or >$100K facility)

[Company] occupancy costs are $[X]/year ([X%] of revenue). [Key issue or opportunity — specific]. [Recommended action or no action needed].
```

## Output Contract
- Occupancy costs are tracked as a % of revenue — absolute dollar amounts don't convey whether the facility is efficient; 8% of revenue is the practical threshold; above 12% triggers a rightsizing conversation; this analysis is run annually at minimum and whenever revenue changes significantly (down: space becomes too expensive; up: space may be inadequate)
- Safety compliance is not optional — fire extinguisher inspections, first aid kits, OSHA postings, and ADA compliance are legal requirements; at Allevio (healthcare), clinical-grade compliance is additionally required; Dr. Lewis tracks compliance dates and ensures nothing lapses; safety is the one facilities category that doesn't get deferred for budget reasons
- Issues are tracked to resolution — a facilities issue that is reported but not tracked is one that doesn't get resolved; every open issue has a priority, owner, and target resolution date; P1 issues are escalated until resolved; the issue log is not a complaint list — it's a management tool
- HITL required: Dr. Lewis manages facility issues and vendor relationships; space decisions (new leases, major reconfiguration, sublease) require Matt Mathison involvement; occupancy cost reduction >$25K/year requires Matt Mathison awareness; safety compliance issues require immediate attention by Dr. Lewis regardless of who reports them

## System Dependencies
- **Reads from:** Lease agreement, vendor contracts, building management contacts, occupancy cost records (QuickBooks), safety inspection records
- **Writes to:** Facilities log (SharePoint/Ops/<Company>/Facilities/); issue tracker (Monday.com); vendor performance records; occupancy cost analysis
- **HITL Required:** Dr. Lewis manages; Matt Mathison for lease decisions, major capital improvements, or occupancy >12% of revenue; safety issues require Dr. Lewis same-day response

## Test Cases
1. **Golden path:** Allevio clinic facilities audit → 3,200 sq ft clinical space; $96K/year total occupancy (rent + utilities + janitorial + maintenance); Revenue $2.8M → occupancy = 3.4% (🟢); 3 open issues: (1) P2 — exam room 3 HVAC running cold, vendor scheduled for Friday; (2) P3 — supply room reorganization pending; (3) P3 — parking signage needs update; Safety: fire extinguisher last inspected Nov 2025 — due June 2026 (schedule now); ADA compliance current; Facilities vendor: cleaning vendor scored B (82/100) — renewed last month; no Matt Mathison action needed
2. **Edge case:** A portfolio company is locked in a lease at 18% of revenue after a revenue decline → The lease terms are fixed; what can be done: (1) sublease unused space if lease allows; (2) negotiate with landlord — property owners often prefer a concession over a default; (3) remote-first restructure to reduce the space needed; escalate to Matt Mathison with options and costs; the analysis provides the decision-making framework, not just the problem statement
3. **Adversarial:** "Facilities isn't strategic — why are we tracking this?" → At portfolio companies in the $1-10M revenue range, occupancy is typically the 2nd or 3rd largest expense after people and sometimes technology; 1% of revenue is real money; beyond cost, a facilities issue (HVAC failure during a clinic day, building access failure) has direct operational impact; respond: "You're right it's not strategic. But it's a cost center that's often 5-15% of OPEX, and a small number of issues in this space (lease overpay, expired safety compliance, underutilized space) translate directly to EBITDA. It takes an hour a quarter to stay on top of it."

## Audit Log
Facilities audits retained by company and date. Issue log retained with resolution dates. Safety inspection records retained permanently. Occupancy cost analysis retained annually. Vendor contracts and renewal dates tracked in vendor register.

## Deprecation
Retire when portfolio companies have office managers or facilities coordinators who own facility operations, maintain the issue log, and coordinate vendors independently, reporting to Dr. Lewis only on exceptions and decisions.
