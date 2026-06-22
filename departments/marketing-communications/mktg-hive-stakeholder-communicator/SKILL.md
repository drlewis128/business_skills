---
name: mktg-hive-stakeholder-communicator
description: "Manage landowner and investor communications for HIVE Partners. Use when the user says 'HIVE communication', 'HIVE landowner communication', 'communicate with landowners', 'royalty owner communication', 'HIVE investor communication', 'HIVE LP communication', 'HIVE newsletter', 'HIVE letter', 'landowner letter', 'royalty payment communication', 'Uinta Basin landowner', 'Uinta Basin communication', 'HIVE stakeholder', 'oil royalty communication', 'royalty update', 'HIVE quarterly update', 'HIVE annual report', 'HIVE operations update', 'landowner relations', 'royalty partner communication', 'Covercy communication', 'HIVE environmental communication', 'DOGM communication', 'HIVE outreach', 'communicate to royalty owners', or 'HIVE transparency'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--audience <landowners|lp-investors|both>] [--type <monthly|quarterly|annual|operational|regulatory>] [--action <draft|review|plan|send>]"
---

# HIVE Stakeholder Communicator

Manage landowner and LP investor communications for HIVE Partners — producing monthly landowner letters, quarterly LP updates, and operational communications that maintain trust through transparency. In Uinta Basin oil and gas, landowner relationships are multigenerational and trust-based; a missed royalty payment communication or an evasive production update can damage a relationship built over decades. LP investors need factual, unspun financial communications.

## When to Use
- Drafting the monthly landowner royalty update
- Preparing the quarterly LP investor letter
- Managing a proactive communication about an operational or regulatory development
- Planning HIVE's annual stakeholder communication calendar

## HIVE Stakeholder Communication Framework

```
HIVE COMMUNICATION AUDIENCES:

  LANDOWNERS (Primary; trust-critical; multigenerational):
    Who: Uinta Basin landowners with royalty agreements; multigenerational ranching/farming families; surface rights owners
    Communication need: royalty payment confirmation; production transparency; operational respect for their land
    Tone: Neighborly. Direct. Personal. Relationship-first.
    Use "your land" not "the property"; address by name; acknowledge the long-term nature of the relationship
    Format: email (primary) + physical mail (for landowners who prefer or specifically request print)
    Cadence: monthly (minimum); proactive notification within 24 hours of any event affecting their land or royalty
    
  LP INVESTORS (Secondary; financial credibility critical):
    Who: limited partners who have invested capital in HIVE; co-investors; family offices
    Communication need: production performance; WTI price context; distribution data; capital allocation
    Tone: Data-first. Direct. No spin — especially on bad news.
    Format: PDF quarterly letter + short cover email; annual report
    Cadence: quarterly letter; annual operations report
    Approval: Dr. Lewis + Matt Mathison review before every LP send
    WTI trigger note: if WTI is below $58/bbl for 2+ consecutive weeks → LP communication should acknowledge market context and include pause-on-new-acquisitions status (per operational protocol)

LANDOWNER MONTHLY LETTER (standing monthly):
  Structure:
    Opening: personal greeting; reference to the relationship
    Section 1 — Production Summary:
      This month's production (aggregate; basin-level or per-parcel if appropriate)
      Royalty calculation basis (price; volume; applicable deductions)
      Payment date and method
      Covercy access reminder (link to portal for detailed statements)
    Section 2 — Operational Notes:
      Any activity on or near their property this month
      Equipment maintenance; well maintenance; any planned future activity
      Environmental stewardship: any environmental monitoring results; DOGM compliance status
    Section 3 — Basin Context:
      Brief WTI price note (factual; no prediction)
      Any significant Basin-level developments (regulatory; infrastructure; market)
    Closing: personal; relationship-focused; contact information for questions
    
  STANDARDS:
    No commercial sensitivity: do not include well production data that competitors could use
    Factual environmental claims only: no greenwashing; cite DOGM if referencing compliance
    Honest bad news: if production is down this month, say so and explain why
    Use Covercy: always reference Covercy portal for detailed statements; include access link or instructions
    Physical mail: landowners who prefer paper receive printed version; maintain preference in contact records

LP QUARTERLY LETTER:
  Structure:
    BLUF (Bottom Line Up Front): production; WTI avg; distributions; one-sentence quarter narrative
    Production detail: BOE; well performance; operational highlights
    WTI and pricing context: price range; impact on revenue; hedging position (if any)
    Distributions: amount; per-unit; YTD; comparison to prior period
    Capital allocation: any new acquisitions; dispositions; major capital expenditures
    Forward-looking notes: operational priorities; market context; no production predictions (too speculative)
    
  APPROVAL: Dr. Lewis + Matt Mathison review and approve before send
  WTI protocol: if WTI <$58/bbl for 2+ consecutive weeks → LP letter notes: "Per our operating protocol, we have paused new acquisitions while WTI remains below our minimum threshold. Current operations continue at full scope."
  Tone: no promotional language; no enthusiasm markers ("great quarter!"); data and context only

PROACTIVE COMMUNICATIONS (event-driven):
  Royalty payment delay (any): landowner notification within 24 hours; cause; expected resolution; direct contact
  Environmental incident on property: immediate landowner notification; DOGM notification per regulations; proactive communication before landowner calls Dr. Lewis
  Regulatory development (DOGM; state): if relevant to landowner rights → communicate within 48 hours
  WTI drops below $58 for consecutive 2 weeks: LP notification that acquisition pause is in effect
  Production disruption: landowners affected notified within 48 hours; reason; expected resolution
```

