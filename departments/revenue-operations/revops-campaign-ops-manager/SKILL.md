---
name: revops-campaign-ops-manager
description: "Manage campaign operations and tracking for MBL Partners portfolio entities. Use when the user says 'campaign ops', 'campaign operations', 'campaign tracking', 'campaign setup', 'campaign management', 'marketing campaign', 'run a campaign', 'launch a campaign', 'campaign naming', 'campaign tags', 'campaign budget', 'campaign ROI', 'campaign report', 'campaign performance', 'campaign attribution', 'campaign audit', 'campaign governance', 'manage campaigns', 'set up campaign tracking', 'campaign standards', 'campaign tagging', 'GoHighLevel campaign', 'campaign naming convention', 'campaign isolation', 'campaign template', 'multi-entity campaign', 'cross-entity campaign', 'entity campaign coordination', 'campaign library', or 'campaign review'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--campaign-type <email|event|paid|content|webinar>] [--action <setup|track|report|review|audit>]"
---

# RevOps Campaign Ops Manager

Manage campaign operations standards and tracking for MBL Partners portfolio entities — establishing naming conventions, budget tracking, performance reporting, and cross-entity campaign isolation so marketing campaigns are measurable, attributable, and HIPAA-compliant. Campaign operations is the infrastructure that makes marketing measurable; without consistent ops, campaigns produce effort that cannot be evaluated.

## When to Use
- Setting up tracking for a new marketing campaign
- Auditing campaign naming and UTM compliance
- Reporting on campaign performance for entity CEO or Dr. Lewis
- Establishing campaign standards for a new entity

## Campaign Ops Framework

```
CAMPAIGN NAMING CONVENTION (ALL ENTITIES):
  Format: [entity]-[year]-[quarter]-[campaign-type]-[audience]-[version]
  Examples:
    allevio-2026-q3-email-employers-v1
    column6-2026-q2-event-agencies-ctvproof-v1
    mbl-2026-q4-content-lps-annual-v1
  
  Rules:
    - All lowercase; hyphens only (no spaces; no underscores; no special chars)
    - Include entity prefix → enforces entity isolation in reporting
    - Include version (v1, v2) → enables A/B test tracking and creative iteration
    - Column6 campaigns: never use client names in campaign tags (agency relationship confidentiality)
    - Allevio campaigns: never use employer names or any employee-level identifiers in campaign names
    
CAMPAIGN TRACKING SETUP (PRE-LAUNCH CHECKLIST):
  ☐ Campaign name follows convention (above)
  ☐ UTM parameters set on all links (utm_source + utm_medium + utm_campaign + utm_content)
  ☐ GoHighLevel campaign tag created (matches utm_campaign value exactly)
  ☐ GA4 campaign event configured (for web campaigns)
  ☐ Budget logged in campaign tracking doc (see budget tracking below)
  ☐ Campaign owner named (entity marketing lead)
  ☐ HIPAA review completed (Allevio — Dr. Lewis sign-off; logged before launch)
  ☐ Entity CEO approval obtained for spend ≥$500
  ☐ Monday.com task created for campaign (start / end / owner / deliverables)
  
BUDGET TRACKING PER CAMPAIGN:
  Campaign budget log: SharePoint → [Entity] → Marketing → Campaigns → Budget Tracker
  Fields: campaign name; approved budget; actual spend to date; committed spend; variance
  Review: monthly by Dr. Lewis and entity marketing lead
  Thresholds: <$500 marketing lead approves; $500-$5K entity CEO; >$5K entity CEO + Dr. Lewis
  Over-budget alert: >10% over approved budget → entity CEO aware immediately
  
PERFORMANCE METRICS PER CAMPAIGN:
  Email campaigns: Open rate; Click rate; Unsubscribe rate; MQL count; SQL conversion
  Event campaigns: Registrations; Attendance; MQLs generated; pipeline attribution
  Paid campaigns: Impressions; CTR; CPC; MQL count; CPL; pipeline value; ROI
  Content campaigns: Views; Downloads; MQL count; SQL conversion; SEO ranking
  Webinar campaigns: Registrations; Attendance rate; MQLs post-webinar; follow-up conversion
  
CAMPAIGN ISOLATION (ENTITY-LEVEL):
  No campaign contact list spans multiple entities (Allevio contacts never receive Column6 content)
  GoHighLevel campaign tags are entity-specific (include entity prefix)
  GA4 data is entity-specific (separate GA4 properties per entity's website)
  Budget tracking is entity-specific (no cross-entity campaign budget pools)
  
CAMPAIGN REPORTING CADENCE:
  During campaign: weekly performance check by entity marketing lead; alert if >25% below target at midpoint
  Post-campaign: results report within 2 weeks of campaign end (entity CEO + Dr. Lewis)
  Quarterly: Dr. Lewis reviews all active campaigns; identifies low-ROI campaigns for pause or stop
```

## Output Format

```markdown
# Campaign Ops Report — [Entity] — [Campaign Name] — [Date]
**Campaign owner:** [Marketing lead] | **Status:** Active / Completed | **HIPAA reviewed:** ✅/N/A

---

## Campaign Setup (Pre-Launch)

| Item | Status |
|------|--------|
| Naming convention | ✅ allevio-2026-q3-email-employers-v1 |
| UTM parameters | ✅ All 4 fields set |
| GHL campaign tag | ✅ Matches UTM campaign |
| Budget logged | ✅ $2,400 approved |
| Entity CEO approval | ✅ Approved [date] |
| HIPAA review | ✅ Dr. Lewis sign-off [date] |

---

## Performance (as of [Date])

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Email open rate | X% | ≥25% | ✅/⚠️ |
| Click rate | X% | ≥3% | |
| MQLs generated | [N] | [N] | |
| Pipeline attributed | $X | $X | |

---

## Budget Status
Approved: $X | Spent to date: $X | Remaining: $X | On track: ✅/⚠️

---

## Post-Campaign Results (completed campaigns)
MQL count: [N] | SQL conversion: X% | Revenue attributed (12-month): $X | ROI: X×
```

