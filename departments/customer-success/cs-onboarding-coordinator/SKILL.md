---
name: cs-onboarding-coordinator
description: "Coordinate new customer onboarding and implementation for MBL portfolio companies. Use when the user says 'customer onboarding', 'new customer onboarding', 'implementation', 'onboard a new customer', 'new account onboarding', 'implementation plan', 'new client setup', 'getting a new customer started', 'first 90 days for a customer', 'customer kickoff', 'kickoff call', 'kickoff meeting', 'implementation kickoff', 'new customer setup', 'account launch', 'customer launch', 'time to value', 'TTV', 'onboarding timeline', 'implementation timeline', 'customer goes live', 'go-live date', 'first milestone', or 'implementation checklist'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--go-live <target date>] [--action <plan|track|report>]"
---

# CS Onboarding Coordinator

Coordinate new customer onboarding and implementation for MBL portfolio companies — building a structured implementation plan, tracking milestones, and ensuring the customer reaches their first value moment as quickly as possible. The onboarding period is the highest-risk phase of the customer relationship; customers who experience a poor or delayed onboarding churn at 2-3× the rate of customers who go live on time and see immediate value. Dr. Lewis owns the onboarding process for each portfolio company until a dedicated CS function is established.

## When to Use
- A new customer has signed a contract and needs to be onboarded
- An existing customer is adding a major new service component
- Reviewing why onboarding is delayed or a customer is not going live
- Building the standard onboarding process for a portfolio company

## Onboarding Framework

```
ONBOARDING PHILOSOPHY:
  Time-to-value is the primary metric — TTV (time to first value moment) drives retention;
    for Allevio: first value = first member enrolled and first claim processed;
    for Column6: first value = first IO campaign launched and completion rate delivered;
    for HIVE: first value = executed lease and first royalty payment received
    
  The kickoff call sets the tone — the first call after contract signing is either
    energizing or deflating; Dr. Lewis runs kickoff calls for all accounts >$100K ACV;
    the kickoff sets: timeline; key milestones; who does what; what "done" looks like
    
  Proactive beats reactive — customers who don't hear from CS during onboarding assume
    things are going wrong; Dr. Lewis contacts the customer at least weekly during
    the onboarding period regardless of whether there are issues

ENTITY-SPECIFIC ONBOARDING:

  ALLEVIO — Employer Group Onboarding:
    Parties: HR Director (employer); Allevio implementation team; AdvancedMD (claims system);
      Marshall Medical Billing (RCM); employees (members)
    Timeline target: 12 weeks from signed contract to first member enrolled
    Key milestones:
      Week 1: Kickoff call; employer data collection (census file — employee list; dependents; dates of hire)
      Week 2: Group setup in AdvancedMD; benefits configuration; HIPAA documentation (BAA signed)
      Weeks 3-4: ID cards ordered; member communications drafted and approved by HR Director
      Weeks 5-6: HR Director and payroll team briefed on deduction setup (payroll integration)
      Weeks 7-8: Open enrollment communication sent to employees (if active enrollment period)
      Weeks 9-10: Employee benefit elections received; member enrollment confirmed in AdvancedMD
      Weeks 11-12: First member eligible date; first claim submission test; go-live confirmed
    Risk flag: Any employer group that misses the Week 1 census file delivery — add 2-4 weeks
      to the timeline; Dr. Lewis calls the HR Director immediately to unblock
    HIPAA requirement: BAA must be signed before ANY PHI is exchanged (not after — before)
    
  COLUMN6 — CTV Advertiser Onboarding:
    Parties: Agency media buyer; Column6 account manager; technical integration team
    Timeline target: 5 business days from signed IO to first impression served
    Key milestones:
      Day 1: IO received and confirmed; campaign parameters entered; creative assets requested
      Day 2: Creative assets received and reviewed; targeting configured
      Day 3: Campaign QA — test serving; pixel verification (if applicable)
      Day 4: Campaign live; first impression data in reporting dashboard
      Day 5: Pacing check — are we on track to deliver? Initial completion rate data
    Risk flag: Missing creative assets — most common delay; Day 1 creative request is non-negotiable
    Reporting setup: Agency must have access to the Column6 reporting dashboard before Day 4
    
  HIVE — Mineral Rights Lease Onboarding:
    Parties: Landowner; HIVE land management team; title company; legal counsel
    Timeline target: 30-45 days from signed LOI to executed lease
    Key milestones:
      Days 1-5: Title search initiated; landowner contact information confirmed
      Days 6-15: Lease draft sent; landowner and legal counsel review
      Days 16-25: Lease negotiation (if applicable); final terms agreed
      Days 26-30: Lease executed (notarized); recorded with county; bonus payment processed
      Days 31-45: Covercy record created; royalty payment cadence established
    Risk flag: Title disputes or heirs — add 30-60 days; legal counsel required immediately
    Payment: Bonus payment processed within 5 business days of executed lease

ONBOARDING HEALTH MONITORING:
  Green: On schedule; all milestones met; customer responsive and engaged
  Yellow: 1-2 weeks behind; customer partially responsive; Dr. Lewis escalates personally
  Red: >2 weeks behind; customer unresponsive; or HIPAA/legal documentation not signed
    → Dr. Lewis calls the CEO of the portfolio company immediately; escalation required
```

