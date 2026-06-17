---
name: fpa-tech-stack-evaluator
description: "Evaluate FP&A technology tools and financial systems for portfolio companies. Use when the user says 'FP&A tool', 'financial system evaluation', 'evaluate software', 'accounting software', 'FP&A software', 'budgeting tool', 'forecasting software', 'should we upgrade QuickBooks', 'do we need an ERP', 'financial planning software', 'FP&A platform', 'financial reporting tool', 'should we use this software', 'software evaluation', 'finance tech stack', 'financial technology', 'tech stack review', 'systems evaluation', 'upgrade our financial systems', or 'tools assessment'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--tool <tool-name>] [--entity <company name>] [--purpose <budgeting|reporting|erp|accounting>] [--action <evaluate|recommend|select>]"
---

# FP&A Tech Stack Evaluator

Evaluate financial technology tools and systems for MBL portfolio companies — assessing whether a proposed system upgrade or new tool justifies the cost, complexity, and implementation risk, and providing a clear recommendation for Matt Mathison and the CEO. Financial technology decisions have a long tail: the wrong system can create years of reporting problems and migration pain; the right system can dramatically reduce the FP&A effort and improve reporting quality. Dr. Lewis evaluates each tool against the current financial complexity of the portfolio company and recommends only what is actually needed at the current stage.

## When to Use
- A CEO or CFO proposes a financial system upgrade or new tool
- The current financial stack (QuickBooks, Excel) is causing meaningful pain
- Pre-exit — should the company upgrade to a more sophisticated system before the sale process?
- A new portfolio company acquisition — evaluate their current financial systems
- Matt Mathison asks whether the finance function is adequately tooled

## Tech Stack Evaluation Framework

```
CURRENT MBL PORTFOLIO FINANCIAL STACK:

  System of record for accounting:
    QuickBooks Online (QBO): The authoritative system of record for all portfolio companies
    Accrual basis; GAAP-compliant; adequate for companies up to ~$10-15M revenue
    Connected to: Bill.com (AP workflow); bank feeds (reconciliation); payroll integrations
    Dr. Lewis's position: QBO is the right system for all 3 portfolio companies at current scale
    
  Financial planning and analysis:
    Excel / Google Sheets: Primary FP&A tool (models, forecasts, sensitivity tables)
    Adequate for Dr. Lewis's current analytical workload across 3 portfolio companies
    Risk: Version control, collaboration, formula errors
    Alternative: FP&A platforms (Adaptive Insights, Anaplan, Cube, Mosaic) — not justified at current scale
    
  AP management:
    Bill.com: Connected to QBO; workflow for invoice approval and payment
    Covers all portfolio companies
    
  Banking and payments:
    Primary bank: CEO and Dr. Lewis manage; wires require dual authorization
    
  Reporting:
    QBO reports; custom Excel dashboards; board package built in Excel/PowerPoint
    
WHEN TO UPGRADE (trigger conditions):

  From QBO to a mid-market ERP (NetSuite, Sage Intacct):
    Revenue >$15-20M at any portfolio company
    Multi-entity consolidation needed (multiple legal entities requiring GAAP consolidation)
    Inventory management required (not applicable to current portfolio)
    Complex revenue recognition automation required
    Full-time accounting team >3 people (ERP makes more sense at that scale)
    Current portfolio: Not needed — all three companies are sub-$5M revenue
    
  From Excel to FP&A platform (Adaptive Insights, Anaplan, Cube, Mosaic):
    Multiple users need collaborative access to the financial model simultaneously
    Budget process involves >5 department heads with separate input workflows
    Reporting needs to go to >10 stakeholders who need self-service access
    Current portfolio: Not needed — Dr. Lewis is the sole FP&A practitioner; Excel is sufficient
    
  Specialized tools to consider:
    Healthcare billing platform (Allevio): If billing complexity grows beyond Marshall Medical's capacity
    O&G production management software (HIVE): Covercy handles this adequately at current scale
    Programmatic reporting tool (Column6): Ad server already provides impression data; custom analytics only if scale grows
    
EVALUATION SCORECARD (for any proposed tool):

  Dimension 1 — Need (0-25 points):
    Is there a clear, documented pain point the tool addresses? (0-10)
    How often does the current limitation cause a problem? (0-5)
    Is the pain point growing with the company? (0-5)
    What is the cost of NOT having the tool? (0-5)
    
  Dimension 2 — ROI (0-25 points):
    Time savings: How many hours/month will this save Dr. Lewis or the team? (0-10)
    Error reduction: Does it eliminate manual errors that have cost the company? (0-5)
    Decision quality: Does better reporting improve the speed or quality of business decisions? (0-5)
    Exit value: Does this make the business more attractive to buyers? (0-5)
    
  Dimension 3 — Cost (0-25 points):
    Upfront cost: Implementation + licensing (lower = better score) (0-10)
    Ongoing cost: Annual SaaS, maintenance, support (lower = better) (0-10)
    Payback period: Years to recover the investment (shorter = better) (0-5)
    
  Dimension 4 — Implementation Risk (0-25 points):
    Migration complexity: How hard is it to get off the current system? (lower risk = higher score) (0-10)
    Data integrity risk: Could migration corrupt historical data? (lower risk = higher score) (0-5)
    Training burden: How long to train the team? (lower = better) (0-5)
    Disruption: Implementation while running the business (lower = better) (0-5)
    
  Scoring:
    80-100 points: Strong case for adoption
    60-79 points: Conditional — solve the key risk first, then adopt
    40-59 points: Weak case — keep the current system, address pain with process improvements
    <40 points: Do not adopt — pain is insufficient to justify the cost and risk
```

