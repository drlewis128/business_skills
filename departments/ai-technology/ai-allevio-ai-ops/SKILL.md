---
name: ai-allevio-ai-ops
description: "Manage AI operations specifically for Allevio healthcare MSO portfolio company. Use when the user says 'Allevio AI', 'AI for Allevio', 'Allevio automation', 'Allevio AI operations', 'Allevio AI workflow', 'Allevio reporting AI', 'Allevio billing AI', 'Allevio employer outreach AI', 'AI employer communication Allevio', 'Allevio GHL AI', 'Allevio Monday.com AI', 'Allevio meeting summary', 'Allevio pre-meeting prep', 'AI care coordination', 'AI MSO', 'Allevio RCM AI', 'Allevio AdvancedMD AI', 'Allevio billing automation', 'Allevio PMPM reporting', 'Allevio GRR AI', 'Allevio employer marketing AI', 'Allevio onboarding AI', 'Allevio data analysis', 'aggregate Allevio reporting', 'Allevio employer analytics', 'Allevio AI compliance', 'HIPAA AI Allevio', 'Allevio AI deployment', or 'AI for healthcare MSO'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--workflow <name>] [--action <assess|build|deploy|audit|report>]"
---

# AI Allevio AI Ops

Manage AI operations specifically for Allevio — the MBL portfolio healthcare MSO — identifying HIPAA-compliant AI use cases, building employer-facing automation, and managing Allevio's AI deployment within strict PHI boundaries. All Allevio AI operations default to employer-aggregate data only; no individual member data enters any AI workflow.

## When to Use
- Deploying an AI workflow at Allevio
- Building employer outreach or reporting automation for Allevio
- Troubleshooting an Allevio AI workflow
- Quarterly Allevio AI compliance review

## Allevio AI Operations Framework

```
ALLEVIO AI OPERATING PRINCIPLES:
  1. PHI ABSOLUTE: no individual member health data in any AI workflow
  2. EMPLOYER-AGGREGATE ONLY: all Allevio AI outputs reference employers + aggregate metrics
  3. BAA FIRST: no AI vendor processes Allevio data without executed BAA
  4. HIPAA RISK ASSESSMENT BEFORE DEPLOYMENT: no exceptions
  5. CLINICAL LEADERSHIP PROVIDES AGGREGATE INPUTS: Dr. Lewis does not pull clinical data
  
APPROVED ALLEVIO AI USE CASES (post-HIPAA assessment):
  
  Employer Billing Automation:
    Input: QuickBooks billing data (employer code; enrolled EE count; PMPM; no PHI)
    AI action: generate monthly employer invoice summary; format for distribution
    Output: aggregate billing report per employer; no individual data
    HIPAA risk: Low (QuickBooks billing data is employer-aggregate; not PHI)
    
  Employer Outreach (GHL + Claude):
    Input: employer contact data (GHL); enrollment status; aggregate GRR metrics
    AI action: draft personalized employer check-in emails; onboarding sequences
    Output: employer-specific emails referencing their aggregate program metrics
    HIPAA risk: Low-Medium (employer data is not PHI; member aggregate referenced)
    Note: emails reference "your enrolled employees" in aggregate, never individual member info
    
  Portfolio Reporting for Dr. Lewis / Matt Mathison:
    Input: QuickBooks (MRR; PMPM); AdvancedMD aggregate via Marshall (NCR; denial rate; aggregate)
    AI action: synthesize Allevio monthly performance report
    Output: PMPM; MRR; GRR; NRR; gross margin; enrolled employers; DSO — all aggregate
    HIPAA risk: Negligible (if clinical inputs come pre-aggregated from clinical leadership)
    
  Meeting Summary (Allevio meetings):
    Already covered by ai-meeting-summary-builder + ai-hipaa-ai-compliance
    Allevio meeting summaries: employer-aggregate context only; clinical lead data = aggregate only
    
  Scheduling Support (future):
    HIPAA risk: High (scheduling involves member names + appointment times = PHI)
    Deployment gate: full HIPAA risk assessment + BAA + technical de-identification required
    Status: NOT approved in current phase
    
WHAT REQUIRES ADDITIONAL ASSESSMENT (not currently approved):
  Member engagement analysis (member-level data = PHI)
  Clinical outcomes reporting (any member-level health outcome = PHI)
  Prescription or diagnosis data processing (PHI regardless of aggregation level)
  Any AI tool receiving data from AdvancedMD at member level (PHI)
  Scheduling tools with member identifiers (PHI)

ALLEVIO AI DEPLOYMENT CHECKLIST:
  □ Use case documented (what AI does; what data it processes)
  □ PHI risk assessment complete (ai-hipaa-ai-compliance)
  □ De-identification methodology confirmed (if any health data involved)
  □ BAA executed with all AI vendors in workflow
  □ Dr. Lewis review and approval
  □ Allevio entity CEO approval
  □ Test run with synthetic data (no real member data in testing)
  □ Production deployment with Dr. Lewis monitoring first 5 runs
```

## Output Format

```markdown
# Allevio AI Workflow — [Workflow Name]
**Status:** [Active / Draft / Pending HIPAA review]
**HIPAA Risk:** [Low / Medium / High] | **BAA:** [Vendor(s) + date]

---

## Workflow Overview
**Purpose:** [1 sentence]
**Data inputs:** [List — employer code; PMPM; enrolled EE count; etc. — NO PHI items]
**AI action:** [What Claude/Krista does]
**Output:** [What is produced; where it goes; who sees it]

---

## HIPAA Compliance Status
| Requirement | Status |
|-------------|--------|
| PHI excluded from inputs | ✅ |
| BAA executed (all vendors) | ✅ [Anthropic; Krista.ai] |
| Allevio entity CEO approved | ✅ |
| Dr. Lewis approved | ✅ |

---

## Output Sample
[Aggregate-only example output — no real employer or member data]
```

