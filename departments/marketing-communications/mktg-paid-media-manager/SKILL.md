---
name: mktg-paid-media-manager
description: "Manage paid media and advertising programs for MBL Partners portfolio entities. Use when the user says 'paid media', 'paid advertising', 'paid LinkedIn', 'LinkedIn ads', 'Google ads', 'SEM', 'paid search', 'PPC', 'pay per click', 'paid social', 'display advertising', 'retargeting', 'retarget', 'remarketing', 'programmatic advertising', 'CTV advertising', 'digital advertising', 'media buy', 'advertising budget', 'ad spend', 'ROAS', 'return on ad spend', 'cost per lead', 'CPL', 'CPM', 'CPC', 'ad targeting', 'audience targeting', 'advertising campaign', 'run ads', 'launch ads', 'paid campaign', 'media plan', 'media planning', 'advertising strategy', 'advertising ROI', 'advertising performance', or 'should we run ads'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--channel <linkedin|google|ctv|display|retargeting>] [--action <plan|launch|optimize|report>] [--budget <monthly-spend>]"
---

# Marketing Paid Media Manager

Plan, execute, and optimize paid media programs for MBL Partners portfolio entities — generating targeted awareness and pipeline from employer HR leaders (Allevio), media agency buyers (Column6), and relevant deal/LP audiences (MBL Partners). Column6 brings an unusual strategic asset: CTV and programmatic expertise internal to MBL, which can inform Column6's own media strategy and create inventory testing opportunities.

## When to Use
- An entity needs to supplement organic channels with paid reach
- Organic efforts alone are insufficient to hit pipeline targets
- A campaign needs paid amplification to reach a specific audience segment
- Column6 internal CTV/programmatic expertise is being applied to own-entity advertising

## Paid Media Framework

```
PAID MEDIA STRATEGY BY ENTITY:

  ALLEVIO:
    Primary channel: LinkedIn Ads (employer HR/Benefits audience by job title + company size)
    Secondary: Google Ads (branded search; "care coordination AZ" and related keywords)
    Budget context: small-scale; test-and-learn; start at $2-3K/month and prove ROAS before scaling
    Targeting: Job title (HR Director, VP Benefits, Total Rewards Manager, CFO); Location: Arizona; Company size: 50-500
    Campaign types: Lead gen form (LinkedIn — captures employer contact directly); Retargeting (website visitors who visited employer pages)
    HIPAA: ad creative must contain NO PHI; no health condition targeting via LinkedIn demographic data (LinkedIn allows job title targeting, not health status — use job title only)
    Success metric: demo request from LinkedIn lead gen form; cost per demo request
    
  COLUMN6:
    Primary channel: LinkedIn Ads (agency audience) + potentially own CTV inventory (self-serve test campaigns)
    Column6 strategic asset: Column6 can run CTV campaigns on its OWN inventory as a proof point for agency prospects — "here's how our platform performed for our own campaign"
    Budget context: moderate; Column6 owns the inventory, so CPM on own CTV can be at cost
    Agency targeting: LinkedIn by job title (Media Planner, Programmatic Director, Buyer, Trading Desk); Location: major U.S. agency markets (NY, LA, Chicago, Austin)
    Success metric: agency contact → introductory call; qualified agency test campaign initiated
    
  HIVE PARTNERS:
    Primary: minimal paid media; not appropriate for landowner acquisition (relationship-driven)
    Exception: LP investor outreach (MBL-level decision; Matt Mathison approves before any LP paid targeting)
    
  MBL PARTNERS:
    Paid media is low priority; deal sourcing is relationship-driven; not a paid media strategy context
    Exception: LinkedIn Thought Leader Ads (boost Matt Mathison posts to a targeted PE/business seller audience — $500-1,000/month; Matt Mathison approves before launch)

PAID MEDIA STANDARDS:

  BUDGET GOVERNANCE:
    All paid media spend requires entity CEO approval before launch
    Monthly spend above $5K: Dr. Lewis notified; entity CEO budget owner
    Monthly spend above $25K: Matt Mathison notified
    No paid media commitment >3 months without quarterly review checkpoint
    
  CREATIVE STANDARDS:
    All paid creative reviewed against mktg-creative-brief-writer standards before launch
    HIPAA (Allevio): all creative pre-approved by Dr. Lewis — no health targeting; no member-facing health claims
    No competitor naming in paid creative (legal risk in B2B)
    Brand voice standards applied per mktg-brand-voice-manager
    
  PERFORMANCE REPORTING:
    Weekly: spend vs. budget; impressions; clicks; CPL
    Monthly: ROAS; MQL attribution from paid; cost per demo
    Quarterly: channel efficiency review; budget reallocation decision
    
  COLUMN6 SELF-SERVE CTV:
    Column6 can leverage its own inventory for own-entity advertising at cost (not mark-up)
    This creates dual value: Column6 reduces its own CPM and generates a live case study of Column6 platform performance
    Column6 CEO + Dr. Lewis approve any self-serve campaigns; Column6 commercial team tracks performance separately for case study use
    Column6 campaign data on own campaigns: can be shared publicly (Column6 advertises on Column6; it's their own data)
```

## Output Format

