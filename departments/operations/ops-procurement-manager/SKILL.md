---
name: ops-procurement-manager
description: "Manage the procurement process for purchases and vendor selection. Use when the user says 'procurement', 'purchasing process', 'how do we buy', 'vendor selection', 'RFP', 'request for proposal', 'bid process', 'get quotes', 'purchase approval', 'buying a new tool', 'procurement policy', 'how do we approve purchases', 'vendor evaluation', 'competitive bid', 'three quotes', or 'source a vendor'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--item <what is being purchased>] [--value <estimated value>] [--urgency <standard|urgent>]"
---

# Ops Procurement Manager

Run structured procurement processes at MBL portfolio companies — ensuring that purchases above defined thresholds go through a competitive, documented process before commitment. Procurement discipline prevents two failure modes: paying too much because alternatives weren't considered, and committing to the wrong vendor because the decision was made too quickly. At portfolio scale, every significant purchase decision represents an opportunity to validate market pricing and ensure the selected vendor is actually the best fit.

## When to Use
- A significant new purchase is being planned (above $5K or any new vendor relationship)
- A renewal is coming up and the terms should be renegotiated or the vendor reconsidered
- Multiple vendors are being evaluated for the same service
- A procurement process or policy needs to be established for a portfolio company
- Someone is about to commit to a vendor without competitive bids

## Procurement Framework

```
Purchase thresholds and process requirements:
  <$1,000: Any authorized staff — no formal process required; expense report
  $1,000-$4,999: Department head approval; 2 quotes recommended if time permits
  $5,000-$9,999: Dr. Lewis approval; 2+ competitive quotes required
  $10,000-$24,999: Dr. Lewis approval; 3+ competitive quotes; documented decision rationale
  $25,000+: Matt Mathison approval; formal RFP process; signed contract required

Procurement process steps (full process — adapt for size/urgency):
  1. Define requirements — what do we actually need? (Not "find me a CRM"; "we need X functionality for N users at <$Y/month")
  2. Market scan — who provides this? What are typical price ranges?
  3. Vendor longlist — identify 4-6 potential vendors from market
  4. Initial outreach — short conversations or demos to narrow to 2-3 finalists
  5. Competitive quotes or RFP — formal pricing from finalists
  6. Evaluation — score finalists on criteria (cost, fit, support, integration, risk)
  7. Reference checks — speak to existing customers if contract is >$25K
  8. Decision and documentation — record why winner was selected
  9. Contract review — apply ops-contract-reviewer before signing
  10. Vendor setup — W-9, BAA (Allevio), onboarding, vendor record creation

Emergency procurement (genuine urgency):
  Define "emergency": operational failure risk, compliance deadline, revenue at risk
  Compressed process: 2 quotes minimum; retroactive rationale documented within 48 hours
  Never skip: contract review, BAA (Allevio), approval at appropriate threshold
```

## Output Format

```markdown
# Procurement Request — <Item/Service Being Purchased>
**Company:** <Entity> | **Requestor:** [Name/Department]
**Estimated value:** $[X] (annually / one-time) | **Process tier:** [Approval level required]
**Urgency:** Standard | Date needed: [Date]
**Prepared by:** Dr. John Lewis | **Date:** [Date]

---

## Requirements Definition

**What we need:** [Plain language description — functionality, not solution]
**Why we need it:** [Business justification — what problem does this solve?]
**Users/volume:** [N users / N transactions / N locations]
**Integration requirements:** [Must connect to: QuickBooks, Monday.com, etc.]
**Success criteria:** [How will we know this is working 90 days post-implementation?]
**Budget range:** $[X] - $[Y] per [month/year/one-time]

**Constraints:**
- [ ] Must integrate with [system]
- [ ] HIPAA BAA required (Allevio)
- [ ] Must support [N] concurrent users
- [ ] Implementation timeline: must be live by [Date]

---

## Market Scan

**Category:** [What type of product/service this is]
**Typical market range:** $[X] - $[Y] per [unit]
**Key players in this category:** [Vendor A, Vendor B, Vendor C, Vendor D]
**Market notes:** [Anything notable — one vendor dominates, pricing is opaque, etc.]

---

## Vendor Evaluation

### Vendor Comparison Matrix

| Criterion | Weight | Vendor A | Vendor B | Vendor C |
|-----------|--------|----------|----------|----------|
| Cost (annual) | 25% | $[X] | $[X] | $[X] |
| Feature fit | 30% | [1-5] | [1-5] | [1-5] |
| Integration | 20% | [1-5] | [1-5] | [1-5] |
| Support quality | 15% | [1-5] | [1-5] | [1-5] |
| Vendor stability | 10% | [1-5] | [1-5] | [1-5] |
| **Weighted score** | 100% | [X/5] | [X/5] | [X/5] |

### Vendor Summaries

**Vendor A — [Name]**
- Annual cost: $[X]
- Strengths: [2-3 specific strengths]
- Weaknesses: [1-2 specific gaps]
- Integration: [Confirmed / Possible / Not supported]
- Reference available: [Yes / No]

**Vendor B — [Name]**
[Same format]

**Vendor C — [Name]**
[Same format]

---

## Reference Check (if >$25K)

**Vendor selected for reference check:** [Vendor]
**Reference contact:** [Name, Company] | **Call date:** [Date]

| Question | Answer |
|---------|--------|
| How long have you been using [Vendor]? | |
| What's been your biggest challenge? | |
| How is their support? | |
| Would you buy again? | |
| What do you wish you knew before buying? | |

---

## Decision

**Selected vendor:** [Name]
**Annual commitment:** $[X] | **Contract term:** [Length]
**Selection rationale:** [Why this vendor beat the alternatives — specific, not "best overall fit"]
**Key trade-offs accepted:** [What we're giving up vs. alternatives]

**Approvals required:**
- [ ] Dr. Lewis ($5K-$24,999)
- [ ] Matt Mathison ($25K+)

**Contract review status:** [ops-contract-reviewer applied / Pending / Not required — under $5K]
**W-9 obtained:** ✅ / 🔴 Required before payment
**BAA obtained (Allevio):** ✅ / 🔴 Required before implementation / N/A

---

## Matt Mathison Brief (if >$25K)

Procurement complete for [item] at [Company]. Selected [Vendor] at $[X]/year — [one sentence on why they won]. Requesting approval to proceed with contract signature.
```

