---
name: ops-crm-manager
description: "Manage GoHighLevel CRM for MBL Partners and North Vista. Use when the user says 'CRM', 'GoHighLevel', 'GHL', 'CRM management', 'CRM setup', 'CRM configuration', 'CRM data', 'CRM pipeline', 'CRM contacts', 'CRM workflow', 'CRM automation', 'CRM reporting', 'CRM integration', 'pipeline management', 'pipeline tracking', 'pipeline review', 'deal pipeline', 'lead pipeline', 'contact management', 'contact record', 'contact database', 'lead management', 'lead tracking', 'lead routing', 'pipeline stage', 'pipeline status', 'pipeline value', 'pipeline report', 'pipeline clean-up', 'CRM cleanup', 'CRM hygiene', 'duplicate contacts', 'stale leads', 'North Vista CRM', 'MBL CRM', 'investor pipeline', 'LP pipeline', 'deal flow CRM', 'deal tracking', 'M&A pipeline CRM', or 'CRM agent routing'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|north-vista>] [--action <contact|pipeline|automation|report|cleanup|configure>] [--pipeline <deal|lp|client|lead>] [--output <report|update|action-plan|dashboard>]"
---

# Ops CRM Manager

Manage GoHighLevel CRM for MBL Partners and North Vista — maintaining clean contact records, managing deal and LP pipelines, configuring automation workflows, building reporting dashboards, and routing leads and communications to the right people. GoHighLevel is the CRM of record for MBL's relationship intelligence: it tracks deal flow (M&A targets), LP relationships, and North Vista's client relationships. A well-managed CRM gives Matt Mathison visibility into who is in the relationship universe, where deals are in the pipeline, and what outreach is due; a poorly managed CRM is a graveyard of stale contacts and phantom opportunities that erodes trust in the data.

## When to Use
- New contact or deal needs to be added to the pipeline
- Pipeline review (weekly; for weekly pulse or board prep)
- CRM automation needs to be built or modified
- CRM hygiene review (quarterly deduplication and cleanup)
- LP relationship management (track communications; follow-up cadence)

## GoHighLevel CRM Framework

```
GHL WORKSPACE STRUCTURE FOR MBL:

  PIPELINES:
    1. M&A Deal Flow (MBL — primary)
       Stages: Awareness → Initial Contact → NDA → Initial Diligence → LOI → Deep Diligence → Closed / Passed
       Owner: Dr. Lewis (tracks) + Matt Mathison (reviews)
       
    2. LP Relationship (MBL — fund management)
       Stages: Identified → Introductory Meeting → Term Review → Committed → Active LP → Re-up Conversation
       Owner: Matt Mathison (primary); Dr. Lewis (operational support)
       
    3. North Vista Client Pipeline
       Stages: Lead → Qualified → Proposal → Negotiation → Active Client → Renewal
       Owner: North Vista team; Dr. Lewis reviews

  CONTACT CATEGORIES:
    M&A Targets (company contacts at target acquisition companies)
    LPs (current and prospective limited partners)
    Strategic Partners (advisors; intermediaries; investment bankers)
    Portfolio Company Contacts (entity CEOs; leadership; vendors — operational contacts)
    North Vista Clients (current and prospective marketing clients)
    
  TAGGING TAXONOMY:
    Source: inbound-referral / outbound-direct / conference / intermediary
    Priority: A (Matt's active list) / B (active pursuit) / C (monitor)
    Entity relevance: allevio-relevant / hive-relevant / column6-relevant
    LP type: family-office / institutional / individual / strategic
    Status: active / stale / passed / lost / on-hold

PIPELINE MANAGEMENT STANDARDS:

  DEAL FLOW PIPELINE:
    Every deal has: contact name; company; source; entry date; current stage; next step; next step due date
    Stage transitions: documented with a note (what happened; why we're moving forward or not)
    Stale definition: any deal that hasn't had an activity update in 30 days
    Stale deal protocol: Dr. Lewis reviews and either reengages or moves to "Passed" (no ghost deals)
    
  LP RELATIONSHIP PIPELINE:
    LP communication cadence: quarterly (minimum) for active LPs; semi-annual for prospective
    Communication logged: every touchpoint (email; call; meeting) logged in GHL with a summary note
    Matt Mathison owns the LP relationship; Dr. Lewis supports with logistics and communication tracking
    LP commitment → Dr. Lewis coordinates with fund admin and legal for subscription documents
    
  NORTH VISTA CLIENT PIPELINE:
    North Vista team manages day-to-day; Dr. Lewis reviews monthly
    Key metrics: pipeline value; conversion rate; average deal size; sales cycle length

AUTOMATION WORKFLOWS:

  1. New deal entered → Dr. Lewis notified → added to weekly pulse review
  2. Deal stale (30 days no activity) → Dr. Lewis follow-up reminder
  3. LP quarterly check-in due → reminder to Dr. Lewis 7 days before
  4. North Vista lead assigned → assigned person notified via email/SMS
  5. Deal reaches LOI stage → Matt Mathison notification
  6. Deal closed (won or passed) → outcome logged; close-out note required
  
CRM HYGIENE (quarterly):
  
  Deduplication: merge duplicate contacts (same company; same email domain)
  Stale deal cleanup: move all 90-day+ inactive deals to "Passed" or "On Hold"
  Contact validation: verify email/phone still valid for active contacts
  Data completeness: flag contacts missing key fields (company; role; email)
  Tag cleanup: remove inconsistent or deprecated tags

INTEGRATION WITH MBL OPERATIONS:

  Deal flow → fin-deal-financial-model (when deal reaches LOI, model is initiated)
  LP pipeline → exec-lp-reporting (LP status informs quarterly LP communication)
  Krista.ai integration: meeting notes from LP calls → auto-logged in GHL contact record
  Monday.com: deals at active diligence stage → tracked on Portfolio Oversight board
```

