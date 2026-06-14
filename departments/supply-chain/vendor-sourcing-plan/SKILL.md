---
name: vendor-sourcing-plan
description: "Build a sourcing plan to find and qualify new suppliers. Use when the user says 'find a supplier', 'source a vendor', 'vendor sourcing', 'how do we find suppliers', 'supplier search', 'find new vendors', 'sourcing plan', 'identify suppliers for', 'vendor discovery', or 'who should we buy X from'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--category <description>] [--entity <MBL|Allevio|HIVE|Column6>] [--urgency <standard|urgent>]"
---

# Vendor Sourcing Plan

Build a structured sourcing plan to identify, qualify, and select suppliers for a specific category. Reactive sourcing (Googling a vendor when something breaks) consistently produces worse outcomes than proactive sourcing — higher cost, lower quality, more supply risk. A sourcing plan defines the market, identifies candidates, sets qualification criteria, runs a competitive process, and selects the best total-value option.

## When to Use
- New product or service needed — who should we buy from?
- Current supplier failing — need alternatives fast
- Procurement strategy calls for supplier consolidation — need to find the best 1-3
- New portfolio company onboarded — need to assess and optimize their supplier base
- Critical single-source situation — need to develop a backup supplier

## Sourcing Approach by Urgency

```
Standard sourcing (4-8 weeks):
  Full competitive process: RFI → RFQ/RFP → evaluation → award
  Best for: New categories >$25K/year; strategic supplier selection
  Produces: Best long-term total value

Expedited sourcing (1-2 weeks):
  Abbreviated: Direct outreach to 3-5 known suppliers → quick quote → award
  Best for: Urgent needs; commodity categories; <$10K
  Tradeoff: Less competitive; may overpay; acceptable for commodities

Emergency sourcing (24-48 hours):
  Single-source: Find best available supplier immediately; document exception
  Best for: Production shutdown risk; patient care risk (Allevio)
  Requirement: Exception log entry; full sourcing within 30 days of emergency
```

## Output Format

```markdown
# Vendor Sourcing Plan — <Category>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Column6>
**Category:** <description of what is being sourced>
**Estimated annual spend:** $X | **Urgency:** Standard / Expedited / Emergency
**Target award date:** <date>

---

## Category Definition

**What we need:** <Precise description of goods/services>
**Volume:** <Quantity, frequency, delivery locations>
**Quality requirements:** <Specifications, certifications, compliance requirements>
**Compliance requirements:** <HIPAA BAA / OSHA / FDA / etc.>
**Current state:** <Who supplies this today; why we're re-sourcing>

---

## Market Analysis

**Market type:** Commodity (many suppliers, standard product) / Specialty (few suppliers, differentiated) / Custom (made-to-order)

**Known suppliers:**
| Supplier | HQ | Est. revenue | Market position | Initial assessment |
|---------|-----|------------|----------------|-----------------|
| [Supplier A] | [Location] | $X | Market leader | High — include |
| [Supplier B] | [Location] | $X | Regional | Medium — include |
| [Supplier C] | [Location] | $X | Niche specialist | Include for specialty |
| [Supplier D] | [Location] | $X | Startup | Low — watch; too risky |

**Market concentration risk:** High (top 3 suppliers = 85% of market) / Low (fragmented)
**Supply risk factors:** <Geographic concentration, raw material constraints, regulatory>

---

## Qualification Criteria (RFI / Screening)

Minimum qualifications (must-have — eliminates non-qualifying suppliers):
- [ ] Compliance: <HIPAA BAA available / FDA registered / OSHA certified / SOC 2>
- [ ] Financial: Minimum $X annual revenue (stability threshold)
- [ ] References: Min. 3 customers of similar size and use case
- [ ] Insurance: Minimum $X general liability, $X E&O
- [ ] Certifications: <Specific required certifications for this category>

Preferred qualifications (scored):
- Industry certifications (ISO 9001, etc.)
- Experience with PE/healthcare/oil & gas (relevant to MBL context)
- Strong financial health (D&B or equivalent assessment)
- Diversity certification (MBE, WBE, SDVOB — for diversity goals)

---

## Sourcing Process

| Phase | Activities | Timeline | Output |
|-------|----------|---------|--------|
| RFI (Request for Information) | Send to 8-10 suppliers; collect qualification data | Week 1-2 | Short-list of 4-6 qualified suppliers |
| RFQ/RFP | Send detailed requirements; collect pricing + technical proposals | Week 2-4 | Scored proposals |
| Evaluation | Score against criteria; check references; site visit if warranted | Week 4-6 | Top 2-3 ranked suppliers |
| Negotiation | Negotiate with top 1-2; finalize commercial terms | Week 6-7 | Draft contract |
| Award | HITL: Dr. Lewis + Matt Mathison final approval | Week 7-8 | Contract signed; PO issued |

---

## Supplier Short-list (after RFI)

| Supplier | Compliance | Financial | References | Capacity | Score | Proceed? |
|---------|-----------|---------|-----------|---------|-------|---------|
| [Supplier A] | ✅ | ✅ | 3 strong | Sufficient | 88/100 | ✅ Yes |
| [Supplier B] | ✅ | ⚠️ Small | 2 marginal | Limited | 72/100 | ⚠️ Conditional |
| [Supplier C] | ❌ No BAA | — | — | — | Disqualified | ❌ No |

---

## Evaluation Scorecard (RFQ/RFP)

| Criterion | Weight | Supplier A | Supplier B | Notes |
|----------|--------|-----------|-----------|-------|
| Pricing (TCO 3-year) | 35% | 4 | 3 | A = 12% lower TCO |
| Technical capability | 25% | 5 | 4 | A = stronger solution |
| References | 20% | 5 | 3 | A: 3 excellent refs; B: 1 weak |
| Compliance | 10% | 5 | 5 | Both compliant |
| Financial stability | 10% | 4 | 3 | A = larger, more stable |
| **TOTAL** | **100%** | **4.55** | **3.55** | |

**Recommended award:** Supplier A — highest score + strongest references + lowest TCO

---

## Negotiation Targets

| Commercial term | Current ask | Target | Walk-away |
|----------------|------------|--------|----------|
| Unit price | $X | $X -12% | $X -8% (BATNA = Supplier B) |
| Payment terms | Net 30 | Net 45 | Net 30 |
| Contract term | 1 year | 2 years | 1 year + option |
| Price escalation | CPI | Capped at 3% | CPI |
| Volume discount | None | 8% at $X volume | 5% |
```

