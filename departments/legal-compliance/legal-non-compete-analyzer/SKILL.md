---
name: legal-non-compete-analyzer
description: "Analyze non-compete agreements for MBL portfolio companies — enforceability, scope, and strategy. Use when the user says 'non-compete', 'non-competition agreement', 'restrictive covenant', 'non-solicitation', 'can they work for a competitor', 'is the non-compete enforceable', 'non-compete review', 'compete with us', 'restraint of trade', 'garden leave', 'non-compete clause', 'non-compete scope', 'employee non-compete', 'executive non-compete', 'founder non-compete', 'M&A non-compete', 'seller non-compete', 'non-solicitation of customers', 'non-solicitation of employees', 'no-hire', or 'trade secret protection'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--context <employment|acquisition|founder>] [--state <AZ|UT|CA|other>] [--action <review|draft|enforce>] [--entity <company name>]"
---

# Non-Compete Analyzer

Analyze and advise on non-compete and non-solicitation agreements for MBL portfolio companies — evaluating enforceability, appropriate scope, and strategy for both incoming (can we restrict an employee or seller?) and outgoing (can we leave and compete?) situations. Non-compete law is highly state-dependent: California effectively bans them for employees; Arizona and Utah enforce them if reasonably scoped; and the FTC has proposed nationwide limits. Getting non-compete strategy wrong costs money in both directions: overly broad non-competes are unenforceable and create a false sense of protection; no non-compete on a key customer-facing employee who leaves for a direct competitor can be devastating.

## When to Use
- A key employee is hired or promoted (should a non-compete be required?)
- An employee with a non-compete resigns or is terminated (is the non-compete enforceable? will we enforce it?)
- MBL or a portfolio company is acquiring a company (seller non-compete in the deal)
- A founder or key executive with a non-compete wants to leave
- A competitor has hired someone subject to our non-compete

## Non-Compete Framework

```
JURISDICTION ANALYSIS — ENFORCEABILITY BY STATE:

  ARIZONA:
    Enforceability: YES — Arizona enforces reasonable non-competes
    Standard: Non-compete must be:
      (1) Ancillary to a lawful agreement (employment or sale of business)
      (2) Reasonably limited in scope, duration, and geography
      (3) Necessary to protect a legitimate business interest
    Courts "blue pencil": Arizona courts can reduce (not eliminate) an overly broad non-compete
    Duration: 1-2 years typically enforceable; 3 years possible for senior executives or M&A
    Geography: Must be tied to where the business actually competes or where the employee actually worked
    
  UTAH:
    Enforceability: YES — with limitations
    Post-Choice Act (2016): Courts can enforce, modify, or void overly broad restrictions
    Duration: 1 year caps are de facto for many employment contexts
    Geography: Limited to where the employee actually worked or had contacts
    
  CALIFORNIA:
    Enforceability: Effectively NO for employment non-competes
    Business and Professions Code §16600: Voids virtually all employment non-competes
    Exception: Sale of business non-competes are enforceable in California (M&A context)
    CRITICAL: If a Column6 or other portfolio company employee is California-based, 
      any employment non-compete is unenforceable in California, and California courts will
      apply California law even if the employment agreement says another state's law governs
    Column6 must not rely on non-competes for California-based employees for trade secret protection
      — instead use: confidentiality agreements; trade secret law (DTSA); strong IP assignment
      
  FEDERAL:
    FTC Non-Compete Rule (proposed 2024): Would ban nearly all employment non-competes nationwide
      Status: Ongoing legal challenges; enforcement blocked in some circuits
      Risk: Employment non-compete landscape may change significantly in 2025-2026
      Dr. Lewis monitors status; assume current state law applies until federal rule is final

SCOPE ANALYSIS — WHAT MAKES A NON-COMPETE REASONABLE:

  Duration:
    Employment context: 6 months - 2 years (varies by role and state)
      Senior executive: Up to 2 years reasonable in AZ/UT
      Mid-level manager: 1 year typically enforceable
      Individual contributor: 6 months - 1 year
    M&A context (seller non-compete): 3-5 years standard and well-enforced
      Courts recognize that buyers need longer protection in business sale context
    
  Geographic scope:
    Employment: Limited to where the employee actually worked or competed
      "All of the United States" for an employee who only worked in Phoenix → likely unenforceable
      "Maricopa County, Arizona" for an employee who only worked in Maricopa → enforceable
      "Any market where the company operates" → enforceable if company is not nationwide
    M&A: Broader geography is enforceable; must still be tied to the business's actual footprint
    
  Scope of restricted activities:
    Overly broad: "Any business that competes with [Company]" — too broad if company has multiple divisions
    Appropriately narrow: "Any business that provides [specific service] in competition with [Company]"
    Healthcare (Allevio): Non-competes restricting physicians from practicing medicine are subject to
      heightened scrutiny; some states restrict physician non-competes; Arizona allows but limits
    
  Business interest:
    Protectable interests: Trade secrets; confidential customer relationships; substantial investment in training
    Not protectable: General skills and knowledge the employee would have regardless
    
NON-SOLICITATION CLAUSES (distinct from non-compete):
  Customer non-solicitation: Cannot solicit the company's customers
    Generally more enforceable than non-competes (narrower scope)
    Duration: 1-2 years typical; must be customers the employee actually knew
  Employee non-solicitation (no-poach): Cannot recruit/hire the company's employees
    Enforceability: Generally enforceable if limited to solicitation (not hiring)
    Duration: 1-2 years
    
ENFORCEMENT STRATEGY:
  Before enforcing a non-compete:
    □ Is the non-compete enforceable? (State law; scope analysis)
    □ Has the employee actually violated or is violation imminent?
    □ What is the harm to the company? (Must be articulable for injunction)
    □ What is the cost/benefit of enforcement? (Litigation = $50K+; is the harm worth it?)
    □ Do we have a confidentiality + trade secret claim too? (Stronger than non-compete alone)
  Enforcement mechanism:
    Cease-and-desist letter: Low cost; first step; may be sufficient to deter violation
    Temporary Restraining Order (TRO) + Preliminary Injunction: Court order stopping the employee
    Damages: Difficult to quantify but available in severe cases
```

