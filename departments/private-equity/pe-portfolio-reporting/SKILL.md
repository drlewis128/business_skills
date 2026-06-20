---
name: pe-portfolio-reporting
description: "Produce portfolio company reporting packages for MBL Partners board and LP audiences. Use when the user says 'portfolio report', 'portfolio reporting', 'portfolio company report', 'entity report', 'entity reporting', 'board report', 'board package portfolio', 'LP report portfolio', 'LP portfolio update', 'portfolio company update', 'company update', 'Allevio update', 'HIVE update', 'Column6 update', 'portfolio narrative', 'portfolio company narrative', 'company narrative', 'write up', 'company write-up', 'entity write-up', 'entity summary', 'portfolio summary', 'executive summary portfolio', 'quarterly company report', 'monthly company report', 'annual company report', 'portfolio company section', 'LP report company section', 'quarterly company update', 'annual company update', 'board company update', 'portfolio operating metrics', 'portfolio company financials', 'company financial report', or 'company progress report'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|all>] [--audience <board|lp|internal>] [--period <monthly|quarterly|annual>] [--action <draft|review|finalize|deliver>]"
---

# PE Portfolio Reporting

Produce portfolio company reporting packages for MBL Partners board and LP audiences — writing the entity narratives for quarterly LP reports, board packages, and annual fund reports. Portfolio company reporting translates the entity KPI data into a clear, honest, BLUF narrative that tells LPs and board members what has happened, why it happened, and what MBL is doing about it. Good portfolio reporting builds LP trust; bad portfolio reporting (always positive, never admits challenges, avoids specifics) trains LPs to discount the reports and creates surprise when problems eventually surface. Matt Mathison reviews and approves all portfolio company reporting before it is shared with LPs.

## When to Use
- Quarterly LP report portfolio company sections due
- Annual fund report entity narratives
- Board package portfolio company updates
- An entity had a significant event (positive or negative) that requires a written update

## Portfolio Reporting Framework

```
REPORTING PRINCIPLES (apply to all audiences):

  BLUF: Bottom Line Up Front — lead with the key message, not the setup
  Truth: accurate; no sugarcoating; no burying bad news in footnotes
  Specific: use actual numbers, not vague descriptors ("strong quarter" means nothing)
  Forward-looking: what is MBL doing about what's happening?
  HIPAA: Allevio reporting is aggregate/de-identified — no PHI to any external audience

ENTITY REPORTING STRUCTURE (per entity; per quarter):

  SECTION 1 — HEADLINE (1 sentence):
    [Entity] had a [strong/solid/challenging/difficult] quarter — lead with the reality

  SECTION 2 — FINANCIAL PERFORMANCE (2-3 sentences):
    Revenue: $[X] (vs. $[X] budget; vs. $[X] prior quarter; vs. $[X] prior year)
    EBITDA: $[X] and $[X]M margin (vs. budget; vs. prior)
    Key variance explanation: [specific reason for any >5% variance]
    
  SECTION 3 — OPERATIONAL METRICS / NORTH STAR (3-4 bullets):
    Each entity's North Star metric and secondary metrics
    
    ALLEVIO (aggregate data only — no PHI):
      Employer GRR: [X%] (target ≥91%) — [improving/stable/declining]
      Claim ratio: [X%] (target ≤87%) — [improving/stable/declining]
      Employer group count: [N] total; [N] new; [N] renewing
      DSO: [N] days (target ≤35 days)
      
    HIVE:
      Landowner GRR: [X%] (target ≥85%) — [improving/stable/declining]
      Royalty revenue: $[X] (vs. prior quarter; WTI at $[X]/bbl)
      Net royalty acreage: [N] NRA (growth from entry: +[N]%)
      DSO: [N] days (target ≤45 days)
      
    COLUMN6:
      Agency NRR: [X%] (target ≥95%)
      VCR: [X%] (target ≥92%)
      IVT rate: [X%] (target <2%)
      Active agencies: [N]
      DSO: [N] days (target ≤55 days)
      
  SECTION 4 — VALUE CREATION UPDATE (2-3 bullets):
    Progress on top 2-3 VCP initiatives this quarter
    Any new initiatives launched
    Any initiatives completed (with financial impact)
    
  SECTION 5 — RISKS AND OUTLOOK (1-2 sentences):
    Primary risk to the business this quarter
    Outlook: on track; ahead of thesis; behind thesis — and what MBL is doing

AUDIENCE-SPECIFIC ADJUSTMENTS:

  BOARD PACKAGE:
    Detailed financial tables (monthly actuals; budget; prior year)
    Full VCP initiative tracker
    CEO performance assessment summary
    Covenant compliance status
    Forward-looking financial projections (next quarter)
    
  LP QUARTERLY REPORT:
    Condensed (1 page per entity maximum)
    Financial summary + North Star metrics + key initiative progress + outlook
    No individual customer names; no employee names; no transaction details (LP confidentiality)
    No PHI from Allevio (all aggregate data)
    Matt Mathison reviews and approves before LP distribution
    
  ANNUAL FUND REPORT:
    Full-year financial performance
    Value creation: year 1/2/3 progress against entry thesis
    Management team assessment (narrative; no details on individuals)
    Investment performance: MOIC-to-date; IRR-to-date; FMV vs. cost basis

NEGATIVE EVENT REPORTING:

  PRINCIPLE: Disclose proactively; explain the cause; describe the response
  
  BAD NEWS REPORTING FORMAT:
    What happened: specific; no euphemisms
    Why it happened: root cause analysis (not excuses)
    What MBL is doing: specific actions; timeline; who is accountable
    Impact on thesis: does this change the exit timeline? the return expectation?
    
  NEVER:
    "One-time event" label for something that may recur
    Bury the bad news in the middle of positive information
    Describe a management failure as an "industry headwind"
    Promise a recovery without specific data to support it
```

