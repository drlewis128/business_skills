---
name: pe-exit-process-manager
description: "Manage the sale process for MBL Partners portfolio company exits. Use when the user says 'exit process', 'sale process', 'sell the company', 'selling a company', 'M&A process', 'sell-side process', 'banker process', 'banker managing the process', 'go to market', 'launch the process', 'marketing materials', 'teaser', 'CIM', 'confidential information memorandum', 'process letter', 'first round bids', 'second round bids', 'final round bids', 'management presentations', 'buyer meetings', 'strategic buyers', 'PE buyers', 'financial buyers', 'buyer outreach', 'buy-side due diligence', 'exclusivity with buyer', 'purchase agreement exit', 'definitive agreement exit', 'closing the sale', 'transaction closing', 'closing timeline', 'deal announcement', 'close announcement', 'employee announcement', 'post-close transition', 'seller representation', 'retaining a banker', 'banker engagement', 'banker fee', 'success fee', 'Lehman formula', 'M&A fee', 'sell-side advisor', 'sell-side M&A', 'process timeline', 'process management', 'transaction management', or 'exit execution'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--stage <preparation|marketing|bids|dd|definitive|closing>] [--action <manage|track|coordinate|report>] [--buyer-type <strategic|pe|both>]"
---

# PE Exit Process Manager

Manage the sale process for MBL Partners portfolio company exits — coordinating the investment banker, managing buyer outreach and materials, tracking bids, supporting management presentations, overseeing buy-side due diligence, and driving to a signed purchase agreement and close. The exit process is the most concentrated and time-sensitive period of the investment cycle: every action in the next 6-9 months determines whether MBL realizes the returns built over the hold period; process management quality directly affects the final sale price (a disorganized process signals seller desperation; a crisp process signals institutional quality and creates buyer FOMO); Matt Mathison leads exit negotiations; Dr. Lewis manages the process logistics, coordinates advisors, and keeps the transaction moving.

## When to Use
- Banker is engaged and the exit process is launched
- A milestone in the exit process needs to be tracked or managed
- Buyer activity needs to be coordinated or a bid needs to be evaluated
- Matt Mathison needs an exit process status update

## Exit Process Framework

```
STANDARD SELL-SIDE PROCESS TIMELINE (6-9 months from banker engagement to close):

  PHASE 1 — PREPARATION (Months 1-2):
    Week 1-2: Banker onboarding; data room build begins
    Week 2-4: Management team interviews (banker learns the business)
    Week 4-6: CIM draft (seller reviews and approves each section)
    Week 6-8: Data room populated; management presentation rehearsed
    Milestone: CIM approved by Matt Mathison; management presentation ready
    
  PHASE 2 — BROAD MARKETING (Months 2-3):
    Week 1: Teaser distributed to buyer universe (strategic + PE)
    Week 1-3: NDA execution with interested buyers (target: 15-25 NDAs)
    Week 2-4: CIM distributed to NDA signatories
    Week 4: First-round bids due (Indications of Interest — IOI)
    Milestone: IOI review with Matt Mathison; select buyers to advance to second round
    
  PHASE 3 — MANAGEMENT PRESENTATIONS (Month 3-4):
    Week 1-2: Management presentations with 6-10 select buyers
    Week 3: Final questions from buyers; data room updates
    Week 4: Final bids (Letters of Intent — binding bids) due
    Matt Mathison reviews final bids; makes selection decision
    
  PHASE 4 — EXCLUSIVITY AND DEFINITIVE AGREEMENT (Months 4-6):
    Week 1: LOI signed; exclusivity granted to winning buyer
    Week 1-6: Buy-side due diligence (Dr. Lewis coordinates DD responses)
    Week 4-8: Purchase agreement negotiation (sell-side counsel + buy-side counsel)
    Milestone: Purchase agreement signed
    
  PHASE 5 — CLOSING (Months 6-9):
    Week 1-4: Regulatory approvals (if any); consent solicitations
    Week 4-6: Closing conditions satisfied
    Closing: wire transfer; ownership transfers; announcements (ops-communication-manager)

BANKER MANAGEMENT:

  BANKER SELECTION:
    Matt Mathison interviews final bankers; approves selection
    Fee structure: retainer ($[X]/month) + success fee (Lehman formula or fixed %)
    Typical success fee: 1.0-2.0% of transaction value (varies by deal size and sector)
    
  BANKER DELIVERABLES (Dr. Lewis tracks):
    Teaser: Dr. Lewis reviews for accuracy before distribution
    CIM: Dr. Lewis reviews each section; Matt Mathison approves before distribution
    Buyer universe: Dr. Lewis adds/removes buyers; Matt Mathison approves final list
    IOI/bid analysis: banker provides; Dr. Lewis validates; Matt Mathison decides
    Management presentation: Matt Mathison reviews before first buyer meeting
    
  BUYER UNIVERSE MANAGEMENT:
    Strategic buyers: companies that would benefit from owning the entity
    PE buyers: PE firms with healthcare/energy/CTV thesis and available capital
    Excluded buyers: any buyer Matt Mathison identifies as not appropriate (competitors of portfolio; bad actors)
    
  DATA ROOM MANAGEMENT:
    Dr. Lewis is the data room administrator (approves every document before upload)
    Document requests: tracked; Dr. Lewis coordinates response with entity management
    Sensitive documents: any document with employee information; customer PII; litigation → legal counsel reviews before upload
    Allevio: NO PHI in the data room; aggregate data only

KEY PROCESS METRICS (track weekly during active marketing):

  NDAs executed: [N of target 15-25]
  IOIs received: [N of target 8-12]
  Management presentations scheduled: [N of target 6-10]
  LOIs (final bids) received: [N of target 3-5]
  Days to LOI signing from process launch: [target <120 days]
  Days from LOI to close: [target <90 days]
```

