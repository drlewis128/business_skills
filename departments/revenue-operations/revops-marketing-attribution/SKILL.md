---
name: revops-marketing-attribution
description: "Manage marketing attribution for MBL Partners portfolio entities. Use when the user says 'marketing attribution', 'attribution model', 'first touch attribution', 'last touch attribution', 'multi-touch attribution', 'UTM tracking', 'UTM parameters', 'lead source', 'where did this lead come from', 'what marketing generated this deal', 'marketing source', 'channel attribution', 'attribution report', 'marketing ROI attribution', 'attribution tracking', 'how do we know what marketing is working', 'which channel drove this deal', 'marketing contribution', 'campaign attribution', 'touchpoint tracking', 'attribution setup', 'GoHighLevel attribution', 'GA4 attribution', 'UTM setup', 'UTM standard', 'attribution methodology', 'marketing credit', or 'what drove this close'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--model <first-touch|last-touch|multi-touch>] [--action <configure|audit|report|review>]"
---

# RevOps Marketing Attribution

Manage marketing attribution tracking for MBL Partners portfolio entities — configuring UTM standards, GoHighLevel lead source fields, and GA4 attribution to accurately measure which marketing activities are driving pipeline and closed revenue. Without attribution, marketing spend decisions are made on intuition; with attribution, every dollar can be directed toward what actually works.

## When to Use
- Setting up attribution tracking for a new entity or campaign
- Auditing UTM parameter compliance across all marketing links
- Generating a marketing attribution report for entity CEO or Dr. Lewis
- Determining which channels are producing the highest-quality pipeline

## Attribution Framework

```
UTM PARAMETER STANDARD (ALL MBL ENTITIES):
  Required on ALL external marketing links (email, paid, social, events):
  utm_source = the platform sending traffic (email / linkedin / google / facebook / event / referral)
  utm_medium = the type of marketing (cpc / organic / email / social / direct)
  utm_campaign = specific campaign name (e.g., allevio-q3-employer-outreach; column6-ctvproof-q2)
  utm_content = specific creative or asset variation (e.g., banner-blue / subject-line-b / hero-v2)
  
  Naming convention: lowercase-kebab-case; no spaces; no special characters except hyphens
  Standard enforced by: RevOps (audits UTM compliance in GA4 monthly)
  Consequence of non-compliance: traffic appears as "direct" or "unknown" — no attribution
  
ATTRIBUTION MODEL (PRIMARY):
  MBL standard: Last-Touch Attribution (simpler; appropriate for current scale)
    Definition: 100% of pipeline credit goes to the marketing touchpoint immediately before MQL creation
    Rationale: Allevio and Column6 are early-stage; multi-touch is overkill until pipeline volume justifies it
    
  Supplementary: First-Touch (for brand awareness measurement; which channel first introduced us?)
    Available in GA4 as a secondary dimension; not used for primary credit allocation
    
  Future: Linear Multi-Touch when pipeline volume >100 MQLs/month per entity
    
LEAD SOURCE FIELD IN GOHIGHLEVEL:
  Every contact must have a lead source field populated (mandatory):
    Values: Website Form / Email Campaign / Broker Referral / Event / LinkedIn / Cold Outbound / Other (specify)
    Source: set automatically by GoHighLevel workflow when contact enters via form/email/event
    Manual entry: required when source is not automatically captured (e.g., inbound call; in-person meeting)
    Audit: monthly lead source field completion rate (target: ≥95% of contacts with valid source)
    
HIPAA COMPLIANCE IN ATTRIBUTION (ALLEVIO):
  GA4 configuration: no tracking code on member-facing pages (app.allevio.com or any member portal)
  GA4 tracks only: employer-facing marketing pages (website, blog, landing pages)
  No user-level data: all GA4 reporting is aggregate (no individual employer identified in analytics)
  No retargeting pixels for healthcare conditions (FTC Safeguards; HIPAA marketing rules)
  Dr. Lewis reviews GA4 configuration quarterly for Allevio; any new tracking → Dr. Lewis approves first
  
ATTRIBUTION REPORT CADENCE:
  Monthly: marketing lead and Dr. Lewis; source-level pipeline contribution
  Quarterly: entity CEO + Dr. Lewis; full attribution summary tied to marketing ROI
  Annual: Dr. Lewis + entity CEO; full-year attribution review; channel investment decisions
```

## Output Format

```markdown
# Marketing Attribution Report — [Entity] — [Month/Quarter]
**Attribution model:** Last-touch | **Data source:** GoHighLevel + GA4

---

## Pipeline by Lead Source

| Source | MQLs | SQLs | Opportunities | Pipeline value | Close rate |
|--------|------|------|-------------|--------------|-----------|
| Email Campaign | | | | $X | X% |
| Event | | | | $X | |
| Broker Referral | | | | $X | |
| Website Organic | | | | $X | |
| LinkedIn | | | | $X | |
| Cold Outbound | | | | $X | |
| **Total Marketing-Sourced** | | | | $X | |

---

## Marketing ROI by Source

| Source | Spend | Closed revenue (12-mo lag) | ROI | ≥3× target? |
|--------|-------|--------------------------|-----|------------|
| Email | $X | $X | X× | ✅/⚠️ |
| Events | $X | $X | X× | |

---

## UTM Compliance
- Links audited this month: [N]
- UTM compliance rate: X% (target: 100%)
- Issues found: [N links without UTM]

---

## HIPAA Status (Allevio)
- GA4 member page tracking: ✅ None confirmed / ⚠️ [issue]
- Retargeting pixels on healthcare pages: ✅ None / ⚠️
```

