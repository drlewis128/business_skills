---
name: sales-hive-lp-relations
description: "Manage HIVE Partners LP (Limited Partner) relationships and communications. Use when the user says 'LP relations', 'LP relationship', 'LP communication', 'limited partner', 'limited partners', 'HIVE LP', 'HIVE investors', 'HIVE fund', 'HIVE capital', 'LP update', 'LP report', 'LP letter', 'quarterly LP update', 'investor update', 'investor relations', 'investor communication', 'investor letter', 'LP meeting', 'investor meeting', 'capital call', 'distribution', 'LP distribution', 'HIVE distribution', 'LP returns', 'investor returns', 'HIVE returns', 'oil and gas returns', 'royalty returns', 'NRI returns', 'LP questions', 'LP inquiry', 'LP concern', 'LP onboarding', 'new LP', 'LP agreement', 'LP commitment', 'Covercy LP', 'Covercy distributions', 'LP portal', 'LP reporting', 'Matt Mathison LP', or 'HIVE fund management'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--action <update|report|distribution|meeting|onboarding>] [--period <monthly|quarterly|annual>]"
---

# Sales HIVE LP Relations

Manage HIVE Partners LP (Limited Partner) relationships and communications — producing accurate, timely, and professional investor communications that maintain LP trust and support HIVE's ongoing capital deployment. LP relations is Matt Mathison's relationship; Dr. Lewis provides operational support (data accuracy; report production; distribution coordination). Every LP communication reflects on HIVE's reputation and Matt Mathison's credibility with investors.

## When to Use
- Producing quarterly LP update reports
- Preparing for LP meetings or calls
- Coordinating distribution calculations and payments through Covercy
- Onboarding a new LP to the HIVE fund

## HIVE LP Relations Framework

```
ROLE CLARITY:
  Matt Mathison: LP relationship owner; responsible for LP trust and capital management
  Dr. Lewis: operational support — data accuracy; report production; Covercy coordination; distribution calculations
  Entity CEO (HIVE): reports to Matt Mathison on operations; provides data for LP reports
  LPs: passive investors; do NOT have access to MBL's other portfolio company information
  
HIVE LP COMMUNICATIONS CALENDAR:
  Monthly: Covercy distributions (if applicable); production/revenue summary
  Quarterly: LP update letter; portfolio performance; distributions processed; forward outlook
  Annually: year-end report; tax documents (K-1s via Covercy or entity accountant)
  As-needed: acquisition announcements; material changes in operations or WTI outlook
  
LP UPDATE LETTER (quarterly):
  Format: 1-2 pages; professional; HIVE Partners letterhead
  Matt Mathison reviews and signs before sending
  Content:
    WTI price summary for the quarter: avg price; range; closing; trend
    Production update: BOE produced in the quarter (aggregate portfolio; not asset-by-asset without LP authorization)
    Revenue summary: gross royalty revenue in the quarter (from Covercy data)
    Distributions: amount distributed to LPs in the quarter; per-unit distribution if applicable
    Portfolio activity: any acquisitions completed or in due diligence (non-confidential summary)
    Forward outlook: WTI expectations; acquisition pipeline commentary (non-confidential)
    WTI trigger disclosure: "HIVE has established an acquisition pause trigger at WTI <$58/bbl for 2+ consecutive weeks — this threshold was not triggered in Q[N]" (or: "This threshold was triggered on [date]; new acquisition LOIs were paused; [update on status]")
    
  LP UPDATE MUST NOT include:
    Individual employee data (no Allevio data in HIVE report)
    Other portfolio company performance data (LP isolation)
    Speculative projections presented as commitments
    Asset-specific information that could identify counterparty negotiating positions
    
COVERCY — LP DISTRIBUTION PROCESS:
  Covercy is the system of record for HIVE LP distributions and returns
  Monthly production data: operator statements → Dr. Lewis or entity CEO enters in Covercy
  Distribution calculation: gross royalty revenue × NRI% × distribution percentage → net LP payment
  Distributions: processed through Covercy; Matt Mathison authorizes each distribution run
  Distribution threshold: Matt Mathison sets minimum distribution amount per quarter
  Tax reporting: K-1 documents generated annually through Covercy or entity accountant
  
LP MEETING PREPARATION:
  Frequency: annual LP meeting (minimum); additional calls if LP requests or material event occurs
  Matt Mathison leads; Dr. Lewis may prepare materials; entity CEO may present operations section
  Agenda (annual meeting):
    Year-end financial summary (revenue; distributions; portfolio value)
    Acquisition activity and pipeline (non-confidential)
    WTI market commentary
    Forward strategy
    Q&A
    
  Pre-meeting: Dr. Lewis prepares a briefing document for Matt Mathison
    LP profiles: who is attending; their investment size; any prior concerns or questions
    Data accuracy check: all Covercy data verified before meeting
    WTI trigger history: was the trigger fired this year? Decision and outcome documented
    Anticipated questions: what LPs are likely to ask; recommended responses
    
NEW LP ONBOARDING:
  Matt Mathison manages LP recruiting; Dr. Lewis provides operational support
  LP agreement: legal review before execution; Matt Mathison + legal execute
  LP onboarding in Covercy: Dr. Lewis coordinates with Covercy support for LP portal access
  First distribution: LP receives first quarterly distribution after go-live in Covercy
  Confirmation: Dr. Lewis confirms Covercy portal access with new LP; Matt Mathison introduces
  
LP INQUIRY MANAGEMENT:
  LP questions: LPs may send questions via email or through the Covercy portal
  Response owner: Matt Mathison (for relationship-level questions); Dr. Lewis (for data/operations questions with Matt Mathison's knowledge)
  Response time: within 2 business days for routine questions; same day for urgent/material questions
  Material questions: if an LP raises a concern about fund operations, litigation, or significant performance change → Matt Mathison must respond personally; Dr. Lewis does not respond on behalf of Matt Mathison without his explicit authorization
  
LP DATA ISOLATION:
  HIVE LP information does NOT cross into other entities
  LP contact information: in Covercy (HIVE) — NOT in GHL (which is used for Allevio/Column6 sales)
  HIVE LP information is never included in MBL portfolio monitoring reports (portfolio isolation)
  Other entity data is never included in HIVE LP reports
```

