---
name: pe-diligence-coordinator
description: "Coordinate and manage due diligence workstreams for MBL Partners acquisitions. Use when the user says 'due diligence', 'DD', 'diligence', 'diligence coordinator', 'DD coordinator', 'due diligence process', 'due diligence workstreams', 'data room', 'virtual data room', 'VDR', 'DD checklist', 'due diligence checklist', 'DD tracker', 'due diligence tracker', 'DD status', 'DD report', 'due diligence report', 'DD management', 'diligence management', 'advisors', 'DD advisors', 'third party advisors', 'quality of earnings', 'QoE', 'financial due diligence', 'commercial due diligence', 'legal due diligence', 'operational due diligence', 'tax due diligence', 'environmental due diligence', 'IT due diligence', 'HR due diligence', 'insurance due diligence', 'customer calls', 'reference calls', 'management presentations', 'site visits', 'key person risk', 'DD finding', 'material finding', 'deal breaker', 'condition to closing', 'DD timeline', 'DD workplan', or 'close on time'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <company-name>] [--action <initiate|track|escalate|report|close>] [--workstream <financial|commercial|legal|operational|tax|environmental>] [--deadline <exclusivity-end-date>]"
---

# PE Diligence Coordinator

Coordinate and manage due diligence workstreams for MBL Partners acquisitions — building the DD plan, managing the data room, coordinating internal and external advisors, tracking findings against the investment thesis, and escalating material findings to Matt Mathison before they become surprises at the negotiating table. Due diligence is MBL's primary risk management tool: it validates (or invalidates) the investment thesis; it surfaces the specific risks that will drive the purchase agreement terms; it identifies issues that require price adjustments or deal-killer conditions; and it produces the information needed to build the post-close value creation plan. Rushed or incomplete due diligence is the primary source of post-close surprises — the ones that destroy LP returns.

## When to Use
- LOI is signed and exclusivity begins
- A DD workstream has a finding that changes the thesis
- DD is behind schedule relative to the exclusivity period
- Matt Mathison needs a DD status briefing

## Diligence Coordination Framework

```
MBL DD WORKSTREAM STRUCTURE:

  1. FINANCIAL DUE DILIGENCE (pe-financial-diligence):
     Quality of Earnings (QoE): independent validation of historical EBITDA
     Revenue quality: recurring vs. one-time; customer concentration; contract terms
     Working capital analysis: normalize WC for seasonal or extraordinary items
     Cost base analysis: is EBITDA overstated by missing costs? (owner perks; below-market rent)
     Advisor: accounting firm specializing in QoE (not the company's own auditor)
     
  2. COMMERCIAL DUE DILIGENCE (pe-commercial-diligence):
     Market validation: is the market as large and growing as the company claims?
     Customer interviews: 5-10 current and former customers
     Competitive landscape: who else could serve these customers?
     Sales pipeline: how reliable is the company's revenue pipeline?
     
  3. LEGAL DUE DILIGENCE (pe-legal-diligence):
     Corporate governance: cap table; entity structure; board minutes
     Contracts: customer; vendor; employee; real estate
     Intellectual property: ownership; registrations; infringement
     Litigation: pending; threatened; settled
     Regulatory compliance: industry-specific
     
  4. OPERATIONAL DUE DILIGENCE (pe-operational-diligence):
     Management team quality: background checks; references; work history
     Key person risk: what happens if the CEO leaves post-close?
     Systems and technology: IT infrastructure; data security
     Process maturity: can the business scale without the founder?
     HR: employee handbook; benefits; compensation benchmarking; turnover
     
  5. TAX DUE DILIGENCE (coordinated with tax counsel):
     Historical tax compliance: filings current? any audits or disputes?
     Structure analysis: optimal structure for MBL's ownership (asset vs. stock)
     Tax liability exposure: any undisclosed tax liabilities?
     
  6. SECTOR-SPECIFIC WORKSTREAMS:
     Healthcare (Allevio focus):
       HIPAA compliance audit (pe-deal-breaker-tracker)
       OIG/LEIE check: ALL licensed providers and key personnel
       State medical board: any sanctions or restrictions on providers
       Payer contracts: terms; reimbursement rates; termination rights
       CMS: any open audits; overpayment demands; corrective action plans
     Energy (HIVE focus):
       Title search: clear title to royalty interests; no encumbrances
       DOGM/regulatory: any outstanding NOVs or violations
       Operator quality assessment
       Production verification (independent reservoir engineer if significant)
     CTV/Media (Column6 focus):
       Traffic quality: IVT rate audit (third-party verification)
       Agency contract terms: cancellation provisions; IO structure
       DSP relationships: exclusivity; volume commitments
       Revenue recognition: campaign-based recognition review

DD TIMELINE AND TRACKING:

  WEEK 1: Data room access; DD requests sent; advisors engaged
  WEEK 2-3: Initial document review; management Q&A sessions; customer calls initiated
  WEEK 3-4: QoE work; legal review; commercial interviews
  WEEK 4-5: Advisor preliminary findings; DD team internal synthesis
  WEEK 6-7 (if 60-day exclusivity): Advisor final reports; purchase agreement negotiation begins
  WEEK 8: Final reports; price/term adjustments if needed; target closing
  
  ESCALATION TRIGGERS (immediate Matt Mathison briefing):
    Any material adverse change vs. the investment thesis
    Financial restatement or significant QoE adjustment
    OIG/LEIE match for any provider or key personnel
    Undisclosed litigation or regulatory action
    Customer concentration higher than disclosed
    Any Integrity red flag (management misrepresentation; fraud indicator)

MATT MATHISON DD BRIEFINGS:

  Week 2: Initial data room assessment — anything that changes the LOI terms?
  Week 4: Mid-DD synthesis — on track? any material findings?
  Week 6: Final findings briefing — thesis still intact? proceed or renegotiate?
  Between briefings: immediate escalation for any deal-breaker finding
```

