---
name: fin-transfer-pricing
description: "Manage MBL Partners inter-entity transfer pricing, management fees, and overhead allocation. Use when the user says 'transfer pricing', 'management fee', 'management fees', 'overhead allocation', 'shared services', 'MBL management fee', 'fee from MBL', 'entity fee', 'intercompany', 'intercompany transaction', 'intercompany fee', 'intercompany billing', 'intercompany eliminations', 'allocate overhead', 'allocate cost', 'corporate overhead', 'GP fee', 'general partner fee', 'holdco fee', 'holding company fee', 'portfolio company fee', 'related party transaction', 'arm length', 'arm-length pricing', 'market rate fee', 'fee justification', 'fee documentation', 'MBL charge', 'charge to entity', 'charge out', 'cost allocation', 'support services fee', 'AI strategy fee', or 'portfolio services fee'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|all>] [--period <monthly|quarterly|annual>] [--action <review|set|document|report|reconcile>] [--focus <management-fee|shared-services|allocation-methodology>]"
---

# Fin Transfer Pricing

Manage MBL Partners inter-entity transfer pricing, management fees, and overhead allocation — ensuring that all charges from MBL to portfolio entities are documented, justified at arm's-length rates, properly eliminated in consolidated financial statements, and defensible to LPs, auditors, and tax authorities. Transfer pricing is both a financial control and a compliance requirement: management fees that aren't documented at arm's-length rates create tax risk; fees that aren't properly eliminated in consolidation overstate MBL's portfolio-level revenue; and fees that aren't disclosed to LPs can create investor relations problems.

## When to Use
- Quarterly: management fee billing to portfolio entities
- Annual: management fee rate review and arm's-length documentation
- A new service category needs to be priced and billed
- Auditors are reviewing related party transactions
- LPs ask about management fee structure

## Transfer Pricing Framework

```
MBL MANAGEMENT FEE STRUCTURE:

  PURPOSE:
    MBL charges management fees to portfolio entities for the value of services provided:
    - Strategic oversight (Matt Mathison)
    - AI strategy and systems (Dr. Lewis)
    - Finance and accounting oversight (Dr. Lewis)
    - Legal coordination (Dr. Lewis)
    - Operational support and governance
    
  FEE STRUCTURE (per entity):
    Base management fee: [% of revenue] or [$X/month] per entity — per fund agreements
    AI strategy and systems fee: $[X]/month (Dr. Lewis AI work allocated to entities)
    Shared services fee: $[X]/month (finance, legal, HR, IT shared services)
    
  BILLING CYCLE: Monthly (billed on the 1st; net 30 within MBL entity)
  
  ARM'S-LENGTH TEST:
    MBL management fees must be justifiable at arm's-length market rates
    Benchmark: comparable independent consultants or service providers
    Documentation required: time/effort logs; comparable market rates; value delivered
    Annual rate review: compare MBL fees to market; adjust if materially out of range

MANAGEMENT FEE DOCUMENTATION REQUIREMENTS:

  For each fee charged:
    □ Service description: what specific services are being provided?
    □ Quantification: hours, deliverables, or metric-based value
    □ Market rate benchmark: what would this cost from an independent provider?
    □ Signed agreement: the fee is specified in the management services agreement (MSA)
    □ Board approval: entity board (or Dr. Lewis as board representative) has approved the fee
    □ LP disclosure: management fee structure disclosed in the LPA (limited partnership agreement)
    
  Annual documentation update:
    Time log review: does the actual time/effort match the fee charged?
    Market rate update: have market rates for comparable services changed?
    Value attestation: what specific value was delivered to the entity this year?

INTERCOMPANY ELIMINATION (for fin-entity-consolidation):

  When consolidating portfolio entities with MBL:
    MBL's management fee revenue = portfolio entity's management fee expense
    These must be eliminated: they net to $0 at the consolidated level
    
  Elimination entries:
    Debit: MBL Management Fee Revenue (eliminate)
    Credit: Entity Management Fee Expense (eliminate)
    
  The elimination ensures the consolidated financial statements show:
    Only external revenue (from agencies, employers, operators — not intercompany fees)
    Only external expenses (not fees paid to MBL that are MBL's own revenue)
    
TAX TREATMENT:

  Federal income tax:
    Management fees paid by portfolio entities: deductible operating expense for the entity
    Management fees received by MBL: ordinary income
    Timing: must match (expense in one period = revenue in same period)
    
  Transfer pricing documentation:
    IRS requires arm's-length pricing for related party transactions
    Documentation standard: comparable uncontrolled price method (CUP)
    Risk: if fees are deemed not arm's-length, IRS can reallocate income/deductions
    
  State tax:
    Arizona (MBL HQ): applicable apportionment rules apply to MBL's income
    Entity states: Allevio (TX/AZ); HIVE (UT); Column6 (DE/NYC/AZ)
    Multi-state income allocation must reflect actual services rendered in each state

REPORTING TO LPs AND MATT:

  LP quarterly report: management fee structure disclosed (total fees charged to portfolio)
  Matt Mathison: annual management fee review (rate; justification; LP reactions)
  Auditors: related party transaction schedule with full documentation package
  
  Related party disclosure (financial statements):
    Note: "MBL charged management fees of $[X] to portfolio entities during [year].
    Fees are calculated per management services agreements at rates benchmarked to market.
    All intercompany transactions are eliminated in consolidation."
```

