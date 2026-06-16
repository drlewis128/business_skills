---
name: outbound-partnership-prospector
description: "Run outbound partnership prospecting. Use when the user says 'find partnership prospects', 'outbound BD', 'prospect for partners', 'find potential partners', 'BD outreach', 'outbound partnership outreach', 'identify partner targets', 'build a list of partnership prospects', 'partnership prospecting', or 'outbound partner sourcing'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--partner-type <referral|co-sell|technology>] [--sources <LinkedIn|directories|events|associations>] [--count <target number>]"
---

# Outbound Partnership Prospector

Systematically prospect for new partnership candidates — building a qualified list of potential partners through targeted research and outreach. Outbound partnership prospecting is the proactive alternative to waiting for inbound inquiries: instead of taking whoever shows up, we identify the best possible partners and approach them with a compelling reason to engage. Done correctly, it produces a pipeline of qualified prospects that fit the ideal partner profile; done poorly, it generates a list of companies who will ignore the outreach.

## When to Use
- The partner pipeline is thin and needs new prospects added
- Entering a new market where we need to identify the partner landscape from scratch
- A recruitment campaign is being launched to add [N] new partners in [timeframe]
- Existing inbound partner inquiries don't match the ideal partner profile
- Matt Mathison asks "who should we be reaching out to for partnerships?"

## Prospecting Sources

```
Ranked by expected yield and quality:

1. Referrals from existing partners: "Who else in your network serves similar clients?"
   Yield: Highest quality; partner pre-validates the prospect.
   
2. Referrals from existing customers: "Who else helps you run your practice/business?"
   Yield: High quality; customers know who they trust.
   
3. Trade association directories: Search by member category + geography.
   Yield: High volume; medium quality (need qualification).
   
4. Conference exhibitor/attendee lists: Target companies presenting or attending.
   Yield: Medium volume; medium quality.
   
5. LinkedIn search: Title + industry + geography + company size filters.
   Yield: High volume; low-medium quality (no pre-validation).
   
6. Industry directories (Crunchbase, G2, specialty directories): Company search.
   Yield: High volume; needs heavy filtering.

Rule: Always start with referrals (Sources 1-2) before going to directories (Sources 3-6).
```

## Output Format

```markdown
# Outbound Partnership Prospecting — <Company Name>
**Partner type:** [Referral / Co-sell / Technology]
**Target count:** [N] qualified prospects
**Sources used:** [List]
**Prepared by:** Dr. John Lewis | **Date:** <date>

---

## Ideal Partner Profile (Prospecting Criteria)

| Criterion | Definition | Hard filter? |
|-----------|----------|------------|
| Company type | [E.g., "Healthcare advisor, billing consultant, physician practice management firm"] | ✅ Hard filter |
| Geography | [E.g., "Arizona + adjacent states"] | ✅ Hard filter |
| Customer base | [E.g., "Serves independent physician practices — 2-15 physicians"] | ✅ Hard filter |
| Customer relationship type | [E.g., "Advisory/consulting — not staffing/temporary placements"] | ✅ Hard filter |
| Company size | [E.g., "1-30 employees — owner-operated or small team"] | ✅ Hard filter |
| No conflict | [E.g., "Not affiliated with a direct competitor's referral program"] | ✅ Hard filter |
| Revenue (approx.) | [E.g., "$500K-$5M annual revenue"] | ⚠️ Soft filter |

---

## Prospect List

### Tier 1 (Highest priority — warm or strong profile match)

| # | Company | Contact | Source | Profile match | Score | Status |
|---|---------|---------|--------|--------------|-------|--------|
| 1 | [Company] | [Name, Title] | [Referral from Partner A] | [Why they match — specific] | [/10] | Not yet contacted |
| 2 | [Company] | [Name, Title] | [AZ Medical Assoc. directory] | [Why they match] | [/10] | Not yet contacted |
| 3 | [Company] | [Name, Title] | [Customer referral] | [Why they match] | [/10] | Not yet contacted |

### Tier 2 (Medium priority — good profile but less warm)

| # | Company | Contact | Source | Profile match | Score | Status |
|---|---------|---------|--------|--------------|-------|--------|
| 4 | [Company] | [Name, Title] | [LinkedIn search] | [Why they match] | [/10] | Not yet contacted |
| 5 | [Company] | [Name, Title] | [Conference list] | [Why they match] | [/10] | Not yet contacted |

### Tier 3 (Lower priority — meets basic criteria; needs more qualification)

| # | Company | Contact | Source | Profile match | Score | Status |
|---|---------|---------|--------|--------------|-------|--------|
| 6 | [Company] | [Name, Title] | [Directory] | [Why they're here — some criteria match] | [/10] | Not yet contacted |

---

## Sourcing Activity Log

| Source | Time spent | Prospects found | Qualified (Tier 1-2) | Efficiency |
|--------|-----------|----------------|---------------------|-----------|
| Referrals (from partners/customers) | [N hrs] | [N] | [N] | [N qualified / hr] |
| Trade association directory | [N hrs] | [N] | [N] | |
| LinkedIn search | [N hrs] | [N] | [N] | |
| Conference list | [N hrs] | [N] | [N] | |

Most efficient source: [Source with highest qualified/hr ratio]

---

## Outreach Queue (next 10 days)

| Prospect | Tier | Outreach method | Draft message ready? | Send by |
|---------|------|----------------|---------------------|---------|
| [Name] | 1 | Email — warm intro via [referrer] | ✅ | [Date] |
| [Name] | 1 | LinkedIn + email | ✅ | [Date] |
| [Name] | 2 | Email | ⚠️ Draft needed | [Date] |

---

## Outreach Template (Tier 1 — warm intro)

> **Subject:** Introduction — [Referrer name] suggested I reach out
>
> Hi [First name],
>
> [Referrer name] at [Company] suggested I connect with you — they mentioned you advise [description of their practice type] and thought there might be a natural fit with what we do at [Company].
>
> We work with [target customer type] to [specific problem solved] — typically [key outcome]. I won't take up much of your time: I'm just curious whether there's a conversation worth having about how our work intersects.
>
> Would you have 20 minutes in the next couple of weeks?
>
> Best,
> Dr. John Lewis
> jlewis@mblpartners.com | 602-880-6491

## Outreach Template (Tier 2 — no warm intro)

> **Subject:** [Company] + [Prospect Company] — potential fit?
>
> Hi [First name],
>
> I came across [Prospect Company] through [source] — you're clearly working with the same [independent practices / client type] we serve at [Company].
>
> We help [description] — not a competitor to what you do, but complementary. I thought there might be a referral relationship worth exploring.
>
> Would you have 20 minutes to connect? No agenda other than seeing if there's something here.
>
> Dr. John Lewis | jlewis@mblpartners.com

---

## Matt Mathison Flag

Prospects where Matt Mathison may have an existing relationship or should be aware before outreach:
- [Prospect name] at [Company] — [Why Matt Mathison should know: relationship, MBL investor, portfolio connection]
- [Prospect name] — [Reason]
```

