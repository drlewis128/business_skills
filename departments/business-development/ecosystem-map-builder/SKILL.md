---
name: ecosystem-map-builder
description: "Map the partner ecosystem for a market or company. Use when the user says 'ecosystem map', 'partner ecosystem', 'who should we partner with', 'map out the ecosystem', 'partner landscape', 'who are the key players we should be working with', 'partner ecosystem analysis', 'ecosystem mapping', 'market ecosystem', or 'ecosystem strategy'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--market <market or vertical>]"
---

# Ecosystem Map Builder

Map the full ecosystem of potential partners, channel players, and integrators in a market — identifying who the key players are, how they relate to each other, and where the best partnership opportunities are. An ecosystem map answers: "Who are all the companies that touch our customers, and which of them should we be working with?" It prevents the most common BD mistake: pursuing partnerships opportunistically (whoever shows up first) instead of strategically (whoever gives the most market access).

## When to Use
- Entering a new market and need to understand the landscape of potential partners
- Building a partnership strategy and need to know who exists before identifying targets
- Matt Mathison asks "who should we be partnering with in the healthcare space?"
- Preparing for a conference and need to know which attendees are partnership targets
- Identifying white space — parts of the ecosystem not yet covered by MBL portfolio partnerships

## Ecosystem Categories

```
Standard ecosystem categories:

1. Referral partners: Companies that serve our target customers and can refer them to us
   (consultants, advisors, adjacent service providers)

2. Channel partners: Companies that sell, distribute, or resell our product/service to their customers
   (resellers, distributors, systems integrators)

3. Technology partners: Companies whose software or systems integrate with ours
   (complementary SaaS, platforms, infrastructure providers)

4. Strategic partners: High-value, co-investment partnerships that are more than transactional
   (co-marketing, joint product development, shared go-to-market)

5. Influencers / communities: Trade associations, publications, thought leaders who influence
   our target customers' buying decisions (not partners, but ecosystem participants that BD must engage)

6. Competitors: Know where they partner and with whom — competitive intelligence essential
```

## Output Format

```markdown
# Ecosystem Map — <Market/Vertical>
**For:** <Company> | **Market:** <Market/vertical>
**Date:** <date> | **Prepared by:** Dr. John Lewis
**Purpose:** Identify and prioritize partnership opportunities in this market

---

## Ecosystem Overview

[2-3 sentences: Who are the key players in this market? What types of companies touch the target customer? What is the overall state of the partnership ecosystem — fragmented/consolidated, mature/emerging?]

---

## Ecosystem Map by Category

### 1. Referral Partners (highest priority for MBL portfolio)
*Companies that serve our target customers and can refer business to us*

| Company | Description | Customer overlap | Partnership potential | Priority |
|---------|-------------|-----------------|----------------------|---------|
| [Company 1] | [What they do, who they serve] | [High/Med/Low — why] | [Why they'd partner with us] | 🔴 High |
| [Company 2] | ... | ... | ... | 🟡 Med |
| [Company 3] | ... | ... | ... | ⚪ Low |

**Top referral partner targets:** [Company 1], [Company 2] — pursue first

---

### 2. Channel Partners
*Companies that can sell, distribute, or integrate our offering into their solutions*

| Company | Channel type | Why partner | Priority |
|---------|-------------|------------|---------|
| [Company] | Reseller / Distributor / SI | [Rationale] | 🔴 / 🟡 / ⚪ |

---

### 3. Technology Partners
*Companies whose technology complements ours — integration or joint offering opportunities*

| Company | Integration type | Customer value | Priority |
|---------|-----------------|---------------|---------|
| [Company] | [API / white-label / co-bundle] | [What the integration enables for mutual customers] | 🔴 / 🟡 / ⚪ |

---

### 4. Strategic Partners
*High-value relationships that go beyond transactional — co-marketing, joint GTM, or co-development*

| Company | Strategic angle | Investment required | Priority |
|---------|----------------|-------------------|---------|
| [Company] | [What the strategic partnership enables] | [People / time / money] | 🔴 / 🟡 / ⚪ |

---

### 5. Ecosystem Influencers (not partners — awareness targets)
*Trade associations, publications, and thought leaders that influence our target customers*

| Organization/Person | Influence type | Why they matter | Engagement approach |
|--------------------|---------------|----------------|-------------------|
| [Name] | Association / Publication / KOL | [Who they influence and how] | [Speak at their event / sponsor / contribute content] |

---

### 6. Competitive Partner Map
*Who are our competitors partnering with — and what does that tell us?*

| Competitor | Known partners | Gap for us |
|-----------|---------------|-----------|
| [Competitor] | [Known partner names] | [Specific companies they've locked up that we should pursue or work around] |

---

## Partnership Priority Matrix

| Partner | Category | Market access | Motivation | Priority score | Next step |
|---------|---------|--------------|-----------|---------------|-----------|
| [Company 1] | Referral | High | High | 🔴 1 | Outreach this week |
| [Company 2] | Referral | High | Med | 🔴 2 | Outreach Q3 |
| [Company 3] | Technology | Med | High | 🟡 3 | Qualify before outreach |
| [Company 4] | Strategic | High | Unknown | 🟡 4 | Research champion first |

---

## White Space
*Partnership opportunities that don't yet exist in this ecosystem — we could pioneer them*

[N] white space opportunities identified:
1. [Specific gap — e.g., "No one in the AZ independent practice market has a billing+EMR bundled referral partnership; Allevio + [EMR vendor] could own this"]
2. [Specific gap]

---

## Recommended Partnership Sequencing

**Immediate (this quarter):** [Company A] — highest market access, known motivation, outreach ready
**Next quarter:** [Company B], [Company C] — strong fit, need qualification call first
**Hold (6+ months):** [Company D] — right fit, wrong timing (they're mid-acquisition); revisit Q4
**Pass:** [Company E] — competitive conflict with [Competitor]; [Company F] — market access is too narrow

---

## Matt Mathison Summary

[Company]'s [market] ecosystem has [N] high-priority referral partnership targets, [N] technology partner opportunities, and [N] strategic alliance candidates. The highest-leverage move this quarter is pursuing [top target 1] and [top target 2] — together they serve [~N] of our target customer type in [geography]. [Competitor] has already locked up [Company X]; we should prioritize [Company Y] before they do. **Matt Mathison decision needed:** [Specific — approval to pursue [Company], or introductions to [Name at Company] if Matt has a relationship]
```

