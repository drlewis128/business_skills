---
name: legal-litigation-risk-modeler
description: "Assess and quantify litigation risk for MBL portfolio companies. Use when the user says 'litigation risk', 'lawsuit risk', 'legal risk', 'threatened lawsuit', 'demand letter', 'legal exposure', 'legal claim', 'litigation exposure', 'we might get sued', 'legal risk assessment', 'legal reserve', 'contingent liability', 'legal hold', 'preservation notice', 'are we exposed', 'what is our risk', 'legal liability', 'claim assessment', 'probability of losing', 'settlement value', 'litigation strategy', or 'lawsuit assessment'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--claim-type <employment|contract|regulatory|ip|tort|other>] [--action <assess|quantify|strategize>] [--stage <threatened|filed|discovery|trial>]"
---

# Litigation Risk Modeler

Assess and quantify litigation risk for MBL portfolio companies — evaluating the probability and magnitude of legal claims, recommending a response strategy, and building the financial reserve for the risk. Litigation is the ultimate legal expense: even a meritless lawsuit costs $50K-$200K to defend to dismissal; a claim with any merit costs more. Dr. Lewis assesses all threatened or filed claims, quantifies the expected value, and recommends a strategy (defend, settle early, or litigate). Litigation counsel is engaged for any claim that progresses beyond a demand letter.

## When to Use
- A demand letter arrives from an attorney or claimant
- An employee threatens legal action (during or after termination)
- A vendor or customer sends a breach of contract notice
- A regulatory agency sends a notice of violation
- A lawsuit is filed naming a portfolio company or its officers
- Matt Mathison asks "what is our legal exposure?"

## Litigation Risk Assessment Framework

```
ASSESSMENT DIMENSIONS:

  1. CLAIM CHARACTERIZATION:
     What is the legal theory? (What are they claiming we did wrong?)
     What damages are alleged? (How much are they seeking?)
     What evidence do they have? (Is the claim facially credible?)
     What is the legal standard? (What would they need to prove to win?)
     
  2. PROBABILITY OF LIABILITY:
     Based on the facts and law:
       <20%: Weak claim — high confidence we prevail
       20-40%: Below average — likely prevail but meaningful risk
       40-60%: Uncertain — outcome is genuinely unclear
       60-80%: Above average — elevated risk; settlement pressure
       >80%: Strong claim — settle unless there is a specific strategic reason to fight
       
  3. DAMAGE QUANTIFICATION:
     Best case: Minimal or no damages
     Expected case: Mid-range estimate
     Worst case: Maximum realistic exposure (not maximum theoretical)
     Expected value: Probability of liability × Expected damages (for reserve calculation)
     
  4. RESPONSE STRATEGY:
     Defend aggressively: If claim is weak, precedent matters, or settlement creates adverse signals
     Settle early: If liability is clear; damages are quantifiable; cost to defend exceeds settlement value
     Nuisance settlement: If claim is weak but costs of defense exceed settlement; settle to resolve
     Engage to negotiate: Reach out to opposing counsel to understand the claim before formal response
     
  5. INSURANCE COVERAGE:
     Does any policy respond? (EPLI for employment; GL for third-party claims; D&O for management decisions)
     Notify carrier immediately (coverage may be conditioned on timely notice)
     Retention amount: What is the company's self-insured retention (SIR) or deductible?

CLAIM TYPES AND COST BENCHMARKS:

  Employment claims (discrimination, harassment, wrongful termination):
    Average cost to defend to judgment (Arizona): $75K-$200K
    Average settlement (single plaintiff, mid-range): $30K-$150K
    EPLI coverage: Likely responds; confirm coverage and notify carrier
    Key factor: Was the termination documented? Was there a pattern of prior complaints?
    
  Contract disputes (vendor, customer, supplier):
    Cost to defend: $25K-$100K depending on complexity
    Settlement: Typically 30-60% of claimed damages
    Factor: What does the contract say about dispute resolution? (Arbitration? Governing law?)
    
  IP infringement (trademark, copyright, patent):
    Cost to defend: $75K-$500K+ depending on complexity
    Potential damages: Actual damages + profits + potentially attorney's fees
    Factor: Does the company actually infringe? (Clear non-infringement → defend)
    
  Regulatory enforcement (HIPAA, EPA, FTC, DOGM):
    Civil penalties per violation: Variable ($500-$70K+ per day/violation)
    Self-report vs. enforcement: Self-reporting reduces exposure significantly
    Factor: Was it willful? Was it self-reported?
    
  Tort claims (premises liability, professional liability):
    GL or E&O coverage likely responds
    Notify carrier first; do not engage with claimant before carrier confirms coverage
    
LITIGATION HOLD (EVIDENCE PRESERVATION):
  As soon as litigation is reasonably anticipated (demand letter; government subpoena):
  Immediately:
    1. Issue written litigation hold notice to all potentially relevant custodians
    2. Preserve: emails, texts, documents, financial records, operational data related to the claim
    3. Notify IT/email administrator to suspend auto-delete for relevant custodians
    4. Do NOT delete or destroy anything related to the claim
  Failure to preserve = spoliation → sanctions, adverse inference instructions, terminating sanctions
  Litigation counsel must be engaged before responding to any formal legal process
```