## Output Format

```markdown
# [Entity Name] — Quarterly Report — Q[N] [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison | **Audience:** [Board / LP]

---

## Q[N] Headline
[One sentence: entity had a strong/challenging quarter because ___.]

---

## Financial Performance

| | Q[N] Actual | Q[N] Budget | Q[N-1] Actual | Variance vs. budget |
|-|------------|------------|--------------|---------------------|
| Revenue | $[X] | $[X] | $[X] | [+/-X%] |
| EBITDA | $[X] | $[X] | $[X] | [+/-X%] |
| EBITDA margin | [X%] | [X%] | [X%] | |

**Variance explanation:** [Specific reason for any >5% variance]

---

## North Star Metrics

| Metric | Target | Q[N] Actual | Q[N-1] | Trend |
|--------|--------|------------|--------|-------|
| [North Star 1] | [target] | [actual] | [prior] | ↑/↔/↓ |

---

## Value Creation Update

- **[Initiative 1]:** [Specific progress: numbers, not descriptions]
- **[Initiative 2]:** [Status + financial impact YTD]

---

## Risks and Outlook

**Primary risk:** [Specific risk; probability; mitigation action]
**Outlook:** [On track / Ahead of thesis / Behind thesis] — [one sentence on what drives the outlook]
```

## Output Contract
- LP reports use specific numbers, not qualitative descriptions — "revenue grew strongly in Q2" tells an LP nothing they can use; "$4.2M revenue in Q2, +18% vs. Q2 prior year, +3% vs. budget" tells them everything; every financial claim in an LP report is supported by a specific number; every qualitative statement ("strong employer retention") is followed by the number that supports it ("91.8% employer GRR, above our 91% target"); LPs are sophisticated investors who can read numbers — give them the numbers
- Allevio reporting is aggregate and de-identified to every external audience — board reports, LP reports, and annual fund reports all follow the same rule: Allevio data is financial/operational aggregate data; "member count" is a total enrollment number; "claim ratio" is a PMPM aggregate financial ratio; no individual member data, no clinical information, no procedure codes, no diagnosis codes appear in any external document; if an LP asks for member-level data, the answer is "that is PHI and not available — here is the aggregate data that addresses your question"
- Negative events are disclosed proactively and specifically — the worst portfolio reporting outcome is an LP receiving a quarterly report that describes solid performance, followed by a capital call notice for a bridge loan because the entity ran out of cash; honest reporting of challenges, even when uncomfortable, builds LP trust over the life of the fund; LPs who feel informed and respected will be more patient when problems require time to resolve; LPs who are surprised are angry and often become adversarial; Dr. Lewis drafts the negative event section first and lets the positive sections follow — the report earns credibility by addressing the bad news directly
- HITL required: every LP report → Matt Mathison reviews and approves before distribution; board package → Matt Mathison reviews and approves; any report disclosing a negative event → Matt Mathison approves the language (tone and content); Allevio section of any report → HIPAA compliance review (no PHI) before distribution; first report for a new LP → Matt Mathison reviews format and content; annual fund report → Matt Mathison approves

