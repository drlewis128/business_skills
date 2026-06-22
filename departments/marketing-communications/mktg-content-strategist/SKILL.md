---
name: mktg-content-strategist
description: "Build and manage content strategy for MBL Partners portfolio entities. Use when the user says 'content strategy', 'content plan', 'editorial calendar', 'content calendar', 'what content should we create', 'content roadmap', 'content pillars', 'content themes', 'blog strategy', 'content marketing', 'thought leadership content', 'content audit', 'content gaps', 'what should we be publishing', 'content for LinkedIn', 'content for email', 'content for the website', 'content library', 'content production', 'content workflow', 'who creates content', 'content distribution', 'repurposing content', 'content ROI', 'is our content working', 'content performance', 'content publishing cadence', 'how often should we publish', or 'what topics should we cover'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|north-vista>] [--channel <blog|email|linkedin|video|events>] [--action <build|audit|plan|review>]"
---

# Marketing Content Strategist

Build and govern content strategy for MBL Partners portfolio entities — defining content pillars, editorial calendars, production workflows, and distribution systems that generate awareness, trust, and pipeline. Content is the fuel for all digital marketing; without a strategy, content production becomes reactive and unmeasured. With a strategy, every piece of content advances a specific business objective.

## When to Use
- An entity has no documented content strategy
- Content production is scattered and inconsistent
- Pipeline generation from content is below expectations
- A new channel (blog, LinkedIn, email newsletter) is being launched

## Content Strategy Framework

```
CONTENT PILLARS (per entity — 3-4 pillars maximum):

  ALLEVIO:
    Pillar 1 — Employer Benefits Intelligence:
      "How to make your benefits program actually work for your workforce"
      Topics: claim cost reduction; care utilization rates; benefits communication; AZ employer market
      Format: long-form blog; email newsletter; LinkedIn article
      Audience: HR/Benefits VP; CFO (financial angle)
      HIPAA: aggregate data only; no member-specific outcomes; Dr. Lewis reviews before publication
      
    Pillar 2 — Care Coordination Explained:
      "What care coordination actually does (and what it doesn't)"
      Topics: care coordinator role; provider navigation; care gaps; member communication
      Format: short explainers; FAQ; webinar
      Audience: HR teams (explaining to employees); potential employer clients
      
    Pillar 3 — Employer Case Studies:
      Proof-based content showing employer outcomes
      Format: one-pager case study; email campaign
      HIPAA: employer aggregate data only; employer name requires employer permission to publish
      
  COLUMN6:
    Pillar 1 — Programmatic Performance:
      "Measurement that matters in CTV and digital programmatic"
      Topics: VCR benchmarks; IVT rates; brand safety; CTV vs. linear; IAB standards
      Format: blog; LinkedIn post; agency newsletter
      Audience: agency media planners and buyers; programmatic managers
      
    Pillar 2 — Inventory and Platform:
      "CTV, mobile, and gaming — how multi-surface programmatic works"
      Topics: supply chain transparency; fraud protection; inventory quality
      Format: one-pager; webinar; event presentation
      
    Pillar 3 — Agency Partnership:
      "What a true agency partner looks like in programmatic"
      Topics: transparency reporting; agency economics; platform reliability
      Format: case study; testimonial (with agency permission); reference program
      
  HIVE PARTNERS:
    Pillar 1 — Basin Operations:
      Uinta Basin production updates; responsible operation practices; DOGM compliance
      Audience: landowners; potential royalty partners; LPs (secondary)
      Format: monthly update letter; annual operations report
      
    Pillar 2 — Royalty Partner Resources:
      "What royalty owners need to know"
      Topics: how royalties are calculated; production timing; landowner rights; Covercy platform guide
      Format: resource page; FAQ document; landowner newsletter
      
    Pillar 3 — LP Communications:
      Performance updates; market context; capital allocation narrative
      Audience: LP investors; co-investors
      Format: quarterly letter; annual report
      Note: LP content follows pe-lp-reporting standards; Dr. Lewis + Matt Mathison approve
      
  MBL PARTNERS:
    Pillar 1 — Portfolio Value Creation:
      How MBL builds operational value in portfolio companies
      Audience: potential sellers; co-investors; talent
      Format: case studies; LinkedIn posts (Dr. Lewis and Matt); thought leadership articles
      Matt Mathison and Dr. Lewis approve all MBL Partners external content
      
    Pillar 2 — THRIVE Framework:
      How MBL's values framework drives better business outcomes
      Audience: potential sellers; talent; industry peers
      Format: Matt Mathison thought leadership; Dr. Lewis articles; event speaking

CONTENT PRODUCTION WORKFLOW:
  Ideate → Brief (mktg-creative-brief-writer) → Draft → Internal review → 
  Compliance review (HIPAA: Allevio; legal: HIVE) → Entity CEO approval → Publish → Distribute → Measure

PUBLICATION CADENCE BY ENTITY:
  Allevio: monthly employer blog (1); quarterly case study (1); weekly email (1); daily LinkedIn (2-3/week)
  Column6: weekly agency insight (1); monthly programmatic update email; conference content (event-driven)
  HIVE: monthly landowner letter; quarterly LP update; annual operations report
  MBL Partners: monthly LinkedIn (Matt/Dr. Lewis combined 4-6 posts); quarterly perspective

CONTENT AUDIT CRITERIA:
  High-performing: shares, comments, pipeline attribution (if trackable), inbound links
  Remove or update: content with outdated data; unsupported claims; voice drift; HIPAA risk
  Quarterly audit for Allevio (HIPAA exposure check on all published content)
```

