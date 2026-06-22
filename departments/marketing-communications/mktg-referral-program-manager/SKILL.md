---
name: mktg-referral-program-manager
description: "Build and manage formal referral programs for MBL Partners portfolio entities. Use when the user says 'referral program', 'referral marketing', 'referral system', 'referral incentive', 'referral reward', 'referral commission', 'employer referral', 'agency referral', 'client referral', 'refer a friend', 'word of mouth', 'generate referrals', 'referral pipeline', 'broker referral', 'referral tracking', 'referral attribution', 'who referred who', 'track referrals', 'referral source', 'warm introduction', 'warm intro program', 'trusted intro', 'introduction program', 'referral rate', 'how many clients come from referrals', 'referral-sourced pipeline', 'referral conversion rate', or 'how do we get more referrals'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--referrer-type <employer|broker|agency>] [--action <design|launch|track|report>]"
---

# Marketing Referral Program Manager

Design and manage formal referral programs for MBL Partners portfolio entities — creating structured incentive and tracking systems that convert satisfied employers and broker partners (Allevio) or agency partners (Column6) into active referral sources. Referral-sourced pipeline closes faster and at higher rates than any other acquisition channel; building a systematic referral program converts satisfied clients' advocacy into measurable revenue.

## When to Use
- Designing a formal referral program for Allevio or Column6
- Tracking referral-sourced pipeline and referral program performance
- Adding a referral incentive or commission structure to an existing partner relationship
- Identifying which clients should be asked for referrals

## Referral Program Framework

```
REFERRAL PROGRAMS BY ENTITY:

  ALLEVIO — EMPLOYER AND BROKER REFERRAL PROGRAM:
  
    Employer-to-Employer Referral:
      Who refers: satisfied Allevio employer clients refer other employers in their HR network
      Incentive structure options (Dr. Lewis + Allevio CEO set):
        Option A: No financial incentive (peer advocacy; keeps it clean and genuine)
        Option B: Service credit (e.g., reduced admin fee for the referring employer's next plan year)
        Recommendation: Dr. Lewis prefers no financial incentive for employer referrals — an unprompted referral is more credible; financial incentives can imply the referral wasn't genuine; HIPAA context makes financial incentive structures around healthcare relationships complex
      Referral ask process: Allevio CEO or care coordinator makes the ask personally; never through automated email
      Referral tracking: GoHighLevel tag "referral-employer-[referring employer name]" on all referred contacts
      Referral close rate target: >60% (referral leads should close significantly better than cold leads)
      
    Broker Referral Program:
      Who refers: benefits brokers who recommend Allevio to their employer clients
      Incentive structure: broker referral commission (defined per employer size and contract length); Dr. Lewis + Allevio CEO set the commission schedule; consistent; documented; paid after employer contract is signed and first 90 days completed (prevent churn-before-pay risk)
      Commission documentation: commission agreement signed with each broker before they refer; Dr. Lewis reviews commission structure for compliance with AZ insurance law (broker relationships may have specific requirements)
      Tracking: GoHighLevel tag "referral-broker-[broker firm name]" on all broker-referred contacts
      Broker referral report: monthly; broker → leads generated → closed → commission earned
      
  COLUMN6 — AGENCY REFERRAL PROGRAM:
    Who refers: existing Column6 agency clients refer other agencies in their network (agency sharing is common in the independent agency world; holding company agencies usually have internal referral systems)
    Incentive: access to beta features or preferential pricing on next campaign (not cash — avoids complications); or a formal "agency partner referral reward" defined by Column6 CEO
    Referral ask: Column6 commercial AM makes the ask personally during a relationship touchpoint
    Tracking: GoHighLevel tag "referral-agency-[referring agency name]" on all agency-referred contacts
    Referral close rate target: >50%

REFERRAL PROGRAM GOVERNANCE:
  All incentive structures → Dr. Lewis + entity CEO set; legal reviews if broker commission is material
  No referral incentive that could be construed as a kickback in a healthcare context (Allevio)
  Referral commission agreements → Dr. Lewis reviews for legal compliance before signing
  Referral tracking: GoHighLevel is the system of record for referral attribution; no referral commission paid without GoHighLevel record of the referral source
  Commission disputes: entity CEO + Dr. Lewis resolve; documented
  
REFERRAL PROGRAM METRICS:
  Referral-sourced MQLs (monthly): by referrer type (employer; broker; agency)
  Referral-sourced pipeline ($): by referrer type
  Referral close rate: % of referral leads that close
  Referral to first demo/call: time from referral entry to first qualified conversation
  Commission paid (broker; monthly): tracked in QuickBooks; Dr. Lewis reviews monthly
  Referral NPS: are referring clients still satisfied after referring (secondary referral risk if referred client has bad experience)
  
REFERRAL ASK PROCESS:
  Timing: 6-12 months into a positive client relationship; after first plan renewal (Allevio) or after 2 successful campaigns (Column6)
  Who asks: entity CEO or senior commercial AM (not marketing); referral asks are personal
  How to ask: "We're proud of what we've built with you. If you know another HR leader who's struggling with the same challenges you had, we'd love an introduction. No pressure."
  Follow-up: single follow-up after 2 weeks if no referral; then stop asking
  Documentation: referral agreement (if incentivized) or referral log entry (if non-incentivized)
```

