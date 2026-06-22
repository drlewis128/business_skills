---
name: mktg-analytics-manager
description: "Manage marketing analytics and performance measurement for MBL Partners portfolio entities. Use when the user says 'marketing analytics', 'marketing metrics', 'marketing performance', 'marketing measurement', 'marketing data', 'marketing dashboard', 'marketing report', 'marketing ROI', 'marketing attribution', 'channel attribution', 'multi-touch attribution', 'which channel is working', 'what is marketing producing', 'pipeline attribution', 'marketing-sourced pipeline', 'marketing influenced pipeline', 'conversion rate', 'funnel analytics', 'marketing funnel metrics', 'website analytics', 'Google Analytics', 'LinkedIn analytics', 'email analytics', 'open rate', 'click rate', 'conversion tracking', 'UTM tracking', 'UTM parameters', 'lead source tracking', 'marketing KPIs', 'KPI dashboard', 'marketing performance review', 'is marketing working', 'what is working in marketing', or 'marketing data quality'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--channel <email|social|paid|seo|events|all>] [--action <build|audit|report|optimize>] [--period <weekly|monthly|quarterly>]"
---

# Marketing Analytics Manager

Build and manage marketing performance measurement for MBL Partners portfolio entities — tracking which channels generate qualified pipeline, measuring content performance, attributing leads to their sources, and producing data that allows entity CEOs and Dr. Lewis to make resource allocation decisions from facts rather than intuition. Marketing without measurement is spending without accountability.

## When to Use
- Building marketing analytics infrastructure for a new entity
- Reviewing which channels are producing qualified pipeline and which are not
- Preparing monthly or quarterly marketing performance report for entity CEO
- Identifying where the marketing funnel is leaking

## Marketing Analytics Framework

```
MEASUREMENT ARCHITECTURE:

  UTM PARAMETER STANDARD (all entities):
    utm_source: channel name (linkedin; google; email; direct; organic; referral)
    utm_medium: medium type (cpc; social; email; organic; referral; event)
    utm_campaign: campaign name (allevio-q3-employer-demand-gen; column6-agency-awareness-q4)
    utm_content: specific asset (employer-one-pager; ebook-guide; blog-post-title)
    Rule: every external link in marketing materials uses UTM parameters — no exceptions
    
  TRACKING TOOLS BY ENTITY:
    Website: Google Analytics 4 (GA4) for all entity websites; Dr. Lewis reviews GA4 setup at launch
    CRM/Pipeline: GoHighLevel (lead source; pipeline stage; conversion)
    Email: GoHighLevel or email platform reporting (open rate; click rate; unsubscribe)
    LinkedIn: LinkedIn Company Page analytics; LinkedIn Campaign Manager (paid)
    Events: manual event lead capture → GoHighLevel entry with source tag
    HIPAA (Allevio): Google Analytics 4 data collection must be reviewed for HIPAA compliance; avoid collecting
      any user data that could be associated with health status; no retargeting pixels on Allevio member-facing pages; Dr. Lewis reviews GA4 configuration for Allevio

CORE METRICS BY ENTITY:

  ALLEVIO:
    Tier 1 (monthly — entity CEO report):
      MQL count (by source channel)
      Demo requests (by source; by week)
      Website: unique employer contacts visits; landing page conversion rate
      Email: open rate; click rate (per campaign)
      HIPAA: no individual visitor tracking on member-facing pages; aggregate employer page analytics only
      
    Tier 2 (quarterly — Dr. Lewis + entity CEO review):
      Marketing-sourced pipeline ($value; % of total)
      CAC by channel (cost per MQL; cost per SQL; cost per close)
      Content performance (which posts/articles drive the most employer contact conversions)
      Employer GRR contribution from marketing-sourced accounts (12-month tracking)
      
  COLUMN6:
    Tier 1 (monthly):
      New agency contacts entered (MQL count; by source)
      Intro call rate from marketing (MQL → call conversion)
      Test campaign initiation rate
      Email: agency newsletter open rate + click rate
      LinkedIn: company page impressions + engagement rate
      
    Tier 2 (quarterly):
      Agency NRR for marketing-sourced agencies
      CAC per agency relationship
      Channel efficiency: events vs. LinkedIn vs. email vs. paid

  HIVE / MBL: minimal digital analytics; LP communication metrics not tracked publicly

ATTRIBUTION MODEL:
  First-touch: credit the channel that first brought the contact into the database
  Last-touch: credit the channel that drove the conversion action (demo request; intro call)
  Multi-touch: for entities with longer sales cycles (Column6), distribute credit across all touches
  GoHighLevel: configure lead source field to capture first-touch; add campaign tags for all subsequent touches
  
MARKETING ANALYTICS REPORT STRUCTURE:
  Monthly report: entity CEO receives
  Quarterly deep-dive: Dr. Lewis + entity CEO
  Annual: marketing investment vs. pipeline generated vs. revenue sourced

HIPAA AND ANALYTICS (ALLEVIO):
  GA4: no user-level tracking that identifies individual visitors on member-facing pages
  No retargeting pixels: Allevio cannot use retargeting pixels on pages that members visit (health context)
  Conversion tracking: employer contact form submissions are trackable (employer pages only; not member pages)
  Dr. Lewis reviews GA4 and any analytics tool configuration for Allevio before launch
```

