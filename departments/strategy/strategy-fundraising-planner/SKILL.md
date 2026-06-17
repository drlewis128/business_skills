---
name: strategy-fundraising-planner
description: "Plan and manage a capital raise — fund formation, LP outreach, and fundraising process. Use when the user says 'fundraising', 'raise capital', 'fundraising process', 'LP fundraising', 'fund raise', 'capital raise', 'new fund', 'fundraise for the portfolio', 'raise a fund', 'fundraising plan', 'LP outreach', 'fundraising strategy', 'close the fund', 'attract LPs', 'fund formation', 'PPM', 'private placement', or 'LP commitments'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <fund or company name>] [--type <fund|co-invest|direct|follow-on>] [--target <capital amount>] [--stage <plan|active|closing>]"
---

# Fundraising Planner

Plan and manage capital raises for MBL Partners — structuring the fundraising process, preparing LP materials, managing the LP pipeline, and closing commitments on timeline. Fundraising at the MBL scale (lower-middle market PE) is a relationship-intensive process: LPs at this fund size are making decisions based on Matt Mathison's track record, thesis conviction, and the quality of the LP relationship over time — not on a BlackRock-grade institutional pitch. The LP report quality (strategy-lp-reporting) and the investment thesis strength (strategy-investment-thesis) are the foundation of any fundraising effort: LPs don't commit to a fund they've never heard from; they commit to a GP they trust. Dr. Lewis builds the process infrastructure; Matt Mathison owns the LP relationships.

## When to Use
- Forming a new fund — structuring the vehicle, PPM, subscription documents
- Active fundraising — managing the LP pipeline; tracking commitments and soft circles
- LP co-investment opportunity — a specific deal requiring additional capital
- Follow-on capital raise — existing portfolio company needs additional growth capital
- Matt Mathison asks for help planning the fundraising timeline or materials

## Fundraising Framework

```
Fundraising types at MBL scale:

  FUND RAISE (formal fund vehicle):
    Vehicle: Delaware limited partnership (most common) or LLC
    Documents: PPM (private placement memorandum) + LPA (limited partnership agreement) + subscription documents
    SEC: Form D filing within 15 days of first sale; Reg D 506(c) or 506(b) (accredited investors)
    Target LP base: HNW individuals, family offices, small institutional; relationships-based at MBL scale
    Timeline: 9-18 months from planning to final close
    Attorney: Required for PPM, LPA, and SEC filings — no exception
    
  CO-INVESTMENT (deal-specific):
    Vehicle: SPV (single-purpose vehicle) — simpler structure; one deal
    Documents: Simplified PPM or co-investment agreement + subscription documents
    Timeline: 30-60 days (faster than fund raise; specific deal deadline drives timing)
    LP base: Existing LPs + new co-investors who want exposure to specific deal
    Attorney required: Yes; simpler than fund formation but still needs counsel
    
  DIRECT/FOLLOW-ON:
    Existing LP additional commitment or new LP for specific portfolio company
    Common at MBL for Allevio expansion or HIVE completions capital
    Structure: Either fund capital call or direct investment at portfolio company level
    
LP fundraising pipeline (manage like an M&A pipeline):
  Stage 1: Identified — potential LPs; no conversation yet
  Stage 2: Introduced — first conversation; interest expressed
  Stage 3: Diligencing — LP reviewing materials; ask a legal or tax question
  Stage 4: Soft circled — verbal commitment received; not yet signed
  Stage 5: Committed — signed subscription + funds received
  
  Target metrics (fund raise at MBL scale):
    Identified to Introduced: ~60% (filter for accredited investors + strategy alignment)
    Introduced to Diligencing: ~40% (filter for capital availability + fund size fit)
    Diligencing to Soft Circle: ~50% (filter for timing + risk tolerance)
    Soft Circle to Committed: ~80% (verbal commitments generally hold if process is clean)
    
  Pipeline math: To close $10M fund → need $12.5M soft circles → need 25 diligencing LPs → need 62 introduced → need 100+ identified in pipeline
  
LP materials (the minimum package):
  1. Pitch deck / fund summary: 10-15 slides; thesis, track record, team, target returns, fees
  2. PPM: Attorney-drafted; all material disclosures; risk factors; regulatory filings
  3. Data room: Performance data; deal summaries; financial statements (audited if available)
  4. References: 3-5 existing LPs who will speak on Matt Mathison's behalf
  5. LP report samples: Most recent 1-2 LP reports showing reporting quality
  
Track record presentation:
  MOIC and IRR by deal (realized and unrealized)
  Conservative marks on unrealized positions
  Attribution of returns to value creation vs. market (demonstrate skill, not luck)
  Benchmark comparison: MBL vs. comparable vintage PE returns
  Honest disclosure of any underperforming positions (with recovery status)
  Attorney reviews track record presentation for Reg D compliance (no unsubstantiated claims)
```