## Output Format

```markdown
# Litigation Risk Assessment — [Claim Description]
**Entity:** [Portfolio Company] | **Claimant:** [Name] | **Date assessed:** [Date]
**Claim type:** [Employment / Contract / IP / Regulatory / Tort]
**Stage:** [Pre-demand / Demand letter / Filed / Discovery]

---

## Claim Summary

**What they claim:** [Plain language description]
**Damages alleged:** $[X]K - $[X]K
**Legal standard:** [What they must prove to succeed]
**Their evidence:** [What they appear to have]

---

## Risk Assessment

| Dimension | Assessment |
|-----------|-----------|
| Probability of liability | [X]% — [rationale] |
| Best case damages | $[X]K |
| Expected case damages | $[X]K |
| Worst case damages | $[X]K |
| **Expected value** | **$[X]K** (probability × expected damages) |

---

## Insurance

| Coverage | Carrier | Limit | Retention | Status |
|---------|---------|-------|----------|--------|
| [EPLI] | [Carrier] | $1M | $[X]K | ✅ Notified [Date] |

---

## Strategy Recommendation

**Recommended strategy:** Defend / Settle early / Nuisance settlement / Negotiate
**Rationale:** [2-3 sentences]
**Next steps:** [Specific actions, owners, and deadlines]
**Reserve recommended:** $[X]K (included in financial model per fpa-financial-risk-modeler)
**Matt Mathison briefed:** [Yes / To be done by (date)]
```

