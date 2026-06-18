---
name: cs-agency-relationship-manager
description: "Manage agency relationships and multi-contact strategy for Column6 customers. Use when the user says 'agency relationship', 'manage the agency', 'agency contacts', 'Column6 agency', 'media agency relationship', 'holding company', 'agency holding company', 'agency contacts strategy', 'grow the agency relationship', 'expand in the agency', 'new contacts at the agency', 'agency relationship map', 'multi-office agency', 'agency account management', 'agency CS', 'media agency CS', 'Column6 agency management', 'grow inside the agency', 'agency expansion', 'agency growth', 'agency account plan', 'expand to other offices', or 'agency relationship plan'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--account <agency name>] [--action <map|expand|plan|report>]"
---

# CS Agency Relationship Manager

Manage agency relationships and multi-contact strategy for Column6 customers — building relationships across multiple contacts, offices, and brands within a single agency or holding company, so that Column6's presence within the agency is broader and deeper than a single media buyer relationship. Agency CS is different from standard CS because agencies work across many clients, offices, and teams; a strong agency relationship means multiple contacts who know Column6, not one champion who might leave.

## When to Use
- After the first IO closes (begin building beyond the initial contact)
- The primary media buyer changes jobs or roles (time to activate multi-threading)
- Quarterly stakeholder review (cs-stakeholder-mapper — who do we know at this agency?)
- An agency wins a new brand brief in a relevant category (introduction opportunity)
- Annual account planning (build the multi-year agency relationship strategy)

## Agency Relationship Framework

```
AGENCY STRUCTURE OVERVIEW:

  Types of Column6 agency relationships:
  
    1. Boutique / Independent Agency:
       Typically 1-3 media buyers; single office; direct relationship
       Relationship strategy: Deep with the media buyer(s); introduce to agency owner/president
       Expansion path: More brands from the same agency; referrals to peer agencies
       
    2. Mid-Size Agency (holding company or multi-office):
       Multiple offices; multiple practice areas (TV; digital; print; etc.)
       Relationship strategy: Own the CTV/digital practice; introduce to other practice leads
       Expansion path: New offices; new brands; new media category teams
       
    3. Large Holding Company (IPG; Omnicom; WPP; Publicis; Dentsu):
       Multiple agencies under one parent; multiple offices per agency
       Relationship strategy: One agency at a time; use each success to get an intro at a sister agency
       Expansion path: Within the same agency (more offices; more brands) then to sibling agencies

RELATIONSHIP BUILDING APPROACH:

  Starting relationship (1-2 contacts):
    The primary contact: the media buyer who bought the first IO
    The secondary contact: their direct supervisor or a peer in the CTV practice
    How to get the secondary contact: "Would you be comfortable introducing me to [supervisor]?
      I'd love to make sure they have visibility to our performance on your campaigns."
    
  Expanding relationship (3-5 contacts; Priority A threshold):
    The department head: VP Media; Director of Digital; Head of CTV
    The account team lead: the person who manages the brand budget (not just the buyer)
    The agency president or managing partner: Dr. Lewis handles this introduction personally
      for agencies with >$150K annual IO volume; "I'd love to introduce you to our leadership
      team — can I set up a coffee with [agency president] and our team?"
      
  Holding company expansion:
    Use a strong performance story at one agency as the door opener at a sibling agency:
      "I've been working with [Agency A] at [Holding Company] on their CTV strategy —
       we've been delivering 94% VCR for their clients. I understand [Agency B] also
       does CTV work for your automotive clients. Would you be open to a brief intro call?"
    Always ask the primary contact if they're comfortable with the introduction before making it
    
  Brand-level relationships:
    For large brands ($500K+ media budget), consider building a relationship directly at the brand:
      A brand VP of Marketing who likes Column6 will request Column6 specifically in their RFPs
      This is an expansion play, not a standard CS play — coordinate with Dr. Lewis and the CEO
    Only pursue brand-level relationships with the primary agency's blessing —
      going around the agency to the brand is a relationship-ending move

COLUMN6 AGENCY CONTACT MATRIX (per agency):

  Category | Contact title | Goal | Priority | Owned by
  --- | --- | --- | --- | ---
  Primary | Media buyer | Day-to-day IO management | P1 | CS rep
  Champion | Director of Media / VP | QBR and renewal conversations | P1 | CS rep + Dr. Lewis
  Economic | Agency president / CFO | Annual agreement and large IO approvals | P2 | Dr. Lewis
  Sibling agency | Media buyer (at sister agency) | New agency relationship | P3 | CS rep (intro via Dr. Lewis)
  Brand-level | VP Marketing (at client brand) | RFP influence | P4 | Dr. Lewis + CEO only

AGENCY RELATIONSHIP TOUCHPOINTS:
  Monthly: CS rep touchpoint with primary buyer (cs-touchpoint-cadence)
  Quarterly: Director-level touchpoint (QBR or abbreviated — cs-qbr-preparer)
  Annual: Agency president/managing partner touchpoint (Dr. Lewis personal meeting)
  Trigger-based: New brand brief → introduction conversation; agency award/win → congratulations
    and "how can Column6 support this new client?"
```

