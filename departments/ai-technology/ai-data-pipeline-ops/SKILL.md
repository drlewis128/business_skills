---
name: ai-data-pipeline-ops
description: "Manage data pipelines feeding MBL AI applications and Krista.ai workflows. Use when the user says 'data pipeline', 'data pipelines', 'pipeline ops', 'pipeline management', 'pipeline setup', 'pipeline configuration', 'pipeline error', 'pipeline failure', 'pipeline not running', 'pipeline broken', 'pipeline debugging', 'pipeline monitoring', 'data flow', 'data flow management', 'data ingestion', 'data extraction', 'ETL', 'data transformation', 'data quality', 'data validation', 'data freshness', 'stale data', 'data not updating', 'data not flowing', 'report data stale', 'AI is using old data', 'AI data quality', 'AI data accuracy', 'portfolio data pipeline', 'entity data pipeline', 'financial data pipeline', 'meeting data pipeline', 'QuickBooks data pull', 'Covercy data pull', 'Monday data pull', 'data aggregation', 'cross-entity data', 'portfolio reporting pipeline', 'data lineage', 'data source', 'source data', 'data accuracy', 'data completeness', or 'data pipeline audit'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--pipeline <meeting-intelligence|portfolio-monitoring|financial-reporting|crm>] [--entity <mbl|allevio|hive|column6|all>] [--action <audit|debug|optimize|document>]"
---

# AI Data Pipeline Ops

Manage data pipelines feeding MBL AI applications and Krista.ai workflows — ensuring the right data reaches AI applications at the right time, with correct entity isolation, data classification enforcement, and quality checks. AI output quality is bounded by input data quality; a pipeline that delivers stale, incomplete, or cross-contaminated data produces AI outputs that cannot be trusted.

## When to Use
- A Krista.ai workflow is producing outputs that seem incorrect (often a data problem, not an AI problem)
- Setting up a new AI workflow that needs structured data inputs
- Monthly data quality audit across all pipeline feeds
- Investigating why a report or summary shows stale data

## Data Pipeline Operations Framework

```
MBL DATA PIPELINE MAP:

  MEETING INTELLIGENCE PIPELINE:
    Source: Microsoft Teams (meeting recordings + transcripts)
    Flow: Teams recording → Krista.ai transcription → quality check (>90%) → meeting intelligence workflow
    Data produced: meeting transcript; action items; summary; HITL-reviewed final
    Output destinations: SharePoint (archive); Monday.com (action items); Matt Mathison (summary email)
    Entity isolation: MBL meetings; entity CEO meetings; NO cross-entity meeting data in single workflow
    Data classification: Internal (meeting content); Restricted (financial discussions in meeting)
    Allevio: meeting transcripts flagged — cannot contain individual member data (see ai-hipaa-ai-compliance)
    
  PORTFOLIO MONITORING PIPELINE (Phase 3 — future):
    Source: QuickBooks (4 connections — per entity); Covercy (HIVE); AdvancedMD/Marshall (Allevio aggregate)
    Flow: QuickBooks pull (nightly) → normalization → entity KPI calculation → AI analysis → report draft
    Data produced: entity KPI scorecards; variance analysis; anomaly flags; Matt Mathison portfolio report
    Entity isolation: CRITICAL — each entity's QuickBooks data processed independently; aggregated only at MBL level
    Allevio: AdvancedMD data: employer-aggregate ONLY; minimum group ≥10; no member-level data in pipeline
    
  GHL CRM PIPELINE:
    Source: GoHighLevel (contacts; pipeline stage; tags; conversation history)
    Flow: GHL contact event → webhook → Krista.ai → outreach draft or summary → HITL gate
    Data produced: outreach email drafts; contact summaries; pipeline stage reports
    Entity isolation: MBL sub-account; North Vista sub-account; separate pipelines (no cross-sub-account data)
    Data classification: Confidential (prospect data); Internal (pipeline analysis)
    
DATA QUALITY STANDARDS:
  Freshness: meeting data <2 hours old when summary generated; financial data <24 hours old for reports
  Completeness: transcript quality threshold >90% before meeting intelligence runs
  Accuracy: financial data cross-checked against QuickBooks source (if AI output doesn't match QB, trust QB)
  Entity isolation: each pipeline stage explicitly tags which entity the data belongs to; no ambiguous cross-entity data
  
DATA QUALITY FAILURE RESPONSE:
  Transcript quality <90% → skip meeting intelligence; flag for manual review; do NOT produce summary from low-quality transcript
  QuickBooks data pull fails → use previous pull; flag report as "data as of [previous pull date]"; Dr. Lewis investigates
  Allevio data contains individual member identifier → reject from pipeline; log; Dr. Lewis + entity CEO
  Cross-entity data detected in single pipeline context → halt pipeline; investigate; Dr. Lewis
  
DATA LINEAGE DOCUMENTATION:
  Each AI output must be traceable to its source data (what data was used; from when; what entity)
  Output report includes data freshness indicator ("financial data as of June 22, 2026 at 11:45pm")
  QuickBooks pull timestamps logged; used in every AI output that references QuickBooks data
```

