---
name: ops-automation-identifier
description: "Identify and prioritize automation opportunities. Use when the user says 'what can we automate', 'automation opportunities', 'find automations', 'automate this process', 'automation assessment', 'where can we automate', 'automation candidates', 'workflow automation', 'identify automations', 'reduce manual work', 'process automation', 'automation ROI', 'automate repetitive tasks', 'automate workflows', or 'AI automation'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--department <department name or 'all'>] [--method <review|workshop|process-observation>]"
---

# Ops Automation Identifier

Identify, prioritize, and implement automation opportunities at MBL portfolio companies — finding where repetitive, rule-based work is consuming human time that could be redirected to higher-value activities. The automation identification process is practical, not theoretical: it looks at what people actually do every day, identifies the tasks that follow predictable patterns, and evaluates whether the automation investment is justified by the time and error savings. The THRIVE filter applies: automations that save real time, reduce real errors, and free real people for real judgment work are the ones worth building.

## When to Use
- Operational cost reduction initiative — where can we free up human capacity?
- Staff utilization is above 85% and hiring isn't the right answer yet
- A recurring task is taking too much time and causing errors
- New technology (Krista.ai, Power Automate, Zapier) is being deployed
- Matt Mathison asks "where can AI or automation help us?"

## Automation Identification Framework

```
Good automation candidates (high ROI):
  Repetitive and rule-based: Same steps every time, no judgment required
  High volume: Done many times per week/day — more repetitions = higher ROI
  Error-prone when manual: Humans make consistent errors on this task (data entry, copy-paste)
  Time-consuming relative to complexity: Takes 30+ minutes but follows a simple pattern
  Cross-system data transfer: Manually copying data from System A to System B
  Notification and reminders: Triggered by conditions, sent to specific people

Poor automation candidates (low ROI or high risk):
  Requires judgment: Does the outcome require human evaluation of non-standard situations?
  Low volume: Done once a month or less — automation setup cost exceeds benefit
  Highly variable: Each instance is different enough that rules don't apply
  Relationship-based: Requires human trust, empathy, or negotiation
  Regulated human touchpoint: HIPAA, HR, legal requirements where human review is required

Automation ROI formula:
  Time saved per occurrence: [Minutes manual] - [Minutes with automation]
  Frequency: Occurrences per month
  FTE cost: Staff hourly rate
  Annual time savings: (Time saved) × (Frequency) × 12
  Annual cost savings: (Annual time savings in hours) × (hourly rate)
  Automation build/setup cost: One-time (Dr. Lewis time + tool cost)
  Payback period: Build cost / Annual savings
  Target: Payback ≤ 6 months

MBL automation tools available:
  Power Automate: M365-native; best for Microsoft ecosystem automations (Outlook, SharePoint, Teams)
  Zapier: Best for cross-SaaS; 5,000+ app connectors; no-code; MBL standard for SaaS automations
  Krista.ai: AI orchestration layer for more complex, multi-step, judgment-involving workflows
  n8n / Make: Code-optional; for more complex workflows without Krista.ai
  OpenFang: Dr. Lewis's agent OS for bespoke agent workflows — not for portfolio ops automations
```

## Output Format

```markdown
# Automation Opportunity Assessment — <Company Name>
**Date:** [Date] | **Scope:** [All operations / [Department]]
**Prepared by:** Dr. John Lewis | **Method:** [Process review / Staff interviews / Direct observation]

---

## Automation Candidate Summary

| Process | Time savings (hrs/month) | Error reduction | Build effort | Annual ROI | Priority |
|---------|------------------------|----------------|-------------|-----------|---------|
| [Process name] | [N hrs] | 🟢 High / 🟡 Med | Low/Med/High | $[X] | 🔴 High / 🟡 Med / 🟢 Low |
| | | | | | |

**Total automation opportunity:** [N hrs/month] freed + [N] error sources eliminated + $[X]/year

---

## Candidate Detail

### 🔴 High Priority: [Process Name]

**Description:** [What the process is — what's done manually today]
**Current effort:** [N minutes/occurrence × N occurrences/month = N hours/month]
**Staff performing this today:** [Role, fully-loaded cost: $[X]/year]
**What's error-prone:** [Specific error type — copy-paste mistakes, missed notifications, etc.]

**Automation design:**
- Trigger: [What starts the automation — a form submission, a date, a data change]
- Actions: [Step 1 → Step 2 → Step 3 — specific, not abstract]
- Tool: [Power Automate / Zapier / Krista.ai / Manual workflow]
- HITL required: [Yes — human approves before [X step] / No — fully automated]
- Estimated build time: [N hours — Dr. Lewis]

**ROI calculation:**
- Time saved: [X min/occurrence × N/month = N hrs/month]
- Annual cost savings: [N hrs × $[hourly rate] = $[X]/year]
- Build cost (one-time): $[X] (Dr. Lewis time) + $[X] (tool cost) = $[X]
- Payback: [N months]
- Error reduction value: [Estimated — $[X] if errors cause rework/compliance risk]

**Allevio-specific HIPAA note:** [If PHI is involved: automation must not expose PHI outside authorized systems; Zapier/Power Automate configs must not transmit PHI to non-BAA'd services]

---

### 🟡 Medium Priority: [Process Name]

[Same structure — abbreviated]

---

### 🟢 Lower Priority / Parking Lot: [Process Name]

[Brief description + why it's lower priority (low volume, judgment required, etc.)]

---

## Implementation Roadmap

| Automation | Build by | Tool | Owner | Status |
|-----------|---------|------|-------|--------|
| [High priority 1] | [Date] | [Zapier] | Dr. Lewis | Not started |
| [High priority 2] | [Date] | [Power Automate] | Dr. Lewis | |
| [Medium priority] | [Date + 30] | | | |

**Total implementation time estimate:** [N hours — Dr. Lewis] over [N weeks]

---

## Governance Requirements

- [ ] Each automation documented with: trigger, actions, HITL points, rollback procedure
- [ ] PHI-touching automations reviewed for HIPAA compliance before deployment (Allevio)
- [ ] Automations that send external communications (email, SMS) require Dr. Lewis approval
- [ ] Automations that move money or commit resources require HITL — no autonomous financial actions
- [ ] Monthly review of automation health (did they run? are there errors? are they still needed?)

---

## Matt Mathison Brief

[Company] automation assessment: [N] opportunities identified, [N hrs/month] of manual effort. Priority: [top automation] — [what it does, ROI]. Dr. Lewis implementing [N] automations over next [N weeks]; no budget required / $[X] estimated tool cost.
```

