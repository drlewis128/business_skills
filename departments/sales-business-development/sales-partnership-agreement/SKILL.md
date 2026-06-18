---
name: sales-partnership-agreement
description: "Draft and review partnership and referral agreements for MBL portfolio companies. Use when the user says 'partnership agreement', 'referral agreement', 'partner contract', 'channel agreement', 'reseller agreement', 'co-sell agreement', 'broker agreement', 'strategic alliance', 'partnership terms', 'referral terms', 'affiliate agreement', 'draft a partner agreement', 'review a partnership agreement', 'what should be in a partner agreement', 'partner contract template', 'referral contract', 'channel contract', 'partner MOU', 'memorandum of understanding partner', 'partnership framework', or 'formal partner terms'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--partner <name>] [--type <referral|reseller|technology|strategic>] [--action <draft|review|negotiate>]"
---

# Sales Partnership Agreement

Draft and review partnership and referral agreements for MBL portfolio companies — ensuring that every partner relationship is governed by a formal, signed document before any introductions, commissions, or confidential information are shared. Partnership agreements protect both parties; an informal partner relationship that goes wrong has no resolution path. Dr. Lewis reviews every partnership agreement before it is signed; legal counsel reviews any agreement that creates ongoing financial obligations above $10K/year.

## When to Use
- Onboarding a new broker, referral, or technology partner
- An existing informal partner relationship needs to be formalized
- Reviewing a partner's proposed agreement before signing
- Building a standardized partner agreement template for the portfolio

## Partnership Agreement Framework

```
AGREEMENT TYPES:

  1. REFERRAL AGREEMENT (most common for Allevio brokers and HIVE landmen):
     What it covers:
       □ Who is the referring party (the partner)?
       □ What is the referred opportunity (employer group; mineral rights landowner; IO buyer)?
       □ What triggers a commission? (Executed contract + first payment)
       □ Commission rate and structure (3% first-year ACV for Allevio brokers;
           $50-100 per LOI for HIVE landmen)
       □ Commission payment timing (within 30 days of first customer payment)
       □ Duration of the referral relationship (12-month protection — if partner refers the company
           and they don't close for 11 months, partner still gets the commission if it was their intro)
       □ Exclusivity: None — open referral program; no exclusivity granted without CEO + Matt Mathison
       □ Termination: Either party can terminate with 30-day notice; active commissions are honored
       □ Confidentiality: NDA provisions — partner does not share Allevio's pricing or terms with others
       □ Governing law: Arizona (Allevio) / Utah (HIVE) / New York (Column6)
       
  2. TECHNOLOGY PARTNERSHIP AGREEMENT (Column6 measurement partners):
     What it covers:
       □ Integration scope (what APIs; what data flows; what certifications?)
       □ Data usage: Who owns the data? Can the technology partner use Column6 supply data?
       □ Revenue sharing: None (Column6 technology partnerships are certification-based; not commission)
       □ Co-marketing rights: Can partner reference Column6 in their marketing?
       □ Termination: 90-day notice (technology integrations need time to wind down cleanly)
       □ SLA: What uptime does the technology partner commit to?
       □ Liability: Standard mutual indemnification; liability cap at fees paid
       □ Governing law: New York
       
  3. STRATEGIC ALLIANCE / MOU (non-binding framework):
     What it covers:
       □ Intent of the relationship (what are both parties trying to accomplish?)
       □ What each party will contribute (introductions; technology; marketing)
       □ How the parties will work together (regular meeting cadence; named points of contact)
       □ What is NOT covered (financial terms; exclusivity; liability — MOUs are intent documents)
       □ Conversion to a binding agreement: If the MOU proves productive, move to a formal
           agreement within 90 days
       MOUs are useful for early-stage relationships where both parties want to explore before
         committing; they are NOT binding on financial terms and should not be used as a substitute
         for a formal agreement when commissions are being paid

REQUIRED PROVISIONS IN ANY SIGNED AGREEMENT:
  □ Identification of both parties (legal entity names; not trade names)
  □ Term and termination provisions (how long; how to end it)
  □ Commission or financial terms (exactly what is paid; when; on what basis)
  □ Confidentiality (NDA provisions if any confidential info is shared)
  □ Non-solicitation (partner cannot poach employees for 12 months)
  □ Governing law and dispute resolution (jurisdiction; arbitration vs. litigation)
  □ Entire agreement clause (this document supersedes all prior verbal discussions)
  □ Signature block (authorized signatories on both sides)
  
TERMS TO HOLD FIRM ON:
  □ Commission is paid on closed deals only (not on introductions or pending deals)
  □ 12-month protection window (referred opportunity is protected for 12 months; not longer)
  □ No exclusivity (we do not grant geographic exclusivity without CEO + Matt Mathison approval)
  □ Governing law stays in our jurisdiction (Arizona; Utah; or New York — not the partner's state)
  □ Non-solicitation is mutual (both parties agree not to recruit each other's employees)
  
TERMS TO NEGOTIATE:
  □ Payment timing (30-day standard; partner may ask for 15 days — acceptable)
  □ Commission protection window (12 months is standard; partner may ask for 24 — CEO decides)
  □ Co-marketing language (mutual references are usually acceptable)
  □ Termination notice period (30 days is minimum; 60 or 90 days is acceptable for technology)
  
TERMS TO NEVER AGREE TO:
  □ Exclusivity without CEO + Matt Mathison review
  □ Commission on non-closed referrals ("pay-per-lead" — not our model)
  □ Partner's governing law jurisdiction if they are out of state and we have no nexus
  □ Unlimited liability (liability cap must be at fees paid or 12 months of fees)
  □ Automatic renewal with price escalation (must be explicitly negotiated)
```

