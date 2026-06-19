---
name: ops-lp-relations
description: "Manage LP relationship communications and operational reporting for MBL Partners. Use when the user says 'LP', 'limited partner', 'limited partners', 'LP relations', 'LP relationship', 'LP communication', 'LP reporting', 'LP update', 'LP quarterly report', 'LP quarterly update', 'LP letter', 'investor letter', 'investor relations', 'investor communication', 'investor update', 'investor reporting', 'capital call', 'distribution', 'LP distribution', 'LP capital call', 'LP notice', 'LP inquiry', 'LP question', 'LP meeting', 'LP annual meeting', 'LP annual review', 'LP observer', 'LP observer rights', 'fund reporting', 'fund update', 'fund performance', 'portfolio update to investors', 'portfolio performance update', 'NAV', 'net asset value', 'TVPI', 'MOIC', 'IRR', 'DPI', 'gross return', 'net return', 'fund metrics', 'investor metrics', 'LP onboarding', 'new LP', 'LP agreement', 'LPA', or 'limited partnership agreement'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--action <quarterly-report|capital-call|distribution|inquiry|annual-meeting|onboard>] [--audience <all-lps|specific-lp>] [--period <Q1|Q2|Q3|Q4|annual>] [--entity <mbl|allevio|hive|column6>]"
---

# Ops LP Relations

Manage LP (Limited Partner) relationship communications and operational reporting for MBL Partners — preparing the quarterly LP report, coordinating capital calls and distributions, responding to LP inquiries, and maintaining the professional communication standards that LP relationships require. LP relations is a fiduciary and reputational function: LPs have trusted MBL Partners with their capital; they are entitled to accurate, timely, and honest reporting on the performance of their investment; how MBL communicates with LPs during difficult periods — when the portfolio underperforms, when a business faces a crisis, when a distribution is delayed — is as important as the communication during good periods; LP trust, once lost, is extremely difficult to rebuild. Dr. Lewis manages the operational mechanics of LP communications; Matt Mathison owns the LP relationship and approves all material LP communications before they are sent.

## When to Use
- Quarterly LP report is due
- A capital call or distribution notice needs to be issued
- An LP submits a question or inquiry
- An LP observer attends a board meeting (coordination required)
- A portfolio event occurs that is material to LP reporting

## LP Relations Framework

```
MBL LP REPORTING STANDARDS:

  ACCURACY BEFORE SPEED:
    All financial data in LP reports is validated before the report is sent
    Source: fin-entity-consolidation; QuickBooks; Covercy (HIVE)
    Dr. Lewis validates numbers; Matt Mathison approves the report
    An LP report with a corrected restatement is a credibility problem — prevent it
    
  HONEST PERFORMANCE REPORTING:
    TVPI/MOIC/DPI/IRR reported as calculated — not adjusted for optimism
    Underperforming entities reported honestly with a clear improvement plan
    If the fund is underperforming the benchmark, the LP report says so and explains why
    THRIVE Truth principle: LPs read between the lines; spin erodes trust faster than bad news
    
  DISCLOSURE TIMING:
    Material events (bankruptcy; fraud; major impairment) → LP notification within 5 business days
    Standard quarterly update → within 30 days of quarter-end
    Capital calls → minimum 10 business days notice (per LPA; verify per fund)
    Distributions → minimum 5 business days notice (per LPA; verify per fund)

QUARTERLY LP REPORT STRUCTURE:

  SECTION 1: Fund Performance Overview
    Gross TVPI; Net TVPI; Gross IRR; Net IRR; DPI
    Source: fund-level financial model (confirmed against QuickBooks)
    Benchmark comparison: fund IRR vs. relevant PE benchmark (DealEdge; Preqin)
    Period: as-of quarter-end
    
  SECTION 2: Portfolio Company Updates
    One page per portfolio company (MBL Partners standard)
    Format per entity:
      Business overview (1 paragraph — no changes if business is stable)
      Key financial metrics (revenue; EBITDA; cash — QoQ and YoY)
      North Star KPI performance (entity-specific KPI from the entity's scorecard)
      Strategic highlights this quarter (2-3 bullets)
      Key risks and mitigants (honest; no omissions)
    HIPAA REQUIREMENT (Allevio): Allevio section uses aggregate financial and operational data only; no PHI; no member-level data; member counts are aggregate (not individual-identifiable)
    
  SECTION 3: Capital Deployed and Pending
    Capital deployed since last report (new investments; follow-on)
    Capital committed but not yet deployed (signed LOIs; pending closings)
    Dry powder remaining in fund
    
  SECTION 4: Market and Industry Commentary (optional; per Matt's direction)
    Brief (1-2 pages) commentary on the portfolio's target markets
    For MBL entities: healthcare (Allevio); energy/royalties (HIVE); CTV/ad-tech (Column6)
    
  SECTION 5: Outlook
    Portfolio-level priorities for next quarter
    No overpromising; no speculative projections without basis

CAPITAL CALLS AND DISTRIBUTIONS:

  CAPITAL CALL PROCESS:
    Trigger: LP Agreement defines when capital calls are permitted
    Notice: minimum 10 business days (verify per LPA)
    Notice must include: amount; purpose; bank instructions; deadline
    Matt Mathison approves every capital call notice before it is sent
    Bank instructions verified at every capital call (fraud prevention)
    
  DISTRIBUTION PROCESS:
    Trigger: fund waterfall and distribution schedule (per LPA)
    Notice: minimum 5 business days (verify per LPA)
    Notice must include: gross distribution amount; net of taxes (if applicable); bank instructions
    Distribution schedule confirmed from QuickBooks and fund waterfall model
    Matt Mathison approves every distribution notice before it is sent
    All distributions are recorded in QuickBooks immediately

LP INQUIRY MANAGEMENT:

  RESPONSE PROTOCOL:
    All LP inquiries acknowledged within 24 hours (even if the answer requires more time)
    Substantive response within 5 business days
    Matt Mathison reviews all substantive LP responses before sending
    
  INQUIRIES THAT REQUIRE IMMEDIATE ESCALATION TO MATT MATHISON:
    Inquiries about fund-level legal or compliance matters
    Inquiries indicating an LP is considering transferring or selling their interest
    Inquiries indicating an LP is unhappy with the fund's performance or management
    Inquiries from LP counsel (not the LP themselves)
    
  WHAT IS NOT SHARED WITH LPS:
    Individual employee information
    Entity legal dispute details before resolution (check with counsel)
    Forward projections not supported by the financial model
    PHI at Allevio (ever)
    Any information about other LPs or their interests
```

