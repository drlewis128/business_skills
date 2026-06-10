---
name: vendor-onboarding-workflow
description: "Run the vendor onboarding checklist for a new supplier or service provider. Use when the user says 'onboard a vendor', 'new vendor setup', 'vendor onboarding', 'add a vendor', 'vendor setup checklist', 'new supplier', or 'how do we add this vendor'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<vendor-name> [--type <vendor|contractor|subcontractor>] [--entity <mbl|allevio|hive|column6>]"
---

# Vendor Onboarding Workflow

Run the complete vendor onboarding checklist — from initial request through system setup and first payment authorization.

## When to Use
- Any time a new vendor, contractor, or service provider is added to the AP system
- Before issuing a PO or signing a contract with a new supplier
- When a vendor is re-onboarded after a gap in usage
- Post-acquisition (onboard the acquired entity's critical vendors)

## Onboarding Steps

### Phase 1 — Pre-Approval
- [ ] Business need documented (why are we engaging this vendor?)
- [ ] Approval obtained per PO approval policy (`po-approval-routing`)
- [ ] Existing vendor checked first — does a current vendor already do this? (`vendor-master-dedup`)
- [ ] THRIVE alignment check — do we want to do business with this vendor? (`thrive-values-alignment-checker`)

### Phase 2 — Documentation Collection
- [ ] W-9 (for US vendors) or W-8BEN (for international vendors)
- [ ] Business license or certificate of incorporation (for significant vendors)
- [ ] Certificate of Insurance (COI) — if required by contract
  - General Liability: verify limits match our requirements
  - Workers' Comp: if they have employees performing work on-site
- [ ] Signed vendor agreement or MSA (for ongoing relationships)
- [ ] SOW or statement of work (for project-based engagements)

### Phase 3 — Due Diligence
- [ ] OFAC check (required for international vendors or new domestic vendors > $10K)
- [ ] Verify vendor is not on the SAM.gov exclusions list (if any government contracting)
- [ ] Background check (for vendors with system access or handling sensitive data)
- [ ] Data processing agreement (DPA) if vendor handles personal data (HIPAA, CCPA)
- [ ] Cybersecurity questionnaire (if vendor gets system access or handles confidential data)

### Phase 4 — System Setup
- [ ] Vendor record created in QuickBooks (name, address, TIN, payment terms)
- [ ] Bank details entered in Bill.com (ACH routing, account number — verified via voided check or bank letter)
- [ ] Payment terms confirmed (Net 30 by default unless negotiated)
- [ ] 1099 flag set if vendor is a qualifying sole prop / non-corp (see `1099-nec-preparation`)
- [ ] Vendor category tagged for spend analytics

### Phase 5 — First Payment Authorization
- [ ] First invoice reviewed against contract terms
- [ ] Approved by appropriate level per spending authority (`po-approval-routing`)
- [ ] Bank details verified (call the vendor to confirm if any doubt — fraud risk)

## Output Format

```markdown
# Vendor Onboarding — <Vendor Name>
**Entity:** <entity> | **Type:** Vendor / Contractor | **Date:** <date>
**Requested by:** <name> | **Approved by:** <name>

## Checklist Status

### Phase 1 — Pre-Approval
- [x] Business need documented
- [x] Approval obtained
- [ ] Dedup check — pending

### Phase 2 — Documentation
- [x] W-9 received
- [ ] COI — not yet received (request sent <date>)
- [x] MSA signed

### Phase 3 — Due Diligence
- [x] OFAC check — CLEAR
- [ ] Data processing agreement — REQUIRED (vendor has system access)

### Phase 4 — System Setup
- [x] QuickBooks record created (ID: <N>)
- [x] Bill.com bank details entered
- [ ] 1099 flag — PENDING (confirm entity type)

### Phase 5 — First Payment
- [ ] NOT CLEARED — Phase 3 DPA required first

## Blockers
1. Data processing agreement outstanding — vendor with system access cannot be cleared for payment until DPA signed.

## Onboarding Status: ⚠️ In Progress — 2 blockers
```

## Output Contract
- Phase 5 (first payment authorization) never cleared until Phases 1-4 are complete
- Bank details verification explicitly included — fraud risk on first payment setup
- OFAC and SAM checks documented with result and date
- HITL required before any new vendor is added to Bill.com or first payment is processed

## System Dependencies
- **Reads from:** Vendor information (provided), spending authority policy
- **Writes to:** QuickBooks vendor record, Bill.com payment setup (with HITL)
- **HITL Required:** Finance Tier 2+ approves all new vendor records before payment authorization

## Test Cases
1. **Golden path:** Standard domestic vendor, clean OFAC, W-9 on file → onboarding completes, cleared for first payment
2. **Edge case:** Vendor with system access to financial data → flags DPA requirement, blocks payment clearance until DPA signed
3. **Adversarial:** Attempt to skip OFAC check for "obvious" domestic vendor → always runs OFAC check regardless — not optional

## Audit Log
All vendor onboarding events logged with dates and approver names. Bank detail changes tracked separately.

## Deprecation
Retire when AP automation platform (Tipalti, Bill.com Vendor Management) handles onboarding with built-in compliance checks.
