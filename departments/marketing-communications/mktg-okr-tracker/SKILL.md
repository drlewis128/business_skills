---
name: mktg-okr-tracker
description: "Set and track marketing OKRs for MBL Partners portfolio entities. Use when the user says 'marketing OKR', 'marketing objectives', 'marketing goals', 'marketing targets', 'set marketing goals', 'marketing planning', 'annual marketing plan', 'quarterly marketing plan', 'marketing strategy plan', 'marketing priorities', 'marketing roadmap', 'what should marketing focus on', 'marketing focus areas', 'marketing objective', 'key result', 'OKR review', 'OKR check-in', 'are we on track', 'marketing quarterly review', 'marketing annual planning', 'marketing goal setting', 'marketing strategic priorities', 'marketing alignment', 'align marketing to business goals', 'marketing and business goal alignment', 'marketing and revenue goal alignment', 'connect marketing to pipeline', or 'marketing contributing to growth'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--period <annual|quarterly>] [--action <set|review|track|report>]"
---

# Marketing OKR Tracker

Set and track marketing OKRs (Objectives and Key Results) for MBL Partners portfolio entities — connecting marketing objectives to entity business goals, defining measurable key results, and tracking progress quarterly. Marketing OKRs prevent marketing from becoming a list of activities; they tie every marketing initiative to a specific, measurable business outcome.

## When to Use
- Annual marketing planning — setting OKRs for the coming year
- Quarterly OKR check-in — tracking progress and adjusting
- Aligning a new entity's marketing goals to MBL's portfolio growth targets
- Reviewing marketing OKRs at year-end and assessing what was achieved

## OKR Framework

```
OKR STRUCTURE:
  Objective: aspirational direction (qualitative; memorable)
  Key Result: measurable outcome that proves the objective was achieved (quantitative; time-bound; binary: achieved or not)
  Rules: 3-5 objectives max; 2-4 key results per objective; KRs are outcomes, not activities
  
  Bad KR: "Publish 2 blog posts per week" (activity)
  Good KR: "Grow organic employer traffic 30% by Q4 from employer-focused blog content" (outcome)

ANNUAL MARKETING OKRS BY ENTITY:

  ALLEVIO MARKETING OKRs (sample; Dr. Lewis + Allevio CEO set annually):
  
    Objective 1: Build Allevio as the recognized care coordination solution for Arizona employers
      KR 1.1: Generate 40 employer MQLs from marketing channels (LinkedIn + events + email) by Q4
      KR 1.2: Achieve ≥30% of Allevio new employer pipeline attributed to marketing by Q4
      KR 1.3: Secure 2 speaking opportunities at MGMA or SHRM AZ by Q3
      KR 1.4: Publish 12 employer-facing content pieces (case studies + blog + webinars) that meet HIPAA standards
      
    Objective 2: Build marketing infrastructure for scale
      KR 2.1: Launch GoHighLevel employer automation (3 sequences: demo; download; event) with BAA confirmed by Q2
      KR 2.2: Configure GA4 employer-only tracking (no member pages; Dr. Lewis HIPAA sign-off) by Q1
      KR 2.3: Build reference library of 5 employer references by Q3
      
  COLUMN6 MARKETING OKRs (sample; Dr. Lewis + Column6 CEO set annually):
  
    Objective 1: Position Column6 as the agency-preferred CTV + programmatic partner
      KR 1.1: Generate 25 agency MQLs from marketing channels by Q4
      KR 1.2: Achieve ≥30% of new agency pipeline from marketing
      KR 1.3: Earn 1 industry award (AdExchanger or IAB) by Q4
      KR 1.4: Publish Column6 self-serve CTV performance data (VCR; IVT) as a quarterly public proof point
      
    Objective 2: Build agency partnership program
      KR 2.1: Activate 5 agency co-marketing relationships (co-branded materials + joint webinar) by Q3
      KR 2.2: Agency NRR ≥95% (marketing contribution to retention)
      
  HIVE PARTNERS OKRs (sample; minimal marketing):
  
    Objective 1: Maintain landowner and LP trust through consistent, transparent communication
      KR 1.1: Send 12 monthly landowner update letters (100% delivery) on time
      KR 1.2: Send 4 quarterly LP letters (100% reviewed by Dr. Lewis + Matt Mathison; sent within 10 days of quarter close)
      KR 1.3: Zero LP complaints about communication quality or accuracy

QUARTERLY OKR CHECK-IN PROCESS:
  Timing: first 2 weeks of each quarter (reviewing prior quarter)
  Participants: entity CEO + marketing lead + Dr. Lewis (for Q2 and Q4; entity CEO + marketing for Q1 and Q3)
  Format: review each KR: score (0-100%); RAG status; blocker (if any); Q+1 adjustment (if needed)
  Rules: KRs are not changed mid-quarter unless the underlying business goal changes; if a KR is set wrong, learn from it for next quarter
  
ANNUAL OKR PLANNING CADENCE:
  November: entity CEO + Dr. Lewis draft OKRs for coming year
  December 1: Dr. Lewis reviews; aligns to MBL portfolio goals; HIPAA compliance review for Allevio KRs
  December 15: entity CEO approves; OKRs finalized
  January: marketing lead receives OKRs; builds Q1 activity plan to support KRs
```

