---
name: mktg-crm-marketing-manager
description: "Manage CRM configuration and marketing data in GoHighLevel for MBL Partners portfolio entities. Use when the user says 'GoHighLevel', 'GHL', 'CRM', 'CRM setup', 'CRM configuration', 'CRM data', 'CRM hygiene', 'contact management', 'lead management', 'pipeline stages', 'CRM pipeline', 'contact segments', 'list segmentation', 'tags', 'CRM tags', 'contact tagging', 'custom fields', 'CRM fields', 'GoHighLevel pipeline', 'GoHighLevel contacts', 'GHL contacts', 'GHL pipeline', 'GHL tags', 'CRM integration', 'CRM reporting', 'CRM dashboard', 'marketing data quality', 'duplicate contacts', 'stale contacts', 'contact cleanup', 'HIPAA CRM', 'CRM compliance', 'marketing database', or 'CRM for marketing'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|mbl|north-vista>] [--action <configure|audit|clean|report>] [--focus <contacts|pipeline|tags|integration|hipaa>]"
---

# Marketing CRM Marketing Manager

Configure, govern, and maintain GoHighLevel CRM for marketing functions across MBL Partners portfolio entities — ensuring contact data is clean, pipeline stages are correctly defined, automation triggers are reliable, and HIPAA compliance is maintained for Allevio. GoHighLevel is the CRM and marketing automation platform for MBL Partners and its entities; a well-configured CRM is the infrastructure underneath all demand gen and nurture programs.

## When to Use
- Setting up GoHighLevel for a new entity
- CRM data is dirty (duplicates; stale contacts; wrong pipeline stages)
- Marketing automation is misfiring due to CRM configuration issues
- HIPAA compliance review of GoHighLevel configuration for Allevio

## CRM Marketing Management Framework

```
GOHIGHLEVEL CONFIGURATION (per entity):

  CONTACT FIELDS (standard):
    First name; Last name; Email (primary); Phone
    Company name; Job title; Company size (range: <25; 25-50; 50-150; 150-500; 500+)
    State/location; Source (how they entered the CRM)
    Entity tag (Allevio; Column6; HIVE; MBL)
    
  ENTITY-SPECIFIC FIELDS:
    Allevio employer contacts: AZ confirmed (boolean); plan year (month); broker name; current benefits vendor; employee count
    Column6 agency contacts: agency type (independent; holding company); U.S. markets active; programmatic budget range; current DSPs
    HIVE landowner contacts: parcel ID reference; royalty payment method preference; email vs. mail preference
    MBL contacts: deal source (broker; direct; referral); deal type; company sector
    
  PIPELINE STAGES (Allevio employer pipeline):
    Stage 1 — Lead: entered system; not yet contacted
    Stage 2 — MQL: meets qualification criteria (AZ; ≥25 employees; engaged 2+ times)
    Stage 3 — Demo Requested: requested demo; pre-demo sequence active
    Stage 4 — Demo Completed: demo held; follow-up active
    Stage 5 — Proposal Sent: formal proposal issued
    Stage 6 — Closed Won: employer signed; hand off to operations
    Stage 7 — Closed Lost: lost (reason tagged)
    Stage 8 — Nurture: not ready; long-cycle nurture
    
  PIPELINE STAGES (Column6 agency pipeline):
    Stage 1 — Lead: agency contact entered
    Stage 2 — Qualified: agency confirmed CTV/programmatic budget; decision maker engaged
    Stage 3 — Intro Completed: introductory call done
    Stage 4 — Test Campaign: test campaign in progress or proposed
    Stage 5 — Active Client: agency running campaigns
    Stage 6 — Lost: not moving forward (reason tagged)
    Stage 7 — Dormant: inactive agency; re-engagement pending

HIPAA COMPLIANCE IN GOHIGHLEVEL (ALLEVIO):
  Critical: GoHighLevel BAA (Business Associate Agreement) must be signed before Allevio uses GHL for ANY contact data that could connect to health information
  Employer contacts: employer HR/benefits contacts are generally not PHI (job title/company data); BAA is still required for Allevio as a precaution given the nature of the relationship
  Member contacts: Allevio member contacts (individual health plan participants) MUST have BAA in place before GHL is used; Dr. Lewis has final word on whether GHL is used for member communications at all (may require a HIPAA-certified alternative platform)
  No PHI fields: GHL contact records for Allevio may NEVER contain: health condition; diagnosis; treatment; medication; claims information; any clinical data
  Data access: GHL access restricted to roles that need it; Dr. Lewis reviews user permissions quarterly
  
TAG TAXONOMY (all entities):
  Source tags: [source-linkedin]; [source-event]; [source-form]; [source-referral]; [source-outbound]
  Status tags: [mql]; [sql]; [demo-requested]; [demo-completed]; [proposal-sent]; [closed-won]; [closed-lost]; [nurture]
  Sequence tags: [in-sequence-1]; [in-sequence-2]; [sequence-complete]; [unsubscribed]
  Entity tags: [entity-allevio]; [entity-column6]; [entity-hive]; [entity-mbl]
  HIPAA risk tag (Allevio): [no-phi] on all Allevio records confirmed by Dr. Lewis

DATA HYGIENE STANDARDS:
  Duplicate review: monthly (merge or suppress)
  Stale contact review: contacts with no activity in 180 days → move to suppression or re-engagement sequence
  Email bounce cleanup: after every email send, hard bounces → suppressed same day
  Field completion rate target: 80% complete on required fields; flag gaps monthly
  Quarterly audit: Dr. Lewis reviews Allevio CRM for PHI-containing fields
```

