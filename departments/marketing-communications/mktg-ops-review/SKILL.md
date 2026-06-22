---
name: mktg-ops-review
description: "Conduct marketing operations reviews for MBL Partners portfolio entities. Use when the user says 'marketing ops review', 'marketing operations review', 'marketing review', 'quarterly marketing review', 'annual marketing review', 'marketing retrospective', 'marketing performance review', 'marketing audit', 'marketing health check', 'marketing assessment', 'review marketing operations', 'how is marketing doing overall', 'marketing program review', 'marketing function review', 'marketing effectiveness review', 'portfolio marketing review', 'marketing across portfolio', 'how is marketing working', 'marketing snapshot', 'marketing state of the union', 'marketing check-in', 'marketing deep dive', 'marketing strategic review', 'marketing alignment review', 'is marketing working', 'marketing efficiency review', 'marketing productivity review', or 'marketing leadership review'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive|portfolio>] [--period <quarterly|annual>] [--action <conduct|report|present>] [--audience <entity-ceo|dr-lewis|matt-mathison>]"
---

# Marketing Operations Review

Conduct quarterly and annual marketing operations reviews for MBL Partners portfolio entities — synthesizing marketing performance, HIPAA compliance status, team health, and strategic alignment into a structured review that drives entity CEO decisions and Dr. Lewis's portfolio marketing posture. The marketing ops review is the governance document that connects all marketing activity to business outcomes and compliance standards.

## When to Use
- Quarterly marketing ops review for a single entity (entity CEO audience)
- Annual marketing performance review (entity CEO + Dr. Lewis audience)
- Portfolio-level marketing review across all entities (Dr. Lewis → Matt Mathison)
- Preparing for a portfolio company board meeting where marketing is on the agenda

## Marketing Ops Review Framework

```
QUARTERLY ENTITY MARKETING OPS REVIEW:

  SECTION 1 — PERFORMANCE AGAINST OKRs:
    Review each OKR: target vs. actual; RAG status; blocker assessment
    Source: mktg-okr-tracker; mktg-kpi-dashboard
    
  SECTION 2 — PIPELINE HEALTH:
    Marketing-sourced MQLs; SQL conversion; pipeline contribution %; marketing ROI
    Source: GoHighLevel; mktg-kpi-dashboard
    
  SECTION 3 — CHANNEL PERFORMANCE:
    Top-performing channels (cost per MQL; MQL volume); underperforming channels
    Recommended adjustments (if any)
    
  SECTION 4 — HIPAA COMPLIANCE STATUS (ALLEVIO QUARTERLY; OTHERS ANNUAL):
    All marketing tools: BAA status current?
    Content review process: adhered to?
    Any near-misses or issues this quarter?
    GA4 configuration: no member-page tracking confirmed?
    Source: mktg-marketing-ops-manager
    
  SECTION 5 — TEAM + VENDOR HEALTH:
    Marketing team or contractor capacity adequate?
    Vendor performance (North Vista or other)?
    Any hiring or vendor changes recommended?
    
  SECTION 6 — STRATEGIC ALIGNMENT:
    Is marketing strategy still aligned to entity growth priorities?
    Any market or competitive changes that require marketing response?
    Next quarter's focus areas
    
  SECTION 7 — BUDGET STATUS:
    Marketing spend vs. budget YTD; projected year-end variance
    Any budget adjustments needed for next quarter?
    Source: mktg-marketing-budget-manager

ANNUAL ENTITY MARKETING REVIEW (deeper than quarterly):
  All 7 sections above + :
    Full year OKR retrospective: what was set; what was achieved; why; what to do differently
    Annual marketing ROI: revenue from marketing-sourced closes / total marketing spend (12-month)
    Technology stack: is the current stack serving the entity? Any changes recommended?
    Brand and positioning: are the positioning and messaging still accurate? Competitive differentiation still strong?
    Relationship to North Vista: is the tier (1/2/3) still appropriate? Should it change?
    Year+1 OKR draft: entity CEO + Dr. Lewis set direction

PORTFOLIO-LEVEL MARKETING REVIEW (Dr. Lewis → Matt Mathison; annual):
  Cross-entity marketing performance summary:
    Each entity: marketing pipeline contribution; marketing ROI; key OKR status
    Portfolio trend: is marketing becoming more capable across entities?
    HIPAA governance health: Allevio — no incidents this year?
    Talent: is the marketing function growing appropriately across the portfolio?
    Investment: is total portfolio marketing spend generating ≥3× portfolio marketing ROI?
    Recommendations: any portfolio-level marketing decisions for Matt Mathison?

REVIEW AUDIENCE AND FREQUENCY:
  Quarterly entity review: entity CEO primary; Dr. Lewis attends Q2 and Q4
  Annual entity review: entity CEO + Dr. Lewis; results shared with Matt Mathison as portfolio summary
  Annual portfolio review: Dr. Lewis → Matt Mathison; February of each year
  Board/LP presentations: Dr. Lewis prepares marketing section if marketing is on agenda
```