## Output Format

```markdown
# Customer Onboarding Plan — [Account Name] | [Entity]
**Contract signed:** [Date] | **Go-live target:** [Date] | **ACV:** $[X]K
**Primary contact:** [HR Director name / Media buyer / Landowner] | **CS owner:** Dr. Lewis / [Name]

---

## Milestone Tracker

| Week | Milestone | Owner | Target date | Status |
|------|-----------|-------|------------|--------|
| 1 | Kickoff call complete | Dr. Lewis | [Date] | ✅ / ⏳ / ❌ |
| 1 | Census file received | HR Director | [Date] | ✅ / ⏳ / ❌ |
| 2 | BAA signed | HR Director + Dr. Lewis | [Date] | ✅ / ⏳ / ❌ |
| 2 | Group setup in AdvancedMD | Implementation team | [Date] | ✅ / ⏳ / ❌ |
| ... | | | | |
| 12 | First member enrolled; go-live | Implementation team | [Date] | ✅ / ⏳ / ❌ |

---

## Risk Log

| Risk | Likelihood | Impact | Mitigation | Owner |
|------|-----------|--------|-----------|-------|
| Census file delay | Medium | High — adds 2-4 weeks | Dr. Lewis calls HR Director Week 1 | Dr. Lewis |
| BAA not signed | Low | Critical — blocks all PHI exchange | Non-negotiable first action | Dr. Lewis |

---

## Onboarding Health

**Current status:** 🟢 Green / 🟡 Yellow / 🔴 Red
**Next action:** [Specific task; owner; due date]
```

## Output Contract
- BAA first for Allevio — no PHI is exchanged before the HIPAA Business Associate Agreement is signed; Dr. Lewis does not allow any member data (names; dates of birth; plan elections) to be processed before the BAA is executed; the BAA is the first document sent after contract signing; if the HR Director is delayed, Dr. Lewis escalates immediately — this is not optional
- Weekly contact minimum during onboarding — the CS team contacts the customer at minimum once per week during the onboarding period whether or not there are issues; a customer who goes 2 weeks without contact during onboarding assumes problems; weekly contact is Dr. Lewis's personal standard for >$100K ACV accounts during onboarding; smaller accounts receive bi-weekly contact
- Milestone slippage is reported immediately — if any critical milestone slips by more than 5 business days, Dr. Lewis notifies the CEO of the portfolio company; slippage is logged in the onboarding tracker with the reason and the revised date; Dr. Lewis does not quietly absorb delays without informing the CEO
- HITL required: Dr. Lewis runs kickoff calls for all accounts >$100K ACV; CEO is notified of any onboarding that goes Red; Matt Mathison is notified if go-live is delayed by >30 days for an account >$150K ACV; HIPAA BAA must be signed before any PHI exchange; bonus payment for HIVE leases requires CEO authorization before processing; Dr. Lewis does not approve go-live without confirming all critical milestones are complete

