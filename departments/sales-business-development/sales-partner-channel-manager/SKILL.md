---
name: sales-partner-channel-manager
description: "Build and manage sales channel and partner programs for MBL portfolio companies. Use when the user says 'channel partner', 'partner program', 'reseller', 'channel sales', 'partner channel', 'strategic partner', 'partnership sales', 'indirect sales', 'channel strategy', 'partner management', 'partner onboarding', 'partner enablement', 'channel enablement', 'partner pipeline', 'partner agreement', 'channel agreement', 'partner commission', 'referral partner', 'technology partner', 'integration partner', 'co-sell', 'partner portal', 'partner network', 'channel development', or 'building a partner ecosystem'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--partner <name>] [--channel-type <broker|technology|referral|reseller>] [--action <design|onboard|manage|report>]"
---

# Sales Partner Channel Manager

Build and manage sales channel and partner programs for MBL portfolio companies — creating structured relationships with brokers, technology partners, and referral partners that generate qualified pipeline without proportional headcount investment. A well-managed channel partner is a force multiplier; a poorly managed channel partner is a reputational liability. Dr. Lewis designs channel programs with clear agreements, defined incentives, and governance before any partner is activated.

## When to Use
- Building a new channel or partner program for a portfolio company
- Onboarding a new broker or partner relationship
- Monthly or quarterly partner pipeline review
- A partner relationship is underperforming or has gone quiet

## Channel Partner Framework

```
CHANNEL TYPES BY ENTITY:

  ALLEVIO — Benefits Broker Channel:
    Who: Independent benefits brokers in Maricopa and Pima County who manage employer group
      benefits (health insurance) for their clients; NOT captive agents of carriers (BCBS; UHC;
      Aetna) who have a financial incentive to recommend carrier products over MSOs
    Role: Broker introduces Allevio to their dissatisfied clients during annual renewal evaluation
    How it works: The employer group trusts their broker; the broker's recommendation to evaluate
      Allevio is a warm introduction; the broker often stays involved in the sales process
    Commission: 3% of first-year ACV per referred account that becomes active
      (see sales-referral-program for the incentive structure)
    Broker enablement:
      □ Broker understanding: 30-minute Allevio model education call with Dr. Lewis (done once; upfront)
      □ Broker materials: One-page overview; claim ratio comparison data; ROI calculation tool
      □ Broker ongoing: Quarterly check-in call; new case studies; pricing updates if any
      □ Broker expectations: No exclusivity; the broker refers to us when they have a fit; we deliver
    Performance review:
      Quarterly: How many referrals did this broker send? How many converted?
      Annual: Is this a productive partner? (2+ closed referrals/year is productive; 0 = inactive)
      
  COLUMN6 — Technology and Data Partners:
    Who: SSP (supply-side platform) partners; data providers (1P data; audience data);
      measurement partners (IAS; DoubleVerify; Nielsen OneCount)
    Role: Technology partners enhance Column6's supply offering and make the sales proposition
      more compelling; measurement partners provide the third-party verification that agency buyers require
    How it works: Column6 integrates with or certifies the technology partner; the partner is
      mentioned in sales conversations as a credibility marker ("We're verified by IAS and
      DoubleVerify"; "We're certified on [SSP]")
    Commission: None — technology partnerships are not commission-based; they are integration and
      certification relationships; the value is the sales credibility, not a referral fee
    Partner enablement:
      □ Integration: Technical integration documented and maintained
      □ Sales enablement: One-page partner certifications/integrations that the sales team references
      □ Co-marketing: Can the partner reference Column6 in their marketing? (mutual benefit)
    Performance review:
      Annual: Does this technology certification improve win rates? (Compare win rate before/after)
      
  HIVE — Landman and Title Company Partners:
    Who: Independent landmen and title companies who know the Uinta Basin mineral rights landscape;
      they have relationships with landowners and access to title/ownership data
    Role: Landmen can identify and introduce HIVE to mineral rights owners who haven't been approached
      or who are ready to lease; title companies can flag recent ownership transfers
    Commission: $50-100 per landowner introduction that leads to an executed LOI
      (lower incentive than the Allevio broker program — the introduction is the primary value)
    Enablement:
      □ HIVE lease terms: Landman knows the bonus range and royalty rate to set expectations
      □ Area map: HIVE's priority development area is shared with trusted landmen
      □ Quick response: HIVE commits to responding to any introduction within 24 hours
    Performance review:
      Quarterly: Introductions received; LOIs signed from introductions; lease bonus paid

PARTNER PROGRAM GOVERNANCE:
  Before activating any partner:
    □ Signed partner agreement (legal review — see legal-contract-reviewer)
    □ Commission structure approved by CEO + Dr. Lewis
    □ NDA if confidential information will be shared
    □ Matt Mathison informed of any partner agreement that creates ongoing financial obligations
    
  Partner pipeline review (monthly):
    □ How many introductions/referrals has the partner sent this month?
    □ What is the conversion rate from partner introductions?
    □ Is the partner active? (If no introductions in 60 days — check in; re-enable if needed)
    □ Is the incentive working? (If the partner is active but not converting — is it an education issue?)
    
  Inactive partners:
    Partners who send 0 referrals in 6 months are moved to "inactive" status
    Inactive partners are contacted once for a re-engagement conversation
    If still no activity after 90 days of re-engagement: Partner agreement is closed
    Dr. Lewis documents the closure; CEO informed; Matt Mathison informed if the agreement had
      ongoing financial terms
```

