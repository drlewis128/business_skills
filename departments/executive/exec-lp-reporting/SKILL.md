---
name: exec-lp-reporting
description: "Build quarterly and annual LP reports for MBL Partners. Use when the user says 'LP report', 'limited partner report', 'investor report', 'quarterly report for LPs', 'quarterly LP report', 'LP update report', 'write the LP report', 'build the LP report', 'investor update', 'LP quarterly update', 'LP communication report', 'LP distribution notice', 'distribution update', 'capital call', 'LP letter', 'limited partner letter', 'portfolio company report for LPs', 'LP annual report', 'annual LP letter', 'what do we send LPs', 'LP package', 'investor package', 'LP reporting requirements', or 'build the investor report'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--type <quarterly|annual|distribution|capital-call>] [--action <draft|review|finalize|send>]"
---

# Exec LP Reporting

Build quarterly and annual LP reports for MBL Partners — delivering the structured, honest, specific reporting that LP relationships require. LP reports at MBL are not marketing documents; they are accountability documents. LPs are partners who have placed capital in Matt Mathison's hands; they deserve a clear picture of how that capital is performing, where the risks are, and what the forward outlook looks like. Vague reports with optimistic language and no specifics erode LP trust faster than honest underperformance.

## When to Use
- Quarterly report due (Q1: April 30; Q2: July 31; Q3: October 31; Q4: January 31 for prior year)
- Annual LP letter (typically sent with Q4 report or separately in February)
- A distribution is being made (distribution notice to all LPs)
- A capital call is required (capital call notice to applicable LPs)
- An LP requests a customized report for their compliance or reporting needs

## LP Reporting Framework

```
QUARTERLY LP REPORT STRUCTURE:

  Cover Letter (Matt Mathison signature):
    □ Date and report period
    □ BLUF: 2-3 sentences on overall portfolio status (candid, specific)
    □ One forward look: what we expect next quarter
    □ Contact information for questions
    
  Section 1 — Portfolio Performance Summary:
    □ Portfolio GRR and NRR (trailing 12 months)
    □ Total capital deployed (inception-to-date + this quarter)
    □ Estimated portfolio value (fair market value or cost basis as applicable)
    □ Any distributions this quarter (amount; date; entity source)
    □ Any capital calls this quarter (if applicable)
    
  Section 2 — Entity Summaries (one page each; no individual entity PHI or competitive data):
  
    Allevio:
      □ Employer group count: [N] (vs. prior quarter [N])
      □ GRR: [X]% (target >90%)
      □ Average claim ratio trend: [Rising/Stable/Declining]
      □ Key win this quarter
      □ Key challenge this quarter (honest)
      □ Forward outlook
      
    HIVE Partners:
      □ Landowner count: [N] (vs. prior quarter [N])
      □ Royalties distributed this quarter: $[X]K
      □ GRR: [X]% (target >85%)
      □ Key win this quarter
      □ Key challenge this quarter (honest)
      □ Forward outlook
      
    Column6:
      □ Active agency relationships: [N] Priority A; [N] Priority B
      □ Average VCR: [X]% (target ≥92%)
      □ GRR: [X]% (target >70%)
      □ Key win this quarter
      □ Key challenge this quarter (honest)
      □ Forward outlook
      
  Section 3 — Investment Activity:
    □ New investments or acquisitions this quarter (if any)
    □ Dispositions or exit activity (if any)
    □ Capital deployment pipeline
    
  Section 4 — Risk and Governance:
    □ Top portfolio-level risks (3 maximum; brief; with mitigation status)
    □ Governance updates (board changes; management team changes)
    □ Regulatory or compliance items (if any)

ANNUAL LP LETTER (sent with Q4 report or separately in February):
  From Matt Mathison; 2-3 pages; narrative format (not tables)
  Structure:
    1. The year in review: what the portfolio did; honest account of wins and misses
    2. What we learned: one specific thing the portfolio did better this year than last
    3. The forward: what we see coming in the next 12-18 months
    4. Our commitment: what MBL is doing to earn continued LP confidence
  Tone: CEO letter voice — conversational, direct, no buzzwords, no spin
  
DISTRIBUTION AND CAPITAL CALL NOTICES:
  Distribution notice (within 5 business days of distribution):
    □ Total amount distributed
    □ Per-LP allocation (included in each LP's individual notice)
    □ Source entity (which company generated the distribution)
    □ Basis for distribution (operating cash flow; sale proceeds; refinancing)
    
  Capital call notice (30 days minimum notice):
    □ Call amount (total; per-LP)
    □ Purpose of the capital call
    □ Wire instructions
    □ Deadline for funding

REPORT QUALITY STANDARDS:
  Specificity check: Every performance statement must have a number.
    Bad: "Allevio performed well this quarter"
    Good: "Allevio employer group GRR was 93% vs. our 90% target"
    
  Candor check: Every report must have at least one honest miss or challenge.
    A report with only wins is a marketing document, not an LP report.
    
  Consistency check: Numbers in the LP report must match the exec-kpi-dashboard.
    Dr. Lewis cross-checks before any report is finalized.
```

