---
name: revops-lead-lifecycle-manager
description: "Manage the lead lifecycle from MQL to closed for MBL Partners portfolio entities. Use when the user says 'lead lifecycle', 'MQL to SQL', 'lead to opportunity', 'lead conversion', 'MQL definition', 'SQL definition', 'marketing qualified lead', 'sales qualified lead', 'lead handoff', 'marketing to sales handoff', 'handoff SLA', 'lead conversion rate', 'lead qualification', 'what makes a good lead', 'what is an MQL', 'when is a lead ready for sales', 'lead scoring', 'lead criteria', 'lead status', 'lead stages', 'lead funnel', 'lead pipeline', 'lead-to-deal', 'convert lead', 'lead quality', 'rejected lead', 'lead recycling', 'disqualified lead', 'lead requalification', 'lead feedback loop', 'marketing lead quality', 'sales rejects the lead', or 'define MQL'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--stage <mql|sql|opportunity|closed>] [--action <define|review|handoff|report>]"
---

# RevOps Lead Lifecycle Manager

Define and manage the lead lifecycle from MQL to closed deal for MBL Partners portfolio entities — establishing entity-specific MQL/SQL definitions, handoff SLAs, rejection criteria, and the feedback loop between sales and marketing that improves lead quality over time. A well-defined lifecycle eliminates the classic sales/marketing blame loop ("marketing sends bad leads" vs. "sales doesn't follow up") by replacing opinion with agreed-upon criteria.

## When to Use
- Defining or updating MQL/SQL criteria for an entity
- Auditing handoff SLA compliance between marketing and sales
- Analyzing MQL-to-SQL conversion rate and root causes
- Establishing the lead rejection and recycling process

## Lead Lifecycle Framework

```
LIFECYCLE STAGES:

  LEAD (unqualified inquiry):
    Definition: any contact who has expressed any interest (form fill; event badge scan; referral name)
    Status in GHL: Contact created; no pipeline stage; lead source tagged; ICP status = Unknown
    
  MQL (Marketing Qualified Lead):
    Sales must attempt contact within the defined SLA (see revops-lead-routing-manager)
    ALLEVIO MQL criteria (ALL must be met):
      (a) Arizona-based employer (geography confirmed)
      (b) ≥25 employees (company size confirmed or strongly inferred from data)
      (c) ≥2 marketing engagements (e.g., 2+ email clicks; or 1 form fill + 1 event interaction)
      (d) Not currently an Allevio client
      Automated: GoHighLevel lead score triggers MQL when criteria met
      Manual override: AE or marketing can manually upgrade to MQL with justification noted in GHL
      
    COLUMN6 MQL criteria (ALL must be met):
      (a) Agency confirmed (not advertiser direct — Column6 is agency-facing only)
      (b) CTV or programmatic budget confirmed (≥$250K annual estimated spend)
      (c) At least 1 direct engagement (email reply; meeting; LinkedIn response; event conversation)
      (d) Not currently a Column6 client
      
  SQL (Sales Qualified Lead):
    Definition: AE has spoken with the MQL and confirmed fit; MEDDPICCC ≥50% complete
    Converts to GHL pipeline Stage 3 (Discovery)
    AE converts MQL to SQL within SLA window (4 hours first contact; 48 hours for SQL conversion attempt)
    
  OPPORTUNITY (Stage 3+):
    Full pipeline deal; managed in revops-pipeline-manager
    
HANDOFF SLA (MARKETING → SALES):
  MQL created → AE first contact attempt: ≤4 hours (business hours)
  MQL created → AE SQL/No-go determination: ≤48 hours (2 business days)
  
LEAD REJECTION PROCESS:
  AE can reject an MQL within 48 hours with a reason code:
    - Wrong geography (not in Arizona — Allevio; not an agency — Column6)
    - Below size threshold
    - Not a decision-maker or influencer
    - Currently a client (needs different process)
    - Bad contact data (phone/email not working)
    - Already in pipeline (duplicate)
  Rejected MQL: returned to Marketing with reason code in GHL
  Marketing reviews rejection reason and either: (a) corrects the data and re-routes; (b) archives as "Disqualified"; (c) enters into a long-term nurture sequence
  
LEAD RECYCLING:
  MQL that was rejected → "Not Ready" (nurture sequence for 60-90 days) → re-qualify
  Criteria for re-qualify: new engagement after nurture (email click; event attendance; direct inquiry)
  Re-qualified MQL treated as new MQL; new SLA clock starts
  
MQL-TO-SQL CONVERSION TRACKING:
  Target: Allevio ≥35% MQL → SQL conversion; Column6 ≥40%
  Below target for 2+ months → marketing and sales joint review; criteria may need adjustment or lead quality may be declining
  Above 60% → criteria may be too loose; sales is getting too much volume with low quality
  
FEEDBACK LOOP (SALES → MARKETING):
  Weekly: sales lead flags top 3 MQL quality issues to marketing lead
  Monthly: Dr. Lewis reviews MQL → SQL → Closed conversion rates by source; identifies which marketing channels produce highest-quality leads
  Quarterly: Dr. Lewis + entity CEO + marketing lead: are the MQL criteria still right?
```

## Output Format

