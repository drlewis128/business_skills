---
name: mktg-demand-generation-manager
description: "Build and manage demand generation programs for MBL Partners portfolio entities. Use when the user says 'demand gen', 'demand generation', 'lead generation', 'generate leads', 'generate pipeline', 'marketing pipeline', 'MQLs', 'marketing qualified leads', 'SQLs', 'sales qualified leads', 'inbound leads', 'inbound pipeline', 'top of funnel', 'TOFU', 'middle of funnel', 'MOFU', 'marketing funnel', 'funnel metrics', 'marketing to pipeline', 'marketing-sourced pipeline', 'how is marketing contributing to revenue', 'marketing ROI', 'marketing to sales handoff', 'lead scoring', 'lead qualification', 'ICP', 'ideal customer profile', 'target accounts', 'account-based marketing', 'ABM', 'demand creation', 'awareness to pipeline', 'marketing programs', 'growth marketing', or 'how do we get more leads'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--action <build|audit|report|plan>] [--stage <tofu|mofu|bofu|full-funnel>]"
---

# Marketing Demand Generation Manager

Build and govern demand generation programs for MBL Partners portfolio entities — creating systematic pipelines from awareness to sales-qualified opportunity using content, email, events, and paid channels. Demand gen converts brand investment into measurable pipeline. At portfolio company scale, this means Allevio needs a consistent flow of employer demo requests, and Column6 needs a consistent flow of new agency relationships.

## When to Use
- Marketing is not generating measurable pipeline contributions
- MQL → SQL handoff is undefined or broken
- Entity needs to set marketing-sourced pipeline targets for the year
- Funnel is leaking — lots of leads, few conversions

## Demand Generation Framework

```
ICP (IDEAL CUSTOMER PROFILE) BY ENTITY:

  ALLEVIO:
    Primary ICP: Arizona-based employer; 50-500 employees; self-funded or level-funded health plan;
    HR Director or VP Benefits with rising claim costs; broker relationship in place but underperforming
    Secondary ICP: Regional Arizona employer groups (50+ employees) with active broker relationships
    Disqualification signals: fully-insured with no benefits flexibility; <25 employees; outside AZ (current capacity constraint)
    Revenue per employer: varies by plan design; qualify on employee count first
    
  COLUMN6:
    Primary ICP: Independent media agency; $5M-$50M media billings; CTV or programmatic-active clients;
    East or West Coast; buying programmatic from 2+ platforms (shopping for consolidation or better performance)
    Secondary ICP: Holding company agency group (national); specific brands buying direct (Tier 2)
    Disqualification signals: agency with no CTV/programmatic line items; pure social-only shops; no U.S. campaigns
    Revenue per agency: NRR target ≥95%; qualify on programmatic budget size
    
  HIVE / MBL: deal-flow is relationship-driven; demand gen programs not applicable; mktg-thought-leadership-planner + mktg-pr-manager handle visibility

FUNNEL STAGES AND DEFINITIONS:

  TOFU (Awareness):
    Goal: reach ICP with relevant content/message; generate first engagement
    Channels: LinkedIn organic; paid LinkedIn; content SEO; events; PR
    Metric: content reach; web visitors from ICP segment; email list growth
    
  MOFU (Consideration):
    Goal: convert awareness to intent; generate demo request or contact
    Channels: email nurture; website CTA; retargeting; webinar
    Metric: MQL count; MQL quality; demo request rate
    
  MQL DEFINITION (entity-specific):
    Allevio MQL: employer contact in AZ; ≥25 employees; engaged with 2+ content pieces OR submitted form
    Column6 MQL: agency contact; U.S.-based; engaged with programmatic content OR attended webinar
    
  BOFU (Decision):
    Goal: convert MQL to SQL; accelerate sales cycle
    Channels: sales follow-up; personalized outreach; case study; demo
    Metric: MQL → SQL conversion rate; demo → proposal rate; pipeline value sourced by marketing
    
  SQL DEFINITION:
    Allevio SQL: employer confirmed 25+ employees; AZ-based; plan-year timing identified; demo completed
    Column6 SQL: agency confirmed CTV/programmatic budget; decision maker engaged; test campaign discussed

MARKETING-TO-SALES HANDOFF:
  MQL generated → marketing notifies sales in GoHighLevel within 4 business hours (automated)
  Sales acknowledges within 24 hours; first outreach within 48 hours of MQL notification
  No-contact MQL → marketing recirculates to nurture after 14 days
  MQL rejected by sales → sales documents reason in GHL; marketing reviews rejection reasons monthly

DEMAND GEN TARGETS (annual planning):
  Allevio: Marketing-sourced MQLs: [set in annual planning with Allevio CEO]
  Column6: Marketing-sourced new agency relationships: [set in annual planning with Column6 CEO]
  Marketing-sourced pipeline as % of total: target 30%+ (B2B benchmark)
  CAC (Customer Acquisition Cost): track by channel; optimize toward lowest CAC with best LTV
```

## Output Format

