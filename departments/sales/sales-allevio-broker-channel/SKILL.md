---
name: sales-allevio-broker-channel
description: "Manage the Allevio benefits broker channel for MBL Partners. Use when the user says 'broker channel', 'benefits broker', 'broker relationship', 'broker partner', 'broker program', 'broker strategy', 'broker network', 'broker outreach', 'broker pipeline', 'broker referral', 'broker-sourced deal', 'broker deal', 'broker introduction', 'broker engagement', 'broker enablement', 'arm the broker', 'broker training', 'broker education', 'broker pitch', 'broker pitch deck', 'broker conversation', 'broker recruitment', 'recruit broker', 'add broker', 'new broker partner', 'broker partner onboarding', 'broker account', 'broker account management', 'broker QBR', 'broker review', 'broker revenue', 'broker-generated pipeline', 'channel partner', 'indirect sales', 'indirect channel', 'broker commission', 'broker referral fee', 'broker comp', 'broker contract', 'captive broker', 'independent broker', or 'broker vs direct'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--broker <name>] [--action <recruit|enable|review|pipeline|qbr>] [--tier <1|2|3>]"
---

# Sales Allevio Broker Channel

Manage the Allevio benefits broker channel — recruiting, enabling, and partnering with independent benefits brokers to source employer prospects who would otherwise never be in Allevio's direct outreach pipeline. A well-managed broker channel multiplies Allevio's sales reach without multiplying headcount. A poorly managed broker channel creates confusion about who owns the employer relationship and how commissions work.

## When to Use
- Recruiting a new broker to the Allevio partner network
- Enabling an existing broker partner (giving them what they need to recommend Allevio)
- Managing a broker-sourced deal through the Allevio sales process
- Running a quarterly broker partner review

## Broker Channel Framework

```
WHY BENEFITS BROKERS MATTER FOR ALLEVIO:
  Coverage: brokers serve hundreds of employer clients; a single broker partner can introduce Allevio to 20-50 employer prospects
  Trust: employers trust their broker more than any vendor; a broker recommendation converts at 2-3× direct outreach
  Access: brokers have existing CFO relationships — they accelerate the economic buyer engagement
  
BROKER TYPES AND ENGAGEMENT APPROACH:

  Independent broker: serves employer clients; NOT tied to a specific carrier or vendor
    Motivation: provide best-in-class solutions to employer clients; differentiate from other brokers
    Engagement: relationship-based; Allevio must earn the referral through value and trust
    Referral dynamic: broker introduces Allevio to employer client; broker remains in the process
    Commission: referral fee for employers successfully enrolled (entity CEO sets rate; Dr. Lewis + entity CEO confirm structure)
    
  Captive broker (tied to a carrier or product): may be conflicted if Allevio competes with their core offering
    Engagement: more limited; position Allevio as supplemental (not a substitute for their core product)
    Risk: captive broker may block Allevio if they see it as a threat to their carrier relationship
    Management: engage early; be transparent; frame as complementary; do not go around them
    
BROKER TIER MODEL:
  Tier 1 broker ($250K+ ACV in referred employers per year): quarterly business reviews; entity CEO relationship; co-marketing
  Tier 2 broker ($50K-$250K ACV): semi-annual review; AE manages; entity CEO intro
  Tier 3 broker (<$50K ACV or new): AE manages; no entity CEO involvement until Tier 2
  
BROKER RECRUITMENT:
  Target: independent brokers with 15+ AZ employer clients in the 75-500 employee range
  Outreach: AE approaches broker at HR/benefits industry events; LinkedIn; referral from existing broker partner
  Broker pitch: "Allevio helps your employer clients reduce their healthcare cost trend by 15-22% — that's a compelling story for the CFO conversations you're already having"
  Broker objection: "I don't want to recommend something that doesn't deliver for my clients"
    Response: "That's exactly why we'd recommend a pilot with one employer who has a strong cost problem — we'll prove it to you before you put your reputation behind it"
    
BROKER ENABLEMENT PACKAGE (provide after broker signs partner agreement):
  1. Broker pitch deck: Allevio value proposition in broker language (not sales deck)
  2. Employer ROI model template: broker can run the model with their employer client
  3. Case study library: employer-aggregate outcomes (no PHI)
  4. Competitive summary: vs. telemedicine-only; vs. DPC; vs. status quo
  5. FAQ: common employer questions brokers encounter; answers in plain language
  6. Process overview: how the broker-sourced deal flows; who owns what
  
BROKER-SOURCED DEAL PROCESS:
  Step 1 — Broker introduces: broker introduces Allevio (AE) to employer HR Director
  Step 2 — AE owns the sale: broker stays informed but AE runs the sales process
    Broker update: AE keeps broker informed weekly once deal is active ("We had a great discovery call; moving to demo next week")
  Step 3 — Broker in the demo: optional (and recommended for captive broker situations); broker's presence reinforces trust
  Step 4 — Proposal: AE presents; broker may be present for CFO meeting (their relationship; their credibility)
  Step 5 — Close: entity CEO countersigns; broker notified of close; referral fee processing begins
  Step 6 — Onboarding: AE manages; broker receives aggregate implementation update ("Employer went live; 89% enrollment rate")
  Step 7 — Renewal: AE manages renewal; broker receives renewal outcome (aggregate only; no PHI)
  
HIPAA CONSTRAINTS IN BROKER CHANNEL:
  Broker receives: employer-level outcomes (aggregate utilization rate; enrollment rate; employer's cost trend change — if employer has authorized sharing with their broker)
  Broker does NOT receive: individual employee health data; individual claims; individual diagnoses
  Broker agreement: includes confidentiality clause protecting employer client data
  GHL records: broker contact information; referred employers; pipeline status — NO individual employee PHI
  Employer authorization: if broker wants clinical outcome data for a specific employer, the employer must authorize the data sharing with their broker in writing
  
BROKER COMMISSION / REFERRAL FEE:
  Structure: entity CEO sets the rate (% of Year 1 ACV or flat fee per enrolled employer)
  Trigger: paid upon contract execution + employer go-live (not at verbal yes)
  Documentation: referral fee agreement with broker (signed before any introduction)
  Processing: entity CEO + Dr. Lewis authorize each referral fee payment; processed through entity financial systems
  NEVER pay a referral fee without a signed referral agreement that predates the introduction
  
BROKER QBR (quarterly business review — Tier 1 brokers):
  Attendees: entity CEO + AE + broker principal
  Content: pipeline update; closed deals; referral fee summary; new employer opportunities; market intelligence
  Format: 30-45 minutes; relationship investment
  Entity CEO leads (not AE)
```