## Output Format

```markdown
# Channel Partner Report — [Entity] | [Month/Quarter YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Total active partners:** [N]

---

## Partner Portfolio

| Partner | Type | Status | Referrals (QTD) | Pipeline generated | Commission owed |
|---------|------|--------|----------------|-------------------|----------------|
| [Broker A] | Benefits broker | 🟢 Active | [N] | $[X]K | $[X] |
| [Broker B] | Benefits broker | 🟡 Low activity | 1 | $[X]K | $[X] |
| [Landman A] | HIVE landman | 🟢 Active | [N] LOIs | [N acres] | $[X] |

---

## Partner Pipeline

| Partner | Referral | Status | ACV potential | Next action |
|---------|---------|--------|--------------|------------|
| [Broker A] | [Group A — 135 EE] | Discovery scheduled | $138K | Rep call Thursday |
| [Broker A] | [Group B — 80 EE] | Proposal stage | $81.6K | Dr. Lewis reviews |

---

## Commission Summary (QTD)

| Partner | Closed referrals | ACV closed | Commission rate | Commission owed |
|---------|----------------|-----------|----------------|----------------|
| [Broker A] | [N] | $[X]K | 3% | $[X]K |

---

## Partner Actions Required

| Action | Partner | Owner | Due |
|--------|---------|-------|-----|
| Re-enable inactive broker | [Broker B] | Dr. Lewis | This week |
| Pay commission | [Broker A] | CEO (approve) + QB | [Date] |
| New partner onboarding call | [New Broker C] | Dr. Lewis | [Date] |
```

## Output Contract
- Partners are activated only after a signed agreement — a partner relationship that begins before a formal agreement is in place creates ambiguity about commission terms, confidentiality, and expectations; Dr. Lewis requires a signed partner agreement before any partner is activated, introduced to any prospect, or paid any commission; the agreement is reviewed by legal counsel for any partner that will receive >$10K/year in commissions
- Partner commission is paid on closed deals, not on introductions — a referral that doesn't become a closed customer does not earn a commission; the commission is paid only when the referred account becomes an active customer and makes their first payment; this is stated explicitly in the partner agreement and explained to the partner before the relationship begins; partners who expect commission on non-closed referrals will be disappointed — better to set the expectation clearly upfront
- Partners need to be enabled, not just signed — a broker who signed up for the Allevio referral program and received no education on the Allevio model cannot explain it to their clients; Dr. Lewis requires a 30-minute education call with every new broker partner before they begin referring; the broker needs to be able to answer the question "why would you recommend Allevio over a traditional carrier?" with confidence
- HITL required: Dr. Lewis manages the partner program; CEO approves partner agreements and commission structures; Matt Mathison informed of any partner agreement with >$10K/year in ongoing obligations; commission payments require CEO authorization (same as all commission payments — see sales-commission-modeler); Dr. Lewis does not activate a partner without a signed agreement; Dr. Lewis does not pay a partner commission without CEO approval; any partner agreement that creates exclusivity or geographic restrictions requires Matt Mathison review