## Output Format

```markdown
# Non-Compete Analysis — [Employee/Seller Name]
**Entity:** [Company] | **State:** [AZ/UT/CA/Other] | **Date:** [Date]
**Context:** [Employment / M&A — Seller Non-Compete / M&A — Buyer Side]
**Recommendation:** ENFORCEABLE / NOT ENFORCEABLE / CONDITIONAL / ENFORCE / DO NOT ENFORCE

---

## Non-Compete Terms

**Duration:** [X months/years]
**Geographic scope:** [Description]
**Restricted activities:** [Description]
**Other provisions:** [Non-solicitation of customers / employees?]

---

## Enforceability Analysis

| Factor | Assessment | Notes |
|--------|-----------|-------|
| Jurisdiction | [AZ/UT → enforceable / CA → not enforceable] | [State law applies because...] |
| Duration | Reasonable / Unreasonable | [X months is [within/outside] typical range] |
| Geography | Reasonable / Unreasonable | [Tied to actual business area: Yes/No] |
| Scope | Reasonable / Unreasonable | [Specific to protectable interest: Yes/No] |
| Business interest | Present / Not present | [Trade secrets / Customer relationships / Training investment] |
| Overall | **Likely enforceable / Borderline / Likely unenforceable** | |

---

## Enforcement Recommendation (if applicable)

**Recommended action:** Cease-and-desist / Seek injunction / Do not enforce
**Rationale:** [2 sentences]
**Estimated cost to enforce:** $[X]K litigation
**Estimated harm if no enforcement:** $[X]K estimated revenue at risk
**Employment counsel:** [Engaged / Engage immediately]
```

## Output Contract
- California law for California employees is non-negotiable — California Business and Professions Code §16600 is clear; California employees cannot be bound by employment non-competes regardless of what the employment agreement says about governing law; the only exceptions are M&A transactions (seller non-competes) and rare partnership dissolution situations; Dr. Lewis will not advise enforcing an employment non-compete against a California-based employee and will affirmatively flag any Column6 employment agreement that attempts to include a non-compete for California employees as non-compliant
- M&A non-competes are a different animal — seller non-competes in the context of a business sale are treated much more favorably than employment non-competes; courts recognize that the buyer paid for the business's goodwill and deserves protection against the seller immediately undercutting the acquired business; in the M&A context, 3-5 years non-compete and broader geographic scope are routinely enforced; when Dr. Lewis advises on M&A non-compete terms (as buyer or seller), the analysis starts from this more permissive legal standard
- Enforcement cost-benefit must be explicit — a non-compete enforcement action starts at $30K-$75K (cease-and-desist + TRO proceeding) and can exceed $200K for full litigation; this must be weighed against the actual harm the violation is causing; a sales representative who left to work for a competitor and took a personal Rolodex (not company confidential info) and a few individual customer relationships may not justify $50K in enforcement costs if the revenue risk is $30K; Dr. Lewis builds the cost-benefit explicitly before recommending enforcement; "we're enforcing this on principle" without a financial analysis is not a business decision
- HITL required: Dr. Lewis analyzes; employment counsel advises on enforceability and drafts cease-and-desist letters or injunction papers; Matt Mathison approves the decision to enforce (litigation is a resource commitment); Dr. Lewis does not file for a TRO or injunction without Matt Mathison's approval; employment counsel must be engaged before any enforcement action; Dr. Lewis does not draft non-compete agreements — employment counsel drafts; Dr. Lewis reviews for business appropriateness (scope, duration) before the CEO signs

