---
name: exec-partner-email-builder
description: "Build the weekly Allevio partner email for Matt Mathison. Use when the user says 'partner email', 'Allevio partner email', 'weekly partner email', 'Sunday partner email', 'partner update email', 'build the partner email', 'write the partner email', 'draft the partner email', 'Allevio update email', 'partner communication email', 'weekly Allevio email', 'partner briefing email', 'prepare the partner email', 'Morgan EOW synthesis', 'Sophie EOW', 'Darek cash model', 'KPI scoreboard email', 'provider scoreboard', 'what goes in the partner email', 'build the Sunday email', 'pull the cash model', 'pull the scoreboard', 'partner email draft', or 'write the weekly update'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--week <YYYY-MM-DD>] [--action <draft|review|send|fallback>] [--source <Krista|browser|manual>]"
---

# Exec Partner Email Builder

Build the weekly Allevio partner email for Matt Mathison — synthesizing three source documents (Sophie Price's EOW update, the Allevio KPI provider scoreboard, and Darek Gibbons' cash flow model) into a 4-section email in Matt's CEO voice. This email is the primary weekly communication from Matt Mathison to Allevio's partners and stakeholders. Full autonomy (no Matt browser intervention) requires: a Krista MCP that can retrieve complete email bodies, read inline image KPI tables, browse the SharePoint document library, and extract Excel cell data. Until all four Krista gaps are closed, a browser fallback is required for the cash and KPI sections.

## When to Use
- Every Sunday (primary trigger: "partner email")
- Matt Mathison is traveling or unavailable and needs the draft ahead of time
- A mid-week partner update is required (use the same format, shorter sections)

## Partner Email Framework

```
FOUR-SECTION FORMAT (from Template v5):

  SECTION 1 — CASH PERFORMANCE (always leads):
    Source: Darek Gibbons' Allevio Cash Flow V*.xlsx
    Location: SharePoint → Allevio Executive SharePoint - Internal →
      Weekly Partner Email Files → most recent Cash Flow V*.xlsx
    Tab: Consolidated
    Data needed:
      □ Week-of-week collections comparison (this week vs. last week; $ and %)
      □ Beginning cash position
      □ Payroll upcoming (if within 2 weeks)
      □ Forward budget commentary (if the model shows a significant change)
    Voice: CEO letter style — confident, specific, no hedging
    Opening formula: "Cash collections for the week of [dates] were $[X], [up/down] [Y]%
      from the prior week. Beginning cash stands at $[Z]."
    
  SECTION 2 — PIPELINE / DEAL UPDATES:
    Source: Morgan Sills' EOW update email
    How to find: Outlook / Krista mail search — from:morgan.sills "end of week" — most recent
    Data needed:
      □ Employer group pipeline status (which deals advancing; which stalled)
      □ M&A activity (if any acquisition targets in discussion)
      □ Integration status for recently added groups
      □ Any Macchu-specific updates (if applicable)
    Voice: Synthesized narrative — NOT deal-by-deal extraction; Matt's CEO voice on the pipeline
    Fallback: If Morgan's update hasn't arrived, use prior week's status + "Morgan's update pending"
    
  SECTION 3 — PROVIDER KPIs / SCOREBOARD:
    Source (primary): performancereporting@alleviocare.com weekly email — most recent
      The KPI table is embedded as an inline image in the email body
      Krista gap: inline images are not readable by Krista without OCR capability
      Browser action: open the email in Outlook web; screenshot + zoom the KPI table
    Source (backup): SharePoint → Weekly Partner Email Files → Matthew Payne's PDF
      Note: This file is often 1-2 weeks stale — confirm the date before using as primary
    Data needed (from the table):
      □ Provider-level: visits, charge per visit, collection rate vs. targets
      □ Division-level summary
      □ Flag any provider below target collection rate
    HIPAA constraint: aggregate provider performance is appropriate; do not include
      patient-level data, individual diagnosis data, or member-identifiable information
    Voice: Data-forward — specific numbers, specific providers, specific deltas from target
    
  SECTION 4 — STRATEGIC / OPTIONAL SECTION:
    Not optional — always draft this section per Template v5 upgrade
    Content options:
      □ A market development (competitor news; regulatory change; employer market trend)
      □ A capability milestone (new clinical program; technology deployment; staffing update)
      □ A forward look (open enrollment preparation; Q3 planning; M&A pipeline commentary)
    Voice: Strategic framing — what this means for Allevio, not just what happened

PRE-FLIGHT CHECKLIST (before presenting draft to Matt):
    □ Cash section: specific numbers from the Excel file (not estimates)
    □ Pipeline section: Morgan's update received and synthesized (or fallback flagged)
    □ KPI section: most recent scoreboard data (confirm the date on the scoreboard)
    □ Strategic section: written in Matt's voice, not Dr. Lewis's voice
    □ No AI tells: no "I hope this finds you well"; no "Please don't hesitate"; no bullet lists
    □ Prose format: short paragraphs; direct sentences; no markdown formatting in the email
    □ Length: 4 short paragraphs + any tables; reading time <3 minutes
    □ Matt pastes this into Outlook — no special formatting that breaks in email clients

KRISTA CAPABILITY STATUS AND FALLBACK PROTOCOL:
  
  CAPABILITY 1 — Mail search (Sophie/Morgan EOW):
    Krista status: ✅ Can search but may miss emails arrived <48 hours ago (index lag)
    Fallback: If Krista search misses the newest EOW → search Outlook web manually
    
  CAPABILITY 2 — Full email body retrieval:
    Krista status: ❌ Returns truncated previews only; no full body by message ID
    Fallback: Open the specific email in Outlook web; get_page_text for full body
    Priority fix: Add get_message_by_id to Krista MCP (Krista punch list item 1)
    
  CAPABILITY 3 — Inline image / KPI table OCR:
    Krista status: ❌ Returns attachment reference with no content; no OCR
    Fallback: Open the email in Outlook web; screenshot + zoom the KPI table
    Priority fix: Attachment content extraction with OCR (Krista punch list item 2)
    
  CAPABILITY 4 — SharePoint document library browse + Excel read:
    Krista status: ❌ No file list in document libraries; no Excel cell read
    Fallback: Navigate to SharePoint URL; identify Cash Flow V*.xlsx; open in Excel for web;
      screenshot + zoom Consolidated tab for weekly collections and cash position
    Priority fix: SharePoint library browse + Excel-aware read (Krista punch list item 3)
    
  CAPABILITY 5 — Mail index freshness:
    Krista status: ⚠️ ~48 hour index lag; newest emails may not be searchable
    Fallback: If Krista search shows only prior week's EOW → add on-demand mailbox sync
    Priority fix: On-demand mailbox sync tool (Krista punch list item 4)
    
  When ALL Krista capabilities are working: 
    The partner email can be built autonomously — no Matt browser intervention required.
    Dr. Lewis monitors Krista capability status and updates this skill when gaps are closed.
```