## System Dependencies
- **Reads from:** pe-portfolio-kpi-dashboard (entity financial and operational metrics); pe-value-creation-tracker (VCP initiative progress); pe-portfolio-health-monitor (health scores and risk flags); pe-covenant-compliance (debt compliance status for board reporting); pe-fund-accounting (FMV; MOIC; IRR for fund reports); pe-lp-quarterly-report (delivers the final report to LPs)
- **Writes to:** Quarterly LP report sections (pe-lp-quarterly-report pulls from this); Board package entity sections; Annual fund report entity sections; SharePoint → Portfolio → Reporting → [Entity] → [YYYY-QN]; Matt Mathison for review before distribution
- **HITL Required:** Every LP report → Matt review and approval; board package → Matt review and approval; negative event disclosure → Matt approves language; Allevio HIPAA compliance → review before distribution; new LP first report → Matt reviews format; annual fund report → Matt approves

## Test Cases
1. **Golden path:** Q3 Allevio LP report section. Revenue: $4.2M (+18% YoY; +3% vs. budget). EBITDA: $1.1M (26% margin; on budget). Employer GRR: 91.8% (above 91% target). Claim ratio: 85.4% (below 87% target — favorable). DSO: 31 days (below 35 target). VCP progress: employer group expansion — 2 of planned 5 new groups signed; 2 pending in late-stage discussions; 1 deferred to Q4 due to employer benefits cycle. Risks: employer group expansion behind plan, but late-stage pipeline gives confidence in full-year target. Outlook: on track. Draft reviewed by Matt Mathison; approved with one word change. Delivered with LP quarterly report.
2. **Edge case:** HIVE has a quarter where WTI dropped to $61/bbl (near the $58 pause trigger), royalty revenue is 8% below budget, and one operator had a production curtailment → Dr. Lewis: "HIVE quarterly report draft: Q3 was a challenging quarter. WTI averaged $61/bbl, 5% below our budget assumption of $64/bbl, reducing royalty revenue by approximately $[X]. One operator ([Operator]) curtailed production for 6 weeks due to a pipeline capacity constraint that has since been resolved. Revenue: $[X] (-8% vs. budget). EBITDA: $[X] (-11% vs. budget). Landowner GRR remains strong at 88.2%. Outlook: WTI has recovered to $[X] in early Q4; production is back to normal levels. Q4 revenue is expected to recover to budget. We are watching WTI closely — our $58/bbl pause threshold remains the governing constraint for any new royalty acquisitions." Matt reviews draft; approves.
3. **Adversarial:** An LP contacts Dr. Lewis directly asking for a more detailed breakdown of Allevio member demographics and clinical utilization data → Dr. Lewis: "I appreciate the interest in Allevio's performance. The data you're requesting — member demographics and individual clinical utilization — is Protected Health Information (PHI) under HIPAA, and MBL Partners does not disclose PHI to any party outside of the clinical relationship, regardless of their investor status. This is an absolute constraint, not a choice. What I can provide is the aggregate operational data that is already in your quarterly report (employer GRR; claim ratio; member count; PMPM economics) plus any additional aggregate data that would help you understand the business economics. If you're evaluating the claim ratio trend or employer retention economics, I'm happy to walk through the aggregate data with you in more detail."

## Audit Log
All quarterly and annual reports retained (with Matt Mathison approval date; distribution date; LP receipt confirmation). Negative event reporting documentation retained. HIPAA compliance review records retained (Allevio sections). LP report delivery records retained. Draft and revision history retained.

## Deprecation
Portfolio reporting is active for the life of each fund investment. Entity reporting is retired at exit. Reporting format is reviewed annually based on ILPA standards and LP feedback.