## Output Format

```markdown
# Marketing OKR Report — [Entity] — [Quarter/Year]
**Prepared by:** Marketing Lead | **To:** Entity CEO + Dr. Lewis

---

## OKR Summary

| Objective | Status | Q achievement |
|-----------|--------|--------------|
| [Objective 1] | On track / At risk / Behind | [X]% |

---

## Detailed OKR Tracking

### Objective 1: [Name]
| Key Result | Target | Current | % Complete | RAG | Blocker |
|-----------|--------|---------|-----------|-----|---------|
| KR 1.1: [description] | [X] | [Y] | [%] | 🟢/🟡/🔴 | None / [Blocker] |

---

## HIPAA Compliance Check (Allevio)
- [ ] All content KRs: HIPAA review planned for each deliverable ✅
- [ ] GoHighLevel automation KRs: BAA confirmed before activation ✅

---

## Recommended Adjustments
[Only if underlying business goal has changed — not because a KR is hard]

---

## Q+1 Preview
[Top 3 priorities for next quarter based on current OKR trajectory]
```

## Output Contract
- OKR review is outcome-focused, not activity-focused — a quarterly check-in where the marketing lead presents a list of campaigns run, emails sent, and events attended is not an OKR review; the OKR review asks: did we move the key results?; "we ran 3 webinars" is relevant only if one of the KRs is "generate 25 webinar registrations" and the outcome is measured; Dr. Lewis requires the check-in to start with the KR scorecard (where are we vs. target?) before discussing any activities
- Missed KRs are learning events, not failures to be hidden — a KR at 40% of target at year-end should be documented with an honest assessment of why: wrong target?; wrong strategy?; underfunded?; outside control?; learning from missed KRs is how marketing gets better; a marketing lead who claims 85% on every KR every quarter is either setting KRs too easy or is reporting dishonestly; Dr. Lewis expects some KRs to be missed; the learning documentation is the value
- OKRs connect marketing to entity revenue targets — before setting any KR, Dr. Lewis starts with the entity's annual revenue goal: "If Allevio's GRR target is $X, what marketing MQL volume and close rate do we need to contribute 30% of new employer revenue from marketing?"; the math drives the KR; if the math says "we need 50 MQLs to hit the pipeline target" and the budget can realistically generate 25, Dr. Lewis surfaces the gap to the entity CEO before the year starts, not at Q4 retrospective
- HITL required: annual OKR setting → entity CEO + Dr. Lewis (Allevio and Column6 OKRs); Allevio HIPAA KRs → Dr. Lewis confirms all content and automation KRs include HIPAA review steps; Q2 and Q4 OKR reviews → entity CEO + Dr. Lewis in review; MBL portfolio OKR summary → Dr. Lewis provides to Matt Mathison; OKR adjustments → entity CEO approves mid-year if business goal changes