## Output Format

```markdown
# Exit Process Update — [Entity] — [Date]
**Process phase:** [Phase 1-5] | **Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Process Milestone Tracker

| Milestone | Target date | Status | Owner |
|-----------|------------|--------|-------|
| CIM approved | [Date] | ✅ / ⏳ / 🔴 | Dr. Lewis / Matt |
| Teaser distribution | [Date] | ✅ / ⏳ | Banker |
| IOIs received | [Date] | [N] received | — |
| Management presentations | [Date range] | [N] scheduled | Banker |
| Final bids due | [Date] | ⏳ | — |

---

## Buyer Activity

| Buyer | Type | NDA | CIM received | Management pres | IOI received | Bid |
|-------|------|-----|-------------|----------------|-------------|-----|
| [Strategic A] | Strategic | ✅ | ✅ | [Date] | $[X]M | — |
| [PE B] | PE | ✅ | ✅ | [Date] | $[X]M | — |
| [Strategic C] | Strategic | ✅ | ✅ | Declined | — | — |

---

## Decisions Needed from Matt

1. Buyer universe: [Buyer X] has requested to be included — do you approve?
2. IOI evaluation: we have 6 IOIs ranging from $[X]M to $[X]M. Recommend advancing [top 4] to management presentations. Your approval needed.
```

## Output Contract
- Matt Mathison approves every major process decision — buyer universe additions/removals; buyers advancing to second round; final bid acceptance; LOI signing; purchase agreement execution; closing approval; employee announcement timing; none of these decisions are made by Dr. Lewis alone; Dr. Lewis prepares the analysis and recommendation; Matt Mathison decides; the exit process produces MBL's most significant capital events and Matt owns them
- CIM accuracy is Dr. Lewis's responsibility before the banker distributes it — the CIM is a marketing document that will be reviewed by buy-side QoE teams and compared to data room records; a CIM with numbers that don't match the financials is a credibility problem that reduces buyer confidence and the final price; Dr. Lewis validates every financial table in the CIM against QuickBooks before approving it; every statement about operational metrics is validated against the actual KPI data; HIPAA compliance for Allevio: the Allevio CIM contains only aggregate financial and operational data — no PHI; legal counsel reviews the Allevio CIM before distribution
- Data room is managed like an evidence room — every document in the data room is reviewed before it's uploaded; documents that contain sensitive information (employee personal data; customer PII; undisclosed litigation; board communications) are reviewed by legal counsel before upload; Dr. Lewis maintains a document log (what was uploaded; when; who uploaded it; who has accessed it); a document that should not have been uploaded is withdrawn immediately and buyers who accessed it are notified appropriately (with legal counsel guidance); Allevio's data room contains zero PHI
- HITL required: buyer universe → Matt Mathison approves full list and any additions; CIM → Matt Mathison approves before distribution; IOI evaluation → Matt Mathison selects which buyers advance; final bids → Matt Mathison selects winning buyer; LOI → Matt Mathison approves terms; purchase agreement → Matt Mathison (with sell-side counsel) executes; closing announcement → Matt Mathison approves content and timing; any buyer who withdraws or makes unusual demands → Matt Mathison briefing

