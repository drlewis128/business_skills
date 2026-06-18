---
name: legal-vendor-contract-manager
description: "Manage vendor agreements and vendor relationships for MBL portfolio companies. Use when the user says 'vendor contract', 'vendor agreement', 'vendor management', 'vendor review', 'service provider', 'supplier contract', 'third-party contract', 'vendor terms', 'vendor renewal', 'vendor performance', 'vendor risk', 'approve a vendor', 'vendor onboarding', 'vendor spend', 'vendor selection', 'sole source vendor', 'critical vendor', 'vendor termination', 'vendor compliance', or 'vendor due diligence'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--vendor <name>] [--action <onboard|review|renew|terminate|assess>] [--category <tech|services|supplies|professional>]"
---

# Vendor Contract Manager

Manage vendor contracts and vendor relationships for MBL portfolio companies — from initial vendor selection and contract negotiation through ongoing performance management and renewal or termination decisions. Vendors are an underappreciated source of operational risk: a sole-source vendor who raises prices, performs poorly, or goes bankrupt can disrupt operations; an auto-renewing vendor contract that no one reviewed can commit the company to unfavorable terms for another year. Dr. Lewis manages the vendor contract lifecycle to eliminate these risks.

## When to Use
- A new vendor is being engaged (vendor onboarding and contract review)
- A vendor contract is up for renewal (renew, renegotiate, or terminate?)
- A vendor is underperforming (performance management and cure process)
- Conducting an annual vendor audit (which vendors does the company use? what does it pay?)
- An M&A transaction requires a vendor consent analysis (change-of-control provisions)

## Vendor Contract Management Framework

```
VENDOR ONBOARDING CHECKLIST:
  Before engaging any new vendor:
  □ Business need: What problem does this vendor solve? Is there an alternative?
  □ Competitive check: Did we get quotes from at least 2 vendors? (for contracts >$10K)
  □ Reference check: Did we speak with at least 1 existing customer? (for contracts >$25K)
  □ Financial viability: Is this vendor financially stable? (risk: vendor goes bankrupt)
  □ Insurance verification: Does the vendor carry adequate GL + E&O? (certificate of insurance)
  □ Data security: Does the vendor handle company or customer data? (data processing agreement)
    HIPAA: Allevio — any vendor touching PHI needs a BAA (not just an NDA)
    CCPA: Column6 — data processing addendum for any vendor processing California personal data
  □ Contract: Is the contract reviewed before signature? (see legal-contract-reviewer)

VENDOR CLASSIFICATION — RISK TIERS:
  Tier 1 — Critical:
    Definition: Vendor failure would halt core operations within 24-48 hours
    Examples: Electronic health records system (Allevio); ad serving platform (Column6); field operations equipment (HIVE)
    Required: Backup plan or alternative vendor identified; SLA with meaningful remedies; regular performance reviews
  Tier 2 — Important:
    Definition: Vendor failure would significantly impact operations within 2-4 weeks
    Examples: CRM; accounting software; HR software; key marketing vendor
    Required: Quarterly performance tracking; renewal decision tracked in contract tracker
  Tier 3 — Standard:
    Definition: Vendor provides a commodity service; replaceable within weeks
    Examples: Office supplies; routine maintenance; non-critical software subscriptions
    Required: Contract tracked; annual renewal decision; price benchmarking

VENDOR CONTRACT REVIEW PRIORITIES:
  All vendor contracts must be reviewed before signature — use legal-contract-reviewer or legal-msa-builder
  
  CRITICAL CLAUSES TO CHECK IN VENDOR CONTRACTS:
  □ Auto-renewal: Is there an auto-renewal provision? What is the notice window to terminate?
    → Add to contract tracker with alert 90 days before notice deadline
  □ Price escalation: Can the vendor raise rates unilaterally? By how much?
    → Negotiate: Price increase requires 30-day notice; cap at 5% annually
  □ Termination for convenience: Can we terminate without cause?
    → Without this, we're locked in for the full term even if the vendor underperforms
  □ SLA and performance standards: What are the vendor's obligations?
    → If no SLA, what's the remedy if performance is poor?
  □ IP ownership: If the vendor creates anything for us, do we own it?
  □ Data security and breach notification: What are the vendor's security obligations?
  □ Change-of-control: Does the vendor's change of control affect our agreement?
    → Alternatively: Does OUR change of control require vendor consent?

VENDOR PERFORMANCE MANAGEMENT:
  For Tier 1 and Tier 2 vendors: Quarterly performance review
  For Tier 3 vendors: Annual review only
  
  Performance issues — escalation protocol:
    Step 1: Informal notice (email to the vendor relationship manager)
    Step 2: Written cure notice (formal; references the contract; sets a cure period)
    Step 3: Escalation to vendor's senior management
    Step 4: Termination for cause (if cure period expires without resolution)
    
  Document everything: All performance issues in writing; all cure notices by email or letter
  Reason: If the company terminates for cause, the vendor may dispute the termination; documentation is the defense

VENDOR TERMINATION:
  Termination for convenience: Per the contract terms (typically 30-90 days written notice)
  Termination for cause: After cure period expires without resolution
  At termination:
    □ Written termination notice delivered per contract terms
    □ Transition plan: How are the services transferred or wound down?
    □ Data return/destruction: Vendor must return or certify destruction of company data
    □ Outstanding invoices: Pay what is owed; withhold payment for uncompleted deliverables
    □ Contract tracker updated: Status changed to "Terminated [Date]"

ANNUAL VENDOR AUDIT:
  Pull the full vendor list from QuickBooks (all vendors paid in the last 12 months)
  For each vendor:
    □ Is there a current, signed contract on file?
    □ Is the contract term current (not expired)?
    □ Has the vendor been reviewed for performance in the last 12 months?
    □ Is this vendor still needed? (eliminate zombie vendors)
    □ When is the contract renewal or auto-renewal?
    □ What is the annual spend? Is it aligned with the value received?
```

