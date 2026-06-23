---
name: revops-gtm-playbook-manager
description: "Manage go-to-market playbooks for MBL Partners portfolio entities. Use when the user says 'GTM playbook', 'go-to-market playbook', 'sales playbook', 'revenue playbook', 'commercial playbook', 'playbook update', 'create a playbook', 'build a playbook', 'playbook review', 'GTM strategy document', 'how we go to market', 'GTM motion', 'GTM approach', 'GTM model', 'outbound playbook', 'inbound playbook', 'ICP playbook', 'account playbook', 'customer playbook', 'playbook for new hire', 'playbook documentation', 'what is our GTM', 'GTM handbook', 'revenue handbook', 'commercial handbook', 'sales handbook', 'who is our customer', 'how do we sell', 'how do we market', 'how do we retain', 'GTM overview', or 'what is our strategy for winning'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--section <icp|sales|marketing|cs|all>] [--action <create|update|review|distribute>]"
---

# RevOps GTM Playbook Manager

Create and maintain go-to-market playbooks for MBL Partners portfolio entities — consolidating ICP definition, sales process, marketing strategy, and customer success motion into a single, versioned document that onboards new hires faster, ensures commercial consistency, and evolves with the business. A playbook that is out of date is worse than no playbook.

## When to Use
- Creating the first GTM playbook for a new entity
- Annual playbook review and update (Q4 for next year)
- Onboarding a new sales, marketing, or CS hire
- Reconciling a commercial strategy misalignment between functions

## GTM Playbook Framework

```
PLAYBOOK STRUCTURE (7 SECTIONS):

  SECTION 1 — ENTITY OVERVIEW:
    What is the entity? (one paragraph: business model; value proposition; stage of growth)
    Who are we for? (ICP — specific, not "companies that could benefit from us")
    What problem do we solve? (pain statement; what life looks like without our solution)
    What makes us different? (3-5 differentiation points; entity-specific and defensible)
    THRIVE alignment: how does this entity's mission align to THRIVE values?
    
  SECTION 2 — IDEAL CUSTOMER PROFILE (ICP):
    Entity-specific ICP criteria (firmographic + behavioral + needs-based):
      Allevio: AZ employer / ≥25 employees / has active employee benefit program / cost-or-access driven
      Column6: agency / ≥$250K CTV budget / actively buying programmatic / not locked in exclusive DSP
    Negative ICP (who we don't target — as important as who we do):
      Allevio: national employers requiring multi-state carrier; <25 EE (broker channel only)
      Column6: direct advertisers (agency model only); agencies with no CTV interest
    Stakeholder map: who is involved in the buying decision? What does each care about?
    
  SECTION 3 — SALES MOTION:
    Stage definitions and exit criteria (pulled from revops-sales-process-manager)
    MEDDPICCC qualification framework summary
    Discovery questions by stage
    Proposal standards and ROI calculation method
    Common objections and responses
    Pipeline management expectations (update cadence; hygiene standards)
    Commission structure summary (link to full plan document)
    
  SECTION 4 — MARKETING MOTION:
    Primary demand gen channels (ranked by ROI)
    Content pillars and messaging hierarchy
    Lead lifecycle definition (MQL criteria; SQL criteria; handoff SLA)
    Attribution model (last-touch; UTM standards)
    Marketing investment thresholds (spend approval by level)
    HIPAA compliance summary (Allevio — Dr. Lewis review required for all content)
    
  SECTION 5 — CUSTOMER SUCCESS MOTION:
    Onboarding process (who does what; timeline from contract to first value)
    Health score model (how accounts are scored; intervention thresholds)
    Renewal process (T-120 to T-0 timeline; who owns what)
    Expansion motion (what triggers expansion conversation; who leads it)
    HIPAA data handling (Allevio — aggregate-only in all client communications)
    
  SECTION 6 — SYSTEMS AND TOOLS:
    GoHighLevel: what each role uses it for; how it's configured for this entity
    Microsoft 365: communication; document library; SharePoint structure
    QuickBooks: billing reference (CS lead knows where to check billing questions)
    Tool list: entity-specific tools; who manages each
    
  SECTION 7 — GOVERNANCE AND ESCALATION:
    Decision authority (who approves what by function and threshold)
    Dr. Lewis oversight areas (HIPAA; pipeline; revenue data; CRM governance)
    Entity CEO authority areas
    Escalation path: issue → entity CEO → Dr. Lewis → Matt Mathison
    Quarterly review: what gets reviewed; by whom; when
    
PLAYBOOK VERSION CONTROL:
  Playbook version: v[major.minor] (v1.0 initial; v1.1 minor updates; v2.0 significant GTM change)
  Owner: Dr. Lewis (RevOps) with entity CEO co-sign on each version
  Review cadence: quarterly check (changes if needed); annual full review (new version)
  Distribution: SharePoint → [Entity] → GTM → Playbook → [Entity]-GTM-Playbook-v[N]
  New hire: receives playbook on Day 1; entity CEO reviews it with them in Week 1
```

## Output Format

