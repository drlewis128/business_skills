---
name: revops-data-integration-ops
description: "Manage data integrations between revenue systems for MBL Partners portfolio entities. Use when the user says 'data integration', 'system integration', 'GoHighLevel integration', 'CRM integration', 'QuickBooks integration', 'Monday.com integration', 'Krista integration', 'data sync', 'data flow', 'data pipeline', 'how does data flow', 'GHL to QuickBooks', 'GHL to Monday', 'integration error', 'sync error', 'data not syncing', 'integration health', 'integration audit', 'integration monitoring', 'API integration', 'webhook', 'data connector', 'integration design', 'integration architecture', 'integration governance', 'integration failure', 'broken integration', 'integration setup', 'connect systems', 'connect tools', 'data between systems', 'cross-system data', or 'orchestration integration'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--integration <ghl-qb|ghl-monday|ghl-krista|all>] [--action <design|audit|monitor|fix|document>]"
---

# RevOps Data Integration Ops

Manage data integrations between MBL Partners revenue systems — designing, documenting, monitoring, and governing the data flows between GoHighLevel, QuickBooks, Monday.com, and Krista.ai to ensure accurate, timely, auditable data movement across the portfolio. Integration failures are silent killers: data stops moving, reports become stale, and decisions get made on wrong information.

## When to Use
- Designing a new integration between revenue systems
- Monitoring integration health (weekly cadence)
- Investigating a data sync error or data discrepancy
- Reviewing integration architecture for Krista.ai orchestration readiness

## Data Integration Framework

```
ACTIVE INTEGRATIONS (MBL REVENUE STACK):

  GoHighLevel → QuickBooks:
    Purpose: closed deal data flows to QuickBooks for invoicing and revenue recognition
    Trigger: GHL deal stage moves to "Closed Won" → QuickBooks invoice created
    Data fields: employer/agency name; contract value; contract date; billing contact
    Allevio HIPAA: invoice data is employer-level (PMPM × enrolled EE = dollar amount) — aggregate; no PHI
    Current status: [manual or automated — document current state]
    
  GoHighLevel → Monday.com:
    Purpose: deal milestone events create Monday.com tasks for RevOps action items
    Trigger: Stage 5 (Proposal) → create Monday task "Proposal follow-up check — [Rep] — [Due]"
    Trigger: Stage 7 (Verbal Commit) → create Monday task "Contract prep — [Rep] — [Due]"
    Trigger: Closed Won → create Monday task "CS handoff — [CS Lead] — [Due: 48hr]"
    Trigger: Coverage ratio <2.5× → create Monday task "Pipeline alert — Entity CEO — [Due: same day]"
    
  GoHighLevel → Krista.ai:
    Purpose: AI-assisted deal intelligence, pipeline summaries, and meeting prep for Matt Mathison
    Integration type: Krista reads GHL pipeline data via API (read-only to GHL)
    Trigger: weekly pull → Meeting Intelligence summary → Matt Mathison
    Data access: pipeline stage data; deal value; rep; expected close — no Allevio PHI
    Status: Phase 0 capability assessment (Krista.ai integration planning)
    
  Monday.com → Outlook (Meeting Intelligence):
    Purpose: action items from Monday.com surface in Krista.ai meeting prep
    Already recording: Krista.ai already recording MBL meetings via Teams integration
    
INTEGRATION DESIGN PRINCIPLES:
  Unidirectional where possible: data flows one way to reduce sync conflicts
  System of record stays sovereign: GHL is SOR for CRM data; QuickBooks is SOR for financial; do not sync in ways that allow either to overwrite the other's authoritative data
  HIPAA isolation: no Allevio PHI flows through any integration; integration data is employer-aggregate only
  Audit trail: all integration events logged (send timestamp; receive timestamp; data payload summary; success/failure)
  Error handling: integration failures alert Dr. Lewis within 4 hours; no silent failures
  
INTEGRATION HEALTH MONITORING:
  Daily: check error logs for all active integrations
  Weekly: verify data consistency (GHL Closed Won deals = QuickBooks invoices for the period)
  Monthly: integration audit report; error rate tracking; latency review
  Quarterly: integration architecture review with Krista.ai team (Phase 0 outcomes inform Phase 2)
  
INTEGRATION GOVERNANCE:
  New integration: Dr. Lewis designs and approves architecture before implementation
  Allevio integrations: Dr. Lewis reviews data flow diagram; confirms no PHI pathway; BAA required for any BI tool accessing Allevio GHL data
  Integration deprecation: graceful shutdown; data migration if needed; removal from tech stack registry
```

## Output Format

```markdown
# Integration Health Report — [Entity / All] — [Week of Date]
**Monitor:** Dr. Lewis | **Systems checked:** GHL / QuickBooks / Monday.com / Krista.ai

---

## Integration Status

| Integration | Direction | Status | Last successful sync | Errors this week |
|-------------|-----------|--------|---------------------|-----------------|
| GHL → QuickBooks | GHL → QB | ✅ Healthy | [Date/Time] | 0 |
| GHL → Monday.com | GHL → Mon | ✅ Healthy | [Date/Time] | 0 |
| GHL → Krista.ai | GHL → Krista | 🔄 Planning | N/A | N/A |

---

## Error Log (this week)
[Error — system — timestamp — impact — resolution]

---

## Data Consistency Check
GHL Closed Won (this period): [N] deals | QuickBooks invoices created: [N] | Match: ✅/⚠️

---

## Actions
1. [Issue — owner — due]
```

