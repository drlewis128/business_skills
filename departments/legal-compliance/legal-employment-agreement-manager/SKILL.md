---
name: legal-employment-agreement-manager
description: "Draft and manage employment agreements, offer letters, and restrictive covenants for MBL portfolio companies. Use when the user says 'employment agreement', 'offer letter', 'employment contract', 'employment terms', 'executive agreement', 'key employee agreement', 'compensation terms', 'hire agreement', 'job offer', 'employment terms', 'restrictive covenant', 'severance', 'severance agreement', 'separation agreement', 'at-will employment', 'employee contract', 'bonus agreement', 'equity grant letter', or 'executive compensation'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <executive|manager|individual-contributor>] [--action <draft|review|approve|separate>] [--state <AZ|UT|CA|other>]"
---

# Employment Agreement Manager

Draft, review, and manage employment agreements and offer letters for MBL portfolio companies — establishing clear terms of employment, protecting the company's interests through appropriate restrictive covenants, and managing the separation process when employment ends. Employment terms set the expectations for the entire relationship; a vague offer letter creates disputes about bonus targets, equity, and severance; a missing confidentiality agreement creates vulnerability when the employee leaves. Dr. Lewis ensures employment documentation is complete and defensible.

## When to Use
- A new executive or senior hire is being offered a position
- An employment agreement is expiring or needs to be renewed
- A bonus plan or equity compensation needs to be documented
- An employee is separating — what are the company's obligations?
- A termination requires a separation agreement with a release

## Employment Agreement Framework

```
OFFER LETTER vs. EMPLOYMENT AGREEMENT:
  Offer letter (most employees):
    Use for: Most individual contributor and manager hires
    Contents: Position; start date; compensation; at-will statement; benefits overview; conditions
    At-will statement: "Your employment is at-will, meaning either you or the Company may terminate the 
      employment relationship at any time, for any reason or no reason, with or without notice."
    Attachments: Employee handbook acknowledgment; IP assignment agreement; confidentiality agreement
    
  Employment agreement (executives and senior leaders):
    Use for: CEO, CFO, COO, VP-level and above; any role with special compensation terms
    Contents: Everything in the offer letter + term; severance; non-compete; cause and good reason definitions

COMPENSATION ELEMENTS — DOCUMENTATION REQUIREMENTS:
  Base salary:
    Document: Annual base salary; pay frequency; overtime eligibility (exempt status confirmation)
    Change process: Any change requires written amendment signed by CEO and employee
    
  Bonus:
    Short-term incentive (STI / annual bonus):
      Document: Target percentage; performance metrics; payment timing; proration for partial-year hires
      Discretionary vs. formula-based: Formula-based bonuses are more defensible (objective; measurable)
      Language: "The bonus is at the Company's sole discretion" → creates risk if denied inconsistently
      Better language: "Target bonus of [X]% of base salary; payable based on achievement of the following metrics..."
    
  Equity:
    Document equity grants in a separate grant agreement (profits interest or unit grant)
    In the offer letter/employment agreement: Reference that equity is subject to a separate grant agreement
    Vesting: Document vesting schedule in the grant agreement; reference it in the offer
    83(b) election: Remind the employee (in writing) of the 30-day election deadline
    
  Benefits:
    Standard statement: Employee is entitled to participate in the Company's benefit programs generally 
      available to employees of similar seniority, as modified by the Company from time to time
    Do not promise specific benefit levels in the agreement (benefits change; overpromising creates liability)

RESTRICTIVE COVENANTS IN EMPLOYMENT AGREEMENTS:
  Confidentiality: Always include — protects trade secrets and confidential information
    Scope: All confidential and proprietary information of the Company
    Duration: Indefinitely (for true trade secrets); during employment + 2-3 years (for confidential information)
    
  IP Assignment: Always include — all work product created in the scope of employment belongs to the Company
    Scope: All inventions, code, designs, processes created during employment using company resources or time
    Exception: Personal projects not using company resources and not related to company business
    Note: Pre-existing IP must be disclosed and carved out before signing
    
  Non-compete: See legal-non-compete-analyzer
    Duration: 6-24 months depending on role and state
    Jurisdiction: Arizona and Utah → enforceable if reasonable; California → generally not enforceable
    
  Non-solicitation of customers: Always for roles with customer contact
    Duration: 12-24 months; customers the employee actually worked with
    
  Non-solicitation of employees: Recommended for management-level and above
    Duration: 12-24 months; cannot solicit company employees to join another employer

SEVERANCE AND SEPARATION:
  At-will employees without a severance agreement: No legal obligation to pay severance (Arizona)
    Best practice: Pay some severance (2-4 weeks per year of service) to obtain a release
    
  Executive severance agreements: Document in the employment agreement
    Standard executive severance: 3-12 months base salary (depending on seniority)
    Trigger: Termination without cause OR resignation for good reason (double trigger for equity acceleration)
    Condition: Execution of a release of claims (ADEA release: 21 days to consider; 7 days to revoke)
    
  Cause definition: Defines when the company can terminate without severance
    Typical causes: Material breach of company policy; criminal conviction; fraud; dishonesty; willful misconduct
    Important: "Cause" must be defined in the agreement; undefined "cause" is litigated
    
  Good reason definition (for executives): Allows the employee to resign and claim severance
    Typical good reasons: Material reduction in compensation; material change in job duties; company relocation
    Important: Good reason requires notice + 30-day cure period before the employee can claim it

SEPARATION AGREEMENTS:
  When used: Any termination where the company wants a release of claims
  Requirements:
    ADEA (Age Discrimination in Employment Act): If employee is 40+, must provide:
      21 days to consider the agreement (employee may sign earlier)
      7 days to revoke after signing (revocation period cannot be waived)
      Specific ADEA language in the release
    All employees: Clear description of what is being released; identify claims included in the release
    Consideration: The employee must receive something they weren't already entitled to
      (severance is the most common consideration; reference to pre-existing vacation payout is NOT consideration)
  Dr. Lewis reviews; employment counsel drafts for any separation involving a claim or significant severance
```