## Output Format

```markdown
# Agency Relationship Plan — [Agency Name] × Column6
**Agency type:** Boutique / Mid-size / Holding company | **ACV:** $[X]K / year
**Relationship depth:** [N] contacts | **Priority:** A / B / C

---

## Contact Matrix

| Name | Title | Category | Relationship strength | Last contact | Owner |
|------|-------|---------|---------------------|-------------|-------|
| [Name] | Media Buyer | Primary | 5/5 | [Date] | CS Rep |
| [Name] | Director of Media | Champion | 3/5 | [Date] | CS Rep + Dr. Lewis |
| [Name] | Agency President | Economic | 1/5 — not yet engaged | Never | Dr. Lewis |

---

## Expansion Targets

| Target | Why | Approach | Owner | Status |
|--------|-----|---------|-------|--------|
| [Agency B] at [Holding Co.] | Sister agency; same CTV practice | Intro via [Primary Contact] | CS Rep | Not yet approached |
| [Brand VP] at [Brand name] | Large budget; Column6 advocate at the agency | Agency-approved intro | Dr. Lewis | Scheduled |

---

## Relationship Plan This Quarter

| Action | Contact | Target date | Owner |
|--------|---------|------------|-------|
| Director intro at next QBR | Director of Media | [Date] | CS Rep |
| Agency president introduction | President | [Date] | Dr. Lewis |
```