## Output Format

```markdown
# Fundraising Plan — [Fund / Vehicle Name]
**Type:** [Fund raise / Co-invest / Follow-on] | **Target:** $[X]M | **Timeline:** [Start → Final close]
**Fund manager:** Matt Mathison | **Process owner:** Dr. Lewis

---

## Fundraising Summary

**Target raise:** $[X]M | **Hard cap:** $[X]M | **Minimum LP commitment:** $[X]
**Target close:** [Date] | **First close:** [Date] (at ≥$[X]M → begin deploying)
**SEC filing:** Form D required (attorney files within 15 days of first sale)
**Offering type:** Reg D 506(b) — accredited investors; no general solicitation

---

## LP Pipeline

| LP | Stage | Relationship | Potential commitment | Last contact | Next action |
|----|-------|-------------|---------------------|-------------|------------|
| [Name] | Soft circled | Matt — existing LP | $[X]K | [Date] | Send subscription docs |
| [Name] | Diligencing | Matt — referral | $[X]K | [Date] | Q&A call [Date] |
| [Name] | Introduced | Dr. Lewis — family office | $[X]K | [Date] | Send pitch deck |
| [Name] | Identified | Matt — golf contact | $[X]K | — | Matt to introduce |

**Pipeline total:** $[X]M soft circles; $[X]M diligencing; $[X]M identified
**Close probability (weighted):** $[X]M × 80% + $[X]M × 40% + $[X]M × 15% = $[X]M expected close

---

## Fundraising Timeline

| Milestone | Target date | Owner | Status |
|---------|-----------|-------|--------|
| PPM complete (attorney draft) | [Date] | Attorney + Matt | |
| LPA finalized | [Date] | Attorney | |
| Pitch deck complete | [Date] | Dr. Lewis + Matt | |
| Form D filed (first close) | Within 15 days of first sale | Attorney | |
| First close | [Date] | Matt | |
| Ongoing LP outreach | [Date]-[Date] | Matt + Dr. Lewis | |
| Final close | [Date] | Matt | |

---

## Materials Status

| Material | Status | Owner | Due date |
|---------|--------|-------|---------|
| Pitch deck | [Draft / Final] | Dr. Lewis | [Date] |
| PPM | [In progress — attorney] | Attorney | [Date] |
| LPA | [In progress — attorney] | Attorney | [Date] |
| Subscription documents | [Attorney draft] | Attorney | [Date] |
| Track record schedule | [Prepared / Under review] | Dr. Lewis | [Date] |
| LP report samples (last 2 quarters) | ✅ Available | | |
| Reference LP list (3-5 names) | [Matt to confirm] | Matt | [Date] |

---

## Fee Structure

| Fee | Rate | Basis | Standard? |
|-----|------|-------|---------|
| Management fee | [1.5-2.0]% | Committed / invested capital | ✅ Market |
| Carried interest | [20]% | Returns above [8]% hurdle | ✅ Market |
| Preferred return (hurdle) | [8]% | LP capital first | ✅ Market |
| GP commitment | [1-2]% of fund | Skin in the game | ✅ Market |

---

## Attorney Requirements

- [ ] PPM draft and review (Reg D compliance)
- [ ] LPA draft and review
- [ ] Subscription document templates
- [ ] Form D filing (SEC; within 15 days of first close)
- [ ] State blue sky filings (if required in LP states)
- [ ] Track record presentation review (no unsubstantiated performance claims)

---

## Matt Mathison Weekly Brief (active fundraise)

Week of [Date] — Fundraising status:
- **Soft circles:** $[X]M ([N] LPs) — [X]% of target
- **Diligencing:** $[X]M ([N] LPs)
- **Pipeline weighted close:** $[X]M
- **This week:** [Calls with X, Y; sent docs to Z]
- **Next week:** [First close if $[X]M by [Date]; outreach to [names]]
- **Action from Matt Mathison:** [Contact [LP] who went quiet / Approve fee terms / Approve first close date]
```

