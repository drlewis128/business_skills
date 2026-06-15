---
name: deal-pipeline-tracker
description: "Track and manage the PE deal sourcing pipeline. Use when the user says 'deal pipeline', 'track deals', 'deal flow', 'deal sourcing', 'what deals are we looking at', 'deal status', 'pipeline update', 'inbound deals', 'deal tracking', or 'sourcing pipeline'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--mode <weekly|monthly|full>] [--stage <all|active|screen|diligence|closed|passed>]"
---

# Deal Pipeline Tracker

Track and manage the MBL Partners deal sourcing pipeline — from first contact through close or pass. Consistent pipeline tracking turns deal flow from a reactive activity into a managed function. It also reveals patterns: which sources produce good deals, what stage deals typically die, and how many deals are needed to close one investment.

## When to Use
- Weekly deal flow update — what's new, what's advancing
- Matt Mathison asks "what are we seeing in the market?"
- Monthly pipeline review — clean up stale deals, advance active ones
- LP asks about deal sourcing activity — demonstrate active deployment
- Evaluating a new deal source (broker, advisor, network) — how has their flow been?

## Pipeline Stages

```
Stage 0 — Sourced / Initial Contact:
  Received a teaser, heard about a company, or made first contact
  Not yet formally screened
  Volume: Highest — most deals die here

Stage 1 — Screening:
  Running the pe-deal-screener
  Verdict pending: Pursue / Watch / Pass
  Timeline: 1-5 days

Stage 2 — Initial Diligence / CIM Review:
  NDA signed; CIM received; management call scheduled
  Running pe-deal-screener output to investment-thesis-builder
  Timeline: 2-4 weeks

Stage 3 — LOI / IOI:
  Indicative offer submitted (IOI) or Letter of Intent (LOI)
  Negotiating price and terms
  Matt Mathison approval required
  Timeline: 2-4 weeks

Stage 4 — Full Diligence:
  Exclusivity granted; full diligence team engaged
  QoE (quality of earnings), legal, operational, technical
  Timeline: 6-10 weeks

Stage 5 — Documentation / Close:
  Purchase agreement; financing; regulatory approvals; close
  Timeline: 4-6 weeks

Closed — Portfolio:
  Investment completed; active portfolio company

Passed:
  Screened out at any stage; reason documented
```

## Output Format

```markdown
# Deal Pipeline — MBL Partners
**Date:** <date> | **Owner:** Dr. John Lewis
**Distribution:** Matt Mathison (internal only)

---

## Pipeline Summary

| Stage | # Deals | Total $ (ask) | Key names |
|-------|---------|-------------|----------|
| Stage 0: Sourced | <N> | $X | [Names] |
| Stage 1: Screening | <N> | $X | [Names] |
| Stage 2: Initial Diligence | <N> | $X | [Names] |
| Stage 3: LOI / IOI | <N> | $X | [Names] |
| Stage 4: Full Diligence | <N> | $X | [Names] |
| Stage 5: Documentation | <N> | $X | [Names] |
| **Active total** | **<N>** | **$X** | |
| Passed (YTD) | <N> | | |
| Closed (YTD) | <N> | $X | |

**Win rate (YTD):** <N> closed / <N> screened = X%
**Average time to close:** X months (from Stage 1 to close)

---

## Active Deals

| Company | Sector | Revenue | EBITDA | Ask | Stage | Source | Date entered | Next action | Due |
|---------|--------|---------|--------|-----|-------|--------|-------------|------------|-----|
| [Company A] | Healthcare | $X | $X | $X (X×) | Stage 2 | Banker | <date> | Mgmt call | <date> |
| [Company B] | O&G Svcs | $X | $X | $X (X×) | Stage 1 | Network | <date> | Screen complete | <date> |
| [Company C] | Media | $X | $X | TBD | Stage 3 | Direct | <date> | LOI response due | <date> |

---

## Recently Passed

| Company | Sector | Stage passed | Reason | Date | Revisit? |
|---------|--------|-------------|--------|------|---------|
| [Company D] | Retail | Stage 1 | Outside thesis — consumer | <date> | No |
| [Company E] | Healthcare | Stage 2 | Valuation: 12× EBITDA | <date> | Watch — if price drops |
| [Company F] | O&G | Stage 3 | Management integrity concern | <date> | No |

---

## Deal Source Analysis (YTD)

| Source | Deals received | Screened to Stage 2+ | Closed | Quality score |
|--------|--------------|---------------------|--------|--------------|
| Investment banker A | <N> | <N> | <N> | High |
| Investment banker B | <N> | <N> | <N> | Medium |
| Network referral | <N> | <N> | <N> | High |
| Direct outreach | <N> | <N> | <N> | Medium |
| Proprietary sourcing | <N> | <N> | <N> | — |

**Best source YTD:** [Source] — X% advance rate to Stage 2+
**Most active source:** [Source] — <N> deals submitted

---

## Deal Funnel Statistics (YTD)

| Stage | In | Advanced | Passed | Conversion |
|-------|----|---------|----|-----------|
| Stage 0 → 1 | <N> | <N> | <N> | X% |
| Stage 1 → 2 | <N> | <N> | <N> | X% |
| Stage 2 → 3 | <N> | <N> | <N> | X% |
| Stage 3 → 4 | <N> | <N> | <N> | X% |
| Stage 4 → Close | <N> | <N> | <N> | X% |
| **Overall (S0 → Close)** | **<N>** | **<N>** | | **X%** |

*Implication: To close 1 deal, MBL needs to source approximately X deals.*

---

## Matt Mathison Update

**Active pipeline:** <N> live deals ($X aggregate ask). [Stage 3 deal] is the most time-sensitive — LOI deadline <date>; need your direction by <date>. [Stage 2 deal] looks promising; ready to advance to LOI with your approval. [Stage 0/1 deal] is from [source] and fits our thesis — will screen this week. Passed on [Deal] due to [reason]. Pipeline is [healthy / thin / needs more sourcing].

**Action needed from Matt:** [Approve LOI for Company C / Connect with banker for Company A / None this week]
```