## Output Contract
- Eliminate before automating — the Lean principle: don't automate a bad process; first, is the task necessary? If it could be eliminated entirely, eliminate it; if it could be simplified, simplify it; then automate; automating waste is expensive waste; the automation identification starts with "should this be done at all?" before "how do we automate it?"
- ROI justification is required — automation is an investment; build time has a cost (Dr. Lewis's time at his fully-loaded rate); the payback calculation tells us whether the investment is worth it; a 6-month payback is excellent; 12 months is acceptable; beyond 18 months, the automation needs a very strong case (error elimination in a compliance-critical process can justify it even without a strong ROI)
- PHI automations at Allevio require special handling — any automation that handles, routes, or transforms data that could include PHI must be reviewed before deployment; Zapier and Power Automate can be used with PHI, but only when the services involved have BAAs with Allevio; sending PHI to a non-BAA'd service (even accidentally via an automation) is a HIPAA breach
- HITL for automations involving approvals or money — no automation autonomously moves funds, approves purchases, or commits the company to a contract; these actions require a human in the loop even if the rest of the workflow is automated; the automation can prepare the action, route it to the approver, and execute it after approval — but the approval step is always human
- HITL required: Dr. Lewis identifies and builds automations; CEO approves deployment of automations that affect patient/customer communications; PHI-touching automations require HIPAA review; financial automations require HITL design; monthly automation health review by Dr. Lewis; Matt Mathison receives brief on significant automation investments

## System Dependencies
- **Reads from:** Process documentation (ops-process-mapper, ops-sop-builder), staff interviews, time-tracking data, error logs, QuickBooks/Bill.com transaction patterns
- **Writes to:** Automation catalog (SharePoint/Ops/<Company>/Automation/); Zapier/Power Automate workflow documentation; Krista.ai workflow design (if applicable); implementation tracker (Monday.com)
- **HITL Required:** Dr. Lewis builds; CEO approves external-communication automations; PHI automations reviewed for HIPAA compliance; financial automations require HITL design; monthly health review by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio automation assessment → Identified: (1) New vendor W-9 and BAA tracking — currently manual email follow-up; automate: new vendor added to Bill.com triggers Zapier → sends DocuSign W-9 request → tracks completion → alerts Dr. Lewis when complete; 4 hrs/month saved; ROI: $800/year; build: 2 hours; payback: 3 days (🔴 High priority — also closes compliance gap); (2) OIG LEIE check reminder — monthly check due; Power Automate sends reminder to Dr. Lewis on the 1st of each month; 30 min/month; no error elimination but compliance support; build: 30 min; (3) AdvancedMD denial summary — currently pulled manually weekly; Power BI or Excel macro can automate; 1 hr/week × $35/hr = $1,820/year; build: 4 hours; payback: 1 week; total: 3 automations, 14 hrs/month freed, $2,800/year in time savings
2. **Edge case:** A proposed automation would send patient appointment reminders via Zapier (SMS) → PHI review required: the patient's name, appointment date, and provider name together constitute PHI; the SMS service used must have a BAA with Allevio before this automation can be deployed; check if the SMS vendor (Twilio, etc.) offers BAA; if yes, proceed with HIPAA-compliant setup; if no, either find an alternative vendor that offers BAA or route through AdvancedMD's built-in patient communication feature (HIPAA-compliant by default)
3. **Adversarial:** "AI should be handling everything — why are you only automating small things?" → The automation roadmap starts with high-ROI, low-risk processes that have clear rules; these create capacity, reduce errors, and build automation muscle in the organization; "everything" often means "the judgment-heavy things" — and those are where AI is genuinely exciting; respond: "We're starting with the clear wins — rule-based, high volume, error-prone processes — because they fund the next phase. Once billing reconciliation, vendor follow-ups, and compliance reminders are automated, the team has capacity to tackle the harder stuff. That's where Krista.ai comes in."

## Audit Log
All automation assessments retained by company and date. Implemented automations documented with design and ROI calculations. Monthly health check results retained. PHI compliance reviews documented. Error events in automations logged and remediated.

## Deprecation
Retire when portfolio companies have dedicated automation owners (typically IT manager or operations manager) who identify and build automations independently, with Dr. Lewis reviewing designs for compliance and approving deployments.
