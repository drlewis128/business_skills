---
name: strategy-partnership-evaluator
description: "Evaluate strategic partnership and channel opportunities. Use when the user says 'partnership', 'strategic partnership', 'evaluate a partnership', 'channel partner', 'partner opportunity', 'partnership proposal', 'collaboration', 'joint venture', 'strategic alliance', 'partner agreement', 'should we partner with', 'revenue share agreement', 'affiliate agreement', 'referral partnership', 'vendor partnership', or 'assess this partnership'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--partner <name>] [--type <referral|channel|technology|joint-venture|revenue-share>]"
---

# Partnership Evaluator

Evaluate strategic partnership opportunities for MBL portfolio companies — assessing whether a proposed partnership creates genuine value, how it aligns with the investment thesis, and what the structure, risks, and exit provisions look like. Partnerships are often presented as "free" revenue opportunities, but they rarely are: every partnership creates obligations, divides management attention, shares customer relationships, and introduces dependency on a third party's performance. At PE portfolio scale, a bad partnership is worse than no partnership because it creates exit complications, compliance risks, and management distraction.

## When to Use
- A partnership proposal arrives for a portfolio company
- A CEO wants to explore a referral or channel arrangement
- Evaluating a technology integration that becomes a business relationship
- Matt Mathison asks about a proposed partnership
- Pre-exit — evaluating whether existing partnerships affect buyer perception

## Partnership Evaluation Framework

```
Partnership types and risk profiles:

  Referral agreement: Parties refer business to each other; typically low cost, moderate value
    Risk: Healthcare — must be AKS-safe; no payment for referrals without documented safe harbor
    Structure: Track referrals; mutual; no payment for referrals in healthcare (AKS)
    
  Revenue share / affiliate: Partner earns a % of revenue they generate
    Risk: Must be at fair market value; percentage arrangement scrutinized by OIG in healthcare
    Structure: Attorney review required for any healthcare revenue share arrangement
    
  Channel partnership: Partner sells or distributes your service/product
    Risk: Brand dilution if partner performs poorly; customer ownership ambiguity
    Structure: Territory; exclusivity (avoid unless partner commits to minimums); exit provisions
    
  Technology integration / vendor: Partner's system integrates with yours
    Risk: Dependency on vendor; data security; negotiation leverage shifts over time
    Structure: Data use agreement; exit provisions; SLA; no single-vendor lock-in
    
  Joint venture: New entity or program co-owned by both parties
    Risk: Governance complexity; exit is expensive; liability sharing
    Structure: Attorney required; JV agreement; operating agreement; clear exit mechanics
    
  Healthcare-specific partnership risks:
    Anti-Kickback Statute (AKS): Any arrangement that compensates a referral source (however structured)
      requires attorney review for safe harbor applicability
    Stark Law: Physician self-referral law; physician ownership in entities they refer to is restricted
    OIG Bulletin: Contractual joint ventures and gainsharing arrangements are scrutinized
    Rule: If a partner will refer patients to Allevio, or if Allevio will refer patients to a partner,
      the financial arrangement between them must be reviewed by healthcare attorney before signing
      
  Partnership evaluation criteria:
    Value: What specific, quantified value does this create? (Revenue / Cost reduction / Market access)
    Alignment: Does this advance the investment thesis?
    Exclusivity cost: If exclusive, what do we give up? Is exclusivity justified by the value?
    Obligations: What are we committing to? (Volume; integration; referrals; resources)
    Exit: How do we get out if the partnership underperforms?
    Data: What data does the partner receive? Is this appropriate?
    Compliance: For healthcare — AKS analysis mandatory; attorney review before signing
```

## Output Format