## Output Format

```
ALLEVIO PARTNER UPDATE | WEEK OF [DATE RANGE]

[Section 1 — Cash Performance]
Cash collections for the week of [dates] were $[X], [up/down] [%] from the prior week. 
Beginning cash stands at $[Z]. [One additional sentence on payroll or forward budget if relevant.]

[Section 2 — Pipeline]
[2-3 sentences synthesizing Morgan's EOW in Matt's CEO voice — narrative, not bullets.]

[Section 3 — Provider KPIs]
[2-3 sentences on scoreboard highlights — specific providers, specific metrics, specific deltas.]

[Section 4 — Strategic]
[1-2 sentences on a market development, capability milestone, or forward look.]

Matt

---
ATTACHMENTS NOTE (Matt adds these manually in Outlook):
- Darek's Cash Flow file (SharePoint → Weekly Partner Email Files)
- M&A Dashboard (if Morgan attached one to her EOW)
- Scoreboard PDF (if Matthew Payne uploaded a fresh one to SharePoint)

PRE-FLIGHT STATUS:
- Cash: [Source: Excel V[N]; data date: [date]; specific or estimated?]
- Pipeline: [Morgan EOW received ✅ / Prior week only ⚠️ / Pending ❌]
- KPI: [Source: performancereporting@ email date [date] / SharePoint backup [date]]
- Krista capabilities used: [List which worked / which fell back to browser]
```

## Output Contract
- No placeholders in the final draft — if a data source is unavailable, the email is not sent with a placeholder; it is either delayed (if Matt has time) or uses the prior week's data with a specific flag ("pending Darek's update"); presenting a draft to Matt with "[INSERT CASH NUMBER HERE]" is presenting a non-draft; specific data or honest fallback, never placeholders
- Specific numbers, not estimates — the cash section contains specific dollar figures from the Excel model, not estimates; if the model isn't accessible, the fallback is the prior week's confirmed number + a note that the current week's model is pending; "approximately $X" is only acceptable if there is no other option and the caveat is explicit
- Matt's voice, not Dr. Lewis's voice — the partner email is signed by Matt Mathison and represents his communication style (CEO letter; prose; no bullets; short paragraphs; direct; specific); Dr. Lewis drafts in Matt's voice; if the draft reads like a Dr. Lewis technical report, it's wrong; the test: would Matt be comfortable sending this exactly as written?
- HITL required: Matt Mathison reviews every partner email draft before sending; Dr. Lewis presents with a pre-flight checklist completed; Matt copies to Outlook, attaches SharePoint files, and sends directly; HIPAA check: no patient/member-identifiable information in the email or attached files; Dr. Lewis validates data sources (which Excel version; which scoreboard date) in the pre-flight note; Krista capability status documented in the pre-flight note each week

