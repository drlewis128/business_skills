---
name: finance-lp-reporting-ops
description: "Prepare LP (limited partner) quarterly financial reports for MBL Partners. Use when the user says 'LP report', 'LP reporting', 'LP communication', 'LP update', 'investor report', 'investor update', 'investor communication', 'limited partner report', 'limited partner update', 'quarterly investor report', 'quarterly LP', 'LP quarterly', 'LP letter', 'investor letter', 'HIVE LP report', 'MBL LP report', 'LP distribution report', 'LP portfolio update', 'fund report', 'fund update', 'LP capital account', 'LP returns', 'LP performance', 'LP transparency', 'what do LPs see', 'what do investors see', 'LP financial summary', 'LP financial report', 'LP financial package', 'LP statement', 'investor statement', 'Matt Mathison LP report', 'LP report approval', 'LP report draft', 'quarterly capital account statement', or 'portfolio update for investors'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--action <prepare|review|distribute>] [--entity <hive|mbl>]"
---

# Finance LP Reporting Ops

Prepare LP (limited partner) quarterly financial reports for MBL Partners — compiling portfolio performance, distributions, NAV updates, and qualitative commentary into a professional LP communication that Matt Mathison reviews and approves before distribution. LP reporting is the primary transparency mechanism between MBL and its investors; accuracy, timeliness, and honest commentary build the LP trust that enables future capital raises.

## When to Use
- Quarterly LP report preparation (Q1: 30 days after quarter end; Q2/Q3/Q4: same)
- Annual LP letter (comprehensive; includes full-year performance summary)
- Special LP communication (major acquisition; distribution; WTI trigger notification)
- Matt Mathison LP report review and approval

## LP Reporting Framework

```
LP REPORTING STRUCTURE (MBL PARTNERS PORTFOLIO):

  MBL has two distinct LP audiences:
  1. HIVE Partners LPs: invested directly in HIVE; receive HIVE-specific quarterly distributions
     and production/financial reporting; receive Schedule K-1 annually
  2. MBL Partners LPs (if MBL has LP investors at the holding company level): receive portfolio-level
     reporting covering all entities; specific structure depends on MBL LP agreements
     Note: confirm with Matt Mathison which LP audience is active and what's required
     
QUARTERLY LP REPORT — HIVE PARTNERS:
  Timing: distributed within 30 days of quarter end
  Matt Mathison reviews and approves before distribution (mandatory)
  
  Report sections:
  1. Cover: period; fund name; prepared by MBL Partners on behalf of HIVE Partners
  2. Executive Summary (BLUF):
     WTI environment this quarter (realized price; vs. $58 trigger; trend)
     Production summary (BOE; vs. budget; decline rate context)
     Distribution (amount; date paid; YTD total distributions)
  3. Production and Revenue:
     BOE production: by month; vs. budget
     Realized WTI price by month
     Royalty income: by property type (aggregate)
     Total revenue: production + royalty
  4. Operating Performance:
     LOE: total; per BOE; vs. $18 benchmark
     G&A: total
     Operating income (pre-D,D&A)
  5. Distribution Section:
     Quarterly distribution: amount; per-unit or per-LP breakdown; payment date
     YTD cumulative distributions
     Prior year same quarter comparison
     Distributable cash calculation (transparent; LPs see the math)
  6. Acquisition Activity:
     If acquisition closed: describe asset; terms; expected returns
     If trigger pause active: "WTI trigger active; no new acquisitions; existing portfolio maintained"
     If no activity: "HIVE evaluated [N] opportunities this quarter; none met return criteria"
  7. Outlook:
     WTI environment commentary
     Production outlook (decline rate; any workovers planned)
     Distribution guidance (if WTI stays at current levels, next quarter distributable cash estimate)
     WTI watch: if approaching trigger, say so explicitly
  8. Capital Account Statement:
     Each LP's: beginning capital account balance + net income allocation + distributions = ending balance
     
ANNUAL LP LETTER (HIVE — by March 15 alongside K-1s):
  Full-year financial summary
  3-year comparison (revenue; LOE; distributions; cumulative return)
  Investment thesis review: are original investment goals on track?
  Matt Mathison signs the annual LP letter personally
  
HIPAA / CONFIDENTIALITY:
  No Allevio clinical data in any LP report
  Financial aggregate data only
  Portfolio company competitive information: described at business category level (not specific strategy)
```

## Output Format

```markdown
# HIVE Partners LP Quarterly Report — Q[N] [Year]
**Distribution date:** [Date] | **Prepared by:** MBL Partners on behalf of HIVE Partners
**Approved by:** Matt Mathison

---

## Q[N] Highlights

**Production:** [N,XXX] BOE ([+/-X%] vs. budget) | **Realized WTI:** $X.XX/bbl
**Quarterly Distribution:** $X per unit (paid [Date])
**WTI Status:** [Above / Approaching / BELOW $58 acquisition threshold]

---

[Full report content per sections above]

---

*This report is confidential and intended solely for HIVE Partners limited partners.*
```

