---
name: sales-referral-program
description: "Design and manage referral programs for MBL portfolio companies. Use when the user says 'referral program', 'referrals', 'customer referral', 'referral system', 'broker referral', 'partner referral', 'referral tracking', 'generate referrals', 'ask for referrals', 'referral incentive', 'referral reward', 'referral commission', 'word of mouth', 'customer introduction', 'customer referral program', 'how to get referrals', 'referral strategy', 'broker program', 'benefits broker', 'broker channel', 'referral partner', 'introduce me to', or 'warm introduction'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--channel <customer|broker|partner>] [--action <design|track|activate|report>]"
---

# Referral Program

Design and manage referral programs for MBL portfolio companies — creating structured, incentivized referral channels that generate warm leads at a fraction of the cost of cold outreach. Referrals close at 3-4× the rate of cold outbound leads; a customer who refers another customer is one of the strongest endorsements the business can receive. Dr. Lewis builds referral programs that make it easy for happy customers and channel partners to send qualified introductions.

## When to Use
- Building a referral program from scratch for a portfolio company
- Activating the referral channel from an existing happy customer base
- Building a broker or channel partner referral structure
- A rep wants to ask a customer for a referral (how to do it; when to do it)

## Referral Program Framework

```
REFERRAL CHANNEL TYPES AND ENTITY MAPPING:

  ALLEVIO — Two primary referral channels:
  
    1. Customer Referrals (employer group → employer group):
       Target: HR Directors and CFOs at existing Allevio employer groups
       When to ask: After a QBR where the customer expressed strong satisfaction; or after a
         specific win (claim ratio improved; renewal completed smoothly)
       NOT: "Do you know anyone who could benefit from Allevio?" (too generic)
       YES: "Your claim ratio is down 12 points this year. I'm guessing you have peers in the
         [industry] who are dealing with the same rising costs you were. Who's the first HR
         Director that comes to mind when you think of someone who would benefit from what
         we've done here?"
       Incentive: $500 Amazon or Visa gift card per referral that becomes an active account
         (paid to the referring HR Director personally; not to the company)
       CEO must approve the incentive program before it is offered to any customer
         
    2. Benefits Broker Referrals (broker → employer group):
       Context: Many Allevio prospects use a benefits broker who manages their benefits procurement
       Target: Independent benefits brokers in Maricopa/Pima County (not the captive agents
         of major carriers — they won't refer to an MSO)
       Broker incentive: 3% commission on the first-year ACV of any employer group they refer
         that becomes an active Allevio account
         Example: $153K ACV × 3% = $4,590 broker commission per referred and closed account
       Broker relationship: Dr. Lewis introduces Allevio to 5-10 independent brokers per year;
         CEO maintains the strategic broker relationships; rep manages referral tracking
         
  COLUMN6 — Agency-to-Agency Referrals:
    Context: Media buyers know each other; a media buyer at one agency may know buyers at others
    How to ask: "Is there a buyer at another agency who you think is doing interesting things
      with CTV that we should get on their radar? We're not trying to poach your business —
      we work with different brands at every agency."
    Incentive: No financial incentive for intra-agency referrals; the referral is professional
      courtesy; don't cheapen it with a cash offer
    What to offer instead: "If you introduce us, I'll make sure [buyer] gets priority access
      to the first available slots in [their category] — that's a service I can only offer
      to people who are already in our network."
      
  HIVE — Landowner-to-Landowner Referrals:
    Context: Landowners in the Uinta Basin know each other (family relationships; community)
    How to ask: When a lease is signed, ask the landowner directly:
      "Thank you for working with us. We're actively looking to work with other mineral rights
        owners in this area. Are there any neighbors you'd feel comfortable introducing us to?"
    Incentive: $200 gift card per signed lease from a referred landowner
    CEO must approve all referral payments before they are offered

REFERRAL TRACKING:
  Every referral logged in CRM (GoHighLevel):
    Referring contact name
    Referred prospect name and company
    Referral date
    Source: Customer referral / Broker referral / Partner referral
    Status: Contacted / Discovery scheduled / Proposal / Closed Won / Closed Lost
    Incentive paid: Yes / No / Date paid
    
  Monthly referral review: Dr. Lewis reviews the referral pipeline with the rep
    How many referrals generated this month?
    How many converted to discovery calls?
    What is the referral close rate vs. cold outbound close rate?
    Which referring customers/brokers are sending the most and best referrals?
    
HOW TO ASK FOR A REFERRAL — THE SCRIPT:
  Timing: After a positive QBR; after a renewal; after a specific win
  NOT: "Do you know anyone who might benefit from Allevio?" (too generic; puts the burden
    on the customer to think through their entire network)
  YES: "Given what we've done together on [specific result], who's the first person that
    comes to mind when you think of an HR Director or CFO who is dealing with the same
    cost pressure you were facing before you joined us?"
  After they name someone: "Would you be willing to make a quick email introduction?
    It takes 30 seconds and I'll take it from there — I'll do all the work."
```