## Output Contract
- Attribution without compliance is attribution theater — a marketing attribution report that shows "email campaign" as the top pipeline driver but where 30% of email links have no UTM parameters is not a report; it is a partial view that makes email look better than it is (untracked email traffic appears as "direct" — which is then credited to a different source); Dr. Lewis requires 100% UTM compliance as a precondition for any attribution report that will be used to make spend decisions; monthly UTM audits ensure compliance; any non-compliant links are fixed within 48 hours
- Attribution at MBL's current scale is an approximation, not a science — last-touch attribution gives credit to the last marketing touchpoint before MQL, but a broker referral that was preceded by 4 email opens, a LinkedIn post read, and an event attendance is not really a "broker referral" lead — it is a lead that marketing warmed over 3 months and a broker closed the loop on; Dr. Lewis presents attribution data with this caveat and uses it directionally (which channels are producing the most pipeline, not which channel produced each deal); at scale, multi-touch attribution gives a more accurate picture; until then, last-touch + awareness of its limits is the appropriate standard
- HITL required: new tracking pixel or GA4 configuration on any Allevio page → Dr. Lewis approves; retargeting pixel for any healthcare-adjacent content → Dr. Lewis blocks (HIPAA marketing rules); monthly GA4 configuration review (Allevio) → Dr. Lewis; annual attribution model review → entity CEO + Dr. Lewis; channel investment reallocation based on attribution data → entity CEO approves

## System Dependencies
- **Reads from:** GoHighLevel (lead source field; contact records; deal-to-source association); GA4 (web traffic by UTM; conversion events; organic search traffic); mktg-analytics-manager (GA4 configuration; UTM standards); mktg-campaign-manager (campaign naming standards → UTM campaign field)
- **Writes to:** Attribution reports (SharePoint → [Entity] → Marketing → Attribution → [Period]); GoHighLevel lead source field corrections; GA4 annotation records; UTM compliance audit log; Dr. Lewis marketing ROI summary (feeds mktg-kpi-dashboard)
- **HITL Required:** New Allevio tracking → Dr. Lewis; retargeting on healthcare content → Dr. Lewis blocks; GA4 config review (Allevio) → Dr. Lewis quarterly; attribution model change → entity CEO + Dr. Lewis; channel reallocation → entity CEO

## Test Cases
1. **Golden path:** Allevio Q3 attribution report. UTM compliance: 97% (2 email links missing utm_content — corrected). Lead sources: Broker Referral 38% of MQLs (highest quality; 62% SQL conversion); Events 24% (MGMA/SHRM; 41% SQL conversion); Email Campaign 22% (28% SQL conversion); Website Organic 12% (35% SQL conversion); LinkedIn 4% (20% SQL conversion). Pipeline by source: Broker $84K; Events $56K; Email $48K; Organic $28K; LinkedIn $8K. Marketing ROI (12-month lag, Q1 closes attributed to Q3 marketing): Email 2.8× (⚠️ below 3× — spend review); Events 4.2× (✅); Broker 6.1× (✅ — broker commission cost offset by high conversion). Recommendation: increase event budget by $4K/quarter; reduce email campaign spend by $3K; investigate LinkedIn ROI before further investment. Entity CEO + Dr. Lewis review; channel allocation adjusted.
2. **Edge case:** A large Allevio deal ($72K ACV) is attributed to "Website Organic" in last-touch because the employer visited the website the day before they filled out the contact form — but the sales team knows this employer was referred by a broker 6 months earlier → Dr. Lewis: "This is exactly why last-touch has limits. The broker referral 6 months ago was the first-touch that started this relationship. GoHighLevel's first-touch source field (if we captured it) would show 'Broker Referral.' I'm going to manually add a note in GoHighLevel: 'Last-touch: Website Organic. First-touch: Broker Referral (6 months prior).' For the attribution report, I'll note this deal in the 'Attribution notes' section so we don't over-credit organic search. At our current MQL volume, manually annotating the largest deals is feasible and improves the quality of our channel analysis."
3. **Adversarial:** Marketing team wants to use a retargeting pixel on Allevio's employee wellness blog to show ads to return visitors → Dr. Lewis: "No. Allevio's employee wellness blog is read by both employer HR contacts and potentially individual employees. A retargeting pixel on this page would: (1) create a custom audience that could include employees (HIPAA risk if health-adjacent content is used for targeting); (2) violate the FTC's health data marketing guidelines if the pixel captures users who have viewed health condition-related content; (3) potentially void Allevio's HIPAA marketing compliance posture. The wellness blog is a member-adjacent page. No retargeting pixels on any Allevio page except the employer-only section (the 'For Employers' marketing pages). I will not approve this request."

## Audit Log
Monthly attribution reports. UTM compliance audit logs. GA4 configuration review records (Allevio — permanent; Dr. Lewis sign-off). Attribution model decisions with rationale. Channel spend reallocation records. HIPAA compliance records for Allevio attribution setup. Any tracking pixel decisions (approved or denied) — permanent record.

## Deprecation
UTM standards reviewed when marketing technology changes. Attribution model reviewed when MQL volume reaches 100+/month per entity. GA4 configuration reviewed quarterly (Allevio HIPAA) and annually (others). Lead source taxonomy reviewed when marketing channels change materially.
