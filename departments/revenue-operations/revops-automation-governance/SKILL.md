---
name: revops-automation-governance
description: "Govern GoHighLevel automations and workflows for MBL Partners portfolio entities. Use when the user says 'automation governance', 'workflow governance', 'GHL automation', 'GoHighLevel workflow', 'GHL workflow', 'automation review', 'workflow audit', 'automation library', 'workflow library', 'automation compliance', 'automate this', 'set up an automation', 'create a workflow', 'build a workflow', 'automation approval', 'automation HIPAA', 'HIPAA automation', 'automation testing', 'workflow testing', 'is this automation approved', 'automation naming', 'automation documentation', 'automation inventory', 'stale automation', 'unused automation', 'automation cleanup', 'workflow cleanup', 'automation risk', 'email automation', 'SMS automation', 'lead nurture automation', 'drip sequence', or 'automated follow-up'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--workflow <name>] [--action <design|review|test|activate|deactivate|audit>]"
---

# RevOps Automation Governance

Govern GoHighLevel automation workflows across MBL Partners portfolio entities — establishing a naming convention, approval process, testing protocol, and quarterly review cadence that ensures all automated communications and data operations are correct, HIPAA-compliant, and actively maintained. An untested or un-reviewed automation is a liability that runs silently until it causes a problem.

## When to Use
- Designing a new GoHighLevel automation workflow
- Reviewing an existing automation for HIPAA compliance or accuracy
- Quarterly automation library audit
- Deactivating a stale or incorrectly configured automation

## Automation Governance Framework

```
AUTOMATION NAMING CONVENTION:
  Format: [entity]-[trigger]-[action]
  Examples:
    allevio-mql-notify-sales           — Allevio: MQL created → notify sales AE
    allevio-form-submit-welcome        — Allevio: form submitted → send welcome email
    column6-stage7-contract-task       — Column6: Stage 7 → create contract prep Monday task
    mbl-stage5-proposal-reminder       — MBL: Stage 5 → reminder email to rep
    
  Rules:
    - All lowercase; hyphens only; no spaces
    - Entity prefix required (enforces entity isolation)
    - Trigger describes what activates the workflow
    - Action describes what the workflow does
    - Version not required in name; use GoHighLevel's version history instead
    
PRE-ACTIVATION CHECKLIST (REQUIRED FOR ALL WORKFLOWS):
  ☐ Naming convention followed (above)
  ☐ Workflow description written in GHL (owner name; purpose; date created; HIPAA reviewed?)
  ☐ Test run completed with dummy contact (not a real employer or agency contact)
  ☐ Test output verified (email sent correctly; task created correctly; data updated correctly)
  ☐ For Allevio workflows: Dr. Lewis HIPAA review completed and logged before activation
  ☐ Entity CEO aware of new automation (brief email notification; not required to approve unless >$500 spend)
  ☐ Workflow registered in automation library (SharePoint → [Entity] → RevOps → Automations → Library)
  
HIPAA COMPLIANCE IN ALLEVIO AUTOMATIONS:
  Email content: no PHI; employer-addressed only (not employee-addressed for healthcare content)
  SMS content: no PHI; TCPA compliance (must have explicit SMS opt-in from recipient)
  Data fields: automation can only read/write employer-level data fields (not clinical fields; not employee health fields)
  Automation output destinations: GHL / Monday.com / Outlook (Dr. Lewis approved tools only)
  Any automation that could route data outside approved tools → Dr. Lewis blocks until reviewed
  
AUTOMATION TESTING PROTOCOL:
  Step 1: Create a test contact in GHL (named "Test Contact — Do Not Contact" with a dummy email)
  Step 2: Trigger the automation using the test contact
  Step 3: Verify every action fires correctly (email arrives; task creates; field updates)
  Step 4: Verify no unintended side effects (unexpected emails sent; wrong field updated)
  Step 5: Delete test contact after verification
  Step 6: Document test results in automation library
  
QUARTERLY AUTOMATION REVIEW:
  Review all active automations in each entity subaccount:
    - Is the automation still needed? (if the business trigger it addressed no longer applies → deactivate)
    - Has the workflow fired in the last 30 days? (if not → evaluate if trigger condition is wrong or process changed)
    - Is the email content still accurate? (have product, pricing, or process changed since it was written?)
    - For Allevio: is the content still HIPAA-compliant? (HIPAA standards change; content ages)
    - Is the automation still Dr. Lewis reviewed? (if never reviewed → queue for Allevio HIPAA review)
    
WORKFLOW LIBRARY:
  Location: SharePoint → [Entity] → RevOps → Automations → Library
  For each workflow:
    - Workflow name
    - Purpose (one sentence)
    - Trigger (what activates it)
    - Actions (what it does)
    - Owner
    - Date activated
    - HIPAA reviewed (Allevio): Yes/No + reviewer + date
    - Last reviewed (quarterly)
    - Status: Active / Paused / Deactivated
```

## Output Format