## Output Format

```markdown
# HIVE Stakeholder Communication — [Type] — [Date]
**Audience:** Landowners / LP Investors / Both
**Approved by:** [HIVE CEO + Dr. Lewis (LP letters add Matt Mathison)]
**Send date:** [Date]

---

## Landowner Monthly Letter

[HIVE Partners letterhead]
[Date]

Dear [First Name],

[Opening — personal; relationship-acknowledging]

**This month's production and royalty:**
[Royalty payment: $X | Payment date: [Date] | Covercy portal: [link]]
[Production basis: [Volume] @ WTI avg $[price]/bbl]

**On your land this month:**
[Operational activity; any access; maintenance; environmental notes]

**Basin update:**
[Brief WTI context; one Basin development note if relevant]

Thank you for your continued trust in HIVE Partners. As always, reach us at [contact].

[HIVE CEO or Dr. Lewis name and signature]

---

## LP Quarterly Letter

**Q[X] [Year] — HIVE Partners LP Update**
**Prepared by:** HIVE CEO | **Reviewed by:** Dr. Lewis + Matt Mathison

**Bottom line:**
Production: [X] BOE | WTI avg: $[X]/bbl | Distributions: $[X] ([X]/unit) | [One-sentence narrative]

[Production section]
[WTI + pricing context]
[Distributions detail]
[Capital allocation]
[Forward-looking operational notes]
```

## Output Contract
- Landowner communications use "your land" language throughout — this is not a stylistic preference; it reflects a values position (THRIVE: Respect) about how HIVE relates to landowners; a letter that refers to "the property" or "the asset" signals a corporate extraction relationship; one that says "your land" signals a partnership; Dr. Lewis reviews all landowner letters for this language standard; any draft that fails this standard is returned for revision before it reaches the HIVE CEO for final approval
- LP letters tell the truth about bad news — when WTI is down, when production is below plan, when a well underperforms: the LP letter says so, explains what happened, and describes the response; a letter that buries bad news or softens it with promotional framing signals to LPs that management cannot be trusted with bad news; Dr. Lewis's review of LP letters includes a specific check: does this letter accurately represent performance, including the parts that are below expectations?; if a letter omits or minimizes bad news, Dr. Lewis flags it and requires revision
- Proactive communication on operational issues is not optional — a landowner who reads about an environmental incident in the local paper before HIVE tells them will not trust HIVE again; a regulatory development that affects landowner rights discovered by a landowner from a third party is a relationship failure; HIVE's operational credibility depends on being the first source of accurate information for landowners; Dr. Lewis enforces the 24-48 hour proactive notification windows and monitors DOGM and local news for HIVE-relevant developments
- HITL required: all LP letters → Dr. Lewis + Matt Mathison review and approve before send; HIVE CEO approves all landowner letters before send; proactive landowner notification (operational incident) → HIVE CEO approves text + Dr. Lewis reviews before send within 24 hours; WTI trigger LP communication → Dr. Lewis + Matt Mathison determine language; environmental incident communication → Dr. Lewis + legal review; annual operations report → Dr. Lewis + Matt Mathison approve

