---
name: mktg-seo-manager
description: "Manage SEO strategy and execution for MBL Partners portfolio entities. Use when the user says 'SEO', 'search engine optimization', 'keyword strategy', 'keyword research', 'organic search', 'organic traffic', 'Google ranking', 'search ranking', 'rank higher', 'show up in search', 'search visibility', 'on-page SEO', 'technical SEO', 'meta description', 'title tag', 'alt text', 'backlinks', 'link building', 'domain authority', 'page speed', 'Core Web Vitals', 'site audit', 'SEO audit', 'content SEO', 'local SEO', 'local search', 'Google Business Profile', 'search terms', 'search intent', 'long-tail keywords', 'keyword gap', 'competitor SEO', 'SEO dashboard', 'organic search report', 'ranking report', or 'why are we not showing up in search'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--action <audit|research|optimize|report>] [--focus <technical|on-page|content|local|backlink>]"
---

# Marketing SEO Manager

Manage organic search strategy for MBL Partners portfolio entities — building keyword authority in each entity's market, optimizing website content for search intent, and tracking ranking performance. For B2B entities (Allevio, Column6), SEO creates inbound pipeline from prospects actively searching for solutions. For HIVE, local search matters for landowner trust. For MBL Partners, search visibility supports deal sourcing and talent attraction.

## When to Use
- An entity's website receives little organic traffic
- A new entity needs baseline keyword strategy built
- Content is being produced without SEO alignment
- A technical issue is suppressing ranking performance

## SEO Framework

```
SEO PRIORITY BY ENTITY:

  ALLEVIO (healthcare MSO):
    Priority: HIGH — employers actively search for "care coordination," "employee benefits MSO," "employer health programs Arizona"
    Primary keywords: "employer care coordination AZ"; "employee benefits MSO"; "group health care coordinator"; "reduce employee claims"
    Content SEO: pillar pages for each primary keyword; supporting cluster content
    Local SEO: Arizona-focused; Google Business Profile for any physical locations
    HIPAA: no member-specific content on any public web page; no health outcome claims that could identify members
    Technical SEO: site must load in <2 seconds on mobile (employer demographic increasingly mobile)
    
  COLUMN6 (CTV/programmatic):
    Priority: MEDIUM — agencies discover through referral and events more than search; SEO supports credibility, not primary acquisition
    Primary keywords: "CTV advertising platform"; "programmatic advertising"; "connected TV advertising"; "programmatic gaming advertising"; "viewability measurement CTV"
    Content SEO: thought leadership around IAB standards; CTV measurement guides
    Technical SEO: fast-loading; clear product/solution pages for agency visitors
    
  HIVE PARTNERS (oil & gas):
    Priority: MEDIUM — landowners often search "Uinta Basin royalties"; "oil royalty payments"; "royalty trust operator Utah"
    Local keywords: "Uinta Basin oil operator"; "Utah royalty payments"; "Duchesne County oil company"
    Content SEO: landowner resource pages; royalty explanation content; operational transparency pages
    Technical SEO: accessible on mobile (rural landowners); fast load time for lower-bandwidth areas
    
  MBL PARTNERS:
    Priority: LOW — deal sourcing is relationship-driven; SEO supports brand credibility and talent
    Primary keywords: "lower middle market private equity"; "healthcare PE acquisition"; "CTV media investment"
    Content SEO: portfolio company case studies; THRIVE values content; Dr. Lewis and Matt thought leadership
    
SEO AUDIT FRAMEWORK:

  TECHNICAL SEO:
    Site speed: Core Web Vitals (LCP <2.5s; FID <100ms; CLS <0.1)
    Mobile: fully responsive; mobile page speed separate from desktop
    Crawlability: sitemap.xml present; robots.txt not blocking key pages; no 404 errors on indexed pages
    HTTPS: all pages served over HTTPS; no mixed content
    Structured data: schema.org markup for organization, local business, articles
    
  ON-PAGE SEO:
    Title tags: unique per page; primary keyword near front; <60 characters
    Meta descriptions: unique per page; 120-160 characters; include CTA
    H1/H2 structure: one H1 per page; H2s organize content logically; keywords used naturally
    Internal linking: content pieces link to pillar pages; orphaned pages identified
    Image alt text: descriptive; keyword-relevant; not keyword-stuffed
    
  CONTENT SEO:
    Keyword-to-page mapping: each target keyword has exactly one target page (no cannibalization)
    Content depth: pillar pages >1,000 words; cluster content 500-800 words
    Search intent match: informational queries get informational content; transactional get landing pages
    HIPAA check (Allevio): every published page reviewed for PHI exposure; health outcome claims reviewed
    
  BACKLINK PROFILE:
    Domain authority tracking (Ahrefs/Moz)
    Industry-relevant backlinks (MGMA for Allevio; IAB for Column6; DOGM/SPE for HIVE)
    Toxic link monitoring; disavow file maintained

REPORTING CADENCE:
  Monthly: organic traffic by page; keyword ranking changes; new keywords entered top 10
  Quarterly: full technical audit; content gap analysis; competitor keyword gap review
  Annual: full strategy review; keyword target refresh
```

## Output Format