## Output Contract
- Every Allevio AI workflow starts with the data inventory, not the workflow design — before Dr. Lewis designs any Allevio AI workflow, he maps exactly what data enters the AI model: source (QuickBooks; GHL; Marshall Medical Billing aggregate); field names; any field that could identify an individual member; the data inventory is reviewed against the HIPAA Safe Harbor standard before the workflow is designed; if any input field is PHI or could be PHI, the workflow is redesigned to exclude it or de-identify it before the data reaches the AI model; the workflow is never built first and checked for PHI later
- Clinical leadership is the source of truth for aggregate clinical data — Dr. Lewis never directly queries AdvancedMD or clinical records for AI workflows; clinical leadership (Allevio entity CEO and clinical lead) provides aggregate clinical inputs (enrolled EE count; total program cost; aggregate outcomes) directly to Dr. Lewis; this maintains the data flow hierarchy where clinical data never leaves the clinical domain without being pre-aggregated; if clinical leadership provides data that includes individual-level elements, Dr. Lewis returns it and requests re-aggregation; the rule is structural, not case-by-case
- HITL required: every Allevio AI workflow deployment → Dr. Lewis + Allevio entity CEO approve; BAA verification → both must sign; output review → Dr. Lewis reviews every Allevio AI output before distribution (no automated distribution for Allevio workflows); HIPAA incident → immediate workflow suspension + entity CEO + legal counsel within 24 hours; Matt Mathison notified of any Allevio AI incident within 24 hours; quarterly compliance review → entity CEO reviews status

## System Dependencies
- **Reads from:** QuickBooks Allevio entity (employer billing data; MRR; PMPM — aggregate); GoHighLevel Allevio sub-account (employer contacts; enrollment status); Marshall Medical Billing aggregate reports (NCR; denial rates — aggregate only; no member-level); Allevio entity CEO input (context; clinical aggregate data); Claude API (HIPAA-eligible tier); Krista.ai (BAA in place)
- **Writes to:** Employer billing reports (Allevio SharePoint → Finance → Employer Billing → [Month]); employer outreach emails (GHL → Allevio employer contacts; HITL reviewed); Allevio portfolio report sections (Dr. Lewis → Matt Mathison; aggregate); Allevio AI workflow specs (SharePoint → Allevio → AI → Workflows)
- **HITL Required:** Every deployment → Dr. Lewis + entity CEO; every output → Dr. Lewis reviews before distribution; BAA → entity CEO + legal counsel sign; HIPAA incident → Dr. Lewis suspends + entity CEO + legal within 24h; Matt Mathison → 24h notification on incident; quarterly review → entity CEO

## Test Cases
1. **Golden path:** Allevio monthly employer billing summary automation. Data inventory: QuickBooks pulls (employer code; enrolled EE count; PMPM; monthly total; no individual employee data). HIPAA risk: Low (employer aggregate only). BAA: Anthropic HIPAA tier ✅. Claude generates formatted billing summary per employer: "Employer [Code]: Enrolled EEs: 47; PMPM: $180; Monthly total: $8,460; Billing period: June 2026." Dr. Lewis reviews output before distribution. Entity CEO approves workflow. Deployed. First 5 runs monitored. Workflow active.
2. **Edge case:** During workflow testing, Dr. Lewis notices the QuickBooks billing export includes a "notes" field that sometimes contains employee names when the employer's HR team adds them manually → Dr. Lewis: "This is a PHI risk. The notes field from QuickBooks is unstructured and can contain member-identifying information. Before deploying this workflow, I need to: (1) Strip the notes field from the data export before it reaches Claude; (2) Document this de-identification step in the workflow spec; (3) Add a validation step that checks the notes field for common name patterns before processing. If the validation finds a name, the workflow flags for Dr. Lewis review rather than processing automatically. This changes the deployment timeline by 1 week — the validation step needs to be built and tested first."
3. **Adversarial:** Allevio entity CEO asks Dr. Lewis to build an AI workflow that "identifies members who are at risk for churning" based on their engagement data → Dr. Lewis: "Member-level engagement data is PHI — any data that links an individual's behavior within the care coordination platform to their identity is a protected health record. I can't build this workflow with individual member data. What I can build: an employer-level churn risk model that identifies employer groups with declining aggregate engagement rates (e.g., employer GRR dropping for 2 consecutive months; declining enrolled EE count). This gives you an early warning system at the employer level, which is where you can take action (outreach to the HR director; benefit communication support). It's aggregate, it's HIPAA-safe, and it's actionable at the right level. Want me to build the employer-level version?"

## Audit Log
Allevio AI workflow deployments (all; permanent; SharePoint). HIPAA risk assessments (all; permanent). BAA records (all vendors; signed copies). Dr. Lewis review records (all output reviews). Entity CEO approval records. Data inventory records (what data enters each workflow). HIPAA incident log (permanent; legal hold). Quarterly compliance review records.

## Deprecation
Workflows deprecated when Allevio's operational processes change. HIPAA risk assessments renewed annually or when data inputs change. BAA reviewed at each vendor contract renewal. Approved use case list reviewed when HHS issues new AI guidance. Quarterly review cadence reviewed when Allevio's AI portfolio grows.
