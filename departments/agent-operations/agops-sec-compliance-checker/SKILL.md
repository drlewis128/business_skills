---
name: agops-sec-compliance-checker
description: "Check AI agent workflows against HIPAA, CCPA, LP data, and financial compliance requirements across MBL Partners portfolio. Use when reviewing a new Allevio workflow for HIPAA compliance, verifying PHI exclusion and BAA status before any Allevio agent goes live, checking that employer-facing outputs are aggregate-only, auditing Column6 agent workflows for CCPA consumer data requirements, reviewing HIVE agent workflows for LP data isolation and Matt Mathison authorization, verifying that no agent modifies QuickBooks or Bill.com without HITL, conducting the quarterly compliance review across all entities, generating a compliance status report for Dr. Lewis, flagging a workflow that lacks required compliance controls, assessing a proposed new workflow for regulatory exposure, checking that Allevio claims outputs meet HIPAA minimum necessary standard, evaluating whether a new AI tool in the stack requires a BAA, reviewing an agent workflow after a system change that may affect compliance, or preparing compliance evidence for a portfolio company audit."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[workflow-name] [entity] [compliance-domain: hipaa|ccpa|lp-data|financial|all]"
---

# Agent Compliance Checker

This skill evaluates AI agent workflows against the regulatory and policy compliance requirements applicable to each MBL Partners portfolio entity — HIPAA for Allevio, CCPA for Column6, LP data standards for HIVE, and financial record integrity rules for MBL HoldCo — producing a compliance status determination and remediation plan for any gaps found. Dr. John Lewis owns all compliance determinations and conducts quarterly reviews across all entities.

## When to Use

- A new agent workflow is being deployed for any portfolio entity and must pass compliance review before go-live authorization is granted.
- An existing workflow has been modified (new data source, new output destination, new skill) and compliance re-verification is required.
- The quarterly compliance review cycle is due and Dr. Lewis needs a structured assessment of all active workflows across all entities.
- A compliance gap, incident, or regulatory inquiry has surfaced and a rapid workflow assessment is needed to establish the scope of exposure.

## Agent Compliance Checker Framework

