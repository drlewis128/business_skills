---
name: portops-ma-legal-tracker
description: "track M&A legal workflow, deal legal status tracker, LOI to definitive agreement timeline, outside counsel coordination billing, LOI Matt Mathison authorization required, definitive agreement signature authority, escrow closing checklist, R&W insurance rep warranty, representations and warranties insurance, post-close legal obligations tracker, earnout monitoring, escrow release schedule, indemnification period tracker, portfolio regulatory filings calendar, state entity annual reports, HSR Hart-Scott-Rodino filing, HIPAA regulatory notification acquisition, healthcare CON certificate of need, closing conditions precedent, outside counsel fee tracker"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<deal name, legal stage, outside counsel, key dates, and regulatory filings required>"
---

# M&A Legal Tracker

Tracks the full legal lifecycle of every MBL Partners acquisition from LOI through the expiration of post-close obligations, covering outside counsel coordination, billing, LOI and definitive agreement timelines, closing checklist, R&W insurance, and ongoing portfolio regulatory filings. Matt Mathison authorizes all LOIs and definitive agreements without exception — no binding document advances to execution without his explicit signature, and this skill enforces that gate.

## When to Use

- A deal reaches LOI stage and outside counsel needs to be assigned with engagement terms documented
- Matt's signature is required on an LOI or definitive agreement and the authorization workflow must be initiated
- Closing checklist items need to be tracked to ensure all conditions precedent are satisfied before wire
- Post-close obligations (earnouts, escrow releases, indemnification survival) need to be calendared and monitored
- Portfolio company regulatory filings (state annual reports, industry-specific) are approaching deadlines

## M&A Legal Tracker Framework