## System Dependencies
- **Reads from:** Partner agreements (SharePoint/Legal/<Company>/PartnerAgreements/); CRM partner source tracking (GoHighLevel — referral source = partner name; partner-sourced deals flagged); sales-referral-program (broker referral incentive structure and tracking); QuickBooks (commission payment records by partner); legal-contract-reviewer (partner agreement review — commission terms; NDA; exclusivity if any)
- **Writes to:** Partner commission report (SharePoint/Sales/<Company>/Partners/[YYYY-Q#]_PartnerCommissions.xlsx); CEO commission approval (for partner commission payments); QuickBooks commission payment instruction; CRM partner source field (GoHighLevel — all referred leads tagged with partner name); Matt Mathison partner agreement notification; inactive partner closure records
- **HITL Required:** Dr. Lewis manages; CEO approves agreements and commissions; Matt Mathison informed of material partner agreements; Dr. Lewis does not activate without a signed agreement; commission payments require CEO authorization; exclusivity or geographic restriction provisions require Matt Mathison review before signing

## Test Cases
1. **Golden path:** Onboarding a new Allevio benefits broker partner → Dr. Lewis schedules the education call: 30 minutes; covers the MSO model; PMPM economics; how Allevio differs from a carrier; the types of employer groups that are the best fit; the 3% commission structure on closed referrals; partner agreement signed (reviewed by Dr. Lewis; legal counsel verified); broker added to CRM as a partner source; first outreach: "Are any of your clients facing a renewal increase this fall?" Broker refers Group A (145 employees; 18% carrier rate increase; renewal October 1); rep calls within 24 hours; discovery call scheduled; deal closes in 45 days ($147.9K ACV); commission: $147.9K × 3% = $4,437; CEO approves; paid with next AP cycle; broker receives a personal thank-you from the CEO; relationship strengthened
2. **Edge case:** An Allevio broker has referred 5 groups; 4 are in active discussions but none have closed yet — broker is asking when they'll get paid → Dr. Lewis: "The commission is paid when a referred group becomes an active customer and makes their first PMPM payment. Here's the status on your 5 referrals: (1) Group A: Contract signed; first payment expected November 1 — your commission of $3,570 will be processed that week; (2) Groups B-D: In proposal or negotiation stages — commission will be processed when they close; (3) Group E: Disqualified at discovery (multi-state workforce outside Allevio's service area). I'll update you on Groups B-D as they advance. On Group E — I apologize that we took it through the process before confirming the geographic fit; I'll review the ICP criteria with you so future referrals are pre-qualified." Broker appreciates the transparency; Group A commission paid on schedule; broker continues to refer
3. **Adversarial:** A broker partner asks to be the exclusive Allevio broker for all of Pima County — no other brokers can refer Allevio groups in Tucson → Dr. Lewis to CEO: "The exclusive territory request requires careful consideration. Pros: This broker has referred 4 groups in the last 6 months — they're our most productive broker partner. Exclusivity could deepen their commitment. Cons: If this broker becomes our only source in Pima County, we're dependent on a single channel. If they slow down or switch focus, we have no alternative pipeline in Tucson. This is also a material commercial term — Matt Mathison should review before we decide. My recommendation: Counter-offer with 'preferred partner' status instead of exclusivity — they get a higher commission rate (3.5% vs. 3%) but we retain the right to work with other brokers in Tucson. This gives them recognition without the geographic lock-in." CEO and Matt Mathison review; preferred partner counter accepted; exclusivity not granted

## Audit Log
All partner agreements retained by entity and date. Onboarding call records retained. Commission payment records retained by partner and deal. CEO and Matt Mathison approval records retained. Inactive partner closure records retained. Partner performance data retained quarterly.

## Deprecation
Retire when each portfolio company has a dedicated Channel Manager or VP of Partnerships who owns the partner program — with Dr. Lewis reviewing the program structure annually and Matt Mathison approving any partner agreement with material financial obligations.
