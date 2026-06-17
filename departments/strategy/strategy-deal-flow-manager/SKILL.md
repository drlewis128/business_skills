---
name: strategy-deal-flow-manager
description: "Track and manage the M&A deal pipeline — from sourcing through close. Use when the user says 'deal flow', 'deal pipeline', 'deal tracker', 'M&A pipeline', 'deal log', 'what deals are we looking at', 'active deals', 'deal status', 'pipeline management', 'deal tracking', 'acquisition pipeline', 'where are we on the deals', 'deal activity', 'deal register', or 'track our deals'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--stage <update|review|add-deal>] [--entity <acquirer>] [--deal <target name>]"
---

# Deal Flow Manager

Track and manage the M&A deal pipeline for MBL Partners — maintaining visibility into every acquisition opportunity from initial sourcing through close, so Matt Mathison can see the full deal landscape at any time and Dr. Lewis can ensure no opportunity falls through the cracks. At PE portfolio scale, deal flow is a discipline: good deals come from consistent sourcing relationships and rapid screening, not from waiting for brokers to call. The deal flow manager is the system of record for all acquisition activity.

## When to Use
- Weekly or monthly deal pipeline review with Matt Mathison
- A new opportunity surfaces — add it to the pipeline
- Matt Mathison asks "where are we on deals?"
- Deal stage changes (screen → diligence → LOI → close)
- A deal goes dead — record why for sourcing intelligence
- Quarterly deal sourcing review — are we generating enough opportunities?

## Deal Flow Framework

```
Pipeline stages:
  Stage 0 — Sourced: Opportunity identified; no evaluation yet
  Stage 1 — Screened: Initial M&A screen complete (strategy-m-and-a-screener); Go/No-go decision made
  Stage 2 — Active: Approved to pursue; management contact made; CIM requested or received
  Stage 3 — Diligence: Exclusivity signed or awarded; financial/operational/legal diligence underway
  Stage 4 — LOI: LOI signed; terms negotiated; subject to confirmatory diligence
  Stage 5 — Under Contract: Purchase agreement signed; closing conditions underway
  Stage 6 — Closed: Transaction complete; portfolio company or tuck-in
  Stage X — Dead: Opportunity passed or fell through; reason documented
  
Deal sourcing channels (MBL standard):
  Proprietary: Direct owner outreach; attorney/accountant referrals; industry contacts
  Banker-run: CIMs from investment bankers; teaser sheets; auction processes
  Portfolio company: CEOs identify tuck-in opportunities within their markets
  LP/investor network: Contacts in the LP base with deal referrals
  
Deal scoring at screen:
  Thesis alignment: 1-5 (5 = perfect fit)
  Financial quality: 1-5 (margin, growth, revenue quality)
  Valuation: 1-5 (at likely ask price vs. return threshold)
  Execution risk: 1-5 (5 = low risk)
  Timing: 1-5 (5 = motivated seller, good process)
  Composite: Average; ≥3.5 = pursue; 2.5-3.5 = conditional; <2.5 = pass
  
Pipeline velocity metrics:
  Deals sourced per quarter: Target 10-15 for MBL at current scale
  Screen-to-pursue rate: ~30-40% is healthy (screen is working)
  Pursue-to-LOI rate: ~20-25% is healthy
  LOI-to-close rate: ~60-70% is healthy
  Average hold from first contact to close: 4-9 months for tuck-in; 6-18 months for platform
```

## Output Format

```markdown
# M&A Deal Pipeline — MBL Partners
**Date:** [Date] | **Maintained by:** Dr. John Lewis | **Matt Mathison reviewed:** [Date]

---

## Pipeline Summary

| Stage | Count | Total estimated deal value | Notes |
|-------|-------|--------------------------|-------|
| 0 — Sourced | [N] | — | |
| 1 — Screened | [N] | $[X]M aggregate | |
| 2 — Active | [N] | $[X]M aggregate | |
| 3 — Diligence | [N] | $[X]M | |
| 4 — LOI | [N] | $[X]M | |
| 5 — Under Contract | [N] | $[X]M | |
| **Active pipeline** | **[N]** | **$[X]M** | |
| Closed YTD | [N] | $[X]M | |
| Dead YTD | [N] | — | [Sourcing intelligence] |

---

## Active Deals

### Stage 3-4 (Diligence / LOI) — High priority

| Deal | Acquirer | Stage | Description | Est. value | Score | Next action | By |
|-----|---------|-------|------------|-----------|-------|-----------|---|
| [Target] | [Entity] | LOI | [2-line description] | $[X]M | [X]/5 | [Action] | [Date] |

### Stage 2 (Active pursuit)

| Deal | Acquirer | Description | Est. value | Score | Status | Next action |
|-----|---------|------------|-----------|-------|--------|-----------|
| | | | | | | |

---

## Recently Dead Deals (last 90 days)

| Deal | Why dead | Learning | Would we revisit? |
|-----|---------|---------|-----------------|
| [Target] | [Price too high / Thesis miss / Seller withdrew] | [What we learned] | [Yes — at $X / No — thesis miss / Monitor] |

---

## Sourcing Activity

**Deals sourced this quarter:** [N] | **Prior quarter:** [N]
**Sources this quarter:**
- Proprietary (attorney/accountant referrals): [N]
- Banker CIMs: [N]
- Portfolio CEO referrals: [N]
- Other: [N]

**Sourcing quality assessment:** [Top sources are generating: qualified / unqualified leads]

---

## Matt Mathison Deal Brief

MBL deal pipeline [Date]: [N] active deals, $[X]M aggregate. Hot deal: [Name] — [Stage], [X]/5 score, next step by [Date]. New this week: [Name] (screened — [Pursue/Pass]). Dead: [Name] ([reason in 5 words]). Sourcing velocity: [On track / Low — need more outreach]. Action needed from Matt Mathison: [None / Approve LOI on [Deal] / Review screen on [Deal]].
```

