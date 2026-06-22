---
name: mktg-north-vista-brand-manager
description: "Manage North Vista brand and marketing support for MBL Partners portfolio entities. Use when the user says 'North Vista', 'North Vista brand', 'North Vista marketing', 'North Vista branding', 'portfolio marketing support', 'marketing support for portfolio', 'entity marketing support', 'marketing arm', 'marketing support function', 'North Vista design', 'North Vista communications', 'portfolio branding', 'portfolio marketing', 'entity positioning support', 'entity marketing help', 'who does marketing for MBL', 'marketing resources for portfolio companies', 'North Vista strategy', 'North Vista plan', 'brand support for entities', 'marketing services for Allevio', 'marketing services for Column6', 'marketing services for HIVE', 'build a brand for the entity', or 'how does North Vista support the portfolio'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--service <brand|positioning|content|campaign|design|communications>] [--action <plan|execute|audit|coordinate>]"
---

# North Vista Brand Manager

Define and coordinate the North Vista function — MBL Partners' marketing and brand positioning support arm for portfolio entities. North Vista provides marketing strategy, brand development, and communications services to portfolio entities that do not have in-house marketing capability, operating as a centralized marketing resource while maintaining entity-specific brand independence. As entities mature, North Vista's role transitions from execution to coaching.

## When to Use
- An entity needs marketing support but has no in-house marketing team
- North Vista's role or scope for a specific entity needs to be defined or refreshed
- Coordinating marketing support services across multiple entities simultaneously
- Transitioning a portfolio entity from North Vista-managed marketing to internal marketing capability

## North Vista Brand Management Framework

```
NORTH VISTA ROLE AND SCOPE:

  NORTH VISTA IS:
    A marketing support and brand services function within MBL Partners
    Centralized marketing capability available to portfolio entities
    Brand stewardship: ensures entity brands are developed, consistent, and maintained
    Campaign execution support: runs marketing campaigns for entities without marketing leads
    Communications coordination: coordinates PR, thought leadership, and stakeholder communications
    A temporary resource: North Vista supports entities until they build internal marketing capability
    
  NORTH VISTA IS NOT:
    A standalone agency (it serves only MBL portfolio entities)
    A replacement for entity-level marketing leadership (entities should build internal capability over time)
    A creative production house (North Vista coordinates; production may involve external vendors)
    The decision-maker on entity brand (entity CEO owns the brand; North Vista executes and advises)

NORTH VISTA ENTITY SERVICE MODEL:

  TIER 1 — Full Marketing Management (entity has no marketing team):
    North Vista role: full marketing plan execution (campaigns; content; email; social; events)
    Entity relationship: North Vista Marketing Lead + entity CEO
    Dr. Lewis oversight: Dr. Lewis directs North Vista marketing priorities for each entity
    Examples: early-stage or newly acquired entities with no marketing resources
    
  TIER 2 — Embedded Marketing Support (entity has 1 part-time or fractional marketing resource):
    North Vista role: strategy, brand governance, campaign planning; entity resource executes
    Entity relationship: North Vista coaches entity's marketing resource
    Dr. Lewis oversight: quarterly review with entity CEO on marketing performance
    
  TIER 3 — Brand Governance Only (entity has established marketing team):
    North Vista role: brand standards oversight; campaign approval (HIPAA for Allevio); major campaign review
    Entity relationship: entity marketing team leads; North Vista is approval checkpoint
    Dr. Lewis oversight: HIPAA reviews (Allevio); Matt Mathison briefings on marketing performance

CURRENT ENTITY MARKETING MODEL (Dr. Lewis determines; updated as entities scale):
  Allevio: Tier 2 → moving toward Tier 3 as entity scales (HIPAA governance stays with Dr. Lewis permanently)
  Column6: Tier 2 → entity has commercial team with marketing capability; North Vista provides brand + campaign support
  HIVE Partners: Tier 2 → HIVE CEO handles most stakeholder communications; North Vista provides strategy and LP letter support
  MBL Partners: Tier 3 → Matt Mathison content; Dr. Lewis thought leadership; North Vista coordinates

NORTH VISTA BRAND GOVERNANCE FUNCTIONS:
  Brand guidelines: maintain and update per mktg-brand-strategist for each entity
  Voice guide: maintain per mktg-brand-voice-manager for each entity
  Campaign approval: review all external campaigns before launch (HIPAA checkpoint for Allevio)
  Vendor coordination: manage external design/content vendors on behalf of entities
  Template library: maintain shared template library for entity use (email; presentation; one-pager; social)
  
VENDOR MANAGEMENT (external):
  Approved vendors: design agency; copywriter; video production; print vendor
  Vendor briefing: North Vista briefs vendors using mktg-creative-brief-writer
  Vendor output review: North Vista reviews before entity CEO review
  HIPAA (Allevio): vendors must sign BAA if working with any Allevio member-adjacent materials; Dr. Lewis confirms
  NDA: all external vendors have NDA covering portfolio company information; Dr. Lewis confirms before engagement

NORTH VISTA REPORTING TO DR. LEWIS (monthly):
  What North Vista executed for each entity
  Current entity marketing tier and any tier change recommendations
  HIPAA review log (Allevio — all items reviewed that month)
  Vendor engagements and status
  Any entity marketing issues needing Dr. Lewis decision
```

