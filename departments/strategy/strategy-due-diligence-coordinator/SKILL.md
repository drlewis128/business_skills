---
name: strategy-due-diligence-coordinator
description: "Coordinate and track M&A due diligence — financial, legal, operational, and regulatory workstreams. Use when the user says 'due diligence', 'DD', 'diligence coordinator', 'diligence tracker', 'diligence workstreams', 'manage diligence', 'coordinate diligence', 'diligence checklist', 'run diligence', 'diligence status', 'what are we diligencing', 'diligence process', 'data room review', 'diligence findings', or 'due diligence management'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--target <company name>] [--stage <launch|track|findings|close>] [--type <platform|tuck-in|asset>]"
---

# Due Diligence Coordinator

Coordinate and track M&A due diligence for MBL Partners acquisitions — ensuring all financial, legal, operational, and regulatory workstreams are completed thoroughly, on schedule, and without gaps before capital is committed. Due diligence is MBL's last opportunity to validate the investment thesis, discover deal-breakers, and identify value creation opportunities or risks before close. A diligence process that misses a regulatory gap (OIG exclusion, open OCR investigation), a financial misrepresentation, or a customer concentration problem doesn't just lose money — it can imperil the entire portfolio entity it bolts into. At MBL portfolio scale, Dr. Lewis owns the diligence coordination and is accountable for ensuring no workstream is skipped.

## When to Use
- LOI is signed — time to open and manage the data room
- Diligence is underway and needs tracking against the timeline
- A diligence finding surfaces — needs to be evaluated and escalated
- Approaching LOI — need to build the diligence checklist before requesting exclusivity
- Matt Mathison asks "where are we in diligence on [deal]?"

## Due Diligence Framework

```
Diligence workstreams (MBL standard):

FINANCIAL DILIGENCE (owned by Dr. Lewis + accountant/CPA):
  Quality of Earnings (QoE): Validate reported EBITDA; identify addbacks; normalize for one-time items
  Revenue analysis: Customer mix, concentration, recurring vs. project, contract terms, renewal rates
  Working capital: Trailing 12-month average; DSO; DPO; inventory (if applicable)
  CapEx analysis: Maintenance vs. growth CapEx; future capital requirements
  Cash flow: FCF conversion; cash trap risks; seasonal patterns
  Debt and liabilities: All obligations; off-balance-sheet items; contingent liabilities
  
LEGAL DILIGENCE (owned by M&A attorney):
  Corporate structure: Entity organization; ownership; subsidiary structure; clean cap table
  Contracts: Customer agreements (assignable?); vendor contracts; lease agreements; loan agreements
  Employment: Key employee agreements; non-competes; severance obligations; HR compliance
  IP: Ownership confirmed (not licensed); no infringement claims
  Litigation: All pending and threatened litigation; prior judgments
  Insurance: Coverage adequacy; claims history
  
OPERATIONAL DILIGENCE (owned by Dr. Lewis + CEO of acquiring entity):
  Management team: Depth; retention risk; key person dependency; cultural fit
  Operations: SOPs; technology; systems; scalability; bottlenecks
  Customers: Top customer interviews; retention risk; relationship owner (seller vs. company)
  Suppliers/vendors: Key vendor dependencies; pricing; switching costs
  
REGULATORY DILIGENCE (owned by Dr. Lewis + attorney + compliance counsel):
  Healthcare (Allevio tuck-ins): MANDATORY
    OIG LEIE: All clinical staff and the entity → exclusion.oig.hhs.gov
    Arizona Medical Board: All licensed practitioners — license status; disciplinary history
    CMS: Provider enrollment status; Medicare/Medicaid billing history; any open audits
    HIPAA: Compliance program status; any prior OCR investigations or settlements
    AKS: Review all referral arrangements and financial relationships for anti-kickback compliance
    Payer contracts: All payer agreements; assignability; rate terms
    
  Oil & Gas (HIVE):
    UT DOGM: All permits current; no violations; transferability
    Environmental: Phase I ESA; water rights; surface rights
    Production records: State production data matches company records
    
  Media/Ad Tech (Column6):
    Contracts: Publisher and advertiser agreements; assignability
    Data: Privacy policy; CCPA/GDPR compliance; data use agreements
    IP: Proprietary technology ownership vs. licensed components
    
DEAL-BREAKERS (automatic stop — no exceptions):
  Any OIG LEIE match on clinical staff or the entity (Allevio)
  Open OCR investigation or prior HIPAA settlement not disclosed pre-LOI
  Financial fraud or material misrepresentation discovered in QoE
  Environmental contamination without remediation plan (HIVE)
  Undisclosed material litigation with >$100K potential liability
  AKS arrangement without attorney-documented safe harbor (Allevio)
```