```markdown
# Lead Lifecycle Report — [Entity] — [Month]

---

## Funnel Summary

| Stage | Volume | Conversion to next stage | vs. Target |
|-------|--------|--------------------------|-----------|
| Leads (all) | | | |
| MQL | | → SQL: X% | ≥35% Allevio |
| SQL | | → Opportunity: X% | |
| Opportunity (Stage 4+) | | → Closed Won: X% | |
| Closed Won | | | |

---

## MQL Source Quality

| Source | MQLs | SQL conversion | Top rejection reason |
|--------|------|---------------|---------------------|
| Email campaign | | X% | |
| Event | | X% | |
| Website form | | X% | |
| Broker referral | | X% | |

---

## Handoff SLA Compliance
- First contact ≤4hr: X% compliant
- SQL determination ≤48hr: X% compliant

---

## Lead Rejection Summary ([N] rejections)

| Reason | # | % of rejections | Action |
|--------|---|----------------|--------|
| Wrong geography | | | |
| Below size threshold | | | |

---

## Actions
1. [Action — owner — due]
```

## Output Contract
- The MQL definition must be agreed on before the first MQL is created — if marketing and sales have different definitions of "ready for sales contact," every lead handoff is a potential conflict; Dr. Lewis requires written MQL criteria (documented in GHL lead score configuration and in the lead lifecycle document) that both marketing and sales leads have explicitly agreed to; "I thought this qualified because it felt like a good lead" is not a criterion; the criteria are specific, measurable, and objective so that when an AE rejects an MQL, the rejection reason maps back to a specific criterion that failed
- MQL-to-SQL conversion rate is the best measure of marketing lead quality — a marketing team that celebrates volume without tracking conversion is not accountable for quality; Dr. Lewis tracks MQL-to-SQL conversion by source (which marketing channel produces leads that sales converts?); a channel that produces 40 MQLs per month but only 12% SQL conversion is producing volume that consumes sales time without driving pipeline; Dr. Lewis and the marketing lead review source-level conversion monthly and reallocate spend toward higher-converting channels
- HITL required: MQL criteria change → entity CEO + Dr. Lewis approve (sales and marketing must agree); conversion rate <25% for 2 months → Dr. Lewis + entity marketing lead + entity CEO review; lead rejection rate >50% → Dr. Lewis + entity CEO + marketing lead (criteria or source quality problem); handoff SLA compliance <70% → entity CEO conversation

## System Dependencies
- **Reads from:** GoHighLevel (MQL status; lead scores; rejection reason codes; handoff timestamps; deal stage progression); mktg-demand-generation-manager (MQL volume targets; ICP definition); revops-lead-routing-manager (handoff SLA timestamps); mktg-marketing-attribution (source-level MQL quality)
- **Writes to:** Lead lifecycle reports (SharePoint → [Entity] → Sales → Lead Lifecycle → [Month]); GoHighLevel (MQL criteria configuration; lead score rules; rejection reason codes); marketing-sales alignment document; Dr. Lewis monthly portfolio lifecycle summary
- **HITL Required:** MQL criteria change → entity CEO + Dr. Lewis; conversion <25% 2 months → Dr. Lewis + marketing + entity CEO; rejection >50% → Dr. Lewis + entity CEO + marketing; SLA compliance <70% → entity CEO

## Test Cases
1. **Golden path:** Allevio June lead lifecycle. Total leads: 48. MQLs: 31 (65% of leads — geography + size confirmed; 2+ engagements). SQL conversion: 12/31 (39% ✅ above 35% target). Opportunities from SQL: 10/12 (83%). Top rejection reasons: 5 "below 25 EE" (small employers — marketing nurture sequence); 3 "bad contact data" (marketing corrects and re-routes); 2 "already in pipeline" (marked as duplicate in GHL; merged). Source quality: broker referrals converting at 62% MQL→SQL (highest); website forms at 41%; email campaign at 28% (review). Marketing lead and sales lead alerted to email campaign lead quality concern; content review next week.
2. **Edge case:** AE refuses to work MQLs that come from a specific email campaign, citing "these companies are too small — they never qualify" → Dr. Lewis: "This is exactly the kind of feedback the lead lifecycle process is designed to surface. Let me pull the data: what is the actual SQL conversion rate from this campaign's leads vs. our overall average? If the data backs up the AE's experience (e.g., 8% SQL conversion vs. 39% average), I'll work with marketing to either (a) add a company size confirmation step before the MQL trigger fires for this campaign segment, or (b) remove this campaign from the MQL pipeline entirely. But the AE can't unilaterally decide not to work a category of MQLs — they need to reject each one individually with a reason code so we have the data to fix the source."
3. **Adversarial:** Marketing claims all MQLs are high quality and that sales is not following up properly (SLA non-compliance); sales claims all MQLs are junk and not worth their time → Dr. Lewis: "This is the classic marketing-sales blame loop, and the data resolves it. I'm pulling: (1) SLA compliance rate — did sales attempt contact within 4 hours? (2) For the MQLs that were contacted on time, what was the SQL conversion rate? If SQL conversion is low for on-time contacts, marketing has a lead quality issue. If SLA compliance is low, sales has a follow-up issue. The data will tell us which problem is primary. We resolve the data question this week, then have one conversation with both leads in the room."

## Audit Log
Monthly lead lifecycle reports. MQL criteria documents with version history (entity CEO + Dr. Lewis approvals). Handoff SLA compliance records. Lead rejection records with reason codes. Source-level conversion tracking. Marketing-sales alignment meeting records (monthly feedback loop).

## Deprecation
MQL criteria reviewed quarterly; updated when entity ICP or market changes. Conversion targets reviewed when entity grow stage changes. Lead scoring configuration reviewed when GoHighLevel features change. Source quality tracking reviewed when marketing channel mix changes.