## Output Format

```markdown
# Marketing Analytics Report — [Entity] — [Period]
**Prepared by:** Marketing Lead | **Reviewed by:** Dr. Lewis (Allevio HIPAA check) | **To:** Entity CEO

---

## Summary Dashboard

| Metric | This period | Prior period | Target | Status |
|--------|------------|-------------|--------|--------|
| MQLs generated | | | | ✅/⚠️/❌ |
| Demo requests (Allevio) / Intro calls (Column6) | | | | |
| Marketing-sourced pipeline ($) | | | | |
| Website: unique ICP visitors | | | | |
| Email open rate | | | | >25% |
| Email click rate | | | | >3% |
| LinkedIn engagement rate | | | | |

---

## Channel Performance

| Channel | MQLs | Pipeline attributed | Cost | CPL | Verdict |
|---------|-------|--------------------|----|-----|---------|
| LinkedIn organic | | | $0 | | |
| LinkedIn paid | | | $X | | |
| Email nurture | | | $0 | | |
| Events | | | $X | | |
| SEO/organic | | | $0 | | |

---

## Funnel Analysis

| Stage | Count | Conversion rate | Benchmark | Leak? |
|-------|-------|----------------|----------|-------|
| Total contacts | | | | |
| MQL threshold reached | | | | |
| Demo / intro call | | | >30% | |
| Proposal | | | | |
| Closed | | | | |

---

## HIPAA Analytics Compliance (Allevio only)
- [ ] GA4 configuration confirmed: no user-level tracking on member-facing pages
- [ ] No retargeting pixels on member-facing pages
- [ ] Dr. Lewis reviewed configuration this period: [Date]

---

## Recommendations
1. [What's working: keep/scale]
2. [What's not working: pause/change]
3. [Data gap: what measurement to add]
```

## Output Contract
- Attribution discipline is required for marketing investment decisions — Dr. Lewis does not allocate marketing budget based on activity reports ("we sent 3 emails and published 4 blog posts this month"); he allocates based on attribution data ("email generates 42% of our MQLs at a CPL of $280; events generate 31% at a CPL of $480; SEO generates 27% with $0 variable cost; recommend increasing email and SEO investment and reducing event sponsorship frequency"); without attribution infrastructure, marketing spending is guesswork; building UTM parameters and GoHighLevel lead source tracking is the first marketing infrastructure project for every new entity
- HIPAA constraints apply to analytics tools as well as content — analytics tools that collect user-level data (GA4 Enhanced Measurement; LinkedIn Insight Tag; Facebook Pixel) create HIPAA risk on Allevio's website if any member-facing pages are included; Dr. Lewis reviews the analytics tool configuration for Allevio before any analytics setup is live; the review checks: which pages are tracked; what data is collected; is any data transmitted to third-party servers that do not have a BAA with Allevio; the safest configuration for Allevio member-facing pages is aggregate pageview analytics only (no user identification; no retargeting); employer-facing pages can have fuller tracking with appropriate review
- Marketing data is only as good as the data entry discipline — when sales reps enter "Unknown" as the lead source for every contact they add manually to GoHighLevel, the attribution model is broken; Dr. Lewis ensures every entity has a clear data entry protocol: lead source is a required field in GoHighLevel; all manually-entered contacts include source (referral; event; outbound; inbound); the marketing team reviews GoHighLevel data quality monthly and flags entries with missing source data to the entity CEO; bad data produces misleading analytics that cause bad investment decisions
- HITL required: GA4 configuration for Allevio → Dr. Lewis HIPAA review before launch; analytics tool selection → Dr. Lewis reviews for HIPAA compliance (Allevio); marketing analytics report → entity CEO reviews monthly; channel allocation changes (budget reallocation based on analytics) → entity CEO approves; attribution model changes → Dr. Lewis + marketing lead agree; quarterly deep-dive results → Dr. Lewis + entity CEO

