---
name: mktg-campaign-manager
description: "Plan and manage integrated marketing campaigns for MBL Partners portfolio entities. Use when the user says 'marketing campaign', 'campaign plan', 'integrated campaign', 'campaign management', 'campaign launch', 'campaign strategy', 'marketing program', 'campaign brief', 'campaign timeline', 'campaign kickoff', 'multi-channel campaign', 'cross-channel campaign', 'campaign calendar', 'campaign tracking', 'campaign performance', 'campaign results', 'campaign ROI', 'campaign report', 'marketing initiative', 'launch a campaign', 'run a campaign', 'employer campaign', 'open enrollment campaign', 'agency awareness campaign', 'demand gen campaign', 'awareness campaign', 'product launch campaign', 'retention campaign', 're-engagement campaign', 'campaign optimization', or 'how did the campaign do'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--type <awareness|demand-gen|retention|event|product-launch|open-enrollment>] [--action <plan|launch|manage|report>]"
---

# Marketing Campaign Manager

Plan, execute, and report on integrated marketing campaigns for MBL Partners portfolio entities — coordinating email, social, content, paid, and events into unified campaigns with clear objectives, timelines, and performance metrics. A campaign manager converts channel tactics into a coordinated program with one business objective. Without campaign management, marketing channels operate in silos and attribute impact incorrectly.

## When to Use
- Launching a new integrated campaign (demand gen; retention; product launch; seasonal)
- Managing a multi-channel program that involves content, email, social, and events simultaneously
- Reviewing campaign performance mid-flight and making optimization decisions
- Reporting campaign results to entity CEO or Matt Mathison

## Campaign Management Framework

```
CAMPAIGN TYPES BY ENTITY:

  ALLEVIO:
    1. Employer Demand Gen Campaign (ongoing; quarterly refresh):
       Objective: generate employer demo requests
       Channels: content SEO + LinkedIn organic + email nurture + LinkedIn ads (optional)
       KPI: demo requests; MQL count; cost per demo request
       
    2. Open Enrollment Campaign (seasonal; Q3 prep for Jan 1 plan year):
       Objective: support employer clients through open enrollment communication to employees
       Audience: existing employer clients (HR teams); members (secondary — compliance only)
       Channels: employer email; materials kit; employer guide; coordination with care coordinators
       HIPAA: employer-facing content only; member communications reviewed by Dr. Lewis; no PHI
       KPI: employer enrollment support completion rate; member enrollment rate (aggregate; no PHI)
       
    3. Referral / Retention Campaign (annual):
       Objective: generate employer referrals from existing employer clients; reduce churn
       Channels: email to employer contacts; 1:1 outreach from care coordinators; referral incentive
       KPI: referrals generated; GRR impact
       
  COLUMN6:
    1. Agency Awareness Campaign (quarterly):
       Objective: introduce Column6 to new agencies; generate intro call requests
       Channels: LinkedIn organic + ads; email; conference presence; thought leadership
       KPI: new agency contacts entered; intro calls scheduled; test campaigns initiated
       
    2. Retention Campaign (semi-annual):
       Objective: deepen relationships with active agency accounts; prevent churn to competitors
       Channels: QBR content; performance reports; agency-specific case study updates; event invitations
       KPI: NRR; agency satisfaction (qualitative); upsell/cross-surface campaign initiation
       
  HIVE:
    1. Landowner Relationship Campaign (ongoing; low-intensity):
       Objective: maintain landowner trust; prevent relationship gaps
       Channels: monthly letter; annual site visit program; Covercy platform engagement
       KPI: landowner retention; royalty dispute rate (target: zero)
       
  MBL PARTNERS:
    1. Deal Sourcing Visibility Campaign:
       Objective: build Matt Mathison and MBL Partners' visibility in deal-flow channels
       Channels: Matt LinkedIn thought leadership; ACG/NVCA speaking; broker relationship outreach
       KPI: inbound deal inquiries attributed to visibility activities; conference leads
       Matt Mathison approves all MBL Partners campaigns

CAMPAIGN PLANNING PROCESS:
  1. Campaign brief (mktg-creative-brief-writer): objective; audience; message; channels; timeline; budget; success metric
  2. Campaign calendar: all channel deliverables mapped to dates (Monday.com)
  3. Asset production: content; email; social; paid creative — all tracked in Monday.com with owners and due dates
  4. HIPAA review checkpoint (Allevio): all assets reviewed by Dr. Lewis before campaign launch
  5. Entity CEO approval: campaign plan + key assets approved before launch
  6. Launch: simultaneous channel activation on launch date
  7. Mid-flight optimization: weekly check on KPIs; adjustments as needed
  8. Results report: at campaign close (or monthly for ongoing campaigns)

CAMPAIGN PERFORMANCE STANDARDS:
  Every campaign has a stated objective and KPI before launch
  KPIs reviewed weekly during campaign; entity CEO briefed if KPI is >25% below target after 2 weeks
  Campaign with >50% underperformance at midpoint: Dr. Lewis + entity CEO decide to adjust or stop
  Budget discipline: no mid-campaign overspend without entity CEO re-authorization
```

## Output Format