## Output Format

```markdown
# Marketing Operations Review — [Entity / Portfolio] — [Quarter/Year]
**Prepared by:** Dr. John Lewis | **To:** [Entity CEO / Matt Mathison]
**Date:** [Date]

---

## Executive Summary (BLUF)
[3 bullet points: what's working; what needs attention; recommended action for next quarter]

---

## Section 1: OKR Performance

| Objective | Target | Actual | Status |
|-----------|--------|--------|--------|
| [Objective 1] | | | 🟢/🟡/🔴 |

---

## Section 2: Pipeline Health

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Marketing MQLs | | | |
| Marketing pipeline ($) | | | |
| Pipeline contribution % | | ≥30% | |
| Marketing ROI | | ≥3× | |

---

## Section 3: Channel Performance
[Top 2 channels; underperforming channel; recommendation]

---

## Section 4: HIPAA Compliance (Allevio)

| Item | Status | Notes |
|------|--------|-------|
| All tool BAAs current | ✅/⚠️ | |
| Content review process followed | ✅/⚠️ | |
| GA4 config (no member tracking) | ✅/⚠️ | |
| Any HIPAA incidents or near-misses | ✅ None / ⚠️ [detail] | |

---

## Section 5: Team + Vendor Health
[Status; any issues; recommendations]

---

## Section 6: Strategic Alignment
[Still aligned / adjustment needed; reason; recommended action]

---

## Section 7: Budget Status

| Item | Budget | Actual YTD | Variance | Projected year-end |
|------|--------|-----------|---------|-------------------|
| Total marketing spend | | | | |

---

## Decisions Required
1. [Decision — owner — due date]
```

## Output Contract
- The BLUF is non-negotiable for the executive summary — entity CEOs and Matt Mathison are busy; the marketing ops review opens with 3 bullet points that tell them what they need to know before they read the details; the 3 bullets are: (1) biggest win this quarter; (2) most important concern; (3) recommended action for next quarter; if the review starts with a methodology explanation or a data definitions section, Dr. Lewis rewrites the opening; the decision-maker gets the bottom line first, always
- HIPAA compliance status is reported in every Allevio review — even a "no issues this quarter" line in Section 4 is important; the absence of reporting on HIPAA compliance implies it is not being monitored; Dr. Lewis treats HIPAA compliance as a standing agenda item in every Allevio marketing review regardless of whether there were issues; if there is a near-miss (a tool was added without BAA review before Dr. Lewis caught it), it is reported honestly with the corrective action; there is no scenario where an Allevio HIPAA concern is omitted from the marketing ops review to make the quarter look clean; THRIVE Integrity applies
- Underperforming channels are reported and acted on — a quarterly marketing ops review that reports every channel as performing well is either a very good marketing program or a very incomplete review; Dr. Lewis requires the review to identify at least one underperforming area and either: (a) recommend an adjustment; or (b) explain why no adjustment is needed; "LinkedIn paid CPL is $450 vs. $120 target — we are reducing spend by 30% and redirecting to SEO content" is a healthy review; "everything is performing well" with no concerns is not; marketing is always improvable
- HITL required: quarterly entity review report → Dr. Lewis reviews before entity CEO presentation; Q2 and Q4 → Dr. Lewis attends entity CEO review; annual entity review → entity CEO + Dr. Lewis; Allevio HIPAA section → Dr. Lewis personal sign-off; annual portfolio review → Dr. Lewis prepares for Matt Mathison; board or LP presentation with marketing content → Dr. Lewis prepares section; any decision triggered by review → entity CEO authorizes (spend, channel, vendor, team)