## Output Format

```markdown
# Employment Agreement / Offer Letter — [Employee Name]
**Entity:** [Company] | **Role:** [Title] | **Start date:** [Date] | **State:** [AZ/UT/CA/Other]
**Drafted by:** Dr. Lewis | **Reviewed by:** [Employment counsel if applicable]

---

## Compensation Summary

| Element | Terms | Notes |
|---------|-------|-------|
| Base salary | $[X,XXX]/year | Exempt; paid semi-monthly |
| Target bonus | [X]% of base salary | Per metrics in Schedule A |
| Equity | [X]% profits interest | Subject to separate grant agreement; 36-month vest |
| Benefits | Per Company plan | Standard health/dental/vision |

---

## Restrictive Covenants

| Covenant | Duration | Scope | Enforceable in [State]? |
|----------|---------|-------|----------------------|
| Confidentiality | Indefinite for TS; 3 years for CI | All Company confidential information | ✅ Yes |
| IP assignment | During employment + perpetual for assigned IP | All work product in scope of employment | ✅ Yes |
| Non-compete | [X] months | [Geographic scope; restricted activities] | ✅/⚠️/❌ |
| Non-solicitation of clients | [X] months | Clients employee directly served | ✅ Yes |
| Non-solicitation of employees | [X] months | All company employees | ✅ Yes |

---

## Severance Summary (if executive agreement)

**Termination without cause:** [X] months base salary
**Good reason resignation:** [X] months base salary
**Equity acceleration:** [Full/Partial — if applicable]
**ADEA compliant:** ✅ Yes (21-day consideration / 7-day revocation)

---

## Status

**Drafted:** [Date] | **Sent to employee:** [Date] | **Signed:** [Date]
**Employment counsel reviewed:** [Yes / Not required at this level]
**Filed in:** SharePoint/Legal/[Entity]/Employment/[Name]_EmploymentAgreement_[Date].pdf
```

## Output Contract
- All material compensation terms must be in writing — verbal promises about bonuses, equity, or severance are disputes waiting to happen; if the CEO promises a new hire a $50K bonus for hitting a revenue target, that promise must be in writing or it is unenforceable (or worse, litigated at departure); Dr. Lewis includes all material compensation elements in the offer letter or employment agreement; if a commitment is too early to document (e.g., equity terms not yet finalized), the letter should say "equity grant subject to a separate agreement to be negotiated within 30 days of start" — not just silence
- Separation agreement releases require genuine consideration — paying an employee money they were already owed (vacation pay; final paycheck; earned bonus) does not support a release of claims; the consideration for the release must be something additional — severance that the employee was not contractually entitled to is the most common consideration; if the company is paying an employee two weeks' severance as consideration for a release, the release is valid; if the company is calling the final paycheck "consideration" for a release, the release may be challenged; employment counsel should review any separation agreement for a Tier 1 or Tier 2 employee or any separation involving a claim
- ADEA is a hard-deadline federal law — any employee 40 years of age or older who is asked to sign a separation agreement releasing age discrimination claims must receive 21 days to consider the agreement; the company cannot shorten this period; the employee may sign earlier voluntarily, but the company cannot require faster signing; after signing, the employee has 7 days to revoke; the company cannot make the agreement effective (or pay the severance) until the 7-day revocation period expires; failure to follow ADEA requirements invalidates the age discrimination portion of the release; employment counsel must review all separation agreements for employees 40+
- HITL required: Dr. Lewis drafts and reviews; CEO approves and signs on behalf of the company; Matt Mathison approves: (a) executive offers ($75K-$150K = CEO + Dr. Lewis; >$150K = CEO + Dr. Lewis + Matt Mathison); (b) any separation agreement with severance >$50K; employment counsel reviews executive employment agreements and all separation agreements involving a claim or significant severance; Dr. Lewis does not sign employment agreements on behalf of the company — CEO signs

