---
name: ops-contract-reviewer
description: "Review a contract for operational risk and completeness. Use when the user says 'review this contract', 'contract review', 'is this contract okay', 'check this agreement', 'contract checklist', 'look at this vendor contract', 'contract red flags', 'contract risk', 'should we sign this', 'what should be in this contract', 'contract terms', 'MSA review', 'SOW review', 'NDA review', or 'evaluate this agreement'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <MSA|SOW|NDA|service-agreement|subscription>] [--value <dollar amount>] [--vendor <vendor name>]"
---

# Ops Contract Reviewer

Review contracts for operational risk and completeness at MBL portfolio companies — a structured checklist review that catches the most common contract problems before signing. This skill provides an operational risk assessment, not legal advice. Any contract above the thresholds below or involving novel legal terms requires review by an attorney before signing. Dr. Lewis's review is the first gate; it is not the last gate for high-stakes contracts.

## When to Use
- A vendor contract or service agreement has been received for signature
- A subscription or SaaS agreement is being evaluated
- An NDA is presented before a discussion or due diligence
- A new statement of work (SOW) is being added to an existing master service agreement (MSA)
- A contract renewal is being renegotiated
- Matt Mathison asks "has legal looked at this?" — initiating the review process

## Contract Review Framework

```
Contract review thresholds:
  Dr. Lewis review only: <$10K value, standard MSA/subscription, no unusual terms
  Dr. Lewis + attorney: >$10K value, OR IP/liability/indemnification clauses that vary from standard, 
    OR Allevio contracts involving PHI or regulatory compliance, OR any HIVE field operations contracts
  Matt Mathison approval required to sign: >$25K value, OR multi-year commitments, 
    OR contracts with personal liability provisions, OR exclusivity clauses

Key contract elements to verify:
  1. PARTIES: Are the correct legal entities named? (MBL Partners LLC, not "MBL")
  2. SCOPE: Is what's being delivered specific enough to enforce?
  3. PRICE AND PAYMENT: Is pricing clear? What triggers price changes?
  4. TERM AND TERMINATION: How long? How do we get out? What notice is required?
  5. SLAs: What performance is promised? What happens if they miss it?
  6. INTELLECTUAL PROPERTY: Who owns what's created?
  7. CONFIDENTIALITY: Is our data protected? Are there appropriate limits?
  8. LIABILITY AND INDEMNIFICATION: What's our exposure if something goes wrong?
  9. DATA PRIVACY: How is our data (and PHI for Allevio) handled and protected?
  10. GOVERNING LAW: Which state's law governs? (prefer Arizona for MBL entities)

High-risk contract clauses (red flags):
  Auto-renewal with short notice window (<30 days): trap for unwanted renewals
  Uncapped liability: company's liability should be capped (typically at fees paid)
  Broad IP assignment: vendor claims ownership of work product built for us
  One-sided termination: only vendor can terminate; we cannot
  Unilateral price change: vendor can increase price mid-term without consent
  Data ownership ambiguity: unclear who owns data we provide to the system
  Personal guaranty: Dr. Lewis or Matt Mathison is personally liable (avoid entirely)
  Perpetual license with no termination right: we can never leave the vendor's platform
  
Healthcare-specific flags (Allevio):
  PHI handling without BAA: HIPAA violation regardless of contract quality
  Subcontractor chain without downstream BAA requirement
  Data breach notification >72 hours: HIPAA requires prompt notification
  
HIVE-specific flags:
  Indemnification for environmental liability without limits
  Blanket subcontractor authorization without approval requirement
```

## Output Format

