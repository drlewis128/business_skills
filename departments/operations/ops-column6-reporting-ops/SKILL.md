---
name: ops-column6-reporting-ops
description: "Manage Column6 / Siprocal client reporting operations and dashboards. Use when the user says 'client reporting', 'agency reporting', 'campaign reporting', 'performance reporting', 'reporting operations', 'reporting dashboard', 'reporting pipeline', 'campaign dashboard', 'client dashboard', 'analytics reporting', 'media reporting', 'reporting quality', 'reporting accuracy', 'reporting delivery', 'report delivery', 'report turnaround', 'report schedule', 'report automation', 'report template', 'report format', 'report design', 'reporting platform', 'reporting tool', 'attribution reporting', 'impression reporting', 'reach and frequency', 'frequency cap reporting', 'VCR reporting', 'viewability reporting', 'brand lift', 'brand lift study', 'campaign wrap report', 'end of campaign report', 'post-campaign report', 'campaign recaps', 'reporting SLA', 'reporting complaint', or 'agency data request'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--agency <name>] [--campaign <name>] [--report-type <weekly|end-of-flight|monthly|qbr|custom>] [--action <deliver|design|audit|automate|troubleshoot>] [--metric <vCR|delivery|viewability|frequency|all>]"
---

# Ops Column6 Reporting Ops

Manage Column6's client reporting operations — delivering accurate, on-time campaign performance reports to agencies, maintaining the reporting dashboard infrastructure, auditing reporting data for accuracy, and responding to agency data requests. Reporting quality is a key component of Column6's agency NRR: agencies that receive clear, accurate, and timely performance data have the evidence they need to continue and expand their spend; agencies that receive late, inaccurate, or confusing reports have a data gap that erodes trust and becomes a reason to test alternatives. Dr. Lewis treats reporting accuracy as a financial control — inaccurate VCR or delivery data that overstates performance creates billing liability when agencies audit; inaccurate data that understates performance fails the upsell opportunity.

## When to Use
- Weekly campaign performance reports are due
- End-of-flight campaign recap is due
- Agency requests ad-hoc data or analysis
- Reporting data accuracy audit
- Monthly QBR data preparation

## Column6 Reporting Framework

```
REPORTING CADENCE:

  WEEKLY (active campaigns):
    Delivery: automated dashboard or weekly PDF
    Metrics included: impressions delivered (vs. pacing); VCR; viewability; CTR (if applicable)
    Delivery: Monday for prior week's data
    Accuracy: validated against DSP data before delivery
    
  END-OF-FLIGHT (campaign completion):
    Final delivery report: total impressions; average VCR; average viewability; reach/frequency (if measured)
    Make-good note: if <90% delivery — make-good amount and timeline
    Delivery: within 5 business days of campaign completion
    Format: PDF + CSV data file
    
  MONTHLY SUMMARY (for agencies with multiple campaigns):
    Portfolio summary: all active campaigns; month-to-date performance
    Invoicing context: delivery confirmation supporting the invoice
    Delivery: by the 7th of the following month (supports invoice cycle)
    
  QBR PACKAGE (quarterly; for Tier 1 agencies):
    Quarterly performance summary: all campaigns; aggregate metrics
    YoY comparison: this Q vs. same Q prior year
    Channel performance breakdown: CTV vs. mobile vs. gaming
    Recommendations: Q+1 channel optimization based on performance data
    Prepared by: Column6 agency success team + Dr. Lewis review for data accuracy

REPORTING DATA STANDARDS:

  VCR (VIDEO COMPLETION RATE):
    Definition: % of impressions where the video was viewed to completion (100%)
    Target: ≥92% (Column6 North Star metric per CLAUDE.md)
    Measurement: in-player completion tracking (via DSP or ad server)
    Report: VCR by campaign; by channel; trend vs. prior period
    
  VIEWABILITY:
    Definition: % of impressions where the ad was in-view for the measurement period
    Standard: IAB/MRC viewability definition (50% of pixels in-view for 2 seconds for display; 50% in-view for 2 seconds for video — CTV is 100% in-view by default)
    Target: per IO terms (typically ≥70% for mobile; CTV is inherently viewable)
    
  DELIVERY:
    Impressions delivered (absolute) vs. contracted (absolute)
    Pacing % throughout flight
    Any shortfall: make-good obligation documented
    
  REACH AND FREQUENCY (premium campaigns):
    Unique reach: estimated unique viewers (de-duplicated)
    Average frequency: average impressions per unique viewer
    Frequency cap compliance: did Column6 respect the agreed frequency cap?
    
  IVT (INVALID TRAFFIC):
    Total IVT rate (reported when agency has third-party measurement)
    Source: third-party IVT vendor (MOAT; IAS; DoubleVerify)

REPORTING ACCURACY AUDIT:

  STEP 1 — MONTHLY DATA RECONCILIATION:
    DSP delivery data → Column6 reporting pipeline → report output
    Any variance between DSP and report output: flag and investigate
    Target: <0.5% variance (platform ops standard)
    
  STEP 2 — VCR METHODOLOGY VALIDATION:
    Ensure VCR is calculated consistently across all campaigns and channels
    Inconsistent methodology → agencies comparing VCR across campaigns get false comparisons
    
  STEP 3 — AGENCY DATA REQUEST RESPONSE:
    Ad-hoc requests: respond within 24 hours for Tier 1 agencies; 48 hours for Tier 2+
    Custom analysis: Column6 CEO or ops lead approves time allocation before committing
    Sensitive data: any data request that includes competitive information or identifies other advertisers → Column6 CEO approval before responding

REPORTING TOOLS:

  PRIMARY REPORTING:
    DSP native reporting (The Trade Desk; DV360): primary data source
    Third-party measurement: IVT; viewability; attribution (if applicable)
    Data aggregation layer: Column6's internal reporting consolidation tool
    
  CLIENT-FACING FORMATS:
    Dashboard (for self-serve data access — if Column6 offers): agency logs in directly
    PDF reports: formatted weekly/end-of-flight reports
    CSV exports: raw data for agencies that want to analyze themselves
    QBR decks: PowerPoint or Google Slides
```