## Output Contract
- Compliance qualification always first — a supplier who can't meet HIPAA BAA or OSHA requirements is disqualified regardless of price
- TCO always used for pricing evaluation — lowest unit price is rarely lowest total cost when implementation, training, and switching costs are included
- Minimum 3 qualified alternatives always sought — single-source sourcing is a risk, not a strategy
- Negotiation targets always pre-defined — negotiating without pre-defined targets and a BATNA leads to suboptimal outcomes
- HITL required: Dr. Lewis manages sourcing process; Matt Mathison approves award for >$25K/year contracts; contract signing by authorized signatory; HIPAA BAA: confirmed before award for clinical vendors

## System Dependencies
- **Reads from:** Procurement strategy, category requirements, vendor market data
- **Writes to:** Sourcing plan (SharePoint/Operations/Procurement); supplier registry; RFI/RFQ documents
- **HITL Required:** Dr. Lewis leads process; Matt Mathison approves award (>$25K threshold); contracts signed by authorized signatory; HIPAA BAA confirmed before award

## Test Cases
1. **Golden path:** Source a new EHR system for Allevio → Category: clinical EHR; compliance: HIPAA BAA required; RFI: 8 vendors contacted; short-list: 3 pass qualification (AdvancedMD, athenahealth, Kareo); RFQ: proposals received; evaluation: AdvancedMD scores 82/100 (existing relationship + strong HIPAA controls); athenahealth scores 78/100; negotiation: 10% discount secured; Matt Mathison + Allevio CEO approve; BAA executed; award
2. **Edge case:** Emergency field equipment failure at HIVE — need a supplier in 24 hours → emergency single-source sourcing; document exception in procurement log; select best available supplier; complete full sourcing within 30 days; evaluate whether to replace emergency supplier or formalize as preferred supplier
3. **Adversarial:** A supplier offers a great price but won't sign a BAA (required for Allevio) → this is a disqualifying non-compliance issue, not a negotiation point; a HIPAA BAA is non-negotiable for any supplier handling PHI; move to the next qualified supplier; if no qualified supplier signs BAAs, redesign the engagement so PHI is never shared with the supplier

## Audit Log
Sourcing plan retained. RFI/RFQ responses retained. Supplier evaluations retained. Award decision documented with rationale. Supplier reference check notes retained.

## Deprecation
Retire when MBL has a procurement platform (SAP Ariba, Coupa, or equivalent) that automates the RFI/RFQ/evaluation workflow with supplier portal access.
