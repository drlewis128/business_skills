---
name: ai-data-classification-enforcer
description: "Classify and protect data across MBL AI applications by sensitivity level. Use when the user says 'data classification', 'classify this data', 'data sensitivity', 'sensitive data', 'confidential data', 'data handling', 'data protection', 'what can we share with AI', 'what data can go into AI', 'data in AI', 'AI data handling', 'data privacy', 'data security classification', 'MBL data classification', 'portfolio data classification', 'entity data classification', 'can AI see this', 'is this data safe for AI', 'data governance', 'data policy', 'data handling policy', 'data access policy', 'data risk', 'data exposure', 'protect data in AI', 'AI data boundary', 'data control', 'data restriction', 'data classification policy', 'HIPAA data', 'PHI classification', 'financial data classification', 'LP data', 'investor data classification', 'deal data classification', 'M&A data', or 'confidentiality level'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--data-type <name>] [--entity <mbl|allevio|hive|column6>] [--action <classify|audit|enforce|report>]"
---

# AI Data Classification Enforcer

Classify and protect data across MBL AI applications by sensitivity level — defining what data can enter AI workflows, what controls are required at each level, and enforcing the classification framework across all MBL entities. Data classification is the foundation of AI data security; every AI input decision starts with "what classification is this data?"

## When to Use
- Before sending any new data type to an AI model
- When building a new AI workflow that processes MBL or entity data
- Quarterly data classification audit of all active AI workflows
- When a new entity or data source is added to the MBL AI stack

## Data Classification Framework

```
MBL DATA CLASSIFICATION LEVELS:

  LEVEL 1 — PUBLIC:
    Definition: data that is or could be publicly known; no confidentiality expectation
    Examples: WTI spot price (public market data); industry benchmarks; public company financials
    AI handling: no restrictions; can enter any AI model without controls
    
  LEVEL 2 — INTERNAL:
    Definition: MBL operational data; sensitive but not regulated
    Examples: meeting agendas; internal process documentation; general business context; team communications
    AI handling: approved vendors with DPA; no external distribution without review
    
  LEVEL 3 — CONFIDENTIAL:
    Definition: business-sensitive data; restricted to authorized parties
    Examples: MBL financial performance; deal pipeline (pre-LOI); LP identities; entity financial KPIs;
      Column6 client campaign data; HIVE acquisition targets; employee compensation data
    AI handling: approved vendors with DPA + confidentiality controls; HITL review on outputs;
      entity isolation (Allevio data ≠ HIVE data in same AI session)
    Never: combined across entities without authorization; shared with external parties without review
    
  LEVEL 4 — RESTRICTED:
    Definition: highly sensitive; regulatory or legal controls apply; significant harm if disclosed
    Examples: M&A targets in active negotiation; HIVE LP personal information; Column6 client contracts;
      employee personal information (SSN; banking); HIVE working interest specifics (not public record)
    AI handling: case-by-case authorization from Dr. Lewis; de-identified or aggregate only where possible;
      HITL review mandatory; audit trail required; not sent to AI models without explicit Dr. Lewis approval
    Never: auto-processed; sent to any AI model without Dr. Lewis approval
    
  LEVEL 5 — PHI (Allevio-specific, highest sensitivity):
    Definition: Protected Health Information under HIPAA; individual member data at Allevio
    Examples: member names + any health context; individual diagnoses; individual utilization; 
      health plan enrollment at individual level; clinical appointment data
    AI handling: PROHIBITED — no PHI enters any AI model under any circumstances
    Exception: none. There is no exception that makes PHI acceptable in an AI model without:
      (1) Full HIPAA risk assessment; (2) Executed BAA; (3) De-identification to Safe Harbor standard;
      (4) Dr. Lewis + Allevio entity CEO authorization
    If PHI is found in an AI workflow input: STOP; flag; Dr. Lewis immediate review
    
DATA CLASSIFICATION DECISION TREE:
  Is it Allevio member health data? → Level 5 (PHI); do not proceed without full HIPAA assessment
  Is it personally identifying data for individuals? → Level 4 (Restricted)
  Is it an active M&A target or LP personal info? → Level 4 (Restricted)
  Is it entity financial KPIs or client-specific data? → Level 3 (Confidential)
  Is it MBL internal operations? → Level 2 (Internal)
  Is it publicly available? → Level 1 (Public)
  
ENTITY CONTEXT:
  Allevio: all clinical data defaults to Level 5 until confirmed de-identified to Safe Harbor
  HIVE: LP personal information = Level 4; WTI/production = Level 1 (public market); 
    working interest specifics = Level 3-4
  Column6: client campaign data = Level 3; client contracts = Level 4; public campaign metrics = Level 2
  MBL: deal pipeline pre-LOI = Level 4; deal pipeline post-announcement = Level 3; KPIs = Level 3
```

## Output Format

```markdown
# Data Classification Assessment — [Data Type / Workflow]
**Entity:** [MBL/Allevio/HIVE/Column6] | **Assessed by:** Dr. Lewis | **Date:** [Date]

---

## Data Inventory

| Data Element | Classification Level | AI Handling Permitted? | Controls Required |
|-------------|---------------------|----------------------|-------------------|
| [Element 1] | Level 3 — Confidential | ✅ Yes | DPA + HITL review |
| [Element 2] | Level 5 — PHI | ❌ No | Stop — HIPAA assessment required |

---

## Workflow Data Clearance
**All inputs classified:** ✅ | **PHI present:** ❌ No / ✅ YES — STOP
**Maximum classification in workflow:** Level [N]
**Controls required:** [List]
**Clearance status:** [APPROVED / PENDING controls / BLOCKED — PHI]
```

