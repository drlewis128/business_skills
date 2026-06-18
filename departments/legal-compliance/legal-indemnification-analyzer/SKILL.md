---
name: legal-indemnification-analyzer
description: "Analyze indemnification clauses in contracts for MBL portfolio companies. Use when the user says 'indemnification', 'indemnify', 'indemnity', 'hold harmless', 'indemnification clause', 'indemnification provision', 'indemnification review', 'indemnity language', 'mutual indemnification', 'one-sided indemnity', 'indemnify them', 'they indemnify us', 'broad indemnification', 'indemnification cap', 'third-party indemnification', 'IP indemnification', 'infringement indemnity', 'defend and indemnify', or 'indemnification obligation'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--contract-type <vendor|client|ma|employment>] [--side <we-indemnify|they-indemnify|mutual>] [--action <review|negotiate|assess>]"
---

# Indemnification Analyzer

Analyze indemnification clauses in contracts for MBL portfolio companies — assessing whether the indemnification obligations are appropriate, balanced, and capped at a level that does not create unlimited financial exposure. Indemnification is the single most financially consequential provision in most commercial contracts: a poorly negotiated indemnification clause can expose the company to claims that vastly exceed the value of the underlying contract. Dr. Lewis reviews indemnification terms in all material contracts before signature.

## When to Use
- Reviewing a new contract with significant indemnification provisions
- Negotiating a contract where the other side's indemnification terms are unfavorable
- Assessing the company's total indemnification exposure across its contract portfolio
- An M&A due diligence requires an indemnification review of the target's contracts
- A claim has been made under an indemnification provision

## Indemnification Analysis Framework

```
INDEMNIFICATION FUNDAMENTALS:
  What it is: A contractual obligation to compensate another party for losses, damages, or liabilities
    arising from specified events or claims
  Structure: "Party A shall indemnify, defend, and hold harmless Party B from and against any claims,
    losses, damages, liabilities, and expenses arising from..."
  Scope: What triggers the indemnification obligation? (IP infringement; personal injury; contract breach;
    third-party claims; specific events)
  Cap: Is the indemnification obligation limited to a maximum dollar amount?
  Defense obligation: "Indemnify" alone = reimburse after the fact; "defend and indemnify" = assume
    legal defense (control the litigation) and indemnify

INDEMNIFICATION REVIEW CHECKLIST:

  WHO INDEMNIFIES WHOM:
    One-way (unfavorable for the indemnifying party):
      "Customer shall indemnify Vendor for all claims arising from Customer's use of the service"
      Risk: Unlimited exposure; any claim against the vendor gets passed to the customer
    Mutual (preferred — each party indemnifies the other for its own acts):
      "Each party shall indemnify the other party for claims arising from the indemnifying party's
       acts, omissions, or material breach of this agreement"
      This is the appropriate standard: you're responsible for your own conduct, not the other party's
      
  TRIGGER EVENTS — WHAT CREATES THE INDEMNIFICATION OBLIGATION:
    Acceptable triggers:
      ✅ Indemnifying party's gross negligence or willful misconduct
      ✅ Indemnifying party's material breach of the agreement
      ✅ IP infringement by the indemnifying party's product or deliverables
      ✅ Indemnifying party's violation of applicable law
    Red flags (overly broad triggers):
      ❌ "Any and all claims" without a nexus to the indemnifying party's conduct
      ❌ Indemnifying party responsible for consequential or indirect damages caused by third parties
      ❌ "Claims arising from Customer's use" (this could be anything; no party-conduct nexus)
      ❌ Responsibility for claims arising from modifications made by the other party (if we didn't modify it,
         we shouldn't indemnify for modifications)
         
  INTELLECTUAL PROPERTY INDEMNIFICATION:
    Vendor's IP indemnification to customer (standard provision):
      Vendor represents that its product/service does not infringe third-party IP
      Vendor will defend and indemnify customer against any third-party IP infringement claims
      Customer must: Notify vendor promptly; give vendor control of the defense; cooperate with vendor
      Vendor's remedies: Obtain a license; modify the product to eliminate the infringement; refund
    Customer's IP indemnification to vendor:
      Customer represents that materials it provides to vendor do not infringe third-party IP
      Customer will indemnify vendor for third-party claims arising from customer-provided materials
      Scope must be limited to materials actually provided by the customer
      
  INDEMNIFICATION CAPS AND LIMITS:
    Cap options:
      No cap: Unlimited indemnification exposure — REJECT for any significant contract
      Cap at contract value: Indemnification limited to the total contract value
        Example: $50K annual contract; cap at $50K → acceptable for mutual liability cap
      Cap at 2× contract value or 2× annual fees: More common for high-risk provisions
      Uncapped for: IP indemnification; willful misconduct; fraud; death/bodily injury
        (these events cannot be capped as a matter of policy and are typically excluded from caps)
    Exclusion from cap: Consequential and indirect damages (if these are excluded from liability)
      Mutual consequential damages exclusion + cap = best commercial practice
      
  DEFENSE OBLIGATION:
    "Indemnify" alone: Party reimburses after a final judgment or settlement (reactive)
    "Defend and indemnify": Party must assume and control the defense (more valuable to the indemnitee)
      This means: Hiring the attorneys; making strategic decisions; controlling settlement authority
      Risk for the indemnifying party: You control the defense, but you also control any decision to settle
      Important: The indemnified party retains the right to participate in the defense with its own counsel
      
  SURVIVAL OF INDEMNIFICATION:
    Survival period: How long after the contract ends can indemnification claims be made?
    Minimum: Statute of limitations for the underlying claim (typically 3-6 years)
    Best practice for vendor contracts: Surviving for statute of limitations is appropriate
    M&A context: See legal-rep-warranty-analyzer for survival period discussion

MBL CONTRACT INDEMNIFICATION POSITIONS:

  As vendor/service provider:
    We indemnify: Our IP infringement; our gross negligence or willful misconduct; our material breach
    We don't indemnify: Modifications by the customer; customer's use in ways not intended; third-party claims
      with no nexus to our conduct
    Cap: Annual fees or contract value for most claims; uncapped for IP infringement and willful misconduct
    
  As customer/client:
    We want: Vendor IP indemnification; vendor negligence/misconduct indemnification
    We don't provide: Broad "any and all claims" indemnification; uncapped exposure; defense of claims
      we didn't cause
    Cap: Our exposure capped at the annual fees we're paying
```

