---
name: revops-marketing-sales-alignment
description: "Manage marketing-sales alignment for MBL Partners portfolio entities. Use when the user says 'marketing sales alignment', 'sales and marketing alignment', 'smarketing', 'marketing sales silo', 'marketing and sales not aligned', 'sales blames marketing', 'marketing blames sales', 'SLA between marketing and sales', 'joint pipeline review', 'marketing sales meeting', 'shared goals marketing sales', 'marketing sales friction', 'lead handoff process', 'lead quality feedback', 'MQL criteria agreement', 'marketing sales definitions', 'unified pipeline view', 'sales feedback to marketing', 'marketing feedback to sales', 'sales and marketing goals', 'marketing vs. sales', 'bridge marketing and sales', 'align marketing and sales', 'joint revenue goal', 'revenue team', 'commercial alignment', or 'marketing sales joint review'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--action <review|sla|meeting|report|fix>] [--issue <lead-quality|sla|definitions|goals>]"
---

# RevOps Marketing-Sales Alignment

Manage marketing-sales alignment for MBL Partners portfolio entities — establishing shared definitions, joint SLAs, regular reviews, and a feedback loop that prevents the classic marketing/sales blame cycle and directs both functions toward the same revenue outcome. When marketing and sales are not aligned, leads fall through cracks and finger-pointing replaces accountability.

## When to Use
- Entity CEO identifies friction between marketing and sales
- Lead rejection rate is high (>30%) or SLA compliance is low (<70%)
- Setting up the alignment structure for a new entity
- Monthly or quarterly alignment review between marketing and sales leads

## Marketing-Sales Alignment Framework

```
SHARED DEFINITIONS (DOCUMENTED AND SIGNED OFF):
  All definitions below must be agreed on, documented in writing, and reviewed quarterly:
  
  ICP: who is the ideal customer? (entity-specific; defined in mktg-demand-generation-manager)
  MQL: what criteria make a lead ready for sales? (defined in revops-lead-lifecycle-manager)
  SQL: what makes a lead sales-accepted and pipeline-ready? (MEDDPICCC ≥50%)
  Opportunity: Stage 3+ in GoHighLevel
  Marketing-Sourced Pipeline: deal where the first touch was a marketing activity (attribution-tracked)
  Marketing-Influenced Pipeline: deal where a marketing touchpoint occurred (even if not first touch)
  Marketing Pipeline Contribution: % of total pipeline with marketing first touch (target: ≥30%)
  
JOINT SLA (MARKETING ↔ SALES):
  Marketing → Sales SLA:
    Deliver MQLs that meet documented criteria: 100% (no below-criteria leads delivered)
    Deliver MQL volume: ≥20/month (Allevio); ≥12/month (Column6)
    HIPAA-compliant content and lead data: 100% (Allevio — Dr. Lewis reviews)
    
  Sales → Marketing SLA:
    First contact attempt within 4 hours of MQL: ≥90% compliance
    SQL/No-go determination within 48 hours: ≥85% compliance
    Rejection reason code logged in GHL for every rejected MQL: 100%
    Weekly top-3 feedback on lead quality to marketing lead: weekly
    
ALIGNMENT MEETING CADENCE:
  Monthly (30 min): marketing lead + sales lead; Dr. Lewis attends quarterly
    Agenda: MQL volume vs. target; SLA compliance (both directions); top rejection reasons; pipeline attribution
    Output: 1-3 actions for next month (owner + due date)
    
  Quarterly (60 min): entity CEO + marketing lead + sales lead + Dr. Lewis
    Agenda: full-quarter attribution review; SLA compliance scorecard; MQL criteria review; OKR alignment check
    Output: criteria updates; SLA threshold updates; channel investment recommendations; next quarter priorities
    
MISALIGNMENT ESCALATION:
  Signal 1: Rejection rate >30% → joint review same week; root cause + criteria update
  Signal 2: SLA compliance <70% (sales) → entity CEO conversation about follow-up discipline
  Signal 3: Marketing pipeline contribution <20% (below 30% target) → strategy review
  Signal 4: Marketing and sales leads in persistent conflict (>2 months of blame loop) → Dr. Lewis mediates; entity CEO final word
  
BLUF PRINCIPLE IN ALIGNMENT MEETINGS:
  Alignment meetings that devolve into storytelling and anecdotes waste time; use data
  Every agenda item: here's the number; here's what it means; here's the action; who owns it; by when
  Dr. Lewis models this when he attends quarterly reviews
```

## Output Format

```markdown
# Marketing-Sales Alignment Report — [Entity] — [Month/Quarter]
**Marketing lead:** [Name] | **Sales lead:** [Name] | **Facilitator:** Dr. Lewis (quarterly)

---

## SLA Scorecard

| SLA | Owner | Target | Actual | Status |
|-----|-------|--------|--------|--------|
| MQL volume ≥20/month | Marketing | 20 | [N] | ✅/⚠️ |
| MQL criteria compliance | Marketing | 100% | X% | |
| HIPAA compliance (Allevio) | Marketing | 100% | 100% | ✅ |
| First contact ≤4hr | Sales | ≥90% | X% | |
| SQL/no-go ≤48hr | Sales | ≥85% | X% | |
| Rejection reason codes | Sales | 100% | X% | |

---

## Pipeline Attribution

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Marketing pipeline contribution | X% | ≥30% | ✅/⚠️ |
| Marketing-sourced pipeline value | $X | | |

---

## Top 3 Lead Quality Issues (from sales)
1. [Issue — recommended fix — owner]
2.
3.

---

## Actions This Month
1. [Action — owner — due]
```