## Output Format

```markdown
# Transfer Pricing / Management Fee Report — [Quarter/Year]
**Prepared by:** Dr. Lewis | **For:** Auditors / LP disclosure / Matt Mathison

---

## Management Fee Summary

| Entity | Fee type | Monthly fee | Q[N] total | YTD total | Agreement basis |
|--------|---------|------------|-----------|----------|----------------|
| Allevio | Base management fee | $[X] | $[X] | $[X] | [MSA date] |
| Allevio | AI strategy fee | $[X] | $[X] | $[X] | [MSA date] |
| HIVE Partners | Base management fee | $[X] | $[X] | $[X] | [MSA date] |
| HIVE Partners | Finance oversight fee | $[X] | $[X] | $[X] | [MSA date] |
| Column6 | Base management fee | $[X] | $[X] | $[X] | [MSA date] |
| **Total** | | | **$[X]** | **$[X]** | |

---

## Arm's-Length Benchmark (Annual)

| Service | MBL rate | Market rate | In range? | Documentation |
|---------|---------|------------|---------|--------------|
| Strategic oversight | $[X]/mo | $[X]/mo comparable | ✅ Yes | Time log + CUP analysis |
| AI strategy | $[X]/mo | $[X]/mo comparable | ✅ Yes | Deliverable log |
| Finance oversight | $[X]/mo | $[X]/mo comparable | ✅ Yes | Service log |

---

## Intercompany Eliminations (for Consolidation)

| | MBL revenue | Entity expense | Elimination | Net |
|-|------------|--------------|------------|-----|
| Management fees | $[X] | $[X] | ($[X]) | $0 |
```

## Output Contract
- Documentation is the protection — MBL's management fees are legitimate services delivered by legitimate people at market-justifiable rates; the protection against LP or IRS challenge is complete documentation of what was delivered, for whom, at what rate, benchmarked to what comparable; Dr. Lewis maintains this documentation rigorously; a management fee that exists in an agreement but has no service delivery log is an IRS audit risk and an LP credibility risk; the documentation must be maintained concurrent with the services, not reconstructed after the fact
- Arm's-length rates are updated annually — the market for strategic consulting, AI strategy, and finance oversight services changes; a rate that was arm's-length in 2024 may be above or below market in 2026; Dr. Lewis performs an annual market rate benchmark comparing MBL's fees to independent consultant rates for comparable services; if MBL's rates are materially above market (>25% premium), the rates are adjusted or the excess is reclassified; Matt Mathison reviews the annual benchmark before LP disclosure
- Eliminations are mechanical and mandatory — every dollar of management fee revenue on MBL's books has a matching dollar of management fee expense on a portfolio entity's books; at the consolidated level, these eliminate each other; a failure to properly eliminate intercompany fees overstates portfolio revenue and understates expenses; this is an audit finding waiting to happen; Dr. Lewis confirms eliminations are complete every time a consolidated financial statement is prepared
- HITL required: management fee rates and structure are approved by Matt Mathison (as GP of the fund); any rate change requires Matt approval before implementation; new fee categories require both Matt approval and LP notification per the LPA; annual arm's-length benchmark reviewed by Matt; LP quarterly reports include management fee disclosure reviewed and approved by Matt; auditors receive the full related party transaction documentation package; any LP questions about management fees are routed to Matt Mathison