## Output Contract
- Go through the champion to reach new contacts — contacting new people at an agency without the primary contact's knowledge creates political problems; the media buyer who introduced Column6 to the agency has ownership of that relationship internally; Dr. Lewis requires that all relationship expansion at an agency is initiated with the primary contact's awareness and ideally their endorsement: "I'd love to meet [Director] — would you be comfortable making an introduction?"; an approach that bypasses the champion may lose them
- Agency relationships are strategic assets — a deep Column6 relationship with a mid-size agency that manages 12 brands means access to 12 potential campaigns; a shallow relationship with one buyer at the same agency means access to whatever that buyer's current brief is; Dr. Lewis tracks agency relationship depth (number of contacts; relationship strength) as a strategic CS metric and reviews it quarterly for Priority A agencies
- Holding company expansion is a marathon, not a sprint — gaining a relationship at one agency in a holding company does not automatically open the door at sibling agencies; each agency is its own P&L with its own leadership; the approach is sequential (master one agency first; use the performance story; get a warm intro), not parallel (don't try to meet 5 agencies at the same holding company simultaneously); Dr. Lewis plans holding company expansion on a 12-24 month timeline
- HITL required: Dr. Lewis manages all agency president and managing partner relationships; brand-level relationships require Dr. Lewis and CEO coordination; holding company expansion strategy is reviewed by Dr. Lewis annually; any relationship overture that would bypass the primary contact requires Dr. Lewis approval; quarterly stakeholder review (cs-stakeholder-mapper) for all Priority A agencies is reviewed by Dr. Lewis

## System Dependencies
- **Reads from:** cs-stakeholder-mapper (current contact map; relationship strengths; champion stability); cs-campaign-performance-reporter (performance history — the anchor for agency expansion conversations); cs-renewal-forecast (IO booking velocity by agency — which agencies are expanding?); GoHighLevel CRM (all agency contacts; relationship history; outreach log); cs-expansion-spotter (signals that an agency is ready for deeper investment)
- **Writes to:** Agency relationship plan (SharePoint/CustomerSuccess/Column6/AgencyPlans/[Agency]_[YYYY]_RelationshipPlan.pdf); GoHighLevel CRM (new contacts added; relationship strength updates; expansion conversation notes); cs-stakeholder-mapper (update after any new contact is made); cs-kpi-dashboard (agency relationship depth metric — total contacts at Priority A agencies; strength distribution); cs-renewal-forecast (updated IO forecast based on new contacts and brands)
- **HITL Required:** Dr. Lewis manages all agency president/managing partner relationships; brand-level relationships require Dr. Lewis + CEO coordination; holding company expansion strategy reviewed annually by Dr. Lewis; champion-bypass approaches require Dr. Lewis approval; quarterly Priority A agency stakeholder reviews approved by Dr. Lewis

## Test Cases
1. **Golden path:** Mid-size agency; Priority A; 1 primary contact (media buyer; relationship 5/5) for 8 months; $180K ACV; CS rep asks at the Q3 QBR: "I'd love to make sure we have visibility at the Director level — would you be comfortable introducing me to [Director of Media]? I want to make sure she has the full picture of our performance on your campaigns." Media buyer: "Absolutely — she's been asking about our CTV results anyway." Introduction made; CS rep meets Director of Media; 2 months later, Director of Media becomes the champion for a new $95K IO for a different brand; Dr. Lewis joins the annual planning meeting; the agency president is introduced; agency ACV grows from $180K to $310K within 12 months; relationship depth: 4 contacts (media buyer; Director; agency president; account team lead); all at strength ≥3
2. **Edge case:** The primary media buyer at a Priority B agency leaves the company; she was the only contact → Dr. Lewis: "Single point of failure — this is why we track relationship depth. First move: do we know who's covering her accounts? If not, we call the agency main line today and ask to be connected to the CTV practice. We introduce ourselves as Column6: 'We've been running campaigns for [Agency] for 18 months — I wanted to introduce myself to whoever is taking over [Name]'s accounts and make sure there's continuity on the relationship.' Don't frame it as 'our contact left' — frame it as 'we want to make sure the campaigns are supported.' We need a name and a scheduled call within 48 hours." CS rep calls; connected to the new media buyer; intro meeting scheduled; prior performance data shared; continuity maintained; no IO gap
3. **Adversarial:** CS rep goes directly to the brand VP (bypassing the agency) because "the agency buyer said they can't approve a big IO — I need to talk to the brand directly" → Dr. Lewis: "Stop. Going to the brand without the agency's blessing will blow up the agency relationship. The agency buyer is the gatekeeper — if they feel bypassed, they will cut Column6 out of future briefs to protect their client relationship. The right move is: go back to the agency buyer and say 'I understand you need internal approval — can I help you build the case for the brand? Would it help if I put together a performance report you can share with your client?' If they still can't approve, escalate to their Director — but through the agency, not around it. I'm joining the next conversation with this agency." Dr. Lewis joins the conversation; helps the buyer build the internal business case; IO approved through proper channels; agency relationship intact

## Audit Log
All agency relationship plans retained by agency and year. New contact records retained. Dr. Lewis president-level relationship records retained. Brand-level relationship records retained (with Dr. Lewis and CEO approval). Holding company expansion plans retained. Quarterly stakeholder review records retained.

## Deprecation
Retire when Column6 has a dedicated account management function that owns agency relationship strategy — with Dr. Lewis reviewing the annual relationship plans for Priority A agencies and the CEO approving all holding company expansion strategies.