```
LEGAL DEAL STATUS OVERVIEW
  Active deals in legal workflow: [list by name and current legal stage]
  LOI executed: [deal name | Matt signature date | exclusivity expiry]
  DD period: [deal name | DD start | target close | days remaining]
  Definitive agreement drafting: [deal name | draft version | open issues count]
  Closing timeline: [deal name | closing date | conditions outstanding]
  Post-close monitoring: [deal name | obligation type | next due date]

OUTSIDE COUNSEL MANAGEMENT
  Outside counsel firm and lead attorney assigned at LOI stage (before DD)
  Dr. Lewis serves as primary legal liaison between outside counsel and MBL — all outside
    counsel communications route through Dr. Lewis except Matt's direct deal calls
  Fee arrangement: hourly (rate-capped) | fixed-fee (by phase) | retainer
  Budget tracking: approved legal budget per deal; spend-to-date vs. budget; flag if >15% over
  Communication protocol: weekly status call (Dr. Lewis + outside counsel) during active deals
  Invoice approval: Dr. Lewis reviews and approves all outside counsel invoices before payment
    routed to QuickBooks and Bill.com for processing

LOI TO DEFINITIVE AGREEMENT TIMELINE
  Step 1: LOI draft prepared by outside counsel or MBL; circulated internally
  Step 2: Dr. Lewis reviews LOI terms; key issues noted; submitted to Matt for authorization
  Step 3: Matt Mathison reviews LOI; authorizes or returns with edits
  Step 4: Matt signs LOI — this is a hard gate; no execution without Matt signature
  Step 5: Exclusivity period begins (typically 30-60 days)
  Step 6: DD period runs concurrently with definitive agreement drafting
  Step 7: Seller's counsel delivers first draft of definitive agreement
  Step 8: MBL outside counsel delivers redline; negotiation period (2-4 weeks typical)
  Step 9: Final agreed form circulated to Matt for authorization
  Step 10: Matt signs definitive agreement — hard gate; no exceptions
  Step 11: Closing conditions period; closing mechanics; wire
  Timeline flags: exclusivity expiry <5 days without extension = alert; any step >14 days overdue = alert

ESCROW AND CLOSING CHECKLIST
  Purchase price: $[X] total | equity check: $[X] | debt payoff at close: $[X]
  Escrow amount: $[X] (typically 5-10% of purchase price) | Escrow period: [X] months
  Escrow agent: [firm name | account number | wire instructions]
  Pre-closing conditions:
    [ ] Representations and warranties true as of closing date (bring-down)
    [ ] No material adverse change (MAC) since signing
    [ ] Required regulatory approvals obtained (HSR clearance, state filings, HIPAA notifications)
    [ ] Third-party consents obtained: landlord, key customer contracts, lenders
    [ ] Outside counsel closing opinion delivered
    [ ] R&W Insurance binder issued (if applicable)
    [ ] Employee retention agreements executed (key persons identified in DD)
  Closing mechanics:
    [ ] Closing statement agreed and signed by both parties
    [ ] Wire instructions confirmed with escrow agent (Matt Mathison authorizes wire)
    [ ] All ancillary agreements executed: employment, non-compete, transition services, TSA
    [ ] Bill of sale / assignment documents executed
    [ ] Stock certificates or membership interest certificates transferred
  Post-close filings (within 30 days of close):
    [ ] UCC filings updated or released
    [ ] State secretary of state filings (entity name, registered agent, ownership)
    [ ] Tax elections filed if applicable (338(h)(10) for asset treatment on stock deal)

REP AND WARRANTY INSURANCE
  R&W insurance evaluation begins at LOI stage — engage broker during DD period
  Coverage limit: typically 10-15% of enterprise value
  Retention (deductible): typically 1% of EV or negotiated lower
  Policy period: 3 years (general reps) | 6 years (fundamental reps and tax)
  Premium: typically 3-4% of coverage limit
  Coverage exclusions: document all exclusions at binder stage — known DD findings excluded
  Underwriter engagement: outside counsel coordinates underwriter due diligence call
  R&W insurance shifts indemnification risk from seller escrow to insurer — reduces seller
    holdback requirements and can accelerate deal close in competitive processes

POST-CLOSE LEGAL OBLIGATIONS
  Earnout monitoring:
    Earnout total | earnout metric (revenue, EBITDA, units) | measurement period
    Measurement dates | calculation methodology | dispute resolution process
    Earned-to-date tracking | QuickBooks financial data used for earnout calculations
  Escrow release schedule:
    Release tranche 1: [date | amount | status]
    Release tranche 2: [date | amount | status]
    Final release: [date | amount | conditions]
    30-day advance notice generated automatically before each release date
  Indemnification tracking:
    Survival period (general reps): typically 18-24 months post-close
    Survival period (fundamental reps): typically 6 years
    Indemnification cap: typically 10-15% of purchase price
    Deductible/basket: tipping basket or true deductible; dollar amount
    Active indemnification claims: [claim | amount | status | outside counsel assigned]
    Indemnification expiry date: calendar alert 60 days before survival period ends
  Integration legal tasks:
    Contract amendments for transferred agreements | entity name changes in regulatory filings
    Customer and vendor notification letters | lease assignment or sublease amendments

PORTFOLIO REGULATORY FILINGS
  Each portfolio entity maintains an annual filings calendar:
    Entity annual reports (state secretary of state) — due dates vary by state
    Industry-specific regulatory filings: Allevio (state DOH, CMS), HIVE (state energy/mineral),
      Column6 (FCC if applicable, state advertising filings)
    Federal tax filings: coordinated with QuickBooks and MBL finance team
    HIPAA annual attestations: Allevio — Privacy and Security rule compliance review
  Filing calendar: populated at acquisition close; updated annually
  Penalty risk: late filing fees and regulatory standing flags tracked; >$1K penalty risk = alert to Dr. Lewis

MATT MATHISON AUTHORIZATION PROTOCOL
  Rule 1: All LOIs require Matt's signature before execution — no exceptions, no delegations
  Rule 2: All definitive agreements require Matt's signature before execution — no exceptions
  Rule 3: All closing wires require Matt's authorization — amount, escrow agent, and timing confirmed
  Rule 4: Any renegotiation of deal terms post-LOI (price, structure, escrow) requires Matt's sign-off
  Authorization workflow: Dr. Lewis submits document to Matt with one-page deal summary
    Matt reviews; authorizes or returns with questions; Dr. Lewis resolves; resubmits
  Tracking: every Matt authorization logged with document version, date, and method of confirmation
```

## Output Format

```markdown
## Legal Status — [DEAL NAME] | [DATE]

**Legal Stage:** [Pre-LOI / LOI Negotiation / DD / Definitive Agreement / Closing / Post-Close]
**Outside Counsel:** [Name, Firm] | **Legal Spend:** $[X] of $[X] approved budget
**Matt Authorization Status:** LOI: [Signed DATE / Pending] | Definitive Agreement: [Signed DATE / Pending]

**Regulatory Filings:** HSR: [N/A / Filed DATE / Cleared DATE] | Healthcare: [N/A / CON status / HIPAA notification]

**Closing Checklist:** [X of Y conditions satisfied] | **Target Close:** [DATE]

**Post-Close Obligations Outstanding:**
- Escrow: $[X] remaining | Next release: [DATE] (30-day notice: [status])
- Earnout: [metric | next measurement: DATE | earned to date: $X]
- Indemnification survival expires: [DATE]

**Action Items for Matt:** [specific asks — LOI signature, definitive agreement authorization, wire approval, deal term decision]
**Open Legal Issues:** [list or "None"]
```