## Output Format

```markdown
# Referral Program Report — [Entity] — [Period]
**Prepared by:** Marketing Lead | **To:** Entity CEO + Dr. Lewis

---

## Referral Pipeline Summary

| Referrer type | Referrals this period | Pipeline value | Close rate | Commissions paid |
|--------------|----------------------|---------------|-----------|-----------------|
| Employer-to-employer | [X] | $[X] | [X]% | N/A |
| Broker | [X] | $[X] | [X]% | $[X] |
| Agency (Column6) | [X] | $[X] | [X]% | N/A / $[X] |

---

## Active Broker Referral Partners

| Broker firm | Referrals YTD | Commission earned | Commission YTD | Status |
|------------|---------------|-----------------|---------------|--------|

---

## Referral Program Health

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Referral close rate | | >60% | |
| Pipeline from referrals | $X | $X | |
| Active broker agreements | | | |

---

## Pending Commissions
[Table: broker; referral; employer signed date; commission due date; amount]

---

## Referral Program Issues
[Any: attribution disputes; unapproved referral asks; incentive structure questions]
```

## Output Contract
- Referral commissions are paid only after the referred client signs and completes 90 days — this prevents brokers from gaming the referral program by referring clients who are unlikely to stay; a commission paid on a client who churns in month 2 is a double loss; Dr. Lewis designs the commission structure with a 90-day post-signing payment trigger; this is disclosed to brokers upfront in the commission agreement; no commission is paid without a GoHighLevel record confirming the referral source, a signed employer contract, and 90 days of active relationship
- Referral incentive structures for healthcare-adjacent programs require legal review — in the Allevio context, broker commissions for referring employer clients exist in a space where state insurance law and anti-kickback considerations are relevant; even though Allevio's broker relationship is employer-focused (not clinical), Dr. Lewis gets a legal review on the commission structure before it is formalized; the commission agreement is reviewed by legal; this is not bureaucratic — an improperly structured commission in a healthcare-adjacent business creates regulatory risk
- Referral asks are personal and cannot be automated — an automated email that says "Love Allevio? Tell a friend!" in a healthcare employer context is tone-deaf and ineffective; referral asks in B2B health and media markets are relationship events that happen in conversation; Dr. Lewis ensures entity CEOs and commercial teams understand that referral asks are part of relationship management, not a marketing campaign; the ask is scripted (see framework) but delivered personally; tracking of the ask happens in GoHighLevel after the conversation
- HITL required: referral commission structure → Dr. Lewis + entity CEO set; legal review → Dr. Lewis ensures legal reviews broker commission agreement before signing; broker commission agreement → entity CEO signs; commissions paid → Dr. Lewis reviews monthly in QuickBooks; commission disputes → entity CEO + Dr. Lewis resolve; referral attribution disputes → Dr. Lewis resolves via GoHighLevel records; referral ask protocol → entity CEO trains commercial team