## Output Format

```markdown
# CRM Pipeline Report — [Date]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison weekly pulse / board prep

---

## M&A Deal Flow Pipeline

| Stage | # Deals | Pipeline value (est.) | Oldest deal | Next action |
|-------|---------|----------------------|-------------|-------------|
| Awareness | [N] | — | [Date] | [Action] |
| Initial Contact | [N] | — | [Date] | [Action] |
| NDA | [N] | [Est. EV range] | [Date] | [Action] |
| LOI | [N] | [Est. EV range] | [Date] | [Action] |

**Active pursuit (A priority):** [N] | **Matt Mathison's deals:** [N]

---

## LP Relationship Status

| LP / Prospect | Last contact | Next scheduled | Status |
|---------------|-------------|---------------|--------|
| [LP Name] | [Date] | [Date] | Active LP |
| [Prospect] | [Date] | [Date — overdue] | ⚠️ Overdue check-in |

---

## CRM Health

- **Stale deals (30+ days no activity):** [N] — action required
- **Contacts missing key data:** [N]
- **Upcoming follow-ups this week:** [N]
```

## Output Contract
- No ghost deals in the pipeline — a deal that is "In Progress" but hasn't had an activity in 30 days is not in progress; it's a ghost; ghost deals inflate the pipeline, create false confidence, and waste time in reviews; Dr. Lewis reviews all deals for activity weekly; stale deals are either reactivated (with a next step and due date) or moved to "Passed/On Hold" with a reason; Matt Mathison's deal review time is too valuable to spend discussing deals that aren't real
- LP touchpoints are logged, always — every LP communication (email; call; meeting; conference interaction) is logged in GHL within 24 hours with a 1-2 sentence summary; this creates the relationship intelligence that allows Dr. Lewis to brief Matt before any LP interaction: "Your last conversation with [LP Name] was 6 months ago and you discussed the HIVE royalty timeline"; the log is only valuable if it's maintained with discipline; Dr. Lewis is the default logger for all Matt Mathison LP interactions unless Matt logs them directly
- CRM data drives decisions — the pipeline report is only as useful as the data quality; a pipeline report with stale deals and missing data is a report that erodes trust in the CRM; Dr. Lewis produces a quarterly hygiene report and takes action before delivering it to Matt; when Matt asks "how many deals are we actively pursuing?" the answer in the CRM should be accurate to within one deal
- HITL required: Matt Mathison owns the LP relationship — Dr. Lewis tracks and supports, but all LP-facing communications are reviewed by Matt before sending; deals that reach LOI stage → Matt Mathison notification same day; any deal that is declined (passed) after significant investment of Dr. Lewis/Matt time → Dr. Lewis logs the reason and Matt reviews; North Vista client pipeline changes above $50K → entity CEO + Dr. Lewis review; CRM workflow automations that send external communications → Matt Mathison approval

