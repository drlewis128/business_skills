---
name: ops-column6-platform-ops
description: "Manage Column6 / Siprocal platform operations and technical reliability. Use when the user says 'platform ops', 'platform operations', 'platform reliability', 'platform performance', 'platform uptime', 'platform issues', 'platform incident', 'platform downtime', 'platform error', 'technical ops', 'technical operations', 'tech ops', 'DSP integration', 'SSP integration', 'bid stream', 'ad tech stack', 'ad serving', 'ad server', 'programmatic stack', 'programmatic ops', 'inventory quality', 'ad fraud', 'IVT', 'invalid traffic', 'brand safety', 'supply quality', 'data pipeline', 'reporting data', 'data accuracy', 'data pipeline error', 'platform monitoring', 'system monitoring', 'platform health', 'platform dashboard', 'Column6 platform', 'Siprocal platform', 'CTV platform', 'mobile platform', 'gaming platform', 'bid request', 'fill rate', 'win rate', 'platform capacity', or 'infrastructure ops'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--channel <ctv|mobile|gaming|all>] [--action <monitor|incident|audit|optimize|report>] [--metric <uptime|fill-rate|fraud-rate|data-accuracy|all>] [--priority <p1|p2|p3>]"
---

# Ops Column6 Platform Ops

Manage Column6 / Siprocal platform operations — monitoring technical reliability and uptime, managing DSP and SSP integrations, tracking inventory quality and fraud prevention, and responding to platform incidents that affect campaign delivery or data accuracy. Platform reliability is the invisible operational requirement that all of Column6's business depends on: agencies trust that delivered impression counts are real (not fraudulent), that delivery data is accurate, that the reporting pipeline produces reliable numbers, and that the platform can scale to serve the volume they book. Column6's VCR performance (North Star metric: ≥92%) depends on platform operations executing correctly; a platform outage or data pipeline failure can create delivery discrepancies that result in make-good obligations and agency trust erosion. Dr. Lewis monitors platform health as a data quality and delivery risk signal.

## When to Use
- Platform incident (outage; data discrepancy; integration failure)
- Monthly platform health review
- A campaign delivery discrepancy investigation (platform data vs. agency ad server)
- Ad fraud or IVT (Invalid Traffic) spike investigation
- DSP or SSP integration change

## Platform Operations Framework

```
COLUMN6 PLATFORM ARCHITECTURE (non-technical overview):

  DSP (Demand Side Platform) — what Column6 buys on:
    Column6 uses DSPs (The Trade Desk; DV360; etc.) to purchase ad inventory from publishers
    DSPs connect Column6 to the supply side (SSPs; publishers)
    DSP cost = cost per impression purchased (the "buy CPM")
    DSP data: shows what Column6 spent; what was purchased; delivery counts
    
  SSP (Supply Side Platform) — where Column6 accesses inventory:
    SSPs connect publishers and CTV apps to demand partners like Column6
    Inventory quality varies by SSP and publisher source
    SSP audit: Column6 must vet SSP supply for brand safety and fraud risk
    
  SIPROCAL PLATFORM:
    Column6's Siprocal gaming platform is a direct-to-publisher relationship
    Siprocal accesses gaming inventory directly (not fully through DSP)
    VCR on gaming inventory is typically higher than CTV/mobile (captive audience)
    
  AD FRAUD AND IVT (Invalid Traffic):
    IVT = bot traffic; domain spoofing; ad stacking (multiple ads on one slot)
    DSPs have IVT filtering; Column6 also has pre-bid and post-bid filtering
    Target: IVT rate <2% of total impressions
    High IVT from a specific supply source → remove that source from buying list
    
  DATA PIPELINE:
    Column6's reporting depends on accurate data flowing from DSPs to the reporting system
    Data latency: DSP data typically available within 24 hours of delivery
    Data discrepancy: if Column6's DSP report ≠ agency's ad server by >10% → investigate

PLATFORM INCIDENT MANAGEMENT:

  P1 INCIDENT (critical — affecting active campaign delivery):
    Definition: Platform or integration issue preventing impressions from delivering
    Examples: DSP connection failure; ad server timeout; bid floor misconfiguration causing 0 delivery
    Response: Column6 tech team or DSP support immediately; Column6 CEO + Dr. Lewis within 1 hour
    Resolution target: <4 hours
    Communication: if agency campaign is affected → proactive notification within 2 hours
    
  P2 INCIDENT (significant — data quality or reporting issue):
    Definition: Delivery is occurring but data is inaccurate or reporting pipeline is broken
    Examples: Impression count discrepancy; VCR data missing; cost data incorrect
    Response: Column6 tech team within 24 hours
    Communication: if agency invoicing will be delayed → notify agency within 24 hours
    
  P3 INCIDENT (minor — performance degradation or non-critical issue):
    Definition: Platform slower than normal; minor data delays; non-urgent optimization needed
    Response: addressed in next sprint or maintenance window
    Communication: internal only

PLATFORM QUALITY METRICS (monthly):

  UPTIME: Platform availability | Target: ≥99.5% (monthly)
  
  FILL RATE: Bid requests won / bid requests submitted | Target: varies by channel
    CTV: 15-25% fill rate is typical (high demand; competitive)
    Mobile: 20-30%
    Gaming (Siprocal): higher (direct relationships)
    
  IVT RATE: Invalid traffic % | Target: <2%
  
  DATA ACCURACY: DSP data matches reporting pipeline | Target: <0.5% variance
  
  WIN RATE / CLEARING PRICE: Tracks DSP cost trends
    Increasing win rate cost → DSP cost inflation → margin pressure
    Alert: win rate cost increases >10% month-over-month → Column6 CEO

FRAUD PREVENTION:

  PRE-BID FILTERING: Column6 specifies brand safety and IVT filtering in DSP bidding parameters
  POST-BID MEASUREMENT: third-party IVT measurement (MOAT; IAS; DoubleVerify)
  SUPPLY CURATION: remove high-IVT supply sources from buying list
  PUBLISHER REVIEW: annual audit of Column6's top 20 inventory sources for brand safety
  
  AGENCY IVT REPORTING:
    Some agencies require IVT measurement reports with invoice
    Column6's third-party measurement partner provides this data
    IVT >2% on a campaign → agencies may invoice-adjust or request make-good
```