```
═══════════════════════════════════════════════════════════
SECTION 1: HIPAA COMPLIANCE — ALLEVIO WORKFLOWS
═══════════════════════════════════════════════════════════

APPLIES TO: Any agent workflow that touches Allevio data,
  including cross-portfolio workflows that receive any
  Allevio-sourced data in their context.

CHECK 1: PHI EXCLUSION
  - Is individual PHI present in any input, context, or output?
  - Is data de-identified per HIPAA Safe Harbor (18 identifiers)?
  - Is aggregate reporting subject to small group suppression (n < 10)?
  - Run: agops-sec-phi-guard before any Allevio output
  PASS: No individual PHI in any workflow component
  FAIL: Any individual PHI detected → halt → Dr. Lewis

CHECK 2: BAA STATUS
  - Does every AI tool receiving Allevio context have a signed BAA?
  - Claude API BAA: verified by Dr. Lewis (quarterly confirmation)
  - Krista.ai BAA: verified by Dr. Lewis (quarterly confirmation)
  - Any new tool in the Allevio stack: BAA required before first run
  PASS: All tools have current, signed BAA
  FAIL: Any tool lacks BAA → block workflow → Dr. Lewis

CHECK 3: MINIMUM NECESSARY STANDARD
  - Does the agent receive only the data necessary for the task?
  - Is the context package scoped to the specific workflow purpose?
  - Are any broader datasets included "just in case"?
  PASS: Context limited to minimum required for workflow function
  FAIL: Excess data in context → reduce scope → re-verify

CHECK 4: EMPLOYER-FACING OUTPUT
  - Does any output go to an Allevio employer?
  - If yes: aggregate only, de-identified, small group suppression applied
  - Morgan Sills or Dr. Lewis reviewed before delivery
  PASS: All employer outputs verified aggregate + de-identified
  FAIL: Any individual data in employer output → halt immediately

CHECK 5: SECURITY RULE CONTROLS
  - Is the workflow covered by agops-sec-audit-logger? (required)
  - Is the workflow covered by agops-sec-permission-model? (required)
  - Are credentials for Allevio systems isolated? (see agops-sec-credential-manager)
  PASS: All three controls confirmed active
  FAIL: Any control missing → remediate before go-live

═══════════════════════════════════════════════════════════
SECTION 2: CCPA COMPLIANCE — COLUMN6 WORKFLOWS
═══════════════════════════════════════════════════════════

APPLIES TO: Any agent workflow touching Column6 data,
  particularly campaign analytics, audience data, or CTV/mobile
  attribution data that may include California consumer information.

CHECK 1: CONSUMER DATA IN AGENT CONTEXT
  - Does the workflow receive individual consumer identifiers
    (device IDs, IP addresses, email hashes, cookie IDs)?
  - If yes: CCPA consumer rights implications require legal review
  - Aggregate/cohort-level audience data: generally permissible
  PASS: No individual consumer identifiers in agent context
  FLAG: Individual consumer data present → Dr. Lewis + legal review

CHECK 2: DATA PURPOSE LIMITATION
  - Is consumer data used only for the stated campaign or analytics purpose?
  - Is any consumer data stored beyond the immediate workflow run?
  PASS: Data used for stated purpose; not persisted post-run
  FLAG: Data repurposed or persisted → legal review required

CHECK 3: GROSS MARGIN GATE
  - Does any Column6 financial output imply gross margin < 35%?
  - If yes: flag for Matt Mathison review before delivery
  PASS: Gross margin at or above 35% threshold, or not applicable
  FLAG: Gross margin signal < 35% → HITL before output delivery

CHECK 4: COLUMN6 CREDENTIAL ISOLATION
  - Are Column6 GHL sub-account credentials isolated from MBL GHL?
  PASS: Separate GHL sub-account credentials confirmed
  FAIL: Shared credentials → immediate isolation required

═══════════════════════════════════════════════════════════
SECTION 3: LP DATA COMPLIANCE — HIVE WORKFLOWS
═══════════════════════════════════════════════════════════

APPLIES TO: Any agent workflow touching HIVE Partners data,
  including LP investment data, distribution calculations,
  production data from Covercy, and WTI-sensitive outputs.

CHECK 1: DATA ISOLATION
  - Is HIVE data fully isolated from Allevio, Column6, MBL HoldCo?
  - Does any agent receive HIVE LP data alongside other entity data?
  PASS: HIVE data isolated; no cross-entity context mixing
  FAIL: Cross-entity LP data in context → halt → Dr. Lewis

CHECK 2: MATT MATHISON AUTHORIZATION FOR LP DATA
  - Does the workflow process individual LP data (names, investment
    amounts, distribution entitlements, K-1 details)?
  - If yes: Matt Mathison written authorization required before
    any agent processes or outputs individual LP data
  PASS: Aggregate LP data only, or Matt Mathison authorization on file
  FAIL: Individual LP data without authorization → block workflow

CHECK 3: WTI TRIGGER — DISTRIBUTION CALCULATIONS
  - Does the workflow produce or inform LP distribution calculations?
  - If yes: HITL required; Dr. Lewis reviews before any output
  - WTI price sensitivity: flag if output could influence timing of
    distribution decisions
  PASS: HITL gate confirmed for all distribution-related outputs
  FAIL: Distribution calculation output without HITL → block

CHECK 4: COVERCY CREDENTIAL ISOLATION
  - Are Covercy API credentials isolated to HIVE agents only?
  PASS: Covercy credentials HIVE-only (confirmed in credential manager)
  FAIL: Covercy credentials accessible to non-HIVE agents → isolate now

═══════════════════════════════════════════════════════════
SECTION 4: MBL FINANCIAL COMPLIANCE
═══════════════════════════════════════════════════════════

APPLIES TO: Any agent workflow touching QuickBooks, Bill.com,
  or any MBL HoldCo financial system of record.

CHECK 1: SYSTEM OF RECORD INTEGRITY
  - QuickBooks is the financial SOR; no agent modifies QB records
    without explicit HITL approval from Dr. Lewis
  - Bill.com is the AP/expense SOR; same rule applies
  - Agent read access for analysis: permitted (Tier 0 or Tier 1)
  - Agent write access: requires Tier 2 permission + HITL on every action
  PASS: All financial write actions gated behind HITL
  FAIL: Any financial write without HITL approval record → halt + log

CHECK 2: AUDIT TRAIL COMPLETENESS
  - Does every financial-write action have a corresponding audit log
    entry with HITL_DECISION = Approved and HITL_REVIEWER = Dr. Lewis?
  PASS: Audit trail complete and cross-referenced to QB/Bill.com records
  FAIL: Missing HITL record → open finding; retroactive approval required

CHECK 3: FINANCIAL OUTPUT TO MATT MATHISON
  - All financial outputs destined for Matt Mathison require Dr. Lewis
    HITL review before delivery
  PASS: HITL gate confirmed for all Matt Mathison financial outputs
  FAIL: Direct financial output to Matt Mathison without Dr. Lewis review → block

═══════════════════════════════════════════════════════════
SECTION 5: QUARTERLY COMPLIANCE REVIEW
═══════════════════════════════════════════════════════════

CADENCE: Q1/Q2/Q3/Q4 (Jan 15, Apr 15, Jul 15, Oct 15)
OWNER: Dr. John Lewis
SCOPE: All active agent workflows across all entities

PROCESS:
  1. Pull active workflow list from Krista.ai registry
  2. Run compliance checks (Sections 1–4) for each workflow
  3. Identify: PASS | FLAG | FAIL for each check per workflow
  4. Document findings in Compliance Review Report
  5. Remediate all FAILs before end of review quarter
  6. FLAGs: Dr. Lewis determines disposition with legal if needed
  7. Deliver executive summary to Matt Mathison by due date
  8. Log review completion in agops-sec-audit-logger

REPORT STORED AT:
  SharePoint → AI-Ops → Compliance → Quarterly-Reviews → [YYYY-QN].md
```

