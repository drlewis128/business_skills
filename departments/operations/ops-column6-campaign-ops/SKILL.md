---
name: ops-column6-campaign-ops
description: "Manage Column6 / Siprocal campaign operations and delivery. Use when the user says 'campaign ops', 'campaign operations', 'campaign delivery', 'campaign performance', 'campaign management', 'campaign tracking', 'campaign reporting', 'campaign optimization', 'campaign launch', 'campaign setup', 'campaign execution', 'CTV campaign', 'connected TV campaign', 'mobile campaign', 'gaming campaign', 'programmatic campaign', 'programmatic delivery', 'impression delivery', 'delivery rate', 'pacing', 'campaign pacing', 'delivery pacing', 'under-delivery', 'over-delivery', 'make-good', 'make-good obligation', 'make-good management', 'IO delivery', 'IO campaign', 'insertion order delivery', 'ad delivery', 'ad operations', 'ad ops', 'DSP delivery', 'DSP campaign', 'viewability', 'completion rate', 'VCR', 'video completion rate', 'CTR', 'click-through rate', 'campaign KPIs', or 'delivery discrepancy'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--campaign <name>] [--agency <name>] [--channel <ctv|mobile|gaming|all>] [--action <monitor|optimize|make-good|report|troubleshoot>] [--metric <delivery|vCR|viewability|pacing|margin>]"
---

# Ops Column6 Campaign Ops

Manage Column6 / Siprocal campaign operations — tracking delivery against IOs, managing campaign pacing and optimization, executing make-good obligations when delivery falls short, and ensuring that the agency and brand clients receive the impression volumes and performance metrics they were sold. Campaign operations is the operational engine of Column6's revenue: an IO represents a contractual commitment to deliver a specific number of impressions at a specific CPM; if Column6 delivers those impressions at or above the agreed VCR and viewability thresholds, the agency pays; if delivery falls short, a make-good obligation is created; if delivery is consistently short, agencies stop buying. Dr. Lewis tracks campaign delivery KPIs as NRR and margin health signals — the Column6 CEO manages campaign operations day-to-day, but Dr. Lewis monitors the portfolio-level delivery performance that drives agency NRR.

## When to Use
- Monthly campaign delivery review
- A campaign is significantly under-delivering (pacing alert)
- A make-good obligation is triggered (<90% delivery)
- Agency NRR is below target (delivery issues are often the root cause)
- Pre-invoice delivery verification (before sending a monthly IO invoice)

## Campaign Operations Framework

```
COLUMN6 CAMPAIGN DELIVERY STANDARDS:

  IO COMMITMENT:
    Column6 sells impressions via IO (Insertion Order) at an agreed CPM
    The IO specifies: total impressions; start/end date; CPM; channel (CTV/mobile/gaming); targeting
    Column6's obligation: deliver the agreed impressions within the flight dates at or above
    the agreed VCR and viewability thresholds
    
  DELIVERY PERFORMANCE TARGETS:
    Delivery rate target: ≥100% of contracted impressions (invoice on delivered, not booked)
    VCR (Video Completion Rate) target: ≥92% (Column6 North Star metric per CLAUDE.md)
    Viewability: per IAB standards (varies by channel; typically ≥70% for CTV)
    Make-good threshold: <90% delivery rate triggers a make-good obligation
    
  MAKE-GOOD MANAGEMENT:
    Make-good rate target: <8% of booked revenue
    When triggered: Column6 delivers additional inventory at no additional charge
    Make-good timeline: within the next flight (or within 60 days if campaign has ended)
    Make-good documentation: tracked and reconciled in the billing system
    
  MARGIN MONITORING:
    Campaign gross margin = (CPM sold - CPM paid to DSP) / CPM sold
    Target gross margin: ≥40% portfolio average; ≥25% individual campaign minimum
    Campaign gross margin <15%: Column6 CEO same-day notification
    Campaigns delivering below margin: investigate DSP cost vs. sold CPM

CAMPAIGN PACING MANAGEMENT:

  DAILY PACING CHECK:
    For each active campaign: actual impressions delivered ÷ pacing target
    Pacing target = (total contracted impressions × % of flight elapsed)
    Green: 90-110% of pacing target
    Yellow: 70-90% or >110% (under or over-delivering)
    Red: <70% of pacing target (significant under-delivery risk)
    
  PACING INTERVENTION (when Yellow or Red):
    Bid price adjustment (DSP): increase bid floor to access more inventory
    Targeting expansion: relax audience targeting to increase available inventory
    Channel shift: move budget between CTV/mobile/gaming to optimize delivery
    Dayparting adjustment: expand delivery hours if constrained
    
  PRE-INVOICE DELIVERY VERIFICATION:
    Before sending any IO invoice: confirm actual delivered impressions from DSP report
    Invoice = delivered impressions × CPM (not booked impressions)
    Delivery discrepancy between Column6's DSP report and agency's ad server:
      Standard tolerance: ±10% discrepancy (industry standard)
      >10% discrepancy: reconciliation meeting with agency before invoice sent

CAMPAIGN REPORTING CADENCE:

  WEEKLY (for active campaigns):
    Delivery dashboard sent to agency: pacing status + VCR + viewability
    Column6 CEO reviews weekly report for any campaigns at risk
    
  MID-FLIGHT (at 50% of flight duration):
    Formal mid-flight report to agency: on track / at risk; any adjustments planned
    
  END-OF-FLIGHT (campaign completion):
    Final delivery report: total impressions; average VCR; average viewability; CPM
    Make-good tracking: did we deliver ≥90%? If not, make-good scheduled
    
  MONTHLY PORTFOLIO REPORT (for ops-column6-reporting-ops):
    Total impressions delivered; by channel; by agency; by campaign
    Make-good obligations outstanding
    Average VCR; viewability across all campaigns
    Gross margin by campaign and portfolio
```