## Output Format

```markdown
# Column6 Platform Ops Report — [Month Year]
**Prepared by:** Column6 Operations | **Reviewed by:** Dr. Lewis

---

## Platform Health Summary

| Metric | Target | Actual | Trend | Status |
|--------|--------|--------|-------|--------|
| Uptime | ≥99.5% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| IVT rate | <2% | [%] | ↑↓→ | 🟢/🟡/🔴 |
| Data accuracy | <0.5% var | [%] | ↑↓→ | 🟢/🟡/🔴 |
| DSP cost trend | Stable | [+/-N%] | ↑↓→ | 🟢/🟡/🔴 |

---

## Incidents This Month

| Severity | Date | Description | Duration | Campaign impact | Resolution |
|----------|------|-------------|---------|----------------|-----------|
| P2 | [Date] | Reporting pipeline delay | 18 hours | Data delay; no delivery impact | Pipeline restart |

---

## Supply Quality Flags

| Source/DSP | IVT rate | Action | Status |
|------------|---------|--------|--------|
| [Supply source] | 4.2% | Removed from buying list | Complete |
```

## Output Contract
- Platform data is the billing foundation — Column6's invoices are based on platform delivery data; if the platform data is wrong, the invoice is wrong; if the invoice is wrong, the agency relationship is damaged; Dr. Lewis's monthly data accuracy check (DSP data vs. reporting pipeline variance <0.5%) exists to catch data errors before they become billing errors; a campaign that delivered 8.7 million impressions but the reporting pipeline shows 9.2 million impressions will produce a $X overbill; catching this before the invoice is sent is the platform ops team's job; catching it if they miss it is Dr. Lewis's review layer
- P1 incidents get proactive agency communication — Column6 does not wait for the agency to notice that their campaign isn't delivering; if a P1 incident is affecting a campaign, Column6 communicates to the agency within 2 hours: "We've identified a technical issue affecting delivery on Campaign [X]. We expect resolution within [N] hours. Your campaign delivery is currently [status]. We will provide an update in [N] hours." Agencies who are told proactively trust more than agencies who discover the problem themselves; the communication requirement is not optional in a P1
- IVT is a compliance issue, not just a quality issue — agencies increasingly treat IVT as a breach of IO terms; an IO that delivered 5% IVT is an IO where Column6 delivered 5% of impressions to bots rather than human viewers; some IOs include IVT limits as contractual terms; if Column6 exceeds the contracted IVT threshold, it's a make-good obligation and potentially an invoice reduction; the IVT rate <2% target is both a quality standard and a contractual protection; persistent IVT above target from a specific supply source is removed from the buying list — no exceptions for good inventory pricing
- HITL required: P1 incidents → Column6 CEO + Dr. Lewis within 1 hour; P1 incidents affecting agencies → agency notification within 2 hours of Column6 CEO awareness; IVT >5% on any campaign → Dr. Lewis review + agency disclosure; DSP cost inflation >10% month-over-month → Column6 CEO (margin impact); data accuracy variance >1% in reporting pipeline → Dr. Lewis review before monthly invoicing proceeds; any platform architectural change (new DSP; new SSP; new measurement vendor) → Column6 CEO + Dr. Lewis approval