## Output Format

```markdown
# North Vista Monthly Report — [Month/Year]
**Prepared by:** North Vista Marketing Lead | **To:** Dr. Lewis

---

## Entity Marketing Activity Summary

| Entity | Tier | Activities this month | HIPAA reviews | Notable outcomes |
|--------|------|----------------------|--------------|-----------------|
| Allevio | Tier 2 | [List] | [Count; all approved] | [Pipeline; brand outcomes] |
| Column6 | Tier 2 | | N/A | |
| HIVE | Tier 2 | | N/A | |
| MBL Partners | Tier 3 | | N/A | |

---

## HIPAA Review Log (Allevio)

| Item | Review date | Outcome | Notes |
|------|------------|---------|-------|
| [Content piece / campaign] | [Date] | ✅ Approved / ❌ Revised | [What changed if revised] |

---

## Vendor Engagements

| Vendor | Entity | Engagement | Status | NDA on file | BAA (if Allevio) |
|--------|--------|-----------|--------|------------|-----------------|

---

## Entity Tier Recommendations
[Any entity ready to transition to next tier? What's needed?]

---

## Items Needing Dr. Lewis Decision
1. [Issue — recommendation — options]
```

## Output Contract
- North Vista serves entities, not itself — a North Vista function that optimizes for its own perpetuation (keeping entities dependent on North Vista rather than building their marketing capability) is working against portfolio company value creation; Dr. Lewis explicitly reviews entity marketing tier progression quarterly and flags any entity that should be moving toward an in-house marketing team; North Vista's success is measured by entity marketing maturity, not by North Vista's activity volume; an entity that no longer needs North Vista is a marketing success
- HIPAA governance stays with Dr. Lewis regardless of entity marketing tier — even when Allevio has an in-house marketing team (Tier 3), Dr. Lewis remains the HIPAA review authority for all Allevio marketing content; this is not a North Vista function — it is a Dr. Lewis function; Dr. Lewis's HIPAA review is not delegated to North Vista, to the entity marketing team, or to a vendor; it is the one function that does not transition as entities mature
- External vendors are governed by NDA and BAA before engagement — North Vista coordinates external vendors (designers; copywriters; video); before any external vendor receives portfolio company information, Dr. Lewis confirms: (1) NDA signed covering all portfolio company information; (2) BAA signed if the vendor will work with any Allevio materials that could touch member data; "we'll get the NDA later" is not acceptable; vendor work begins after documentation is in place; this is enforced by North Vista as part of the vendor onboarding process
- HITL required: North Vista scope for any entity → Dr. Lewis sets and entity CEO agrees; vendor engagement → Dr. Lewis confirms NDA + BAA (Allevio) before engagement; HIPAA reviews (Allevio) → Dr. Lewis reviews — cannot be delegated; entity tier changes → Dr. Lewis + entity CEO agree; brand guidelines changes → entity CEO approves; North Vista monthly report → Dr. Lewis receives and reviews; Matt Mathison → informed of portfolio marketing tier status quarterly

