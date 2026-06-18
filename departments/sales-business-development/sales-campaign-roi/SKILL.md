---
name: sales-campaign-roi
description: "Measure and analyze sales campaign ROI for MBL portfolio companies. Use when the user says 'campaign ROI', 'campaign results', 'did the campaign work', 'outreach campaign results', 'email campaign results', 'campaign performance', 'measure the campaign', 'campaign analysis', 'campaign effectiveness', 'marketing ROI', 'was the campaign worth it', 'campaign attribution', 'lead source ROI', 'what did we get from the campaign', 'campaign metrics', 'cost per lead', 'cost per acquisition', 'CPL', 'CPA from campaign', 'email open rate', 'click rate', 'reply rate', 'campaign conversion', 'outbound campaign ROI', or 'trade show ROI'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--campaign <name or type>] [--period <start-date|end-date>] [--action <measure|report|compare>]"
---

# Sales Campaign ROI

Measure and analyze the return on investment of sales and marketing campaigns for MBL portfolio companies — determining what worked, what didn't, and whether to repeat or kill the campaign. Most organizations run campaigns and never measure the result; Dr. Lewis measures every campaign against specific revenue and pipeline metrics so decisions about future campaigns are based on data, not on how "busy" the campaign felt.

## When to Use
- After completing a defined outbound campaign (email sequence; LinkedIn outreach; event)
- After a trade show or industry event (was it worth the cost?)
- Monthly review of all active campaign performance
- Comparing campaign types to allocate the next period's outreach budget

## Campaign ROI Framework

```
CAMPAIGN TYPES AND MEASUREMENT:

  1. OUTBOUND EMAIL SEQUENCES (measured per sequence):
     Metrics:
       □ Contacts enrolled (how many received the sequence)
       □ Open rate (how many opened at least one email)
         Benchmark: 20-35% open rate for cold B2B; >40% = excellent
       □ Reply rate (how many replied)
         Benchmark: 2-5% reply rate for cold; >8% = excellent
       □ Positive reply rate (% that were interested; not just "remove me")
       □ Discovery calls booked (how many led to a scheduled call)
       □ Deals in pipeline (how many became active pipeline opportunities)
       □ Closed deals (how many became closed won; may take 90-180 days)
     ROI calculation:
       Cost: Rep time to write and manage the sequence ($[X] per sequence based on hours)
       Revenue generated: Closed ACV attributable to the sequence
       ROI: Revenue ÷ Cost; or Cost per Pipeline Dollar
       
  2. TRADE SHOW / INDUSTRY EVENT:
     Pre-event targets:
       □ How many qualified contacts will we meet? (Set a goal)
       □ How many discovery calls will we schedule at or from the event?
     Post-event tracking (30-60-90 days after the event):
       □ How many contacts logged in CRM from the event?
       □ How many became pipeline opportunities?
       □ How many converted to closed deals?
       □ Event cost: Booth; travel; lodging; marketing materials; rep time
       □ Revenue attributable to the event (deals that closed from event contacts)
     ROI calculation:
       Event cost: $[X] total (booth + travel + materials)
       Pipeline generated: $[X]K
       Closed revenue (90 days): $[X]K
       ROI: Closed revenue ÷ Event cost
       Break-even: What closed revenue is needed to justify the event cost?
       
  3. LINKEDIN OUTREACH CAMPAIGN:
     Metrics:
       □ Connection requests sent
       □ Connection acceptance rate (15-25% is typical; >30% = excellent)
       □ Message reply rate (5-15% of connections; >20% = excellent)
       □ Discovery calls booked from LinkedIn
       □ Pipeline attributable to LinkedIn
     ROI: Discovery calls booked ÷ Rep hours invested = Calls per hour
     
  4. REFERRAL CAMPAIGN (structured ask period):
     Metrics:
       □ Referral asks made (how many customers were asked?)
       □ Referrals received (how many provided an introduction?)
       □ Referral conversion rate (referrals that became discovery calls)
       □ Referral close rate (% of referral discovery calls that became deals)
       □ Cost: Incentives paid + rep time
     ROI: Referral close rate vs. cold close rate; cost per closed deal via referral

ENTITY-SPECIFIC CAMPAIGNS:

  ALLEVIO — High-value campaigns:
    Email sequences to HR Directors in AZ: Highest volume; measured monthly
    SHRM Arizona conference: Annual; measure against prior year and vs. email outreach cost
    Broker referral program: Measured quarterly (see sales-referral-program)
    
  COLUMN6 — High-value campaigns:
    Agency prospecting sequences: Measured by reply rate and IO bookings per outreach cycle
    Cannes Lions / Advertising Week attendance: Measure contacts → IO bookings within 90 days
    Trade desk direct outreach: Measure by CPM inquiry volume generated
    
CAMPAIGN ALLOCATION DECISION:
  At the end of each quarter, Dr. Lewis reviews all active campaigns and categorizes:
    Keep: ROI is positive and growing; scale this campaign
    Optimize: ROI is marginal; test one change (different hook; different persona; different timing)
    Kill: ROI is negative and optimization hasn't helped; stop spending time on this channel
  The goal: Concentrate rep time in the channels with the highest ROI per hour
```