## System Dependencies
- **Reads from:** mktg-kpi-dashboard (KPI data populates OKR progress tracking); mktg-marketing-budget-manager (budget drives achievability of KRs — if budget is cut, KRs should be adjusted); entity revenue targets (from entity CEO / MBL portfolio planning); mktg-demand-generation-manager (pipeline contribution KRs tied to demand gen programs)
- **Writes to:** Annual OKR document (SharePoint → [Entity] → Marketing → OKRs → [Year]); quarterly check-in records; HIPAA compliance review notes (Allevio KRs); entity CEO OKR sign-off records; Matt Mathison portfolio OKR summary (annual)
- **HITL Required:** Annual OKR → entity CEO + Dr. Lewis; Allevio HIPAA KRs → Dr. Lewis; Q2/Q4 reviews → entity CEO + Dr. Lewis; MBL portfolio summary → Dr. Lewis → Matt Mathison; mid-year adjustments → entity CEO approves

## Test Cases
1. **Golden path:** Allevio annual OKR planning. Dr. Lewis + Allevio CEO review: Allevio's GRR target is $1.2M new employer ARR. At 30% marketing contribution = $360K from marketing-sourced employers. Average employer contract = $36K. Need 10 new marketing-sourced employers. MQL→ SQL→ close rates: 40% MQL→SQL; 50% SQL→close. Back-calculation: need 50 MQLs to produce 10 closed employers. KR 1.1 set: "Generate 50 employer MQLs from marketing channels by Q4." Budget check: $65K marketing budget; CPL target = $1,300. Feasibility confirmed. HIPAA: KR includes 12 content pieces; Dr. Lewis reviews note: "All content KRs require HIPAA review milestone before publication — built into content plan." Entity CEO approves. OKRs finalized December 15.
2. **Edge case:** Column6 KR 1.3 (earn 1 industry award by Q4) is at risk in Q3 because Column6 didn't submit to AdExchanger on time → Dr. Lewis: "We missed the AdExchanger deadline. Options: (1) submit to Digiday Technology Awards (deadline October 15 — we can make it); (2) submit to IAB Mixx Awards (deadline November 1); (3) accept this KR as missed and document why. My recommendation: submit to Digiday immediately — the Digiday Tech Award in programmatic is credible with our agency audience and we have the data. This is fixable. I need a 72-hour window to brief the Column6 CEO on the submission, get approval, and build the draft. Can we move this week?"
3. **Adversarial:** Marketing lead presents year-end OKR review where all 4 objectives are reported as "on track" (80%+) but entity CEO's view is that marketing underperformed → Dr. Lewis: "There's a gap between the OKR self-assessment and the entity CEO's perception. Let me audit the scoring: (1) are the KRs being measured with the agreed definitions (MQL definition; attribution model; HIPAA-compliant data only for Allevio)?; (2) are the KR targets in the OKR document the same ones that were originally set, or have they been revised down without entity CEO approval?; (3) does the pipeline data in GoHighLevel match the marketing pipeline KR?. If the OKR math is correct but the entity CEO's perception is that marketing underperformed, we need to understand the disconnect — it may be a communication issue, not a performance issue. I'll build a table: OKR-reported result vs. entity CEO's expectation vs. GoHighLevel actual data."

## Audit Log
Annual OKR documents retained permanently. Quarterly check-in records. KR score records (with data source). HIPAA compliance review records (Allevio). Entity CEO sign-off records. Matt Mathison portfolio OKR summary records. Mid-year adjustment records with rationale.

## Deprecation
OKR structure reviewed annually. KR benchmarks updated when entity scale changes. Marketing attribution standards updated when analytics stack changes. HIPAA KR compliance review updated when HIPAA regulations change. OKR process reviewed when entity marketing function matures.
