---
name: legal-dispute-resolution-manager
description: "Manage commercial dispute resolution, mediation, and arbitration for MBL portfolio companies. Use when the user says 'dispute', 'commercial dispute', 'contract dispute', 'breach of contract', 'counterparty dispute', 'vendor dispute', 'customer dispute', 'payment dispute', 'mediation', 'arbitration', 'we have a dispute', 'they breached the contract', 'we owe them', 'they owe us', 'dispute resolution', 'demand letter', 'settlement', 'settle a dispute', 'ADR', 'alternative dispute resolution', 'pre-litigation', or 'cease-and-desist'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--dispute-type <contract|payment|performance|IP|employment>] [--action <assess|respond|mediate|settle>] [--amount <dollar value>]"
---

# Dispute Resolution Manager

Manage commercial disputes for MBL portfolio companies — from the initial assessment of a dispute through demand letters, negotiation, mediation, and arbitration, with an emphasis on resolving disputes efficiently and preserving commercial relationships where appropriate. Not every dispute goes to litigation; litigation is expensive, time-consuming, and unpredictable; Dr. Lewis evaluates every dispute through a cost-benefit lens and recommends the resolution strategy that best serves the portfolio company's interests.

## When to Use
- A commercial counterparty asserts a claim or sends a demand letter
- A portfolio company has a dispute with a vendor, customer, or former employee
- A contract breach occurs — either the company breached or the counterparty breached
- Evaluating whether to settle a dispute or proceed to arbitration/litigation
- Structuring a settlement agreement

## Dispute Resolution Framework

```
DISPUTE TRIAGE — FIRST STEPS:

  Within 24 hours of any dispute notice or demand:
  □ Issue a litigation hold: Preserve all documents relevant to the dispute (legal-trade-secret-protector)
    (Do not delete any potentially relevant email, contract, or communication)
  □ Notify Dr. Lewis same day
  □ Dr. Lewis notifies Matt Mathison if dispute involves >$25K potential exposure
  □ Read the contract's dispute resolution provision: Does it require mediation before arbitration?
    Does it specify arbitration? Does it require a notice and cure period before claims can be filed?
  □ Assess: Is this a legitimate claim? Is it frivolous? What does the contract say?
  
DISPUTE RESOLUTION CONTINUUM (in order of cost and formality):

  1. DIRECT NEGOTIATION (preferred first step):
     Cost: Minimal (internal time only)
     Process: CEO or Dr. Lewis contacts the counterparty and attempts direct resolution
     Suitable for: Disputes <$50K; ongoing commercial relationships to preserve; clear facts
     Timeline: 2-4 weeks
     
  2. WRITTEN DEMAND / FORMAL POSITION LETTER:
     Cost: $500-$2K (attorney review if needed)
     Process: Formal letter setting out the company's legal position and demand
     When: The informal discussion did not resolve the dispute; the company needs to create a legal record
     Contents: Statement of facts; legal basis; specific demand; response deadline (10-20 business days)
     
  3. MEDIATION:
     Cost: $2K-$10K (mediator fees + attorney time)
     Process: Neutral third-party mediator facilitates discussion; non-binding unless settlement is reached
     When: Both parties want to resolve but can't agree; relationship is worth preserving; dispute $25K-$200K
     Success rate: ~70-80% of mediations resolve
     Mediator selection: AAA or JAMS mediator lists; neutral location
     
  4. ARBITRATION:
     Cost: $15K-$75K (arbitrator fees + attorney fees)
     Process: Binding decision by an arbitrator (or panel); less formal than court but still adjudicative
     When: Contract specifies arbitration; or parties agree to arbitrate
     Advantage over litigation: Faster; private; arbitrators often have industry expertise
     Disadvantage: Limited appeal rights; arbitrator fees are significant
     
  5. LITIGATION:
     Cost: $75K-$500K+ (attorney fees; court costs; management time)
     Process: Formal court proceeding; public; discovery; trial
     When: Large claims (>$250K); injunctive relief needed (TRO); arbitration is not available
     Timeline: 18-36 months (state court); 12-24 months (federal court)
     
  SETTLEMENT STRATEGY:
    Before any dispute resolution proceeding:
      1. Calculate the company's best case outcome (maximum recovery or minimum exposure)
      2. Calculate the company's worst case outcome
      3. Calculate the expected value (probability × outcome)
      4. Add the litigation cost to determine the "no worse than" settlement threshold
      
    Example:
      Company has a $150K payment dispute with a vendor
      Best case (win): $150K recovery
      Worst case (lose): $0 recovery; $40K litigation costs
      Probability of winning: 65%
      Expected value: $150K × 65% = $97.5K − litigation costs (if win, ~$40K) = ~$57.5K net
      Settlement threshold: Company should settle for anything above $40K (worth more than losing + costs)
      
    Settlements >$25K: Matt Mathison must approve (per HITL threshold)

CONTRACT DISPUTE CLAIMS ASSESSMENT:
  The company is the plaintiff (counterparty owes us money or breached):
    □ Review the contract: What were the counterparty's exact obligations?
    □ Document the breach: What specifically did they fail to do? When?
    □ Calculate damages: What is the company's actual monetary loss from the breach?
    □ Review the dispute resolution provision: What process is required before filing a claim?
    □ Send a formal demand letter: Put the breach in writing; demand cure or payment
    
  The company is the defendant (counterparty claims we breached):
    □ Review the contract: What were the company's exact obligations?
    □ Assess the claim: Is it legitimate? Was there a breach?
    □ Review the company's potential defenses: Force majeure; prior breach by counterparty; waiver
    □ Calculate exposure: What is the maximum liability?
    □ Determine strategy: Contest the claim; negotiate; or settle
```