## System Dependencies
- **Reads from:** mktg-partner-co-marketer (broker referral program is part of broker partnership); mktg-customer-advocacy-marketer (reference employers are also candidates for referral program); GoHighLevel (referral source tracking; contact attribution); mktg-demand-generation-manager (referral pipeline feeds into total demand gen funnel); QuickBooks (commission payment tracking)
- **Writes to:** GoHighLevel (referral source tags; referral pipeline tracking); referral program records (SharePoint → [Entity] → Marketing → Referral Program); broker commission agreements (SharePoint → [Entity] → Legal → Broker Commissions); QuickBooks (commission payment records); referral program monthly report
- **HITL Required:** Commission structure → Dr. Lewis + entity CEO; legal review → Dr. Lewis ensures; broker agreement signing → entity CEO; commissions paid → Dr. Lewis reviews monthly; attribution disputes → Dr. Lewis; referral ask protocol → entity CEO trains team

## Test Cases
1. **Golden path:** Allevio broker referral program activation. Commission structure set (Dr. Lewis + Allevio CEO): $X per 25-99 employee employer signed; $Y per 100-250 employee employer signed. Legal review completed. Broker commission agreement signed with Phoenix-based brokerage. Month 1: broker refers 2 employers (both in AZ; HR Director contacts; correct size). GoHighLevel: both tagged "referral-broker-[Firm]"; assigned to employer demand gen pipeline. Month 3: Employer 1 signs ($36K contract); 90-day clock starts. Month 6: commission paid ($1,200 per terms; QuickBooks logged; Dr. Lewis reviews). Month 6 referral total: 3 employers referred; 2 closed; $72K employer contracts; $2,400 commission paid. Pipeline multiplier: ~30:1 commission-to-contract value.
2. **Edge case:** An employer refers another employer but the referred employer claims they already knew about Allevio from a LinkedIn post → Dr. Lewis: "Attribution in B2B is never perfect. If the referred employer's first entry into GoHighLevel was triggered by the referral (tag: referral-employer-[name]; no prior contact record), we credit the referral. If they were already in our system as an organic contact before the referral introduction, we credit organic with a referral assist. Commission (if applicable) is only on new contacts attributed to the referral. GoHighLevel is the system of record. I'll review the specific contact history and make the attribution call."
3. **Adversarial:** A broker submits an invoice for a referral commission on an employer client that Allevio's sales team had been pursuing for 6 months before the broker introduced themselves → Dr. Lewis: "GoHighLevel is the system of record. I'm reviewing: when did this employer first appear in GHL?; what was the source?; is there a record of Allevio outreach before the broker introduction? If the employer was in GHL as an organic contact before the broker's involvement, no commission applies — the referral must be for a net-new contact, not a hand-off on an existing prospect. I'll review the records and communicate the decision to the broker within 48 hours with the GoHighLevel documentation. If the broker disputes, entity CEO and Dr. Lewis resolve."

## Audit Log
Referral commission agreements retained permanently. GoHighLevel referral attribution records. Commission payment records (QuickBooks). Legal review records (broker commission structure). Referral attribution dispute resolution records. Monthly referral program reports. Entity CEO commission approval records.

## Deprecation
Referral commission structure reviewed annually. Legal review of commission structure reviewed when AZ insurance law or regulations change. Referral program metrics reviewed when entity growth stage changes. Broker commission agreement template reviewed annually by legal. Program deprecated when entity go-to-market model changes.