## System Dependencies
- **Reads from:** Job description and compensation plan (to confirm the offer matches what was approved); compensation benchmarking (fpa-compensation-benchmarker — external market data); state employment law tracker (legal-employment-law-tracker — state-specific requirements); non-compete enforceability by state (legal-non-compete-analyzer); equity grant terms (legal-equity-cap-table-manager — for profits interest or unit grant); ADEA requirements (for employees 40+); Matt Mathison compensation approval records (for offers above CEO authority)
- **Writes to:** Offer letter or employment agreement (SharePoint/Legal/<Company>/Employment/[Name]_OfferLetter_[Date].pdf); signed agreement (filed same location); separation agreement (if applicable); employment register update (HR records — employee hired with start date; terminated with end date); bonus plan documentation (Schedule A to the agreement); equity grant reference (cross-reference to grant agreement)
- **HITL Required:** Dr. Lewis drafts; CEO approves and signs; Matt Mathison approves executive offers and separations >$50K; employment counsel for executive agreements, any separation involving a claim, any ADEA-required release, or any non-compete dispute; Dr. Lewis does not sign employment agreements — CEO signs; Dr. Lewis does not authorize separation payments without CEO approval

## Test Cases
1. **Golden path:** Allevio hires a new VP Operations at $145K base, 20% target bonus, 2% profits interest → Dr. Lewis determines this is an executive-level hire requiring an employment agreement (not just an offer letter); confirms Matt Mathison approval (>$150K TCC with bonus: base $145K + 20% bonus = $174K TCC — CEO + Dr. Lewis approval; profits interest at 2% = Matt Mathison approval for equity issuance); employment counsel reviews the agreement; key terms: at-will employment; 12-month non-compete (AZ; within Maricopa County MSO market); confidentiality and IP assignment; 3-month base salary severance (termination without cause); cause defined; good reason defined; equity grant agreement (separate; 36-month vest; 12-month cliff); 83(b) election notice included; offer signed; equity grant agreement executed; profits interest added to cap table; all documentation filed; Matt Mathison notified of equity issuance
2. **Edge case:** HIVE terminates its COO without cause — she has a 6-month severance provision in her employment agreement; she is 47 years old → Dr. Lewis activates the separation process: (1) Employment counsel engaged immediately — COO is 40+, ADEA applies, separation agreement required; (2) Separation agreement drafted: 6 months base salary ($75K) as severance; COBRA subsidy for 6 months; standard release of all claims including age discrimination; ADEA-required language included; 21-day consideration period; 7-day revocation period; (3) Matt Mathison approves the severance amount ($75K > $50K threshold); (4) CEO delivers the separation agreement with the required 21-day notice; (5) COO signs after 15 days; (6) 7-day revocation period runs; (7) Severance payment initiated on day 8 post-signature (after revocation period expires); Dr. Lewis confirms COBRA election submitted to carrier; non-compete reminder letter sent; all documentation filed
3. **Adversarial:** Column6 wants to offer a new CTO a "guaranteed bonus" of $50K for the first year regardless of performance — the CEO says it was promised verbally → Dr. Lewis advises: "A guaranteed first-year bonus is fine as compensation strategy — it removes the uncertainty for a key hire whose joining is a significant career risk. However, it must be explicitly documented in the offer letter as 'guaranteed first-year bonus of $50,000, payable [on the one-year anniversary of your start date / in two installments at 6 and 12 months].' The verbal promise creates the obligation; the written offer letter makes it enforceable and eliminates any dispute about what was promised. If the CTO leaves before the bonus pays out, the offer letter should address what happens (typically: prorated if terminated without cause; forfeited if the employee resigns before the payment date). Draft the offer letter with the guaranteed bonus documented, the proration provision, and the conditions."

## Audit Log
All offer letters and employment agreements retained permanently by employee. All signed copies retained permanently. Separation agreements retained permanently. ADEA notice and revocation period records retained permanently. Compensation approval records retained (Matt Mathison approvals; CEO approvals). Bonus plan documentation retained by year. Equity grant references retained. Employment register (all employees, start and end dates) retained.

## Deprecation
Retire when each portfolio company has a dedicated HR function with employment counsel on retainer — with Dr. Lewis reviewing executive compensation terms and Matt Mathison approving executive hires and material separations.