## Output Format

```markdown
# Dispute Assessment — [Counterparty] | [Dispute Type]
**Entity:** [Portfolio Company] | **Date:** [Date] | **Dispute amount:** $[X]K
**Counterparty:** [Name] | **Dr. Lewis assessment:** [Date]
**Recommended track:** Direct negotiation / Mediation / Arbitration / Litigation

---

## Dispute Summary

**Claim:** [1-2 sentence description of the dispute]
**Contract provision:** [Relevant contract section]
**Company's position:** [Our legal/factual position in 2 sentences]
**Counterparty's position:** [Their position in 2 sentences]

---

## Settlement Economics

| Scenario | Amount | Probability | Expected Value |
|----------|--------|------------|--------------|
| Win / Full recovery | $[X]K | [X]% | $[X]K |
| Partial settlement | $[X]K | [X]% | $[X]K |
| Lose | $0 (+ costs) | [X]% | −$[X]K |
| **Litigation cost** | $[X]K | — | −$[X]K |
| **Net EV** | | | **$[X]K** |

**Settlement threshold:** $[X]K (anything above this is better than the litigation outcome)

---

## Recommended Action

**[Direct negotiation / Mediation / Arbitration / Litigation]**
**Matt Mathison notification:** [Required (>$25K) / Not required]
**Outside counsel:** [Engaged / Engage [specialty]]
**Next step:** [Specific action in next 5 business days]
```