```markdown
# Partnership Evaluation — [Partner Name]
**Entity:** [Company] | **Date:** [Date] | **Analyst:** Dr. Lewis
**Partnership type:** [Referral / Revenue share / Channel / Technology / JV]
**Proposed by:** [CEO / Inbound from partner / Mutual]

---

## Partnership Summary

**Partner:** [Company name, size, background]
**Proposal:** [2-3 sentences: what they're proposing and what they expect in return]
**Proposed term:** [Duration] | **Exclusivity:** [Yes/No — scope]

---

## Value Assessment

| Value component | Projected impact | Evidence | Confidence |
|---------------|----------------|---------|-----------|
| Revenue generated (referrals / channel) | $[X]/year | [Basis for estimate] | High/Medium/Low |
| Cost reduction | $[X]/year | | |
| Market access (new customers or geography) | [Qualitative] | | |
| Technology capability gained | [Qualitative] | | |
| **Net value estimate** | **$[X]/year** | | |

**Is this the best way to achieve this value?** [Alternative: hire directly / build internally / different partner]

---

## Obligation Assessment

**What we commit to:**
- [Volume commitment: minimum referrals / revenue]
- [Exclusivity: territory, product, or customer type]
- [Integration: technical/operational commitment]
- [Resources: staff time, CEO time, capital]

**Obligation cost (opportunity + direct):** $[X] committed value if we underperform; $[X] management time/year

---

## Risk Assessment

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| Partner underperforms vs. projections | Medium | Revenue shortfall $[X] | Performance milestones in agreement |
| Exclusivity prevents better opportunity | Low/Med | [Specific lost opportunity] | Limit exclusivity scope/term |
| AKS / compliance risk (healthcare) | [N/A or specific] | [OIG exposure if unmitigated] | Attorney review before signing |
| Data access / security risk | Low/Med | Patient data exposure | Data use agreement with audit rights |
| Exit difficulty | Medium | Management time + legal cost | Exit provisions in agreement (30-day notice) |

---

## Exit Provisions (must be in any agreement)

- **Termination for convenience:** [30/60/90]-day written notice, either party
- **Termination for cause:** Immediate upon material breach
- **Post-termination:** [Customer/patient data return or destruction; referral transitions; non-compete?]
- **Change of control:** Does the agreement terminate if either party is acquired?

---

## Compliance Review Required

☐ **Healthcare (Allevio):** Does this partner refer patients to Allevio or receive referrals from Allevio?
  If YES → AKS attorney review required before signing (no exceptions)
  
☐ **Data sharing:** Does this partnership require sharing patient/customer data?
  If YES → Data use agreement + HIPAA BAA if PHI; CCPA/privacy review for Column6

☐ **Related party:** Is this partner related to any MBL principal, employee, or investor?
  If YES → rc-conflict-of-interest-manager review required

---

## Recommendation

**Verdict:** ✅ Proceed / ⚠️ Proceed with conditions / ❌ Decline
**Rationale:** [Value vs. obligation assessment; compliance verdict; strategic fit]

**Conditions (if conditional):**
1. [Attorney AKS review and written clearance before signing]
2. [Remove exclusivity or limit to 12-month initial term with renewal option]
3. [Add 30-day termination for convenience]
4. [Cap data sharing to aggregated, de-identified data only]

---

## Matt Mathison Brief

[Partner] partnership evaluation: Recommendation — [Proceed / Conditions / Decline]. Type: [Revenue share / Referral / Technology]. Value: $[X]/year estimated. Obligations: $[X] committed; [Exclusivity: yes/no]. Compliance: [Clear / AKS attorney review required / [Specific flag]]. Exit provisions: [30-day termination included / Negotiating]. Action from Matt Mathison: [None / Review and approve / Discuss [specific concern]].
```

## Output Contract
- AKS attorney review before signing for any healthcare referral arrangement — no exceptions — any financial arrangement between Allevio and a party that refers patients to Allevio (or to whom Allevio refers patients) must be reviewed by a healthcare attorney for AKS safe harbor applicability before signing; this includes revenue share arrangements, referral fee agreements, co-marketing agreements, and any arrangement where Allevio provides something of value (including below-market office space, administrative services, or technology) to a physician referral source; Dr. Lewis does not approve any such arrangement without written attorney clearance; the cost of skipping attorney review is potentially existential (OIG investigation, False Claims Act exposure)
- Exit provisions are mandatory in every agreement — a partnership that cannot be exited within 90 days without financial penalty creates long-term dependency; Dr. Lewis does not recommend signing any partnership agreement without a 30-90 day termination for convenience clause; a partner who refuses to include termination for convenience is revealing that they expect to underperform and want to lock in the relationship; that is itself a red flag about the partnership quality; attorney negotiates exit provisions before Dr. Lewis recommends proceeding
- The value estimate is evidence-based, not aspirational — "this could generate $500K a year" without a basis for that estimate is not a value assessment; Dr. Lewis grounds the value estimate in: comparable partnership performance data, the partner's track record with similar arrangements, and a bottom-up calculation (how many referrals at what conversion rate at what revenue per referral); if the evidence base is thin, the value estimate is presented with a wide range and low confidence; a high-confidence value estimate requires evidence
- HITL required: Dr. Lewis evaluates and recommends; CEO reviews for operational fit and relationship context; Matt Mathison reviews for partnerships with material capital commitment, revenue share >$50K/year, or exclusivity provisions; attorney review for all healthcare referral arrangements, JV agreements, and any data sharing arrangement involving PHI; no agreement signed without CEO and Dr. Lewis approval; significant partnerships (>$50K value or exclusivity) require Matt Mathison approval