## Output Format

```markdown
# MBL Partners — Q[X] [YYYY] Limited Partner Report
**Report period:** [Date range] | **Distribution date:** [Date]
**Prepared by:** Dr. Lewis | **Signed by:** Matt Mathison

---

## Cover Letter

Dear [LP Name],

[BLUF — 2-3 sentences on overall portfolio status. Candid. Specific.]

[Forward look — one sentence on what we expect next quarter.]

[Contact close]

Matt Mathison
Managing Partner, MBL Partners

---

## Portfolio Performance Summary

| Metric | This quarter | Prior quarter | YTD |
|--------|------------|--------------|-----|
| Portfolio NRR | [X]% | [X]% | [X]% |
| Portfolio GRR | [X]% | [X]% | [X]% |
| Capital deployed (quarter) | $[X]M | $[X]M | $[X]M |
| Distributions | $[X]M | — | $[X]M |

---

## Entity Summaries

### Allevio [🟢/🟡/🔴]
[~200 words: performance metrics; win; challenge; forward]

### HIVE Partners [🟢/🟡/🔴]
[~200 words]

### Column6 [🟢/🟡/🔴]
[~200 words]

---

## Investment Activity

[New investments; exits; pipeline commentary]

---

## Risk & Governance

| Risk | Status | Mitigation |
|------|--------|-----------|
| [Risk 1] | 🟢/🟡/🔴 | [What we're doing] |
```

## Output Contract
- All numbers cross-checked against exec-kpi-dashboard before delivery — a number in the LP report that contradicts the management dashboard is a credibility failure; Dr. Lewis runs a data consistency check (LP report numbers vs. exec-kpi-dashboard) before every report is finalized; discrepancies are resolved before delivery, never explained after
- Candor requirement is enforced on every report — before any LP report is sent, Dr. Lewis applies the candor check: is there at least one honest acknowledgment of a miss, challenge, or risk? If the draft reads like a press release with only positive news, Dr. Lewis asks Matt to add an honest context item before delivery; the worst LP relationship outcome is a surprise; candid reporting prevents surprises
- Delivery timing is non-negotiable — Q1: April 30; Q2: July 31; Q3: October 31; Q4/annual: January 31; a late LP report signals disorganization and disrespect for LP time; Dr. Lewis begins report preparation 3 weeks before the deadline with entity CEO input requests; if an entity CEO doesn't provide their section input on time, Dr. Lewis uses the exec-kpi-dashboard data and flags the delay to Matt Mathison
- HITL required: Matt Mathison reviews and signs all LP reports before distribution; Dr. Lewis runs the specificity and candor checks on every draft; entity CEOs review their entity summary before it goes to Matt; Dr. Lewis runs the data consistency check; any distribution notice >$100K requires Matt Mathison explicit approval; capital call notices require Matt Mathison approval before issuance

