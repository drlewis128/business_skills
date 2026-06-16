---
name: ops-lease-manager
description: "Manage office and facility leases. Use when the user says 'lease', 'lease management', 'lease renewal', 'lease expiration', 'rent', 'office lease', 'lease terms', 'lease negotiation', 'commercial lease', 'lease review', 'landlord', 'sublease', 'lease abstract', 'CAM charges', 'lease obligations', 'tenant improvement', 'lease amendment', 'lease termination', or 'real estate lease'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--location <address>] [--action <review|renew|negotiate|terminate|abstract>]"
---

# Ops Lease Manager

Manage commercial real estate leases at MBL portfolio companies — including lease abstracts, critical date tracking, renewal decisions, and landlord relationship management. Leases are long-term financial commitments that are hard to exit and easy to overpay on. The most expensive lease mistakes are: missing an auto-renewal window (locked in for another term), not negotiating at renewal (paying above-market rates), and signing a lease without understanding the full cost (CAM charges, escalations, TI allowances). Dr. Lewis prevents all three.

## When to Use
- Reviewing a new lease before signature
- A lease renewal window is approaching (90-day lead time required)
- CAM charges or operating expense reconciliation needs to be reviewed
- A lease needs to be abstracted (key terms extracted into a usable format)
- A sublease or early termination is being considered
- Matt Mathison needs an overview of all portfolio lease commitments

## Lease Management Framework

```
Critical lease dates (must be tracked):
  Lease commencement date: When the obligation began
  Lease expiration date: When the term ends
  Renewal notice deadline: Must give notice X days BEFORE expiration to exercise or decline
  Auto-renewal trap: If notice is not given, lease may automatically renew for another full term
  Rent escalation dates: When rent steps up (typically annually)
  CAM reconciliation: Landlord's annual operating expense true-up

Renewal decision timeline:
  T-12 months: Assess current space needs vs. future growth
  T-9 months: Evaluate market alternatives (get 2-3 comparable quotes)
  T-6 months: Decide: renew, relocate, or renegotiate
  T-90 days: Give formal notice per lease requirements
  T-60 days: Finalize new terms or execute renewal
  
  The 90-day rule: Dr. Lewis begins renewal assessment 12 months out
  Never be caught at T-30 days — that's negotiating from desperation

Lease components to understand:
  Base rent: Monthly/annual flat rate
  CAM (Common Area Maintenance): Landlord passes operating costs to tenants
    — must confirm: what's included/excluded, cap on increases, audit rights
  Operating expense escalation: Annual rent increase (% or CPI)
  TI allowance: Tenant improvement money from landlord for buildout
  Lease incentives: Free rent periods, moving allowances
  Personal guarantee: Is Dr. Lewis or Matt Mathison personally guaranteeing the lease? (Flag immediately)
  Assignment clause: Can the lease be transferred if the business is sold?

Healthcare lease requirements (Allevio):
  ADA compliance requirements in the space
  Plumbing for clinical use (sink in exam rooms)
  HIPAA considerations for layout
  Medical waste disposal permissions
  Pharmacy/DEA-controlled substance storage if applicable
```

## Output Format