## Output Format

```markdown
# LP Quarterly Report — [Fund Name] — Q[N] [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison | **Distributed:** [Date]
**CONFIDENTIAL — For Limited Partners Only**

---

## Fund Performance Summary — As of [Quarter-End Date]

| Metric | Current | Prior Quarter | Inception |
|--------|---------|--------------|---------|
| Gross TVPI | [X.Xx] | [X.Xx] | — |
| Net TVPI | [X.Xx] | [X.Xx] | — |
| Gross IRR | [X.X%] | [X.X%] | — |
| Net IRR | [X.X%] | [X.X%] | — |
| DPI | [X.Xx] | [X.Xx] | — |

**Capital Called:** $[X]M | **Distributions to Date:** $[X]M | **Dry Powder:** $[X]M

---

## Portfolio Company Updates

### [Entity 1]
[One-page update per entity]

---

## Capital Activity This Quarter
[Capital calls and distributions summary]

---

## Outlook
[Portfolio priorities for next quarter]
```

## Output Contract
- All LP reports are approved by Matt Mathison before distribution — no LP report, capital call notice, or distribution notice is sent without Matt Mathison's explicit approval; Dr. Lewis prepares the materials and presents them to Matt with a recommendation; Matt approves (or requests revisions); only then does Dr. Lewis send; the LP relationship is Matt Mathison's relationship; Dr. Lewis manages the operational mechanics but does not own the LP communication itself; this is not a bureaucratic requirement — it is a fiduciary and reputational requirement; a mistake in an LP report (wrong numbers; wrong disclosure) cannot be unsent
- Performance reporting is not adjusted for optimism — if the fund is at a 1.1x TVPI in year 4 of a 5-year fund life, the LP report says 1.1x TVPI; it does not frame 1.1x as "on track" without a clear and credible plan for how value creation between now and exit will drive that multiple to a competitive return; LPs are sophisticated investors who have seen every form of narrative management; the only trust-building behavior is honest reporting with a clear-eyed action plan; Dr. Lewis enforces this standard and will not prepare an LP report that he believes misrepresents the fund's performance trajectory
- LP inquiries are escalated before responding — every LP inquiry comes to Dr. Lewis first; if the inquiry is routine (document request; calculation question; bank detail update), Dr. Lewis drafts a response and sends it after Matt's review; if the inquiry touches on fund legal matters; LP satisfaction; LP interest transfer; or LP counsel involvement, the inquiry is escalated to Matt Mathison before any response is prepared; responding incorrectly to a sensitive LP inquiry can create legal exposure or worsen an already strained LP relationship; the safe default is: acknowledge in 24 hours; escalate to Matt; prepare the response together
- HITL required: every LP report → Matt Mathison approval before distribution; every capital call notice → Matt Mathison approval (and legal review for compliance with LPA notice requirements); every distribution notice → Matt Mathison approval; any LP inquiry touching legal, satisfaction, or interest transfer → Matt Mathison involvement before response; LP observer coordination for board meetings → ops-board-coordinator + Matt awareness; any restatement or correction to a prior LP report → Matt Mathison + legal review; material event disclosure (impairment, fraud, bankruptcy) → Matt Mathison + legal within 5 business days