## Output Format

```markdown
# Partnership Agreement Review — [Partner Name] | [Entity]
**Agreement type:** Referral / Technology / Strategic Alliance
**Partner entity:** [Legal name] | **Our entity:** [Allevio / HIVE / Column6]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Legal review required:** Yes / No

---

## Agreement Summary

| Provision | Proposed term | Our position | Action |
|-----------|--------------|-------------|--------|
| Commission rate | [X]% | 3% | ✅ Accept |
| Commission trigger | Signed contract | Signed contract + first payment | ⚠️ Negotiate |
| Exclusivity | Geographic exclusivity (Pima County) | No exclusivity | ❌ Reject |
| Governing law | Partner's state | Arizona | ❌ Negotiate |
| Termination | 30 days | 30 days | ✅ Accept |
| Commission protection | 24 months | 12 months | ⚠️ Negotiate to 12 months |

---

## Issues Requiring Resolution

| Issue | Priority | Resolution |
|-------|---------|-----------|
| Exclusivity request | Critical | Reject — counter with preferred partner status |
| Governing law in FL | High | Negotiate back to Arizona |
| 24-month commission protection | Medium | Counter with 12-month standard |

---

## Recommendation

**Status:** Approved for signing / Pending negotiation / Rejected
**Next step:** [Negotiate items above → Dr. Lewis leads; sign when resolved / Refer to legal counsel]
**CEO notification required:** Yes (any agreement with >$10K/year commission potential) / No
```

## Output Contract
- No partner relationship is activated before a signed agreement — a verbal partner agreement is not an agreement; Dr. Lewis does not allow partners to begin referring or receive any confidential information (pricing; territory map; deal pipeline) until a written agreement is signed; this applies equally to relationships that feel like they're based on trust — the trust is preserved by the written agreement, not undermined by it
- Legal review is mandatory for agreements above $10K/year — any partner relationship that is expected to generate >$10K/year in commissions must be reviewed by outside legal counsel before signing; for smaller relationships, Dr. Lewis reviews using the framework above; the distinction is not about trust — it is about the complexity and financial exposure of the agreement
- Hold firm on commission trigger language — commission is paid when the customer makes their first payment; "commission is paid when the contract is signed" exposes the company to paying commissions on deals that are signed but never start (customer gets cold feet; goes bankrupt; etc.); Dr. Lewis negotiates this term in every agreement and does not waive it
- HITL required: Dr. Lewis drafts and reviews all partnership agreements; CEO approves all partnership agreements before signing; Matt Mathison approves any agreement with ongoing financial obligations >$10K/year or any exclusivity provision; Dr. Lewis does not sign a partnership agreement without CEO approval; outside legal counsel reviews all agreements with >$10K/year commission potential