```markdown
# Demand Generation Report — [Entity] — [Period]
**Prepared by:** Marketing Lead | **Approved by:** Entity CEO | **Reviewed by:** Dr. Lewis

---

## Funnel Summary

| Stage | This period | Prior period | Target | Status |
|-------|------------|-------------|--------|--------|
| TOFU — Unique ICP reach | | | | |
| MOFU — MQLs generated | | | | |
| BOFU — MQL → SQL rate | | | | |
| Pipeline sourced by marketing ($) | | | | |
| CAC (blended) | | | | |

---

## Channel Performance

| Channel | Spend | MQLs generated | CPL | Best/worst performer |
|---------|-------|---------------|-----|---------------------|

---

## MQL Quality Review

| MQL source | Count | SQL conversion rate | Notes |
|-----------|-------|--------------------|----|

---

## Funnel Leakage Analysis
**Where are leads dropping?** [TOFU → MOFU / MOFU → SQL / SQL → close]
**Root cause:** [Data-based assessment]
**Recommended action:** [Specific fix]

---

## Next Period Plan
1. [Program / campaign — target — budget — owner]
```

## Output Contract
- Marketing pipeline contribution is measured, not claimed — "marketing generates awareness" is not a reportable result; "marketing generated 12 employer MQLs this quarter, 4 converted to SQL, 2 proposals sent, pipeline value $280K" is a reportable result; Dr. Lewis requires all demand gen reporting to include pipeline value at every stage; if the pipeline attribution model is not set up in GoHighLevel, that is the first demand gen project before any campaign is launched; you cannot manage what you cannot measure
- The MQL handoff to sales is a contract, not a suggestion — when marketing generates a qualified lead and does not notify sales within 4 hours, or when sales does not contact the MQL within 48 hours, the lead is statistically lost; Dr. Lewis monitors MQL-to-first-contact time in GoHighLevel; any MQL with no sales contact in 48 hours generates an automatic escalation to the entity CEO; the marketing-to-sales SLA is enforced, not hoped for
- Demand gen is not the same as lead gen — demand gen creates the conditions for qualified buyers to self-select; lead gen scrapes contact lists and cold-calls; Dr. Lewis builds demand gen (content → awareness → intent → inbound → demo request); the entity entity CEO who wants to "just buy a list and call everyone" is describing lead gen, which works less well for B2B in 2026 than in 2010; Dr. Lewis explains the demand gen model, runs the pilot, shows the pipeline data, and lets the data make the case for the model
- HITL required: MQL → SQL handoff SLA definition → entity CEO + sales lead agree; demand gen budget allocation → entity CEO approves; channel launch (paid LinkedIn, event sponsorship) → entity CEO approves spend; HIPAA (Allevio landing pages for lead capture) → Dr. Lewis reviews; annual demand gen targets → entity CEO + Dr. Lewis set

## System Dependencies
- **Reads from:** mktg-messaging-matrix (demand gen campaigns carry L2/L3 messages); mktg-content-strategist (content is demand gen fuel); mktg-lead-nurture-designer (nurture sequences convert TOFU to MOFU); mktg-crm-marketing-manager (GoHighLevel pipeline tracking); mktg-campaign-manager (campaign execution for demand gen programs)
- **Writes to:** GoHighLevel (MQL contacts; pipeline stage tracking; lead scoring); demand gen report (Monday.com → [Entity] → Marketing → Demand Gen); MQL-to-sales handoff notifications; annual demand gen plan
- **HITL Required:** MQL → SQL SLA → entity CEO + sales; budget allocation → entity CEO; Allevio lead capture (HIPAA) → Dr. Lewis; annual targets → entity CEO + Dr. Lewis; paid spend launch → entity CEO

## Test Cases
1. **Golden path:** Allevio demand gen Q2. TOFU: 240 Arizona employer contacts reached via LinkedIn and email. MOFU: 18 MQLs (employer decision-makers who requested a guide + employer size ≥25). SQL conversion: 6/18 MQLs → SQL (33%). Pipeline: 2 proposals sent ($180K combined employer contract value). CAC blended: $3,200 per MQL from content + email (no paid in this period). Next Q: test LinkedIn paid targeting AZ employers with benefits-related job titles.
2. **Edge case:** 80% of Allevio MQLs come from one content piece (the "claim ratio calculator" tool) → Dr. Lewis: "That's a great signal — this tool creates more intent than the blog posts. I'm going to: (1) put the calculator behind a lighter gate (just email, not full contact form) to increase TOFU volume; (2) build a post-calculator email nurture sequence that takes everyone who uses it into the MOFU sequence; (3) create two more tools in the same format for different employer pain points. We've found a demand gen channel — now we build more of it."
3. **Adversarial:** Sales team rejects 70% of marketing MQLs as "not qualified" without documenting reasons → Dr. Lewis: "This breaks the system. If sales is rejecting 70% of MQLs, either: (1) our MQL definition is wrong — we're qualifying too loosely; or (2) sales is rejecting valid leads and losing pipeline. I need rejection reasons in GoHighLevel, mandatory, for every rejected MQL within 24 hours. I'll review 1 month of rejection data with the sales lead and entity CEO. If MQL definition is wrong, I revise it. If sales is rejecting valid leads, that's an entity CEO conversation."

## Audit Log
MQL generation records retained (source; date; qualification criteria; outcome). MQL-to-SQL conversion records retained. Pipeline attribution records retained. Campaign spend records retained. MQL rejection records retained with reasons. Annual demand gen targets and actuals retained.

## Deprecation
MQL/SQL definitions reviewed annually. Demand gen channel mix reviewed when market conditions change. Pipeline attribution model reviewed when CRM changes. Targets deprecated when entity is acquired or pivots model.