## Output Format

```markdown
# Content Strategy — [Entity] — [Period]
**Prepared by:** Marketing Lead | **Approved by:** Entity CEO | **Dr. Lewis HIPAA review:** [if Allevio]

---

## Content Pillars

| Pillar | Focus | Primary audience | Formats | Cadence |
|--------|-------|-----------------|---------|---------|
| [Name] | [Topic area] | [Who] | [Blog/email/social] | [Freq] |

---

## Editorial Calendar — [Month/Quarter]

| Date | Title / Topic | Pillar | Format | Channel | Owner | Status |
|------|--------------|--------|--------|---------|-------|--------|
| [Date] | [Topic] | [P1/P2/P3] | [Blog] | [LinkedIn + email] | [Name] | Draft / Review / Published |

---

## Content Production Assignments

| Content piece | Owner | First draft due | Review due | Publish date |
|--------------|-------|----------------|-----------|-------------|

---

## Distribution Plan

| Piece | Primary channel | Secondary channels | Amplification |
|-------|----------------|-------------------|--------------|

---

## Performance Review (prior period)

| Piece | Views/opens | Engagement | Pipeline influence | Action |
|-------|------------|-----------|-------------------|--------|
```

## Output Contract
- Every content piece is assigned to a pillar with a business objective — content that cannot be assigned to a pillar with a clear audience and objective is not produced; "we should write something about the industry" is not a content brief; "we should write a blog post about why AZ employers are underutilizing care coordination, targeting HR VPs who are considering RFP-ing their benefits vendor, with the objective of generating inbound demo requests" is a content brief; pillar assignment happens before any writing begins
- HIPAA review is scheduled into the calendar for all Allevio content — every Allevio content piece has a HIPAA review milestone (Dr. Lewis review) before the publication date; no Allevio content is published without that review; this is enforced in the editorial calendar tool (Monday.com); even a short LinkedIn post about member wellness must pass the review; the most common HIPAA risk in content is aggregate statistics that could be re-identified if the employer's workforce size is small enough; Dr. Lewis checks for this
- Content production is owned, not committee-designed — every content piece has a single owner (the person responsible for the draft being ready by the first draft due date); committees review content; they do not produce it; Dr. Lewis assigns ownership at the quarterly content planning meeting; unowned content in the calendar is marked as blocked and escalated to the entity CEO for resource decision
- HITL required: content strategy → entity CEO approves pillars and cadence; editorial calendar → entity CEO reviews monthly; HIPAA review (Allevio) → Dr. Lewis reviews and signs off before every Allevio publication; HP content with external proof data → entity CEO approves data use; MBL Partners content → Dr. Lewis + Matt Mathison; LP content (HIVE) → Dr. Lewis + Matt Mathison

## System Dependencies
- **Reads from:** mktg-messaging-matrix (pillar content must carry L2/L3 messages); mktg-brand-voice-manager (voice guide for all content production); mktg-seo-manager (keyword strategy — pillar content aligned to target keywords); cs-feedback-loop (customer questions → pillar topic ideation); sales-win-loss (prospect objections → content gaps to fill)
- **Writes to:** Editorial calendar (Monday.com → [Entity] → Marketing → Content Calendar); content library (SharePoint → Marketing → Content → [Entity]); email campaign inputs; social posting queue; content performance log
- **HITL Required:** Content strategy → entity CEO approves; HIPAA review → Dr. Lewis (Allevio — all content); editorial calendar → entity CEO reviews monthly; LP content → Dr. Lewis + Matt Mathison; MBL Partners → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** Allevio Q3 content calendar. Pillar 1: 3 employer benefit intelligence posts (July/Aug/Sep — claims cost reduction trend; care gap analysis; open enrollment prep guide). All scheduled with HIPAA review milestone 7 days before publish date. Dr. Lewis as HIPAA reviewer. Allevio CEO as final approver. LinkedIn distribution planned for day-of publication. Email newsletter cross-promotion on the 15th of each month.
2. **Edge case:** Column6 wants to publish a campaign performance case study naming a specific advertiser → Dr. Lewis: "We need written permission from the advertiser to use their name and any campaign data. This is both a contract obligation and a relationship management decision. I'll draft a case study permission request to the account. If they agree: we can publish with their name and specific data. If they decline: we can publish as 'a national retail advertiser' using anonymized benchmarks — I'd recommend publishing both ways and letting the advertiser decide post-approval."
3. **Adversarial:** Entity CEO wants to increase content production from 1 blog/month to 8 blogs/month without additional resources → Dr. Lewis: "Eight blogs with current resources means eight low-quality blogs. Quality signals in content (shares, links, conversions) come from useful, well-researched content — not volume. I'd rather we produce one excellent pillar piece per month that generates 3 months of social posts, one email, and one event talking point. If eight is the goal, tell me the budget for a content writer. Otherwise, let's define the right number for what we can produce well."

## Audit Log
Content strategy documents retained with version history. Editorial calendar versions retained. HIPAA review records retained (Allevio — all published content). Content performance logs retained. Entity CEO approval records. Matt Mathison approval records (MBL Partners, HIVE LP). Content audit records (quarterly).

## Deprecation
Content pillars reviewed annually. HIPAA compliance review process updated when regulations change. Editorial calendar tool updated when project management system changes. Strategy deprecated with entity CEO approval.