## System Dependencies
- **Reads from (via Krista when available):** Sophie Price EOW email (Allevio Outlook; from:sophie.price "end of week"); Provider scoreboard email (from:performancereporting@alleviocare.com); Darek Gibbons' Cash Flow V*.xlsx (Allevio SharePoint → Internal → Weekly Partner Email Files); Morgan Sills' M&A dashboard (email or SharePoint); exec-weekly-briefing (any additional Allevio context from the week's meetings)
- **Reads from (browser fallback when Krista gaps present):** Outlook web (EOW full body; scoreboard inline image); SharePoint document library (Cash Flow file discovery; version verification); Excel for the web (Consolidated tab; weekly collections + cash position)
- **Writes to:** Partner email draft (email to Matt Mathison + pre-flight checklist); exec-action-tracker (any action items from Morgan's EOW that need to be logged); exec-weekly-briefing (partner email build confirms Morgan's EOW was received and Morgan's input for the week)
- **HITL Required:** Matt Mathison reviews every draft before sending; Dr. Lewis pre-flight checklist completed and presented with the draft; HIPAA check on all content; Krista capability status documented; Matt sends directly from Outlook (not through any automated send path); file attachments added by Matt manually

## Test Cases
1. **Golden path (full Krista capability — future state):** Krista retrieves Sophie's full EOW body by message ID (capability 2 resolved); Krista OCRs the provider scoreboard inline image (capability 3 resolved); Krista lists SharePoint files and reads the Consolidated tab of Cash Flow V9 (capability 4 resolved); Dr. Lewis builds the draft from all three sources without browser intervention; pre-flight: all data confirmed from Krista; Matt reviews; one edit (pipeline section voice slightly off); sends to partners Sunday 7 PM. Full autonomy achieved.
2. **Edge case (current state — partial Krista; browser fallback):** Krista finds Sophie's EOW but returns only a truncated preview (capability 2 gap); Dr. Lewis opens the email in Outlook web; get_page_text returns the full body; pipeline section built; Krista cannot read the KPI scoreboard image; Dr. Lewis opens in Outlook web; screenshots the table; reads the division-level data; scoreboard section built; Krista cannot discover the Cash Flow file; Dr. Lewis navigates to the SharePoint URL; opens Cash Flow V9.xlsx in Excel for web; screenshots the Consolidated tab; cash section built with specific numbers. Pre-flight: "Cash: Excel V9; confirmed $847K collections WoW; Pipeline: Sophie EOW received 6/12 7:29 PM full body; KPI: June 6 scoreboard — inline image via browser; Krista gaps used: 2, 3, 4." Matt reviews; approves; sends.
3. **Adversarial:** Morgan's EOW has not arrived by Sunday noon (she's traveling) → Dr. Lewis fallback protocol: "Morgan's update is not yet in. Options: (1) Wait until Sunday 6 PM — if it arrives, use it; if not, use prior week + 'Morgan's update pending.' (2) Call/text Morgan for a 2-minute status update I can synthesize. (3) Use prior week's deal status with a specific note. Matt, which do you prefer?" Matt: "Wait until 6 PM, then use option 3." 6 PM: no EOW. Dr. Lewis uses prior week's pipeline with a specific flag: "[Based on last week's EOW — Morgan's update was pending at draft time. Current pipeline: ...]" Matt: "Perfect. Send it."

## Audit Log
All partner email drafts retained by week. Pre-flight checklist results retained (which sources were available; which fell back to browser; which were missing). Krista capability status retained per week (documenting the progression as gaps are closed). Morgan EOW receipt records retained. Matt Mathison review and send records retained.

## Deprecation
When all four Krista capability gaps are closed: update this skill to reflect full Krista autonomy (no browser fallback). Retire the skill when MBL has a Chief of Staff who manages the Allevio partner email workflow with Dr. Lewis providing Krista configuration oversight.