## Output Contract

- Matt Mathison's signature is a hard gate on both LOI and definitive agreement execution with no exceptions and no delegation authority — an LOI or definitive agreement executed without Matt's explicit authorization creates binding legal obligations on MBL without proper governance approval and is a process failure that exposes MBL to liability, LP fiduciary concerns, and reputational damage with outside counsel and sellers. The tracker enforces this gate with a warning that cannot be cleared without logging Matt's confirmation.
- Post-close obligations — earnouts, escrow releases, and indemnification survival periods — are calendar-driven and must be tracked with 30-day advance notices built in. A missed earnout measurement date, a failed escrow release claim, or an indemnification claim filed after the survival period has lapsed are each direct and irreversible financial losses to MBL. The tracker generates advance notice automatically and logs confirmation that the notice was acted upon.
- R&W insurance coverage exclusions and indemnification survival periods must both be fully documented at close and immediately accessible — if a post-close issue surfaces and the legal team does not know within minutes whether R&W covers it and whether the survival period is still active, the response is slower and the exposure higher. This tracker keeps both on record in a format that is queryable without having to dig through the definitive agreement.

## System Dependencies

**Reads from:** DD tracker (findings that may become indemnification claims or exclusions); outside counsel billing systems (invoice data); QuickBooks (legal expense coding, payment confirmation, earnout metric data); deal room (executed document versions and version history)
**Writes to:** Monday.com deal legal board (task tracking); Matt's deal brief (authorization requests via M365); post-close obligations calendar (M365, 30-day advance alerts); LP reporting (legal cost summary, post-close status); deal file archive (permanent, immutable record)
**HITL Required:** Matt Mathison must sign all LOIs, definitive agreements, and authorize all closing wires — no exceptions; Dr. Lewis reviews technology-related reps and warranties before sign-off on definitive agreement; outside counsel provides closing opinion on conditions precedent before wire is released

## Test Cases

- **Golden path:** Deal reaches LOI stage — draft circulated internally; Dr. Lewis reviews and flags one exclusivity term; Matt approves with edit; revised LOI executed; HSR threshold analysis confirms no filing required; R&W insurance broker engaged during DD; closing checklist initiated at definitive agreement signing; wire authorized by Matt on closing date; post-close escrow and earnout calendar populated immediately.
- **Edge case:** LOI exclusivity period expires in 5 days while parties are still negotiating the definitive agreement. Tracker fires 5-day alert; Dr. Lewis notified; outside counsel instructed to prepare extension letter; extension letter submitted to Matt for authorization; signed extension delivered to seller's counsel before expiry.
- **Adversarial:** Deal team member marks an LOI as "executed" in the tracker without logging Matt's signature date or document version — attempting to bypass the authorization gate. Tracker detects the missing authorization fields and immediately escalates to Dr. Lewis and Matt; LOI status reverted to Pending until Matt authorization is confirmed and logged with document version and date.

## Audit Log

Every authorization event — Matt's LOI signature, definitive agreement execution, earnout payment, escrow release, and closing wire authorization — is timestamped and the exact document version is filed with the record. Billing entries are matched to outside counsel invoices and QuickBooks payment records. Post-close obligation dates are logged at close and cannot be deleted from the tracker, only marked resolved with confirmation of the resolution event. Any regulatory filing submission is logged with the filing date, reference number, and confirmation receipt retained in the deal file.

## Deprecation

This skill covers a single deal's legal lifecycle from LOI through the end of the post-close indemnification survival period. Once all post-close obligations are fully resolved — all escrow tranches released, earnout period concluded and final payment made or disputed, indemnification survival expired with no open claims — the deal record is archived as a closed file. The skill itself remains active for new deals in the pipeline and is retired only if MBL adopts a dedicated legal matter management platform (e.g., SimpleLegal, Ironclad, or equivalent) that Matt has validated for deal-level tracking across the full legal lifecycle.