## Output Format

```markdown
# Referral Program — [Entity]
**Owner:** Dr. Lewis | **Date:** [Date] | **CEO Approved:** Yes / [Pending]

---

## Referral Channel Summary

| Channel | Target | Incentive | Expected volume | Current YTD |
|---------|--------|----------|----------------|------------|
| Customer (HR Director) | Active Allevio groups >6 months | $500 gift card | 2-4/month | [N] |
| Broker | Independent brokers in Maricopa/Pima | 3% first-year ACV | 1-2/month | [N] |

---

## Active Referral Pipeline

| Referral | Source | Referred to | Status | Incentive paid |
|---------|--------|------------|--------|----------------|
| [Referrer name] | Customer — Group A | [Prospect company] | Discovery scheduled | Pending |
| [Broker name] | Broker — [Name] | [Prospect company] | Proposal | $4,200 owed |

---

## Monthly Referral Metrics

| Metric | This month | Prior month | YTD |
|--------|-----------|------------|-----|
| Referrals generated | [N] | [N] | [N] |
| Referral-to-discovery conversion | [X]% | [X]% | [X]% |
| Referral close rate | [X]% (vs. [X]% cold) | — | [X]% |
| Incentives paid | $[X] | $[X] | $[X]K |
```

## Output Contract
- Ask specifically, not generally — "do you know anyone?" is a nearly useless question because it forces the customer to mentally scan their entire network with no guidance; "who is the first HR Director who comes to mind when you think of [specific pain]?" is a much more productive question because it narrows the search to one specific type of person with one specific need; Dr. Lewis trains reps on the specific referral ask script and measures the specific-ask conversion rate vs. the general-ask conversion rate
- Only ask for a referral from a happy customer — asking for a referral from a customer who has an open complaint or who gave a neutral QBR is counterproductive; the referral ask signals confidence that the customer is satisfied; a customer who is not satisfied will either decline or give a qualified referral that reflects poorly on Allevio; Dr. Lewis requires that the health score be Green before any referral ask
- Broker relationships are strategic, not transactional — a broker who refers Allevio to one employer group and gets paid the 3% commission is not the goal; a broker who systematically refers all of their dissatisfied clients to Allevio as a renewal alternative is the goal; Dr. Lewis builds broker relationships with quarterly check-ins, educational materials (how does the MSO model work?), and recognition for top referrers; the best brokers get exclusive early access to Allevio content and case studies
- HITL required: Dr. Lewis designs and manages the referral program; CEO approves the incentive structure before it is offered to any customer or broker; incentive payments require CEO approval before disbursement (financial authorization); Matt Mathison informed of any broker agreement that creates an ongoing commission obligation; Dr. Lewis does not offer incentives that aren't approved by the CEO; all incentive payments are tracked in QuickBooks and reviewed by Dr. Lewis and the CEO quarterly

