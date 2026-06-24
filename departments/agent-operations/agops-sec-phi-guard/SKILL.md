---
name: agops-sec-phi-guard
description: "Protect PHI from appearing in any agent output across MBL Partners AI infrastructure, with absolute prohibition for Allevio-touching workflows. Use when assembling Allevio agent context, screening any output before delivery to Matt Mathison, checking whether employer-facing output contains individual member data, evaluating Claude API inputs for PHI presence, triggering HIPAA breach assessment after a detection event, reviewing BAA status for Claude API, enforcing de-identification before any agent receives Allevio data, halting a workflow due to suspected PHI, notifying Dr. Lewis of a PHI detection event, logging a PHI incident for HIPAA compliance, verifying that aggregate claims data contains no individual identifiers, auditing Allevio skill context packages, enforcing output restrictions for member-facing communications, screening transcripts from Allevio meetings before processing, checking whether AdvancedMD data exports are safe for agent consumption, evaluating whether a proposed Allevio workflow is PHI-adjacent, or ensuring AI tool usage complies with HIPAA requirements."
metadata:
  version: 1.0.0
  tier: agent-operations
  owner: Dr. John Lewis
argument-hint: "[content-to-screen] [entity: allevio|other] [output-destination]"
---

# PHI Guard

This skill detects, blocks, and escalates any Protected Health Information that surfaces in AI agent inputs or outputs within the MBL Partners ecosystem, with an absolute prohibition on individual PHI appearing in any Claude API call, context package, or agent output. Allevio is the primary enforcement target, but the guard applies to any workflow that touches healthcare data across all portfolio entities.

## When to Use

- Any Allevio-scoped agent is assembling a context package and must be verified to contain only aggregate, de-identified data before Claude API submission.
- An agent output must be screened before delivery to an employer, Matt Mathison, or any external party to confirm no individual member information is present.
- A suspected PHI detection event has occurred and must be triaged, halted, and escalated to Dr. Lewis with a HIPAA breach assessment initiated.
- BAA status for the Claude API or any AI tool in the Allevio stack must be evaluated or verified before a new Allevio workflow goes live.

## PHI Guard Framework

