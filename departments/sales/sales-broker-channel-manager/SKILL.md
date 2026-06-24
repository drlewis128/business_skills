---
name: sales-broker-channel-manager
description: "Manage broker and channel partner relationships across MBL portfolio company sales teams. Use when the user says 'broker channel', 'broker management', 'broker relationship', 'manage brokers', 'channel partner', 'channel management', 'channel partners', 'partner management', 'indirect channel', 'indirect sales', 'partner sales', 'broker sales', 'channel sales', 'broker enablement', 'enable brokers', 'broker training', 'broker program', 'partner program', 'broker network', 'partner network', 'broker pipeline', 'channel pipeline', 'broker performance', 'channel performance', 'broker review', 'channel review', 'broker QBR', 'partner QBR', 'broker tiering', 'tier brokers', 'broker tier', 'partner tier', 'Tier 1 broker', 'Tier 2 broker', 'Tier 3 broker', 'broker fee', 'broker compensation', 'channel compensation', 'broker commission', 'channel commission', 'broker referral fee', 'partner referral fee', 'broker incentive', 'broker agreement', 'partner agreement', 'broker contract', 'channel contract', 'new broker', 'recruit broker', 'broker recruitment', 'onboard broker', 'broker onboarding', 'terminate broker', 'offboard broker', 'broker off-ramp', 'agency broker', 'insurance broker', 'benefits broker', 'media agency', 'agency partner', 'landman', 'estate attorney', or 'broker ecosystem'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--action <manage|tier|enable|review|recruit|offboard>] [--broker <name>]"
---

# Sales Broker Channel Manager

Manage broker and channel partner relationships across MBL portfolio company sales teams — providing a systematic process for recruiting, enabling, tiering, and reviewing the broker and partner ecosystem that amplifies entity sales capacity. The broker channel is not just additional pipeline — for Allevio, it is the primary distribution mechanism for the employer market. A well-managed broker channel is a force multiplier; a neglected one is a liability.

## When to Use
- Managing or reviewing the broker channel for Allevio or Column6
- Recruiting a new broker or channel partner
- Reviewing broker performance and tiering
- Managing broker fee agreements and payments
- Handling a broker relationship issue or offboarding

## Broker Channel Management Framework

```
ENTITY-SPECIFIC CHANNEL ARCHITECTURE:

  ALLEVIO — Benefits Broker Channel:
    Purpose: primary distribution; ~80% of employer benefits decisions involve a broker
    Broker types: independent benefits consultants; captive/national broker firms; HRO/PEO channels
    Full model: see sales-allevio-broker-channel (complementary skill — Allevio-specific depth)
    Broker tier model:
      Tier 1: ≥$250K ACV/year referred to Allevio (enterprise relationship; dedicated AE)
      Tier 2: $50K-250K ACV/year (active partner; AE-managed)
      Tier 3: New / <$50K ACV (developing; CSM-managed or rep-managed)
    
  COLUMN6 — Agency Channel:
    Purpose: agencies ARE the customer (direct) AND the channel (they buy on behalf of advertisers)
    Column6 does not have a separate broker channel — agencies are the primary sales motion
    "Channel management" for Column6 = managing agency relationships and the IO buying process
    Agency tier model: see sales-column6-io-seller; sales-column6-agency-pitch
    
  HIVE — Landman / Estate Attorney Channel:
    Purpose: sourcing assistance for producing mineral rights
    Not a formal channel — referral relationship only
    Dr. Lewis reviews any compensation arrangement before offering
    Matt Mathison approves all outreach strategy
    
BROKER CHANNEL MANAGEMENT PROCESS (ALLEVIO):

  1. Recruitment:
     Identify: county-level benefits broker associations; NAHU (National Association of Health Underwriters);
               local broker networks; word of mouth from existing Tier 1 brokers
     Outreach: personalized letter or LinkedIn + phone; value proposition for the broker:
               "Allevio is a differentiating product for your book — employers who add Allevio
                reduce their claims trend, which helps you at renewal and keeps your clients longer"
     Initial meeting: 30-minute broker briefing (entity CEO or designated AE presents)
     Agreement: referral fee agreement review → entity CEO + Dr. Lewis sign-off → signed before first deal
     
  2. Onboarding:
     Broker enablement package (6 components — see sales-allevio-broker-channel):
       Value proposition deck; case studies (anonymous; HIPAA-compliant); FAQ; objection guide;
       co-sell process guide; GHL access for shared deal tracking
     Training: 60-minute broker enablement call (AE-led or entity CEO for Tier 1 prospects)
     HIPAA training: broker must understand that: (1) employer census data is PHI;
       (2) Allevio does NOT request census until AFTER contract signature;
       (3) broker is not in the PHI data path
     GHL: broker contact added as a partner record
     
  3. Active management:
     Tier 1 (≥$250K ACV/year): monthly QBR; dedicated AE; first-call access to entity CEO
     Tier 2 ($50K-250K): quarterly QBR; AE-managed; new product updates proactive
     Tier 3 (<$50K): semi-annual check-in; rep-managed; performance review at 12 months
     
  4. Performance review (annual):
     Tier promotion: Tier 3 → Tier 2: if broker refers ≥$50K ACV in 12 months; 2+ active deals
     Tier demotion: Tier 1 → Tier 2: if broker produces <$200K ACV in 24 consecutive months
     Broker off-ramp: broker who refers zero deals in 18 months → entity CEO decision (off-ramp or continue)
     
  5. Fee management:
     Agreement: signed before any introduction is received
     Fee structure: entity CEO defines (per employer signed; per enrolled PMPM; flat fee per year)
     Payment timing: upon contract execution (not upon sale; not upon enrollment go-live — confirm with entity CEO)
     Authorization: entity CEO + Dr. Lewis authorize each fee payment before it goes to accounting
     GHL + entity financial system: all fee payments logged and reconciled
     Clawback: broker fee clawback if employer cancels within [X] months of go-live (entity CEO defines)
     
BROKER DEAL PROCESS (ALLEVIO — co-sell with broker):
  Broker identifies employer: broker shares employer name with AE
  AE enters prospect in GHL: broker = referral source; broker tier documented
  Joint outreach: AE reaches out to employer; broker introduces or endorses
  Discovery: AE leads; broker may be present or may observe
  Proposal: AE builds; entity CEO approves; broker reviews before it goes to employer
  Contract: entity CEO countersigns; AE manages the employer relationship
  Enrollment: entity CEO manages; AE coordinates; broker NOT in census data path
  Fee payment: entity CEO + Dr. Lewis authorize; accounting processes payment to broker
  
BROKER RULES:
  Rep NEVER goes around the broker to the employer without broker's explicit consent
  Rep NEVER tells the employer "you don't need the broker for this"
  Broker earns the referral fee even if AE did all the work — the introduction is the contribution
  Broker receives the fee for the employer's first contract; renewal commission structure: entity CEO defines
  Rep does NOT offer a broker a fee that isn't in the signed agreement (no ad hoc promises)
  
BROKER RELATIONSHIP ISSUES:
  Broker unhappy with deal terms: entity CEO handles; Dr. Lewis aware
  Broker disputes a fee payment: entity CEO + Dr. Lewis review the signed agreement; reconcile
  Broker shares an employer's census data without authorization:
    HIPAA event — Dr. Lewis + entity CEO notified immediately
    Broker agreement has a HIPAA clause; violation may trigger agreement termination
    GHL and Allevio systems checked for any PHI exposure; data expunged if found
  Broker recruits Allevio clients for a competing product:
    Entity CEO determines response (relationship; agreement non-compete clause; off-ramp)
```