## Output Format

```markdown
# Due Diligence Tracker — [Target Company] Acquisition
**Date:** [Date] | **Coordinator:** Dr. John Lewis | **Exclusivity expires:** [Date]
**Overall status:** 🟢 On track / 🟡 At risk / 🔴 Behind / ⚫ Deal-breaker found

---

## Workstream Status

| Workstream | Lead | Status | % Complete | Findings | Blockers |
|-----------|------|--------|-----------|---------|---------|
| Financial — QoE | Dr. Lewis + CPA | 🟢 On track | [X]% | [Summary] | [None / Specific] |
| Financial — Working capital | CPA | | | | |
| Legal — Contracts | M&A attorney | | | | |
| Legal — Corporate | M&A attorney | | | | |
| Legal — Employment | M&A attorney | | | | |
| Operational — Management | Dr. Lewis | | | | |
| Operational — Customers | CEO (Allevio) | | | | |
| Regulatory — OIG LEIE | Dr. Lewis | ✅ Complete | 100% | All clear / [Issue] | |
| Regulatory — AZ Med Board | Attorney | | | | |
| Regulatory — CMS/Medicare | Attorney | | | | |
| Regulatory — HIPAA status | Dr. Lewis | | | | |
| Regulatory — AKS review | Compliance counsel | | | | |
| Regulatory — Payer contracts | Dr. Lewis | | | | |

---

## Key Findings

### Deal-Breaker Flags ❌
[None identified / Specific finding — requires immediate Matt Mathison notification]

### Material Issues Requiring Price or Terms Adjustment ⚠️
| Finding | Financial impact | Action |
|---------|----------------|--------|
| [EBITDA addback of $35K not supportable] | Purchase price adjustment of ~$215K at 6.5× | Discuss with seller |
| [Top customer contract not assignable without consent] | Requires customer consent letter | Attorney action |

### Risk Items Noted (acceptable — disclosed) 🟡
| Finding | Category | Mitigation |
|---------|---------|-----------|
| | | |

### Positive Findings (upside vs. initial model) ✅
| Finding | Upside |
|---------|--------|
| | |

---

## Timeline

| Milestone | Target | Status |
|----------|--------|--------|
| Data room open | [Date] | ✅ |
| OIG LEIE / regulatory screen complete | [Date] | |
| Financial QoE complete | [Date] | |
| Legal workstreams complete | [Date] | |
| Management interviews complete | [Date] | |
| Customer interviews | [Date] | |
| Diligence findings memo to Matt Mathison | [Date] | |
| Purchase agreement draft from attorney | [Date] | |
| Exclusivity expires | [Date] | |
| Target close | [Date] | |

---

## Matt Mathison Diligence Brief

[Target] diligence [Date]: [X]% complete; [N] workstreams open. Status: [On track / At risk — specific]. Deal-breaker flags: [None / Specific finding]. Material issues: [None / EBITDA miss of $X; price adjustment of $Y]. Key open item: [Specific — OIG screen; contract assignability]. Exclusivity expires [Date]. Track to close: [Yes / At risk / Recommend pause — specific reason]. Action from Matt Mathison: [None / Approve price adjustment / Authorize DD extension request].
```

## Output Contract
- Regulatory diligence is never optional for healthcare acquisitions — the OIG LEIE screen, AZ Medical Board check, CMS enrollment status, and HIPAA compliance review are non-negotiable for any Allevio tuck-in regardless of size; a $400K tuck-in acquisition that skips regulatory diligence and inherits an OIG-excluded clinical staff member creates retroactive recoupment liability for all claims from date of first exclusion; the risk is disproportionate to the transaction size; Dr. Lewis completes the full regulatory checklist on every healthcare acquisition, even a 1-provider practice
- Deal-breakers stop the process immediately — when a deal-breaker condition is found, Dr. Lewis stops diligence work, notifies Matt Mathison within 24 hours, and does not proceed without explicit Matt Mathison instruction; deal-breakers are not negotiable (a confirmed OIG exclusion cannot be remediated post-close) and are not disclosed to the seller before Matt Mathison decides whether to walk, negotiate a price reduction that accounts for the risk, or terminate; the deal-breaker protocol is immediate escalation, not continued diligence while the issue is resolved
- Financial diligence validates the EBITDA the price was based on — the most common financial diligence finding in small business acquisitions is that "EBITDA" includes owner compensation above-market levels, personal expenses run through the business, or one-time revenue inflating the trailing period; the Quality of Earnings analysis normalizes EBITDA for these addbacks; if QoE shows EBITDA is materially lower than represented (>10% variance), Dr. Lewis presents the finding to Matt Mathison with a recommended price adjustment or walk recommendation; Dr. Lewis does not close at the original price if QoE shows a material EBITDA miss
- HITL required: Dr. Lewis coordinates all workstreams; attorney owns legal diligence; CPA/accountant owns financial QoE; compliance counsel for healthcare regulatory; Matt Mathison receives the diligence findings memo before purchase agreement is signed; any deal-breaker finding → Matt Mathison within 24 hours; any material price adjustment → Matt Mathison decision; no close without Matt Mathison final approval