## System Dependencies
- **Reads from:** mktg-okr-tracker (OKR status); mktg-kpi-dashboard (pipeline and channel metrics); mktg-marketing-ops-manager (HIPAA compliance and tool status); mktg-marketing-budget-manager (budget vs. actual); mktg-competitive-intelligence (strategic alignment — competitive context); mktg-north-vista-brand-manager (vendor health); all other mktg-* skills (referenced in relevant sections)
- **Writes to:** Quarterly marketing ops review (SharePoint → [Entity] → Marketing → Reviews → [Quarter Year]); Annual entity review; Annual portfolio review (Dr. Lewis → Matt Mathison); Board/LP marketing section (if applicable); Decision log from review; HIPAA compliance status records (Allevio — permanent)
- **HITL Required:** Entity CEO receives and reviews quarterly report; Dr. Lewis attends Q2/Q4; annual review → entity CEO + Dr. Lewis; HIPAA section → Dr. Lewis sign-off; portfolio review → Matt Mathison; any triggered decisions → entity CEO authorizes; board/LP marketing section → Dr. Lewis prepares

## Test Cases
1. **Golden path:** Allevio Q3 marketing ops review. Section 1 OKRs: MQL KR at 28/40 target (70% — on track but not ahead). Pipeline KR: $204K of $240K target (85% — on track). Section 2 Pipeline: MQLs 28; pipeline $204K; contribution 31% (above 30% target ✅); marketing ROI Q2 cohort 2.9× (below 3× — flagged ⚠️). Section 4 HIPAA: all BAAs current; content review followed 100%; GA4 config confirmed; no incidents. Section 3 Channel: LinkedIn paid ($180 CPL vs. $120 target — flagged ⚠️); email (open 33% ✅; click 4.2% ✅); events (2 MQLs from MGMA event; pipeline contribution $72K — positive). Recommendation: Reduce LinkedIn paid by 25%; redirect to event follow-up sequence (email) and content. Budget Q3: $16,500 of $18,750 quarterly budget spent (12% under — on track). Entity CEO + Dr. Lewis agree on channel adjustment. Q4 priorities confirmed.
2. **Edge case:** Annual portfolio marketing review for Matt Mathison shows that only 1 of 3 entities (Column6) is achieving ≥30% marketing pipeline contribution → Dr. Lewis: "Portfolio marketing contribution is behind target. My assessment: Allevio is at 22% (below 30%) because the broker referral channel is outperforming marketing channels — not because marketing is failing, but because we haven't set the right MQL target given broker concentration. HIVE is not designed to be marketing-pipeline-driven. For Allevio: I'm recommending we adjust the OKR to reflect realistic marketing contribution given broker channel performance, and set a separate broker-referral target. For the portfolio: the right framing for Matt is 'blended pipeline contribution from marketing + partners' — not marketing alone. I'll reframe the portfolio metric accordingly."
3. **Adversarial:** Entity CEO reviews the quarterly marketing ops report and disputes the marketing ROI calculation, claiming the pipeline data in GoHighLevel is wrong because the sales team hasn't been updating their deal stages → Dr. Lewis: "If GoHighLevel deal stages are not being updated by the sales team, the marketing pipeline contribution data is unreliable — and that's a GoHighLevel adoption issue, not a marketing reporting issue. Here's what I'm doing: (1) I'm pulling the raw GoHighLevel report and the sales pipeline from the entity CEO's own tracking to compare; (2) If sales is not updating stages, we need a CRM hygiene process — the entity CEO needs to require it; (3) I'll rebuild the marketing ROI calculation using whatever pipeline data we can verify. The point of raising this is not to protect the marketing ROI number — it's to fix the data so we can make good decisions. I need 48 hours to audit the GoHighLevel data."

## Audit Log
All quarterly entity marketing ops reviews retained permanently. Annual entity reviews retained permanently. Annual portfolio reviews retained permanently. HIPAA compliance records (Allevio — permanent; Section 4 of every Allevio review). Decision logs from reviews. Matt Mathison portfolio review records. Board/LP marketing section records.

## Deprecation
Review format updated annually or when entity growth stage changes materially. HIPAA section updated when HIPAA regulations change. Portfolio review updated when portfolio composition changes. Metrics and benchmarks updated when industry standards change.