## Output Format

```markdown
# Vendor Contract Summary — [Vendor Name]
**Entity:** [Portfolio Company] | **Date:** [Date] | **Tier:** [1/2/3]
**Contract value:** $[X]/[month/year] | **Term:** [Start – End date] | **Auto-renews:** [Yes/No — [Date]]

---

## Vendor Risk Assessment

| Factor | Status | Notes |
|--------|--------|-------|
| Contract on file | ✅ / ❌ | [Location in SharePoint] |
| Termination for convenience | ✅ / ❌ | [Notice period] |
| Auto-renewal date | ✅ Calendared | [Date] |
| SLA defined | ✅ / ⚠️ / ❌ | [Remedies: service credits / termination] |
| Data security | ✅ / ⚠️ | [BAA / DPA / None] |
| Insurance on file | ✅ / ❌ | [Coverage; expiration] |
| Performance status | ✅ Good / ⚠️ Issues | [Last review date] |

---

## Renewal Recommendation

**Renewal decision due:** [Date — 90 days before auto-renewal notice deadline]
**Recommended action:** RENEW / RENEGOTIATE / TERMINATE
**Rationale:** [2-sentence justification]
**Spend vs. value:** $[X]K annual | [Commentary on whether spend is justified]
```

## Output Contract
- Auto-renewal is a one-way trap — an auto-renewal provision benefits the vendor, not the company; the vendor knows the notice period; the company typically forgets it; Dr. Lewis adds every auto-renewal notice deadline to the compliance calendar on the day the contract is signed; the goal is to never pay another year of a vendor relationship because the cancellation window was missed; if a contract has a 60-day notice window for auto-renewal, the calendar alert is at 90 days (to give 30 days of buffer for the renewal decision before the deadline)
- Tier 1 vendors require a backup plan — if the ad serving platform that Column6 relies on goes down, or the EHR that Allevio uses fails, or the key equipment vendor for HIVE can't deliver, operations are impacted; for each Tier 1 vendor, Dr. Lewis maintains a brief "what do we do if this vendor fails?" document — not a full business continuity plan, but enough to know who to call and what the fallback is; this is not about distrust of the vendor — it is about acknowledging that any vendor can fail
- Document vendor performance issues contemporaneously — if a vendor is underperforming and the company eventually terminates for cause, the termination is defensible only if there is a paper trail of performance issues, written notices, and cure opportunities; verbal complaints don't create a legal record; Dr. Lewis ensures that every material vendor performance issue is documented in writing (email is sufficient) at the time it occurs; a cure notice sent the week before termination with no prior documentation looks pretextual and may not be sufficient to support a for-cause termination
- HITL required: Dr. Lewis manages; CEO approves vendor spend above the approved budget threshold; Matt Mathison approves any vendor engagement >$50K annual; Tier 1 vendor terminations require CEO approval (operational risk); HIPAA BAA required for any Allevio vendor touching PHI — this is not optional; Dr. Lewis does not execute vendor contracts on behalf of portfolio companies without CEO delegation of authority; vendor terminations for cause must include legal review by outside counsel for contracts >$25K