## Output Contract
- Litigation hold is immediate and non-negotiable — the moment the company has reason to believe a dispute may result in litigation or arbitration, all potentially relevant documents must be preserved; "relevant" is interpreted broadly; litigation hold means: no deletion of emails, contracts, or communications related to the dispute; no routine document destruction that would affect relevant records; the hold notice must go to every employee who might have relevant documents; a litigation hold is not optional and the consequences of a failure to hold (called "spoliation") include sanctions, adverse jury instructions, and case-dispositive rulings; Dr. Lewis issues the litigation hold within 24 hours of any dispute notice
- Not every demand warrants a lawyer — a $3,500 payment dispute with a vendor who made a billing error is typically resolved in a 10-minute phone call; engaging outside counsel at $350/hour to write a demand letter about a $3,500 billing error costs more than the dispute is worth; Dr. Lewis triages disputes by amount and complexity: small disputes (under $10K) are handled directly by the CEO with Dr. Lewis's advice; disputes in the $10K-$50K range get a written position letter (which Dr. Lewis drafts); disputes >$50K engage outside counsel; the goal is proportionate response, not reflexive lawyer-calling
- Settlements above $25K require Matt Mathison approval — any settlement commitment above $25K must be approved by Matt Mathison before the company signs a settlement agreement or makes a settlement payment; Dr. Lewis presents the settlement economics (expected value analysis) and the recommended settlement amount to Matt Mathison; Matt Mathison decides; Dr. Lewis does not commit to settlement terms above $25K without Matt Mathison's authorization; settlement below $25K is within CEO authority
- HITL required: Dr. Lewis assesses and recommends; outside counsel for disputes >$50K and for any arbitration or litigation proceeding; Matt Mathison approves settlements >$25K; CEO approves settlements <$25K (with Dr. Lewis's recommendation); Dr. Lewis does not sign settlement agreements on behalf of the company — CEO signs; all settlements are documented in a formal written agreement (even if the amount is small)

## System Dependencies
- **Reads from:** The disputed contract (to understand the parties' obligations and the dispute resolution provision); correspondence file (all prior communications about the dispute); company's financial records (to calculate actual damages from the breach); litigation reserve (fpa-financial-risk-modeler — is the reserve adequate for this dispute?); insurance coverage (legal-insurance-coverage-reviewer — is this dispute covered by EPLI, D&O, or other insurance?); prior dispute history with the same counterparty
- **Writes to:** Dispute assessment memo; demand letter (if company is the plaintiff); response to demand letter (if company is the defendant); settlement agreement (after Matt Mathison approves the terms); litigation hold notice; outside counsel engagement letter; settlement payment record (Bill.com — for disputes resolved by payment); dispute register (SharePoint/Legal/<Company>/Disputes/DisputeRegister.xlsx)
- **HITL Required:** Dr. Lewis assesses; outside counsel for >$50K disputes and all arbitration/litigation; Matt Mathison approves settlements >$25K; CEO approves settlements <$25K; CEO signs settlement agreements; Dr. Lewis does not sign settlement agreements; Matt Mathison must be notified within 24 hours of any dispute >$25K exposure; insurance carrier notification required for any covered claim (see legal-insurance-coverage-reviewer)

## Test Cases
1. **Golden path:** Allevio's billing vendor (Marshall Medical Billing) sends an invoice $18K above what was agreed in their contract — Allevio disputes the charge → Dr. Lewis triages: $18K dispute; existing vendor relationship to preserve; likely billing error; No litigation hold needed (not a litigation risk; billing correction); Dr. Lewis pulls the Marshall Medical contract: confirms the agreed fee schedule; drafts a formal position letter: "We received your invoice for $[X]. Per Section 4.2 of our agreement, the applicable fee schedule is [X]% of collected revenue, which calculates to $[X] for the billing period. The overage of $18,000 appears to be an error. Please issue a corrected invoice within 10 business days. If we do not receive a corrected invoice, we will pay the undisputed amount and request mediation per Section 12 of our agreement." Marshall Medical responds: billing error confirmed; corrected invoice issued; overage credited; dispute resolved without outside counsel; relationship preserved
2. **Edge case:** A former employer group client of Allevio's claims breach of contract — alleges that Allevio failed to provide the contracted 24-hour nurse line service for a period of 6 months; demands $125K in damages → Dr. Lewis activates full response protocol: (1) Litigation hold issued to all Allevio employees with knowledge of the client relationship; (2) Matt Mathison notified (>$25K); (3) Dr. Lewis reviews the contract and the underlying claim: Was the 24-hour nurse line actually down? For how long? What is the contractual remedy for a service failure? (4) EPLI insurance carrier notified (Dr. Lewis checks whether this type of claim is covered — likely not EPLI but potentially professional liability); (5) Dr. Lewis requests outside counsel engagement; (6) Settlement economics: $125K claim; probability of defending successfully ~50%; litigation cost $50-75K; settlement threshold ~$40K; Matt Mathison briefed; negotiated settlement recommended at $40-50K; Matt Mathison approves; mediation initiated; resolved at $45K
3. **Adversarial:** Column6 receives a cease-and-desist letter from a competitor claiming that Column6's programmatic targeting algorithm infringes their trade secrets — demands that Column6 immediately cease operations of its lookalike modeling product → Dr. Lewis responds immediately: (1) Litigation hold issued — all algorithm development records must be preserved; (2) Matt Mathison notified (major claim; HITL required); (3) IP counsel engaged same day — this is an IP claim requiring a specialist; (4) Dr. Lewis works with IP counsel to assess: Do we have development records showing independent creation of our algorithm? Does the competitor actually have a protectable trade secret (were reasonable measures taken)? What is the specificity of the trade secret claim (vague = weak claim)? (5) IP counsel sends a response letter requesting the competitor to identify with specificity the trade secrets allegedly misappropriated (a generic claim without specifics is a litigation tactic, not a valid trade secret claim); (6) Preserve all algorithm development records; do NOT change the algorithm in response to the letter until IP counsel advises; (7) Do not disclose the algorithm's specifics in the response letter; (8) Matt Mathison briefed on the strategic and financial risk

## Audit Log
All dispute assessments retained by counterparty and date. Demand letters sent and received retained. Settlement agreements retained permanently. Litigation hold notices retained with the dispute file. Settlement payment records retained. Matt Mathison notifications and approvals retained. Outside counsel engagement records retained. Dispute register maintained and current.

## Deprecation
Retire when each portfolio company has general counsel who manages dispute resolution — with Dr. Lewis advising on settlement economics and Matt Mathison approving material settlements.