## Output Format

```markdown
# Due Diligence Status Report — [Company Name] — Week [N] of [Total]
**Exclusivity remaining:** [N] days | **Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Workstream Status

| Workstream | Advisor | Status | Key findings | Flag |
|-----------|---------|--------|-------------|------|
| Financial (QoE) | [Firm] | 75% | Normalized EBITDA: $[X] (vs. $[X] stated) | 🔴 $200K EBITDA adjustment |
| Commercial | [Internal] | 60% | Top customer is 35% of revenue | ⚠️ Concentration risk |
| Legal | [Firm] | 50% | One pending litigation ($85K; immaterial) | ✅ |
| Operational | [Internal] | 40% | CEO is sole enterprise relationship owner | ⚠️ Key person risk |
| Tax | [Firm] | 30% | No open audits; structure TBD | ✅ |

---

## Thesis Impact Summary

| Finding | Original thesis assumption | Actual finding | Impact |
|---------|--------------------------|---------------|--------|
| EBITDA | $1.4M stated | $1.2M normalized | Price adjustment: -$1M EV |
| Customer concentration | Diverse (assumed) | Top customer: 35% | Escrow adjustment or rep |

---

## Decisions Needed from Matt

1. QoE EBITDA adjustment of $200K suggests price reduction of ~$1M. Do we renegotiate now or at PA stage?
2. Key person risk: CEO wants no non-compete. Is this a deal-breaker or can we structure equity rollover as a retention tool?
```

## Output Contract
- Material findings go to Matt Mathison immediately, not in the next scheduled briefing — a QoE finding that reduces normalized EBITDA by 20% changes the deal; a key person risk that wasn't disclosed changes the deal; an OIG/LEIE match for a provider is a deal-breaker; these findings do not wait for the next Wednesday briefing; Dr. Lewis calls or emails Matt the day the finding is confirmed and identifies the impact on the thesis; Matt has the right to adjust the deal terms, renegotiate, or kill the deal based on current information — not on week-old information
- DD timeline is managed like a project — exclusivity is finite; DD that falls behind schedule results in either an extension request (seller may decline) or closing under-informed; Dr. Lewis maintains a DD project plan from Day 1 of exclusivity, tracks each workstream weekly, and flags any workstream that is running more than 5 days behind the plan; advisors who are behind schedule get a direct call from Dr. Lewis; if the overall DD is at risk of not completing within exclusivity, Matt Mathison is briefed with options (request extension; close with known gaps; exit)
- The DD report reflects findings, not advocacy — due diligence exists to surface the truth about the business, not to confirm the thesis; Dr. Lewis does not filter DD findings based on whether they support or undermine the deal; if the QoE finds that the stated EBITDA is overstated by 30%, that finding goes to Matt with full context and a recommended response — it does not get softened or buried; THRIVE Truth applies directly to DD reporting
- HITL required: Week 2 initial assessment → Matt Mathison briefing; Week 4 mid-DD synthesis → Matt briefing; Week 6 final findings → Matt briefing; any material adverse finding → Matt immediately (same day); OIG/LEIE match → Matt immediately (deal likely killed); any Integrity flag → Matt immediately; thesis-changing findings → Matt before any response to seller; DD advisor engagement → Dr. Lewis approves scope and fee before retaining