## System Dependencies
- **Reads from:** pe-portfolio-monitor (WTI price monitoring — acquisition pause trigger); pe-hive-operations (production data; royalty calculations; DOGM compliance status); mktg-brand-voice-manager (HIVE voice: honest; neighborly; direct); Covercy (royalty payment platform — link and statement access instructions); pe-lp-reporting (LP financial data inputs)
- **Writes to:** HIVE landowner letter (email + print archive; SharePoint → HIVE → Stakeholder Communications → [Year/Month]); LP quarterly letter (SharePoint → HIVE → Investor Relations → [Year/Q]); Covercy (payment notification if integrated); proactive communication records; DOGM notification records (environmental incidents)
- **HITL Required:** LP letters → Dr. Lewis + Matt Mathison; landowner letters → HIVE CEO; operational incident proactive notice → HIVE CEO + Dr. Lewis (within 24 hours); environmental incident → Dr. Lewis + legal; WTI trigger communication → Dr. Lewis + Matt Mathison; annual report → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** June HIVE landowner letter. Production: 4,200 BOE. WTI avg: $65.40/bbl. Royalty: $3,847 (per applicable royalty percentage). Payment date: June 25. Covercy link included. Operational: preventive well maintenance completed June 10-12; no disruption to production; land access fully restored. Basin note: WTI slightly softer than May average; within normal seasonal range. Opening: "Dear [First Name], June was a steady month on your land in the Basin. Here's the summary." Tone: personal; direct; no fluff. HIVE CEO approves. Sent June 20 (5 days before payment). Physical mail copies for 3 landowners who prefer paper.
2. **Edge case:** Royalty payment will be delayed 5 days due to banking processing issue → HIVE CEO + Dr. Lewis: same-day proactive notification. Landowner letter (next-day send): "Dear [First Name], I want to reach out before your normal payment date with an update. Your June royalty payment of $[X] is processing through a 5-business-day banking cycle that will delay the deposit to [date], rather than our normal June 25th. This is a banking processing issue, not a production issue — your royalty amount is unchanged. I apologize for the inconvenience and wanted to reach you before you noticed the delay. If you have questions, please call me directly at [HIVE CEO phone]." No template language; direct and personal.
3. **Adversarial:** An LP requests HIVE STOP acknowledging when WTI is below the acquisition threshold in LP letters, claiming it "creates negative sentiment" → Dr. Lewis: "We disclose the WTI acquisition pause in LP letters because it is a material operational decision that directly affects LP capital deployment and return profile. Omitting it from investor communications would be misleading. THRIVE: Truth first. If an LP is concerned that the pause creates negative sentiment, the right response is to explain the rationale — the pause protects capital during price weakness, which is what a disciplined operator does. We do not omit material information from LP communications to manage sentiment. Matt Mathison's awareness required on this LP request."

## Audit Log
Landowner letters retained permanently (by month; by year). LP quarterly letters retained permanently. Physical mail records retained. Proactive notification records (date; trigger; text; approval; recipient). Environmental incident records. DOGM notification records. WTI trigger communication records. Matt Mathison and Dr. Lewis approval records for LP letters. HIVE CEO approval records for landowner letters.

## Deprecation
Communication templates reviewed annually. HIVE CEO and Dr. Lewis review landowner letter format annually. LP letter format reviewed annually or when LP composition changes. Covercy integration references updated when platform changes. WTI trigger threshold reviewed if HIVE operational model changes.