## System Dependencies
- **Reads from:** exec-kpi-dashboard (entity and portfolio metrics — cross-checked for consistency); exec-portfolio-review (quarterly review data — entity summaries and wins/misses); exec-capital-allocation (capital deployed and distributions for Section 1); exec-investor-relations (prior LP communication and open commitments for consistency check); exec-board-communication (governance updates for Section 4)
- **Writes to:** LP reports (SharePoint/IRRelations/Quarterly/[YYYY]/Q[X]_LPReport_[LP].pdf); annual LP letters (SharePoint/IRRelations/Annual/[YYYY]_AnnualLPLetter.pdf); distribution notices (SharePoint/IRRelations/Distributions/[Date]_DistributionNotice.pdf); capital call notices (SharePoint/IRRelations/CapitalCalls/[Date]_CapitalCallNotice.pdf); exec-investor-relations (report delivery logged in LP call log)
- **HITL Required:** Matt Mathison reviews and signs all reports; Dr. Lewis specificity and candor checks on every draft; entity CEOs review their section; Dr. Lewis data consistency check; distributions >$100K require Matt explicit approval; capital calls require Matt approval before issuance; delivery no later than the deadline for each quarter

## Test Cases
1. **Golden path:** Q2 report; Dr. Lewis sends entity CEO input requests July 8 (3 weeks before deadline); all inputs received by July 15; data consistency check: exec-kpi-dashboard and report numbers match; candor check: Q2 employer group sales miss (70% of plan) included with root cause and management response; specificity check: all performance statements have specific numbers; Matt reviews July 25; one revision: the HIVE forward outlook is vague — Dr. Lewis strengthens with specific Q3 lease renewal numbers; final version delivered July 30 (1 day before deadline); LP who received it: "This is the most specific quarterly report I've seen from a PE manager. Thank you for including the sales miss — it's reassuring that you're honest about it."
2. **Edge case:** Column6 entity CEO hasn't sent input by the July 15 deadline → Dr. Lewis: "I'm building the Column6 section from exec-kpi-dashboard data since the input isn't here. Matt, I'm flagging this — I'll use the dashboard numbers and a generic narrative. [Column6 CEO] should review this draft by July 20 before I include it." Column6 CEO provides a correction on the IO booking velocity number — the dashboard had the prior month's figure; Dr. Lewis updates; Matt notified; report accurate. Dr. Lewis to Column6 CEO: "Next quarter, input is due July 8. If it's late again, I'll use dashboard data and note that the entity CEO's input was not received in time."
3. **Adversarial:** Matt proposes softening the HIVE challenge section: "The landowner churn sounds worse than it is — can we just say 'HIVE is managing its landowner base proactively'?" → Dr. Lewis: "Matt, we churned one landowner with $62K in annual royalties. That's a $62K GRR miss on a small base. 'Managing proactively' doesn't tell the LP what happened. I'd propose: 'HIVE experienced one landowner relationship that did not renew this quarter ($62K in annual royalties). Root cause: the competing operator made an early lease offer that we were not positioned to match. We've updated our competing operator protocol to ensure earlier engagement (cs-landowner-communicator). GRR is 87% vs. our 85% target — still above target despite the loss.' That's honest, has a root cause, has a fix, and still shows we're above target. Would that work?" Matt: "Yes — that's actually better because it shows we're learning."

## Audit Log
All LP reports retained by LP, quarter, and year. Data consistency check records retained. Matt Mathison review and sign-off records retained. Entity CEO input records retained (what was received; when; any corrections). Delivery date records retained. Distribution and capital call notice records retained.

## Deprecation
Retire when MBL has a dedicated Investor Relations function with LP reporting software — with Matt Mathison retaining the cover letter and annual letter authorship and Dr. Lewis retaining the data consistency check and THRIVE Truth review.