## Output Format

```markdown
# FP&A Tech Stack Evaluation — [Tool Name]
**Entity:** [All / Specific] | **Purpose:** [What problem this solves] | **Date:** [Date]
**Prepared by:** Dr. Lewis | **Decision required from:** [CEO / CEO + Matt Mathison]

---

## Evaluation Score

| Dimension | Weight | Score | Weighted |
|-----------|--------|-------|---------|
| Need (pain point) | 25 | [X]/25 | [X] |
| ROI (value delivered) | 25 | [X]/25 | [X] |
| Cost (total investment) | 25 | [X]/25 | [X] |
| Implementation risk | 25 | [X]/25 | [X] |
| **Total** | **100** | | **[X]/100** |

**Grade:** [Strong / Conditional / Weak / Do not adopt]

---

## Summary

**Tool:** [Name] | **Category:** [Accounting / FP&A / AP / Reporting]
**Annual cost:** $[X]K | **Implementation:** $[X]K one-time | **Payback:** [N] months

**Problem it solves:** [Description of the pain point in 1-2 sentences]
**Why current state is inadequate:** [What QBO/Excel can't do that this tool can]
**Key risk:** [What could go wrong with adoption]

---

## Recommendation

**[ADOPT / CONDITIONAL / DO NOT ADOPT]** — [One sentence rationale]

**Proposed alternatives considered:**
- [Alternative 1]: [Why not recommended]
- [Current state (do nothing)]: [What this costs — time, errors, limitations]

**If ADOPT: next steps:**
1. [Vendor demo / trial period]
2. [Build the business case (fpa-business-case-builder)]
3. [Get CEO + Matt Mathison approval before any contract is signed]
```

## Output Contract
- Current stack is adequate until it demonstrably isn't — the bias is toward the current stack; QBO + Excel + Bill.com is a well-understood, low-cost, low-risk stack that is adequate for all three portfolio companies at their current scale; a new tool is justified when the current stack is causing documented, recurring problems that have a quantifiable business cost; a tool that would "be nice to have" or that the CEO learned about at a conference is not a justified adoption — it competes for implementation bandwidth and budget against actual priorities; Dr. Lewis recommends adoption only when the pain is real and the ROI is clear
- Pre-exit upgrades require careful cost-benefit analysis — upgrading to NetSuite 18 months before an exit might make the data room more impressive to buyers, but if the implementation disrupts the close process, creates data migration errors in the historical financials, or absorbs Dr. Lewis's time during the exit preparation period, the cost can exceed the benefit; Dr. Lewis evaluates pre-exit system upgrades against the specific question "does this make the business more valuable to buyers by more than the disruption cost?" — sometimes the answer is yes; often the answer is "clean up the QBO data and improve the Excel-based reporting instead"
- Portfolio compatibility matters — if Allevio adopts a new billing platform that Column6 cannot use, Dr. Lewis has created a fragmented tech stack that requires different training, different support, and different integration work for each company; where possible, Dr. Lewis recommends tools that can be used across multiple portfolio companies (same QBO template, same Bill.com workflow, same reporting structure); portfolio consistency reduces Dr. Lewis's training burden and makes the portfolio easier to manage as a system
- HITL required: Dr. Lewis evaluates and recommends; CEO decides on tools below $10K annual cost + $25K implementation; Matt Mathison approves for tools above those thresholds (per the CapEx approval matrix); no vendor contract is signed without the appropriate approval; Dr. Lewis does not have a financial relationship with any vendor — recommendations are based solely on fit and value for the portfolio company