## Output Format

```markdown
# Column6 Campaign Ops Report — [Month Year]
**Prepared by:** Column6 Operations | **Reviewed by:** Dr. Lewis

---

## Portfolio Delivery Summary

| Metric | Target | Actual | Trend | Status |
|--------|--------|--------|-------|--------|
| Overall delivery rate | ≥100% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| Make-good rate | <8% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| Portfolio VCR | ≥92% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| Portfolio gross margin | ≥40% | [%] | ↑↓→ | 🟢/🟡/🔴 |

---

## Active Campaign Pacing (Red/Yellow flags only)

| Campaign | Agency | Channel | Pacing | Risk | Action |
|----------|--------|---------|--------|------|--------|
| [Campaign A] | [Agency] | CTV | 68% | 🔴 Under-delivery | Bid floor increased |
| [Campaign B] | [Agency] | Mobile | 108% | 🟡 Over-delivery | Reducing bid floor |

---

## Make-Good Obligations Outstanding

| Agency | Campaign | Impressions owed | Due date | Status |
|--------|----------|-----------------|---------|--------|
| [Agency] | [Campaign] | [N]M | [Date] | Scheduling |
```

## Output Contract
- Invoice on delivered impressions only, always — Column6's billing integrity standard is that every invoice reflects only the impressions actually delivered, not the IO booking; a campaign that booked 10 million impressions and delivered 8.5 million is invoiced at 8.5 million plus a make-good note; there is no scenario where Column6 invoices for undelivered impressions; this standard is the foundation of agency trust; agencies that have been invoiced correctly by Column6 (even for under-delivery with a make-good) are agencies that trust Column6's billing; Dr. Lewis validates this standard monthly in the pre-invoice review
- Make-good obligations are tracked to resolution, not just acknowledged — when a make-good obligation is triggered, it doesn't disappear from the tracker when it's "scheduled"; it stays on the tracker until it is delivered and the delivery is confirmed; Dr. Lewis reviews make-good resolution monthly; any make-good obligation >60 days old without resolution → Column6 CEO review; an unresolved make-good is a relationship liability with the agency and potentially a contractual breach
- Campaign margin <15% is a same-day escalation to the Column6 CEO — not the end of day; not the next morning; the same day it's identified; the reason is simple: a campaign running at negative margin or near-zero margin is destroying value in real time; every impression delivered at a bad margin is a cost that can't be recovered; the Column6 CEO needs to decide: pause the campaign; renegotiate the CPM; accept the margin for strategic reasons (e.g., key agency relationship); but they decide with information, not after the campaign has run
- HITL required: VCR consistently below 92% on a major campaign → Column6 CEO + Dr. Lewis aware; agency escalates a delivery dispute → Column6 CEO direct involvement; make-good rate >8% of booked revenue → Dr. Lewis briefing to Matt Mathison (Column6 North Star metric at risk); campaign gross margin <15% → Column6 CEO same-day notification; any IO or make-good credit >$50K → Dr. Lewis review before issuing; agency NRR below 95% → Dr. Lewis + Column6 CEO root cause