## System Dependencies
- **Reads from:** Partner information (legal entity name; signing authority; contact details); commission structure (sales-referral-program — the commission rate that will be in the agreement); territory plan (sales-territory-planner — no exclusivity agreements that conflict with territory assignments); legal-contract-reviewer (legal review for agreements >$10K/year)
- **Writes to:** Signed agreement (SharePoint/Legal/<Company>/PartnerAgreements/[Partner]_[Date]_Agreement.pdf); partner record (GoHighLevel CRM — partner activated; commission rate recorded; agreement date); CEO approval record (Dr. Lewis notifies CEO before signing; CEO approval documented); Matt Mathison notification (for agreements with >$10K/year or exclusivity provisions); sales-partner-channel-manager (partner added to the active partner register)
- **HITL Required:** Dr. Lewis reviews all partnership agreements; CEO approves before signing; Matt Mathison approves exclusivity provisions or agreements >$10K/year; outside legal counsel reviews agreements above the $10K/year threshold; Dr. Lewis does not countersign or authorize execution without CEO approval; Dr. Lewis does not allow partner activation (introductions; confidential info sharing) before the agreement is fully executed

## Test Cases
1. **Golden path:** New Allevio broker partner proposes a referral agreement → Dr. Lewis reviews: Commission 3% on closed ACV (correct); trigger is "signed contract + first PMPM payment" (correct); 12-month protection window (correct); no exclusivity (correct); governing law: Arizona (correct); termination: 30 days (correct); all provisions acceptable; Dr. Lewis recommends CEO approval; CEO reviews and signs; broker activated; Dr. Lewis schedules the 30-minute education call (see sales-partner-channel-manager); broker begins referring within 2 weeks
2. **Edge case:** A technology partner for Column6 proposes an agreement that includes a provision allowing them to use Column6 supply-side impression data for their own audience modeling product → Dr. Lewis flags: "This data usage clause is not acceptable. Column6's supply data is proprietary; allowing a measurement partner to use it for their own commercial product creates a competitive intelligence risk. We need to strike this clause. The alternative: we grant them read-only access to impression data for measurement purposes only; they may not use it for modeling, resale, or competitive analysis. If they push back on this, we should evaluate whether we need this particular certification badly enough to accept this term — I don't think we do. I'll negotiate the clause out and refer to legal counsel if they insist." Clause negotiated out; agreement signed without the data-usage provision
3. **Adversarial:** A broker insists on a verbal handshake and says "I don't do formal agreements — I do business on trust" and starts referring clients before anything is signed → Dr. Lewis: "I respect that you do business on trust — that's how we do business too. The agreement isn't about distrust; it's about clarity. If one of us leaves the business, or if there's a question about which referrals count and which don't, the written agreement protects you as much as it protects us. It also documents your commission rate so there's no ambiguity when payment time comes. This doesn't have to be complicated — our referral agreement is 2 pages. Let me send it over today. In the meantime, I need to pause on any referral activity until we have signatures — I can't commit to commissions on deals we haven't formally agreed to in writing." Broker agrees to sign; Dr. Lewis sends the standard 2-page referral agreement; signed within 48 hours

## Audit Log
All signed partnership agreements retained by entity and date. Unsigned/rejected agreements retained with reason for rejection. CEO and Matt Mathison approval records retained. Legal counsel review records retained. Commission payment records by agreement retained. Agreement termination records retained.

## Deprecation
Retire when each portfolio company has a General Counsel or outside legal counsel managing the standard partnership agreement template — with Dr. Lewis reviewing material partnership terms and Matt Mathison approving any agreement with exclusivity provisions or >$10K/year financial obligations.