## Output Format

```markdown
# Broker Channel Status — [Entity] | [Period] | [Date]
**Owner:** Entity CEO | **Managed by:** Dr. Lewis + AE

---

## Broker Portfolio
| Broker | Tier | ACV Referred YTD | Active Deals | Fee Agreement | Next QBR |
|--------|------|-----------------|--------------|---------------|---------|
| [Name] | T[N] | $[X] | [N] | [Signed / Pending] | [Date] |

---

## Performance Alerts
- [ ] Tier demotion candidates: [Name] — [Reason]
- [ ] Zero-production brokers (18+ months): [Name] — entity CEO decision needed
- [ ] Fee agreements expiring: [Name] — renewal needed

---

## Action Queue (30 days)
| Action | Broker | Owner | Due |
|--------|--------|-------|-----|
| Broker QBR | [Name] | [AE] | [Date] |
| Fee agreement renewal | [Name] | Dr. Lewis | [Date] |
| New broker onboarding | [Name] | AE + entity CEO | [Date] |
```

## Output Contract
- Broker agreements must be signed before the relationship is active — a broker who has been making introductions for 3 months without a signed fee agreement has no contractual claim to a fee; equally, an entity that has been accepting introductions from a broker without a fee agreement may have an implied obligation that's harder to manage; entity CEO + Dr. Lewis sign every broker fee agreement; the agreement specifies: fee structure; payment timing; HIPAA obligations; non-compete scope (if any); term and renewal; the rep's job is to facilitate the onboarding and ensure the signed agreement is filed in SharePoint before the first employer introduction is accepted
- The broker channel requires active management to produce — a broker who is "in the program" but hasn't heard from the AE in 90 days is not producing; broker enablement is ongoing: AEs update their Tier 1 and Tier 2 brokers on new case studies, updated pricing, and product changes; AEs identify broker employers who are within 90 days of benefits renewal and flag them for the broker to act on; the brokers who produce the most are the ones who feel supported, informed, and respected by the entity; Dr. Lewis monitors broker production on a quarterly basis — a Tier 1 broker who produces significantly less in Q2 than Q1 triggers a check-in call before the quarterly QBR
- HITL required: every broker fee agreement → entity CEO + Dr. Lewis before signing; each fee payment → entity CEO + Dr. Lewis authorization; broker HIPAA violation → Dr. Lewis + entity CEO immediate response; broker sharing census data without authorization → HIPAA event protocol; broker off-ramp decision (zero production; termination) → entity CEO decision; new broker tier promotion → entity CEO approves; broker fee clawback → entity CEO + Dr. Lewis decision; any broker agreement that is non-standard (non-compete; exclusivity; higher fee) → entity CEO + Dr. Lewis + potentially Matt Mathison