## Output Contract
- Requirements before vendors — the process starts with defining what we need, not picking a vendor; Dr. Lewis has seen too many purchases driven by a salesperson's demo before the requirements were clear; the requirements definition gate protects against buying the wrong thing at the right price; if someone approaches Dr. Lewis with "I want to buy [specific vendor]," the first response is "what does it need to do?" and the second is "have we looked at alternatives?"
- Competitive quotes are non-negotiable above threshold — the threshold system exists precisely because every vendor's opening price has negotiating room; getting one quote and saying "it seems reasonable" is leaving money on the table; 3 competitive quotes for any purchase >$10K gives market pricing data, negotiating leverage, and a documented decision trail
- BAA is a pre-contract blocker at Allevio — any vendor who will touch PHI (patient health information) requires a signed Business Associate Agreement before the contract is signed and before implementation begins; this is not a checkbox — it is a HIPAA obligation; Dr. Lewis enforces this as a hard stop, not a reminder
- HITL required: Dr. Lewis approves all purchases $5K-$24,999; Matt Mathison approves purchases ≥$25K; Matt Mathison approval for multi-year commitments >$25K even if annual value is below threshold; contract signature matches approval threshold; no purchase commitment before approval is secured; retroactive approval is not available

## System Dependencies
- **Reads from:** Vendor proposals, market pricing, integration documentation, existing vendor contracts, QuickBooks chart of accounts, Allevio BAA status
- **Writes to:** Procurement record (SharePoint/Ops/<Company>/Procurement/<item>/); decision rationale; approval log; vendor setup in Bill.com (W-9 on file); BAA tracking (Allevio)
- **HITL Required:** Approval at threshold (Dr. Lewis $5K-$24,999; Matt Mathison $25K+); contract signature requires same approval; BAA blocking for Allevio PHI-touching vendors

## Test Cases
1. **Golden path:** HIVE Partners needs field operations reporting software ($18K/year) → Requirements defined (daily production reporting, Covercy integration preferred, mobile access for field staff, 15 users); market scan shows 4 vendors; 3 quotes obtained; evaluation matrix: Vendor A ($18K, 4.2/5 weighted), Vendor B ($14K, 3.8/5), Vendor C ($22K, 4.4/5); Vendor A selected — best value at right price point; reference call confirms strong support; W-9 obtained; contract reviewed (ops-contract-reviewer); Dr. Lewis approves ($18K — his threshold); contract signed; vendor onboarded; procurement record filed at SharePoint/Ops/HIVE/Procurement/field-ops-reporting/
2. **Edge case:** Request for a $35K marketing platform comes in from the marketing team who has already demoed and wants to buy — just need approval → Pause: the competitive bid process hasn't run; before Matt Mathison approval is requested, 2 more competing quotes are needed; the marketing team may have already identified the right vendor, but without competitive quotes the price can't be validated; schedule 2 additional demos in 1 week; run the comparison; if Vendor A (the original choice) still wins, the procurement record shows due diligence and Matt Mathison can approve with confidence
3. **Adversarial:** "We're in a hurry — can we skip the bid process?" → Urgency is real sometimes; probe: "What happens if this takes another 2 weeks?" If the answer is "operational failure" or "compliance deadline," compress the process: 2 quotes by end of week, retroactive rationale documented, same approval thresholds; if the answer is "the salesperson is pushing us," that's not urgency — that's pressure; respond: "Vendor urgency is not our urgency. Let's get 2 competing quotes this week — it takes 2 days, not 2 weeks."

## Audit Log
All procurement records retained by company, item, and date. Vendor quotes retained. Decision rationale documented. Approval records retained. BAA status tracked for Allevio vendors. W-9 status tracked in Bill.com vendor records.

## Deprecation
Retire when portfolio companies have procurement policies approved by the board, a designated buyer or controller who owns the procurement process, and a purchase approval system (in Monday.com or ERP) that routes approvals automatically without Dr. Lewis managing each process.