## System Dependencies
- **Reads from:** GoHighLevel (lead source; pipeline stage; MQL tracking; campaign attribution); GA4 (website analytics — employer-facing pages); LinkedIn Analytics (company page + paid campaign); mktg-email-marketer (email performance data); mktg-demand-generation-manager (pipeline targets for comparison); mktg-paid-media-manager (paid spend data for CAC calculation)
- **Writes to:** Marketing analytics dashboard (Monday.com → [Entity] → Marketing → Analytics); monthly marketing report (SharePoint → [Entity] → Marketing → Reports → [Month]); quarterly deep-dive report; channel allocation recommendation; HIPAA analytics configuration review record (Allevio)
- **HITL Required:** GA4 config (Allevio) → Dr. Lewis HIPAA; analytics tool selection → Dr. Lewis (Allevio); monthly report → entity CEO reviews; channel allocation changes → entity CEO; attribution model changes → Dr. Lewis + marketing lead; quarterly review → Dr. Lewis + entity CEO

## Test Cases
1. **Golden path:** Allevio Q2 quarterly analytics deep-dive. MQLs by source: email nurture (42%; $280 CPL); LinkedIn organic (31%; $0 CPL); SEO (18%; $0 CPL); events (9%; $480 CPL). Total MQLs: 34. Marketing-sourced pipeline: $320K. Recommendation: increase email and SEO investment; replace 1 conference attendance with a webinar. HIPAA check: GA4 configuration confirmed — no user-level tracking on Allevio member-facing pages; Dr. Lewis sign-off date June 15. Entity CEO receives report; approves Q3 channel allocation changes.
2. **Edge case:** LinkedIn Insight Tag is installed on Allevio's website and is firing on both employer AND member pages → Dr. Lewis: "Remove the Insight Tag from all member-facing pages immediately. The LinkedIn Insight Tag is a retargeting pixel — it sends user visit data to LinkedIn's servers. LinkedIn does not have a BAA with Allevio. A member visiting the Allevio member portal who is tracked by the Insight Tag has their health-adjacent visit logged on LinkedIn's servers without a BAA. Even if we're not actively using the retargeting feature, installing the pixel on member pages is a HIPAA risk. Employer pages only, with a confirmed LinkedIn BAA or opt-out from Insight Tag tracking."
3. **Adversarial:** Marketing team reports impressive LinkedIn engagement numbers (500 impressions; 50 likes) as their primary KPI → Dr. Lewis: "Likes don't pay the rent. Show me how many employer contacts visited the Allevio landing page from LinkedIn, how many converted to MQLs, and what pipeline value we can attribute. 50 likes from employees and industry contacts is vanity — 3 employer demo requests from LinkedIn content are pipeline. Let's redesign the analytics report to lead with pipeline attribution and put engagement metrics in the supporting section. Vanity metrics in the executive summary mislead the entity CEO about marketing effectiveness."

## Audit Log
Marketing analytics reports retained monthly. Quarterly deep-dive reports retained. GA4 configuration review records (Allevio — permanent). Attribution model decisions retained. Channel allocation decisions retained. HIPAA analytics review records (Allevio). UTM parameter standards documentation retained.

## Deprecation
Analytics tool selection reviewed when MBL technology stack changes. HIPAA analytics configuration reviewed when HIPAA regulations change or analytics platforms change data collection practices. Attribution model reviewed when entity sales process changes. Report templates updated when entity KPIs change.
