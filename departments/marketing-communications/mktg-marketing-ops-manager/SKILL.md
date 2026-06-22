---
name: mktg-marketing-ops-manager
description: "Manage marketing operations and technology stack for MBL Partners portfolio entities. Use when the user says 'marketing ops', 'marketing operations', 'marketing technology', 'martech', 'marketing stack', 'marketing tools', 'marketing software', 'marketing automation', 'CRM automation', 'GoHighLevel administration', 'GHL admin', 'marketing workflow', 'marketing process', 'marketing documentation', 'marketing SOP', 'marketing playbook', 'marketing process documentation', 'marketing team operations', 'onboarding a marketing vendor', 'marketing tool audit', 'marketing technology audit', 'marketing system', 'marketing integration', 'data integration marketing', 'marketing data flow', 'marketing tech audit', 'marketing ops review', 'marketing infrastructure', 'marketing process improvement', or 'how does marketing work here'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--action <audit|build|document|review>] [--focus <tools|processes|data|workflows|hipaa>]"
---

# Marketing Operations Manager

Govern marketing operations and technology for MBL Partners portfolio entities — maintaining the marketing technology stack, documenting processes, managing vendor relationships, and ensuring marketing systems are HIPAA-compliant (Allevio), well-integrated, and producing reliable data. Marketing ops is the infrastructure that makes everything else in marketing work consistently. Without it, campaigns break, data disappears, and compliance gaps form.

## When to Use
- Auditing the current marketing technology stack for an entity
- Documenting marketing processes and SOPs for a new entity or new team member
- Reviewing whether current marketing tools are still serving entity needs
- Managing a marketing tool transition or new tool onboarding

## Marketing Operations Framework

```
MBL PORTFOLIO MARKETING TECH STACK:

  CORE TOOLS (all entities):
    GoHighLevel: CRM; email marketing; automation; pipeline tracking (primary marketing platform)
    Google Analytics 4: website analytics (employer/agency pages; Allevio: employer-only — see HIPAA)
    LinkedIn Company Page: organic and paid social
    Microsoft (SharePoint; Teams): document storage; internal collaboration; content library
    Monday.com: project management; campaign calendar; marketing task tracking
    
  ENTITY-SPECIFIC TOOLS:
    Allevio: Zoom (HIPAA-compliant plan; for member-related webinars); AdvancedMD (clinical — NOT a marketing tool; data extracted as aggregate only for marketing use)
    Column6: Twitter/X (agency-facing social); Column6 own CTV platform (self-serve campaigns); LinkedIn Campaign Manager (paid ads)
    HIVE: Covercy (royalty platform — links in landowner communications)
    MBL Partners: LinkedIn Campaign Manager (Matt Mathison Thought Leader Ads if used)
    
  TOOL SELECTION CRITERIA:
    1. Does it serve the marketing objective efficiently?
    2. Is it HIPAA-compliant (Allevio)? BAA available?
    3. Does it integrate with GoHighLevel or can data flow be managed simply?
    4. Is the cost proportional to portfolio company scale?
    5. Can Dr. Lewis review data handling before launch?
    
  HIPAA TOOL GOVERNANCE (ALLEVIO):
    Every marketing tool used for Allevio must be reviewed by Dr. Lewis for HIPAA compliance before use
    Required: BAA for any tool that processes or may encounter member health information
    Prohibited (without BAA): any analytics, CRM, email, or communication tool that sends Allevio data to third-party servers without a BAA
    GoHighLevel: BAA must be on file; reviewed annually
    GA4: employer-facing pages only; configuration reviewed for no user-level tracking; no Allevio member pages
    Zoom: HIPAA-compliant Business plan required for any webinar involving member communication; standard Zoom is insufficient
    Tool list with BAA status: maintained by Dr. Lewis; reviewed quarterly

MARKETING PROCESS DOCUMENTATION:

  REQUIRED SOPs (standard operating procedures):
    Email marketing: UTM parameter standard; list management; send approval process; HIPAA review checklist (Allevio)
    Campaign management: brief → production → review → HIPAA (Allevio) → CEO approval → launch → reporting
    GoHighLevel: contact entry standard; pipeline stage definitions; lead scoring rules; tag taxonomy
    Content: brief → draft → Dr. Lewis review (HIPAA: Allevio) → CEO review → publish → distribute
    Event: pre-event (8 weeks) → at event → post-event (48 hours) → ROI report
    Social: draft → voice guide review → Dr. Lewis HIPAA review (Allevio healthcare claims) → CEO review → schedule
    
  DOCUMENTATION LOCATION: SharePoint → Marketing → SOPs → [Entity]
  Review cadence: SOPs reviewed annually or when process changes materially

MARKETING DATA GOVERNANCE:
  Contact data: GoHighLevel is system of record for all marketing contacts
  Content: SharePoint is system of record for all published and draft content
  Analytics: GA4 + LinkedIn Analytics are systems of record for channel performance
  Data retention: contact records retained per applicable law; Allevio member contacts per HIPAA retention requirements
  Data export restrictions: GoHighLevel list exports require Dr. Lewis authorization for Allevio contacts; entity CEO authorization for other entities
  Vendor data: vendors who handle entity marketing data must have NDA; Allevio vendors have NDA + BAA
  
QUARTERLY MARKETING OPS REVIEW:
  Tool audit: are all tools still serving their purpose?
  BAA review (Allevio): all tools with BAA — are BAAs current?
  Process gaps: any process that broke or was bypassed in the quarter?
  Data quality: GoHighLevel data quality check (see mktg-crm-marketing-manager)
  Tech debt: any tool integrations that have drifted or broken?
```

