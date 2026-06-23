---
name: revops-revenue-data-model
description: "Define and govern the revenue data model for MBL Partners portfolio entities. Use when the user says 'revenue data model', 'data definitions', 'revenue definitions', 'how do we define revenue', 'what counts as revenue', 'ARR definition', 'MRR definition', 'ACV definition', 'TCV definition', 'pipeline definition', 'lead definition', 'MQL definition', 'closed won definition', 'what is GRR', 'what is NRR', 'revenue metric definition', 'how do we calculate', 'data dictionary', 'revenue dictionary', 'metric definitions', 'how is this metric calculated', 'system of record', 'which system owns this data', 'data ownership', 'SOR', 'single source of truth', 'revenue data governance', 'data consistency', 'metric standardization', 'revenue reporting standards', or 'define this metric'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--metric <arr|mrr|acv|grr|nrr|pipeline|mql|sql>] [--action <define|document|audit|review>]"
---

# RevOps Revenue Data Model

Define and govern the revenue data model for MBL Partners portfolio entities — establishing a single, agreed-upon set of metric definitions, system-of-record assignments, and calculation methodologies that ensure everyone from entity CEOs to Matt Mathison is speaking the same language when discussing pipeline, revenue, and retention. Undefined terms produce fights; defined terms produce decisions.

## When to Use
- Onboarding a new entity or new leadership to MBL's revenue metrics
- Resolving a dispute about how a metric is calculated
- Building a new report and needing to confirm definitions
- Annual data model review to ensure metrics still reflect business reality

## Revenue Data Model Framework

```
METRIC DEFINITIONS (ALL ENTITIES UNLESS NOTED):

  PIPELINE METRICS:
    Lead: any contact who has expressed any interest (form fill; event; referral); no ICP confirmation yet
    MQL (Marketing Qualified Lead): meets ICP criteria + ≥2 marketing engagements; criteria entity-specific (see revops-lead-lifecycle-manager)
    SQL (Sales Qualified Lead): AE has spoken with MQL; MEDDPICCC ≥50% complete; converted to pipeline Stage 3
    Opportunity: any deal in GHL pipeline Stage 3+ with a defined expected close date and deal value
    
    Pipeline Value: sum of deal values for all open opportunities in Stage 3+ at a point in time
    Weighted Pipeline: deal value × stage probability (Stage 3: 25%; Stage 4: 40%; Stage 5: 60%; Stage 6: 80%; Stage 7: 90%)
    Coverage Ratio: Pipeline Value (Stage 3+) / Revenue Target for period (entity-specific)
    
  REVENUE METRICS:
    ACV (Annual Contract Value): annualized value of a specific contract
      Allevio: PMPM × enrolled employees × 12 months
      Column6: IO value annualized (a $60K IO for 6 months = $120K ACV equivalent)
    TCV (Total Contract Value): full contract value for the contract term (ACV × contract length in years)
    MRR (Monthly Recurring Revenue): Allevio only; PMPM × enrolled employees for active employers
    ARR (Annual Recurring Revenue): MRR × 12 (for Allevio); Column6: annualized IO run rate
    
  RETENTION METRICS:
    GRR (Gross Revenue Retention): (Starting ARR - Churned ARR) / Starting ARR × 100
      Excludes expansion; measures pure retention ability; target ≥91% (Allevio)
    NRR (Net Revenue Retention): (Starting ARR + Expansion ARR - Churned ARR) / Starting ARR × 100
      Includes expansion; target ≥105% (Allevio)
    Churn Rate: Churned ARR / Starting ARR × 100 for a period (annual rate = 100% - GRR)
    
  MARKETING METRICS:
    Marketing Pipeline Contribution: marketing-sourced pipeline value / total pipeline value × 100
      Target: ≥30% (all entities)
      Source: GoHighLevel lead source field (Last-Touch Attribution)
    Marketing ROI: closed revenue (12-month lag) from marketing-sourced deals / total marketing spend × 100
      Target: ≥3× ($1 marketing spend → $3 closed revenue on 12-month lag)
    CPL (Cost Per Lead): total marketing spend / MQL count
    
SYSTEM OF RECORD (SOR) BY DATA TYPE:
  CRM / Pipeline / Deal data: GoHighLevel (primary); Monday.com (mirror for action items only)
  Financial data (invoices; payments; costs): QuickBooks (authoritative; RevOps reads; does not write)
  Allevio clinical / billing data: AdvancedMD (authoritative; RevOps reads aggregate summaries only; no PHI)
  HIVE energy data: Covercy (authoritative; Dr. Lewis reads for portfolio reporting)
  People / HR data: Microsoft HR systems or entity HR records (not CRM)
  
CALCULATION STANDARDS:
  Period: always specify period when reporting a metric (monthly; quarterly; annual; trailing 12 months)
  Date basis: use contract signature date (not billing date) for deal attribution
  Rounding: dollar figures rounded to nearest $100; percentages to 1 decimal place
  Comparison: always show current vs. prior period (not just absolute numbers)
  HIPAA (Allevio): any metric involving Allevio data uses aggregate, de-identified employer-level data
```

## Output Format