## System Dependencies
- **Reads from:** LOI (strategy-loi-builder), seller data room, OIG LEIE database (exclusions.oig.hhs.gov), AZ Medical Board database, CMS PECOS, QuickBooks baseline model, investment thesis (strategy-investment-thesis)
- **Writes to:** Diligence tracker (SharePoint/Strategy/DealFlow/<Target>/Diligence/); diligence findings memo (for Matt Mathison); purchase agreement inputs (attorney); deal pipeline update (strategy-deal-flow-manager)
- **HITL Required:** Dr. Lewis coordinates; attorney for legal workstreams; CPA for QoE; compliance counsel for healthcare regulatory; Matt Mathison reviews findings memo; Matt Mathison decides on deal-breakers and material price adjustments; Matt Mathison approves close

## Test Cases
1. **Golden path:** Scottsdale PT Group tuck-in diligence → Data room opens Day 1 (45-day exclusivity); OIG LEIE: 4 clinical staff + entity screened — all clear ✅; AZ PT Board: all 4 licenses current, no disciplinary actions ✅; Medicare enrollment: active, no audit flags ✅; HIPAA: written policies exist, security risk assessment 2 years old (need update post-close) — noted but not a deal-breaker ✅ with remediation plan; Financial QoE: owner added back $22K personal auto expenses and $8K country club dues ($30K total addback); adjusted EBITDA = $115K (vs. $145K reported) — price adjustment: 7.6× × $30K = $228K reduction; recommend counter at $872K; legal — payer contracts: all 3 payer agreements are assignable with notification (not consent) ✅; customer concentration: 2 payers = 62% — acceptable given Allevio's broader payer network absorbs this; management: owner commits to 12-month transition in writing ✅; diligence memo to Matt Mathison: clean deal with one financial adjustment; recommended price $872K; Matt Mathison approves; attorney begins PA
2. **Edge case:** During diligence, discovery that one of the 4 physical therapists was excluded from OIG LEIE 18 months ago and reinstated 3 months later → The exclusion period created liability: any Medicare/Medicaid claims billed while the PT was excluded (18-month window) must be repaid with potential penalty; Dr. Lewis pulls the PT's billing history for the exclusion period; estimated Medicare billing during exclusion: $42K; repayment risk: $42K principal + up to $42K civil monetary penalty = $84K maximum exposure; Matt Mathison notified immediately; options: (1) escrow $84K from purchase price held 3 years pending CMS review; (2) price reduction of $84K; (3) walk; Dr. Lewis recommends Option 1 (escrow) — preserves the deal, protects MBL; Matt Mathison approves; attorney drafts escrow provision
3. **Adversarial:** "Diligence is taking too long — we're going to lose the deal" → Compressed diligence is how bad deals close; the timeline pressure doesn't change what needs to be found; if exclusivity is running short, Dr. Lewis prioritizes: (1) OIG LEIE and regulatory — always first, takes 1-2 days; (2) QoE — catch any material EBITDA misrepresentation; (3) contract assignability for top revenue; (4) management retention commitment; if the seller won't extend exclusivity to allow complete diligence, that is itself a signal: motivated sellers extend exclusivity for serious buyers; a seller who won't allow complete diligence may have something to hide; Dr. Lewis presents this to Matt Mathison — the right response to "we'll lose the deal" is not to skip diligence steps, it's to either request an extension or evaluate why the seller is pushing for speed

## Audit Log
All diligence workstream records retained permanently. Regulatory screen results (OIG LEIE, AZ Med Board, CMS) retained permanently. QoE findings and EBITDA adjustments retained. Deal-breaker escalation records retained. Matt Mathison approval records retained. Diligence findings memo retained permanently.

## Deprecation
Retire when MBL develops a dedicated deal team with M&A specialists — with Dr. Lewis maintaining the regulatory diligence coordination and thesis alignment review while the deal team manages financial and legal workstreams.
