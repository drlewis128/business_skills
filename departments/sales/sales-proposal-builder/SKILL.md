---
name: sales-proposal-builder
description: "Build sales proposals for MBL portfolio company sales opportunities. Use when the user says 'proposal', 'write a proposal', 'build a proposal', 'sales proposal', 'RFP response', 'RFP', 'send a proposal', 'proposal template', 'proposal structure', 'proposal format', 'proposal content', 'proposal review', 'proposal feedback', 'proposal pricing', 'proposal terms', 'proposal deck', 'proposal document', 'proposal follow-up', 'proposal sent', 'proposal status', 'proposal win', 'proposal lost', 'Allevio proposal', 'employer proposal', 'MSO proposal', 'Column6 proposal', 'IO proposal', 'CTV proposal', 'campaign proposal', 'media proposal', 'HIVE proposal', 'acquisition proposal', 'LOI', 'letter of intent', 'non-binding offer', 'pricing proposal', 'cost proposal', 'contract proposal', 'statement of work', 'SOW', or 'quote'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--type <standard|custom|rfp>] [--action <build|review|follow-up>]"
---

# Sales Proposal Builder

Build and review sales proposals for MBL portfolio company sales opportunities — creating MEDDPICCC-grounded proposals that speak to confirmed pain, address known decision criteria, and are structured for the actual decision-making process. A proposal that doesn't address the economic buyer's top concern in the first paragraph is a proposal that gets filed and forgotten.

## When to Use
- Building a proposal for an Allevio employer, Column6 agency, or HIVE acquisition target
- Reviewing a draft proposal for quality and MEDDPICCC alignment
- Responding to an RFP
- Writing a proposal follow-up when a decision is delayed

## Proposal Framework

```
PROPOSAL STRUCTURE — MBL STANDARD:

  SECTION 1: Your Situation (mirrors their words from discovery)
    Lead with the prospect's problem in their language — not a company overview
    "Based on our conversations, [Company] is facing [primary pain in their words].
    Your team has [N] weeks before [compelling event]. Here's how [entity] addresses that."
    
  SECTION 2: Our Solution (specific to their situation)
    Not a product brochure — specific to what you learned in discovery
    Only mention features that address their stated criteria
    If they said "we need minimal disruption to provider relationships" → lead with that
    If they said "we need IVT <2% across all inventory" → lead with that
    
  SECTION 3: Investment (pricing + terms)
    Be specific; no "starting at" or "ranges" unless genuinely variable
    Anchor with value before stating price ("the average Allevio employer reduces healthcare cost
    by 15-22% in year 2; your 140 employees represent approximately $X in annual savings")
    Payment terms: standard (Allevio: monthly PMPM invoicing; Column6: per IO terms net 30-60)
    
  SECTION 4: Implementation (how we get from here to live)
    Timeline: clear milestones with dates (not "4-6 weeks")
    Allevio: Day 1-10 contract; Day 11-30 census + enrollment; Day 31-45 go-live
    Column6: IO signed → creative assets within 5 days → campaign live within 10 days
    
  SECTION 5: Why [Entity] / Why Now
    1-2 relevant proof points (customer story; outcome data — aggregate, no PHI for Allevio)
    Why now: reference their compelling event explicitly
    
  SECTION 6: Next Steps
    Specific: "I'd like to schedule 30 minutes with you and [CFO name] to walk through this
    proposal and answer questions. Are you available [date 1] or [date 2]?"
    Never end with "let me know if you have questions"
    
ENTITY-SPECIFIC PROPOSAL STANDARDS:

  ALLEVIO:
    Pricing: PMPM × enrolled employee count × 12 months = annual investment
    Present: PMPM rate; annual total; comparison to current benefits cost structure
    Proof: employer outcomes in aggregate (total enrolled; % who accessed care; cost trend — no member-level data)
    Terms: 12-month minimum; auto-renew with 90-day notice; monthly PMPM invoicing
    HIPAA: no member-level data in proposal; no individual health outcomes; employer-aggregate only
    Proposal authorization: entity CEO reviews non-standard pricing or terms before send
    
  COLUMN6:
    IO Proposal (Insertion Order):
      Campaign name; flight dates; audience; inventory type; CPM; total impressions; total investment
      Delivery guarantee: 100% delivery or make-good
      Viewability: ≥70%; VCR ≥85% for in-stream
      Measurement: methodology stated
      Payment: net 30-60 from campaign end
      IO must be signed before creative accepted or campaign goes live
    Non-standard IO terms: entity CEO + Dr. Lewis authorize before send
    Gross margin check: IO where margin <35% → entity CEO + Dr. Lewis approval required
    
  HIVE:
    LOI (Letter of Intent) for acquisitions:
      Non-binding offer; price structure; due diligence period 30-45 days; exclusivity; closing 30-60 days post-DD
      WTI trigger: ALL LOIs paused if WTI <$58/bbl for 2+ consecutive weeks
      EVERY HIVE LOI requires Matt Mathison explicit approval before sending — no exceptions, no amount threshold
      
PROPOSAL QUALITY CHECKLIST:
  ✅ Prospect's pain stated in their words (from discovery notes)
  ✅ MEDDPICCC-grounded (addresses known decision criteria; speaks to economic buyer)
  ✅ Specific next step (not "let me know")
  ✅ Investment section includes value anchor before price
  ✅ Pricing is accurate (checked against current rate card)
  ✅ Terms are standard (or approved exceptions noted)
  ✅ Allevio: no PHI or member-level data in proposal
  ✅ Column6: gross margin ≥35% verified
  ✅ HIVE: Matt Mathison approved before send
```