## Output Contract
- Alignment requires shared accountability, not shared opinions — "marketing sends bad leads" and "sales doesn't follow up" are opinions that are resolved only by data; MQL criteria, SLA compliance rates, and rejection reason codes are the data; Dr. Lewis convenes alignment meetings with data on the table first — the discussion follows from what the numbers show, not what each team believes; when marketing's rejection rate is 8% and sales SLA compliance is 94%, the data clears marketing and indicts sales follow-up; when rejection rate is 47%, the data clears sales and indicts lead quality or criteria; the data resolves the blame loop
- The SLA is a mutual commitment — alignment breaks down when the SLA is presented as "what sales must do with marketing's leads" rather than a mutual agreement where marketing is also accountable; Dr. Lewis documents the marketing SLA (volume, quality, HIPAA compliance) with the same rigor as the sales SLA (first contact, SQL determination, rejection codes); in the alignment review, both sides are scored; this prevents either side from feeling the alignment process is a policing mechanism applied to them unilaterally
- HITL required: alignment document (shared definitions + SLAs) → entity CEO + marketing lead + sales lead sign; quarterly alignment review → Dr. Lewis attends; misalignment escalation (Signal 3 or 4 above) → entity CEO convenes; MQL criteria update → entity CEO + Dr. Lewis; pipeline contribution <20% 2 months → entity CEO strategy review

## System Dependencies
- **Reads from:** GoHighLevel (MQL volume; rejection rates; SLA compliance timestamps; lead source; pipeline attribution); revops-lead-lifecycle-manager (MQL → SQL conversion; rejection reason codes); revops-marketing-attribution (pipeline contribution %; source-level attribution); mktg-demand-generation-manager (MQL volume targets; channel strategy)
- **Writes to:** Alignment report (SharePoint → [Entity] → RevOps → Alignment → [Period]); Shared definitions document (SharePoint → [Entity] → RevOps → Definitions); GoHighLevel (SLA tracking configuration); entity CEO escalation records; Dr. Lewis portfolio alignment health summary
- **HITL Required:** Shared definitions → entity CEO + marketing + sales sign; quarterly review → Dr. Lewis; misalignment escalation → entity CEO; MQL criteria update → entity CEO + Dr. Lewis; pipeline contribution <20% → entity CEO

## Test Cases
1. **Golden path:** Allevio Q2 alignment review. Marketing SLA: MQL volume 22/20 (✅); criteria compliance 97% (⚠️ 1 small employer outside AZ slipped through; fixed); HIPAA compliance 100% (✅). Sales SLA: first contact ≤4hr 91% (✅); SQL/no-go ≤48hr 88% (✅); rejection codes 100% (✅). Pipeline contribution: 31% (✅ above 30%). Top sales feedback to marketing: (1) email campaign leads trending smaller (<25 EE) — marketing will tighten list filter; (2) LinkedIn leads are generally good quality; (3) event follow-up speed is critical — day-of follow-up converts much better than day-after. Actions: (1) email list filter updated (owner: marketing lead; due: July 5); (2) event follow-up SLA changed from 48hr to 24hr (owner: revops; GHL sequence updated). Alignment healthy; no escalations.
2. **Edge case:** New marketing coordinator starts sending Allevio employer leads to the sales team before checking for the HIPAA review step — the leads are technically ICP-qualified but Dr. Lewis has not reviewed the associated email campaign for HIPAA compliance → Dr. Lewis: "Pausing this handoff immediately. No Allevio marketing lead is handed to sales if the associated campaign has not been HIPAA-reviewed by me. This is a process gap — the new coordinator wasn't briefed that the HIPAA review precedes the lead handoff, not follows it. Here's what I'm doing: (1) I'm doing the HIPAA review of the campaign content now — if it passes, we resume the handoff today; (2) I'm briefing the coordinator on the required sequence: HIPAA review → entity CEO approval → campaign launch → lead handoff. This is a training gap, not a punitive one."
3. **Adversarial:** Sales lead refuses to participate in the monthly alignment meeting ("I'm busy with a big deal, these meetings are a waste of time") → Dr. Lewis: "The alignment meeting is not optional, and here's why: last quarter, our MQL-to-SQL conversion was 23% — below the 35% target. Without the monthly review, we don't catch lead quality issues for 90 days, by which point 3 months of underperforming pipeline has already been built. The meeting is 30 minutes; 15 of those are data that I prepare in advance; the discussion and decisions take 15 minutes. I'll work with the sales lead to find a time that doesn't conflict with the big deal. If there is a genuine competing priority, send the entity CEO in the sales lead's place — but the meeting happens."

## Audit Log
Monthly alignment reports retained permanently. Shared definitions document version history (all signatories). SLA compliance tracking records. Escalation records. Entity CEO involvement records. HIPAA review records for Allevio lead handoff compliance. Alignment meeting attendance records.

## Deprecation
Shared definitions reviewed quarterly. SLA thresholds reviewed when entity pipeline targets or headcount changes. Alignment meeting cadence reviewed when entity structure changes. Escalation protocols reviewed annually. HIPAA compliance steps reviewed when Allevio data practices change.