## Output Contract
- All six ecosystem categories assessed — even if some categories have no viable candidates, the analysis must include the reasoning; "no viable technology partners identified because the product has no integration surface" is a valid finding
- Competitive partner map always included — knowing where competitors are partnered is essential for BD strategy; an ecosystem map without competitive context is incomplete
- Priority scoring always explicit — a list of 30 potential partners without prioritization is useless; every partner on the map gets a priority level and the top 3-5 get a specific next step
- White space identified — the ecosystem map's highest-leverage output is finding partnership opportunities that competitors haven't yet claimed; always ask what's missing in the ecosystem
- HITL required: Dr. Lewis builds the map; Matt Mathison reviews prioritization for any partnership that would require his network or involve a company where he has a relationship; outreach to high-priority targets requires Matt Mathison awareness before Dr. Lewis makes first contact on behalf of MBL

## System Dependencies
- **Reads from:** Market research, company websites, CRM (existing partner history), competitive intelligence, conference exhibitor lists
- **Writes to:** Ecosystem map (SharePoint/BD/Ecosystem Maps); partner pipeline (CRM)
- **HITL Required:** Dr. Lewis builds; Matt Mathison reviews strategic partnership targets; Matt Mathison notified before first outreach to Priority 1 targets

## Test Cases
1. **Golden path:** Allevio ecosystem map for Arizona independent physician practice market → Referral partners: 3 physician consulting firms (🔴 high — they advise the exact practices Allevio serves), 2 healthcare staffing firms (🟡 medium — adjacent), 1 physician recruiter (🟡 medium — serves same practices, less billing focus); Technology: 3 EMR vendors (🔴 high — integration makes Allevio more attractive); Strategic: 1 state medical association (🔴 high — credibility multiplier, access to 800 member practices); Competitive gap: Main competitor has exclusive with the largest staffing firm; Allevio should prioritize the 2 consulting firms before the competitor; Matt Mathison has a relationship with one — flag for introductions
2. **Edge case:** The ecosystem is highly fragmented with hundreds of small players → don't try to map everyone; focus on the categories that can move the most needle for the business; for a fragmented market, the most valuable ecosystem participants are often the trade associations and publications (they aggregate access to the fragments); map those first, then use them to identify the top individual companies
3. **Adversarial:** A potential ecosystem partner is identified, but they are also a known investor/advisor to a competitor → flag this immediately; a company with a financial stake in a competitor is unlikely to be a genuine referral partner (conflict of interest); they may also share intelligence from meetings; approach with extreme caution or pass entirely; document the conflict and ensure it's visible in the partner record

## Audit Log
Ecosystem maps retained by entity and date. Priority targets tracked. Competitive partner intelligence retained. White space opportunities flagged for follow-up.

## Deprecation
Retire when portfolio companies have dedicated market intelligence or BD research functions that maintain living ecosystem maps as a standing BD function.