## System Dependencies
- **Reads from:** DSP platforms (delivery data; cost data; win rates); third-party IVT measurement (MOAT; IAS; DoubleVerify); Column6 reporting pipeline (internal data aggregation); ops-column6-campaign-ops (campaign delivery data — platform data feeds campaign ops); fin-column6-media-cost (DSP cost data)
- **Writes to:** Platform ops reports (SharePoint → Column6 → Operations → PlatformOps); Column6 CEO incident notifications (P1; P2); agency incident communications (P1 — proactive); supply curation decisions (remove high-IVT sources); fin-compliance-calendar (DSP contract renewals); ops-column6-reporting-ops (accurate data feeds reporting)
- **HITL Required:** P1 incidents → Column6 CEO + Dr. Lewis within 1 hour; P1 agency communication → within 2 hours of CEO awareness; IVT >5% → Dr. Lewis review + agency disclosure; DSP cost inflation >10% → Column6 CEO; data variance >1% → Dr. Lewis review before invoicing; platform architectural changes → Column6 CEO + Dr. Lewis approval

## Test Cases
1. **Golden path:** Monthly platform ops review. Uptime: 99.7% — above target. IVT rate: 1.4% — within target. Data accuracy: 0.1% variance — clean. DSP cost trend: +2.3% month-over-month — normal variation. One supply source flagged: a mobile gaming SSP showing 3.8% IVT — above 2% threshold; Column6 tech team has removed this source from the buying list. Impact on delivery: 6.2% of mobile gaming inventory source was removed; replaced with vetted inventory from alternative SSP; no material delivery impact. Report to Column6 CEO: "Platform clean this month. One IVT exception: mobile gaming SSP removed (3.8% IVT). Replaced with [alternative]. No campaign delivery impact. DSP cost stable."
2. **Edge case:** A CTV DSP integration fails at 2 AM on a Tuesday, causing 8 hours of no delivery on 6 active campaigns → Dr. Lewis: "P1 incident in progress. DSP integration failure starting approximately 2 AM. Column6 tech team was alerted at 6 AM; working with DSP support. Current status: 8 hours of delivery lost across 6 campaigns. Estimated delivery impact: approximately [N] million impressions. Campaign pacing impact: 6 campaigns now behind pacing — may need extended flight dates or bid floor increases to recover. Agency communication: I'm recommending Column6 CEO send a proactive notification to all 6 agency contacts by 9 AM: 'Our CTV delivery experienced a technical disruption overnight. It has been resolved and delivery has resumed. We are assessing pacing impact and will provide a plan to make up the delivery within your current flight dates.' This is a transparency play — agencies will notice the delivery gap; it's better that we tell them first."
3. **Adversarial:** An agency's IVT measurement vendor reports 4.8% IVT on a completed campaign (Column6's platform shows 1.6%) — the agency wants a 30% invoice reduction → Dr. Lewis: "I need to understand the measurement methodology discrepancy before accepting any invoice reduction. Column6's IVT rate is 1.6% (measured by [third-party vendor]); the agency's vendor shows 4.8%. These are very different numbers. Possible explanations: (1) Different measurement windows (pre-bid vs. post-bid); (2) Different IVT definition methodologies (general invalid traffic vs. sophisticated invalid traffic); (3) Domain classification differences. My recommendation: Column6 requests a reconciliation call with both measurement vendors (ours and theirs) on the call together. In the meantime, Column6 does not accept the 30% invoice reduction on the basis of a single-vendor discrepancy that contradicts our own validated data. If reconciliation confirms IVT was above 2%, Column6 will credit the contractual excess — not 30% flat. Column6 CEO: this is a significant potential revenue adjustment; I want your involvement."

## Audit Log
Monthly platform health reports retained. Incident records retained (P1; P2; P3 — with timeline; impact; resolution). Supply curation decisions retained (what was removed; why; when). IVT measurement data retained (by campaign; by month). DSP cost trend data retained. Agency incident communications retained. Data accuracy validation records retained.

## Deprecation
Review DSP and SSP integration requirements annually as the ad tech landscape evolves. The IVT threshold (2%) is an industry standard — review annually. The P1 response SLA (4-hour resolution; 2-hour agency communication) is reviewed annually with Column6 CEO.
