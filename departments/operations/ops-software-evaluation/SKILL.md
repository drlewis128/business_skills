---
name: ops-software-evaluation
description: "Evaluate and select software tools for portfolio companies. Use when the user says 'evaluate software', 'software evaluation', 'which tool should we use', 'compare tools', 'software selection', 'pick a tool', 'tool evaluation', 'software comparison', 'evaluate a platform', 'which software', 'tool selection', 'tool comparison', 'software RFP', 'compare platforms', or 'which system should we buy'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--category <what type of software>] [--budget <estimated annual budget>]"
---

# Ops Software Evaluation

Evaluate and select software tools at MBL portfolio companies — using a structured framework to assess fit, cost, integration, security, and vendor stability before committing. Software selection decisions have long tails: a poor choice takes 12-18 months to replace and generates migration pain, switching costs, and team disruption along the way. The evaluation framework keeps the decision structured, reduces the influence of vendor demos, and ensures the selection can be justified objectively.

## When to Use
- A new software need has been identified (no current solution exists)
- An existing tool is being replaced (cost, fit, vendor issues)
- Multiple tools are being compared for the same function
- A department is recommending a tool and Dr. Lewis needs to validate the choice
- A clinical system at Allevio needs formal evaluation (compliance/security stakes are higher)

## Software Evaluation Framework

```
Evaluation stages:
  1. Define requirements (before looking at vendors)
  2. Market scan (who exists in this category?)
  3. Shortlist (2-4 vendors to evaluate seriously)
  4. Demo and hands-on trial
  5. Score against criteria
  6. Total cost of ownership analysis
  7. Security and compliance review
  8. Reference checks (>$10K annual)
  9. Decision and rationale

Requirements definition — the most important step:
  Functional: What must the tool do? (Must-have vs. nice-to-have)
  Integration: What must it connect to? (QuickBooks, Monday.com, AdvancedMD, M365)
  Users: How many? What roles? What technical sophistication?
  Scale: Where will the business be in 3 years? Will this tool grow with us?
  Compliance: Any regulatory requirements? (HIPAA at Allevio requires BAA; Covercy for HIVE)

Evaluation criteria weights:
  Functional fit: 30% — Does it do what we need? Missing critical features?
  Integration: 20% — How well does it connect to our existing systems?
  Total cost: 20% — All-in annual cost including implementation and training
  Vendor stability: 15% — Is this company going to exist in 3 years?
  Support quality: 10% — How responsive and effective is their support?
  Security/compliance: 5% — SOC 2, data handling, BAA availability (Allevio)
  
  Adjust weights for context:
    Healthcare/Allevio: Security/compliance → 15-20% (HIPAA stakes)
    Small team: Support quality → 15% (less internal IT expertise)
    Heavy integration use case: Integration → 30%

Vendor stability signals:
  Positive: >5 years old, profitable or well-funded, large customer base, active development
  Warning: Venture-backed with recent funding round (acquisition risk), thin support staff
  Red flag: Recent layoffs, poor Glassdoor ratings, pending acquisition rumors, support response >48 hours
```

## Output Format

```markdown
# Software Evaluation — <Category/Function>
**Company:** <Entity> | **Use case:** [What business problem this solves]
**Evaluator:** Dr. John Lewis | **Date:** [Date]
**Budget:** $[X]/year | **Decision needed by:** [Date]

---

## Requirements

**Must-have features:**
1. [Specific required feature]
2. [Specific required feature]
3. [Specific required feature]

**Nice-to-have features:**
- [Feature that would add value but isn't required]
- [Feature]

**Integration requirements:**
- Must integrate with: [List — e.g., QuickBooks, M365, AdvancedMD]
- Integration method: [Native connector / Zapier / API / Manual export-import acceptable]

**Compliance requirements:**
- [ ] HIPAA BAA required (Allevio)
- [ ] SOC 2 Type II required
- [ ] Other: [specific requirement]

**Eliminating factors (any of these = automatic disqualification):**
- [No QuickBooks integration]
- [No BAA available (Allevio)]
- [Pricing above $[X]/year at required user count]

---

## Vendor Shortlist

| Vendor | In market since | Funding status | Price (annual) | Trial available |
|--------|---------------|---------------|--------------|----------------|
| [Vendor A] | [Year] | [Bootstrap / VC-funded / Public] | $[X] | Yes / No |
| [Vendor B] | | | | |
| [Vendor C] | | | | |
| [Vendor D] | | | | |

---

## Evaluation Scorecard

| Criterion | Weight | Vendor A | Vendor B | Vendor C |
|-----------|--------|----------|----------|----------|
| Functional fit (1-5) | 30% | [X] | [X] | [X] |
| Integration (1-5) | 20% | [X] | [X] | [X] |
| Total cost (1-5) | 20% | [X] | [X] | [X] |
| Vendor stability (1-5) | 15% | [X] | [X] | [X] |
| Support quality (1-5) | 10% | [X] | [X] | [X] |
| Security/compliance (1-5) | 5% | [X] | [X] | [X] |
| **Weighted score** | 100% | **[X.X]** | **[X.X]** | **[X.X]** |

### Score Justification

**Vendor A — [Name]**
- Functional: [What it does well, what it misses]
- Integration: [Native QuickBooks connector ✅ / No AdvancedMD integration 🔴]
- Cost: $[X]/year for [N users] — [vs. market: competitive / above / below]
- Vendor stability: [Founded 2018, $12M Series B, 400 customers, active G2 reviews]
- Support: [4-hour response SLA in Business tier; 24-hour for Standard]
- Security: [SOC 2 Type II ✅; BAA available ✅]

**Vendor B — [Name]**
[Same structure]

---

## Total Cost of Ownership

| Cost component | Vendor A | Vendor B | Vendor C |
|---------------|---------|---------|---------|
| Annual license | $[X] | $[X] | $[X] |
| Implementation/setup | $[X] | $[X] | $[X] |
| Training | $[X] | $[X] | $[X] |
| Migration from current tool | $[X] | $[X] | $[X] |
| Integration development | $[X] | $[X] | $[X] |
| **Year 1 total cost** | **$[X]** | **$[X]** | **$[X]** |
| **Ongoing annual cost** | **$[X]** | **$[X]** | **$[X]** |

---

## Reference Checks (>$10K annual)

**Vendor selected for references:** [Vendor]
**Reference 1:** [Company — same industry if possible]
**Reference 2:** [Company]

Key findings:
- [Implementation experience: easy / painful — specific]
- [Support quality: responsive / slow — specific example]
- [Would they buy again: Yes / No — why]
- [Biggest surprise (good or bad)]

---

## Recommendation

**Selected vendor:** [Name] | **Score:** [X.X/5.0]
**Annual cost:** $[X] (ongoing) | **Year 1 total cost:** $[X]
**Selection rationale:** [Why Vendor [X] won — specific, not "best overall"; what trade-offs were accepted]
**Implementation plan:** [High-level — kick off [Date]; go-live target [Date]; Dr. Lewis oversees]
**Disqualified vendors:** [Vendor and reason for each]

**Approval required:** Dr. Lewis ($5K-$24,999) / Matt Mathison ($25K+)

---

## Matt Mathison Brief (if >$25K or strategic system)

[Category] software selection at [Company] complete. Selected [Vendor] at $[X]/year after evaluating [N] options. [One sentence on why this vendor won]. [Implementation begins [Date]].
```

