---
name: legal-outside-counsel-manager
description: "Manage outside counsel relationships and legal spend for MBL portfolio companies. Use when the user says 'outside counsel', 'law firm', 'legal fees', 'legal spend', 'attorney', 'engage a lawyer', 'legal retainer', 'legal budget', 'legal invoice', 'law firm selection', 'hire a lawyer', 'legal matter management', 'legal work', 'who should handle this', 'do we need a lawyer', 'counsel fees', 'legal costs', 'legal engagement', 'outside legal', or 'law firm management'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--matter-type <employment|ma|corporate|ip|regulatory|litigation|general>] [--entity <company name>] [--action <engage|review|manage|budget>]"
---

# Outside Counsel Manager

Manage outside counsel relationships and legal spend for MBL portfolio companies — selecting the right firm for each matter type, managing engagement terms, reviewing invoices, and tracking total legal spend against budget. Legal fees are one of the most discretionary and least transparent costs in a PE portfolio company: a $500/hour M&A partner billing for work that a $200/hour associate could handle is waste; a company that uses a general practitioner for employment litigation when a specialist would win faster and cheaper is waste of a different kind. Dr. Lewis manages outside counsel relationships and holds legal spend accountable.

## When to Use
- A new legal matter requires outside counsel engagement
- An existing law firm is up for renewal or evaluation
- Legal invoice review (are the bills reasonable?)
- Matt Mathison asks "how much are we spending on legal?"
- A new practice area needs a specialist firm

## Outside Counsel Framework

```
COUNSEL SELECTION BY MATTER TYPE:

  M&A TRANSACTIONS:
    Preferred profile: Mid-size firm with PE/M&A practice; Arizona or Colorado base
    Avoid: Large national firms for sub-$20M deals (rates don't match deal size)
    Rate expectation: $250-500/hour (partner); $150-300/hour (associate)
    Engagement: Matter-specific; capped fee preferred for LOI review; hourly for full deal
    
  EMPLOYMENT LAW:
    Preferred profile: Employment boutique or HR-practice firm in the company's state
    Why specialist: Employment law is state-specific and changes frequently; a generalist misses issues
    Rate expectation: $200-400/hour (employment partner); $150-250/hour (associate)
    Arizona: Arizona employment counsel with experience in healthcare (Allevio) or energy (HIVE)
    Utah: Utah employment counsel for HIVE
    Engagement: Retainer for ongoing advice; matter-specific for litigation
    
  IP (Trademark, Copyright, Patent):
    Preferred profile: IP boutique; USPTO-registered patent attorney if patents are in scope
    Rate expectation: $200-400/hour (trademark); $300-600/hour (patent partner)
    Engagement: Fixed-fee for trademark prosecution; hourly for enforcement
    
  CORPORATE / GOVERNANCE:
    Preferred profile: Business law firm with entity formation and governance expertise
    Rate expectation: $200-350/hour
    Engagement: Annual retainer for ongoing governance work; matter-specific for entity formation
    
  REGULATORY — HEALTHCARE (Allevio):
    Preferred profile: Healthcare regulatory counsel; HIPAA specialist; Arizona healthcare law
    Rate expectation: $250-450/hour
    Engagement: Retainer for ongoing HIPAA and regulatory compliance; matter-specific for investigations
    
  REGULATORY — OIL & GAS (HIVE):
    Preferred profile: Utah O&G counsel with DOGM and BLM expertise; environmental regulatory
    Rate expectation: $250-500/hour
    Engagement: Matter-specific for permit applications and regulatory responses; retainer if material
    
  ADVERTISING / MEDIA LAW (Column6):
    Preferred profile: Advertising and media law firm with FTC/TCPA/digital advertising experience
    Rate expectation: $250-450/hour
    Engagement: Retainer for ongoing product reviews; matter-specific for enforcement
    
  LITIGATION:
    Preferred profile: Litigation firm with experience in the specific claim type and jurisdiction
    Rate expectation: $200-500/hour depending on market
    Engagement: Hourly with detailed billing; alternative fee arrangements (partial contingency) for significant claims

ENGAGEMENT TERMS:
  Retainer vs. hourly:
    Retainer: Fixed monthly fee for a defined scope of work; good for predictable ongoing work
    Hourly: Pay for actual time; good for discrete matters or unpredictable volume
    Fixed fee: Agreed price for a defined deliverable (e.g., trademark application; simple LOI review)
      Preferred when scope is well-defined — eliminates billing surprises
  Billing rate vs. billing guidelines:
    Always get a written engagement letter specifying: rates; who does the work; billing cycle
    Billing guidelines (if volume warrants): No billing for first 15 minutes of phone calls; no billing for
      internal team meetings; no paralegal billing at partner rates; detailed invoice requirements
      
INVOICE REVIEW:
  Every legal invoice must be reviewed before payment
  Common red flags:
    Block billing: "Review documents, prepare memo, conference with client (5.0 hrs)" — no detail
      Right: Each task billed separately with time shown
    Administrative tasks billed at attorney rates: Filing; copying; document organization
    Rate creep: Junior associates billing at senior associate rates
    Over-staffing: 3 attorneys on a call that required 1
    Vague descriptions: "Legal research" without specifying the research topic
  When to push back:
    Block billing: Request detailed breakdown before paying
    Rate errors: Confirm rates against the engagement letter
    Excessive time: Ask for explanation; dispute specific line items
    
LEGAL SPEND TRACKING:
  Budget: Include legal costs in the annual operating budget (fpa-annual-budget-builder)
  Monthly tracking: Track legal spend by entity and matter type in QuickBooks
  Alert threshold: If a single matter exceeds $10K without Matt Mathison awareness → brief Matt Mathison
  Annual review: Total legal spend by category; identify high-cost matters; evaluate whether in-house or
    alternative approaches would reduce costs
```