## Output Contract
- Attorney is required for all fundraising documents — no PPM, LPA, subscription document, or SEC filing is drafted or filed without attorney involvement; Dr. Lewis produces the pitch deck and tracks the LP pipeline; everything with legal liability (PPM, LPA, Form D) belongs to the attorney; a self-drafted PPM that omits required risk disclosures creates SEC and civil liability; the cost of attorney fees is a fraction of the cost of a regulatory action or LP dispute
- Track record is presented honestly with attorney review — no performance claims in the PPM or pitch deck that are not documented, auditable, and reviewed by counsel for Reg D compliance; if MBL has positions that underperformed, they are disclosed with the recovery plan; LPs who discover omitted underperforming positions post-close lose trust permanently and may have recourse; Dr. Lewis prepares the track record schedule from verified data (QuickBooks, audited financials, deal files) and attorney reviews it before any LP receives it
- Matt Mathison owns the LP relationships — Dr. Lewis builds the process infrastructure (pipeline tracker, materials, timeline) and manages the coordination, but LP conversations are Matt Mathison's; LPs at the lower-middle market size are investing in the GP, not the platform; Dr. Lewis is introduced to LPs where appropriate and handles follow-up logistics, data room access, and Q&A research; Matt Mathison is the relationship and closes the commitment
- HITL required: Dr. Lewis builds and manages the fundraising process; attorney drafts all legal documents and files all regulatory submissions; Matt Mathison owns LP conversations and approves all terms (management fee, carry, minimum commitment, hurdle rate); no LP receives the PPM without Matt Mathison approval; first close and final close decisions are Matt Mathison's; any deviation from standard LP terms (fee waivers, most-favored-nation provisions, co-investment rights) requires Matt Mathison approval

## System Dependencies
- **Reads from:** Investment thesis (strategy-investment-thesis), LP reports (strategy-lp-reporting — prior reports as LP data room materials), IRR/MOIC by deal (strategy-irr-model), portfolio review (strategy-portfolio-review), audited financial statements (QuickBooks), prior LP agreements
- **Writes to:** LP pipeline tracker (SharePoint/Investors/Fundraising/[Fund Name]/Pipeline/); fundraising timeline; materials library (PPM, pitch deck, subscription docs — SharePoint/Investors/Fundraising/[Fund Name]/Materials/); Form D (attorney files with SEC); Matt Mathison weekly brief; commitment records
- **HITL Required:** Dr. Lewis manages process; attorney drafts and files all legal documents; Matt Mathison owns LP conversations and approves all terms; Matt Mathison approves first and final close decisions; no PPM distributed without attorney review and Matt Mathison approval

## Test Cases
1. **Golden path:** MBL Fund II planning — target $15M, 5-6 LPs, 12-month raise → Dr. Lewis builds the fundraising plan: attorney engagement for PPM and LPA (5-week timeline; $25-40K estimated legal cost); pitch deck (Dr. Lewis drafts; Matt Mathison reviews); target: 8-10 LP conversations → 5-6 commitments at $2-3M each; LP pipeline: 3 existing LPs from Fund I (Matt outreach; warm); 5 family offices (Matt network + referrals); 2 institutional (long shot for Fund II scale); timeline: PPM final by Month 2; first close at $5M by Month 6; final close at $15M by Month 12; fee structure: 2% management fee, 20% carry, 8% hurdle, 1.5% GP commit; Form D filed within 15 days of first subscription; week 1 brief to Matt: PPM in progress; 3 warm LP calls scheduled; pipeline: $6M soft circled (2 existing LPs); materials ready by [date]; action from Matt: confirm GP commitment timing and source
2. **Edge case:** An LP wants to invest $5M but requests a reduced management fee (1.5% vs. 2%) in exchange for anchor LP status → This is a material fee modification that only Matt Mathison can decide; Dr. Lewis presents the trade-off to Matt Mathison: $5M anchor LP at 1.5% vs. 2% reduces management fees by $25K/year on their tranche; the anchor benefit is closing certainty and a first-close signal for other LPs; if Matt Mathison grants MFN (most-favored-nation) status, every subsequent LP at the same terms gets the same fee; Dr. Lewis calculates the full MFN cost: if all $15M at 1.5%, total management fee reduction = $75K/year; is the anchor certainty worth it? Matt Mathison decides; attorney adds MFN provision language if approved
3. **Adversarial:** An LP asks Matt Mathison for the audited financial statements from all three portfolio companies to do their own diligence → CPA-reviewed financials (not audited) are available for Allevio and HIVE; Column6 has internal financials reviewed by controller; Dr. Lewis prepares what's available and flags what's not; if the LP requires audited financials and MBL doesn't have them, this is either a deal requirement (MBL commissions an audit — $15-30K per company) or a negotiation point (LP accepts CPA-reviewed financials with disclosure); Matt Mathison decides whether the LP's requirements are worth the audit cost; Dr. Lewis prepares the data room with the best available financials and a clear disclosure of the level of review

## Audit Log
All fundraising materials retained permanently (regulatory record). PPM and LPA versions retained. Form D filings retained permanently. LP commitment records retained permanently. Pipeline tracking retained by fund. Fee terms by LP retained permanently. Attorney correspondence retained.

## Deprecation
Retire when MBL hires a dedicated CFO or fund administrator who manages the LP pipeline and fundraising process — with Dr. Lewis supporting the pitch materials and Matt Mathison owning the LP relationships throughout.
