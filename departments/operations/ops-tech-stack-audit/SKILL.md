---
name: ops-tech-stack-audit
description: "Audit and rationalize the technology stack across MBL Partners and portfolio entities. Use when the user says 'tech stack audit', 'technology audit', 'stack audit', 'technology rationalization', 'tech rationalization', 'tool audit', 'tool rationalization', 'software audit', 'software rationalization', 'tech review', 'technology review', 'review our tools', 'review our software', 'review the tech stack', 'what tools are we paying for', 'software costs', 'SaaS costs', 'SaaS rationalization', 'redundant tools', 'redundant software', 'duplicate tools', 'unused software', 'unused tools', 'cancel subscriptions', 'software consolidation', 'vendor consolidation', 'tech consolidation', 'reduce software spend', 'cut software costs', 'portfolio tech stack', 'entity tech stack', 'MBL tech stack', 'what are we running', or 'map our tools'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--action <audit|rationalize|benchmark|standardize|report>] [--focus <cost|security|redundancy|coverage|all>] [--output <report|recommendation|action-plan>]"
---

# Ops Tech Stack Audit

Audit and rationalize the technology stack across MBL Partners and portfolio entities — cataloging what tools are in use, what each costs, whether it's being used effectively, whether it's redundant with something else, and whether it's on the approved/integrated architecture. The tech stack audit is a cross-cutting operational lever: done annually (or at acquisition), it eliminates shadow IT, reduces SaaS sprawl, identifies portfolio-wide licensing opportunities, and ensures every tool is properly permissioned, audited, and connected to the operational systems that Dr. Lewis manages. For Allevio specifically, the tech stack audit includes HIPAA compliance considerations — any tool that touches PHI must have a signed BAA.

## When to Use
- Annual tech stack review (typically Q1)
- At acquisition of a new portfolio entity (90-day integration)
- Finance identifies unexplained SaaS spend in Bill.com
- Security concern about unauthorized tool usage

## Tech Stack Audit Framework

```
MBL APPROVED CORE SYSTEMS MAP:

  TIER 1 — Systems of Record (cannot be replaced without Matt Mathison approval):
    Microsoft 365 (identity; email; Teams; SharePoint; OneDrive)
    QuickBooks Online (GL; P&L; balance sheet — all entities)
    Bill.com (AP management; vendor payments)
    GoHighLevel (CRM — MBL + North Vista)
    AdvancedMD (Allevio — EHR/RCM)
    Marshall Medical Billing (Allevio — billing outsource partner)
    Covercy (HIVE — royalty management)
    Monday.com (project management; action tracking)
    Krista.ai (AI orchestration; meeting intelligence)
    
  TIER 2 — Approved Operational Tools (require Dr. Lewis approval to add/remove):
    Adobe Acrobat (document processing)
    Zoom / Teams Video (meetings)
    DSP platforms for Column6 (The Trade Desk; DV360; etc.)
    SSP integrations for Column6
    
  TIER 3 — Entity-Specific Tools (entity CEO manages; Dr. Lewis audits annually):
    Clinical tools at Allevio
    Field tools at HIVE
    Ad ops tools at Column6

AUDIT PROCESS:

  STEP 1 — INVENTORY (2-3 days):
    Source 1: Bill.com — export all recurring vendor payments (monthly/quarterly/annual)
    Source 2: QuickBooks — SaaS/software expense codes (GL review)
    Source 3: Microsoft 365 admin center — licensed seat counts; active users
    Source 4: Entity CEO interview — "What tools does your team use daily?" (captures shadow IT)
    Output: Master tool inventory spreadsheet (tool; vendor; cost/month; seats; owner; category)
    
  STEP 2 — CLASSIFY (1 day):
    For each tool, classify:
      Tier: 1 / 2 / 3
      Category: Identity; Finance; CRM; Clinical; Operations; Communication; Analytics; Security
      Status: Active (core); Active (marginal — low usage); Redundant; Orphaned; Shadow IT
      PHI risk (Allevio): Does this tool process or store PHI? BAA in place? (Yes/No/Unknown)
    
  STEP 3 — RATIONALIZATION ANALYSIS (1-2 days):
    For each "Redundant" or "Marginal" tool:
      What function does it serve?
      Is that function already served by a Tier 1 or Tier 2 tool?
      What is the switching cost? (migration effort; contract penalty; user retraining)
      What is the monthly/annual savings if eliminated?
    
  STEP 4 — PORTFOLIO-LEVEL OPPORTUNITIES:
    Overlapping vendors across entities → negotiate portfolio license
    Examples: Microsoft 365 (portfolio-wide); QuickBooks (portfolio-wide); Monday.com
    Current overlaps: [identify per audit]
    Potential savings: [calculate per audit]
    
  STEP 5 — RECOMMENDATIONS (priority-ordered):
    Immediate action (cancel this month — clear wins; no migration needed)
    30-day action (cancel after migration to existing tool)
    90-day action (rationalize with vendor renegotiation)
    Portfolio opportunity (negotiate portfolio license)
    
  STEP 6 — ALLEVIO HIPAA REVIEW:
    For every tool that touches Allevio data:
      Does it process PHI? → BAA required; check status
      Is it cloud-hosted? → Security review required
      Unauthorized PHI processing = HIPAA incident; escalate to Dr. Lewis immediately

TECH STACK HEALTH METRICS:

  Total SaaS spend per entity (monthly; annual)
  Cost per employee per month (benchmark: $200-400/employee for SMB)
  % of tools actively used (usage data from admin consoles)
  % of tools with signed BAAs (Allevio — target 100%)
  Shadow IT instances identified and resolved
  Portfolio licensing efficiency (% of tools negotiated at portfolio level)
```

