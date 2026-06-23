---
name: revops-sales-enablement-ops
description: "Manage sales enablement content and training operations for MBL Partners portfolio entities. Use when the user says 'sales enablement', 'sales content', 'sales materials', 'pitch deck', 'one pager', 'sales one pager', 'battle card', 'competitive battle card', 'sales training', 'onboarding training', 'rep training', 'training materials', 'sales collateral', 'proposal template', 'sales deck', 'sales playbook content', 'case study for sales', 'ROI calculator', 'pricing sheet', 'objection handling guide', 'sales toolkit', 'sales resource library', 'content library management', 'where is the pitch deck', 'update the pitch deck', 'sales content audit', 'sales content review', 'is the pitch deck current', 'sales kit', 'sales resource management', or 'what do reps need to sell'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--content-type <deck|one-pager|battlecard|proposal|roi-calculator|case-study>] [--action <audit|update|create|distribute>]"
---

# RevOps Sales Enablement Ops

Manage the sales content library and training operations for MBL Partners portfolio entities — maintaining a current, organized, HIPAA-compliant library of sales materials that reps use to move deals forward, and building training programs that enable new reps to ramp effectively. Outdated or missing sales materials cost deals; effective enablement multiplies rep productivity.

## When to Use
- Auditing the current state of sales materials for an entity
- Identifying gaps in the sales content library
- Maintaining or updating existing materials (proposal template, pitch deck, battle card)
- Building a training curriculum for a new rep

## Sales Enablement Framework

```
CONTENT LIBRARY STRUCTURE (SHAREPOINT PER ENTITY):
  [Entity] → Sales → Enablement
    ├─ Pitch Decks (versioned; most-recent always on top)
    ├─ One-Pagers (audience-specific)
    ├─ Battle Cards (one per key competitor)
    ├─ Case Studies (named and anonymous)
    ├─ Proposal Templates (versioned)
    ├─ ROI Calculators (Excel/Sheets; entity CEO + Dr. Lewis approved)
    ├─ Objection Handling Guide (versioned)
    ├─ Pricing Sheet (confidential; restricted access — entity CEO + AE only)
    └─ Training Materials (onboarding; product updates; process training)

CONTENT BY ENTITY:

  ALLEVIO CORE CONTENT:
    Pitch deck (employer): Allevio overview + employer ROI + employee experience + AZ market data
    One-pager (employer): 1-page; above-the-fold: problem + solution + 3 proof points + CTA
    One-pager (broker): broker referral program; commission structure; employer fit criteria
    Battle cards: vs. Accolade; vs. Spring Health; vs. Lyra Health; vs. status quo (current carrier benefit)
    Case studies: 3-5 anonymous employer case studies (HIPAA-compliant); Dr. Lewis reviews all
    ROI calculator: PMPM savings × enrolled EE × 12 months vs. current benefit cost; Excel template
    Proposal template: 5-section (employer overview; Allevio solution; implementation; pricing; ROI)
    Objection guide: top 8 objections with responses (see revops-sales-process-manager)
    
  COLUMN6 CORE CONTENT:
    Pitch deck (agency): Column6 platform + CTV proof (self-serve data) + tech differentiators + case study
    One-pager (agency): problem (CTV measurement gaps) + solution + Column6 VCR/IVT proof + call to action
    Battle cards: vs. Google DV360; vs. The Trade Desk; vs. Magnite; vs. agency direct (no platform)
    Case studies: 5-7 campaigns (Column6 self-serve CTV data — no client permission needed for own inventory proof)
    IO template: standard insertion order (Column6 legal reviewed; entity CEO approves changes)
    
CONTENT GOVERNANCE:
  Owner: entity marketing lead (builds); entity CEO (approves accuracy); Dr. Lewis (HIPAA review — Allevio)
  Review cadence: quarterly for live sales assets; annual for supporting materials
  Trigger review: new competitor enters market; pricing changes; product/service changes
  Version control: all materials versioned (v1.0, v1.1, etc.); outdated versions archived (not deleted)
  HIPAA check: any Allevio material used in sales → Dr. Lewis confirms no PHI before distribution
  
REP TRAINING PROGRAM:
  Pre-close (Week 1-4 of ramp):
    Day 1: entity overview + product training (entity CEO delivers)
    Day 2-3: MEDDPICCC workshop (Dr. Lewis or entity CEO delivers)
    Day 4: sales content library walkthrough; where to find everything
    Day 5-7: pitch deck certification (rep presents deck to entity CEO; entity CEO scores; must pass before first prospect call)
    Week 2-3: shadow 3 live deals; debrief each
    Week 4: first solo discovery call (entity CEO observes or reviews recording)
  Ongoing: product update training when offering changes; competitive update when battle card changes
```

## Output Format