## Output Format

```markdown
# Column6 Campaign Performance Report
**Campaign:** [Name] | **Agency:** [Name] | **Report period:** [Date range]
**Prepared by:** Column6 Operations | **Data validated:** ✅

---

## Delivery Summary

| Metric | Target | Actual | vs. Target |
|--------|--------|--------|-----------|
| Total impressions | [N]M | [N]M | [+/-N%] |
| VCR | ≥92% | [%] | [+/-] pts |
| Viewability | [Target%] | [%] | [+/-] pts |
| IVT rate | <2% | [%] | — |

---

## Weekly Pacing

| Week | Impressions | Pacing | VCR | Notes |
|------|------------|--------|-----|-------|
| Week 1 | [N]M | 98% | 94.1% | On track |
| Week 2 | [N]M | 91% | 93.8% | Slight slowdown — bid floor adjusted |

---

[Make-good note if applicable]
[Next campaign recommendation if end-of-flight]
```

## Output Contract
- Data is validated before every report is sent — Column6 does not send a report where the data has not been verified against the source (DSP); a report that shows 9.2 million impressions when the DSP shows 8.7 million is a false report; if the discrepancy is caught during validation, the investigation happens before the report goes out; if the discrepancy cannot be explained in 24 hours, the agency is notified that the report is delayed pending data reconciliation; an unexplained discrepancy is better disclosed proactively than discovered by the agency in their own ad server reconciliation
- VCR and viewability numbers are never rounded up — Column6 does not report 91.7% VCR as "approximately 92%"; reporting accuracy is the agency's basis for evaluating Column6's performance against the IO commitment; rounding a missed target upward is misrepresentation; if VCR is 91.7% against a 92% IO threshold, the report says 91.7% and the account manager has the conversation about the slight miss and what Column6 is doing to optimize; accurate data with explanation is more trustworthy than rounded data with no explanation
- Reporting SLA is a relationship commitment — "end-of-flight report within 5 business days" is a commitment; a late report tells the agency that Column6's operational discipline ends when the campaign ends; the final report is often what the agency uses to justify the Column6 line item internally; a late, incomplete, or inaccurate final report undermines the renewal conversation; Dr. Lewis tracks reporting SLA compliance monthly as an agency success health metric
- HITL required: any end-of-flight report showing VCR consistently below 92% → Column6 CEO review before distribution (to understand the context and ensure the account management conversation is prepared); competitive information in an agency data request → Column6 CEO approval; QBR data packages for Tier 1 agencies → Dr. Lewis data accuracy review + Column6 CEO approval before distribution; any report where Column6 is disclosing a performance shortfall (VCR miss; delivery shortfall) → account management lead aware and prepared to have the follow-up conversation

