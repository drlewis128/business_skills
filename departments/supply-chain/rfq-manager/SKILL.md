---
name: rfq-manager
description: "Create and manage Requests for Quotation (RFQs) and RFPs. Use when the user says 'RFQ', 'request for quote', 'request for proposal', 'RFP', 'solicit bids', 'competitive bidding', 'get quotes', 'bid process', 'formal procurement process', 'send an RFQ', or 'competitive sourcing process'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--type <rfq|rfp|rfi>] [--category <description>] [--entity <MBL|Allevio|HIVE|Column6>]"
---

# RFQ Manager

Create and manage Requests for Quotation (RFQ) and Requests for Proposal (RFP) — the formal documents that solicit competitive bids from multiple suppliers. RFQs/RFPs are the structured way to run a competitive sourcing event that produces comparable, scoreable responses. Without them, you're collecting informal quotes that can't be compared apples-to-apples. For MBL, formal RFQ/RFP processes are required for purchases >$10K (new categories) and for all Tier A strategic supplier selections.

## When to Use
- New category purchase >$10K — formal competitive process required
- Tier A supplier selection — strategic enough to warrant a full RFP
- Contract renewal with multiple suppliers being evaluated
- Major capital purchase at HIVE (drilling equipment, infrastructure)
- Portfolio company acquisition — sourcing a significant capability for the first time

## Document Type Selection

```
RFI (Request for Information):
  Use when: Market research; assessing supplier capability before formal bid
  Output: Supplier capability data; market landscape; short-list for RFQ/RFP
  Timeline: 1-2 weeks

RFQ (Request for Quotation):
  Use when: Specifications fully defined; price is primary decision factor; commodity
  Output: Comparable price quotes; ready for award decision
  Timeline: 2-4 weeks

RFP (Request for Proposal):
  Use when: Specifications partially defined; seeking supplier solutions; value beyond price
  Output: Full proposals (technical + commercial); scored via vendor-evaluation-scorecard
  Timeline: 4-8 weeks
```

## Output Format

```markdown
# RFQ/RFP — <Category / Title>
**Date issued:** <date> | **Issuer:** Dr. John Lewis
**Entity:** <MBL / Allevio / HIVE / Column6>
**Document type:** RFI / RFQ / RFP
**Response due:** <date by 5:00 PM local>
**Award decision:** <target date>
**Estimated annual value:** $X

---

## Executive Summary (for supplier)

MBL Partners / [Entity] is soliciting [quotes / proposals] for [description of goods/services]. We are seeking [N] qualified suppliers to [scope in 2 sentences]. Responses are due by [date]. Questions must be submitted by [date -7 days]; responses will be provided to all participating suppliers.

---

## Section 1: Background

**About [Entity]:** [2-sentence description — who we are, what we do, why we're sourcing this]
**Current state:** [Brief description of current situation — what we have today, why we're changing]
**Procurement scope:** [Precise description of what is being sourced]

---

## Section 2: Scope of Work / Specifications

### 2.1 Requirements (Mandatory — must be met to qualify)

| Requirement | Specification | Compliance (supplier fills) |
|------------|-------------|--------------------------|
| Quantity | [X units/year or continuous service] | |
| Delivery location | [Address / site list] | |
| Lead time | Standard: [N] days; Expedited: [N] days | |
| Certification | [FDA / ISO 9001 / HIPAA-eligible / OSHA] | |
| Insurance | $2M GL + $1M E&O minimum | |
| HIPAA BAA | Required for clinical data (Allevio) | |

### 2.2 Technical Specifications

[Detailed specifications for goods:]
- [Specification 1: material, grade, dimensions, weight, etc.]
- [Specification 2]
- [Specification N]

[Or for services:]
- [Service deliverable 1: description, frequency, acceptance criteria]
- [Service deliverable 2]

### 2.3 Preferred (scored, not mandatory)

- [Preference 1: e.g., "Experience with healthcare organizations"]
- [Preference 2: e.g., "EDI or API-based ordering available"]

---

## Section 3: Pricing Format

Suppliers must submit pricing in the following format. Failure to provide pricing in this format will result in disqualification.

| Item | Unit of measure | Unit price | Volume: 1,000 units | Volume: 2,000 units | Annual contract: [X] units |
|------|---------------|-----------|-------------------|-------------------|--------------------------|
| [Item 1] | Each / Hour / Month | $ | $ | $ | $ |
| [Item 2] | | $ | $ | $ | $ |

**Additional pricing requirements:**
- Freight / shipping cost: Included / Listed separately
- Payment terms offered: Net [30 / 45 / 60]
- Price validity: Quote valid for [90] days
- Annual escalation: State your standard escalation mechanism

---

## Section 4: Company Qualifications

Suppliers must provide:
- [ ] Company overview (1 page max): legal name, founding year, revenue, headcount
- [ ] 3 references from clients of similar size and use case (include contact information)
- [ ] Certificate of Insurance (COI): $2M GL, $1M E&O
- [ ] W-9 (US suppliers)
- [ ] Most recent financial statements (Tier A evaluations only)
- [ ] HIPAA Business Associate Agreement (if applicable — Allevio)

---

## Section 5: Evaluation Criteria

Responses will be evaluated on the following criteria. Suppliers are encouraged to organize their response to address each criterion directly.

| Criterion | Weight | Notes |
|----------|--------|-------|
| Pricing (TCO 3-year) | 35% | Lower cost scores higher |
| Technical capability | 25% | Coverage of specifications; quality |
| References | 20% | Quality of references; similar clients |
| Compliance | 10% | All mandatory requirements met; certifications |
| Relationship fit | 10% | Responsiveness; strategic alignment |

---

## Section 6: Process and Timeline

| Milestone | Date |
|----------|------|
| RFQ/RFP issued | <date> |
| Questions submitted by suppliers | <date -7 days from due date> |
| Questions answered (to all suppliers) | <date -5 days> |
| Responses due | <date> by 5:00 PM [timezone] |
| Evaluation completed | <date + 5 business days> |
| Finalists notified | <date + 7 business days> |
| Award decision | <date + 10 business days> |
| Contract execution target | <date + 20 business days> |

**Submission instructions:**
- Submit responses via email to: jlewis@mblpartners.com
- Subject line: "[Entity] RFQ Response — [Category] — [Supplier Name]"
- Format: PDF preferred; Excel for pricing tables
- Late submissions will not be accepted

---

## RFQ/RFP Management Tracker

| Supplier | Sent | Acknowledged | Questions submitted | Response received | Score | Status |
|---------|------|------------|-------------------|-----------------|-------|--------|
| [Supplier A] | <date> | ✅ | Yes — 3 questions | ✅ | 4.2/5 | Finalist |
| [Supplier B] | <date> | ✅ | No | ✅ | 3.7/5 | Finalist |
| [Supplier C] | <date> | ✅ | No | ❌ No response | — | Disqualified |
| [Supplier D] | <date> | ❌ | — | — | — | Non-responsive |
```