## Output Contract
- Silent integration failures are the highest-risk failure mode — an integration that fails quietly (no error logged; no alert; data just stops flowing) will be discovered only when a business process breaks downstream; a QuickBooks invoice that was not created because the GHL → QB integration silently failed for 3 weeks represents revenue recognition gap and potential billing delay; Dr. Lewis configures all integrations to surface errors within 4 hours via email or Monday.com alert; "no news is good news" is not acceptable in integration monitoring — "confirmed working" is the standard
- The Krista.ai integration is the highest-leverage integration in the portfolio — when complete, Krista.ai reading GoHighLevel pipeline data + Microsoft Teams meeting data + Monday.com action items creates a Matt Mathison meeting prep system that gives him complete portfolio commercial context before every meeting; Dr. Lewis designs the GHL → Krista data flow with HIPAA isolation built in (Allevio employer pipeline data: aggregate only; no PHI pathway) and ensures the integration is audit-logged so every data pull by Krista from GHL has a timestamped record
- HITL required: new integration design → Dr. Lewis architects and approves; any new Allevio data pathway (even read-only) → Dr. Lewis HIPAA review + BAA confirmation; integration failure impacting revenue operations → Dr. Lewis alerted within 4 hours; Krista.ai integration scope → Dr. Lewis + Krista team; integration deprecation → Dr. Lewis approves shutdown sequence; data consistency discrepancy → Dr. Lewis investigates before any financial data is reconciled

## System Dependencies
- **Reads from:** GoHighLevel (deal data; contact data; activity logs — integration source); QuickBooks (invoice records — reconciliation target); Monday.com (task creation confirmation — integration target); Krista.ai (meeting data; pipeline intelligence — Phase 0 assessment); integration error logs (each system's webhook/API log)
- **Writes to:** Integration health reports (SharePoint → RevOps → Integrations → Health); QuickBooks (invoices from closed GHL deals); Monday.com (tasks from GHL triggers); Krista.ai (read-only; GHL data flows TO Krista); integration design documents (SharePoint → RevOps → Integrations → Design); error alert records
- **HITL Required:** New integration design → Dr. Lewis; Allevio data pathway → Dr. Lewis + BAA; integration failure → Dr. Lewis ≤4hr; Krista.ai scope → Dr. Lewis + Krista team; deprecation → Dr. Lewis; data discrepancy → Dr. Lewis investigates

## Test Cases
1. **Golden path:** Weekly integration health check. GHL → QuickBooks: 3 Closed Won deals this week → 3 QuickBooks invoices created (✅ match confirmed). GHL → Monday.com: 1 Stage 7 deal → 1 "Contract prep" Monday task created (AE assigned; due date set ✅). GHL → Krista (Planning): readiness review completed this week; Phase 0 data flow diagram reviewed by Krista team; Allevio PHI isolation confirmed in architecture; next step: API access scoping. All integrations healthy. No errors. Dr. Lewis health report logged.
2. **Edge case:** A GHL Closed Won deal creates a QuickBooks invoice with the wrong ACV ($18K instead of $24K — GoHighLevel deal value was not updated from proposal to final contract terms) → Dr. Lewis: "This is a data quality issue upstream of the integration. The integration correctly transferred what was in GHL; the problem is that GHL showed the proposal amount, not the final contract amount. Resolution: (1) correct the QuickBooks invoice manually; (2) update the GHL deal value to match the signed contract; (3) add a data quality check to the pipeline process: deal value in GHL must be reconciled against the signed contract before stage moves to Stage 7 (Verbal Commit). This prevents the discrepancy from reaching the integration layer."
3. **Adversarial:** Krista.ai team asks for read access to all Allevio GoHighLevel contact records (not just pipeline deals) to improve their AI model → Dr. Lewis: "This is not approved. Krista.ai's read access to Allevio GoHighLevel is scoped to pipeline data only (deal records: employer name, deal value, stage, rep, expected close date). Contact-level data is not part of the approved integration scope. Even though GoHighLevel's Allevio subaccount contains no PHI (by design), contact-level data (employer contact names, emails, employer health benefit context) is sensitive business data that is not appropriate to share with an AI training pipeline without explicit employer consent and broader legal review. The scope stays as designed: pipeline summary data for meeting intelligence purposes only. Any scope expansion requires Dr. Lewis review and entity CEO approval."

## Audit Log
Weekly integration health reports. Error logs (all integrations; all errors regardless of resolution). Data consistency check records (GHL vs. QuickBooks monthly). Integration design documents with Dr. Lewis approval. Allevio data pathway HIPAA review records (permanent). Krista.ai integration scope documents. Integration deprecation records.

## Deprecation
Integration designs reviewed when source or target systems change significantly. Krista.ai integration reviewed as AI orchestration matures (Phase 1-3). HIPAA data pathway review triggered when Allevio data model changes. Error monitoring configuration reviewed when monitoring tools change. Data consistency checks updated when financial reporting requirements change.
