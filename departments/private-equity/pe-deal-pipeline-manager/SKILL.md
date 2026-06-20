---
name: pe-deal-pipeline-manager
description: "Track and manage the MBL Partners deal pipeline from sourcing through closing. Use when the user says 'deal pipeline', 'pipeline', 'deal tracker', 'deal tracking', 'pipeline review', 'pipeline update', 'pipeline report', 'pipeline status', 'deal status', 'where are we on', 'what stage is', 'pipeline stages', 'deal stages', 'active deals', 'current deals', 'deals in process', 'deals in flight', 'deals in diligence', 'deals in LOI', 'signed LOI', 'exclusive', 'under LOI', 'LOI signed', 'in diligence', 'under diligence', 'term sheet', 'deal flow review', 'pipeline meeting', 'Monday deal board', 'GoHighLevel deals', 'deal CRM', 'deal management', 'deal metrics', 'conversion rate', 'deal velocity', 'time in stage', 'pipeline health', 'stale deal', 'dead deal', 'deal died', 'deal fell through', 'failed deal', 'kill a deal', 'pass on a deal', 'pass rate', 'win rate', or 'deals closed this year'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--stage <identified|nda|management-meeting|loi|diligence|closing|closed|passed>] [--action <update|review|report|escalate|close>] [--sector <healthcare|energy|ctv|general>] [--period <weekly|monthly|quarterly>]"
---

# PE Deal Pipeline Manager

Track and manage the MBL Partners deal pipeline from initial identification through signed closing — maintaining pipeline visibility across all active deals, tracking stage progression and time-in-stage, flagging stale or at-risk deals, and providing Matt Mathison with a current and accurate pipeline view. Pipeline management is the operational backbone of MBL's deal execution: without a clean, current pipeline, deals fall through cracks; time-in-stage problems (deals sitting too long in diligence or LOI without progress) cost MBL money in management time and kill deal momentum; and Matt Mathison cannot make capital allocation decisions without understanding the full deal pipeline.

## When to Use
- Weekly pipeline review
- A deal advances to a new stage (requires update)
- A deal is at risk of dying or has died
- Matt Mathison asks for a pipeline status update
- Monthly or quarterly pipeline reporting

## Deal Pipeline Framework

```
MBL DEAL PIPELINE STAGES:

  Stage 0 — IDENTIFIED:
    Company identified as a potential target
    No contact yet or first contact made
    Source: proprietary; banker; broker; network referral
    Time limit: 30 days to advance to NDA or pass
    
  Stage 1 — INITIAL CONTACT:
    First contact made with owner/CEO or banker
    Interest level being assessed
    Active conversation in progress
    Time limit: 45 days to advance to NDA or pass
    
  Stage 2 — NDA SIGNED / INFORMATION REVIEW:
    Non-disclosure agreement executed
    CIM (Confidential Information Memorandum) or initial financials received
    Dr. Lewis initial review: does this meet the screening criteria? (pe-deal-screener)
    Time limit: 21 days to advance to management meeting or pass
    
  Stage 3 — MANAGEMENT MEETING:
    Meeting scheduled and/or completed with target management team
    Matt Mathison may attend for higher-priority targets
    Investment thesis evaluation in progress
    Time limit: 30 days to advance to IOI/LOI or pass
    
  Stage 4 — IOI / INITIAL OFFER:
    Indication of Interest submitted (non-binding price range and structure)
    Awaiting seller response
    Time limit: 14 days after IOI submission to get response
    
  Stage 5 — LOI SIGNED / EXCLUSIVITY:
    Letter of Intent signed; exclusivity period active
    Due diligence initiated (pe-diligence-coordinator)
    Exclusivity period: typically 45-60 days
    Matt Mathison approval required to enter this stage
    
  Stage 6 — DUE DILIGENCE:
    Full due diligence underway (financial; commercial; legal; operational)
    Data room access confirmed
    DD team assembled (internal + advisors)
    Time limit: per LOI exclusivity period
    
  Stage 7 — DEFINITIVE AGREEMENT:
    Purchase agreement or definitive documents negotiated
    Final price and structure being confirmed
    Matt Mathison + legal counsel directly engaged
    
  Stage 8 — CLOSED:
    Transaction completed; capital deployed
    Company becomes portfolio company
    
  Stage 9 — PASSED:
    Deal declined (at any stage)
    Reason documented (no-fit; price; diligence finding; market conditions; timing)
    Relationship maintained where appropriate

PIPELINE HEALTH METRICS:

  VOLUME:
    Total active deals (Stages 0-7): target 10-15 at any time during investment period
    Deals in NDA+ stage (Stages 2-7): target 3-5 at any time
    Deals in LOI+ stage (Stages 5-7): target 1-2 at any time (capital commitment implied)
    
  VELOCITY:
    Average time-in-stage by stage
    Deals exceeding time limit → flag and review (stale)
    Overall conversion rate: identified → closed (benchmark: 1-3% in PE)
    
  QUALITY:
    Thesis-fit score at entry (pe-deal-screener output)
    Deals passing NDA stage → management meeting: target >50% thesis-fit
    Deals passing LOI → closed: target >70% (due diligence should catch real problems)

PIPELINE REVIEW CADENCE:

  WEEKLY (with Matt Mathison):
    New deals added this week
    Stage changes this week
    Stale deals (over time limit)
    Decisions needed from Matt this week
    
  MONTHLY:
    Full pipeline report (all stages; time in stage; key next actions)
    Pass analysis: why did deals die? (thesis; price; diligence)
    Sourcing effectiveness: where are good deals coming from?
    
  QUARTERLY:
    Pipeline vs. deployment plan
    Capital allocation forecast
    Investment thesis calibration
```