## System Dependencies
- **Reads from:** Employment agreement (non-compete clause — text, duration, geography, scope); state law (jurisdiction of employment or residence — determines enforceability standard); job description (to assess scope of protectable business interest); customer relationships (CRM data — did the employee have actual customer relationships?); trade secret assessment (legal-trade-secret-protector — is there a trade secret claim alongside the non-compete?); litigation cost estimate (legal-litigation-risk-modeler)
- **Writes to:** Non-compete analysis memo; cease-and-desist letter (if enforcement initiated — drafted by employment counsel; Dr. Lewis reviews); employment counsel engagement letter; Matt Mathison enforcement authorization request; post-enforcement monitoring log (confirmed the former employee is complying)
- **HITL Required:** Dr. Lewis analyzes; employment counsel advises and represents; Matt Mathison approves enforcement decisions; CEO makes day-to-day decisions about employee non-competes (who needs one; at what scope); Dr. Lewis reviews non-compete terms for business appropriateness but does not provide legal opinions on enforceability — that is employment counsel's role; Dr. Lewis does not communicate with the former employee about the non-compete — counsel manages communications

## Test Cases
1. **Golden path:** Allevio hires a new VP of Business Development — should she sign a non-compete? → Dr. Lewis advises: "Given the VP's role (will know all employer group contacts, PMPM pricing, renewal strategies), a non-compete is appropriate. Recommendation: 12-month non-compete in Maricopa County and adjacent counties where Allevio operates; restricted activities: providing MSO services to employer groups that directly compete with Allevio's model; combined with a 12-month non-solicitation of Allevio's employer group clients (any she actively worked with or had access to). Governing law: Arizona (where she works). Have employment counsel draft; I'll review for business scope before execution." Employment counsel drafts; Dr. Lewis confirms the geographic scope matches Allevio's actual market; VP signs as part of her offer letter
2. **Edge case:** HIVE's COO resigns after 3 years and goes to work for a competing O&G operator in the Uinta Basin; she has a 2-year non-compete restricted to "oil and gas operations in the Uinta Basin, Utah" → Dr. Lewis assesses enforceability: Duration (2 years in Utah: courts generally accept 1-2 years for senior executives); geography (Uinta Basin — directly tied to where she worked and the company operates; very specific and enforceable); scope (oil and gas operations — specific to HIVE's business); state (Utah — enforces reasonable non-competes); Conclusion: Likely enforceable; Harm assessment: HIVE competitor has now hired the COO with full knowledge of HIVE's well development plans, LOE optimization strategy, and key contractor relationships; harm is material; Cost-benefit: $50-75K enforcement vs. $200-500K+ potential harm from competitive intelligence disclosure; Dr. Lewis recommends enforcement; Matt Mathison approves; employment counsel sends cease-and-desist; COO's new employer puts her on administrative leave pending legal review; COO ultimately returns to a different role at the new employer that does not touch Uinta Basin operations; cease-and-desist resolved without litigation
3. **Adversarial:** Column6's lead CTV sales executive leaves to join a competitor; his employment agreement has a 2-year non-compete with California governing law (his employer is Column6, Arizona, but he works from Los Angeles) → Dr. Lewis analysis: "The governing law provision says Arizona, but the employee works from California, is a California resident, and will perform the competing work in California. California courts will apply California Business and Professions Code §16600 regardless of the governing law clause — this is well-settled law in California. The non-compete is not enforceable against this employee in California. However: he may still be bound by the non-solicitation of customers and the confidentiality/trade secret agreement. If he is actively soliciting Column6's California advertiser clients (customers he personally serviced), the non-solicitation may be enforceable. If he is using Column6's confidential pricing or targeting methodology, we have a trade secret claim (DTSA — federal; applies in California). Focus enforcement on non-solicitation + trade secret, not the non-compete." Employment counsel engaged; strategy shifted to trade secret / non-solicitation protection; the non-compete is not asserted

## Audit Log
All non-compete agreements retained by employee and execution date. Non-compete analysis memos retained. Enforcement actions retained (cease-and-desist letters; TRO filings; outcomes). Employee non-solicitation violations log retained. M&A non-compete terms retained in deal binder. Employment counsel advice retained (privileged — stored separately). Post-enforcement compliance monitoring records retained.

## Deprecation
Retire when each portfolio company has employment counsel on retainer who advises on all non-compete drafting and enforcement — with Dr. Lewis reviewing the business scope of new non-competes and Matt Mathison authorizing enforcement actions.
