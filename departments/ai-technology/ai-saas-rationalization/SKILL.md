---
name: ai-saas-rationalization
description: "Rationalize and optimize the SaaS stack across MBL Partners and portfolio companies. Use when the user says 'SaaS rationalization', 'SaaS review', 'software review', 'subscription review', 'SaaS cost', 'software cost', 'subscription cost', 'software spend', 'SaaS spend', 'reduce SaaS cost', 'eliminate software', 'cancel subscription', 'consolidate software', 'SaaS audit', 'software audit', 'tool audit', 'tech stack audit', 'what software are we paying for', 'what tools do we have', 'SaaS inventory', 'software inventory', 'tool inventory', 'SaaS waste', 'unused software', 'underused software', 'duplicate tools', 'overlapping tools', 'shadow IT', 'unauthorized software', 'software consolidation', 'SaaS optimization', 'SaaS governance', 'software governance', 'tech stack optimization', 'portfolio software review', 'entity software review', 'software ROI', 'SaaS ROI', 'software value', 'cancel unused subscription', or 'software rationalization plan'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|all>] [--action <audit|rationalize|report|cancel|consolidate>]"
---

# AI SaaS Rationalization

Rationalize and optimize the SaaS stack across MBL Partners and portfolio companies — auditing all software subscriptions, identifying unused and duplicative tools, evaluating ROI for each subscription, and producing a rationalization plan that reduces spend while maintaining operational capability.

## When to Use
- Annual or semi-annual SaaS audit across all entities
- When a new entity is acquired and its software stack needs assessment
- When MBL's total software spend exceeds budget
- When duplicate tools across entities are identified

## SaaS Rationalization Framework

```
SAAS AUDIT PROCESS:

  STEP 1 — INVENTORY:
    Pull all recurring software charges from Bill.com (filter by subscription/SaaS category)
    Pull all credit card recurring charges (entity credit cards; all MBL credit cards)
    Pull all vendor contracts with software components
    Entity isolation: audit each entity separately; then look for cross-entity duplicates
    Result: complete list [vendor; monthly cost; annual cost; payment method; contract end; owner]
    
  STEP 2 — USAGE ASSESSMENT:
    For each subscription: who uses it; how often; for what purpose
    Usage signals: last login date (check vendor admin); team member surveys; entity CEO input
    Zero-usage threshold: no active user in 60 days → immediate cancellation candidate
    Low-usage threshold: <20% of seats used; or used <2x/week → review for downgrade/cancel
    
  STEP 3 — VALUE ASSESSMENT:
    Core infrastructure (cannot cancel without business impact):
      Microsoft 365; QuickBooks; Monday.com; GoHighLevel; Bill.com; Krista.ai; Gusto
      These are systems of record or primary workflow tools — not subject to cancellation
    ROI-assessed tools (must justify monthly cost):
      All non-core subscriptions evaluated: cost vs. value delivered
      ROI threshold: $100/month subscription must deliver >$300/month in identifiable value
    Duplicate assessment:
      Two tools doing similar jobs → retain the one used more; cancel the other
      Cross-entity duplicates → evaluate consolidation (one license for all entities)
      
  STEP 4 — RATIONALIZATION PLAN:
    Immediate cancel: zero-usage tools (no active use in 60 days)
    Review and likely cancel: low-usage tools; ROI negative tools
    Downgrade: tools where a lower tier meets the actual usage level
    Consolidate: cross-entity duplicates → negotiate one enterprise agreement
    Retain: core infrastructure + ROI-positive tools + tools under active evaluation
    
MBL ENTITY-SPECIFIC CONSTRAINTS:
  Allevio: any clinical-adjacent software requires BAA review before addition or renewal
  HIVE: Covercy is core infrastructure (LP operations); do not rationalize without Matt Mathison
  Column6: IO management and CTV/media tracking tools are core to revenue; careful assessment
  All entities: QuickBooks per-entity is core infrastructure; do not consolidate company files
```

## Output Format

```markdown
# SaaS Rationalization Report — [Entity or All] | [Date]
**Prepared by:** Dr. Lewis | **Period:** [Month/Year]

---

## SaaS Inventory Summary

| Tool | Monthly Cost | Annual Cost | Owner | Usage | Recommendation |
|------|-------------|-------------|-------|-------|----------------|
| Microsoft 365 | $XXX | $XXX | Dr. Lewis | Core | Retain |
| [Tool] | $XX | $XXX | [Entity CEO] | Low | Cancel |
| [Tool] | $XX | $XXX | Dr. Lewis | Duplicate | Consolidate |

---

## Total Current Spend: $X/month | $X/year

## Actions

| Action | Tool | Savings | Timeline |
|--------|------|---------|---------|
| Cancel | [Tool] | $X/year | Immediately |
| Downgrade | [Tool] | $X/year | Next billing |
| Consolidate | [Tool A + B] | $X/year | Contract renewal |

**Projected annual savings: $X**
```