## Output Format

```markdown
## Compliance Check Report — [Workflow Name] — [Date]

**Entity:** [Allevio | HIVE | Column6 | MBL HoldCo | Cross-Portfolio]
**Compliance Domains Checked:** [HIPAA | CCPA | LP Data | Financial | All]
**Reviewer:** Dr. John Lewis
**Workflow Status:** [APPROVED — All checks pass | CONDITIONAL — Flags present | BLOCKED — Fails present]

### HIPAA Checks (Allevio)
- PHI Exclusion: [PASS | FAIL — details]
- BAA Status: [PASS | FAIL — details]
- Minimum Necessary: [PASS | FAIL — details]
- Employer-Facing Output: [PASS | FAIL | N/A]
- Security Rule Controls: [PASS | FAIL — details]

### CCPA Checks (Column6)
- Consumer Data in Context: [PASS | FLAG | N/A]
- Data Purpose Limitation: [PASS | FLAG | N/A]
- Gross Margin Gate: [PASS | FLAG | N/A]
- Credential Isolation: [PASS | FAIL | N/A]

### LP Data Checks (HIVE)
- Data Isolation: [PASS | FAIL | N/A]
- Matt Mathison Authorization: [PASS | FAIL | N/A]
- WTI / Distribution HITL: [PASS | FAIL | N/A]
- Covercy Credential Isolation: [PASS | FAIL | N/A]

### Financial Compliance (MBL HoldCo)
- SOR Integrity (QB / Bill.com): [PASS | FAIL | N/A]
- Audit Trail Completeness: [PASS | FAIL | N/A]
- Matt Mathison Output HITL: [PASS | FAIL | N/A]

### Remediation Plan
| Finding | Severity | Owner | Due Date | Status |
|---------|----------|-------|----------|--------|
| [description] | [High/Med/Low] | Dr. Lewis | [date] | [Open/Closed] |

**Next Review Date:** [date]
**Approved for Go-Live:** [Yes | No — pending remediation]
```

## Output Contract

- Every agent workflow that touches portfolio entity data must pass compliance review before go-live, because the regulatory consequences of a HIPAA violation at Allevio, a CCPA breach at Column6, or unauthorized LP data processing at HIVE are material — fines, reputational damage, and LP trust erosion — and the cost of a pre-deployment compliance check is orders of magnitude lower than the cost of remediation after an incident; Dr. Lewis approval is the gate, not a formality.

- The quarterly compliance review is not a rubber-stamp exercise — it is the primary mechanism for detecting compliance drift that occurs as workflows evolve, data sources change, and new integrations are added between point-in-time reviews; a workflow that passed compliance review at deployment may fail six months later because a new data field was added to its context package, and the quarterly cadence is designed to catch exactly that type of incremental drift before it becomes a reportable incident.