```markdown
# SEO Report — [Entity] — [Period]
**Prepared by:** Marketing Lead | **Dr. Lewis review:** [Date]

---

## Organic Traffic Summary

| Metric | This period | Prior period | Change |
|--------|------------|-------------|--------|
| Organic sessions | | | |
| Top 3 landing pages (organic) | | | |
| Keywords in top 10 | | | |
| Average position (target keywords) | | | |

---

## Keyword Rankings

| Target keyword | Current rank | Prior rank | Page ranking |
|---------------|------------|-----------|-------------|
| [Keyword] | | | |

---

## Technical Issues

| Issue | Severity | Pages affected | Fix owner | Due |
|-------|---------|---------------|-----------|-----|
| [Issue] | High/Med/Low | | | |

---

## Content SEO Gaps

| Keyword / topic | Search volume | Intent | Recommended action |
|----------------|--------------|--------|-------------------|

---

## Priorities Next Period
1. [Action — owner — due date]
```

## Output Contract
- HIPAA review is required before any Allevio page is indexed — the most dangerous SEO practice for Allevio is creating indexed pages with member health content to rank for health-related terms; "members who used Allevio saw their diabetes management improve" on a public web page is a HIPAA risk if it can be combined with employer identity information to re-identify members; Dr. Lewis reviews every Allevio web page before it is indexed (robots.txt allows) to verify HIPAA compliance; this is also why Allevio SEO focuses on employer-facing terms, not member-facing health terms
- Keyword cannibalization destroys SEO performance — when two or more pages compete for the same keyword, search engines are confused and both pages rank lower than either would if there were a single authoritative page; Dr. Lewis ensures each entity has a keyword-to-page map that assigns each target keyword to exactly one page; when new content is created, the map is checked first to avoid creating a cannibalizing page; for Allevio, "employer care coordination AZ" belongs to the homepage or the primary employer landing page, not to a blog post that then competes with it
- SEO is a 6-month game, not a sprint — when an entity starts investing in SEO, results appear on a 3-6 month lag; Dr. Lewis sets this expectation with entity CEOs at the start of any SEO program; reporting is done monthly to show progress (even before top rankings), but ranking results are evaluated on a rolling 6-month window; a CEO who kills SEO investment after 90 days because the phone hasn't rung yet has made a mistake that costs 9-12 months of recovery; Dr. Lewis frames SEO investment in terms of the long-term pipeline value, not the current-month conversion rate
- HITL required: keyword strategy → Dr. Lewis + entity CEO review before content is produced; technical SEO changes to site → development lead approves; new Allevio web pages → Dr. Lewis HIPAA review before indexing; MBL Partners website content → Dr. Lewis + Matt Mathison; backlink campaign (outreach for links) → entity CEO aware

## System Dependencies
- **Reads from:** mktg-content-strategist (editorial calendar — SEO must align with pillar content); mktg-messaging-matrix (target keywords must reflect L2/L3 messages); mktg-competitive-intelligence (competitor keyword gaps)
- **Writes to:** Keyword-to-page map (SharePoint → Marketing → SEO → [Entity]); content brief keyword targets; technical SEO task list (Monday.com); monthly SEO report; Google Search Console (entity website property)
- **HITL Required:** Keyword strategy → Dr. Lewis + entity CEO; Allevio web pages → Dr. Lewis HIPAA before indexing; technical changes → dev lead; MBL Partners content → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** Allevio SEO audit. Technical: Core Web Vitals pass; sitemap clean; no 404s on indexed pages. On-page: "employer care coordination AZ" not in title tag of primary landing page — update to "Employer Care Coordination in Arizona | Allevio." Keyword cannibalization: blog post "What is care coordination?" competing with homepage for "care coordination" — update blog to target "care coordination for employees" (long-tail); update homepage to clearly own "care coordination MSO Arizona." HIPAA check: no PHI on any indexed page. Priority action: title tag update; keyword map revision; 2 supporting cluster posts planned Q4.
2. **Edge case:** Column6 CEO wants to rank for "CTV advertising" (broad, high competition keyword dominated by The Trade Desk, Magnite, Roku) → Dr. Lewis: "Ranking for 'CTV advertising' is a 12-18 month program against much larger domains — not where we focus first. Let's own 'programmatic gaming advertising' and 'CTV viewability measurement' first — lower competition, same audience, faster ranking. Once we have domain authority from those, we use them to fuel ranking for broader terms. Here's the keyword roadmap from easy wins to stretch goals: [roadmap]."
3. **Adversarial:** Entity wants to stuff target keywords into every sentence of blog content to "rank faster" → Dr. Lewis: "Keyword stuffing works in 2003. Google's E-E-A-T framework (Experience, Expertise, Authoritativeness, Trustworthiness) penalizes it now. Content that reads naturally, demonstrates real expertise, and provides genuine value outranks thin, over-optimized content. One mention of the target keyword in the first paragraph; one in an H2; use it naturally 2-3 more times in the body. That's it. I'm sending the content back for a rewrite."

## Audit Log
SEO reports retained monthly. Keyword-to-page map versions retained. Technical issue tracking retained (Monday.com). HIPAA web page review records retained (Allevio). Keyword strategy approval records. Matt Mathison review records (MBL Partners).

## Deprecation
Keyword strategy reviewed annually. Technical SEO standards updated when Core Web Vitals standards update. HIPAA review process updated when HIPAA regulations change. Strategy deprecated with Dr. Lewis + entity CEO approval.