## System Dependencies
- **Reads from:** Investment thesis (strategy-investment-thesis), alignment checker (strategy-alignment-checker), compliance status (rc-conflict-of-interest-manager for RPT check), attorney for AKS review (healthcare), QuickBooks for revenue baseline
- **Writes to:** Partnership evaluation memo (SharePoint/Strategy/<Company>/Partnerships/); signed agreements (SharePoint/Legal/<Company>/Contracts/); compliance register if AKS review required; Matt Mathison decision record
- **HITL Required:** Dr. Lewis evaluates; CEO approves operational fit; attorney reviews healthcare referral arrangements and JV agreements; Matt Mathison approves material partnerships; no PHI data sharing without HIPAA BAA

## Test Cases
1. **Golden path:** A specialist physician group proposes a co-marketing agreement with Allevio — they refer patients for primary care, Allevio refers patients for specialty care → AKS flag: this is a bilateral referral arrangement between parties who will financially benefit from each other's referrals; even if no cash changes hands, the mutual referral arrangement could be viewed as payment (the referrals themselves have value); attorney AKS review required before proceeding; attorney reviews: mutual referral arrangement between independent practices where the arrangement is disclosed, at fair market value, and not conditioned on referral volume may qualify under the personal services safe harbor or the referral services safe harbor; attorney provides written clearance with specific conditions (no minimum referral volume requirements; no tracking of referrals between parties; written agreement signed; annual FMV assessment); Dr. Lewis recommends proceeding with attorney conditions; CEO and Dr. Lewis sign agreement; AKS clearance letter retained permanently
2. **Edge case:** Column6 proposes a revenue share partnership with a streaming platform — Column6 gets 40% of ad revenue from Column6-placed ads on the platform's inventory → No AKS risk (not healthcare); evaluate on value: Column6 earns 40% net revenue share; platform provides inventory; Column6 provides advertiser demand and programmatic matching; value: depends on impression volume and CPM; estimate: 50M monthly impressions × $8 CPM × 40% Column6 share = $1.6M/month potential → highly attractive if achievable; risk: concentration (this partner becomes >40% of Column6 revenue); exclusivity: platform wants 18-month exclusive for this inventory category — unacceptable at that term; counter-proposal: 6-month initial exclusive with performance milestones (100M impressions/month by Month 6) + non-exclusive continuation; Dr. Lewis recommends with conditions: limit exclusivity to 6 months with performance gate; add 30-day termination; data use agreement for audience data
3. **Adversarial:** CEO has already verbally committed to a partnership and wants Dr. Lewis to "just review the agreement" → A verbal commitment before the evaluation creates negotiating leverage for the partner (CEO said yes, now you're trying to add conditions); Dr. Lewis addresses with CEO: "When did the verbal commitment happen and what specifically was said?" If the CEO said "this sounds interesting, let's move forward with terms" that's not a binding commitment; if the CEO said "yes we'll do this at $X revenue share with 18-month exclusivity" that is a more serious problem; Dr. Lewis evaluates the partnership on its merits regardless of the verbal stage, presents the recommendation, and if conditions are needed (e.g., AKS attorney review required), the CEO may need to go back to the partner with "we need to make one modification before we can sign"; the AKS attorney review is non-negotiable regardless of verbal commitment

## Audit Log
All partnership evaluations retained. Attorney AKS clearance letters retained permanently. Signed agreements retained permanently. Partnership performance tracking retained annually. Related-party disclosures retained. Exit from partnerships documented.

## Deprecation
Retire when portfolio companies have business development or legal functions capable of evaluating and structuring partnerships — with Dr. Lewis reviewing for thesis alignment and AKS/compliance considerations rather than conducting the full evaluation.