## Output Format

```markdown
# Data Pipeline Status — [Date]
**Prepared by:** Dr. Lewis | **Period:** [Week/Month]

---

## Pipeline Status

| Pipeline | Data Source | Last Run | Data Freshness | Quality | Status |
|----------|------------|---------|----------------|---------|--------|
| Meeting Intelligence | Teams transcripts | [Time] | <2 hours | >90% | 🟢 |
| Portfolio Monitoring | QuickBooks (4 entities) | [Time] | <24 hours | ✅ | 🟢 |
| GHL CRM | GHL (MBL) | Real-time | Real-time | ✅ | 🟢 |
| GHL CRM | GHL (North Vista) | Real-time | Real-time | ✅ | 🟢 |

---

## Data Quality Events This Period
- [June 22: Teams transcript at 45% quality (bad audio) → skipped; flagged for manual review]
- [June 20: QuickBooks HIVE data pull failed (token lapsed) → HIVE report flagged as stale]

## Entity Isolation Verification
- All pipeline runs this period: entity tags correct ✅
- No cross-entity data detected ✅
- Allevio: no member-level data in any pipeline run ✅
```

## Output Contract
- Data quality gates are hard stops, not soft warnings — when transcript quality falls below 90%, the meeting intelligence workflow does not produce a summary with a caveat; it does not produce a summary at all; a meeting summary generated from a 60% quality transcript is likely to contain errors in speaker attribution, action item ownership, and key decisions; Dr. Lewis would then review and approve an incorrect summary, distributing wrong information to Matt Mathison and entity participants; the 90% quality gate exists to prevent exactly this outcome; "something is better than nothing" is wrong in this context — an incorrect meeting summary is worse than no summary, because the incorrect one gets acted on; when a transcript fails quality, Dr. Lewis flags the meeting for manual review
- Data lineage is required on every AI output that references source data — when an AI produces a portfolio report, every financial figure in that report must be traceable to a QuickBooks pull; Dr. Lewis must be able to answer "where did that $2.3M revenue figure come from?" with "QuickBooks Column6 connection; pull timestamp June 22 at 11:45pm"; this traceability serves two purposes: (1) Matt Mathison can verify numbers against QuickBooks directly; (2) when an AI output contains a wrong number, the investigation starts with the source data pull, not with "was the AI hallucinating?"; most AI data errors are data pipeline problems, not AI reasoning problems; lineage documentation makes that distinction possible
- HITL required: any pipeline producing outputs for Matt Mathison → HITL before distribution; Allevio pipeline → Allevio entity CEO reviews aggregate data source inputs (clinical data); portfolio monitoring (Phase 3) → Dr. Lewis reviews before Matt Mathison receives report; cross-entity data detected → halt + Dr. Lewis investigation before restarting; Allevio member-level data in pipeline → halt immediately + Dr. Lewis + entity CEO + legal counsel; data quality failure on high-priority workflow → Dr. Lewis manual review; data freshness flag on report → "data as of [date]" disclosure in output