## Output Format

```markdown
# Indemnification Analysis — [Contract] | [Counterparty]
**Entity:** [Portfolio Company] | **Contract type:** [Vendor/Client/M&A] | **Date:** [Date]
**Annual value:** $[X]K | **Reviewed by:** Dr. Lewis

---

## Indemnification Structure

| Provision | Current Terms | Assessment | MBL Position |
|-----------|--------------|-----------|-------------|
| Who indemnifies whom | [One-way / Mutual] | ✅ / ❌ | Mutual preferred |
| Trigger events | [Specific / Broad "any claims"] | ✅ / ❌ | Limit to own conduct |
| IP indemnification | [Present / Missing] | ✅ / ⚠️ | Vendor indemnifies customer |
| Defense obligation | [Indemnify / Defend and indemnify] | ✅ / ⚠️ | Defend and indemnify |
| Cap | [$[X] / Uncapped] | ✅ / ❌ | Cap at annual fees |
| Consequential damages | [Excluded / Not excluded] | ✅ / ❌ | Mutual exclusion |

---

## Exposure Analysis

**Maximum indemnification exposure (current draft):** $[X]K / Uncapped
**Maximum indemnification exposure (after negotiation):** $[X]K
**Coverage by insurance:** $[X]M GL / E&O (confirm with legal-insurance-coverage-reviewer)

---

## Recommendation

**[ACCEPTABLE AS-IS / NEGOTIATE before signing / ESCALATE to outside counsel]**
[2-sentence rationale and highest-priority redline]
```