```markdown
# Revenue Data Dictionary — [Entity / All] — v[N]
**Maintained by:** Dr. Lewis | **Last updated:** [Date] | **Status:** Active

---

## Metric Definitions

| Metric | Definition | SOR | Calculation | Entity-specific notes |
|--------|-----------|-----|------------|----------------------|
| MQL | [Definition] | GoHighLevel | [Criteria] | Allevio: AZ employer ≥25 EE + 2 engagements |
| ARR | [Definition] | GoHighLevel + QB | MRR × 12 | Allevio: PMPM × enrolled EE × 12 |
| GRR | [Definition] | GoHighLevel | (ARR-Churn)/ARR | Target ≥91% (Allevio) |
| Marketing ROI | [Definition] | GHL + QB | Closed rev / spend | 12-month lag; ≥3× target |

---

## System of Record Assignments

| Data type | SOR | Who reads | Who writes |
|-----------|-----|-----------|-----------|
| Pipeline / CRM | GoHighLevel | All | Sales; Marketing; CS |
| Financial | QuickBooks | RevOps (read) | Finance |
| Allevio clinical | AdvancedMD | CS (aggregate only) | Allevio clinical team |

---

## Definition Change Log
| Version | Change | Date | Approver |
|---------|--------|------|---------|
| v2.1 | Updated NRR target from ≥102% to ≥105% | [Date] | Entity CEO + Dr. Lewis |
```

## Output Contract
- Metric definitions must be agreed to before any report is built — a pipeline report built on an undefined term for "pipeline" will be interpreted differently by the AE (all Stage 2+ deals), the entity CEO (Stage 4+ deals), and Dr. Lewis (Stage 3+ deals); the report will produce three different numbers and three different interpretations; Dr. Lewis documents and socializes the revenue data model before the first formal report is delivered to entity CEOs or Matt Mathison; the data dictionary is the foundation of revenue reporting credibility
- Definition changes require controlled governance — if Allevio's MQL criteria change (e.g., minimum employee count raised from 25 to 30 EE), every metric calculated on that definition changes retroactively if not versioned correctly; Dr. Lewis versions the data dictionary; when a definition changes, the previous version is archived and the new version is dated; all reports that reference the changed metric are noted as "calculated using v2.1 definition"; this prevents "the numbers changed" confusion that undermines trust in reporting
- HITL required: new metric definition → entity CEO + Dr. Lewis agree before first report; definition change → entity CEO + Dr. Lewis + sign-off before updating; SOR assignment change → Dr. Lewis; any metric involving Allevio data → Dr. Lewis confirms calculation uses aggregate, employer-level data only; data dictionary distribution → Dr. Lewis reviews before sending to Matt Mathison

## System Dependencies
- **Reads from:** GoHighLevel (pipeline; CRM; deal data); QuickBooks (financial data — read for definition validation); AdvancedMD (Allevio aggregate billing data — read for ARR/MRR validation); revops-pipeline-manager (stage definitions); revops-renewal-ops-manager (GRR/NRR calculation inputs)
- **Writes to:** Revenue data dictionary (SharePoint → RevOps → Data Model → Revenue-Data-Dictionary-v[N]); entity CEO data model briefing; Matt Mathison portfolio data model summary; all reporting tools use definitions from the dictionary
- **HITL Required:** New definition → entity CEO + Dr. Lewis; definition change → entity CEO + Dr. Lewis; SOR change → Dr. Lewis; Allevio data metrics → Dr. Lewis confirms aggregate-only; distribution to Matt Mathison → Dr. Lewis reviews

## Test Cases
1. **Golden path:** Allevio entity CEO asks "what is our ARR right now?" and the CS lead says "$1.8M" while the AE says "$2.1M." Discrepancy investigated: CS lead calculated ARR using current enrolled employees × PMPM (accurate for MRR but includes enrollment lag); AE calculated ARR using contract value × active employers (accurate for contracted ARR but doesn't reflect enrollment attrition within contracts). Resolution: Dr. Lewis defines the authoritative ARR calculation: "GoHighLevel active contracts × ACV (contracted PMPM × enrolled employees at last contract reconciliation date)" = $1.94M. Discrepancy explained; data dictionary updated with specific calculation instruction; entity CEO + AE + CS lead briefed. Same number going forward.
2. **Edge case:** Matt Mathison asks for "pipeline" in the weekly meeting intelligence report — but it's unclear whether he means Stage 3+ (Dr. Lewis's definition) or all open deals including Stage 1-2 → Dr. Lewis: "I'll clarify with Matt what he wants to see. My recommendation: I report two pipeline numbers in the weekly intelligence brief: (1) Total active pipeline Stage 3+ (the qualified pipeline that is forecast-relevant); (2) Total open deals Stage 1+ (the top-of-funnel picture that shows demand gen health). These are different questions: Stage 3+ answers 'what are we closing?'; Stage 1+ answers 'are we building the funnel?' Matt gets the full picture with two labeled numbers rather than one ambiguous 'pipeline' figure."
3. **Adversarial:** Column6 entity CEO defines "revenue" differently from the data dictionary in a board presentation — they included unsigned IOs in their revenue total → Dr. Lewis: "An unsigned IO is pipeline, not revenue. Revenue recognition — and our data dictionary — is explicit: Column6 revenue is recorded at IO signature. Including unsigned IOs in the revenue figure overstates Column6's actual revenue and misrepresents the company's financial position to any investor or LP who sees that presentation. I need to talk to the entity CEO before this deck goes out. The correction: present signed IO revenue separately from unsigned IO pipeline. The pipeline number shows momentum; the revenue number shows what has been committed. Both are positive stories — but they're different stories and must not be conflated."

## Audit Log
Revenue data dictionary versions (permanent; every version archived). Definition change records with entity CEO + Dr. Lewis approval. Discrepancy investigation records. Entity CEO data model briefing records. Matt Mathison data model summary records. Allevio aggregate-only confirmation records (per metric using Allevio data).

## Deprecation
Data dictionary reviewed annually. Definitions updated when entity business model changes (e.g., if Column6 moves to subscription model, ARR definition changes). Calculation methods updated when accounting standards change. SOR assignments reviewed when new systems are added. HIPAA-related definitions reviewed when regulations change.