## Output Format

```markdown
# Campaign ROI Report — [Campaign Name] | [Entity]
**Campaign period:** [Start date] to [End date] | **Campaign type:** [Outbound email / Event / LinkedIn]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Campaign Summary

| Metric | Result | Benchmark | Status |
|--------|--------|-----------|--------|
| Contacts enrolled / reached | [N] | — | — |
| Open / accept rate | [X]% | 20-35% | 🟢 / 🟡 / 🔴 |
| Reply / connection rate | [X]% | 2-8% | 🟢 / 🟡 / 🔴 |
| Discovery calls booked | [N] | — | — |
| Pipeline generated | $[X]K | — | — |
| Closed revenue (to date) | $[X]K | — | — |

---

## ROI Calculation

| Component | Amount |
|-----------|--------|
| Campaign cost (rep hours + spend) | $[X]K |
| Pipeline generated | $[X]K |
| Closed revenue (attributable) | $[X]K |
| **ROI** | **[X]×** |
| **Cost per closed deal** | **$[X]** |
| **Cost per pipeline dollar** | **$[X]** |

---

## Decision

**Verdict:** Keep / Optimize / Kill
**Rationale:** [Why]
**Next action:** [Scale to [N] more contacts / Test a different hook / Replace with [alternative]]
```

## Output Contract
- Measure all three timeframes — campaigns don't close deals in the first week; Dr. Lewis measures campaign results at 30 days (activity metrics: open rate; reply rate; calls booked); 60 days (pipeline metrics: opportunities in active pipeline); and 90-180 days (revenue metrics: closed deals); a campaign with poor 30-day metrics but strong 90-day revenue is a longer-cycle campaign that's working; a campaign with good 30-day metrics but no revenue at 90 days has engagement but not conversion — the problem is downstream in the sales process
- Cost includes rep time, not just spend — the true cost of an outbound email campaign is not the tool cost; it is the rep hours spent researching; personalizing; following up; and debriefing; Dr. Lewis includes rep time in every campaign cost calculation; at $75-100/hour for a rep's fully-loaded time, a campaign that requires 20 hours of rep time costs $1,500-$2,000 before any tool costs; campaigns that generate $500 in pipeline at $2,000 in total cost are negative-ROI even if the "spend" was zero
- Keep/Optimize/Kill is the only output that matters — the campaign report exists to make one decision; a campaign that produces a report with no decision is a wasted report; Dr. Lewis always closes the campaign analysis with a specific verdict and the rationale for it
- HITL required: Dr. Lewis measures and reports; CEO reviews the campaign ROI quarterly and approves the budget for the next quarter's campaigns; any campaign that involves external spend (event registration; LinkedIn Ads; purchased media) requires CEO approval before the spend is committed; Matt Mathison reviews the annual campaign budget as part of the operating plan; Dr. Lewis does not commit external campaign spend without CEO approval

