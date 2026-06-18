---
name: cs-segmentation-model
description: "Build and maintain the CS account segmentation and tiering model for MBL portfolio companies. Use when the user says 'account segmentation', 'CS segmentation', 'account tiering', 'customer tiering', 'priority model', 'account priority', 'how to prioritize accounts', 'Priority A B C', 'account tier model', 'which accounts get the most attention', 'segment the accounts', 'CS prioritization', 'account tiers', 'tier the accounts', 'customer segments', 'strategic accounts', 'build a tier model', 'segmentation framework', 'account classification', 'account scoring model', 'classify accounts', or 'CS account model'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <build|review|update|apply>]"
---

# CS Segmentation Model

Build and maintain the CS account segmentation and tiering model for MBL portfolio companies — ensuring that CS time is allocated to accounts based on their strategic value, ARR, and relationship complexity, not on who calls the most or which rep has the strongest personal relationship. The segmentation model determines which accounts get weekly health scores, which get monthly QBRs, which get quarterly abbreviated reviews, and which belong in the digital CS tier.

## When to Use
- New portfolio company CS launch (build the initial tier model before CS activities begin)
- Annual planning (review and update tier assignments for the coming year)
- A new account is won (assign tier before the first contact)
- Quarterly CS Ops Review (cs-ops-review) — validate tier assignments are still accurate
- A CSM's portfolio is being restructured (ensure tier distribution is balanced)

## Segmentation Framework

```
TIER CRITERIA:

  PRIORITY A — Strategic (top-tier attention):
    Criterion 1 — ACV threshold:
      Allevio: ACV ≥ $100K (employer groups this size have complex clinical needs and
        multi-year renewal implications)
      Column6: ACV ≥ $150K (pre-committed annual agreements; flagship agency relationships)
      HIVE: ACV ≥ $50K (annual royalty equivalent — large mineral rights holders)
    Criterion 2 — Strategic value (override ACV for priority assignment):
      Reference account: actively serving as a reference for new business
      Advocacy account: case study published or in-progress
      First-in-market: the first Allevio employer group in a new industry; Column6's first
        agency in a new holding company; HIVE's anchor landowner in a new township
    CS ENGAGEMENT: Monthly QBR or equivalent; weekly health score; Dr. Lewis personally
      involved in renewals and escalations; quarterly touchpoint minimum from Dr. Lewis
      
  PRIORITY B — Core (high-value accounts, standard engagement):
    Criterion: ACV $50K-99K (Allevio); $50K-149K (Column6); $25K-49K (HIVE)
    Exceptions: Priority B accounts can be upgraded to Priority A by Dr. Lewis if they
      are showing strong growth signals or strategic relevance
    CS ENGAGEMENT: Quarterly QBR; weekly health score; Dr. Lewis reviews renewals >$75K;
      Dr. Lewis joins escalations when requested
      
  PRIORITY C — Grow (lower-tier active accounts):
    Criterion: ACV $15K-49K (Allevio); $15K-49K (Column6); $10K-24K (HIVE)
    CS ENGAGEMENT: Semi-annual review; monthly health score check; human-led OE (Allevio);
      CS rep manages; Dr. Lewis reviews at-risk escalations
      
  PRIORITY D — Maintain (smallest accounts; digital CS only):
    Criterion: ACV <$15K (Allevio); <$15K (Column6); <$10K (HIVE)
    CS ENGAGEMENT: Automated touchpoints; human response to escalations only;
      cs-digital-cs-builder manages the engagement model

TIER ASSIGNMENT PROCESS:

  Initial assignment (when account is won):
    CS rep proposes tier based on ACV and strategic criteria above
    Dr. Lewis reviews and confirms all Priority A assignments
    Tier is recorded in CRM before the first customer contact
    
  Annual review (Q4 for the following year):
    CS rep reviews each account:
      □ Did ACV change significantly (>20%)? → May change tier
      □ Did the account become a strategic reference or advocacy account? → Upgrade to A
      □ Has the account been consistently Red for 90+ days? → Flag for intensive or offboarding
    Dr. Lewis reviews all tier changes (both upgrades and downgrades)
    Tier assignments finalized by December 15 for the following year
    
  Mid-year adjustment (immediate when triggered):
    ACV grows significantly → Dr. Lewis upgrades tier
    Health score consistently Red + no recovery signal → Dr. Lewis reviews offboarding
    Account becomes a reference or advocacy account → Dr. Lewis upgrades to A (strategic override)

PORTFOLIO BALANCE TARGETS:
  Per CSM, target mix:
    Priority A: ≤10 accounts (or ≤$3M adjusted ARR in Priority A accounts)
    Priority B: ≤15 accounts
    Priority C: ≤30 accounts (with digital CS support)
    Priority D: Unlimited (fully digital; minimal CSM time)
  
  If a CSM has >10 Priority A accounts: flagged for capacity review (cs-capacity-planner)
```

## Output Format

```markdown
# CS Segmentation Model — [Entity] | [Year]
**Approved by:** Dr. Lewis | **Last updated:** [Date]

---

## Tier Criteria Summary

| Tier | Allevio ACV | Column6 ACV | HIVE ARR | CS engagement |
|------|------------|------------|---------|--------------|
| Priority A | ≥$100K | ≥$150K | ≥$50K | Monthly QBR; weekly health; Dr. Lewis in renewals |
| Priority B | $50-99K | $50-149K | $25-49K | Quarterly QBR; weekly health |
| Priority C | $15-49K | $15-49K | $10-24K | Semi-annual; monthly health check |
| Priority D | <$15K | <$15K | <$10K | Digital CS; automated touchpoints |

---

## Account Tier Assignments — [Entity] [Year]

| Account | ACV | Current tier | Last reviewed | Notes |
|---------|-----|------------|--------------|-------|
| [Account A] | $[X]K | Priority A | [Date] | Reference account — strategic override |
| [Account B] | $[X]K | Priority B | [Date] | Growth signal — scheduled for A upgrade review |

---

## CSM Portfolio Balance

| CSM | Priority A | Priority B | Priority C | Priority D | Total accounts | Status |
|-----|-----------|-----------|-----------|-----------|---------------|--------|
| [CSM 1] | [N] | [N] | [N] | [N] | [N] | ✅ Balanced / ⚠️ Review |
```