## System Dependencies
- **Reads from:** Vendor contracts (SharePoint/Legal/<Company>/Contracts/Vendors/); QuickBooks (vendor payment history — to identify all vendors being paid); contract tracker (renewal dates, auto-renewal notices); legal-contract-reviewer (for new contracts); legal-msa-builder (for recurring service relationships); legal-hipaa-compliance-manager (for Allevio vendors with PHI access); insurance certificates (verify vendor insurance is current); SLA performance reports
- **Writes to:** Vendor contract tracker (SharePoint/Legal/<Company>/Contracts/VendorTracker.xlsx); annual vendor audit report; performance issue documentation (email records + written cure notices); vendor termination notice; Matt Mathison vendor spend summary; compliance calendar entries (auto-renewal alerts; certificate of insurance renewal)
- **HITL Required:** Dr. Lewis manages; CEO approves all Tier 1 vendor engagements and terminations (operational impact); Matt Mathison approves vendor engagements >$50K annual; outside counsel for vendor terminations for cause >$25K (litigation risk); HIPAA BAA required for Allevio PHI vendors (non-negotiable — not a HITL decision but a mandatory compliance requirement); Dr. Lewis does not execute vendor contracts — CEO signs

## Test Cases
1. **Golden path:** Annual vendor audit for Allevio → Dr. Lewis pulls all vendors paid in the last 12 months from QuickBooks: 23 unique vendors; checks contracts: 4 have expired contracts (no current signed agreement — gap), 3 have no contract at all; auto-renewal calendar review: 2 contracts auto-renew within the next 90 days (Marshall Medical Billing — decision needed; AdvancedMD — renew); BAA check: all vendors with PHI access have current BAAs ✅; action plan: (1) Re-execute the 4 expired contracts; (2) Execute contracts for the 3 with no contract; (3) Set renewal decision meeting for Marshall Medical in 30 days; (4) AdvancedMD renewal approved; all gaps resolved within 60 days
2. **Edge case:** HIVE's critical equipment vendor starts delivering equipment with increasing lead times — what was 2 weeks is now 8 weeks → Dr. Lewis opens the performance file: Tier 1 vendor (equipment vendor failure = production delays); SLA: the contract specifies 4-week delivery; current performance is 8 weeks; SLA breach confirmed; Step 1: Email to vendor relationship manager documenting the performance issue (October 15, 2027: "Over the past 3 months, delivery lead times have increased from 2-4 weeks to 7-9 weeks. This is inconsistent with our contract SLA requirement of 4 weeks. Please advise on the cause and the resolution plan."); Step 2: Vendor responds with supply chain explanation; promises resolution in 6 weeks; Step 3: Dr. Lewis identifies alternative vendor (backup plan for Tier 1 vendor); maintains dual-source for 6 months while primary vendor resolves the issue; if not resolved, transition to alternative vendor
3. **Adversarial:** Column6 has been paying a software subscription for $2,400/month for 18 months — Dr. Lewis discovers during the vendor audit that the software hasn't been actively used for 12 months → Dr. Lewis: "Column6 has paid $28,800 to [Vendor] over the past 12 months for software that has not been used. The contract is on a monthly auto-renewal with 30-day notice. Action: (1) Terminate immediately with 30-day notice — no business justification for continuing; (2) Review what the software was originally purchased for — is there an ongoing need that is being met another way, or is this a pure zombie subscription? (3) Add a quarterly software usage audit to the compliance calendar — this should not happen again. Notice sent; subscription cancelled; $2,400/month saved." CEO informed; termination notice sent; $28,800/year in savings; quarterly software audit added to calendar

## Audit Log
All vendor contracts retained by vendor and date. Annual vendor audit reports retained. Performance issue documentation retained by vendor (including cure notices and responses). Termination notices retained. Vendor spend tracking retained (QuickBooks + vendor tracker). HIPAA BAA records for Allevio vendors retained (6 years per HIPAA). Data security certifications and certificates of insurance retained by renewal year. Matt Mathison vendor spend summaries retained.

## Deprecation
Retire when each portfolio company has an operations manager who manages vendor relationships — with Dr. Lewis reviewing Tier 1 vendor contracts and Matt Mathison approving vendor engagements >$50K.