```markdown
# Contract Review — <Vendor Name / Contract Type>
**Company:** <Entity> | **Date:** [Date]
**Contract type:** [MSA / SOW / NDA / Service Agreement / Subscription]
**Contract value:** $[X] | **Term:** [X months / X years]
**Reviewed by:** Dr. John Lewis
**Attorney review required:** [Yes — reasons below / No]

---

## Contract Identification

**Parties:**
- Company (us): [Legal entity name as stated in contract — verify correct legal name]
- Vendor: [Legal entity name — verify matches who we're doing business with]
- Correct? [✅ / 🔴 Error — [what's wrong]]

**Governing law:** [State] — [✅ Acceptable / 🟡 Not preferred but acceptable / 🔴 Problematic — explain]
**Jurisdiction for disputes:** [State/venue — same check]

---

## Key Terms Summary

| Term | Contract says | Risk level | Comment |
|------|-------------|-----------|---------|
| Contract value | $[X] | | |
| Payment terms | [Net X / Monthly / Milestone] | | |
| Contract term | [X months/years] | | |
| Auto-renewal | [Yes — X days notice / No] | 🔴 / 🟡 / 🟢 | [If auto-renewal: how much notice? Is it sufficient?] |
| Early termination | [For cause only / For convenience with X days notice] | | |
| Notice period to terminate | [X days] | 🔴 / 🟡 / 🟢 | [Sufficient runway to transition?] |
| Price change provision | [Vendor can change with X days notice / Fixed for term] | | |

---

## Scope Review

**Is the scope of work specific enough to enforce?**
[Yes — deliverables are specific, measurable, and time-bound / 🟡 Vague — [which provisions are unclear] / 🔴 Too vague to enforce]

**Key deliverables stated in contract:**
1. [Deliverable 1 — specific enough?]
2. [Deliverable 2]

**What's missing from scope:**
- [Gap 1 — e.g., "No specification of data format for monthly reports — could be any format"]
- [Gap 2]

---

## SLA Assessment

**SLAs defined?** [Yes / No — ⚠️ SLAs should be defined before signing]

| SLA | Threshold | Remedy if missed |
|-----|---------|-----------------|
| [Uptime] | [X%] | [Credit / Termination right] |
| [Response time] | [<X hours] | |

**Missing SLAs (should add before signing):**
- [E.g., "No delivery timeline SLA for monthly reports — add specific date requirement"]

---

## Risk Assessment

| Risk area | Contract provision | Assessment |
|---------|------------------|-----------|
| Liability cap | [Capped at fees paid / [X months'] fees / Uncapped] | 🟢 / 🟡 / 🔴 |
| Indemnification | [Mutual / One-sided] | |
| IP ownership | [Work-for-hire (ours) / License only / Vendor retains] | |
| Confidentiality | [NDA adequate / No confidentiality provision] | |
| Data ownership | [Our data remains ours / Ambiguous] | |
| Auto-renewal trap | [Yes — [X days] notice window / No] | |
| Personal guaranty | [Required / Not required] | 🔴 if required |

**Healthcare (Allevio):**
- BAA included / referenced: [Yes ✅ / No 🔴 — mandatory before signing]
- PHI handling terms: [Adequate / 🟡 Review needed]

---

## Red Flags

🔴 **Must resolve before signing:**
1. [Specific red flag — exact clause and page/section reference]
2. [Specific red flag]

🟡 **Should negotiate:**
1. [Specific term to push back on — what to request instead]
2. [Specific term]

🟢 **Acceptable as-is:**
[Summary of what's fine]

---

## Recommendation

☑️ **Sign as-is** — all terms acceptable; within Dr. Lewis review threshold
⚠️ **Sign with negotiated changes** — request: [Specific changes to request]
🔴 **Do not sign** — [Specific unacceptable terms; what must change]
⚖️ **Attorney review required before decision** — [Reason: >$25K / unusual IP / personal liability / etc.]

**Matt Mathison approval required to sign:** [Yes — [amount/reason] / No]

---

## Negotiation Guidance (if negotiation recommended)

**Our leverage:** [Why the vendor wants this deal / switching cost to vendor / market alternatives]
**Priority asks (must get):** [List — these are walk-aways]
**Nice to have (willing to drop):** [List]
**Concessions we can offer:** [What we can give to get what we need]
```