## Output Contract
- Core infrastructure is not subject to rationalization without Matt Mathison involvement — Microsoft 365; QuickBooks; Monday.com; GoHighLevel; Bill.com; Gusto; Krista.ai are operational lifelines, not discretionary subscriptions; even if usage data shows "low activity" in a given month for one of these systems, Dr. Lewis does not recommend cancellation without a full replacement analysis and Matt Mathison's explicit approval; the rationalization framework is designed to eliminate waste, not to create operational gaps by canceling systems that are underused by proxy metrics but essential to business continuity
- Shadow IT discovery is an access management issue as well as a cost issue — when the SaaS audit discovers a subscription that Dr. Lewis didn't authorize (an entity CEO or team member signed up for a tool without going through the governance framework), Dr. Lewis does both: (1) evaluates whether the tool has value and should be properly provisioned; (2) assesses whether the tool's data handling meets MBL's requirements (HIPAA if Allevio-adjacent; DPA for any tool handling business data); an unauthorized SaaS subscription at Allevio that processes clinical data without a BAA is not just a cost issue — it is a compliance incident
- HITL required: rationalization plan → Dr. Lewis prepares; entity CEO reviews for entity-specific tools; Matt Mathison reviews for tools affecting more than one entity or total spend >$5K/year; cancellation of core tools → Matt Mathison must explicitly approve; Covercy (HIVE) → Matt Mathison explicitly; Allevio clinical-adjacent tools → entity CEO + BAA review; shadow IT discovery → Dr. Lewis + entity CEO assess compliance; cancellation of any tool → entity CEO notified before action

## System Dependencies
- **Reads from:** Bill.com (all subscription charges by category); entity credit card statements (recurring software charges); vendor contracts (software components; term; renewal dates); M365 Admin (user license counts; actual usage if available); vendor admin dashboards (last login; seat utilization); entity CEO input (usage context; value assessment)
- **Writes to:** SaaS inventory spreadsheet (SharePoint → MBL → IT → SaaS Inventory → [Entity] → [Year]); rationalization plans; cancellation records; consolidation agreements; Matt Mathison SaaS cost briefings
- **HITL Required:** Rationalization plan → entity CEO + Matt Mathison review; core tool cancellation → Matt Mathison explicit; Allevio clinical tools → entity CEO + BAA review; shadow IT → compliance assessment; cancellations → entity CEO notified before action

## Test Cases
1. **Golden path:** Annual MBL SaaS audit (June 2026). Bill.com pull: 18 recurring subscriptions identified. Usage assessment: 2 tools with zero logins in 90 days ($340/year total). 1 tool with 1 of 5 seats used ($180/year). Cross-entity: MBL and Allevio both paying for Loom ($14/month each = $28/month total — consolidate to one account). Rationalization plan: Cancel 2 zero-usage tools ($340 saved); downgrade Loom to 1-seat (save $168/year); consolidate Loom to entity-shared account (save $168/year). Total projected savings: $676/year. Entity CEOs notified. Cancellations executed after entity CEO confirmation. Report filed.
2. **Edge case:** Allevio entity CEO purchased a "clinical communications app" on their company credit card without going through Dr. Lewis → Dr. Lewis: "I see a new subscription from [vendor] on the Allevio credit card that I haven't authorized. Before I evaluate whether to retain or cancel it, I need to know: does this tool process any member data? Clinical communications tools almost always handle PHI — appointment reminders; care plan communications; member messaging — all of which are PHI. I need: (1) the vendor's BAA offer; (2) what data flows into the tool; (3) what Allevio is using it for. If it handles PHI without a BAA, we need to stop using it today — not next week. I'll connect with you this afternoon." Compliance first, cost second.
3. **Adversarial:** Entity CEO resists the SaaS audit ("these tools are all useful; I don't want you canceling things we need") → Dr. Lewis: "The audit isn't a cancellation exercise — it's a visibility exercise. I want to make sure we know what we're paying for and that it's delivering value. Of the 18 subscriptions I found, I'm not recommending canceling anything before confirming with you that it's actually not needed. The 2 zero-usage tools might be seasonal — if you tell me they'll be needed in Q4, we keep them. The goal is to make sure money isn't leaving the business for tools that nobody is using. Can we spend 30 minutes going through the list together? You'll have final say on every recommendation."

## Audit Log
SaaS inventory (all entities; annual; SharePoint). Usage assessment records. Cancellation records (date; vendor; reason; authorization). Consolidation records. Shadow IT discoveries and compliance assessments. Matt Mathison approval records (core tool changes; multi-entity changes). Entity CEO confirmation records. Projected vs. actual savings tracking.

## Deprecation
SaaS audit cadence reviewed annually. Core infrastructure definition updated when MBL adds new critical systems. Shadow IT assessment criteria updated when compliance requirements change. ROI thresholds reviewed when MBL's financial situation changes. Entity-specific constraints updated when portfolio changes.