## Output Format

```markdown
# CRM Health Report — [Entity] — [Date]
**CRM:** GoHighLevel | **Prepared by:** Marketing Lead | **Dr. Lewis review:** [if Allevio]

---

## Contact Database Summary

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Total contacts | | | |
| Active in pipeline | | | |
| Contacts in nurture | | | |
| Suppressed / unsubscribed | | | |
| Duplicates identified | | | |
| Required field completion rate | | ≥80% | ✅/⚠️ |

---

## Pipeline Health (by stage)

| Stage | Count | Avg days in stage | Stuck (>30 days) |
|-------|-------|------------------|-----------------|

---

## Data Issues

| Issue | Count | Priority | Action | Owner |
|-------|-------|---------|--------|-------|

---

## HIPAA Review (Allevio only)
- [ ] BAA confirmed in place
- [ ] No PHI fields identified in contact records
- [ ] User permissions reviewed (roles with access listed)
- [ ] Dr. Lewis sign-off date: [Date]

---

## Recommended Actions
1. [Action — owner — due date]
```

## Output Contract
- GoHighLevel BAA is a non-negotiable prerequisite for Allevio use — before any Allevio contact data enters GoHighLevel, Dr. Lewis personally confirms the BAA is signed and on file; "we'll get it later" is not acceptable; using a CRM for an entity involved in health services without a BAA creates HIPAA liability; the BAA confirmation record is maintained in the compliance file (SharePoint → Allevio → Legal → CRM BAA); the BAA is reviewed annually for continued accuracy; if GoHighLevel is acquired or changes its data processing terms, Dr. Lewis reviews the updated terms against HIPAA requirements before continuing Allevio use
- CRM data quality directly determines demand gen accuracy — a demand gen program built on a dirty CRM (duplicate contacts; stale emails; wrong pipeline stages) produces inaccurate MQL counts, misleads sales on lead quality, and breaks automation sequences; Dr. Lewis enforces monthly data hygiene as a standing operational requirement, not an occasional cleanup project; the field completion rate (80% target on required fields) and duplicate count (target: zero) are reported monthly to the entity CEO as leading indicators of marketing program health
- Pipeline stage definitions are owned jointly by marketing and sales — the pipeline stages in GoHighLevel are not marketing's tool; they are the shared model for how both marketing and sales track a prospect's journey; stage definitions are agreed at the start of each year by marketing lead + entity CEO + sales lead; any changes to stage definitions mid-year require the same sign-off; a marketing team that unilaterally changes "Demo Completed" to "Demo Requested" halfway through the year corrupts the sales team's pipeline view and historical data
- HITL required: GoHighLevel setup for Allevio → Dr. Lewis confirms BAA; Allevio CRM user permissions → Dr. Lewis reviews quarterly; HIPAA PHI field audit → Dr. Lewis reviews quarterly; pipeline stage changes → entity CEO + sales agree; data purge (delete contacts) → entity CEO authorizes; CRM access for new users → entity CEO approves; CRM-integrated automation changes → Dr. Lewis notified