## System Dependencies
- **Reads from:** GHL (broker records; broker tier; referral source on deals; pipeline by broker); broker fee agreement records (SharePoint → [Entity] → Sales → Broker-Channel → Agreements → [Broker Name]); entity financial system (fee payments; reconciliation); HIPAA training completion records (GHL — broker HIPAA acknowledgment; date); broker performance reports (quarterly — ACV referred; active deals; fees paid); Covercy (HIVE only — not applicable to broker channel)
- **Writes to:** GHL (broker record; tier; referral source; deal outcomes; fee payment status); broker fee agreement records (SharePoint); entity CEO broker performance briefing (quarterly); entity financial system (fee payment authorization); HIPAA event records (broker violation; Dr. Lewis + entity CEO; expunge action); broker QBR records (SharePoint → [Entity] → Sales → Broker-Channel → QBRs → [Broker] → [Date])
- **HITL Required:** Fee agreement → entity CEO + Dr. Lewis; each fee payment → entity CEO + Dr. Lewis; HIPAA violation → Dr. Lewis + entity CEO immediate; off-ramp decision → entity CEO; tier promotion → entity CEO; non-standard agreement → entity CEO + Dr. Lewis + possibly Matt Mathison; clawback → entity CEO + Dr. Lewis; census data exposure → HIPAA event protocol

## Test Cases
1. **Golden path:** Allevio is adding a new Tier 2 broker — independent benefits consultant with 40 employer clients in Phoenix, 25 of which are self-insured and 75-500 employees (strong ICP overlap). Recruitment: AE outreach via LinkedIn + phone; 30-minute broker briefing with entity CEO. Broker interested. Fee agreement: Dr. Lewis prepares → entity CEO reviews → broker signs → filed in SharePoint. Onboarding: enablement package sent; 60-minute training call with AE. HIPAA acknowledgment: broker signs HIPAA addendum (understands census = PHI; broker is not in data path). GHL: broker added as partner record; tier = T2. First deal: broker emails AE — "I have a 165-employee manufacturing client with an October renewal who's been complaining about claims costs." AE enters prospect in GHL: broker = referral source. AE leads discovery; broker endorses in intro email. Deal closes. Fee payment: AE notifies entity CEO → entity CEO + Dr. Lewis authorize → accounting processes fee per agreement → GHL updated.
2. **Edge case:** Tier 1 broker (ACV >$250K/year) brings a 600-employee employer — above Allevio's standard ICP ceiling (75-500 employees). Broker expects Allevio to take the deal. Entity CEO review: is 600 employees within the entity's operational capacity? Are there PMPM pricing implications at this scale? Does the employer have specific requirements (multiple benefit plan structures; multiple state locations) that the entity isn't equipped to handle? If yes to all capacity questions: entity CEO approves pursuing the deal; treat as a deal desk item for pricing (volume-based PMPM). If no: entity CEO calls the broker directly: "We can't support a 600-employee employer in our current model — but I want to make sure we're supporting you on the right accounts. Can we set up a call to go through your book and identify the best-fit employers?" Preserves the broker relationship; doesn't overpromise.
3. **Adversarial:** A Tier 1 broker demands that the entity increase their referral fee by 50% or they'll "move their book to a competitor." Entity CEO response (Dr. Lewis in support): "I understand the ask. Let's look at what the current fee structure has produced and what a 50% increase would represent in cost-of-sales. If the economics work and the relationship warrants it, we have a process for renegotiating agreements — entity CEO + Dr. Lewis. What I won't do is renegotiate under a threat timeline. If the current fee structure isn't working for you, I'd like to have that conversation on its merits — not in response to an ultimatum. Let's set up a call this week." If the broker does move their book: entity CEO documents the outcome; Dr. Lewis reviews whether the fee structure industry norms have shifted (if multiple Tier 1 brokers signal the same concern, it may warrant a program review).

## Audit Log
Broker fee agreement records (all active and historical; entity; broker; fee structure; date; entity CEO + Dr. Lewis approval; SharePoint). Broker tier records (current tier; promotion/demotion history; date; rationale). Fee payment records (deal; broker; amount; entity CEO + Dr. Lewis authorization; date; entity financial system). HIPAA event records (broker violation; event; Dr. Lewis + entity CEO response; expunge action; date). Broker QBR records (broker; date; ACV reviewed; decisions; entity CEO aware). Off-ramp records (zero-production brokers; entity CEO decision; date; off-ramp letter). Non-standard agreement records (agreement type; entity CEO + Dr. Lewis + Matt Mathison decision).

## Deprecation
Broker tier thresholds reviewed annually. Fee structure reviewed when entity CEO updates compensation model. HIPAA addendum reviewed when HHS guidance changes. Broker channel QBR cadence reviewed when entity CEO updates channel management resources. Off-ramp criteria reviewed annually. Column6 agency channel guidance reviewed when Column6's go-to-market model changes.