## System Dependencies
- **Reads from:** pe-loi-manager (exclusivity start date; LOI terms to validate); pe-deal-thesis-builder (thesis assumptions to test in DD); pe-financial-diligence; pe-commercial-diligence; pe-legal-diligence; pe-operational-diligence; pe-deal-breaker-tracker (OIG/LEIE; regulatory checks); company data room (all DD documents)
- **Writes to:** DD tracker (SharePoint → Deals → [Company] → DD); DD reports (advisor findings + synthesis); Matt Mathison briefings (scheduled + immediate for material findings); pe-deal-thesis-builder (thesis updates post-DD); pe-exit-value-optimizer (value creation plan refinement based on DD); purchase agreement negotiations (DD findings drive terms)
- **HITL Required:** All DD briefings (Week 2, 4, 6) → Matt Mathison; material adverse findings → Matt immediately; OIG/LEIE → Matt immediately; Integrity flags → Matt immediately; DD advisor engagement → Dr. Lewis scope approval; thesis-changing finding → Matt before seller response

## Test Cases
1. **Golden path:** LOI signed (60-day exclusivity). Day 1: data room access requested; QoE firm engaged; legal engaged; commercial interviews scheduled. Day 14: initial review complete. Primary finding: revenue is 10% higher than CIM (good news — buyer error understated). No material legal issues found. Commercial: top customer is 28% of revenue (vs. 20% assumed in thesis — manageable but needs a rep in the PA). Day 28: mid-DD briefing to Matt. Day 45: final QoE report confirms EBITDA is within 5% of stated (minor adjustments). Legal: one undisclosed lawsuit (small; immaterial). Dr. Lewis recommends proceed to PA at original price with a specific rep for the customer concentration. Matt approves. PA negotiations begin.
2. **Edge case:** The DD timeline is at risk — legal is running 2 weeks behind due to the company producing documents slowly → Dr. Lewis: "Legal DD is running 2 weeks behind because the company has been slow to produce documents — we've made 3 formal requests for 22 documents that are still outstanding. Options: (1) Request a 2-week exclusivity extension; (2) Close with known legal gaps and negotiate specific indemnifications; (3) Address the document production delay directly with the seller's counsel. My recommendation: a direct call with the seller's counsel today to convey that missing documents are creating a material risk to closing on time — and a simultaneous request to the banker to apply pressure. Matt: if they don't produce by [Date], we need to decide whether to request extension or accept the risk. I'll brief you by [Date]."
3. **Adversarial:** The seller refuses to provide specific financial records (5 years of historical tax returns) citing "confidentiality concerns" → Dr. Lewis: "Tax returns are standard and essential for financial and legal DD — they verify revenue, catch undisclosed liabilities, and validate the QoE analysis. A seller who won't provide them is either hiding something or doesn't understand the DD process. My approach: our fund counsel will write a formal request citing the data room index item and explaining that tax returns are a condition of closing. If the seller still refuses, I'll brief Matt on the specific risk of closing without them — the risk is primarily undisclosed tax liabilities that become our problem post-close. This may be a deal-breaker depending on the magnitude of the risk."

## Audit Log
All DD documents retained (from data room; with access date). DD tracker history retained. Advisor engagement letters retained. DD reports from all workstreams retained. Matt Mathison briefing records retained (with dates). Material finding records retained. DD timeline vs. actual records retained.

## Deprecation
Due diligence coordination is active during the fund's investment period. Workstream structure and checklist are reviewed after each deal closing for lessons learned.