## System Dependencies
- **Reads from:** fin-entity-consolidation (portfolio financial data for quarterly report); fund waterfall model (distribution calculations); QuickBooks (capital call and distribution records); ops-board-coordinator (LP observer board meeting coordination); LPA (Limited Partnership Agreement — notice requirements; distribution waterfall; disclosure obligations)
- **Writes to:** LP quarterly reports (SharePoint → Governance → LPReporting → [YYYY] → Q[N]); capital call notices (Matt approval required before send); distribution notices (Matt approval required before send); LP inquiry responses (Matt review required); LP communication log (all LP contacts logged with date; topic; response)
- **HITL Required:** All LP reports → Matt approval; capital call notices → Matt approval + LPA notice period compliance; distribution notices → Matt approval; legal inquiry responses → Matt + legal; material event disclosures → Matt + legal within 5 days; corrections/restatements → Matt + legal; LP observer board access → ops-board-coordinator coordination

## Test Cases
1. **Golden path:** Q2 report due. Dr. Lewis pulls: (1) fund performance metrics from the fund model (TVPI, IRR, DPI — all verified against QuickBooks); (2) entity-level financial summaries from fin-entity-consolidation (revenue; EBITDA; cash — QoQ change confirmed); (3) North Star KPIs for each entity (Allevio GRR; HIVE landowner GRR; Column6 agency NRR — aggregate only, no PHI). Assembles the 12-page report. Presents to Matt Mathison: "Q2 LP report is ready for your review. Key call-out: Allevio's claim ratio is 89.1% (above 87% target) — I've drafted an honest explanation and the clinical team's improvement plan. The fund metrics are accurate. Recommend sending by [date]." Matt reviews; approves with one revision to the Allevio language. Dr. Lewis sends to all LPs with the cover email Matt drafts.
2. **Edge case:** An LP emails asking "Why is Column6's revenue declining — is there something wrong with the business?" → Dr. Lewis: "Escalating to Matt before responding. This inquiry is asking us to characterize Column6's performance trajectory — it warrants a careful, accurate response. I'll draft two response options: (a) If Column6's revenue is genuinely facing a headwind: honest explanation with the management team's action plan; (b) If the LP is reading a seasonal pattern as a decline: clarify with data. Matt — which version fits our current view of Column6? I'll have the draft ready in 24 hours; we should respond substantively within 5 business days." Matt reviews and approves the response.
3. **Adversarial:** An LP asks for individual employee names and compensation data for the Allevio management team, arguing it is their right as an LP to know → Dr. Lewis to Matt: "I've received an LP request for employee-level data at Allevio. This is unusual and I want to handle it carefully. LPA review first: do our LP agreements provide this disclosure right? If not, we decline with reference to the LPA. If there is an argument for this right, we need legal counsel review before any response. I recommend declining unless the LPA explicitly requires it, on the basis that: (1) individual compensation data is sensitive employee information; (2) we don't have precedent for this request; (3) the LP does not have an employment relationship with Allevio employees. I'm not responding until we've reviewed the LPA and you've approved the response language."

## Audit Log
All LP reports retained (with distribution dates; version before and after Matt's review). Capital call notices retained (with Matt's approval; LPA notice period confirmation; response confirmations from LPs). Distribution notices retained. LP inquiry log retained (date; LP name; topic; response; Matt's involvement). Material event disclosures retained. LP communication log retained indefinitely (fiduciary record).

## Deprecation
LP relations is a permanent obligation for as long as MBL Partners has active funds with LP commitments. This skill is maintained for the life of each fund and updated whenever the LPA terms change or the fund reporting format evolves.