## Output Format

```markdown
# Marketing Operations Review — [Entity] — [Quarter/Year]
**Prepared by:** Marketing Lead | **To:** Dr. Lewis | **HIPAA review:** [Date]

---

## Marketing Tech Stack Status

| Tool | Purpose | HIPAA BAA status | Renewal date | Issues | Action |
|------|---------|-----------------|-------------|--------|--------|
| GoHighLevel | CRM + automation | ✅ BAA on file | [Date] | None | |
| GA4 | Website analytics | Employer pages only (no member tracking) | N/A | | |
| Zoom | Webinars | ✅ HIPAA plan (Allevio only) | [Date] | | |
| LinkedIn | Social + ads | N/A | | | |

---

## Process Compliance Summary

| Process | SOPs documented | Followed consistently | Issues this quarter |
|---------|----------------|----------------------|-------------------|
| Email HIPAA review (Allevio) | ✅ | ✅ | None |
| Campaign launch approval | ✅ | | [Issue if any] |

---

## Data Quality Summary (GoHighLevel)
- [ ] Duplicate contacts resolved: [count]
- [ ] Required field completion rate: [X]% (target ≥80%)
- [ ] Data export authorization logs current
- [ ] Allevio contacts: no PHI fields confirmed

---

## Vendor Status

| Vendor | Service | NDA | BAA (Allevio) | Contract expires |
|--------|---------|-----|--------------|-----------------|

---

## Actions Required
1. [Action — owner — due date]
```