```markdown
# Campaign Plan — [Entity] — [Campaign Name] — [Date]
**Objective:** [One specific, measurable business outcome]
**Audience:** [ICP definition]
**Duration:** [Start] → [End]
**Budget:** $[X] | **Approved by:** [Entity CEO + date]

---

## Channel Plan

| Channel | Deliverable | Owner | Due | Launch date |
|---------|------------|-------|-----|------------|
| Content | [Blog post] | [Name] | | |
| Email | [Nurture sequence] | | | |
| Social | [LinkedIn posts — 3x/week] | | | |
| Paid | [LinkedIn Lead Gen Ad] | | | |
| Events | [Webinar / conference] | | | |

---

## HIPAA Checkpoints (Allevio only)
- [ ] All assets reviewed by Dr. Lewis before launch
- [ ] No PHI in any campaign asset
- [ ] Employer-only audience confirmed (not member-facing)

---

## KPIs

| KPI | Target | Measurement method |
|-----|--------|-------------------|
| [Demo requests] | [X] | [GoHighLevel pipeline] |

---

## Mid-Flight Review Schedule
Week 2 review: [Date] | Week 4: [Date] | Campaign close: [Date]

---

## Results Report (at close)

| KPI | Target | Actual | Delta | Insight |
|-----|--------|--------|-------|---------|
```

## Output Contract
- Every campaign has one primary objective — a campaign that tries to drive awareness, generate leads, retain existing clients, and build brand reputation simultaneously does none of them well; Dr. Lewis requires each campaign to have exactly one primary KPI before planning begins; supporting metrics are fine, but the one that determines whether the campaign succeeded or not must be identified upfront; entity CEOs sometimes push back on this ("but we want to do everything") — Dr. Lewis explains that focused campaigns outperform diffuse ones in B2B markets consistently
- HIPAA checkpoint for Allevio is scheduled into every campaign plan before production begins — not as an afterthought before launch; by the time Dr. Lewis reviews campaign assets in the final days before launch, any HIPAA issue requires emergency rework that delays the campaign and stresses the team; Dr. Lewis reviews at brief stage (is the concept HIPAA-compliant?) and at draft stage (is the execution HIPAA-compliant?); two-stage review is faster in total than one emergency review at the end
- Campaign results are shared with entity CEO whether good or bad — a marketing team that only reports results when they are positive is a team that cannot be trusted; Dr. Lewis ensures every campaign generates a results report, even when the results are below target; the results report includes not just the numbers but the analysis (what worked; what didn't; what we'd do differently); a campaign that failed with documented learning is more valuable than a campaign that was quietly buried
- HITL required: campaign plan → entity CEO approves before production; Allevio campaign assets → Dr. Lewis HIPAA review; budget overspend request → entity CEO re-authorizes; campaign stop decision (>50% underperformance) → entity CEO + Dr. Lewis; MBL Partners campaign → Matt Mathison approves; results reports → entity CEO receives within 2 weeks of campaign close

## System Dependencies
- **Reads from:** mktg-creative-brief-writer (campaign brief inputs); mktg-messaging-matrix (campaign messages); mktg-content-strategist (campaign content aligned to editorial calendar); mktg-email-marketer (email channel execution); mktg-social-media-manager (social channel execution); mktg-paid-media-manager (paid channel execution); mktg-analytics-manager (campaign performance data)
- **Writes to:** Campaign plan (SharePoint → Marketing → Campaigns → [Entity] → [Campaign]); Monday.com campaign board (all deliverables tracked); GoHighLevel (campaign-specific contact tags and pipeline stages); campaign results report; entity CEO briefing
- **HITL Required:** Campaign plan → entity CEO; Allevio assets → Dr. Lewis HIPAA; budget overspend → entity CEO; stop decision → entity CEO + Dr. Lewis; MBL Partners → Matt Mathison; results reports → entity CEO

## Test Cases
1. **Golden path:** Allevio Q3 Open Enrollment Campaign. Objective: support 12 existing employer clients through employee open enrollment; generate 2 referrals. Channels: 1 employer guide (HIPAA-reviewed); 3 employer emails (Dr. Lewis reviewed all before send); 1 webinar for employer HR teams. Budget: $0 (internal only). HIPAA checkpoints: all assets reviewed at brief stage (approved) and draft stage (Email 2 had one line removed — "employees with chronic conditions will benefit most" — replaced with "employees get connected to the right care faster"). Launched September 1. Results: 12/12 employers engaged; 11/12 completed enrollment support; 1 referral generated. Report sent to Allevio CEO September 30.
2. **Edge case:** Campaign is significantly underperforming at week 2 → Dr. Lewis: "We're at 15% of the MQL target with 50% of the budget spent. Before we spend the other 50%, I need to diagnose: (1) is the audience wrong? (2) is the message wrong? (3) is the channel wrong? Let me look at the data — open rates, click rates, landing page conversion. I'll present a pivot recommendation to the Allevio CEO in 48 hours with three options: adjust targeting, swap the creative, or stop and redirect budget. We don't keep spending on a campaign that isn't converting."
3. **Adversarial:** Entity CEO wants to launch a campaign in 48 hours that requires 8 creative assets and HIPAA review → Dr. Lewis: "I can't approve a 48-hour launch for a campaign that requires HIPAA review and 8 assets. The HIPAA review alone takes 2-3 days when done properly. What I can do in 48 hours: launch one channel (email only) with pre-approved messaging; everything else follows the proper process. Compressing timelines on HIPAA compliance creates real legal risk. Tell me what the business urgency is — maybe we can solve for that without compressing the compliance review."

## Audit Log
Campaign plans retained with version history. Entity CEO approval records. HIPAA review records (Allevio — all campaigns). Budget authorization records. Mid-flight optimization decision records. Results reports retained permanently. Matt Mathison approval records (MBL Partners).

## Deprecation
Campaign playbooks reviewed annually. HIPAA review process updated when HIPAA regulations change. Campaign performance benchmarks updated annually based on actual results. Campaign type library updated when entity adds new products or markets.