## Output Contract
- When in doubt, classify higher — the cost of incorrectly treating Level 2 data as Level 3 is 30 minutes of additional controls; the cost of treating Level 5 data as Level 2 is a HIPAA breach; Dr. Lewis always errs toward the higher classification when a data element is ambiguous; he doesn't resolve the ambiguity by asking "what's the least restrictive interpretation?" — he resolves it by asking "what's the worst reasonable interpretation?" and classifying accordingly; reclassification downward requires explicit documentation of why the lower classification is correct
- Data classification applies to AI model inputs at the field level, not the document level — a meeting transcript is a Level 2 (Internal) document overall, but if a participant discloses an M&A target name in the meeting, that specific mention becomes Level 4 (Restricted); a QuickBooks report is Level 3 (Confidential) overall, but the employer billing section for Allevio may contain references that approach Level 5 if they include individual-level enrollment data; Dr. Lewis evaluates AI model inputs at the field/element level, not just the document type level; the workflow specification lists specific fields that enter the AI model and their classifications
- HITL required: Level 3+ data in AI → Dr. Lewis reviews output before distribution; Level 4 data → Dr. Lewis explicitly authorizes AI processing; Level 5 (PHI) → blocked; no AI processing without HIPAA assessment + BAA + Safe Harbor; any classification upgrade (Level 2 → Level 3) → Dr. Lewis documents reason; quarterly classification audit → Dr. Lewis reviews all active workflows; new data type added → Dr. Lewis classifies before first AI use

## System Dependencies
- **Reads from:** MBL data inventory (all data types by entity); HIPAA definitions (Level 5 PHI criteria); workflow specifications (what data enters each AI call); Claude API logs (data type tracking); entity CEO input (data sensitivity context)
- **Writes to:** Data classification registry (SharePoint → MBL → AI Strategy → Data Classification); workflow data clearance records; HIPAA-related classification records (Allevio → Compliance); classification audit reports; Level 4+ authorization records
- **HITL Required:** Level 3+ in AI → Dr. Lewis reviews output; Level 4 → Dr. Lewis explicitly authorizes; Level 5 → blocked; classification audit → Dr. Lewis completes; new data type → Dr. Lewis classifies first; classification downgrade → Dr. Lewis documents

## Test Cases
1. **Golden path:** New Allevio billing automation workflow data inventory. Inputs: employer code (Level 2 — internal identifier), enrolled EE count (Level 3 — business-sensitive), PMPM rate (Level 3 — confidential business metric), monthly total billed (Level 3), notes field from QuickBooks (Level 3 but check for embedded names). PHI check: none of these elements is individual member health data ✅. Maximum classification: Level 3 (Confidential). Controls required: Anthropic HIPAA-eligible tier ✅; DPA ✅; HITL review before distribution ✅. Clearance: APPROVED with controls. Notes field: validated (no employee names embedded in current month's export). Workflow data cleared.
2. **Edge case:** Dr. Lewis is building a new analysis and considers sending the list of HIVE LPs by name with their investment amounts to Claude for analysis → Classification: HIVE LP names + investment amounts = Level 4 (Restricted) — LP personal financial information. AI handling at Level 4: case-by-case authorization from Dr. Lewis required. "I'll authorize this for this specific analysis — but I'll de-identify first: I'll replace LP names with codes (LP-001; LP-002) and send the investment amounts by code. The analysis I need doesn't require the actual names. After the analysis, I'll apply the codes back to the named LPs manually. This keeps the AI at Level 3 (Confidential — LP investment amounts aggregate) rather than Level 4 (individual LP PII). Proceeding with de-identified version."
3. **Adversarial:** An entity CEO sends a data export to Dr. Lewis saying "here's the data for the AI analysis" and the export includes employee SSNs in a column that wasn't expected → Dr. Lewis: "Stop — I can't use this export. The file contains Social Security Numbers in column H. SSNs are Level 4 (Restricted) data and cannot enter any AI model without explicit authorization and de-identification. Before I proceed: (1) SSN column needs to be removed from the export; (2) I need to understand why SSNs were included in an export that should have been payroll aggregate data — this could indicate a data extraction process that's pulling more than intended; (3) The file should be deleted from wherever it's currently stored. Can you re-export without the SSN column? Also let's talk about how your system generates exports — we may need to review what columns are included by default."

## Audit Log
Data classification registry (all data types; all entities; versioned). Workflow data clearance records (all active workflows). Level 4 authorization records (individual authorizations; documented basis). PHI stop records (any time Level 5 was found in an AI input). Quarterly classification audit records. Classification downgrade records (documented reasoning). Data breach-adjacent records (SSN in wrong export, etc.).

## Deprecation
Classification framework reviewed annually. PHI definition reviewed when HHS issues new AI guidance. Level 4 criteria reviewed when M&A pipeline and LP data handling changes. Entity-specific classifications updated when portfolio changes. Quarterly audit cadence reviewed when AI data volume grows significantly.