## Output Contract
- Marketing ops is the plumbing — it only gets noticed when it breaks — but Dr. Lewis's approach to marketing ops is to notice it before it breaks; the quarterly marketing ops review is a standing discipline, not a one-time audit; it catches BAA renewals before they lapse; it catches broken GoHighLevel automations before they lose leads; it catches tool sprawl before it creates HIPAA risk; Dr. Lewis does not wait for a marketing failure to trigger an ops review
- HIPAA tool governance is Dr. Lewis's personal responsibility and cannot be delegated — a marketing lead who adds a new analytics plugin to the Allevio website without checking HIPAA compliance has created a compliance gap; a new email tool used for Allevio without a BAA review is a compliance gap; Dr. Lewis maintains the Allevio tool list with BAA status and reviews it quarterly; new tools are not activated for Allevio until Dr. Lewis has reviewed the HIPAA compliance and confirmed BAA status; this is not a checklist item — it is an active governance responsibility
- SOPs are living documents that must match actual practice — a process documentation that describes the intended process but not the actual process is useless and potentially misleading; Dr. Lewis reviews SOPs quarterly and requires the marketing lead to identify any gaps between the SOP and what the team actually does; a gap is either fixed (team follows the SOP) or documented (SOP is updated to match the actual process with Dr. Lewis's rationale for why the deviation is acceptable); undocumented process deviations are the source of most HIPAA compliance failures in marketing
- HITL required: new tool for Allevio → Dr. Lewis HIPAA review before use; BAA review (quarterly) → Dr. Lewis; GoHighLevel data export → Dr. Lewis authorization (Allevio); vendor NDA + BAA onboarding → Dr. Lewis confirms before vendor receives entity data; quarterly ops review → Dr. Lewis receives and reviews report; SOP changes → Dr. Lewis approves; tool deactivation → entity CEO authorizes

## System Dependencies
- **Reads from:** mktg-crm-marketing-manager (GoHighLevel data quality — inputs to ops review); mktg-analytics-manager (analytics tool configuration — inputs to ops review); mktg-email-marketer (email platform configuration and BAA status); mktg-marketing-budget-manager (tool costs — budget tracking)
- **Writes to:** Marketing ops quarterly review report (SharePoint → Marketing → Ops → [Entity] → [Quarter]); Allevio tool list with BAA status (SharePoint → Allevio → Legal → Marketing Tool BAAs); SOP library (SharePoint → Marketing → SOPs → [Entity]); vendor NDA/BAA records; GoHighLevel configuration records
- **HITL Required:** New Allevio tool → Dr. Lewis HIPAA review; BAA reviews → Dr. Lewis quarterly; GHL data export → Dr. Lewis authorization (Allevio); vendor NDA + BAA → Dr. Lewis; ops review report → Dr. Lewis; SOP changes → Dr. Lewis approves

## Test Cases
1. **Golden path:** Allevio Q3 marketing ops review. Tech stack check: GoHighLevel BAA renewed (June 30; next renewal June 30, 2027 — logged). GA4: confirmed employer-pages-only configuration; no member page tracking; Dr. Lewis sign-off August 15. Zoom HIPAA plan: active; renewal October 1 — flagged for renewal 60 days out. New tool request: marketing lead proposes Loom for screen recording in sales demos → Dr. Lewis review: Loom processes video via Loom's servers; no healthcare data in demos (employer-facing only); BAA available from Loom; Dr. Lewis approves employer-use only with BAA; member-facing: prohibited. Process compliance: all HIPAA email reviews completed and logged. Data quality: 3 duplicate contacts resolved; field completion rate 88%.
2. **Edge case:** GoHighLevel announces a major platform change that affects how contact data is processed → Dr. Lewis: "I'm reviewing the GoHighLevel data processing addendum and the updated terms before we continue using it for Allevio. If the change affects how member-contact data is processed or transmitted, I need to confirm the BAA still covers the new processing model. My process: (1) read the announcement and terms; (2) check if the BAA still applies; (3) contact GoHighLevel's compliance team if unclear; (4) if the BAA doesn't cover the new model, pause Allevio use of the affected features until the BAA is updated; (5) update the Allevio tool list with the new terms. This process happens before the platform change takes effect."
3. **Adversarial:** Marketing lead uses a new AI writing tool to help draft Allevio employer content, and the tool's terms of service allow it to train on submitted content → Dr. Lewis: "This tool is not approved for Allevio use until I've reviewed the terms. If the tool trains on submitted content, any Allevio marketing content pasted into it could include proprietary employer data or campaign strategy. For Allevio: (1) review if the tool has a 'do not train on my data' option or enterprise agreement; (2) if not, the tool is not used for Allevio content; (3) if yes, get the agreement in place before use; (4) even with protections, no Allevio member-adjacent information is pasted into any AI tool without Dr. Lewis review. Approved AI tools for Allevio: [list maintained by Dr. Lewis]."

## Audit Log
Marketing ops quarterly review records retained. Allevio tool BAA status list (permanent; updated quarterly). SOP version history retained. Vendor NDA/BAA records retained permanently. GoHighLevel configuration records. Tool change and approval records. New tool HIPAA review records (Allevio). Dr. Lewis review records.

## Deprecation
Marketing tech stack reviewed quarterly. BAA statuses reviewed quarterly. SOPs reviewed annually. Tool selection criteria reviewed when MBL technology standards change. Allevio tool governance process updated when HIPAA regulations change.