## Output Contract
- The WTI trigger is reported to LPs every quarter without exception — whether WTI is $78 (well above trigger), $62 (normal), $61 (approaching), or $54 (trigger active), the LP report includes a WTI status line; LP reports that include the WTI price and an explicit statement about the acquisition trigger give LPs the information they need to understand HIVE's strategy without needing to call Matt Mathison; LPs who are informed quarterly about WTI context make better LP decisions and trust management's discipline more than LPs who only hear about the WTI trigger when it fires; transparency is the policy — not just when things are good
- Distribution transparency is the LP relationship's most important trust signal — the LP report shows LPs the full distributable cash calculation (how the distribution was calculated, not just what they received); when LPs can see that distributable cash = production revenue + royalty income - LOE - G&A - operating reserve, they understand why a lower WTI quarter produces a lower distribution; they don't feel surprised or misled; they see that the management team is applying a consistent, documented methodology; this transparency is the reason LPs reinvest in HIVE and refer other LPs to MBL — it is the most valuable relationship asset Dr. Lewis can build at no cost
- HITL required: Matt Mathison reviews every LP report before distribution (mandatory; no LP communication goes out without Matt Mathison approval); annual LP letter → Matt Mathison signs personally; special LP communication (trigger notification; major acquisition) → Matt Mathison reviews and approves same day; K-1s → Dr. Lewis + CPA prepare; Dr. Lewis distributes after CPA confirms; capital account statements → Dr. Lewis prepares + Matt Mathison approves; any LP question or inquiry → Matt Mathison handles; LP distribution → finance-hive-lp-distribution skill executes; no LP communication goes out without Matt Mathison approval

## System Dependencies
- **Reads from:** Finance-hive-lp-distribution (quarterly distribution amount and calculation); finance-hive-production-financials (production; revenue; LOE; operating income for quarter); finance-hive-royalty-tracker (royalty income for quarter); finance-portfolio-valuation (HIVE PV10; NAV for portfolio-level LP reporting); Covercy (LP capital account records; distribution history); HIVE partnership agreement (LP capital account methodology; distribution waterfall)
- **Writes to:** LP quarterly reports (SharePoint → HIVE → LPs → Reports → [Quarter]); Matt Mathison review package; LP email distribution list (Covercy or direct); K-1 distribution records; capital account statement records; annual LP letter; Matt Mathison approval records
- **HITL Required:** Matt Mathison reviews every LP report (mandatory); annual LP letter → Matt Mathison signs personally; special communications → Matt Mathison same-day; K-1 → Dr. Lewis + CPA; distribution → finance-hive-lp-distribution; capital accounts → Matt Mathison approves; LP inquiries → Matt Mathison handles

## Test Cases
1. **Golden path:** HIVE Q2 2026 LP report (distributed July 28). Production: 4,100 BOE (budget 4,000; +2.5% ✅). Realized WTI: $63.50/bbl. Royalty income: $43,800. Total revenue: $246,771. LOE: $64,580 ($15.75/BOE ✅). G&A: $22,400. Operating income: $159,791. Q2 distribution: $286,000 (from finance-hive-lp-distribution distributable cash). WTI status: "$63.50/bbl — above $58 acquisition threshold; HIVE in active acquisition mode." No acquisitions this quarter. Outlook: "WTI has been stable in the $61-66 range. At current production levels and WTI, Q3 distributable cash estimated at $270-310K pending WTI movement. No trigger activity expected at current prices." Dr. Lewis prepares draft July 22. Matt Mathison reviews July 24; approves. Capital account statements prepared. Report distributed July 28 via email (confirmed by Covercy send). All 4 LPs confirmed receipt by August 1.
2. **Edge case:** WTI trigger fires 3 days before the LP report is due (HIVE goes into acquisition pause mode) → Dr. Lewis: "With the WTI trigger now active, the Q3 LP report needs to include a clear explanation of the pause. I'll add a section: 'HIVE Acquisition Pause — Effective [Date]': WTI realized $57.20/bbl for two consecutive weeks as of [Date]. Per HIVE's investment policy, new acquisition commitments are paused at this threshold. HIVE's existing portfolio continues normal operations (production; LOE; royalty collections; distributions where distributable cash threshold is met). We will notify LPs immediately when the trigger lifts. This is a PAUSE, not an exit from the acquisition program — HIVE is monitoring WTI closely and will resume acquisitions when WTI exceeds $58/bbl for two consecutive weeks. This section goes in front of Matt Mathison for his review and language approval before I distribute."
3. **Adversarial:** An LP calls Dr. Lewis directly to ask about a rumored acquisition that was discussed at a social event → Dr. Lewis: "I appreciate you reaching out. HIVE's LP communications go through Matt Mathison, and any questions about acquisition strategy, unreported transactions, or strategy changes should be directed to him. I'm the financial operations lead — I prepare the LP reports and distributions, but I'm not the right contact for LP inquiries about strategy. I'll let Matt Mathison know you called and that you have a question, and he'll reach out to you directly. For anything urgent, his direct contact is [provided by Matt Mathison]. I want to make sure you get accurate information from the right source."

## Audit Log
Quarterly LP report records (permanent; all periods). Matt Mathison review and approval records. LP distribution confirmation records. LP email distribution records (recipients; date; confirmation). Annual LP letter records. K-1 distribution records. Capital account statement records. Special LP communication records (trigger notifications; acquisition announcements). LP inquiry records (redirected to Matt Mathison).

## Deprecation
LP report format reviewed annually. Distribution disclosure methodology reviewed when LP agreement terms change. WTI trigger communication language reviewed annually. HIVE partnership agreement reporting requirements reviewed when agreements are amended. Capital account methodology reviewed with CPA annually. Annual LP letter format reviewed when Matt Mathison's communication preferences change.