## Output Contract
- Campaign naming is not optional administrative work — consistent naming convention is what allows Dr. Lewis to pull a campaign report across all active Allevio campaigns and understand instantly what is running, for whom, and in what quarter; a campaign named "March Email" or "Q3 Push" or "Spring Campaign" tells you nothing about entity, audience, type, or version and makes attribution and budget tracking impossible at scale; the naming convention takes 30 seconds to apply and saves hours of report reconciliation; Dr. Lewis enforces it as a pre-launch gate — no campaign goes live without a compliant name
- Mid-campaign performance checks prevent sunk-cost commitment — a campaign that is 25% below target at its midpoint has a systematic problem that waiting until the end will not fix; Dr. Lewis requires entity marketing leads to flag mid-campaign underperformance immediately (email open rate below 15% at week 2 of a 4-week campaign; event registrations below 30% of target at 2 weeks out; paid CPL above 2× target at first spend review); the question is always "do we adjust now or do we waste the rest of the budget?"; the answer should usually be "adjust now"
- HITL required: Allevio campaign → Dr. Lewis HIPAA review before launch (every campaign, every time); spend ≥$500 → entity CEO approval; spend >$5K → entity CEO + Dr. Lewis; over-budget >10% → entity CEO immediately; post-campaign report → entity CEO + Dr. Lewis; quarterly campaign review → entity CEO + Dr. Lewis

## System Dependencies
- **Reads from:** GoHighLevel (campaign tags; contact engagement; MQL triggers); GA4 (web traffic; UTM-tagged sessions; conversion events); mktg-marketing-attribution (UTM standards; lead source tracking); mktg-marketing-budget-manager (campaign budget approvals and tracking); Monday.com (campaign tasks and timelines)
- **Writes to:** Campaign ops reports (SharePoint → [Entity] → Marketing → Campaigns → [Campaign Name]); Budget tracker; GoHighLevel (campaign tags; campaign automation); Monday.com (campaign tasks); Dr. Lewis quarterly campaign review
- **HITL Required:** Allevio campaign → Dr. Lewis before launch; ≥$500 spend → entity CEO; >$5K → entity CEO + Dr. Lewis; over-budget >10% → entity CEO; post-campaign → entity CEO + Dr. Lewis; quarterly review → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio Q3 employer email campaign setup. Campaign name: allevio-2026-q3-email-employers-v1. UTMs: utm_source=email; utm_medium=email; utm_campaign=allevio-2026-q3-email-employers-v1; utm_content=subject-line-a. GHL tag: allevio-2026-q3-email-employers-v1 (exact match). Budget: $1,200 (email platform cost + copywriting). Entity CEO approval: ✅ (June 28). HIPAA review: Dr. Lewis signs off June 29 (email content reviewed — no PHI; no health condition references; employer-only audience; GoHighLevel BAA in effect; no member-page tracking links). Launch: July 1. Week 2 check: open rate 29% (✅ above 25%); click rate 3.8% (✅ above 3%); 4 MQLs generated. Campaign completes July 31. Post-campaign report: 11 MQLs; 4 SQLs (36% conversion ✅); $72K pipeline attributed; ROI (12-month projection): 3.4× (✅ above 3×).
2. **Edge case:** Column6 campaign includes a case study in the email that names a specific agency client → Dr. Lewis: "Before this goes out, I need to verify: do we have written permission from this agency to name them in a Column6 marketing campaign? If yes, I need to see the permission document. If no, we use the anonymous version of the case study: 'A leading national media agency achieved X% VCR improvement...' The anonymous version is always approved. The named version requires explicit written permission on file. Do not launch with the named case study until I have the permission document."
3. **Adversarial:** Entity marketing lead launches a campaign without completing the pre-launch checklist — no HIPAA review, no entity CEO approval for $800 spend → Dr. Lewis: "This campaign is being paused immediately. Two gates were skipped: (1) HIPAA review — for Allevio, this is non-negotiable regardless of how simple the content looks; (2) entity CEO approval for spend ≥$500 — the entity CEO must authorize budget. I'm pulling the campaign from distribution now. If it has already gone out: I'm reviewing the content for HIPAA compliance; if it passes review, I'll note the procedural failure and re-send with proper approval (no harm done other than the process violation); if it fails review, we need to send a correction. This is not the standard I will accept. I will work with the entity CEO to make sure the pre-launch checklist is required for every campaign going forward."

## Audit Log
Campaign ops records (all campaigns — naming, setup, performance, post-campaign) retained permanently. HIPAA review records (Allevio — permanent; Dr. Lewis sign-off). Entity CEO approval records for spend. Over-budget alerts. Budget tracker records. UTM compliance audit records. Mid-campaign performance alerts. Quarterly campaign review records.

## Deprecation
Naming convention reviewed when portfolio entities change or when new campaign types are added. Pre-launch checklist reviewed when HIPAA regulations change or when new tools are added. Budget thresholds reviewed when entity scale changes. Performance benchmarks reviewed when industry email/event standards change.