## Output Format

```markdown
# Broker Channel Record — [Broker Name] | [Date]
**Broker tier:** [1/2/3] | **Employer clients (AZ, 75-500 emp):** [Est. N] | **Type:** [Independent/Captive]

---

## Broker Profile
| Item | Detail |
|------|--------|
| Principal contact | [Name, title] |
| Book of business (AZ employers in ICP) | [Est. N] |
| Current sentiment toward Allevio | 🟢/🟡/🔴/⬜ |
| Referral agreement signed | ✅/❌ |
| Enablement package delivered | ✅/❌ |
| Last activity | [Date] |

---

## Broker-Sourced Pipeline
| Employer | Stage | ACV | Broker intro date | Status |
|---------|-------|-----|------------------|--------|
| [Name] | [N] | $[X] | [Date] | Active / Closed Won / Closed Lost |

---

## Broker Referral Fee Summary
| Employer | Contract date | Fee amount | Paid date | Authorization |
|---------|--------------|-----------|----------|--------------|
| [Name] | [Date] | $[X] | [Date] | [Entity CEO + Dr. Lewis] |
```

## Output Contract
- Referral fees require a signed agreement before the introduction — paying a referral fee to a broker who introduced an employer before a referral fee agreement was signed creates a retroactive obligation that may not be legally enforceable and sets a precedent that Allevio pays fees without agreements; the rule is simple: no referral fee agreement = no referral fee; if a broker makes an introduction without a signed agreement in place, Dr. Lewis and entity CEO determine whether to retroactively formalize the agreement (at the entity CEO's discretion) or to treat the introduction as non-compensated; the broker knows the rule; the AE communicates the rule before any introductions are made
- The broker owns the employer relationship; Allevio owns the solution — confusion about this creates channel conflict; brokers refer employers to Allevio because they trust that Allevio will deliver for their clients; if Allevio treats the broker as a lead source and then sidelines them from the relationship, the broker stops referring; the AE's job is to keep the broker informed (weekly updates on active deals; outcome notification at close and go-live); the broker's job is to vouch for Allevio and support the employer's internal decision; this partnership model, if maintained, creates a self-reinforcing referral relationship — brokers who see their employer clients get good outcomes from Allevio refer more employers
- HITL required: new broker partner agreement → entity CEO + Dr. Lewis review and sign before any introduction; broker referral fee → entity CEO + Dr. Lewis authorize each payment before processing; broker receives employer outcome data → employer authorization required if going beyond aggregate enrollment/utilization rates; Tier 1 broker QBR → entity CEO leads; broker sourced deal >$100K ACV → entity CEO may join close meeting; captive broker engagement strategy → entity CEO reviews approach before AE contacts broker; HIPAA: no individual employee data ever shared with broker

## System Dependencies
- **Reads from:** GHL (broker contacts; broker-sourced employer pipeline; referral fee records; stage; activity); broker partner agreement (SharePoint → Allevio → Broker-Partners → [Broker] → Agreement); employer ICP data (for broker pitch — aggregate market context); Allevio employer portfolio outcomes (aggregate; entity CEO provides; no PHI)
- **Writes to:** GHL (broker profile; referred employer records; pipeline; referral fee records); broker enablement records (package delivered; date; version); broker pipeline records (employer referred; stage; close; SharePoint); referral fee authorization records (entity CEO + Dr. Lewis approval; payment date); broker QBR records (quarterly; Tier 1 brokers)
- **HITL Required:** Broker partner agreement → entity CEO + Dr. Lewis sign; referral fee → entity CEO + Dr. Lewis authorize; employer outcome data to broker → employer authorization; Tier 1 QBR → entity CEO leads; deal >$100K → entity CEO may join close; captive broker strategy → entity CEO reviews; HIPAA: no individual data to broker

## Test Cases
1. **Golden path:** New broker partner — independent benefits broker (15-person firm; 80 AZ employer clients; 40 in ICP range). Referral agreement signed (entity CEO + Dr. Lewis sign). Enablement package delivered. Broker introduces Allevio to 3 employers in month 1. AE runs all 3 through discovery. 2 advance to demo. 1 closes (180-employee manufacturer; $15,120/month ACV). Referral fee: entity CEO + Dr. Lewis authorize per agreement. Broker informed of close; implementation update at go-live (aggregate: "Employer went live; 91% enrollment rate"). Broker: "My client is thrilled — I have two more employers that have the same problem." Broker advances to Tier 2. Semi-annual review scheduled.
2. **Edge case:** Broker asks to see the clinical outcomes for their specific employer client: "How are [Employer X]'s employees doing? What diagnoses are being treated?" → Dr. Lewis: "We protect employer clients' individual employee health data — even from their broker. What we can share with [Broker], with the employer's authorization: aggregate utilization data (enrollment rate; average visits per enrolled employee; primary care access metrics; employer-level cost trend change). To share that data with you specifically, we'd need written authorization from [Employer X] — their HR Director or CFO — acknowledging that they're authorizing their broker to receive their aggregate Allevio data. Can you ask them to send us a quick email confirming that? Once we have that, I'll send you the aggregate outcomes report."
3. **Adversarial:** Broker says "I want to be on the commission for every employer in AZ regardless of whether I introduced them — I have relationships everywhere" → Dr. Lewis: "Our referral fee structure is tied to specific introductions — not territory-based exclusivity. Here's how it works: if you introduce Allevio to an employer, you're on the commission for that employer for the duration of our relationship with them. If we reach an employer through our direct outreach and you have a relationship there, we're happy to loop you in — but we can't retroactively add you to commissions for employers you weren't involved in introducing. What I can do: give you the list of AZ employers we're actively prospecting so you can tell us where you have relationships, and we'll coordinate outreach so you can be involved in introductions you legitimately own. That's better for everyone."

## Audit Log
Broker partner agreement records (all broker agreements; entity CEO + Dr. Lewis signature; effective date; SharePoint). Broker-sourced pipeline records (all referred employers; stage; outcome; GHL). Referral fee records (employer; fee amount; entity CEO + Dr. Lewis authorization; payment date; payment method). Broker outcome data sharing records (employer authorization for data sharing; data provided). Broker QBR records (Tier 1 quarterly; attendees; outcomes; action items). Captive broker engagement records (approach; entity CEO review; outcome).

## Deprecation
Broker channel strategy reviewed annually. Referral fee structure reviewed when Allevio's pricing or margin changes. Broker tier thresholds reviewed when broker channel revenue benchmarks change. Enablement package reviewed quarterly (outcomes data refreshes). HIPAA broker data sharing guidance reviewed when HHS guidance changes.