```markdown
# Lease Abstract — <Company Name> | <Property Address>
**Prepared by:** Dr. John Lewis | **Date:** [Date]
**Attorney review required:** [Yes — lease >$25K/year or unusual terms / No]

---

## Lease Summary

| Field | Detail |
|-------|--------|
| Tenant | [Company name] |
| Landlord | [Name / Management company] |
| Property address | [Full address] |
| Suite | [Suite/unit number] |
| Leased area | [X sq ft] |
| Lease type | [NNN / Gross / Modified Gross] |
| Lease commencement | [Date] |
| Lease expiration | [Date] |
| Base term | [N years] |

---

## Financial Terms

| Item | Amount | Notes |
|------|--------|-------|
| Current monthly base rent | $[X] | |
| Annual base rent | $[X] | |
| CAM / Operating expenses | $[X]/month est. | [What's included] |
| Total monthly obligation | $[X] | |
| Annual escalation | [X% / CPI] | Effective [month] each year |
| Next rent escalation date | [Date] | New rate: $[X]/month |
| Security deposit | $[X] | Held by landlord |
| Personal guarantee | [Yes — [who] / No] | 🔴 Flag if yes |

**Total lease commitment (base rent only):** $[X] over [N remaining months]

---

## Critical Dates

| Event | Date | Lead time | Action required | Status |
|-------|------|----------|----------------|--------|
| Renewal notice deadline | [Date] | [N days] | Give written notice to renew/decline | 🟢 Far out / 🟡 Approaching / 🔴 Urgent |
| Lease expiration | [Date] | | | |
| Next CAM reconciliation | [Date] | | Review landlord statement | |
| Next rent escalation | [Date] | | Update budget | |
| Auto-renewal trigger | [Date] | | If no notice given, renews for [N years] | 🔴 Flag |

---

## Renewal Options

| Option | Terms | Exercise deadline | Recommended action |
|--------|-------|-----------------|-------------------|
| Option 1 | [N-year extension at [X% increase over current rent]] | [Date] | [Exercise / Let expire / Negotiate] |

**Market comparison:**
| Comparable property | Size | Rate | Distance | Notes |
|--------------------|------|------|---------|-------|
| [Address] | [X sq ft] | $[X/sq ft/yr] | [X miles] | |

**Renewal recommendation:**
[Renew / Relocate / Renegotiate] — rationale: [specific — market rate vs. current rate, space fit, lease flexibility]

---

## Key Provisions Review

| Provision | Summary | Risk level | Notes |
|-----------|---------|-----------|-------|
| Assignment/sublease | [Can assign with landlord consent / No assignment without penalty] | 🟢/🟡/🔴 | [M&A relevance — if company is sold, does lease transfer?] |
| Early termination | [No right to terminate / Terminate with X months' notice + penalty] | | |
| CAM audit rights | [Tenant may audit within X days of receipt] | | |
| CAM cap | [Increases capped at X%/year / No cap — 🔴] | | |
| Permitted use | [General office / Healthcare — must match actual use] | | |
| ADA compliance | [Landlord responsible / Tenant responsible] | | |
| Holdover | [Month-to-month at X% premium / Auto-renew at same terms] | | |

---

## CAM/Operating Expense Review

**Landlord's annual statement received:** [Date] | **Period:** [Year]
**Estimated payments made:** $[X] | **Actual per landlord:** $[X]
**True-up (owe / credit):** [+/- $X]

**CAM components reviewed:**
- [ ] Verify inclusions match lease (e.g., mgmt fee cap, capital exclusions)
- [ ] Audit rights exercised: [Yes — findings / No]
- [ ] Dispute filed: [N/A / Yes — $X in dispute]

---

## Portfolio Lease Summary (multi-entity)

| Entity | Location | Sq ft | Monthly rent | Expiration | Renewal notice by |
|--------|---------|-------|------------|-----------|-----------------|
| Allevio | [Address] | [X] | $[X] | [Date] | [Date] |
| HIVE | [Address] | | | | |
| MBL HoldCo | [Address] | | | | |
| **Total portfolio** | | [X] | **$[X]** | | |

---

## Matt Mathison Brief

[Company] lease at [address] — $[X]/month — expires [Date]. [Key action: renewal notice due [Date] / CAM dispute filed for $[X] / No action needed for N months]. [Renewal recommendation in one sentence if applicable].
```