```markdown
# Automation Governance Audit — [Entity] — Q[N] [Year]
**Reviewer:** Dr. Lewis | **GHL subaccount:** [Entity]

---

## Active Workflows ([N] total)

| Workflow name | Trigger | Purpose | HIPAA reviewed? | Last fired | Status |
|--------------|---------|---------|----------------|-----------|--------|
| allevio-mql-notify-sales | MQL created | Notify AE | ✅ [Date] | [Date] | Active |
| allevio-form-submit-welcome | Form submit | Welcome email | ✅ [Date] | [Date] | Active |
| allevio-stage5-proposal-ack | Stage 5 | Email AE reminder | ⚠️ Never | [Date] | → Review |

---

## Issues Found

| Workflow | Issue | Action | Owner | Due |
|---------|-------|--------|-------|-----|
| [Name] | Content outdated (pricing changed) | Update content | Marketing lead | [Date] |
| [Name] | Never fired — trigger condition wrong | Fix or deactivate | RevOps | [Date] |
| [Name] | No HIPAA review on file | Dr. Lewis reviews immediately | Dr. Lewis | [Date] |

---

## Deactivated This Quarter ([N])
[List with reason for deactivation]

---

## New Automations Activated This Quarter ([N])
[List with pre-activation checklist confirmation]
```

## Output Contract
- "Activate now, review later" is the most common automation governance failure — a workflow that goes live without a test run will eventually fire incorrectly; a workflow that goes live on an Allevio subaccount without Dr. Lewis's HIPAA review will eventually contain content or data routing that violates HIPAA; Dr. Lewis enforces the pre-activation checklist as a gate — an automation that has not completed the checklist does not get activated; this applies to simple automations (a one-step email confirmation) as much as complex multi-step nurture sequences; complexity does not determine whether testing is required
- Stale automations are a silent drain and a compliance risk — a workflow built 18 months ago that sends a "benefits renewal season" reminder using pricing that changed 9 months ago is actively damaging the entity's credibility with prospects; a stale Allevio automation that references a service feature that no longer exists in that form is both misleading and potentially a compliance issue; the quarterly automation review exists to catch stale content before it causes harm; Dr. Lewis treats deactivating a stale automation as a risk reduction action, not an administrative task
- HITL required: all Allevio workflows → Dr. Lewis HIPAA review before activation; workflows touching financial data → Dr. Lewis; workflows that trigger SMS → TCPA compliance confirmed before activation; content changes to active workflows → same review as new workflow (pre-activation checklist applies to edits); quarterly review deactivation decisions → entity CEO aware; any workflow that routes data outside approved tools → Dr. Lewis blocks

## System Dependencies
- **Reads from:** GoHighLevel (workflow library; activation status; trigger logs; firing history); revops-data-integration-ops (approved destination systems for automation output); revops-crm-admin (user permissions that automation respects); mktg-crm-marketing-manager (email content standards; GHL sequence library)
- **Writes to:** Automation library (SharePoint → [Entity] → RevOps → Automations); GoHighLevel (workflow configuration; activation status); Dr. Lewis HIPAA review log (Allevio); entity CEO workflow awareness emails; quarterly audit report
- **HITL Required:** Allevio workflows → Dr. Lewis before activation; financial data workflows → Dr. Lewis; SMS automations → TCPA confirmed; content edits → re-review; deactivation decisions → entity CEO aware; non-approved destination tools → Dr. Lewis blocks

## Test Cases
1. **Golden path:** New Allevio automation: allevio-mql-notify-sales. Purpose: when a new MQL is created in Allevio GHL → send internal Slack/email notification to entity AE with MQL name, company, lead source, and a direct link to the GHL contact. Pre-activation checklist: naming ✅; description in GHL ✅; test run with dummy contact → AE received notification email with correct data ✅; content reviewed (no PHI — employer contact name and company only ✅); Dr. Lewis HIPAA review (employer contact data only; notification to internal AE; no external communication; low risk ✅; reviewed June 29); registered in library ✅; entity CEO notified ✅. Activated July 1.
2. **Edge case:** Quarterly audit reveals an Allevio automation (allevio-employer-renewal-reminder) has been sending emails to employer HR contacts that reference "your employees' healthcare benefit renewal" — and this email was never HIPAA-reviewed by Dr. Lewis → Dr. Lewis: "Pausing this automation immediately. The email content references employee healthcare benefits, and any automation that communicates with Allevio employer contacts about healthcare benefit topics is subject to HIPAA marketing rules and must have my review before activation. I'm doing the HIPAA review now (15-30 minutes). If the email passes: I'll re-activate it, document the review, and set up a quarterly content review trigger for this automation. If the content has issues: we update before re-activation. This is a governance gap that we're closing today."
3. **Adversarial:** Marketing coordinator activates a new Allevio lead nurture automation without completing the pre-activation checklist because "it was urgent and it's just a simple email" → Dr. Lewis: "I'm deactivating this automation now. 'Simple email' and 'urgent' are not exceptions to the pre-activation checklist for Allevio automations. Every Allevio external communication — regardless of how simple — requires my HIPAA review before it goes to an Allevio employer contact. Here's why: a 'simple' email that references employee health benefits without going through HIPAA review is exactly the kind of content that creates compliance exposure. I'm reviewing the email content now. If it passes, I'll re-activate it with a properly completed checklist. If it doesn't pass, I'll help rewrite it. Going forward, no Allevio automation goes live without the checklist completed — urgency is not an override."

## Audit Log
Automation library (complete record of all workflows; version history; activation status). Pre-activation checklist records (all workflows). HIPAA review records (all Allevio workflows — permanent; Dr. Lewis reviewer; date; findings). Quarterly audit reports. Deactivation records with reason. Content update records. TCPA compliance records for SMS automations. Stale automation discovery and resolution records.

## Deprecation
Automation naming convention reviewed when portfolio entities change. Pre-activation checklist reviewed when HIPAA regulations change. HIPAA review process reviewed when Allevio data practices change. Quarterly review cadence reviewed when automation library grows significantly. SMS TCPA compliance reviewed when telecommunications regulations change.
