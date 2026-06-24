---
name: ai-column6-ai-ops
description: "Manage AI operations specifically for Column6/Siprocal CTV and media portfolio company. Use when the user says 'Column6 AI', 'Siprocal AI', 'AI for Column6', 'CTV AI', 'media AI', 'advertising AI', 'Column6 automation', 'Column6 reporting AI', 'IO management AI', 'insertion order AI', 'campaign reporting AI', 'campaign analytics AI', 'media intelligence AI', 'Column6 pipeline AI', 'agency outreach AI', 'Column6 revenue AI', 'CTV revenue AI', 'Column6 GHL AI', 'Column6 Monday.com AI', 'Column6 client reporting', 'Column6 media reporting', 'Column6 financial AI', 'Column6 billing AI', 'agency billing AI', 'media billing AI', 'IO revenue AI', 'Column6 gross margin AI', 'DSO AI', 'Column6 campaign performance', 'programmatic AI', 'mobile gaming AI', or 'Siprocal reporting AI'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--workflow <name>] [--action <assess|build|deploy|report>]"
---

# AI Column6 AI Ops

Manage AI operations specifically for Column6/Siprocal — MBL's CTV/Mobile/Gaming portfolio company — building IO pipeline automation, campaign reporting synthesis, agency outreach AI, and revenue recognition support. Column6 AI workflows respect client campaign data confidentiality and the IO-based revenue recognition model.

## When to Use
- Building or deploying an AI workflow for Column6 operations
- Automating IO pipeline management or campaign reporting
- Building AI-assisted agency outreach via GHL
- Synthesizing Column6 financial performance for Matt Mathison

## Column6 AI Operations Framework

```
COLUMN6 AI OPERATING PRINCIPLES:
  1. CLIENT CONFIDENTIALITY: client campaign data handled with confidentiality controls
     → Agency/client names and campaign performance data are business confidential
     → No client campaign data shared across clients (strict isolation in outputs)
  2. IO-BASED REVENUE MODEL: all revenue recognition tied to IO delivery milestones
     → AI must understand that revenue = recognized at campaign delivery, not contract signing
     → Partial delivery → partial revenue recognition
  3. GROSS MARGIN DISCIPLINE: gross margin target ≥35%; flag if below target
  4. AGENCY PAYMENT TERMS: net 30-60 for agencies; DSO target <50 days
  5. REPEAT IO RATE: target ≥60% repeat IO rate from existing agency partners
  
APPROVED COLUMN6 AI USE CASES:

  IO Pipeline Management:
    Input: current IO pipeline (agency; campaign name; IO value; delivery start; milestone status)
    AI action: synthesize pipeline view; flag at-risk IOs (delivery delayed; milestone not hit); calculate pipeline revenue coverage
    Output: weekly pipeline summary; at-risk IO flags; revenue recognition forecast
    Client isolation: each agency's pipeline data appears only in that agency's section of the output
    
  Campaign Reporting Synthesis:
    Input: campaign performance data by IO (aggregate metrics: impressions; completion rate; CPM; delivery%)
    AI action: synthesize monthly campaign performance report; compare to IO benchmarks
    Output: aggregate campaign performance summary; client-specific sections (isolated); gross margin calculation
    Confidentiality: client-specific metrics in client-isolated sections; no cross-client data in any single output
    
  Agency Outreach (GHL + Claude):
    Input: agency contact data (GHL); IO history; repeat rate; last contact date
    AI action: draft personalized agency check-in emails; IO renewal proposals; new campaign pitches
    Output: GHL-ready email drafts; personalized with IO history and performance context
    Review: Column6 entity CEO or AE reviews before sending; not auto-sent
    
  Revenue Recognition Support:
    Input: IO delivery milestones (from campaign tracking); billing events
    AI action: flag IOs where delivery milestone has been hit but revenue not yet recognized in QuickBooks
    Output: revenue recognition checklist; flag unrecognized revenue; DSO calculation per agency
    HITL: Dr. Lewis reviews revenue recognition flags; QuickBooks entries by Dr. Lewis or Column6 finance
    
  Financial Synthesis for Matt Mathison:
    Input: QuickBooks Column6 P&L (MRR; gross margin; AR aging); IO pipeline summary
    AI action: synthesize Column6 monthly financial narrative
    Output: Column6 monthly performance brief (revenue; gross margin vs. 35%; repeat IO rate; DSO; pipeline)
    Distribution: Dr. Lewis → Matt Mathison
    
COLUMN6 CONFIDENTIALITY CONTROLS:
  Campaign data belongs to the client/agency — it is not to be shared with other clients or used for competitive purposes
  Internal AI synthesis: aggregate metrics only in cross-client views; client-isolated sections for specifics
  External AI vendors: any vendor receiving client campaign data must have a Data Processing Agreement (DPA)
  Client data retention: per IO agreement terms; not retained beyond campaign completion without client consent
```

## Output Format

```markdown
# Column6 Monthly AI Performance Brief — [Month Year]
**Prepared by:** Dr. Lewis (AI-assisted) | **For:** Matt Mathison

---

## Revenue Summary
| Metric | This Month | Target | Status |
|--------|-----------|--------|--------|
| MRR | $X | $X | ✅/⚠️ |
| Gross margin | X% | ≥35% | ✅/⚠️/🔴 |
| Repeat IO rate | X% | ≥60% | ✅/⚠️ |
| DSO | X days | <50 | ✅/⚠️ |

---

## Pipeline Summary
**Active IOs:** [N] | **Pipeline value:** $X | **At-risk IOs:** [N] (flag reasons)

## Agency Outreach Sent: [N] emails (HITL reviewed before send)

## Action Items
[Month-specific Column6 action items]
```