## Output Contract
- Uncapped indemnification is a material risk — a contract with an uncapped "defend and indemnify" obligation means the company has an open-ended financial commitment for the counterparty's defense and any resulting judgment; a $25K/year software vendor contract with uncapped indemnification means a $3M jury verdict against the vendor for a patent infringement claim could become the company's financial obligation if the indemnification clause is triggered; Dr. Lewis does not approve any contract with uncapped indemnification without a specific risk analysis and Matt Mathison's awareness; the cap should at minimum equal the annual contract value; ideally capped at 2× annual fees for most claims
- Mutual vs. one-way is the threshold question — the most important question about any indemnification clause is: does each party indemnify the other for its own conduct, or does one party indemnify the other for everything? a one-way indemnification that makes the company responsible for "any and all claims" arising from the relationship (including claims caused by the vendor's negligence) is fundamentally unfair and financially dangerous; Dr. Lewis converts all one-way broad indemnification clauses to mutual, conduct-based indemnification as the first negotiating position
- IP indemnification from vendors is non-negotiable — when a portfolio company uses a vendor's software, creative work, or platform, the company relies on the vendor's representation that it does not infringe third-party IP; if the vendor's product turns out to infringe a patent, the company is exposed as a user of the infringing product; the vendor must indemnify and defend the company against any third-party IP infringement claim arising from the vendor's product; Dr. Lewis includes vendor IP indemnification as a required term in every vendor agreement where the vendor provides a product or technology
- HITL required: Dr. Lewis analyzes and negotiates; outside counsel for contracts with unusual or high-risk indemnification structures (e.g., uncapped IP exposure; defense obligations for regulatory claims); Matt Mathison informed of any contract where the company's maximum indemnification exposure exceeds $100K; CEO approves and signs; Dr. Lewis does not sign contracts on behalf of the company; for M&A indemnification review, see legal-rep-warranty-analyzer and legal-purchase-agreement-reviewer

## System Dependencies
- **Reads from:** The contract (indemnification clause — typically Sections 10-15 in a commercial agreement); insurance coverage (legal-insurance-coverage-reviewer — what indemnification claims would be covered?); risk analysis (is this a high-risk relationship where IP, personal injury, or data breach claims are plausible?); prior contracts with the same counterparty (were there prior indemnification claims?); legal-contract-reviewer (full contract review context)
- **Writes to:** Indemnification analysis memo; contract redlines (indemnification provisions); insurance coverage notification (if a claim triggers an indemnification that is insured); Matt Mathison indemnification exposure summary for any contract >$100K maximum exposure; contract tracker (note maximum indemnification exposure for each material contract)
- **HITL Required:** Dr. Lewis analyzes; outside counsel for high-risk or unusual indemnification; Matt Mathison informed of any contract with >$100K maximum indemnification exposure; CEO approves and signs; Dr. Lewis does not authorize or sign indemnification agreements; indemnification claims that are triggered (the company is called to defend or pay) require immediate notification to the insurance carrier and outside counsel engagement

## Test Cases
1. **Golden path:** Allevio enters a data analytics MSA — vendor's indemnification provision says "Customer shall indemnify, defend, and hold harmless Vendor from and against any and all claims, losses, and liabilities arising from Customer's use of the services" → Dr. Lewis flags: "This is a one-way, unlimited indemnification in favor of the vendor. Under this language, if a third party sues the vendor for anything related to Allevio's data, Allevio is defending and paying — even if the vendor caused the problem. This is fundamentally unacceptable. Redline: Replace with mutual, conduct-based indemnification: each party indemnifies the other for claims arising from (1) its own gross negligence or willful misconduct; (2) its own material breach of the agreement; (3) its own IP infringement. Cap at the greater of $75K (one year of fees) for most claims. Vendor IP infringement uncapped (vendor represents its platform doesn't infringe; it must stand behind that). Vendor agrees to the mutual structure after one round of negotiations."
2. **Edge case:** Column6's agency MSA includes a broad IP indemnification where Column6 agrees to indemnify the agency "against all claims arising from Column6's content, including any claim that Column6's advertising content infringes any third-party intellectual property right" — the advertising content includes content from the agency's clients that is delivered to Column6 for placement → Dr. Lewis: "This is too broad — Column6 is indemnifying against IP infringement in client creative content that Column6 didn't create. The agency's clients provide the creative; Column6 places it; if the client's creative infringes a copyright, Column6 is exposed under this clause. Redline: Limit Column6's IP indemnification to IP that Column6 itself created or specifically modified; exclude content provided by the agency or its clients; the agency must indemnify Column6 for IP issues in agency-provided client creative." Agency accepts the limitation; Column6's IP indemnification narrowed to Column6-created content
3. **Adversarial:** HIVE's equipment lease includes an indemnification clause that makes HIVE responsible for all environmental liability "arising from, related to, or in connection with the use of the equipment on HIVE's sites" — this is uncapped and includes third-party environmental claims → Dr. Lewis: "This is an extraordinarily broad environmental indemnification. Under this language, if a third party brings an environmental claim related to any equipment HIVE leases — even if the equipment malfunction (not HIVE's fault) caused the release — HIVE is fully exposed. Environmental claims in Utah O&G can be enormous. This clause must be significantly narrowed: HIVE's indemnification should be limited to (1) HIVE's own gross negligence or willful misconduct; (2) HIVE's failure to operate the equipment in accordance with manufacturer specifications. Cap: $2M (HIVE's energy package environmental liability coverage). Exclude: Claims arising from equipment defects (those belong to the equipment manufacturer). The lessor will resist, but this is non-negotiable." Lessor negotiates; environmental indemnity limited to HIVE's negligence; $2M cap accepted; equipment lease signed

## Audit Log
All indemnification analysis memos retained by contract and date. Contract redlines showing indemnification changes retained. Matt Mathison notifications for >$100K exposure retained. Insurance carrier notifications for triggered indemnification claims retained. Indemnification claims made against the company retained permanently with outcomes. Indemnification payments made by the company retained.

## Deprecation
Retire when each portfolio company has in-house counsel who reviews all material contracts — with Dr. Lewis reviewing indemnification terms in Tier 1 and Tier 2 vendor contracts and Matt Mathison approving contracts with >$100K exposure.