## System Dependencies
- **Reads from:** pe-exit-readiness-assessor (readiness score; preparation status); pe-exit-financial-prep (financial model; EBITDA bridge; debt schedule); pe-exit-value-optimizer (value creation narrative; buyer thesis); pe-buyer-management (buyer tracking and contacts); sell-side banker (process management; CIM; buyer outreach); entity management team (management presentation; data room documents)
- **Writes to:** Process milestone tracker (SharePoint → Portfolio → [Entity] → Exit → Process); buyer tracker; data room log; Matt Mathison briefings (milestone completions; buyer activity; decisions needed); ops-communication-manager (announcement templates for close date); sell-side counsel instructions
- **HITL Required:** Buyer universe → Matt approves; CIM → Matt approves; IOI evaluation → Matt selects; final bids → Matt selects winner; LOI → Matt approves; purchase agreement → Matt executes; close announcement → Matt approves; buyer unusual demands → Matt briefing

## Test Cases
1. **Golden path:** Allevio exit process. Banker engaged. Phase 1 complete: CIM approved (Matt Mathison); data room built; management presentation rehearsed (3 times). Teaser distributed to 35 buyers (28 strategic; 7 PE). Week 3: 22 NDAs signed. CIM distributed. Week 6: 8 IOIs received ($28M-$39M EV range). Matt reviews IOIs: advance 5 buyers to management presentations (3 strategic; 2 PE). Management presentations complete. Final bids: 3 LOIs. Matt selects winner ($38M EV). LOI signed. Buy-side DD: 55 days. Purchase agreement signed. Closing: 30 days post-PA. Total process: 7 months.
2. **Edge case:** A strategic buyer in Phase 2 (CIM stage) asks for individual member-level data in the data room → Dr. Lewis: "The request for individual member-level data cannot be fulfilled — this is PHI under HIPAA and MBL does not provide it to any third party, including prospective buyers. I'll respond to the buyer: 'Allevio's member data is Protected Health Information under HIPAA. We do not provide individual member data in any process. The data room includes comprehensive aggregate operational data (PMPM economics; GRR; utilization metrics; claim ratios) that provides full visibility into the business performance without PHI exposure. We're happy to discuss the aggregate data in a follow-up call.' If the buyer insists, that's a signal about how they'll operate post-close — I'll note it in the buyer tracker."
3. **Adversarial:** The banker wants to include a competitor of another MBL portfolio company in the buyer universe → Dr. Lewis: "I'm flagging this to Matt Mathison before responding to the banker. Including a competitor of [another portfolio company] creates two risks: (1) Information shared in the process about [entity]'s operations could competitively damage [other portfolio company]; (2) If the buyer acquires [entity] and uses the information in a way that harms [other portfolio company], MBL could have a conflict of interest claim from LPs. Matt: this is your decision. If you want to include them, legal counsel should advise on information barriers and what can/cannot be shared. If you want to exclude them, the banker will need a confidential reason."

## Audit Log
All CIM versions retained (with Matt approval date; distribution date; buyer recipients). Data room document log retained (every document; upload date; buyer access records). Buyer universe records retained (with Matt approval). IOI and LOI records retained. Purchase agreement retained permanently. Matt Mathison decision records retained (with dates). Closing records retained permanently. HIPAA compliance records (Allevio) retained.

## Deprecation
Exit process management is activated at the go-to-market decision and runs through closing. The exit process framework is reviewed after each exit for lessons learned.