## Output Contract
- Requirements come before vendor demos — demo fatigue is real; vendors show their strengths during a demo and minimize their weaknesses; requirements defined in advance protect against "that feature was impressive — let's add it to the requirements"; the evaluation scores each vendor against pre-defined requirements, not against each other's features; if a vendor demo reveals a feature that should be a requirement, add it explicitly and re-score all vendors against it
- Total cost of ownership includes Year 1 one-time costs — a tool with a $5K annual license but a $15K implementation and $5K migration cost is a $25K Year 1 investment; the comparison is not just annual license price; the TCO model normalizes this so the cost comparison is fair
- Security review is non-negotiable for clinical systems — at Allevio, any system that touches or stores PHI requires a BAA and SOC 2 Type II verification before selection; this is not a nice-to-have; tools that cannot provide a BAA are automatically disqualified regardless of functional fit or price
- HITL required: Dr. Lewis conducts evaluation; CEO approves selection; Matt Mathison approves purchases ≥$25K; reference checks conducted by Dr. Lewis for purchases >$10K; BAA review for Allevio clinical systems before contract signature; implementation plan reviewed by Dr. Lewis before kickoff

## System Dependencies
- **Reads from:** Requirements from stakeholders, vendor pricing pages and proposals, G2/Capterra reviews, integration documentation, security certifications, reference contacts from vendor
- **Writes to:** Evaluation report (SharePoint/Ops/<Company>/IT/SoftwareEvaluations/); procurement request (ops-procurement-manager); implementation plan; vendor setup in Bill.com/QB after selection
- **HITL Required:** Dr. Lewis evaluates; CEO approves; Matt Mathison for ≥$25K; BAA for Allevio clinical systems; reference checks for >$10K; implementation kickoff requires Dr. Lewis

## Test Cases
1. **Golden path:** Allevio evaluating an HR/payroll system ($8K/year) → Requirements: HIPAA BAA not required (HR data, not PHI); must integrate with QuickBooks; must handle AZ + CO multi-state payroll; budget <$15K/year; shortlist: Gusto, Rippling, Paychex; evaluation scores: Gusto 3.9, Rippling 4.2, Paychex 3.4; Rippling wins on integration breadth (M365, QuickBooks native) and functionality; Year 1 cost: $9,600 license + $2,000 migration = $11,600; references: 2 healthcare MSOs confirmed good experience with multi-state; selected: Rippling; Dr. Lewis approves ($8K — under $25K threshold); implementation plan: kick off within 2 weeks; go-live by next payroll run
2. **Edge case:** The CEO has a strong preference for a specific vendor before the evaluation starts → Run the evaluation anyway; the CEO's preference might be right — the evaluation will confirm it; if it's not right, the scorecard provides the factual basis for the conversation; respond: "Let's include [vendor] in the evaluation and score it against the same criteria as the alternatives. If it comes out on top, we have documentation of a rigorous process. If something beats it, we have a conversation to have."
3. **Adversarial:** A vendor is pressuring for a decision before the evaluation is complete ("limited-time pricing") → "Limited time" is a sales tactic; pricing doesn't disappear; if the pricing truly does expire, the appropriate response is: "We appreciate the offer. We will complete our evaluation and make a decision by [specific date — within 2 weeks]. If the pricing has changed by then, let's discuss. We won't rush our process for a discount."

## Audit Log
All evaluations retained by category, company, and date. Vendor scores and rationale retained. Reference check notes retained. Selection decisions with approval documentation retained. Disqualification rationale retained.

## Deprecation
Retire when portfolio companies have IT managers or technology directors who own software evaluation processes, using a pre-defined evaluation framework, and bring recommendations to Dr. Lewis for review rather than having Dr. Lewis conduct the full evaluation.
