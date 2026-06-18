---
name: cs-campaign-performance-reporter
description: "Build and deliver campaign performance reports for Column6 agency customers. Use when the user says 'Column6 campaign report', 'campaign performance report', 'IO performance report', 'campaign report', 'CTV campaign report', 'campaign results', 'IO results', 'how did the campaign perform', 'campaign performance', 'VCR report', 'video completion rate report', 'CPM report', 'pacing report', 'campaign pacing', 'impression delivery report', 'attribution report', 'campaign attribution', 'media performance report', 'Column6 reporting', 'agency campaign report', 'build a campaign report', 'deliver campaign results', 'campaign wrap report', or 'post-campaign report'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--account <agency or brand name>] [--io <IO number or name>] [--period <flight dates>] [--action <build|review|send|present>]"
---

# CS Campaign Performance Reporter

Build and deliver campaign performance reports for Column6 agency customers — translating campaign serving data into a clear, agency-facing performance summary that demonstrates delivery, quality, and measurable results. The campaign performance report is the primary instrument of value delivery for Column6 accounts; a report that shows the agency their results quickly and clearly makes the next IO easier to book; a report that's late or hard to read makes the next booking harder.

## When to Use
- Weekly pacing reports during active campaigns
- Campaign completion report (when the IO flight ends)
- Monthly performance summary (for pre-committed annual agreements)
- QBR preparation (last quarter's campaign results as the QBR foundation)

## Campaign Reporting Framework

```
REPORT TYPES:

  1. WEEKLY PACING REPORT (during active campaign):
     Purpose: Show the agency the campaign is on track to deliver in full by the flight end date
     Metrics: Impressions delivered vs. pacing target; VCR to date; CPM actual vs. contracted
     Delivery: Every Friday during the campaign; sent by noon
     
  2. CAMPAIGN COMPLETION REPORT (within 48 hours of flight end):
     Purpose: Full accounting of what was delivered; compare to IO commitments
     Metrics: Total impressions; VCR; CPM; delivery rate (actual vs. contracted)
     Includes: Attribution data (if applicable); creative performance breakdown
     
  3. MONTHLY SUMMARY REPORT (for annual agreements):
     Purpose: Monthly roll-up of all IOs in the period; trend view
     Metrics: Total spend vs. agreement commitment; impression volume; VCR trend; attribution trend
     Delivery: By the 5th of each month (prior month data)

CORE METRICS AND CALCULATIONS:

  VCR — Video Completion Rate:
    Formula: Completed views ÷ Total impressions × 100%
    Target: ≥92% (Column6 standard); flag if <88% in a single IO
    Industry context: "Linear TV average completion rate: 40-60%; CTV benchmark: 80-90%;
      Column6 target: ≥92% — our inventory selection optimizes for high-completion placements"
    
  CPM — Cost Per Thousand Impressions:
    Formula: Total spend ÷ (Impressions ÷ 1,000)
    Target: On contract or better
    If above contract: flag immediately; explain the cause (inventory availability; targeting constraints)
    
  Delivery Rate — Pacing:
    Formula: Impressions delivered ÷ Total impressions contracted × 100%
    Target: ≥100% by the flight end date (deliver in full)
    If below 95% pacing at the halfway point: Dr. Lewis notified immediately; make-good plan initiated
    
  Make-Good:
    If the IO underdelivers by >5%: Column6 proactively offers a make-good (bonus impressions on the next IO)
    Make-good calculation: Underdelivered impressions × contracted CPM = make-good value
    CEO approval required before a make-good commitment is made (cs-escalation-manager P2 threshold)
    
  Attribution (if applicable):
    Platform: Nielsen OneCount; or pixel-based attribution; or URL-based lift measurement
    Report: Attributed conversions; CPA (Cost Per Attributed Conversion); lift vs. control group
    Context: "Not all Column6 campaigns use attribution tracking — only campaigns where
      the brand has a specific conversion goal (app download; website visit; purchase)"

CREATIVE PERFORMANCE BREAKDOWN:
  If the IO included multiple creative versions:
    Report VCR by creative: which creative drove the highest completion rate?
    Recommendation: "Creative A (30-second spot) outperformed Creative B (60-second spot)
      by 8 VCR points. For the next IO, we recommend weighting toward Creative A — or using
      the 60-second version only on connected TV devices where longer formats perform better."

DELIVERY PROTOCOL:
  Weekly pacing report: Email to media buyer; Column6 campaign dashboard link included
  Campaign completion report: Email to media buyer; CC to agency supervisor if >$100K IO
  Monthly summary: Email to media buyer; Dr. Lewis CCs himself for >$200K annual agreements
  Format: PDF report + campaign dashboard link (real-time access)
  
  Subject lines:
    Pacing: "[Agency] × Column6 — Weekly Pacing Update | [Brand] | [Dates]"
    Completion: "[Agency] × Column6 — Campaign Wrap Report | [Brand] | [Flight Dates]"
    Monthly: "[Agency] × Column6 — Monthly Performance Summary | [Month Year]"
    
  Late report protocol:
    If any report is >24 hours late vs. schedule: Dr. Lewis notified; personal apology to media buyer
    A pacing report that is late during an active campaign is a credibility issue — agencies notice
```

## Output Format

```markdown
# Campaign Performance Report — [Agency] × Column6
**Brand:** [Brand name] | **IO Number:** [IO#] | **Flight:** [Start] — [End]
**Prepared by:** [CS Rep / Dr. Lewis] | **Report date:** [Date]

---

## Campaign Summary

| Metric | Contracted | Actual | Status |
|--------|-----------|--------|--------|
| Impressions | [N] | [N] ([X]% delivery) | ✅ / ⚠️ / ❌ |
| VCR | ≥92% | [X]% | ✅ / ⚠️ / ❌ |
| CPM | $[X] | $[X] | ✅ / ⚠️ / ❌ |
| Total spend | $[X]K | $[X]K | ✅ / ⚠️ / ❌ |

---

## Weekly Pacing (for active campaign)

| Week | Impressions served | Cumulative | % of total | On pace? |
|------|-------------------|-----------|-----------|---------|
| Week 1 | [N] | [N] | [X]% | ✅ / ⚠️ |
| Week 2 | [N] | [N] | [X]% | ✅ / ⚠️ |

---

## Creative Performance (if multi-creative)

| Creative | Impressions | VCR | Notes |
|---------|------------|-----|-------|
| [Creative A] | [N] | [X]% | [Top performer] |
| [Creative B] | [N] | [X]% | |

---

## Attribution Results (if applicable)

| Metric | This campaign | Prior campaign | Benchmark |
|--------|-------------|---------------|----------|
| Attributed conversions | [N] | [N] | — |
| CPA | $[X] | $[X] | $[X] blended CPA |

---

## What Performed Well / What to Improve

**Strong:** [Specific observation — e.g., "VCR 94% exceeded our standard; premium sports inventory was the top-performing placement"]
**Improve:** [E.g., "CPM was 8% above contracted rate due to Q4 inventory competition — we recommend booking Q1 IOs early to lock in rate"]

---

## Recommendation for Next IO

[1-3 specific recommendations based on this campaign's data]
```

## Output Contract
- Data first, narrative second — the agency media buyer reads the metrics table before the narrative; the report must have the key numbers visible without scrolling; Dr. Lewis requires that every Column6 campaign report leads with a summary table that shows impressions, VCR, CPM, and delivery vs. contract; the narrative supports the numbers, not the other way around
- Own underperformance before the agency raises it — if VCR was below 92%, the report does not bury the number; the report acknowledges it in the summary table AND explains it in the narrative with a specific cause and a specific fix; Dr. Lewis reviews any campaign report where VCR was below 92% before it is sent; the explanation must be specific ("VCR was 87% — the mobile web placement on [Publisher] pulled the overall rate down; we've moved future serving away from that placement")
- Make-good decisions require CEO approval — if a campaign underdelivered, the make-good conversation starts with CEO authorization; the report may note "we are reviewing delivery and will follow up on any make-good consideration" but never commits to a make-good without CEO sign-off; Dr. Lewis escalates to the CEO within 24 hours of confirming any underdelivery >5%
- HITL required: Dr. Lewis reviews campaign reports for >$100K IOs before they are sent; any VCR miss (<88%) report requires Dr. Lewis review; make-good commitments require CEO authorization; pacing reports that flag delivery risk (below 90% pacing at the halfway point) require immediate Dr. Lewis notification; Dr. Lewis CCs himself on monthly summary reports for >$200K annual agreements

## System Dependencies
- **Reads from:** Column6 campaign dashboard (impression count; VCR; CPM; creative breakdown; pacing data); IO document (the signed insertion order — contracted impressions; CPM; flight dates; targeting parameters); attribution platform data (Nielsen OneCount or pixel-based — if applicable); prior month/prior IO reports (SharePoint/CustomerSuccess/Column6/CampaignReports/[Agency]/ — for trend comparison)
- **Writes to:** Campaign report PDF (SharePoint/CustomerSuccess/Column6/CampaignReports/[Agency]/[IO#]_[Date]_CampaignReport.pdf); email to media buyer (and supervisor CC for >$100K IOs); GoHighLevel CRM (activity log — report sent; key metrics; any flags); cs-health-score-tracker (campaign performance dimension update — VCR miss triggers health score review); make-good record (SharePoint/CustomerSuccess/Column6/Makegoods/ — if applicable; CEO approval attached)
- **HITL Required:** Dr. Lewis reviews >$100K IO reports; VCR miss (<88%) requires Dr. Lewis review; make-good requires CEO authorization; delivery risk at mid-flight requires immediate Dr. Lewis notification; Dr. Lewis CCs himself on >$200K annual agreement monthly summaries

## Test Cases
1. **Golden path:** Campaign completion report — $65K IO; 3-week flight; final metrics: 2.8M impressions (contracted 2.5M — 112% delivery; over-delivered ✅); VCR 94% (target 92% ✅); CPM $23.18 (contracted $23.00 — within 1% ✅); creative A (30-sec) outperformed creative B (15-sec) by 5 VCR points; no attribution tracking on this IO → CS rep builds report; Dr. Lewis reviews (IO is $65K — no Dr. Lewis review required per HITL threshold); report sent within 48 hours of flight end; recommendation: "Consider moving all budget to Creative A for the next IO — 15-second ads in your category are seeing lower completion vs. 30-second across the platform." Media buyer responds: "Great results — I'm bringing you a new brief next week for Q2."
2. **Edge case:** Mid-campaign pacing report shows 42% of impressions delivered at the 50% mark (on pace for 84% delivery — underdelivery risk) → CS rep flags to Dr. Lewis immediately (same day); Dr. Lewis: "This can't wait until Friday's pacing report. Call the media buyer now — don't wait for the weekly email: 'I wanted to reach out directly because our current pacing shows a delivery risk. We're at 42% with 50% of the flight remaining. Here's our plan to close the gap: [specific optimization actions — inventory expansion; dayparting adjustment; targeting relaxation]. We'll have an update for you by end of day tomorrow.' CEO briefed. If we don't close the gap, we need a make-good plan ready." Optimization actions taken; delivery improves to 97% by campaign end; make-good not required
3. **Adversarial:** Media buyer asks for the campaign report to exclude the CPM figure because "the client doesn't need to see what we paid per CPM" → Dr. Lewis: "I understand the context — but we don't build two versions of the performance data: one for the agency and one without the CPM. What I can do is structure the report so that the delivery and VCR are the headline figures (which is where the value story is strongest), and the CPM is in a supplemental section labeled 'Media Costs.' That way the client-facing version of the summary is delivery-focused. But the full report we send to the agency includes all the data — we need the full record for our own audit trail and the agency's reconciliation. Is a two-section format that works for you?" Agency accepts; report structured with performance summary (delivery-first) and media cost appendix

## Audit Log
All campaign reports retained by agency, IO, and date. Dr. Lewis review records retained for >$100K IOs. Make-good records retained with CEO approval. Delivery risk notifications retained. VCR miss explanation records retained.

## Deprecation
Retire when Column6 has a client-facing reporting portal that auto-generates standardized performance reports with real-time data — with Dr. Lewis reviewing the report template quarterly and the CEO approving any make-good commitments regardless of automation level.