## Output Contract
- Expected value is the number that drives decisions — probability × damages = expected value; a $500K claim with 10% probability of liability is a $50K expected value; a $100K claim with 70% probability is $70K expected value; Dr. Lewis uses expected value to evaluate settlement offers: a $40K settlement on the $50K expected value claim is attractive (avoid defense costs + certainty); a $40K settlement on the $70K expected value claim is also attractive; the framework prevents emotional decision-making ("we're not going to settle because we did nothing wrong") and grounds decisions in cost-benefit analysis; Matt Mathison sees the expected value in the presentation
- Insurance carrier notification is time-sensitive — most insurance policies require prompt notification of claims; "prompt" is typically interpreted as "within a reasonable time after you knew or should have known about the claim"; a company that receives a demand letter in January and notifies their EPLI carrier in June may find coverage denied for late notification; Dr. Lewis notifies the relevant carrier the same day any claim or demand letter is received; the notification does not commit the company to any position — it preserves coverage options
- Litigation hold cannot wait — a litigation hold must be issued as soon as litigation is reasonably anticipated; "reasonably anticipated" is a low threshold: a demand letter makes litigation reasonably anticipated; a phone threat of a lawsuit makes it reasonably anticipated; once a litigation hold is required and the company fails to preserve evidence, the consequences are severe (sanctions, adverse jury instructions, in bad cases: dismissal of the company's defenses); Dr. Lewis issues the litigation hold notification within hours of the triggering event
- HITL required: Dr. Lewis assesses and recommends; litigation counsel required for all claims that are filed or that present >$25K expected value; Matt Mathison briefed on all claims (demand letters and above); Matt Mathison must approve any settlement >$25K or any decision to litigate a claim with expected cost >$50K; Dr. Lewis does not authorize settlements — that authority belongs to Matt Mathison; Dr. Lewis does not respond to demand letters without litigation counsel review; Dr. Lewis manages the litigation reserve in the financial model (fpa-financial-risk-modeler)

## System Dependencies
- **Reads from:** Claim documents (demand letter, complaint, regulatory notice — filed in SharePoint/Legal/<Company>/Litigation/); employment records (for employment claims — with legal-employment-law-tracker); relevant contracts (for contract claims — from contract tracker); insurance policies (legal-insurance-coverage-reviewer — for coverage notification); financial model (fpa-financial-risk-modeler — for reserve addition)
- **Writes to:** Litigation risk assessment memo; litigation hold notice (issued immediately to relevant custodians); insurance carrier notification letter; Matt Mathison litigation briefing; litigation reserve entry in the financial model; litigation counsel engagement letter; settlement authority memo (for any settlement >$25K — requires Matt Mathison sign-off)
- **HITL Required:** Dr. Lewis assesses; litigation counsel manages all filed claims; Matt Mathison approves any settlement >$25K; Matt Mathison briefed on all claims; Dr. Lewis does not settle claims without Matt Mathison authorization; Dr. Lewis does not respond to formal legal process without litigation counsel review; insurance carrier must be notified same day as the claim is received

## Test Cases
1. **Golden path:** Allevio receives a demand letter from a former employee claiming wrongful termination — $75K demand → Dr. Lewis assesses: Employee was terminated after 2 written performance warnings and a documented PIP; termination paper trail is clean; no recent complaints or accommodation requests (no retaliation risk); employee is not in a protected class (age, race, etc.) that would suggest a discrimination angle; probability of liability: ~15% (claim has minor chance if the employee can argue the PIP was pretextual); expected damages at 15%: $75K × 15% = $11.25K expected value; EPLI notified same day (retention is $5K); Dr. Lewis briefs Matt Mathison: "Former employee demand at $75K; probability of liability 15%; expected value $11K. EPLI carrier notified. Litigation counsel advises: offer $5K-$8K nuisance settlement to avoid EPLI retention and defense costs; or defend with EPLI coverage picking up defense costs above $5K retention. My recommendation: nuisance settlement at $5K. Cost = SIR; avoids 6-12 months of litigation distraction." Matt Mathison approves; $5K settlement offer extended; accepted; resolved
2. **Edge case:** HIVE receives notice that a landowner filed a lawsuit claiming HIVE's operations caused property damage — $350K claimed → Dr. Lewis: "This is a $350K claim — outside my self-assessment confidence; litigation counsel must be engaged today. Steps: (1) Issue litigation hold notice to HIVE CEO and operations team — preserve all records of operations in the relevant area; (2) Notify energy package insurance carrier immediately (property damage from operations is likely covered); (3) Engage litigation counsel; (4) Reserve $100K in the financial model (expected value estimate pending counsel's assessment); (5) Brief Matt Mathison today." Insurance carrier engaged; carrier assigns defense counsel through the energy policy; Dr. Lewis monitors the defense and reports status to Matt Mathison monthly
3. **Adversarial:** An aggressive plaintiff's attorney sends a demand letter threatening a class action against Column6 for alleged TCPA violations (unsolicited SMS marketing) — claims 50,000 class members; $500/message = $25M exposure → Dr. Lewis: "This is the highest-stakes claim in the portfolio's history. TCPA class actions are the plaintiff's bar's preferred vehicle — $25M in statutory damages (if the class is certified) overwhelms the company. First question: Does Column6 have a TCPA SMS program? If not, the claim is factually baseless and we have a strong defense. If yes, the consent documentation is the entire case. Steps: (1) Matt Mathison briefed immediately; (2) Privacy and advertising counsel engaged today; (3) Litigation hold issued; (4) Column6 CEO must locate all TCPA consent records for the alleged SMS program immediately; (5) If consent records exist and are solid: defend; (6) If consent records are incomplete or non-existent: settlement discussions must begin immediately — $25M exposure with 50K class members and no consent records is existential; (7) Do NOT respond to the demand letter without counsel." Matt Mathison engaged; counsel engaged; consent records reviewed; strategy determined by counsel and Matt Mathison

## Audit Log
All demand letters and complaints retained permanently. Litigation risk assessment memos retained. Insurance carrier notification records retained. Litigation hold notices retained. Settlement agreements retained permanently. Litigation reserve records retained (tied to financial model). Matt Mathison briefing materials retained. Litigation counsel engagement letters retained. Final disposition records retained permanently.

## Deprecation
Retire when each portfolio company has litigation counsel on retainer who handles all claim assessments — with Dr. Lewis providing the financial reserve calculation and Matt Mathison approving all settlement decisions.