## System Dependencies
- **Reads from:** mktg-brand-strategist (entity brand guidelines — North Vista maintains); mktg-brand-voice-manager (entity voice guides — North Vista maintains); mktg-creative-brief-writer (vendor briefings use this framework); mktg-campaign-manager (campaigns coordinated through North Vista for Tier 1/2 entities); all entity-specific marketing skills (mktg-allevio-employer-marketer; mktg-column6-agency-marketer; mktg-hive-stakeholder-communicator)
- **Writes to:** North Vista monthly report (SharePoint → MBL → North Vista → Reports → [Month]); entity brand guidelines (SharePoint → Marketing → Brand → [Entity]); vendor contracts and NDAs; HIPAA review log (SharePoint → Allevio → Marketing → HIPAA Reviews); entity marketing tier assessment
- **HITL Required:** Entity scope → Dr. Lewis + entity CEO; vendor NDA + BAA → Dr. Lewis confirms; HIPAA reviews → Dr. Lewis (not delegated); entity tier changes → Dr. Lewis + entity CEO; brand guidelines changes → entity CEO; monthly report → Dr. Lewis reviews; portfolio marketing status → Matt Mathison quarterly

## Test Cases
1. **Golden path:** Allevio transitions from Tier 2 to Tier 3. Trigger: Allevio hires a Marketing Manager in Q2. North Vista role shift: from campaign execution to brand governance and HIPAA review only. Transition plan: North Vista documents all Allevio brand standards, voice guide, CRM setup, and editorial calendar in SharePoint; hands off campaign execution to Allevio Marketing Manager; Dr. Lewis HIPAA review remains; North Vista quarterly brand check-in remains. Dr. Lewis approves transition plan; Allevio CEO agrees. North Vista workload reduction estimated at 8 hours/month; capacity redirected to HIVE (Tier 2 support increase).
2. **Edge case:** A freelance copywriter is brought in to write Allevio employer one-pager content → Dr. Lewis: "Before the freelancer receives any Allevio materials or information: (1) NDA signed covering all portfolio company and Allevio information; (2) since this is employer-facing (not member-facing), BAA is a judgment call — but given Allevio's healthcare context, I require BAA even for employer content vendors as a precaution; (3) Dr. Lewis reviews the brief before the freelancer receives it; (4) Dr. Lewis reviews the final copy before Allevio CEO sees it. NDA and BAA in place before first briefing call. No exceptions."
3. **Adversarial:** Column6 CEO hires an external PR agency without informing North Vista or Dr. Lewis → Dr. Lewis: "This creates a governance gap. The PR agency will be communicating externally on behalf of Column6 — potentially making claims about performance data, making statements to press, or submitting conference abstracts. Before the agency does any external work: (1) NDA covering Column6 information; (2) Column6 brand voice guide and messaging matrix shared with them under NDA; (3) North Vista established as the review checkpoint for all Column6 materials before external distribution; (4) I need to know if the agency has any active press pitches or submissions that are already in motion. I'm not blocking the engagement — I'm governing it. Brief with Column6 CEO within 48 hours."

## Audit Log
North Vista monthly reports retained permanently. Vendor NDA and BAA records retained. HIPAA review logs retained (Allevio — permanent). Entity tier assessment records. Entity marketing plan versions. Brand guidelines versions. Matt Mathison quarterly briefing records.

## Deprecation
North Vista scope reviewed quarterly. Vendor roster reviewed annually. Entity tier assessments reviewed quarterly. HIPAA governance review process updated when HIPAA regulations change. North Vista role reviewed when portfolio company composition changes significantly.