## System Dependencies
- **Reads from:** Account health scores (sales-account-plan — is the customer in Green health status before the referral ask?); QBR notes (sales-qbr-framework — was the QBR positive? specific satisfaction signals?); CRM referral source field (GoHighLevel — tracking all referrals by source); broker database (SharePoint/Sales/<Company>/Brokers/ — contact info; commission records; prior referrals); QuickBooks (incentive payment records — all paid out per account)
- **Writes to:** CRM referral record (GoHighLevel — referrer; prospect; source; status; incentive); QuickBooks incentive payment (when a referral converts and the incentive is earned — Dr. Lewis initiates; CEO approves); broker commission agreement (SharePoint/Legal/<Company>/BrokerAgreements/ — signed commission agreement before the first referral); monthly referral report (SharePoint/Sales/<Company>/Referrals/[YYYY-MM]_ReferralReport.pdf); sales-kpi-dashboard (referral volume; referral close rate; referral revenue as % of total new bookings)
- **HITL Required:** Dr. Lewis manages the program and designs the ask approach; CEO approves the incentive structure and all payments; Matt Mathison informed of broker commission agreements; Dr. Lewis does not offer an incentive that isn't approved; Dr. Lewis does not pay an incentive without CEO authorization; broker agreements are reviewed by outside counsel before signing

## Test Cases
1. **Golden path:** Activating the customer referral program for Allevio — 12 accounts have been active for 12+ months with Green health status → Dr. Lewis prepares: "We have 12 customers who are strong enough to ask for a referral. I'll queue them up for the next QBR cycle (5 are scheduled in the next 30 days). I'll train the rep on the referral ask script. The incentive is the $500 Visa gift card — CEO has approved this." In the first 5 QBRs: 3 of 5 customers make referrals; 6 referrals total; 4 are high-quality (score >20 on the inbound lead scoring); 2 convert to closed deals within 60 days; referral close rate: 50% (vs. 30% cold); incentive paid: $1,000 total; CEO is pleased with the ROI; referral program expanded to all 12 accounts
2. **Edge case:** A benefits broker asks to be added to the referral program but is an independent broker who represents carriers that compete directly with Allevio's value proposition → Dr. Lewis: "Before adding this broker to our referral program, I need to understand the conflict. If this broker earns commissions from BCBS AZ or UHC for recommending carrier plans, they have a financial incentive to recommend the competitor even when Allevio would be a better fit for the employer group. A 3% commission from us won't change that dynamic — it might just add us as a secondary option they mention when the employer is already frustrated with the carrier. I recommend a conversation with the broker: 'Are you currently earning compensation from any carriers that compete with the MSO model?' If yes, we should be cautious. If they're truly independent (fee-based), this is a strong referral partner." CEO reviews; broker is fee-based; added to the program
3. **Adversarial:** An Allevio customer (HR Director) refers a prospect but the referred prospect doesn't qualify (8 employees — far below the 25-employee minimum) and the HR Director asks about the $500 gift card → Dr. Lewis: "The gift card is paid when the referred prospect becomes an active Allevio account. This particular referral won't qualify because [Company] has only 8 employees — we work with groups of 25 or more. I'll reach out to them with a referral to a small-group broker who can help them, and I'll reach back out in 2 years when they may have grown. I want to make sure [HR Director] knows the incentive terms — a referral that doesn't become an active account doesn't trigger the gift card, but I greatly appreciate the introduction. Can I suggest one more company that might be a better fit?" HR Director understands; provides a second referral that does qualify; gift card approved by CEO and paid

## Audit Log
All referral records retained by entity, referrer, and date. Incentive payment records retained. Broker commission agreements retained. CEO approval records for all incentive payments retained. Monthly referral reports retained. Referral close rate vs. cold close rate tracked quarterly.

## Deprecation
Retire when each portfolio company has a dedicated customer success or marketing function that owns the referral program — with Dr. Lewis reviewing the program design annually and Matt Mathison reviewing the broker commission agreements.