```markdown
# Sales Enablement Audit — [Entity] — [Date]

---

## Content Library Status

| Asset | Current version | Last updated | HIPAA reviewed? | Status |
|-------|----------------|-------------|-----------------|--------|
| Pitch deck | v2.1 | [Date] | ✅/N/A | Current / ⚠️ Outdated |
| One-pager (employer) | v1.3 | [Date] | ✅ | |
| Battle card — [Competitor] | v1.0 | [Date] | N/A | |
| ROI calculator | v2.0 | [Date] | ✅ | |
| Proposal template | v3.1 | [Date] | ✅ | |

---

## Content Gaps
[List missing assets that should exist based on entity sales stage]

---

## Assets Requiring Update
[Asset → what's outdated → owner → due date]

---

## Training Status ([N] active reps)

| Rep | Pitch deck certified? | Sales process trained? | MEDDPICCC certified? |
|-----|---------------------|----------------------|---------------------|
| [Name] | ✅ | ✅ | ✅ |
```

## Output Contract
- The pitch deck must be current — a pitch deck that references Allevio features that no longer exist, pricing that has changed, or competitor claims that are now outdated is worse than no pitch deck; it actively damages the rep's credibility when a prospect catches the error; Dr. Lewis requires a quarterly pitch deck review for all active entities; the review is not a full rebuild — it is a structured pass through each slide asking: "Is this still true? Is the data current? Has anything changed?"; a pitch deck that passes a quarterly review is a pitch deck that can be trusted in front of a prospect
- Battle cards are competitive intelligence tools, not marketing materials — a battle card that says "we beat [Competitor] on price" when the competitor has since reduced pricing produces a rep who confidently makes a claim the prospect will immediately refute; Dr. Lewis ties battle card updates to the competitive intelligence cadence (mktg-competitive-intelligence); when a significant competitive change is detected, the relevant battle card is updated within 5 business days and distributed to all reps with a note on what changed
- HITL required: Allevio sales materials → Dr. Lewis HIPAA review before any external distribution; new or updated proposal template → entity CEO approves; pricing sheet changes → entity CEO + Dr. Lewis; rep pitch deck certification → entity CEO evaluates; ROI calculator → entity CEO approves assumptions; battle card changes → entity CEO reviews for accuracy

## System Dependencies
- **Reads from:** SharePoint ([Entity] → Sales → Enablement — content library); mktg-competitive-intelligence (competitor updates → battle card trigger); mktg-brand-voice-manager (voice and messaging standards); revops-sales-process-manager (objection guide tied to process); revops-win-loss-tracker (loss patterns → enablement gaps)
- **Writes to:** SharePoint ([Entity] → Sales → Enablement — updated content); GoHighLevel (document links in contact records); rep training completion records; Dr. Lewis HIPAA review records (Allevio); entity CEO content approval records
- **HITL Required:** Allevio materials → Dr. Lewis HIPAA before distribution; proposal template → entity CEO; pricing sheet → entity CEO + Dr. Lewis; pitch deck certification → entity CEO; ROI calculator assumptions → entity CEO; battle card updates → entity CEO accuracy review

## Test Cases
1. **Golden path:** Allevio quarterly sales content audit. Pitch deck: v2.3 — updated 6 weeks ago (✅ current). Battle card vs. Spring Health: v1.1 — updated 3 months ago — Spring Health recently added a new "physical clinic" offering not in the battle card (⚠️ needs update). ROI calculator: v2.0 — assumptions reviewed last quarter (✅ current). Case studies: 4 available (all anonymous; all Dr. Lewis HIPAA reviewed ✅). Gap identified: no broker one-pager (entity has added 3 broker relationships but has no formal enablement material for brokers). Actions: (1) Spring Health battle card updated with new clinic offering; Dr. Lewis reviews (HIPAA check: no PHI in battle card; competitive claims only); entity CEO approves accuracy. (2) Broker one-pager created; Dr. Lewis HIPAA review; entity CEO approves; distributed to broker relationships. All actions completed within 2 weeks.
2. **Edge case:** AE wants to use a Column6 case study in their pitch that includes specific client campaign performance data → Dr. Lewis: "Case study use depends on what client permission we have. If this is data from Column6's own inventory (Column6 advertised on Column6 inventory — our self-serve CTV proof), we can use it freely. If this is a client's campaign data, I need to see: (1) did we get written permission from the client to use this data in marketing? (2) Is the client named or anonymous in the case study? Column6's self-serve inventory data is the most credible proof asset we have and requires no client permission. If the AE is looking for third-party proof, I'd start there."
3. **Adversarial:** Entity CEO asks to remove the "Objection Handling Guide" from the content library because "it makes reps sound scripted" → Dr. Lewis: "The objection guide isn't a script — it's a thinking framework so reps don't get caught flat-footed on the 8 objections we see in 80% of deals. The difference between a scripted response and a prepared response is delivery, not material. What I can do: reformat the guide as 'core insight per objection' (the principle behind the response) rather than word-for-word scripts. Reps use the insight to frame their own authentic response. That addresses the 'scripted' concern while keeping the strategic thinking intact. Let me rework the format this week and you can review it before it goes back in the library."

## Audit Log
Content library audit records (quarterly). HIPAA review records for Allevio materials (permanent). Rep training completion records. Entity CEO content approval records. Battle card update records with trigger (competitive change that prompted update). Version history for all content assets (archived in SharePoint).

## Deprecation
Content library reviewed quarterly. Battle cards updated within 5 business days of confirmed competitive change. Pitch deck reviewed quarterly; rebuilt annually or when positioning changes. ROI calculator assumptions reviewed when pricing changes. Training curriculum reviewed when sales process changes.