## System Dependencies
- **Reads from:** Management Services Agreements (MSA) for each entity (SharePoint — legal documents); service delivery logs (time logs; deliverable records — SharePoint); market rate benchmarks (annual survey or comparable provider research); LP agreements (LPA — fee structure disclosure terms)
- **Writes to:** QuickBooks MBL (management fee revenue); QuickBooks by entity (management fee expense); intercompany elimination workpapers (SharePoint → Finance → Consolidation → Eliminations → [YYYY]); LP quarterly reports (management fee disclosure section); audit schedules (related party transaction schedule); fin-entity-consolidation (elimination inputs)
- **HITL Required:** Rate changes require Matt Mathison approval; new fee categories require Matt + LP notification; annual benchmark reviewed by Matt; all LP-facing management fee disclosure approved by Matt; audit-related documentation coordinated with external auditors through Dr. Lewis

## Test Cases
1. **Golden path:** Q2 management fee billing; Allevio: base $8,500 + AI strategy $4,200 = $12,700/month = $38,100 Q2; HIVE: base $5,500 + finance $3,000 = $8,500/month = $25,500 Q2; Column6: base $7,000 + AI + finance $5,500 = $12,500/month = $37,500 Q2; total Q2 management fees from MBL: $101,100. All fees billed on April 1, May 1, June 1 (monthly); all paid within 30 days by each entity. Intercompany elimination: $101,100 eliminated in the consolidated financial statements. Annual benchmark update: AI strategy rate at $4,200/month vs. market (independent AI strategy consultants at $5,000-$8,000/month range) — within market range.
2. **Edge case:** LP asks in the quarterly report: "What services does MBL provide that justify the management fee?" → Dr. Lewis prepares the response for Matt Mathison's review: "MBL's management fee covers: (1) strategic oversight by Matt Mathison (quarterly board reviews, major capital decisions, deal evaluation for each entity); (2) AI strategy and systems architecture by Dr. Lewis (building and maintaining the AI and data infrastructure that reduces OpEx and creates competitive advantages); (3) finance and accounting oversight by Dr. Lewis (monthly close, audit preparation, LP reporting, financial controls); (4) legal coordination (contract review, regulatory monitoring, compliance oversight). The combined value of these services — benchmarked to independent consultants — ranges from $18K-$25K/month per entity. MBL's fees are below the benchmark, reflecting MBL's shared-services efficiency advantage." Matt reviews and approves before sending.
3. **Adversarial:** During the annual audit, the auditor questions whether a specific new AI systems implementation fee ($45K charged to Allevio as a one-time fee) is arm's-length → Dr. Lewis: "I anticipated this question. Here's the documentation: (1) the fee is for a specific project deliverable — the Allevio patient engagement AI workflow (60 hours at $750/hour, consistent with senior AI consultant market rates confirmed by [benchmark source]); (2) deliverable log showing the work performed; (3) signed project addendum to the MSA executed before the project started; (4) comparable market rates from [3 independent providers] at $650-$900/hour for comparable work. The fee is documented, pre-approved, deliverable-based, and within market range. I'll provide the full documentation package."

## Audit Log
All management fee invoices and payment records retained. Service delivery logs retained (concurrent documentation — not reconstructed). Annual arm's-length benchmark records retained. Management Services Agreements retained permanently. LP disclosure records retained. Audit-related documentation retained 7 years post-audit.

## Deprecation
Retire when MBL has a dedicated General Counsel or fund administrator who manages the transfer pricing and related party transaction documentation — with Dr. Lewis providing the financial controls oversight and Matt Mathison retaining approval authority over all management fee rates and LP disclosures.
