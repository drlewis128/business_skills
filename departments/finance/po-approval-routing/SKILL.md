---
name: po-approval-routing
description: "Route purchase orders through the correct approval chain based on amount and category. Use when the user says 'PO approval', 'purchase order routing', 'who needs to approve this PO', 'approval authority', 'purchase approval workflow', 'spending authority', or 'get PO approved'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<po-details> [--amount <X>] [--category <category>] [--entity <name>]"
---

# PO Approval Routing

Determine the correct approval chain for a purchase order based on dollar amount, spend category, and entity. Enforces spending authority policies and prevents unauthorized commitments.

## When to Use
- Before issuing any purchase order or committing to a vendor
- When reviewing an invoice with no associated PO (retroactive approval)
- During budget planning (define approval matrix for new year)
- Onboarding new managers (show their approval authority)
- When a department head tries to approve above their authority level

## MBL Spending Authority Matrix

| Amount | Category | Approver(s) Required |
|--------|----------|---------------------|
| < $500 | Any operational | Department manager |
| $500–$5,000 | Non-capital | Department manager + Controller/Finance |
| $5,000–$25,000 | Non-capital | VP/Director level + CFO/Finance lead |
| $25,000–$100,000 | Any | CFO or equivalent + CEO/MD sign-off |
| > $100,000 | Any | CEO/MD + Matt Mathison (MBL) |
| Any amount | CapEx | CapEx approval process (separate — see `capex-tracking`) |
| Any amount | New vendor (first-time) | Finance review + standard approvals above |
| Any amount | Related party transaction | Tier 1 only (Dr. Lewis + Matt Mathison) |

### Category Overrides (higher scrutiny regardless of amount)
- IT infrastructure / SaaS contracts > 12 months: requires IT review
- Marketing spend: requires Marketing lead approval
- Legal / Professional services: requires review of engagement scope
- HR / Staffing: requires HR lead approval + Finance

## Retroactive PO (Invoice First, PO After)
Retroactive POs are a control violation. Policy:
- First offense: escalate to department manager, document
- Second offense (same manager): escalate to CFO
- Pattern of retroactive POs: flag for internal controls review

## Output Format

```markdown
# PO Approval Routing — <description>
**Entity:** <entity> | **Amount:** $X | **Category:** <category>
**Vendor:** <name> | **New vendor?** Yes/No

## Required Approvals

| Step | Approver | Authority Basis | Status |
|------|----------|----------------|--------|
| 1 | <Dept Manager name> | Dept authority up to $5K | ⏳ Pending |
| 2 | <CFO/Finance Lead> | $5K–$25K policy | ⏳ Pending |

## Routing Instructions
Send PO to approvers in the order listed above. Do not proceed to step N+1 until step N is signed.

## Flags
- New vendor: Yes — Finance must complete vendor onboarding (W-9, bank details) before PO can be issued
- First-time spend category for this entity: confirm budget availability before routing

## Budget Check
Requested amount: $X
Budget available in category: $X (per last budget review)
Headroom: $X ✅ / ⚠️ Over budget — requires budget amendment before approval

## Retroactive PO Notice (if applicable)
⚠️ This is a retroactive PO — invoice already received. Document reason and escalate per policy.
```

## Output Contract
- All related-party transactions always route to Tier 1 regardless of amount
- CapEx always redirected to capex-tracking workflow
- Retroactive POs always flagged as control violations — never silently approved
- HITL required: no PO is committed without the required human approval chain

## System Dependencies
- **Reads from:** Spending authority policy (this skill), budget balances (if available), vendor master (new vendor flag)
- **Writes to:** Nothing (outputs routing instructions and approval chain)
- **HITL Required:** All POs require human approval per the matrix above — this skill routes, humans approve

## Test Cases
1. **Golden path:** $3,000 office supplies PO from known vendor → routes to dept manager only, single step
2. **Edge case:** $4,999 PO (just under $5K threshold) → routes to dept manager only, flags as near-threshold for awareness
3. **Adversarial:** Related-party transaction submitted as "vendor services" at $800 → overrides standard amount-based routing, escalates to Tier 1

## Audit Log
All PO routing decisions logged with amount, category, approver chain, and final approval status. Retroactive POs logged separately for control monitoring.

## Deprecation
Retire when AP automation platform (Bill.com, Coupa) enforces approval workflows natively with system-level controls.