## Output Contract
- The pipeline is always current — a deal pipeline that's 2 weeks stale is worse than no pipeline because it creates false confidence; Dr. Lewis updates the pipeline within 24 hours of any stage change, any new opportunity, or any deal going dead; the pipeline is the single source of truth for all M&A activity; conversations about deals that aren't in the pipeline don't exist officially
- Dead deal intelligence is as valuable as live deal intelligence — why a deal died tells Dr. Lewis and Matt Mathison what's working and what isn't in the market; a deal that died because the seller had unrealistic price expectations is different from a deal that died because we moved too slowly; dead deal patterns (e.g., consistently losing deals at LOI stage) reveal process problems; Dr. Lewis tracks and analyzes dead deals quarterly
- Pipeline velocity must be managed proactively — if the pipeline shows 2 sourced and 0 active opportunities, the next investment will come from the next random call rather than from a curated set of options; Dr. Lewis reviews sourcing velocity quarterly and recommends specific outreach actions when the pipeline is thin; "we'll wait for good deals to come to us" is not a sourcing strategy at MBL scale
- HITL required: Dr. Lewis maintains the pipeline and produces the report; Matt Mathison reviews weekly (brief) and monthly (full pipeline); all Stage 2+ decisions require Matt Mathison approval; LOI and purchase agreement require Matt Mathison + attorney; no deal proceeds past screening without Matt Mathison's go-ahead

## System Dependencies
- **Reads from:** M&A screens (strategy-m-and-a-screener), LOI documents (strategy-loi-builder), due diligence status (strategy-due-diligence-coordinator), investment theses (strategy-investment-thesis)
- **Writes to:** Deal pipeline register (SharePoint/Strategy/DealFlow/Pipeline/); Matt Mathison deal brief; portfolio company tuck-in tracking; attorney engagement log
- **HITL Required:** Dr. Lewis maintains; Matt Mathison approves all Stage 2+ decisions; attorney for LOI and purchase agreement; no deal proceeds without Matt Mathison approval

## Test Cases
1. **Golden path:** Monthly pipeline review for Matt Mathison → Pipeline status: 8 deals sourced in Q2 (vs. Q1: 6 — improving); 3 at Stage 1 (screened); 2 at Stage 2 (active); 0 at Stage 3 (no current diligence); Active deal 1: Scottsdale Physical Therapy Group — 4-provider tuck-in for Allevio, score 3.8/5, management conversation scheduled for next week, estimated value $1.1M; Active deal 2: Utah dental group — 12-provider platform, score 3.2/5, on hold pending Matt Mathison decision on dental thesis extension; Dead this quarter: 1 (HVAC company — immediate pass, off-thesis); sourcing: 5 from attorney/accountant referrals, 2 from banker CIMs, 1 from Allevio CEO referral; assessment: sourcing from portfolio CEO referrals is high quality (Allevio CEO knows the AZ healthcare market); Matt Mathison briefed; action: approve proceeding to management meeting on Scottsdale PT
2. **Edge case:** Three LOIs are lost in a row — the seller went with a competitor's offer → Dead deal pattern analysis: all three were proprietary deals where the seller had multiple conversations before we engaged; in each case, our LOI was competitive but a competitor moved faster; diagnosis: we are moving too slowly from first management meeting to LOI (currently averaging 45 days; competitors appear to be moving in 20-25 days); recommendation: establish an expedited LOI process (template + attorney pre-engagement) to compress timeline to 21 days; Matt Mathison approves; Dr. Lewis implements
3. **Adversarial:** CEO of Allevio is having ongoing conversations with a potential tuck-in target but hasn't told Dr. Lewis → Any potential acquisition, no matter how early the conversation, must be in the deal pipeline; CEO discretion on deal conversations is a governance gap; the Allevio CEO is building a relationship, which is healthy, but if that relationship advances to price discussion without Dr. Lewis and Matt Mathison in the loop, MBL loses oversight and control; Dr. Lewis discusses this with the CEO and establishes a norm: any conversation where acquisition is mentioned gets logged in the pipeline within 48 hours, even at Stage 0; this protects both the CEO and MBL

## Audit Log
Deal pipeline log maintained continuously and retained permanently. Stage change records with dates retained. Matt Mathison approval records retained. Dead deal rationale retained (sourcing intelligence). Attorney engagement records retained. All LOI and purchase agreement documents retained permanently.

## Deprecation
Retire when MBL develops a dedicated M&A/corp dev function with a deal management platform (Pipedrive, DealCloud, or equivalent) — with Dr. Lewis reviewing the pipeline for thesis alignment and Matt Mathison receiving the same executive brief regardless of who maintains the underlying system.