## System Dependencies
- **Reads from:** Current systems (QBO, Bill.com, Excel) — for pain point documentation; current team capacity and FTE count (to evaluate whether automation saves meaningful time); fpa-business-case-builder (for tools above $25K — a formal business case is required); Matt Mathison's approval matrix (fpa-capex-prioritization-model — for classification of the tech spend as CapEx or OpEx); vendor pricing and implementation estimates; reference calls with current users of the tool (CEO requests these; Dr. Lewis uses the intel)
- **Writes to:** Tech stack evaluation report (SharePoint/Finance/MBL/TechStack/[Date]_[Tool]_Evaluation.pdf); fpa-business-case-builder input (if the tool passes the evaluation, a business case is built using this skill); vendor contract review memo (for any contract >$10K annual that proceeds to signature); portfolio technology map (master list of all tools deployed across all portfolio companies)
- **HITL Required:** Dr. Lewis evaluates; CEO approves adoption for tools <$10K annual / <$25K implementation; Matt Mathison approves tools above those thresholds; no contracts signed without appropriate approval; Dr. Lewis reviews all vendor contracts before signature for terms that could create business risk (auto-renewal clauses, data portability provisions, exit fees); legal review for contracts >$50K annual

## Test Cases
1. **Golden path:** Allevio CEO asks if they should adopt Kareo (a practice management / billing platform, ~$18K/year) to replace the Excel-based scheduling and reduce Marshall Medical Billing dependency → Dr. Lewis evaluates: Need (18/25): billing integration pain is real; manual scheduling is creating double-bookings; significant pain but it's manageable with current setup; ROI (15/25): 5 hours/month admin time saved = $3.6K/year; reduces billing errors (estimated $8K/year savings); but Marshall Medical integration would need to be rebuilt; total ROI ~$11.6K/year vs. $18K cost = negative immediate ROI; Implementation risk (8/25): EHR migrations have high data integrity risk; would disrupt the schedule for 30-60 days during transition; Scoring: Need 18, ROI 15, Cost 14 (negative ROI), Implementation Risk 8 = 55/100 — weak case; Recommendation: "DO NOT ADOPT at this time. The ROI doesn't justify the cost and the implementation risk is significant. Recommend: (1) fix the scheduling process with a lightweight scheduling add-on to the current system ($1,200/year), (2) quarterly billing audit with Marshall Medical to reduce errors. Revisit Kareo when Allevio reaches $2M revenue and has an in-house billing coordinator."
2. **Edge case:** Column6 grows to 70+ active campaigns and Excel-based campaign tracking is causing missed invoices (two campaigns invoiced to the wrong advertiser in the past 6 months) → Dr. Lewis evaluates: Need (24/25): demonstrated errors causing revenue loss and advertiser relationship risk; pain is acute and growing; ROI (20/25): two mis-invoiced campaigns = $28K in revenue at risk/year; campaign management platform eliminates this class of error; time savings: 8 hours/month in reconciliation = $9.6K/year at Dr. Lewis's effective rate; Implementation risk (18/25): migration of existing campaigns is manageable; low data complexity vs. an ERP; Total cost: $7,200/year for a purpose-built campaign management tool; Scoring: 82/100 — Strong; Recommendation: "ADOPT. The mis-invoicing errors alone justify the $7,200 annual cost. Build the business case for the CEO — payback in 6 months from error reduction alone. This is a <$10K annual tool; CEO can approve." Business case built; CEO approves; implemented within 60 days
3. **Adversarial:** The Column6 CEO wants to adopt Salesforce CRM ($45K/year) to "manage advertiser relationships" — framing it as a finance tool since it will track campaign revenue → Dr. Lewis evaluates and declines the finance framing: "Salesforce is a CRM, not a finance tool, and the $45K/year cost is well above what Column6's revenue ($2.35M) can support for a CRM at this stage. The finance function doesn't need Salesforce — QuickBooks tracks the revenue fine. If the argument is that sales pipeline management is creating business problems, that's a valid question, but it's a sales tool evaluation, not an FP&A tool evaluation. A CRM at $45K/year for a $2.35M business is 1.9% of revenue — that's an aggressive sales infrastructure investment. If you want to evaluate it as a sales investment, I'll build the business case with the projected pipeline improvement and revenue lift it would enable. The approval would still require Matt Mathison at $45K/year." Dr. Lewis redirects the evaluation correctly; it becomes a sales infrastructure business case, not a finance tool adoption

## Audit Log
All tool evaluations retained by tool and date. Adoption decisions and rejections documented with rationale. Vendor contracts and renewal dates retained. Annual portfolio technology map reviewed and updated. Post-adoption review: did the tool deliver the expected ROI? (12-month post-adoption review)

## Deprecation
Retire when each portfolio company has a CFO or VP Finance who evaluates and manages the financial technology stack — with Dr. Lewis consulting on portfolio-wide technology consistency and Matt Mathison approving all technology investments above threshold.