## Output Contract
- Mandatory vs. preferred requirements always separated — a supplier that doesn't meet mandatory requirements is disqualified; preferred items are scored
- Pricing always in a standard format — responses that don't follow the pricing format can't be compared; disqualify if non-compliant
- HIPAA BAA always listed as mandatory for Allevio — it's a legal requirement, not a preference
- Timeline always published and enforced — late submissions not accepted; consistent enforcement signals procurement seriousness
- HITL required: Dr. Lewis issues RFQ/RFP; questions and responses shared to all participating suppliers equally (no favoritism); award recommendation by Dr. Lewis; Matt Mathison approves award >$25K; contract signing by authorized signatory

## System Dependencies
- **Reads from:** Category requirements, specifications, preferred supplier list
- **Writes to:** RFQ/RFP documents (SharePoint/Operations/Procurement/RFQs); supplier response tracker; evaluation scorecard (links to vendor-evaluation-scorecard)
- **HITL Required:** Dr. Lewis manages process; Matt Mathison approves award >$25K; authorized signatory for contracts; questions answered equally to all suppliers

## Test Cases
1. **Golden path:** RFQ for Allevio clinical consumables ($180K/year) → RFQ issued to 5 suppliers; mandatory: HIPAA BAA, COI, 3 references; pricing format: unit price + volume tiers + freight; due date: 2 weeks; 4 of 5 suppliers respond; 1 disqualified (no BAA); 3 finalists scored via vendor-evaluation-scorecard; Cardinal Health wins (4.3/5); Matt Mathison approves; BAA executed; contract signed; PO system updated
2. **Edge case:** Only one supplier responds to the RFQ → a sole response is not sufficient for a competitive process; extend the deadline by 1 week; contact non-responding suppliers to understand barriers (too complex? too small?); simplify the RFQ if needed; if still only one response, evaluate whether to proceed with the single response (acceptable for specialized categories) or re-source from a broader pool
3. **Adversarial:** A supplier contacts Dr. Lewis directly to share their proposal early or ask for competitor intel → this is a procurement ethics breach; do not accept early submissions outside the process; do not share competitor information; respond formally: "All communication is through the RFQ process; please submit your response by the deadline"; document the contact; if it happens again, consider disqualifying the supplier for process violations

## Audit Log
RFQ/RFP documents versioned and retained. All supplier submissions retained. Questions and responses distributed to all suppliers documented. Award decision documented with evaluation scores. Any process deviations documented.

## Deprecation
Retire when MBL has a procurement platform (Coupa, SAP Ariba) with a built-in supplier portal for electronic RFQ/RFP submission, automated evaluation, and award notification.