## Output Format

```markdown
# Outside Counsel Status — [Entity or Portfolio]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Period:** [Year or Quarter]

---

## Active Outside Counsel

| Firm | Practice Area | Primary Contact | Rate | Matter | YTD Spend |
|------|-------------|----------------|------|--------|----------|
| [Firm A] | Employment | [Name] | $[X]/hr | EPLI claim defense | $[X]K |
| [Firm B] | M&A | [Name] | $[X]/hr | Allevio exit process | $[X]K |
| [Firm C] | Corporate | [Name] | $[X]/hr | Entity maintenance | $[X]K |

---

## Legal Spend Summary

| Entity | Budget | Actual YTD | Variance | Largest Matter |
|--------|--------|-----------|---------|---------------|
| MBL Partners | $[X]K | $[X]K | +/−$[X]K | [Matter] |
| Allevio | $[X]K | $[X]K | +/−$[X]K | [Matter] |
| HIVE | $[X]K | $[X]K | +/−$[X]K | [Matter] |

---

## Pending Engagements / Recommendations

| Matter | Recommended Firm | Estimated Cost | Approval Needed |
|--------|----------------|---------------|----------------|
| [New matter] | [Firm recommendation] | $[X]-$[X]K | [CEO / Matt Mathison] |
```

## Output Contract
- Right firm for the right matter — using a $450/hour M&A partner to review a $12K vendor contract is a misallocation; using a general practitioner to handle a HIPAA OCR investigation is a risk; Dr. Lewis matches the matter to the appropriate firm based on specialization, market, and cost; for most routine matters (contract review, entity filings, employment advice), a regional mid-size firm is preferable to a large national firm at significantly lower rates; for high-stakes matters (M&A, serious regulatory enforcement), the investment in a specialist is justified by superior outcomes
- All invoices are reviewed before payment — Dr. Lewis does not pay legal invoices automatically; every invoice is reviewed for block billing, rate consistency with the engagement letter, appropriate staffing, and reasonable time; if an invoice has billing issues, Dr. Lewis calls the relationship partner directly (not the billing department) and resolves the dispute promptly; firms that consistently produce problematic invoices are replaced; firms that respond well to feedback on billing practices earn more work
- Legal spend is part of the budget — legal costs are budgeted line items; Dr. Lewis includes estimated legal spend in each portfolio company's annual operating budget and tracks actual vs. budget monthly; any matter that exceeds $10K without prior planning triggers a brief to Matt Mathison; litigation in particular can escalate quickly and unexpectedly, so Dr. Lewis forecasts litigation costs monthly with insurance recovery netted out
- HITL required: Dr. Lewis selects and manages outside counsel; Matt Mathison approves outside counsel engagements exceeding $25K (single matter) or $50K (cumulative annual); CEO provides business context to counsel (Dr. Lewis provides legal strategy context); invoices approved by Dr. Lewis before payment via Bill.com; Dr. Lewis does not authorize legal invoices >$10K without CEO awareness; Dr. Lewis does not commit to retainers >$25K/month without Matt Mathison approval