## Output Format

```markdown
# Tech Stack Audit Report — [Entity] — [Date]
**Conducted by:** Dr. Lewis | **For:** [Entity CEO] + Matt Mathison

---

## Summary
- **Total tools inventoried:** [N]
- **Total SaaS spend:** $[X]/month | $[X]/year
- **Redundant/orphaned tools:** [N] — savings opportunity: $[X]/month
- **Shadow IT instances:** [N] — [status]
- **BAA compliance (Allevio):** [N]/[N] tools with PHI have signed BAAs

---

## Immediate Action Items (cancel/fix this month)

| Tool | Issue | Monthly cost | Action |
|------|-------|-------------|--------|
| [Tool] | Redundant with Microsoft 365 | $[X] | Cancel — no migration needed |
| [Tool] | No BAA — Allevio PHI risk | $[X] | Obtain BAA or migrate off immediately |

---

## Recommendations (30-90 days)

| Tool | Issue | Recommendation | Savings | Effort |
|------|-------|---------------|---------|--------|
| [Tool] | Marginal usage | Migrate to [Tier 1 tool] | $[X]/mo | Low |

---

## Portfolio Licensing Opportunities

| Vendor | Current structure | Portfolio option | Estimated savings |
|--------|------------------|-----------------|------------------|
| Microsoft | 3 separate licenses | Portfolio agreement | $[X]/year |
```

## Output Contract
- The audit starts with Bill.com and QuickBooks data — no reliance on self-reporting; the financial systems are the source of truth for what MBL is actually paying; entity CEOs are often unaware of tools their team subscribed to and are still paying for; the Bill.com + QuickBooks export gives Dr. Lewis the ground truth before any interview; the interview fills in the shadow IT gaps (tools being paid by employee credit card; free tiers of paid tools; personal accounts used for business)
- PHI risk is non-negotiable for Allevio — any Allevio tool that processes or stores PHI without a signed BAA is a HIPAA incident in the making; the audit identifies every tool in Allevio's stack; Dr. Lewis evaluates PHI exposure for each; tools without BAAs either get BAAs signed within 30 days or the tool is migrated off; Dr. Lewis does not accept "I think we're compliant" — only signed BAAs or documented PHI-free classification; missing BAA + PHI exposure → Dr. Lewis escalates to Matt Mathison same day
- Rationalization recommendations are sequenced by effort and impact — the audit produces a prioritized action list, not a wish list; immediate wins (cancel tool with no migration needed) are actioned this month; migration-required actions get a timeline and migration plan; recommendations that would save <$100/month with high switching cost are explicitly deprioritized; Matt Mathison's time is not consumed by $50/month decisions; Dr. Lewis handles those independently within his authority
- HITL required: Tier 1 tool changes (removing or replacing Microsoft; QuickBooks; Monday.com; Krista.ai; GoHighLevel; AdvancedMD; Covercy) require Matt Mathison explicit approval — these are systems of record; any change has portfolio-wide impact; Allevio BAA deficiency → Matt notification same day; portfolio-level licensing negotiations (where MBL signs as the contracting entity for all portfolio companies) require Matt's signature; tool rationalizations that result in a termination fee >$1,000 require Dr. Lewis + entity CEO approval; >$10,000 requires Matt Mathison