## Output Format

```markdown
# Deal Pipeline Report — [Date]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Pipeline Summary

| Stage | Count | Notes |
|-------|-------|-------|
| Stage 0-1: Identified / Initial Contact | [N] | |
| Stage 2: NDA / Info Review | [N] | |
| Stage 3: Management Meeting | [N] | |
| Stage 4: IOI | [N] | |
| Stage 5: LOI / Exclusivity | [N] | ← Capital commitment implied |
| Stage 6: Due Diligence | [N] | |
| Stage 7: Definitive Agreement | [N] | |
| **Active total** | **[N]** | |

---

## Active Deal Detail

| Company | Sector | Rev (est.) | Stage | Days in stage | Time limit | Status | Next action |
|---------|--------|-----------|-------|--------------|-----------|--------|------------|
| [Allevio Add-on A] | Healthcare | $5M | Stage 3 | 18 | 30 | ✅ On track | Mgmt follow-up |
| [HIVE Royalty B] | Energy | $2M | Stage 2 | 24 | 21 | 🔴 Over limit | Advance or pass |
| [Column6 Target C] | CTV | $8M | Stage 5 | 12 | 60 | ✅ DD initiated | [Banker] follow-up |

---

## Decisions Needed from Matt

1. [Company B]: Advance to Management Meeting or pass? Time limit exceeded — needs decision today.
2. [Company C]: Approve LOI term sheet revision? Seller requesting $[X] price adjustment.
```