```markdown
# Paid Media Plan — [Entity] — [Period]
**Prepared by:** Marketing Lead | **Approved by:** Entity CEO | **Budget approved:** $[X]/month
**Dr. Lewis review (Allevio creative):** [Date]

---

## Campaign Summary

| Campaign | Channel | Budget | Target | Goal | Status |
|---------|---------|--------|--------|------|--------|
| [Name] | LinkedIn/Google/CTV | $X/mo | [Audience] | [Demo/contact/awareness] | Active/Planned |

---

## Performance Report

| Campaign | Spend | Impressions | Clicks | CTR | Leads/MQLs | CPL | ROAS |
|---------|-------|------------|--------|-----|-----------|-----|------|

---

## Creative Performance

| Creative variant | Impressions | CTR | Conversion rate | Action |
|----------------|------------|-----|----------------|--------|

---

## Optimization Decisions This Period
- [What changed: budget shift / audience adjustment / creative swap — and why]

---

## Next Period Budget Recommendation
[Total; by channel; rationale]
```

## Output Contract
- Column6 CTV expertise is a strategic differentiator for Column6's own media — most B2B companies spend on LinkedIn and Google without access to CTV inventory; Column6 can run its own agency-targeted CTV campaigns at cost using its own platform; this is not a conflict of interest — Column6 is the advertiser and the platform, and it creates the strongest possible proof of platform capability; Dr. Lewis + Column6 CEO approve any self-serve campaigns, and the performance data becomes case study material for the Column6 sales team (Column6 advertises on Column6 — this is the most credible proof point in programmatic)
- LinkedIn health-condition targeting is not used for Allevio — LinkedIn allows job title, industry, company size, and geography targeting; it also theoretically allows some inferred audience targeting; Dr. Lewis prohibits any Allevio LinkedIn campaign from using health-condition-inferred audiences (e.g., targeting "people who follow health and wellness content" to imply health-related interests); Allevio campaigns target only employer HR/benefits decision-maker job titles and company demographics; the audience must be defined by professional role, not by health status, to maintain HIPAA-compliant marketing practices
- Entity CEO approval is required before any paid media spend is committed — ad platforms require credit card authorization or IO signing; no entity CEO should receive an unexpected invoice for media spend that was not approved; Dr. Lewis does not commit paid media spend without entity CEO sign-off on the budget, the channel, and the campaign objective; the approval is documented in Monday.com; small test campaigns ($500/month) still require entity CEO awareness even if not formal approval
- HITL required: paid media budget → entity CEO approves before any spend; Allevio creative → Dr. Lewis HIPAA review before campaign launch; spend above $5K/month → Dr. Lewis notified; spend above $25K/month → Matt Mathison notified; Column6 self-serve CTV campaign → Column6 CEO + Dr. Lewis approve; LinkedIn Thought Leader Ads (MBL) → Matt Mathison approves

## System Dependencies
- **Reads from:** mktg-demand-generation-manager (demand gen pipeline targets — paid media is a fill-the-gap channel); mktg-messaging-matrix (campaign creative carries L2/L3 messages); mktg-analytics-manager (attribution data — which paid channels generate highest quality pipeline); mktg-creative-brief-writer (creative brief drives all paid ad creative); GoHighLevel (MQL attribution tracking)
- **Writes to:** LinkedIn Ads account (per entity); Google Ads account (per entity); paid media spend report (Monday.com → [Entity] → Marketing → Paid Media); Column6 self-serve campaign records; budget tracking (QuickBooks via expense record); HIPAA creative approval records (Allevio)
- **HITL Required:** Budget → entity CEO; Allevio creative → Dr. Lewis HIPAA; spend >$5K → Dr. Lewis notified; spend >$25K → Matt Mathison; Column6 self-serve CTV → Column6 CEO + Dr. Lewis; MBL Thought Leader Ads → Matt Mathison

## Test Cases
1. **Golden path:** Allevio LinkedIn Ads test campaign. Budget: $2,000/month. Audience: HR Director + VP Benefits + Total Rewards Manager; Arizona; company size 50-500 employees. Creative: Lead Gen Form ad — "Arizona employer? See how Allevio reduces your claim ratio. [Download the guide]." Dr. Lewis HIPAA review: no PHI; no health targeting; employer job title targeting only. Approved. Month 1 result: 180 impressions/day; 12 form completions (employer contacts); CPL $167; 3 scheduled demos → 1 proposal issued. ROAS positive at test scale. Recommendation: scale to $3,500/month in month 2.
2. **Edge case:** Column6 CEO wants to run a paid LinkedIn campaign targeting competitor DSP users → Dr. Lewis: "LinkedIn doesn't have a reliable 'uses The Trade Desk' audience. What we can target is: media planners and programmatic directors at agencies in major U.S. markets who follow DSP/CTV-related content. We're effectively targeting the same audience without needing to know their current platform. Let me build the audience spec and show you the estimated reach before we commit budget. I'll also make sure our creative doesn't name competitors — we focus on our differentiators, not their weaknesses."
3. **Adversarial:** Entity CEO wants to launch a $50K/month paid media campaign without performance data from a pilot → Dr. Lewis: "I'm not recommending $50K/month without knowing what works. The sequence is: (1) $2-3K/month pilot for 60 days; (2) measure CPL and pipeline attribution; (3) scale what works. Committing $50K/month to a channel we haven't tested is speculative. The pilot costs $4-6K and gives us the data to justify the larger spend. If the pilot works, I'll advocate for $50K. If it doesn't, we've saved $50K. Let me build the pilot plan."

## Audit Log
Paid media spend records retained (by entity; by channel; by month). Entity CEO approval records retained. HIPAA creative review records (Allevio — all campaigns). Column6 self-serve campaign records retained. Budget overrun records retained. Performance reports retained monthly.

## Deprecation
Paid media strategy reviewed quarterly. Channel mix updated when audience behavior shifts. Allevio HIPAA targeting standards updated when HIPAA or platform advertising policies change. Column6 self-serve program reviewed when Column6 inventory or platform capabilities change.