## System Dependencies
- **Reads from:** DSP platforms (primary delivery and performance data); third-party IVT/viewability measurement (MOAT; IAS; DoubleVerify); ops-column6-platform-ops (platform health — data accuracy validation); ops-column6-campaign-ops (campaign status and make-good obligations); fin-column6-io-billing (delivery data used for invoice verification)
- **Writes to:** Agency-facing performance reports (PDF; CSV); QBR data packages (Tier 1 agencies); monthly reporting summary (for fin-column6-io-billing invoice reconciliation); reporting SLA compliance tracker (Column6 CEO monthly); ops-column6-agency-success (reporting quality affects NRR and QBR outcomes); Dr. Lewis monthly ops review
- **HITL Required:** VCR consistently below 92% in end-of-flight report → Column6 CEO review before distribution; competitive data in agency request → Column6 CEO approval; QBR data for Tier 1 → Dr. Lewis data review + Column6 CEO approval; performance shortfall disclosure → account management lead aware; reporting pipeline variance >1% → Dr. Lewis review before reporting resumes

## Test Cases
1. **Golden path:** End-of-flight report due for [Agency] Campaign: 10 million impressions over 45-day flight. Pre-send data validation: DSP shows 10,242,600 impressions; reporting pipeline shows 10,242,600 (0.0% variance — clean). VCR: 93.8% (above 92% target). Viewability: 94.2% (CTV — inherently viewable). IVT rate: 1.3% (below 2% threshold). Delivery: 102.4% of contracted impressions. Report produced, validated, sent within 3 business days of campaign end. Account manager note: "Delivery exceeded target by 2.4% — we ran make-good from a prior campaign with this agency; that's why it's slightly over. No additional make-good obligation. Great campaign to reference in the QBR."
2. **Edge case:** Data validation reveals the reporting pipeline is showing 8.4M impressions but the DSP shows 9.1M — a 7.7% discrepancy → Dr. Lewis: "Reporting pipeline discrepancy found: 7.7% variance (DSP: 9.1M; pipeline: 8.4M). This is well above the 0.5% acceptable variance. The end-of-flight report is on hold. I've notified Column6 platform ops for investigation. Preliminary hypothesis: there was a 6-hour data feed failure on Day 22 of the campaign (from the October 15 P2 incident log) — the pipeline may not have backfilled those hours. If confirmed: the correct impression count is 9.1M (DSP is authoritative); the pipeline needs to be corrected; and the report can be produced from the DSP data directly. I'll have this resolved within 24 hours and notify the agency of the 24-hour report delay."
3. **Adversarial:** An agency asks Column6 to include competitor CPM rates in their quarterly report as a "benchmark" → Dr. Lewis: "Column6 cannot include competitor CPM data in client reports. That data is either: (1) from other Column6 clients (confidential — disclosing it would breach Column6's duty of confidentiality to those clients); or (2) estimated from industry sources (not accurate enough to be useful in a formal report). I can provide: publicly available industry benchmark data from sources like IAB, eMarketer, or ANA — these are appropriate benchmarks that don't compromise any client relationships. If the agency wants to understand Column6's pricing relative to the market, I can also include Column6's CPM performance trend (our historical performance for this agency) which shows whether they're getting better or worse value over time. Column6 CEO needs to approve before any benchmark comparison goes into a client report."

## Audit Log
All reports delivered (date; recipient; content). Data validation records (source; pipeline; variance; resolution). Reporting SLA compliance records (on-time vs. late; root cause for late reports). Agency data request records (what was requested; who approved; what was provided). Competitive data request refusals documented.

## Deprecation
Review reporting format and tooling annually as the CTV/mobile/gaming measurement ecosystem evolves (new third-party measurement vendors; new DSP native reporting features). The VCR and viewability reporting standards are updated as industry standards evolve.