## System Dependencies
- **Reads from:** mktg-demand-generation-manager (MQL definition — pipeline stages aligned to demand gen funnel); mktg-lead-nurture-designer (automation sequences built in GHL); mktg-email-marketer (email sends use GHL contact segments); GoHighLevel (primary system — all CRM data lives here)
- **Writes to:** GoHighLevel (contact records; pipeline stages; tags; automation settings; user permissions); CRM health report (Monday.com → [Entity] → Marketing → CRM); HIPAA compliance records (SharePoint → Allevio → Legal → CRM Compliance); user access log
- **HITL Required:** Allevio BAA → Dr. Lewis confirms; user permissions → entity CEO approves; Allevio PHI audit → Dr. Lewis reviews quarterly; pipeline changes → entity CEO + sales; data purge → entity CEO authorizes; CRM integration changes → Dr. Lewis notified

## Test Cases
1. **Golden path:** Allevio GoHighLevel setup. BAA confirmed (on file). Contact fields configured: employer-specific fields included; no PHI fields created. Pipeline stages built per Allevio employer pipeline spec. HIPAA tag [no-phi] added to all existing records. User permissions: Dr. Lewis (admin); Allevio CEO (read/write pipeline); marketing lead (full access); sales rep (pipeline + contact view). Dr. Lewis quarterly audit scheduled in Monday.com. Month 1 data: 87 Allevio employer contacts; 6 MQL-tagged; 0 duplicates; field completion rate 91%. HIPAA audit: clean.
2. **Edge case:** Sales rep accidentally imports a CSV of contacts into the Column6 pipeline that includes contacts from a competitor's client list → Dr. Lewis: "Stop all activity on those contacts immediately. I need to: (1) identify the source of the list — was this purchased, borrowed, or scraped? CAN-SPAM requires consent; purchased lists need to be CAN-SPAM compliant; (2) if the source is questionable, suppress all contacts from this import before any emails are sent; (3) delete if consent cannot be confirmed; (4) document the incident; (5) restrict CSV import permissions in GHL to admin only going forward."
3. **Adversarial:** Someone outside the organization gains access to the Allevio GoHighLevel CRM via a compromised credential → Dr. Lewis: "Immediate response: (1) revoke all active sessions in GHL admin; (2) force password reset for all Allevio GHL users; (3) review access log for data exports or view events; (4) determine if any PHI was accessible (per our configuration, there should be none — verify); (5) if PHI was potentially exposed, treat as HIPAA breach and engage legal within 24 hours; (6) notify Allevio CEO same day; (7) enable MFA for all GHL accounts if not already active."

## Audit Log
GoHighLevel BAA confirmation records (Allevio — retained permanently). User permission records (quarterly review records). HIPAA PHI audit records (Allevio — quarterly). Pipeline stage definition changes retained. Data hygiene action records (monthly). Unauthorized access incidents retained. Contact purge authorizations retained.

## Deprecation
CRM configuration reviewed annually. HIPAA compliance review updated when HIPAA regulations change or GoHighLevel data processing terms change. Pipeline stages reviewed when entity sales process changes. CRM platform reviewed when MBL evaluates alternative CRM vendors.