## Output Contract
- The auto-renewal trap is the most important date in any lease — if a lease has an automatic renewal provision and Dr. Lewis doesn't give written notice by the deadline, the company is locked in for another full term at current (or slightly escalated) rates; this date is tracked in Monday.com with a 90-day alert; even if renewal is the right answer, the notice should be given explicitly to preserve negotiating leverage
- Personal guarantees are always flagged — any lease that requires a personal guarantee from Dr. Lewis, Matt Mathison, or another MBL principal is a significant financial risk; the portfolio company's lease obligation becomes a personal liability; always attempt to remove personal guarantees or replace them with a corporate guarantee from MBL Partners HoldCo; if a personal guarantee is unavoidable, Matt Mathison must review and approve before signing
- Renewals are negotiated, not accepted at face value — landlords send renewal letters at whatever terms they prefer; the renewal rate is almost always negotiable, especially in a soft market or if the tenant has been a good one; Dr. Lewis always gets at least 2 competing quotes before entering a renewal negotiation; the worst negotiating position is being discovered by the landlord to have no alternatives
- Attorney review for significant leases — any lease >$25K/year or with unusual terms (personal guarantee, long term, complex CAM structure, assignment restrictions relevant to M&A) is reviewed by an attorney before signature; Dr. Lewis reviews the business and operational terms; the attorney reviews the legal enforceability and risk; both reviews happen before anyone signs
- HITL required: Dr. Lewis reviews all leases; attorney reviews leases >$25K/year or unusual terms; Matt Mathison approves leases >$50K/year, personal guarantees, or lease terms >5 years; sublease or early termination decisions require Matt Mathison approval; any M&A-relevant lease term (assignment clause) requires Matt Mathison awareness

## System Dependencies
- **Reads from:** Lease agreements, CAM reconciliation statements, market rate comparisons, landlord correspondence
- **Writes to:** Lease abstract (SharePoint/Ops/<Company>/Facilities/Leases/); critical date calendar (Monday.com); CAM dispute records; portfolio lease summary; attorney review requests
- **HITL Required:** Dr. Lewis reviews; attorney for >$25K/year or unusual terms; Matt Mathison for >$50K, personal guarantees, or long-term commitments; renewal decision requires Dr. Lewis recommendation + CEO concurrence

## Test Cases
1. **Golden path:** Allevio lease review — 2,800 sq ft medical office, $7,200/month, 3-year term expiring in 11 months → Renewal notice required 90 days before expiration; deadline: in 5 months; action: begin renewal analysis now (T-11 months); market comparison shows comparable medical office space at $6,800-7,400/month; CAM charges last year: estimated $850/month, actual $920/month — true-up of $840 owed, no dispute; permitted use includes healthcare — correct; ADA compliance: landlord responsible per lease; no personal guarantee; assignment: requires landlord consent (M&A flag — note for Matt Mathison); renewal recommendation: renegotiate for $6,900/month (saving $300/month) using market comps as leverage; attorney review: not required (renewal of existing terms); Matt Mathison brief: "Allevio lease expires [date] — renewal notice due [date]. Recommend renegotiating to $6,900/month (market rate confirmed). Will give notice by [date]."
2. **Edge case:** 30 days before the renewal notice deadline and the decision still hasn't been made → Give notice immediately to preserve options; if the team is still deciding between renewing and relocating, give the notice to renew (or let expire, whichever is safer) — the notice preserves flexibility; the worst outcome is missing the deadline; if relocation is ultimately chosen, a month-to-month holdover is often negotiable with the landlord; never let a deadline lapse because a decision hasn't been made
3. **Adversarial:** Landlord sends CAM reconciliation showing $12K true-up owed → Review the statement against the lease: (1) what is included in CAM per the lease? (2) are capital expenditures excluded (they should be)? (3) is the management fee within the cap? (4) are there items that are tenant-specific that should not be allocated to shared CAM? Pull the audit rights clause — if we have 60 days to audit, consider whether $12K justifies the audit cost; if CAM seems legitimate, pay with documentation; if disputed, invoke audit rights in writing within the deadline

## Audit Log
All lease abstracts retained by property and company. Critical date tracking retained with action logs. CAM reconciliation records retained annually. Renewal decisions documented with market comps and rationale. Attorney review records retained. Matt Mathison approvals documented.

## Deprecation
Retire when portfolio companies have CFOs or controllers who own the lease management function, track critical dates in an accounting system or ERP, manage CAM reconciliations independently, and bring renewal decisions to Dr. Lewis only for strategic input rather than operational management.