```
═══════════════════════════════════════════════════════════
SECTION 1: PHI DEFINITION AND IDENTIFIER LIST
═══════════════════════════════════════════════════════════

HIPAA 18 SAFE HARBOR IDENTIFIERS — ALL PROHIBITED:
  1. Names (first, last, full)
  2. Geographic subdivisions smaller than state
  3. Dates (except year) related to an individual
  4. Phone numbers
  5. Fax numbers
  6. Email addresses
  7. Social Security numbers
  8. Medical record numbers
  9. Health plan beneficiary numbers
  10. Account numbers (financial, tied to individual)
  11. Certificate or license numbers
  12. Vehicle identifiers and serial numbers
  13. Device identifiers and serial numbers
  14. Web URLs linked to individuals
  15. IP addresses
  16. Biometric identifiers (fingerprints, voiceprints)
  17. Full-face photographs or comparable images
  18. Any unique identifying number, characteristic, or code

ALSO PROHIBITED (CONTEXTUAL PHI):
  - Diagnosis codes linked to a named individual
  - Prescription data with individual linkage
  - Claims data with member ID + date combination
  - Any data that could re-identify a de-identified record

═══════════════════════════════════════════════════════════
SECTION 2: DETECTION PROCESS (RUN BEFORE EVERY ALLEVIO OUTPUT)
═══════════════════════════════════════════════════════════

STEP 1: KEYWORD SCAN
  - Pattern match against all 18 Safe Harbor identifiers
  - Flag: any string matching SSN, MRN, DOB, phone, email patterns
  - Flag: any proper name adjacent to clinical or claims terms
  - Flag: member ID + date combinations

STEP 2: CONTEXTUAL CHECK
  - Is this aggregate data (population-level) or individual data?
  - Does any row, record, or sentence refer to a single person?
  - Could combining two "safe" fields re-identify an individual?
  - Is there a date + condition + geography combination?

STEP 3: DETERMINATION
  - CLEAR: No PHI detected → proceed with output
  - SUSPECT: Ambiguous data → hold output → Dr. Lewis review
  - DETECTED: PHI confirmed → IMMEDIATE HALT (see Section 3)

═══════════════════════════════════════════════════════════
SECTION 3: PHI DETECTION RESPONSE PROTOCOL
═══════════════════════════════════════════════════════════

IMMEDIATE ACTIONS (within 5 minutes of detection):
  1. HALT — stop all processing; do not deliver any output
  2. ISOLATE — quarantine the content; do not forward or log
     the PHI itself (log the event, not the content)
  3. NOTIFY — alert Dr. Lewis via Krista.ai priority channel
     with: timestamp, agent ID, entity, workflow name, nature
     of detected data (describe, do not reproduce PHI)
  4. ASSESS — Dr. Lewis determines: HIPAA breach trigger?
     - If YES → initiate HIPAA breach assessment workflow
     - If NO → document false positive; resume with remediation

WITHIN 24 HOURS:
  5. LOG — write sanitized incident record to SharePoint
     AI-Ops → Audit-Logs → Allevio → PHI-Incidents → [Year]
  6. ROOT CAUSE — identify how PHI entered the workflow
  7. REMEDIATE — fix the data source, context package, or
     skill configuration that allowed PHI through
  8. VERIFY — Dr. Lewis confirms remediation before workflow
     is restarted

═══════════════════════════════════════════════════════════
SECTION 4: ALLEVIO CONTEXT PACKAGE RULES
═══════════════════════════════════════════════════════════

PERMITTED in agent context:
  - Aggregate enrollment counts (total members, not individuals)
  - Population-level utilization rates (e.g., 12% ER utilization)
  - Employer group summaries (no employer <10 members reported)
  - Claim cost aggregates by category (not by individual)
  - Program performance metrics (de-identified cohort data)

PROHIBITED in agent context:
  - Any row-level claims data
  - Member rosters, even partial
  - Individual care management notes
  - AdvancedMD exports without explicit de-identification confirmation
  - Any dataset where n < 10 for any reported subgroup

CONTEXT ASSEMBLY OWNER: Dr. John Lewis approves all new
  Allevio context package templates before first use.

═══════════════════════════════════════════════════════════
SECTION 5: AI TOOL PHI PROHIBITION
═══════════════════════════════════════════════════════════

RULE: No PHI may be submitted to any AI tool (Claude API,
  Krista.ai, or third-party LLM) without:
  (a) A signed, current BAA with the tool provider, AND
  (b) Dr. Lewis written approval for that specific workflow

CLAUDE API BAA STATUS:
  - Owner: Dr. John Lewis
  - Verification: Quarterly; Dr. Lewis confirms active BAA
    before any Allevio workflow expansion
  - If BAA status uncertain: treat as NO BAA; block workflow

KRISTA.AI BAA STATUS:
  - Owner: Dr. John Lewis
  - Same verification cadence as Claude API BAA

ANY NEW AI TOOL touching Allevio data:
  - Dr. Lewis evaluates BAA before any test or pilot
  - No exceptions for POCs, sandbox, or "just a demo"

═══════════════════════════════════════════════════════════
SECTION 6: EMPLOYER-FACING OUTPUT RULES
═══════════════════════════════════════════════════════════

Allevio employers receive aggregate population health data.
EVERY employer-facing agent output must confirm:
  - No individual member is identifiable
  - Small group suppression applied (n < 10 → suppress)
  - No date + diagnosis + geography triple present
  - Morgan Sills or Dr. Lewis reviewed before delivery
    (Morgan Sills = Allevio M&A pipeline; clinical outputs
    require additional clinical review chain)
```

## Output Format

```markdown
## PHI Guard Screening Report — [Workflow / Agent ID] — [Timestamp]

**Entity:** Allevio
**Screening Type:** [Context Package | Output | Employer-Facing | API Input]
**Detection Result:** [CLEAR | SUSPECT — Hold | DETECTED — Halted]

### Keyword Scan
- Identifiers flagged: [None | List flagged patterns]
- SSN/MRN/DOB patterns: [None detected | Details]
- Name + clinical term proximity: [None detected | Details]

### Contextual Check
- Data level: [Aggregate | Individual — HALT]
- Re-identification risk: [Low | Medium — Review | High — HALT]
- Small group suppression applied: [Yes | N/A | Required — Not Applied]

### Determination
**Status:** [CLEAR — Proceed | SUSPECT — Dr. Lewis Review | DETECTED — Halted]
**Action Taken:** [description]
**Dr. Lewis Notified:** [Yes [timestamp] | No | Not Required]
**Incident Log Entry:** [SharePoint path | N/A]

### BAA Verification (if API submission)
- Claude API BAA: [Active [date verified] | Unverified — Blocked]
- Krista.ai BAA: [Active [date verified] | Unverified — Blocked]
```