```markdown
# [Entity] GTM Playbook — v[N]
**Prepared by:** Dr. Lewis | **Approved by:** Entity CEO | **Date:** [Date]
**Next review:** [Quarterly date]

---

[Section 1 — Entity Overview: 200-300 words]

---

[Section 2 — ICP: table + narrative; positive and negative ICP]

---

[Section 3 — Sales Motion: linked to process doc; key summary tables]

---

[Section 4 — Marketing Motion: channels; content; compliance]

---

[Section 5 — CS Motion: onboarding; health score; renewal; expansion]

---

[Section 6 — Systems and Tools: per role; per tool]

---

[Section 7 — Governance: authority matrix; escalation path]

---

*Version history: v[N] — [Date] — [Change summary] — [Approver]*
```

## Output Contract
- A playbook is a living document, not a filing artifact — the most common playbook failure is that the entity goes live with a v1.0 playbook in January, significant changes happen to the ICP, pricing, and CS process by April, and the playbook still says January's reality; Dr. Lewis schedules a quarterly playbook check-in and updates the version whenever a material commercial change happens; the playbook is the entity's commercial constitution — it should reflect what's true today, not what was true at founding
- The negative ICP is as important as the positive ICP — a sales team that knows who to target is valuable; a sales team that knows who NOT to target is more efficient; the Allevio negative ICP (no direct-to-employer national accounts; no sub-25 EE in direct channel) prevents AEs from spending time on deals that cannot close or cannot be served profitably; the Column6 negative ICP (no direct advertisers; no agencies with no CTV intent) prevents account contamination of the agency relationship model; Dr. Lewis writes the negative ICP explicitly into Section 2 of every entity playbook
- HITL required: playbook creation → entity CEO + Dr. Lewis co-author or co-review; playbook release (new version) → entity CEO signs off; Allevio HIPAA section → Dr. Lewis writes and reviews; distribution to new hires → entity CEO delivers personally (or reviews Day 1 with hire); annual playbook review → entity CEO + Dr. Lewis; significant GTM change → playbook updated before new AE or CS hire is onboarded

## System Dependencies
- **Reads from:** revops-sales-process-manager (Section 3 content); revops-lead-lifecycle-manager (Section 4 content); revops-renewal-ops-manager (Section 5 content); mktg-brand-voice-manager (messaging standards for Section 4); revops-crm-admin (systems section content); revops-revenue-data-model (governance section definitions)
- **Writes to:** GTM playbook (SharePoint → [Entity] → GTM → Playbook); onboarding materials (links to playbook); entity CEO commercial strategy document; new hire Day 1 package
- **HITL Required:** Creation → entity CEO + Dr. Lewis; new version → entity CEO signs off; Allevio HIPAA section → Dr. Lewis; new hire distribution → entity CEO delivers; annual review → entity CEO + Dr. Lewis; significant GTM change → update before next hire

## Test Cases
1. **Golden path:** Allevio GTM Playbook v1.0 (initial). Dr. Lewis drafts all 7 sections; reviews with Allevio CEO over 2 sessions (total 3 hours). Key decisions made in the process: ICP minimum set at ≥30 EE (not 25 — data showed sub-30 EE churn rate too high); negative ICP added "national employers requiring multi-state network"; Section 4 HIPAA requirements written by Dr. Lewis and reviewed once more before finalization; Section 7 governance matrix finalized with spending thresholds. v1.0 approved by Allevio CEO. Stored in SharePoint → Allevio → GTM → Playbook. Delivered to AE on Day 1 of onboarding. Q4 review scheduled (October).
2. **Edge case:** Allevio CEO wants to expand the ICP to include employers with self-insured "Cadillac" plans as a new market segment → Dr. Lewis: "This is a significant ICP change and it needs to go in the playbook before any AE is told to pursue this segment. Let me also evaluate it first: self-insured employer plans typically have a dedicated benefits consultant who is also the gatekeeper; Allevio's value proposition is 'fill the gap in your benefit'; employers with Cadillac plans typically don't have a gap. Before we add this to the ICP, I want to see: is there a specific employer need we've observed in this segment that Allevio can serve better than their current plan? If yes, let's build a specific value proposition for this segment and test it with 3-5 discovery calls before we update the ICP. Changing the ICP in the playbook before we validate the segment creates confusion for AEs."
3. **Adversarial:** New AE says they don't need to read the playbook because "sales is about relationships and instinct" → Dr. Lewis: "Relationships and instinct are multiplied by process, not replaced by it. The playbook tells you: which companies are ICP (so your instinct is applied to the right targets); what the exit criteria for Stage 4 are (so your relationships don't skip qualification steps); what the ROI calculator shows (so your relationships can close on a business case); and what the HIPAA constraints are (so a well-intentioned relationship conversation doesn't create a compliance issue). I've seen 'I don't need a playbook' reps produce one great deal and three bad deals — and I've seen playbook-following reps build consistent, repeatable pipelines. The playbook and the relationship are partners. Read it this week; ask me questions about anything that doesn't make sense."

## Audit Log
Playbook version history (all versions archived permanently). Entity CEO approval records per version. Dr. Lewis Allevio HIPAA section review records. New hire distribution and delivery records. ICP change records with decision rationale. Quarterly review records. Annual review records.

## Deprecation
Playbook reviewed quarterly; updated at any significant GTM change. ICP reviewed when market or entity offering changes. Sales process section reviewed when revops-sales-process-manager changes. HIPAA section reviewed when Allevio regulations change. Governance section reviewed when entity leadership structure changes.