## Output Contract
- The pipeline is always current — a pipeline report that is more than 5 days out of date is useless; deal momentum lives and dies on daily attention; Dr. Lewis updates the pipeline in GoHighLevel (or Monday.com deal board) within 24 hours of any stage change, new information, or decision; Matt Mathison's weekly pipeline review is based on the current state, not a snapshot from last week; a stale pipeline creates the risk that a deal slips through without attention
- Stale deals are named and resolved — a deal sitting in Stage 2 for 45 days when the time limit is 21 days is not "in progress"; it is either dead (but not acknowledged) or needs a decision to advance; Dr. Lewis flags every stale deal at the weekly pipeline review and asks for a decision: advance or pass? keeping stale deals in the pipeline inflates the pipeline count and creates false confidence in deal activity; Matt Mathison gets a stale deal flag in the weekly briefing if any deal has exceeded its time limit
- Every pass has a documented reason — when a deal is passed, the reason is logged in GoHighLevel; the reasons aggregate over time to reveal patterns in the investment thesis (we keep passing on deals over $12M EV because they're priced for perfection; we're seeing too many fee-for-service healthcare deals that don't fit the MSO thesis); without pass documentation, the thesis calibration is based on intuition; with it, the thesis can be refined based on actual market data
- HITL required: Stage 5 (LOI signing) → Matt Mathison explicit approval; Stage 7 (definitive agreement) → Matt Mathison directs; any deal with >$5M equity check → Matt involved from Stage 3; any deal that Dr. Lewis recommends killing after Stage 4 (post-IOI) → Matt Mathison confirms the pass decision; deals involving a company Matt has a personal relationship with → Matt advises on how to handle; any price negotiation above IOI level → Matt Mathison leads or approves the position

## System Dependencies
- **Reads from:** pe-deal-sourcer (new deals entering Stage 0); pe-deal-screener (thesis fit evaluation at Stage 2); GoHighLevel CRM (pipeline data); pe-loi-manager (LOI status and terms); pe-diligence-coordinator (DD progress for Stage 6 deals); Monday.com (deal board visibility)
- **Writes to:** GoHighLevel CRM (deal stage updates; contact history; next actions); Monday.com deal board; pipeline reports (SharePoint → Deals → Pipeline → [YYYY]); Matt Mathison briefings (weekly pipeline review; stage change notifications; stale deal flags); pe-deal-screener (screen at Stage 2); pe-loi-manager (advance to Stage 5)
- **HITL Required:** Stage 5 (LOI) → Matt approval; Stage 7 (definitive agreement) → Matt leads; deals >$5M equity → Matt from Stage 3; post-IOI pass decision → Matt confirms; personal relationship deals → Matt advises; price negotiation → Matt approves position

## Test Cases
1. **Golden path:** Weekly pipeline review. 12 active deals: 6 in Stages 0-1 (sourcing); 3 in Stage 2 (NDA); 2 in Stage 3 (management meetings); 1 in Stage 6 (due diligence). One deal in Stage 2 has been there 25 days (over 21-day limit). Dr. Lewis pipeline report: "[Company B] in NDA has been there 25 days — over our 21-day limit. The initial financials look thin on EBITDA margin (4% vs. our target 15%+). I recommend we pass unless we can see an adjusted EBITDA story that closes the gap. Matt: do you want to request management call to discuss or pass now?" Matt says pass. Dr. Lewis closes Stage 2 → Stage 9 (Passed) with reason: "EBITDA margin below target; no clear path to 15%+."
2. **Edge case:** Two deals simultaneously advance to Stage 5 (LOI) in the same month — combined equity check would be $11M (near the fund's available dry powder) → Dr. Lewis: "We have two deals simultaneously at the LOI stage — [Company C] ($6M equity) and [Company D] ($5M equity). Combined: $11M, which is approximately [X%] of remaining dry powder. I recommend we prioritize [Company C] (healthcare MSO — higher thesis fit) and slow-play [Company D] (general services — lower priority). Matt: your call on whether to pursue both simultaneously and manage the capital deployment risk, or focus resources on [Company C] first. If we can't close both, [Company C] is my recommendation."
3. **Adversarial:** A banker pressures Dr. Lewis to skip the management meeting stage and go directly to LOI for a deal, claiming "there are 3 other bidders ready to submit" → Dr. Lewis: "We don't skip management meetings before signing an LOI. The management team quality is one of the top 3 things that determine whether an investment thesis holds — I won't recommend an LOI to Matt without that meeting. If the process timeline doesn't allow for a management meeting before LOI, we'll either submit an IOI subject to management meeting confirmation, or we'll pass. I'm not asking for a delay — I'm asking for a 60-minute call with the CEO before we commit capital. If the seller won't provide that, the process tells us something about what a working relationship with them will look like."

## Audit Log
All pipeline stage history retained (with dates; decision maker; reason). Pass decisions retained with reasons. LOI submission records retained. Management meeting notes retained. Pipeline reports retained (weekly; monthly; quarterly). Capital deployment forecasts retained.

## Deprecation
Deal pipeline management is active for the fund's investment period and winds down as the portfolio matures. GoHighLevel CRM pipeline stages are updated if the investment thesis changes or new stages are added to the process.