## System Dependencies
- **Reads from:** GoHighLevel CRM (primary system); Krista.ai (meeting notes from LP/deal calls → auto-logged); Monday.com (deal progress at diligence stage); fin-deal-financial-model (deal economics when at LOI/diligence); exec-lp-reporting (LP communication context for quarterly reporting)
- **Writes to:** GoHighLevel CRM (contact records; pipeline updates; activity logs); ops-action-tracker (follow-up actions from CRM pipeline); Monday.com Portfolio Oversight board (active deals at diligence); Matt Mathison weekly pulse (pipeline summary); deal flow reports (SharePoint → Strategy → DealFlow)
- **HITL Required:** LP communications → Matt review before sending; LOI-stage deals → Matt notification same day; North Vista client contracts >$50K → CEO + Dr. Lewis review; CRM external communication automations → Matt approval before activation; deal "passed" decisions → documented reason required

## Test Cases
1. **Golden path:** Weekly deal flow review for Monday pulse. GHL pull: 3 deals in Active Contact; 1 deal in NDA (entered 45 days ago); 2 deals in Initial Diligence. Dr. Lewis checks activity: NDA deal shows no activity in 35 days — stale. Dr. Lewis contacts the deal source: "Quick check — any update on [Target Co.]? Our NDA has been pending for 35 days." Response: "They decided not to pursue at this time." Dr. Lewis moves deal to "Passed" with reason note. Monday pulse note: "Deal flow: 5 active deals (updated from 6 — [Target Co.] passed after 35 days; they chose not to engage. One deal in active diligence stage — next step is management meeting with [Company]."
2. **Edge case:** Matt has a conversation with an LP at a conference and forgets to tell Dr. Lewis about it for 2 weeks → Dr. Lewis: "I noticed the last logged activity for [LP Name] in GHL was 3 months ago, but I know you had a conversation at [Conference] 2 weeks ago. Can you give me a 2-sentence summary of what you discussed? I'll log it in GHL so the relationship history is current. This matters when we prepare for the next LP communication — I want to be able to brief you on the full conversation history, not just what I happen to know."
3. **Adversarial:** North Vista team wants to add 300 contacts from a purchased list to GHL → Dr. Lewis: "Before we import 300 contacts from a purchased list, I need to understand a few things: (1) Is this list legally obtained with consent for commercial communications? (purchased lists vary widely in quality and legal standing — CAN-SPAM and GDPR require opt-in for certain communications); (2) What's the plan for communicating with these contacts? (bulk email blasts to unverified contacts risk GHL deliverability and domain reputation); (3) What's the data quality? (outdated contacts will inflate the pipeline with noise). My recommendation: run a 100-contact pilot first — validate deliverability and response before importing all 300. If the pilot response rate is meaningful (>5%), do the full import with a proper suppression/unsubscribe mechanism in place."

## Audit Log
Pipeline stage change history retained (with notes). Contact creation and modification history retained. LP communication logs retained (permanent — relationship history is a long-term asset). Automation configuration history retained. Stale deal cleanup actions retained. Import records retained (for data provenance). Quarterly hygiene reports retained.

## Deprecation
Retire or migrate when MBL outgrows GoHighLevel's CRM capabilities — typically when the portfolio exceeds 8-10 entities and deal flow volume requires a purpose-built PE CRM (e.g., Affinity, Salesforce with PE modules). Migration requires Matt Mathison approval and careful data migration planning.