## System Dependencies
- **Reads from:** DSP platforms (The Trade Desk; DV360; etc. — delivery data and cost data); agency ad servers (third-party verification of impressions delivered — for reconciliation); IO management system (contracted impressions; CPMs; flight dates); fin-column6-io-billing (invoice verification); fin-column6-media-cost (DSP cost data for margin calculation)
- **Writes to:** Campaign delivery reports (agency-facing; weekly and end-of-flight); make-good tracker (Column6 operations); Column6 CEO briefings (Red campaigns; make-good obligations; margin alerts); ops-column6-reporting-ops (delivery data feeds client reporting); Dr. Lewis monthly ops report
- **HITL Required:** VCR below 92% × major campaign → Column6 CEO + Dr. Lewis; delivery dispute escalation → Column6 CEO; make-good rate >8% → Matt Mathison briefing; campaign margin <15% → Column6 CEO same-day; IO credits >$50K → Dr. Lewis review; agency NRR below 95% → Dr. Lewis + Column6 CEO root cause

## Test Cases
1. **Golden path:** Monthly campaign ops review. 18 active campaigns. Portfolio delivery: 97.8% — within target. Make-good rate: 3.1% — within target. Portfolio VCR: 93.4% — above 92% target. Portfolio gross margin: 41.2% — above 40% target. Flags: 2 Yellow campaigns. Campaign A: CTV; pacing at 82% (behind — bid floor increased yesterday; should recover). Campaign B: Mobile; pacing at 106% (over-delivering; slight bid reduction to control; no margin impact). Month-end: 1 make-good obligation resolved (Agency X, 1.2M impressions delivered — confirmed by agency ad server). No make-goods outstanding >30 days. Monthly report to Dr. Lewis: clean portfolio; no escalations.
2. **Edge case:** An agency's ad server shows 12% fewer impressions than Column6's DSP report → Dr. Lewis: "A 12% delivery discrepancy between Column6's DSP data and the agency's ad server is above the ±10% industry tolerance. Before we issue the invoice, I need to understand the source. Common causes: (1) Ad fraud filtering — the agency's measurement partner may be filtering more impressions as invalid traffic than the DSP's IVT filtering; (2) Counting methodology difference (impression vs. bid won); (3) Viewability-adjusted vs. raw impression count. I'm requesting a reconciliation call with the agency's ad ops team this week. Invoice is on hold until we resolve the discrepancy. Column6 CEO is aware. Worst case: we invoice at the lower number (agency's count) — that's the conservative approach if we can't reconcile."
3. **Adversarial:** A major agency demands that Column6 accept all make-good obligations in cash credit (not additional inventory) citing campaign completion → Dr. Lewis: "The IO's make-good provision specifies 'equivalent inventory' not cash credit — let me verify that language. If the IO says 'equivalent inventory,' Column6 is not contractually obligated to provide cash credits; the make-good is delivered as additional inventory. Column6 CEO's call: if the agency relationship is strategically valuable (they're a top 3 agency by revenue), there may be a reason to offer a compromise — partial cash credit, partial inventory make-good. But that's a relationship decision, not a contractual obligation. My analysis: cash credit reduces Column6's gross margin on this campaign from [%] to [%]; at [impressions] make-good at [CPM], the cash cost would be $[X]. Column6 CEO and I will discuss before any response to the agency."

## Audit Log
Campaign delivery records retained (by campaign; by agency; delivery dates; final confirmed impressions). Make-good obligation records retained (triggered; scheduled; resolved). Invoice pre-verification records retained. Delivery discrepancy reconciliation records retained. Campaign margin records retained. Agency complaint records retained.

## Deprecation
Review VCR and delivery rate benchmarks annually as CTV/mobile/gaming industry standards evolve. The 92% VCR target may shift as the channel mix evolves. The make-good threshold (<90%) is a market standard — review if Column6's IOs define a different threshold.