- Financial system of record integrity is a compliance requirement that exists independently of any regulatory mandate — QuickBooks and Bill.com are the authoritative sources of MBL's financial truth, and any agent that modifies those records without a documented HITL approval chain creates an audit gap that can undermine financial reporting accuracy, create reconciliation failures, and expose MBL to financial statement risk; the HITL gate on all financial writes is therefore both a security control and a financial governance control.

## System Dependencies

**Reads from:** Krista.ai active workflow registry; agops-sec-permission-model (entity scope and tier assignments); agops-sec-phi-guard (PHI Guard status for Allevio workflows); agops-sec-audit-logger (HITL decision records; financial write audit trail); agops-sec-credential-manager (credential isolation status); SharePoint AI-Ops compliance documentation

**Writes to:** SharePoint → AI-Ops → Compliance → Quarterly-Reviews → [YYYY-QN].md; SharePoint → AI-Ops → Compliance → Workflow-Registry → [workflow-name]-compliance-status.md; agops-sec-audit-logger (compliance review completion as system-event); Monday.com AI-Ops board (remediation tasks for open findings)

**HITL Required:** Yes — Dr. Lewis must approve all compliance review determinations; no workflow is approved for go-live without Dr. Lewis sign-off; Matt Mathison receives quarterly compliance executive summary; any FAIL finding at Allevio (PHI) or HIVE (LP data) requires immediate notification to Matt Mathison

## Test Cases

**Golden Path:** A new Allevio population health summary workflow is reviewed before go-live; compliance checker confirms PHI Guard is active and returning CLEAR on test data, Claude API BAA is verified as current, context package uses aggregate data with small group suppression applied, employer-facing output reviewed by Morgan Sills, all three security controls (audit logger, permission model, credential manager) confirmed active; workflow receives APPROVED status from Dr. Lewis and is logged in the compliance registry.

**Edge Case:** During quarterly review, an existing HIVE workflow is found to have been expanded to include individual LP investment amounts (added as a "helpful context" field in a recent Krista.ai workflow update); compliance checker flags this as a FAIL on the Matt Mathison Authorization check (individual LP data without explicit authorization), blocks the workflow from running until Matt Mathison provides written authorization, and opens a Monday.com remediation task with a 5-business-day resolution deadline.

**Adversarial:** A new cross-portfolio workflow is proposed that would pull Allevio aggregate health data alongside HIVE LP distribution data to build a "portfolio health vs. financial performance" report for Matt Mathison; compliance checker flags this as a FAIL on HIVE data isolation (Allevio context mixing with HIVE LP data), a FLAG on HIPAA minimum necessary (Allevio data scope broader than needed), and a HITL requirement on LP data distribution outputs; the workflow is blocked pending redesign that separates the data streams into two isolated reports with proper HITL gates on each.

## Audit Log

All compliance review actions — new workflow reviews, quarterly review completions, go-live approvals, FAIL findings, FLAG dispositions, and remediation closures — are written to agops-sec-audit-logger as system-event entries and stored in SharePoint → AI-Ops → Compliance → Quarterly-Reviews → [YYYY-QN].md within 24 hours of completion. Dr. Lewis maintains a running compliance status register for all active workflows in SharePoint → AI-Ops → Compliance → Workflow-Registry, updated after every review. The quarterly executive summary for Matt Mathison covers total workflows reviewed, pass/flag/fail counts by entity, open remediations, and compliance control status (PHI Guard active, BAAs current, credential isolation confirmed).

## Deprecation

This skill is deprecated when MBL Partners engages dedicated legal counsel to implement a formal GRC (Governance, Risk, and Compliance) platform that programmatically monitors agent workflows for regulatory compliance and generates audit-ready reports without manual Dr. Lewis review; until that platform is live and has been validated through at least two full quarterly compliance cycles with external verification, this skill remains the authoritative compliance gate for all agent workflow deployments across the MBL portfolio. Deprecation requires Dr. Lewis written sign-off, Matt Mathison awareness, and confirmation from legal counsel that the replacement control provides equivalent or superior coverage for HIPAA, CCPA, LP data, and financial compliance requirements.