## System Dependencies
- **Reads from:** Microsoft Teams (recordings; transcripts); QuickBooks API (4 entity connections: MBL; Allevio; HIVE; Column6); Covercy (HIVE LP and production data); GoHighLevel (CRM contacts; pipeline; tags); Krista.ai (workflow execution and data processing); Anthropic Console (Claude API pipeline metrics); AdvancedMD/Marshall Medical Billing (Allevio aggregate reporting — via entity CEO or designated data liaison only)
- **Writes to:** SharePoint (pipeline outputs; meeting summaries; portfolio reports; archive); Monday.com (action items; pipeline-driven items); Krista.ai (processed data for AI workflows); pipeline quality log (SharePoint → MBL → IT → Data Pipelines → Quality Log); data lineage records (per AI output; linked to source pull timestamps); entity CEO pipeline status notifications (when their data feed has issues)
- **HITL Required:** Any output to Matt Mathison → Dr. Lewis HITL before distribution; Allevio data inputs → employer-aggregate only verified; portfolio monitoring outputs → Dr. Lewis review; cross-entity data → halt + investigate; member-level data → halt + incident (ai-incident-response-ops); data freshness failure → report flagged; quality gate failure → skip workflow + flag; Phase 3 activation → Matt Mathison approves

## Test Cases
1. **Golden path:** Tuesday morning meeting intelligence pipeline run. Teams: 3 meetings on Monday with recordings. Transcription: Meeting 1 (Matt Mathison + entity CEO, 45 min) — quality 96% ✅ → meeting intelligence workflow runs → BLUF summary + 7 action items drafted. Meeting 2 (Dr. Lewis solo call, 12 min) — quality 94% ✅ → shorter summary; 2 action items. Meeting 3 (MBL team standup, 8 min) — quality 97% ✅ → summary; 4 action items. Entity isolation: all 3 are MBL entity meetings ✅; no cross-entity data. HITL: Dr. Lewis reviews 3 summaries at 8am; approves 2; edits 1 (action item owner correction). Distribution: Matt Mathison receives 3 summaries by 8:30am. Data lineage: transcript timestamps logged; pull timestamps recorded.
2. **Edge case:** During a portfolio monitoring run (Phase 3 — future), the data normalization step produces a combined view that accidentally includes both HIVE production data and Allevio clinical aggregate data in the same report template → Dr. Lewis: "Pipeline cross-entity data detected — HIVE production data and Allevio clinical aggregate appear in the same pipeline context. Pipeline halted immediately. Investigation: (1) How did data from two entities enter a shared pipeline context? (2) Which records crossed entity boundaries? (3) Was this output distributed before I halted it? If no external distribution: remediation — redesign the pipeline to enforce entity isolation at the data intake stage, not at the output stage; entity-tagged data flows must be separated before entering any shared processing; restart pipeline only after isolation fix is verified and tested. Log: cross-entity pipeline incident June 22; no distribution; root cause: normalization step lacked entity filter; fix deployed."
3. **Adversarial:** Matt Mathison asks Dr. Lewis for a cross-entity financial comparison: "Can you show me a table comparing all four entities' revenue side by side?" → Dr. Lewis: "Yes — I can build that cross-entity view for you. The way I'll do this: pull each entity's QuickBooks data separately (maintaining entity isolation in the source pulls), then aggregate at the MBL reporting level — the same approach we'll use for Phase 3 portfolio monitoring. Two notes: (1) Allevio's revenue line shows employer billing revenue (no clinical detail); (2) HIVE's revenue is production-based (BOE × realized price × NRI%), which I'll calculate from Covercy data. I'll have the cross-entity revenue comparison table to you by end of day. This is the correct pattern for portfolio-level reporting — entity data flows are isolated at ingestion and aggregated only at the output stage where Matt Mathison sees the consolidated view."

## Audit Log
Pipeline run records (all pipelines; all runs; data freshness; quality scores; entity isolation status; SharePoint). Data quality event log (quality gate failures; stale data flags; quality improvement history). Cross-entity data detection records (all detected instances; investigation; resolution). Allevio member-level data rejection records (permanent). Data lineage records (linked to each AI output; source data pull timestamps). HITL review records for pipeline outputs. Phase 3 pipeline activation records (Matt Mathison approval; go-live dates).

## Deprecation
Pipeline architecture reviewed when new AI workflows are added. Quality thresholds reviewed if transcript quality benchmarks change (better audio infrastructure; different recording settings). Entity isolation protocols reviewed when portfolio structure changes (new entity; exit). Allevio data access protocols reviewed when HHS AI guidance or HIPAA rules change. Phase 3 pipeline design reviewed before activation (ai-krista-phase-manager exit criteria).