## Output Contract

- The PHI guard is a hard stop, not a soft warning — when PHI is detected in any agent context or output, processing halts completely and unconditionally, because a single PHI disclosure to an unauthorized recipient (including Matt Mathison's briefing package or an employer dashboard) constitutes a potential HIPAA breach with legal, financial, and reputational consequences for Allevio, MBL Partners, and Dr. Lewis as the responsible party; speed and operational convenience are not valid reasons to proceed past a PHI detection.

- Allevio context packages must be reviewed and approved by Dr. Lewis before first use precisely because the point of failure is almost always at context assembly, not at output generation — if individual-level data enters the context window, the model cannot reliably suppress or de-identify it in the output, making pre-input screening the only reliable control; this is why BAA status must be confirmed before any Allevio workflow runs, regardless of how "low-risk" the use case appears.

- The PHI incident log captures the event metadata (timestamp, agent, workflow, detection type) but never reproduces the actual PHI content, ensuring that the audit trail itself does not create additional PHI exposure; Dr. Lewis reviews this log weekly and presents a sanitized quarterly summary to Matt Mathison that covers incident counts, root causes, and remediation status without disclosing any protected information.

## System Dependencies

**Reads from:** AdvancedMD aggregate export (de-identified only); Allevio SharePoint population health reports; Krista.ai BAA documentation; Claude API BAA records maintained by Dr. Lewis; agops-sec-permission-model (entity scope verification)

**Writes to:** SharePoint → AI-Ops → Audit-Logs → Allevio → PHI-Incidents → [Year]; Krista.ai HITL channel (Dr. Lewis priority alert on detection); Monday.com AI-Ops board (remediation task if incident confirmed)

**HITL Required:** Yes — Dr. Lewis must be notified within 5 minutes of any DETECTED event; Dr. Lewis makes all breach assessment determinations; no Allevio workflow restarts after a PHI incident without Dr. Lewis clearance

## Test Cases

**Golden Path:** Allevio employer population health summary is assembled as an aggregate report (total members: 847, ER utilization: 11.2%, top 3 condition categories by cost); PHI Guard scans the context package, finds no individual identifiers, applies small group suppression check (all subgroups n > 10), returns CLEAR, and the output proceeds to employer delivery.

**Edge Case:** An AdvancedMD export includes a row for a subgroup of 7 members with a specific diagnosis category; PHI Guard flags this at the contextual check stage as a small group suppression violation (n < 10), holds the output, logs a SUSPECT event, and routes to Dr. Lewis for review before any employer-facing delivery.

**Adversarial:** A Krista.ai workflow is configured to pull individual member care management notes from AdvancedMD and summarize them for an employer report; PHI Guard detects individual-level clinical data (member names + diagnosis dates) in the context package at assembly, immediately halts the workflow, notifies Dr. Lewis via priority channel, logs the incident with workflow name and data source, and blocks all further processing until root cause is resolved and Dr. Lewis provides clearance.

## Audit Log

All PHI Guard screening events are logged to SharePoint → AI-Ops → Audit-Logs → Allevio → PHI-Incidents → [Year] within 15 minutes of completion; log entries include: timestamp, agent ID, workflow name, screening type, detection result (CLEAR / SUSPECT / DETECTED), action taken, Dr. Lewis notification status, and remediation outcome. HIPAA-adjacent logs are retained for a minimum of 6 years per HIPAA requirements. Dr. Lewis reviews the PHI Guard log weekly and prepares a quarterly incident summary for Matt Mathison covering total screenings performed, detection events (if any), root causes, and the current BAA verification status for all AI tools in the Allevio stack.

## Deprecation

This skill is deprecated only if MBL Partners implements a certified HIPAA-compliant AI platform with built-in PHI detection and de-identification that has been independently audited and approved by legal counsel; in the interim, this skill remains the primary enforcement mechanism for PHI prohibition across all Allevio-touching agent workflows, and any proposed replacement must be validated through at least two full quarterly audit cycles before this skill is retired. Deprecation requires Dr. Lewis written sign-off, Matt Mathison awareness, and legal counsel confirmation that the replacement control is equivalent or superior.