## Output Contract
- Tier 1 prospects always come from warm sources — outreach without any warm context has a 5-15% response rate; outreach with a warm referral has a 40-60% response rate; Tier 1 always starts with people who were referred, not cold
- Hard filter criteria always applied before listing a prospect — any prospect in the list who doesn't meet every hard filter criterion is a waste of outreach time; the hard filters are non-negotiable gatekeepers for the list
- Sourcing efficiency tracked — knowing which sources produce the most qualified prospects per hour invested allows BD time to be concentrated on the highest-yield sources; this is how BD becomes more efficient over time
- Matt Mathison flag always included — outreach to a company where Matt Mathison has a relationship without his knowledge can damage the relationship; every prospect should be checked against the "people Matt knows" filter before outreach goes out
- HITL required: Dr. Lewis builds and executes the prospecting plan; Matt Mathison reviews the list for any relationships before outreach begins; any outreach to a company where Matt has a direct relationship requires his coordination or blessing; first outreach on each Tier 1 prospect requires no additional approval unless Matt knows them

## System Dependencies
- **Reads from:** Trade association directories, LinkedIn, conference lists, partner referrals, customer referrals, existing CRM (avoid re-contacting)
- **Writes to:** Prospect list (SharePoint/BD/Prospecting); BD pipeline (CRM); outreach log
- **HITL Required:** Dr. Lewis prospects; Matt Mathison reviews for relationship conflicts; Dr. Lewis leads all outreach

## Test Cases
1. **Golden path:** Allevio builds a list of 15 qualified referral partner prospects for Q3 outreach → Ideal profile: AZ healthcare consultants serving 2-15 physician practices; Sources: (1) asked 3 existing partners + 5 customers for referrals → 4 warm referrals (Tier 1); (2) AZ Medical Association directory → 8 qualified names (Tier 2); (3) LinkedIn → 6 prospects (Tier 3, need more qualification); Final list: 4 Tier 1, 8 Tier 2, 3 Tier 3 (15 total); Matt Mathison knows 1 Tier 1 prospect — he introduces Dr. Lewis directly; 10 outreach messages sent in 5 days; 6 responses (60% from Tier 1 referrals; 35% from Tier 2); 4 discovery calls scheduled within 2 weeks
2. **Edge case:** LinkedIn search produces 50 potential prospects but it's unclear which ones meet the customer relationship type filter → don't add all 50 to the list; invest 30 minutes reviewing each company's LinkedIn page and website to assess whether they have advisory relationships with their clients; the goal of prospecting is a small list of high-quality targets, not a large list of uncertain ones; quality beats quantity in outbound BD
3. **Adversarial:** An existing partner receives an outreach from us for a referral partnership, not knowing we were already in a formal partnership discussion with a different contact at their company → this is a process failure; the CRM must have a field for "all contacts at this company" so duplicate outreach is prevented; add a pre-outreach CRM check step to the prospecting workflow; when identified, reach out to the right person and acknowledge the crossed wires — "I realize we may have been in touch with [name] at your team as well — sorry for the confusion, I wanted to make sure we're connected with the right person"

## Audit Log
Prospect lists retained with source and qualification date. Outreach activity logged (date, channel, message). Response rates tracked by source. Matt Mathison relationship flags documented. Pipeline conversion from prospecting tracked.

## Deprecation
Retire when portfolio companies have dedicated BD SDRs or outbound partnership reps who own prospecting as a full-time function with CRM-integrated outreach sequencing.