## Output Contract
- Next action and due date always on every active deal — a pipeline without next actions is a list, not a tracker
- Pass reason always documented — pipeline analysis requires knowing why deals die; patterns in pass reasons reveal sourcing or screening gaps
- Source quality always tracked — not all deal sources are equal; knowing which sources produce closable deals optimizes sourcing time
- Funnel statistics reported monthly — the deal funnel tells you how many deals you need to source to close one investment; this informs how much sourcing activity is required
- Matt Mathison actions always explicit and time-sensitive — if a LOI deadline is 5 days out, that's a priority item, not buried in a table
- HITL required: Dr. Lewis maintains the tracker; Matt Mathison reviews weekly; LOI/IOI submission requires Matt Mathison approval; NDA signing requires Matt Mathison direction; all deal advance past Stage 1 requires Matt Mathison review; no deal commitment without Matt Mathison

## System Dependencies
- **Reads from:** Inbound deal materials (teasers, CIMs, broker submissions), deal screen outputs, Matt Mathison direction
- **Writes to:** Deal pipeline tracker (SharePoint/Deals/Pipeline); deal folders per company (SharePoint/Deals/<Company>)
- **HITL Required:** Dr. Lewis maintains; Matt Mathison reviews and approves all stage advances past Stage 1; LOI/NDA require Matt Mathison; all investment decisions require Matt Mathison

## Test Cases
1. **Golden path:** Monthly pipeline update → 8 deals in pipeline; 1 in Stage 4 (Allevio add-on); 2 in Stage 2; 5 in Stage 0-1; YTD: 24 sourced, 6 to Stage 2, 2 LOIs, 1 close; win rate 4.2%; need to source ~24 deals to close 1; best source: banker A (3 of 6 Stage 2 advances); Matt Mathison update: Stage 4 deal on track; one Stage 2 opportunity ready for LOI recommendation
2. **Edge case:** A deal that was passed at Stage 1 (valuation too high) comes back 6 months later at a significantly lower price → re-engage; pull the prior screen from the pipeline tracker; the company fundamentals may have changed too (positively or negatively); re-run the screen with updated financials and new asking price; don't assume the prior screen is still valid if 6+ months have passed
3. **Adversarial:** A broker submits a deal with a tight process deadline (LOI due in 3 business days) without warning → do not submit a rushed LOI without adequate screening and Matt Mathison approval; tell the broker: "We're very interested; we need X more days to complete our review — can you grant an extension?"; if the broker won't extend, that's information about the deal process and perhaps the deal quality; never compromise diligence to meet an artificial deadline

## Audit Log
All deals retained with full history of stage changes, pass reasons, and outcomes. Source attribution maintained. Pipeline snapshots retained monthly. Matt Mathison approvals at key stages documented.

## Deprecation
Retire when MBL has a dedicated deal tracking CRM (Affinity, Navatar, Salesforce DealCloud, or similar) with pipeline tracking, source attribution, and deal analytics built in.