## Output Format

```markdown
# Proposal — [Prospect Name] | [Entity] | [Date]
**Prepared by:** [Rep] | **Reviewed by:** [Entity CEO / Dr. Lewis] | **Status:** Draft / Approved / Sent

---

## Your Situation
[3-4 sentences in their words: pain + compelling event]

---

## Our Solution
[3-5 bullets: specific capabilities that address their stated criteria]

---

## Investment
| Item | Monthly | Annual |
|------|---------|--------|
| [PMPM / CPM / LOI structure] | $[X] | $[X] |

**Value context:** [ROI anchor relative to their current cost or outcome goal]

---

## How We Get Started
| Milestone | Date |
|-----------|------|
| Contract signed | [Date] |
| [Entity-specific milestone] | [Date] |
| Go-live | [Date] |

---

## Why [Entity] / Why Now
[1-2 proof points; compelling event reference]

---

## Next Steps
[Specific action + proposed timing]
```

## Output Contract
- Every proposal must reference the prospect's pain in their own words — a proposal that opens with "Thank you for the opportunity to present our services" is written for the sender, not the reader; a proposal that opens with "Your healthcare costs increased 23% last year and your CFO has given you two renewals to solve it" is one the HR Director forwards to the CFO; the discovery summary exists so the proposal proves the rep listened; if discovery notes lack direct quotes, the proposal defaults to generic language and conversion rates show it
- Non-standard terms require authorization before the proposal goes out — for Allevio: deviation from 12-month minimum, standard PMPM rate card, or monthly invoicing; for Column6: any IO where gross margin <35% or payment terms >net 60; for HIVE: every single LOI requires Matt Mathison approval before send; a proposal with unauthorized terms that a prospect accepts creates a contract enforcement problem and a revenue recognition problem; pre-authorization is always faster than renegotiating after a verbal agreement
- HITL required: HIVE LOI → Matt Mathison before send (absolute; no amount threshold; no exceptions); Column6 gross margin <35% → entity CEO + Dr. Lewis before send; Allevio non-standard pricing → entity CEO before send; RFP response → entity CEO reviews; lost proposal → win/loss debrief within 5 business days; proposal follow-up after 7-day silence → rep + entity CEO decide next step

## System Dependencies
- **Reads from:** Discovery notes (GHL; discovery summary); MEDDPICCC status; rate card (current pricing — entity-specific); IO template (Column6); PMPM pricing guide (Allevio); LOI template (HIVE); gross margin calculator; win/loss records; ICP tier (sales-icp-builder)
- **Writes to:** Proposal document (SharePoint → [Entity] → Sales → Proposals → [Prospect] → [Date]); GHL (proposal sent; amount; terms; stage update; follow-up task); Matt Mathison notification (HIVE LOI); entity CEO notification (non-standard terms); proposal status tracking
- **HITL Required:** HIVE LOI → Matt Mathison (absolute); Column6 <35% margin → entity CEO + Dr. Lewis; Allevio non-standard → entity CEO; RFP → entity CEO review; deals above threshold → Dr. Lewis or entity CEO review; lost deal debrief → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio employer proposal — 140-employee manufacturing employer, HR Director champion, CFO economic buyer, open enrollment in 11 weeks. Discovery confirmed top 3 criteria: cost reduction; no disruption to existing providers; employee ease of access. Proposal: Section 1 mirrors their 23% cost increase and 11-week window. Investment: $72 PMPM × 140 employees = $10,080/month; value anchor: "Allevio employers average 17% reduction in claims trend in year 2 — approximately $31K in avoided cost increases for your enrollment size." Implementation: 45-day onboarding with go-live before open enrollment. Next step: "Are you available Tuesday at 2pm or Thursday at 10am for 30 minutes with your CFO?" Quality check: all 6 checklist items ✅. Entity CEO reviewed (non-standard timeline). Proposal sent.
2. **Edge case:** Column6 rep builds a $180K IO proposal where CPM is discounted and gross margin calculates to 28% → Dr. Lewis: "I can't approve this. Gross margin is 28% — below our 35% floor. Options: (1) Increase CPM to restore margin to ≥35%; (2) Reduce inventory volume while maintaining CPM — smaller IO at margin; (3) If CPM must stay at market floor and volume can't change, this is a conversation with the entity CEO about whether we pursue this agency. I'll build the margin model — what's the agency's stated CPM expectation so I can model the options?"
3. **Adversarial:** Rep sends a HIVE LOI to a mineral rights holder without Matt Mathison approval ("didn't want to slow down the deal") → Dr. Lewis: "This is a process violation. Every HIVE LOI requires Matt Mathison approval before send — no exceptions, no amount threshold. An LOI creates expectation with the seller that we intend to proceed; Matt Mathison may have information that makes this a deal we should not pursue. Notifying Matt Mathison now. Going forward: no HIVE LOI without his email approval — I'm adding this as a mandatory step in the HIVE acquisition workflow with no bypass."

## Audit Log
Proposal records (all proposals; sent date; amount; terms; outcome; SharePoint). HIVE LOI records (Matt Mathison approval; date sent; response). Column6 margin approval records. Allevio non-standard terms approvals. Win/loss records (linked to proposals). Proposal follow-up records. RFP response records.

## Deprecation
Proposal templates reviewed annually and when pricing or terms change. Allevio PMPM rate card reviewed when service offering or cost structure changes. Column6 gross margin floor reviewed when competitive environment changes. HIVE LOI template reviewed when acquisition strategy changes.