## System Dependencies
- **Reads from:** Bill.com (recurring vendor payments — primary source); QuickBooks (SaaS expense line items); Microsoft 365 admin center (seat counts; usage data); entity CEO interviews (shadow IT); AdvancedMD admin (Allevio — PHI-touching tools); existing vendor contracts (SharePoint → Finance → Contracts)
- **Writes to:** Tech stack inventory (SharePoint → Operations → TechStack → [Entity] → [YYYY]); audit report (distributed to entity CEO + Matt Mathison); fin-vendor-spend-analyzer (tech spend data feeds vendor analysis); ops-integration-planner (approved tool changes feed integration planning); Allevio compliance records (BAA status updated)
- **HITL Required:** Tier 1 tool changes → Matt Mathison explicit approval; Allevio BAA gap → Matt notification same day; portfolio licensing contracts → Matt signature; termination fees >$10K → Matt approval; entity CEO must concur on any tool removal from their stack (Dr. Lewis does not unilaterally remove tools the entity team is using)

## Test Cases
1. **Golden path:** Annual Q1 tech stack audit for all 3 entities. Bill.com export: Allevio has 2 subscriptions to video conferencing tools (Zoom $180/mo and Microsoft Teams included in M365 — redundant; savings $180/mo; Zoom contract month-to-month). Allevio also has a cloud data storage tool ($95/mo) — Dr. Lewis checks: does it touch PHI? Admin says "yes, patient forms are uploaded there." BAA status: no BAA. Dr. Lewis escalates to Matt same day: "Allevio is storing PHI on [Tool] without a BAA. This is a HIPAA exposure. I'm pausing all PHI uploads to that tool effective today and requesting a BAA from the vendor. If they can't provide one in 7 days, we migrate to SharePoint (HIPAA-eligible in our M365 agreement). No PHI has been breached — this is a compliance gap, not a breach." Matt responds: "Handle it. Keep me posted." BAA obtained in 3 days. Issue resolved.
2. **Edge case:** Tech stack audit reveals an entity is using a personal Gmail account for business communications → Dr. Lewis: "The audit revealed that [employee] at [entity] is using a personal Gmail account for some business correspondence. This creates several risks: (1) business communications are outside MBL's retention and audit capability; (2) if PHI is transmitted via personal Gmail at Allevio, it's a HIPAA violation; (3) IP and client data may not be recoverable if the employee departs. Recommended action: immediate transition of all business communications to the entity's Microsoft 365 account. I'm flagging this to the entity CEO today. If the entity CEO is the one using personal Gmail, I'm flagging to Matt."
3. **Adversarial:** An entity CEO pushes back on a tool rationalization recommendation (they want to keep a tool Dr. Lewis flagged as redundant) → Dr. Lewis: "Fair — I want to make sure I haven't missed a use case. The tool is [Name], costing $[X]/month. I flagged it as redundant with [Tier 1 tool] because both do [function]. Help me understand: what does [Name] do that [Tier 1 tool] doesn't? If there's a genuine capability gap, I'll update the recommendation and we'll keep the tool. If it's more of a familiarity/preference issue, I'd ask you to consider the cost ($[X]/year) and whether that's the highest-value use of that spend. I'm not trying to force a tool change — I'm trying to make sure every tool dollar is earning its keep."

## Audit Log
Annual audit reports retained per entity. Tool inventory snapshots retained (point-in-time — useful for tracking tech sprawl over time). BAA compliance records retained (Allevio). Rationalization recommendations and outcomes retained. Portfolio licensing negotiations retained. Shadow IT incidents retained.

## Deprecation
Review the Tier 1 / Tier 2 / Tier 3 classification annually as the MBL systems architecture evolves (e.g., if Krista.ai expands to replace a Tier 2 tool). The audit process itself is a permanent annual requirement.