## Output Contract
- Tier is a fact, not a reward — account tier is determined by ACV and strategic criteria; it is not assigned based on relationship warmth, how often the customer calls, or whether the CS rep "really likes" the account; Dr. Lewis enforces objective criteria; an account that calls 10 times a week is not automatically a Priority A account if the ACV is $12K — it may need to be escalated more frequently, but it does not get quarterly QBRs
- Tier assignment drives time allocation — the segmentation model only works if the CS team actually delivers different service levels to different tiers; Dr. Lewis tracks QBR completion rates by tier; if Priority C accounts are receiving monthly QBRs because the CS rep likes the relationship, that time is being stolen from Priority A accounts that need it; the model is enforced, not optional
- Strategic overrides exist but are exceptions — a $20K Column6 account that is the agency's test account for a $2M brand brief can be temporarily upgraded to Priority B while the brief is being evaluated; but strategic overrides require Dr. Lewis approval and have an expiry date (typically 90 days); upgrades based on "potential" don't count — they require an actual event (brief received; expansion discussion initiated)
- HITL required: Dr. Lewis reviews and confirms all Priority A tier assignments; all tier changes (upgrades and downgrades) require Dr. Lewis approval; annual tier review finalized by Dr. Lewis by December 15; strategic overrides require Dr. Lewis approval with defined expiry; Matt Mathison receives the annual tier model as part of the portfolio CS plan

## System Dependencies
- **Reads from:** QuickBooks (ACV per account — the primary tier criterion); GoHighLevel CRM (account strategic tags — reference; advocacy; first-in-market); cs-health-score-tracker (health scores — Red accounts may be candidates for tier review or offboarding); cs-advocacy-builder (advocacy/reference status — drives strategic Priority A overrides); cs-kpi-dashboard (tier-level GRR/NRR — are different tiers performing differently?)
- **Writes to:** Account tier assignments (GoHighLevel CRM — tier field on each account); CS segmentation model document (SharePoint/CustomerSuccess/<Company>/CSPlanning/[YYYY]_SegmentationModel.pdf); annual tier review records (SharePoint/CustomerSuccess/<Company>/CSPlanning/[YYYY]_TierReview.pdf); cs-capacity-planner (tier distribution by CSM — feeds the capacity model); Matt Mathison portfolio CS plan (tier model overview included)
- **HITL Required:** Dr. Lewis confirms all Priority A assignments; all tier changes require Dr. Lewis approval; annual tier review requires Dr. Lewis finalization by December 15; strategic overrides require Dr. Lewis approval with expiry date; Matt Mathison receives annual segmentation model

## Test Cases
1. **Golden path:** Annual Allevio tier review — 22 accounts; Dr. Lewis reviews: 5 accounts meet Priority A ACV criterion ($100K+) ✅; 2 additional accounts are below $100K but are active references — both assigned Priority A (strategic override: reference status; annual review expiry); 8 accounts are Priority B; 6 are Priority C; 1 is Priority D; CSM portfolio balance: CSM1 (5 Priority A; 4 Priority B; 2 Priority C); CSM2 (2 Priority A; 4 Priority B; 4 Priority C; 1 Priority D) — CSM1 at the Priority A limit but within capacity; no changes needed for Q1; tier model document finalized December 14; sent to Matt Mathison December 20 as part of the portfolio CS plan
2. **Edge case:** A $45K Column6 account (Priority C) is selected as a feature customer for a new Column6 capability launch — they'll be the first test case for Nielsen OneCount attribution → Dr. Lewis: "This is a strategic-override situation. The account's ACV is Priority C, but being the first live case for OneCount attribution makes them strategically important for Q1 — we need them to succeed publicly. I'm upgrading them to Priority B for 6 months (Q1 and Q2) — this includes a quarterly QBR and Dr. Lewis joining the attribution results presentation. The upgrade expires June 30. If they expand their IO commitment, we revisit the tier permanently. If they don't, they revert to Priority C." Strategic override documented with expiry; CS rep notified; account receives Priority B service level for 6 months
3. **Adversarial:** A CS rep proposes upgrading a $28K Allevio account to Priority B because "the HR Director is really demanding and calls me constantly" → Dr. Lewis: "That's not a tier criterion — that's a communication management issue. If the HR Director is calling constantly, we need to understand why: is there an unresolved issue? Does she need more training on the plan? Is the claim ratio report not answering her questions? Fix the root cause, don't reward the behavior by giving a $28K account Priority B service levels. If we upgrade based on call volume, we're training every customer that calling more gets them more attention — and we'll be overwhelmed. This account stays at Priority C. I'll listen to the last call recording and tell you what the root cause is."

## Audit Log
Annual tier model documents retained by entity and year. All tier change records retained (who made the change; why; Dr. Lewis approval date). Strategic override records retained (reason; expiry date). CSM portfolio balance records retained. Matt Mathison delivery records retained.

## Deprecation
Retire when each portfolio company has a CS platform that automates tier assignment based on real-time ACV and health data — with Dr. Lewis reviewing the tier algorithm quarterly and the CEO approving any changes to the tier criteria thresholds.