## Output Contract
- This is operational review, not legal advice — the contract review identifies operational risk, common traps, and missing provisions; it is not a substitute for attorney review on complex or high-value contracts; the output always states clearly whether attorney review is required and provides the specific reason; Dr. Lewis does not sign contracts above threshold without attorney clearance
- Red flags are section-specific — "the liability terms are concerning" is not useful; "Section 12.3 caps the vendor's liability at fees paid in the prior month, which for a $8K/month contract means our maximum recovery is $8K even if they cause a $500K data loss — negotiate to at least 12 months of fees" is useful; every red flag is referenced by section
- BAA is a pre-signing blocker for Allevio — any contract where the vendor will have access to PHI cannot be signed without a HIPAA Business Associate Agreement; this is not a negotiating point; it is a legal requirement; if the vendor declines to sign a BAA, they cannot be used for PHI-involved services at Allevio regardless of any other contract quality
- Auto-renewal traps are flagged at the review stage — contracts with short auto-renewal windows (e.g., "contract auto-renews unless cancelled with 30 days notice") are flagged; Dr. Lewis calendar reminder is set for 90 days before the notice window; a contract that renews because no one noticed the window is a common and expensive problem at small companies
- HITL required: Dr. Lewis reviews all contracts before signature; attorney review for contracts >$10K or with unusual terms; Matt Mathison approves signature for contracts >$25K; no contract is signed without Dr. Lewis review; Allevio contracts involving PHI always require BAA before signature

## System Dependencies
- **Reads from:** Contract document (PDF/Word), vendor profile (if existing vendor), similar past contracts for comparison
- **Writes to:** Contract review memo (SharePoint/Legal/<Company>/Contracts/Reviews/); negotiation notes; Matt Mathison approval request (if required); executed contract filing after signature
- **HITL Required:** Dr. Lewis reviews all contracts; attorney review per threshold; Matt Mathison approves >$25K; signature by authorized signatory only (Matt Mathison for >$25K; Dr. Lewis for <$25K per authorization); Allevio PHI contracts require BAA confirmation before any signature

## Test Cases
1. **Golden path:** HIVE Partners — software vendor proposes a 3-year subscription contract for production reporting tool at $18K/year ($54K total) → Contract review: Parties correct (HIVE Partners LLC); Governing law: Utah — acceptable; Key terms: $18K/year, payment quarterly in advance, 3-year term, auto-renewal with 60 days notice — adequate; Price: fixed for 3 years — favorable; Early termination: for cause only + 90-day notice for convenience with 12 months remaining fees owed — unfavorable (3 months would be more standard); SLA: 99.5% uptime defined, 4-hour response — adequate; Liability cap: capped at 3 months fees — low ($4.5K cap on $54K contract); IP: our data remains ours — good; Red flags: 🟡 Early termination penalty (12 months) — negotiate to 3 months; 🟡 Liability cap (3 months) — negotiate to 12 months; Recommendation: Sign with negotiated changes; attorney review required ($54K total value); Matt Mathison approval required (>$25K); Negotiation: ask for 3-month termination penalty and 12-month liability cap — offer to sign 3-year vs. requesting 2-year in exchange
2. **Edge case:** An Allevio software vendor insists their standard subscription agreement doesn't include a BAA because they're a "data processor, not a business associate" → This is factually wrong under HIPAA — a vendor that provides services to a covered entity where PHI is created, received, maintained, or transmitted is a business associate regardless of how they characterize themselves; respond: "Your legal characterization doesn't change the regulatory reality — under HIPAA §164.502(e), any service provider handling PHI on behalf of a covered entity must sign a BAA. We cannot proceed without one. If you'd like, I can provide a BAA template that's standard in the industry. If you won't sign it, we need to find a different solution."
3. **Adversarial:** "The vendor says we have to use their standard contract — it's non-negotiable" → Almost all contracts are negotiable; "non-negotiable" is an opening position, not a fact; respond: "Understood. Let me review it and identify the 2-3 items that are truly material to us. We'll sign the rest as-is — most of their standard contract is fine. What I won't sign is [specific item — e.g., uncapped liability or auto-renewal with 15-day window]. Those aren't preferences; they're risk exposures we can't accept. Let me send them a one-page markup with just those items."

## Audit Log
All contract reviews retained by vendor and date — review memo, final negotiated terms, executed contract. Attorney review records retained. Matt Mathison approvals retained. BAA confirmations retained for Allevio. Auto-renewal calendar reminders documented.

## Deprecation
Retire when portfolio companies have outside counsel on retainer who reviews all contracts above a low threshold, and Dr. Lewis's role is directing the attorney relationship rather than conducting first-level contract review.