## Output Contract
- Client campaign data isolation is maintained even within Dr. Lewis's own analysis — when Dr. Lewis uses AI to synthesize Column6 performance, client-specific data appears in isolated sections (Agency A's performance is analyzed separately from Agency B's); no cross-client comparison by name appears in any output; "Agency A's CPM outperformed Agency B by 15%" is a confidentiality violation — it discloses Agency A's performance to any reader of Agency B's section; the correct output: "Top-performing IO in June delivered CPM 15% above portfolio average"; name-isolated outputs protect both agency relationship trust and Column6's obligation to each client
- Gross margin below 35% is an immediate flag, not a quarterly observation — when Claude synthesizes Column6 financials and gross margin appears below 35%, Dr. Lewis reviews the cause and reports to the Column6 entity CEO and Matt Mathison in the same report cycle, not the next one; gross margin declining to 30-34% suggests a cost structure problem that compounds over time; gross margin declining to <30% is a pricing or delivery problem that requires immediate intervention; the AI's synthesis flags the threshold; the human escalates the conversation
- HITL required: agency outreach emails → Column6 entity CEO or AE reviews before send; revenue recognition flags → Dr. Lewis + Column6 finance review; campaign reporting → Column6 entity CEO reviews client-specific sections; financial synthesis → Dr. Lewis reviews; Matt Mathison receives; any client DPA requirement → Dr. Lewis + entity CEO + legal if needed; gross margin <35% → Dr. Lewis + entity CEO immediate; repeat IO rate declining → entity CEO notified

## System Dependencies
- **Reads from:** QuickBooks Column6 entity (P&L; AR aging; revenue recognition); IO tracking system (campaign performance; delivery milestones; billing events); GoHighLevel Column6 sub-account (agency contacts; campaign history; outreach records); Column6 entity CEO input (pipeline context; agency relationship status)
- **Writes to:** Column6 monthly performance briefs (SharePoint → Column6 → AI Reports → [Month]); IO pipeline summary (SharePoint → Column6 → Operations → IO Pipeline → [Month]); GHL email drafts (reviewed; Column6 entity CEO or AE sends); revenue recognition checklists (SharePoint → Column6 → Finance → Revenue Recognition)
- **HITL Required:** Agency outreach → entity CEO or AE reviews before send; revenue recognition → Dr. Lewis + Column6 finance; campaign reporting → entity CEO reviews; gross margin flag → Dr. Lewis + entity CEO immediate; DPA requirement → Dr. Lewis + entity CEO + legal

## Test Cases
1. **Golden path:** Column6 June 2026 monthly synthesis. QuickBooks: MRR $287,000; gross margin 38% (above 35% ✅); DSO 44 days (below 50 ✅). IO pipeline: 12 active IOs; 2 at-risk (delivery delayed by campaign change; Dr. Lewis flags to entity CEO). Repeat IO rate: 68% (above 60% ✅). Agency outreach: 3 renewal emails drafted by Claude; Column6 AE reviewed and sent. Monthly brief prepared. Matt Mathison receives June 15. Action items: entity CEO to follow up with 2 at-risk agency IOs by June 20.
2. **Edge case:** During revenue recognition synthesis, Claude identifies 3 IOs where delivery milestones have been hit (per campaign tracking) but QuickBooks still shows deferred revenue → Dr. Lewis: "Revenue recognition flag: [IO 1]; [IO 2]; [IO 3] — delivery milestone confirmed; revenue not yet recognized in QuickBooks. Combined unrecognized revenue: $42,000. I'll contact the Column6 finance lead to trigger the QuickBooks entries. If these entries were missed in June's close, we need to post the adjustment before we report to Matt Mathison — otherwise the June P&L understates revenue by $42K." Dr. Lewis initiates QuickBooks entry process. Revenue recognized. June P&L corrected before distribution.
3. **Adversarial:** Column6 entity CEO wants to use a client's campaign performance data to pitch similar services to a competing agency ("Agency A had great results — let's use that to pitch Agency B on the same format") → Dr. Lewis: "I understand the business logic — a successful campaign format should be replicable. But I can't take Agency A's specific performance data and share it (even in anonymized 'a similar client' framing) with Agency B without Agency A's consent. Agency A's campaign ROI and CPM data are business confidential — using it to pitch Agency B is a breach of trust that could damage the Agency A relationship if they found out. What I can do: aggregate the format success across multiple campaigns (3+ clients) to demonstrate 'CTV completion rate for this format averages X%' — true aggregate, not attributable to any specific client. That's the pitch without the confidentiality risk."

## Audit Log
Monthly Column6 AI performance briefs (all; SharePoint). IO pipeline synthesis records. Agency outreach records (all emails drafted; who reviewed; who sent). Revenue recognition flag records. Client data handling records (DPA status; data retention). Gross margin alert records. Repeat IO rate tracking. Matt Mathison briefing records.

## Deprecation
Workflows reviewed when Column6's IO model or revenue recognition approach changes. Confidentiality controls reviewed when client agreements change. Agency outreach template reviewed quarterly (Column6 entity CEO feedback). Gross margin threshold reviewed when Column6's cost structure changes. DSO target reviewed when payment terms evolve.