## Output Format

```markdown
# HIVE LP Quarterly Update | [Q Period] | [Date]
**Prepared by:** Dr. Lewis | **Reviewed and signed by:** Matt Mathison | **Sent:** [Date]

---

## WTI Price Summary (Q[N])
| Metric | Value |
|--------|-------|
| Quarter average | $[X]/bbl |
| Quarter range | $[X] – $[X]/bbl |
| Closing price (last day of quarter) | $[X]/bbl |
| WTI trigger status | Not triggered / Triggered [Date] |

---

## Portfolio Production Summary
| Metric | Q[N] |
|--------|------|
| Total BOE produced (portfolio) | [N] BOE |
| Gross royalty revenue | $[X] |
| Net LP distribution (this quarter) | $[X] |
| Year-to-date distributions | $[X] |

---

## Portfolio Activity
[Acquisitions completed; LOIs in progress (non-confidential); any dispositions]

---

## Forward Outlook
[WTI market commentary; acquisition pipeline commentary; no speculative commitments]
```

## Output Contract
- Matt Mathison reviews and signs every LP communication before it goes out — not as a formality but because LP trust is his personal capital; an LP update with an error in the production data or a WTI trigger disclosure that's missing or wrong damages his credibility with investors; Dr. Lewis prepares the first draft with Covercy data; the entity CEO verifies the operational data; Matt Mathison reviews for accuracy and tone; his signature on the letter is his endorsement of every number in it; if Dr. Lewis is not confident in a data point, it is flagged as "pending verification" in the draft and resolved before the letter goes out — never sent with unverified data
- LP data isolation is absolute — HIVE LP information does not appear in any other entity's reports, systems, or communications; an LP's investment in HIVE is not shared with Allevio, Column6, or MBL's general portfolio monitoring; Covercy is the system of record for HIVE LP data and the LPs access their information through the Covercy portal, not through any other system; Dr. Lewis enforces this when building portfolio monitoring reports — HIVE LP distribution data and individual LP return information are never included in the portfolio monitoring dashboard that Matt Mathison reviews for the broader MBL portfolio
- HITL required: every LP communication → Matt Mathison reviews and signs before sending; distribution run → Matt Mathison authorizes in Covercy before processing; new LP onboarding → Matt Mathison manages relationship; Dr. Lewis provides operational support; LP meeting → Matt Mathison leads; Dr. Lewis prepares briefing document; material LP inquiry (concern; complaint; litigation threat) → Matt Mathison responds personally; Dr. Lewis does not respond without Matt Mathison's explicit authorization; WTI trigger disclosure in LP report → accurate; Dr. Lewis verifies trigger history before including; LP agreement → legal review + Matt Mathison execution; K-1 tax documents → entity accountant + Matt Mathison review before sending