## System Dependencies
- **Reads from:** Signed contract (SharePoint/Legal/<Company>/Contracts/[Account]_[Date].pdf — go-live date; billing start date); sales-to-CS handoff notes (cs-handoff-receiver — what did sales learn about this customer?); ICP profile (sales-ideal-customer-profile — what does a successful implementation look like for this segment?); HIPAA BAA template (for Allevio — SharePoint/Legal/Allevio/BAA_Template.docx)
- **Writes to:** Onboarding tracker (SharePoint/CustomerSuccess/<Company>/Onboarding/[Account]_OnboardingTracker.xlsx); milestone log (GoHighLevel CRM — account activity; milestone dates); AdvancedMD group record (Allevio — group setup, enrollment dates); Covercy landowner record (HIVE — bonus payment; royalty cadence); Column6 campaign dashboard (IO setup; go-live date); cs-health-score-tracker (account health initialized at onboarding start)
- **HITL Required:** Dr. Lewis runs kickoff calls for >$100K ACV; CEO notified of Red onboarding status; Matt Mathison notified of >30-day delay for >$150K ACV; BAA must be signed before PHI exchange (Allevio — non-negotiable); bonus payment requires CEO authorization (HIVE); go-live sign-off requires Dr. Lewis confirmation of all critical milestones

## Test Cases
1. **Golden path:** Allevio — new 120-member employer group signed October 1; go-live target January 1 (12 weeks); Dr. Lewis runs kickoff call October 5 with HR Director and payroll team; census file received October 8 (Week 1 ✅); BAA signed October 9 (Week 1 ✅); AdvancedMD setup complete October 16 (Week 2 ✅); ID cards ordered October 20; employee communication drafted and approved October 25; open enrollment communications sent November 1; elections received November 15; member enrollment confirmed in AdvancedMD November 22; first claim test December 10 (success); go-live January 1 — 120 members active; Dr. Lewis calls HR Director January 2: "Everything looks great — your first EOB will be available January 15"
2. **Edge case:** Column6 — IO signed Tuesday for a campaign that needs to start Monday (6 days); creative assets not delivered until Thursday (Day 3 instead of Day 1) → Dr. Lewis escalates: "We need creative assets by Thursday 5pm to make Monday launch. Without them, the campaign goes live Wednesday — we'll need to extend the flight end date to deliver the full impression count. I'm sending the agency a hold-your-dates alert now and confirming the extended flight with the account manager. If assets are not received by Thursday 5pm, I'm calling the agency media buyer directly." Creative received Thursday 4pm; campaign QA Friday; live Monday (1-day delay absorbed by flight extension — delivery target maintained)
3. **Adversarial:** HIVE — landowner signed the LOI then stops responding during the 30-day lease execution window; HIVE's land management team has sent 3 emails with no reply → Dr. Lewis: "Three unanswered emails in 2 weeks means we have an issue. Options: (1) The landowner changed their mind; (2) The landowner has a legal or family question they haven't asked yet; (3) Wrong contact method — have we called? I recommend: (a) Phone call today — not email; (b) If no answer, send certified mail to the property address; (c) If still no response in 5 days, we need to determine whether to hold the LOI open or release the parcel. This is a CEO-level decision — I'll brief the CEO today." CEO briefed; phone call made; landowner had questions about the royalty calculation — resolved on the call; lease executed Day 38

## Audit Log
All onboarding plans retained by account, entity, and contract date. Milestone completion records retained. BAA signature records retained permanently (Allevio — HIPAA requirement). Delay records and escalation logs retained. Go-live confirmation records retained. Post-onboarding 30-day check records retained.

## Deprecation
Retire when each portfolio company has a dedicated Implementation Manager or Customer Onboarding team — with Dr. Lewis reviewing the onboarding process quarterly and approving any changes to the standard milestone timeline.