## System Dependencies
- **Reads from:** Matter-specific context (what is the legal question and what is at stake?); engagement letters (rates, scope, billing terms); legal invoices (from Bill.com — to review before payment); annual legal budget (fpa-annual-budget-builder); insurance coverage (if the matter is covered by insurance, the carrier's panel counsel may be preferred); prior matters with the firm (satisfaction, outcomes)
- **Writes to:** Outside counsel engagement letter (signed by CEO or Dr. Lewis per authority); invoice review log (confirmed/disputed items); legal spend tracker (SharePoint/Legal/MBL/LegalSpend/[Year]_LegalSpend.xlsx); Matt Mathison legal spend summary (quarterly); rejected invoice items (written dispute to the firm); outside counsel evaluation notes (annual)
- **HITL Required:** Dr. Lewis selects and manages; Matt Mathison approves engagements >$25K; CEO signs engagement letters for company-level matters; Dr. Lewis approves invoices <$10K; CEO + Dr. Lewis for $10K-$25K; Matt Mathison for >$25K invoices; Dr. Lewis does not execute engagement letters on behalf of portfolio companies without CEO authorization

## Test Cases
1. **Golden path:** Allevio needs employment counsel for an EPLI claim defense → Dr. Lewis identifies the matter (single-plaintiff wrongful termination; Arizona; $75K claim); selects employment law firm (Arizona employment boutique; EPLI panel counsel confirmed by carrier); engagement letter: $250/hour associate; $350/hour partner; EPLI carrier assigns defense; Dr. Lewis reviews the first invoice: $3.2K; confirms billing matches engagement letter rates; confirms all time entries are appropriately detailed (no block billing); one line item flagged: "Administrative document organization — 2.0 hours at $350/hour partner rate"; Dr. Lewis calls the relationship partner: "This looks like it should be at paralegal rates; can you credit 2.0 hours at the difference?" Firm credits $200; invoice adjusted and paid; matter resolved within 4 months; total legal spend: $18K (within EPLI retention + coverage)
2. **Edge case:** HIVE receives an EPA notice and Dr. Lewis needs to engage O&G environmental counsel quickly → Dr. Lewis pulls his counsel directory; no existing O&G counsel retained; identifies 3 Utah O&G environmental firms via peer referrals and bar directory; quick call with each: (1) Miller & Boileau — $400/hour partner; DOGM and EPA Region 8 experience; in-house EPA alumni on staff; (2) Parsons & Lamb — $350/hour; more general energy practice; (3) Lewis & Roca — $375/hour; broad practice; all confirmed availability; Dr. Lewis selects Miller & Boileau (EPA alumni is specifically valuable for the EPA notice); engages for the specific matter with a $15K cap (requires CEO authorization; within Dr. Lewis approval range); briefing Matt Mathison given the EPA notice
3. **Adversarial:** Column6's M&A counsel sends an invoice for $145K for a 2-month period on the Allevio exit — Dr. Lewis reviews the bill: 4 attorneys billing on a matter that typically runs 2; 22 hours of "due diligence review" at $450/hour by a partner (should be associate work); $3,200 in "research" with no subject specified; Dr. Lewis calls the lead partner: "I've reviewed the invoice and have three questions: (1) Why are 4 attorneys on this deal — we discussed 2 in the engagement letter; (2) The 22 hours of DD review at partner rates should be associate-level work; can we revise? (3) The $3,200 in research needs specificity — what were you researching? I'd like to resolve this before I approve payment." Firm agrees to credit 10 hours of partner-to-associate rate differential ($2,500 credit) and provides research detail; remaining disputed items resolved; invoice adjusted to $138K and paid

## Audit Log
All engagement letters retained by firm and matter. Invoice reviews retained (what was reviewed; what was disputed; how it was resolved). Legal spend tracker maintained by year. Matt Mathison outside counsel briefings retained. Firm evaluation notes retained. Any invoice disputes retained with outcome.

## Deprecation
Retire when MBL Partners has a dedicated general counsel who manages outside counsel relationships — with Dr. Lewis providing business context for legal matters and Matt Mathison approving the annual legal budget.