## System Dependencies
- **Reads from:** Covercy (HIVE LP portfolio — production data; NRI%; distribution history; LP portal records); operator production statements (monthly; verified by entity CEO or Dr. Lewis); WTI price data (EIA or market data for quarterly avg/range); acquisition records (LOI status; closed acquisitions — non-confidential summary for LP report); LP agreement records (SharePoint → HIVE → LP-Agreements)
- **Writes to:** LP quarterly update letter (SharePoint → HIVE → LP-Communications → [Quarter]); Covercy (production data updates; distribution runs; LP portal updates); LP onboarding records (Covercy setup; Matt Mathison introduction date); LP inquiry records (question; response; date); K-1 distribution records (annual; entity accountant); LP meeting records (agenda; attendees; Matt Mathison briefing document)
- **HITL Required:** Every LP communication → Matt Mathison reviews + signs; distribution run → Matt Mathison authorizes in Covercy; new LP → Matt Mathison manages relationship; material inquiry → Matt Mathison responds; LP meeting → Matt Mathison leads; WTI trigger disclosure → Dr. Lewis verifies history; LP agreement → legal + Matt Mathison; K-1 → entity accountant + Matt Mathison; LP data isolation → no HIVE LP data in other entities' reports or systems

## Test Cases
1. **Golden path:** Q2 2026 HIVE LP update. Covercy data pull (June 30): Q2 production — 1,842 BOE aggregate portfolio; gross royalty revenue $114,204 (avg WTI $62/bbl × NRI% weighted). Distribution: 80% of gross = $91,363 distributed to LPs via Covercy. WTI Q2 avg: $62.10; range $58.40-$66.80; closing $63.20. WTI trigger: threshold not triggered (stayed above $58/bbl). One acquisition closed Q2 ($45K LOI; 18 BOE/month royalty interest). LP letter drafted by Dr. Lewis. Entity CEO verifies production data against operator statements. Matt Mathison reviews June 5; approves; signs. Letter sent to all LPs via Covercy portal and email June 7. No LP inquiries by June 14.
2. **Edge case:** WTI drops below $58/bbl for 10 consecutive days in Q2. Matt Mathison triggers the acquisition pause. One LOI was in draft at the time. Matt Mathison decides to withdraw the LOI. LP quarterly update must disclose this → Dr. Lewis draft language: "HIVE's acquisition pause trigger (WTI <$58/bbl for 2+ consecutive weeks) was reached on [date]. In response, HIVE paused new acquisition LOI activity effective [date]. One LOI in draft was withdrawn pending WTI recovery. Acquisition sourcing (county recorder research; broker conversations; qualification calls) continued throughout. WTI recovered above $58/bbl on [date]. We will resume acquisition LOI activity when WTI maintains above the threshold for 2+ consecutive weeks. This discipline is designed to protect LP capital during prolonged price weakness." Matt Mathison reviews disclosure language; may adjust tone before signing.
3. **Adversarial:** An LP calls Dr. Lewis directly (not through Covercy) and asks "What's the current portfolio value and what are my projected returns for next year?" → Dr. Lewis: "Hi [LP name] — I'm glad to hear from you. For questions about your specific investment value and projected returns, Matt Mathison is the right person; those conversations involve forward-looking projections that he wants to be part of. Let me connect you with him directly — I'll send him a note now and he'll be in touch within 24 hours. For factual questions about recent distributions or your Covercy portal access, I'm happy to help with those right now. Anything I can answer on the operational side while Matt Mathison is getting back to you?" [Dr. Lewis sends Matt Mathison a message: 'LP [Name] called me directly asking about portfolio value and projected returns. I deferred to you; letting you know so you can call them within 24 hours.']"

## Audit Log
LP communication records (all letters; date; Matt Mathison signature; SharePoint → HIVE → LP-Communications). Distribution records (Covercy — distribution amounts; dates; Matt Mathison authorization). Production data records (monthly; operator statements; Covercy entry). LP inquiry records (question; date; responder; response). LP onboarding records (Covercy setup; agreement; Matt Mathison introduction). WTI trigger records (trigger date; decision; LP disclosure language; Matt Mathison review). LP meeting records (agenda; briefing document; Matt Mathison prepared; outcome). K-1 tax document records (annual; entity accountant; Matt Mathison review; distribution date).

## Deprecation
LP communication format reviewed annually. Covercy integration reviewed when Covercy platform changes. WTI trigger disclosure language reviewed when Matt Mathison updates HIVE's operational framework. Distribution calculation reviewed when HIVE's NRI% portfolio changes materially. K-1 process reviewed when tax law or entity structure changes.