## System Dependencies
- **Reads from:** CRM campaign tracking (GoHighLevel — lead source attribution; contacts enrolled; reply status); email platform analytics (open rate; click rate; reply rate by sequence); trade show CRM records (contacts added at event; source = event name); sales-pipeline-manager (pipeline generated attributed to campaign source); sales-kpi-dashboard (lead source quality by campaign); QuickBooks (event costs; tool costs; any campaign-related spend)
- **Writes to:** Campaign ROI report (SharePoint/Sales/<Company>/CampaignROI/[Campaign]_[Date]_ROI.pdf); campaign allocation recommendation (quarterly — which campaigns to keep; optimize; kill); CEO budget approval request (for next period's campaigns); sales-kpi-dashboard (lead source ROI — feeds the monthly KPI report)
- **HITL Required:** Dr. Lewis measures and recommends; CEO approves external campaign spend and quarterly campaign budget; Matt Mathison approves the annual campaign budget in the operating plan; Dr. Lewis does not commit event spend without CEO approval; Dr. Lewis does not continue a Kill-rated campaign after the verdict without CEO exception

## Test Cases
1. **Golden path:** Measuring the ROI of the Q2 Allevio HR Director email sequence → Dr. Lewis pulls: 180 contacts enrolled; open rate 31% (56 opens); reply rate 6.1% (11 replies — 8 positive; 3 unsubscribes); discovery calls booked: 5; pipeline generated: 3 active deals ($142K combined); closed deals (90-day measurement): 1 closed won ($48K ACV); Cost: 12 rep hours × $80/hour + GoHighLevel sequence cost ($18) = $978 total; ROI: $48K ÷ $978 = 49× (revenue); $142K pipeline ÷ $978 = 145× (pipeline); Verdict: Keep — this is the most efficient top-of-funnel channel; scale to 250 contacts next quarter with a refreshed hook
2. **Edge case:** Allevio's CEO wants to attend a $15,000 trade show (AZ Business Coalition annual event) before the ROI from last year's show is measured → Dr. Lewis: "Before we commit to the $15,000 registration, let's look at last year's data. From the prior conference: 42 contacts logged; 6 became discovery calls; 2 became deals ($162K closed within 90 days). ROI: $162K ÷ $15,000 = 10.8× — that's a strong event ROI. I'd recommend renewing the registration. For this year: I'll prepare 20 pre-event outreach emails to attendees we already know; set a goal of 50 contacts and 10 discovery calls; and measure the results at 30/60/90 days post-event." CEO approves; registration renewed; Dr. Lewis executes the pre-event outreach strategy
3. **Adversarial:** A marketing vendor pitches Allevio on a $5,000/month digital advertising campaign promising "brand awareness" → Dr. Lewis: "Brand awareness is not a measurable ROI metric for a B2B company at Allevio's stage. $5,000/month = $60,000/year. To justify that spend, the campaign would need to generate >$60,000 in closed ACV annually (assuming a 1× ROI at minimum; ideally 3-5× = $180-300K in closed ACV). The vendor's measurement framework is 'impressions' and 'brand lift' — neither of which pays the bills. My recommendation: Do not commit to this campaign. Invest the $5,000/month equivalent (or part of it) in a rep's time for outbound sequences — we have a documented 49× ROI on that channel vs. an unmeasured brand awareness spend. If the CEO wants to test a paid digital campaign, I'd propose a 60-day test with $3,000 total spend and a clear success metric (discovery calls generated)." CEO declines the vendor's proposal; Dr. Lewis proposes the outbound alternative

## Audit Log
All campaign ROI reports retained by entity, campaign, and date. Spend approval records retained. Keep/Optimize/Kill decisions retained with rationale. CEO approval records for external spend retained. Lead source attribution records retained in CRM.

## Deprecation
Retire when each portfolio company has a dedicated Revenue Operations or Marketing Operations role who owns campaign measurement — with Dr. Lewis reviewing the quarterly campaign allocation and Matt Mathison approving the annual campaign budget.
