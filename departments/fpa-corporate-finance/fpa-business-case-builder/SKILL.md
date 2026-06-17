---
name: fpa-business-case-builder
description: "Build financial business cases for investment and initiative decisions. Use when the user says 'business case', 'build a business case', 'make the financial case', 'ROI analysis', 'investment justification', 'financial justification', 'cost-benefit analysis', 'is this worth it', 'justify the investment', 'make the case for', 'should we do this', 'financial rationale', 'decision support analysis', 'investment analysis', 'initiative ROI', 'project justification', 'approval package', 'financial approval', 'case for investment', or 'build the case'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--initiative <name>] [--investment <$>] [--entity <company name>] [--deadline <date>] [--action <build|review|present>]"
---

# Business Case Builder

Build financial business cases for investment and initiative decisions at MBL portfolio companies — providing the CEO and Matt Mathison with the structured financial analysis needed to make a confident yes/no decision. A business case is the financial proof that an initiative creates more value than it costs. Dr. Lewis builds business cases for any initiative requiring approval above the CEO's self-authorization threshold, including capital investments, technology purchases, new service lines, and strategic initiatives. Every business case answers three questions: What does it cost? What does it return? What happens if we're wrong?

## When to Use
- Any capital investment >$25K (Matt Mathison approval required)
- A new service line or market expansion (Allevio adding a specialty; Column6 adding a new format)
- Technology platform purchase or upgrade (ERP evaluation, billing system change, ad server upgrade)
- A significant headcount addition above the approved plan
- Strategic initiative with a multi-year financial commitment
- Matt Mathison asks "what's the business case for this?"

## Business Case Framework

```
Business case components:

  1. EXECUTIVE SUMMARY (1 page maximum):
     Decision required: Approve / Decline / Defer
     Investment amount: $[X]K
     Expected return: IRR [X]%, MOIC [X.X]×, payback [N] months
     Bear case outcome: If assumptions are wrong, the downside is [description]
     Recommendation: [Approve / Decline / Defer] — one sentence rationale
     Deadline for decision: [Date]
     
  2. PROBLEM / OPPORTUNITY STATEMENT:
     What problem is being solved or opportunity being captured?
     What is the cost of NOT doing this?
       Cost of inaction for a problem: If not fixed, what happens? (revenue loss, compliance risk, operational failure)
       Cost of inaction for an opportunity: Market share, competitive positioning, revenue opportunity cost
     Is this discretionary or required (compliance, safety)?
     
  3. PROPOSED SOLUTION:
     What specifically is being proposed?
     Why this solution vs. alternatives?
     Implementation timeline: Major milestones and go-live date
     Assumptions: What must be true for this to work?
     
  4. FINANCIAL ANALYSIS:
     Investment cost (one-time and ongoing):
       One-time: CapEx, licensing, implementation, recruiting
       Ongoing: Annual SaaS fees, additional headcount, maintenance
     
     Return calculation (varies by initiative type):
       Revenue-generating: New revenue × gross margin; LTV of new customers; pricing power improvement
       Cost-reduction: Annual savings quantified; productivity hours recaptured × labor rate
       Compliance/risk-reduction: Expected value of avoided fines/losses × probability
       
     Payback period: Total investment ÷ Annual net benefit
     IRR: XIRR(cash flows, dates) — using conservative estimates
     Bear case: What if the benefit is only 50% of what we project? Is the investment still justified?
     
  5. ALTERNATIVES CONSIDERED:
     Option A: Do nothing (status quo cost)
     Option B: Minimum viable solution (smaller investment, smaller return)
     Option C: Proposed solution (this business case)
     Option D: Premium solution (larger investment, larger return — if applicable)
     Recommendation: Why Option C vs. the alternatives?
     
  6. RISKS AND MITIGATIONS:
     Risk 1: [Description] — Probability [Low/Med/High] — Mitigation [Action]
     Risk 2: [Description] — Probability [Low/Med/High] — Mitigation [Action]
     Risk 3: [Description] — Probability [Low/Med/High] — Mitigation [Action]
     Kill criteria: At what point should we stop the initiative and cut our losses?
     
  7. IMPLEMENTATION PLAN:
     Phase 1: [Description] — [Timeline] — [Owner] — [Cost]
     Phase 2: [Description] — [Timeline] — [Owner] — [Cost]
     Success metrics: How will we know if this worked?
     Review point: When will we evaluate whether to continue (for multi-phase investments)?
     
  8. APPROVAL REQUIREMENTS:
     Per the approval matrix:
     <$5K: CEO
     $5K-$25K: CEO + Dr. Lewis
     >$25K: CEO + Dr. Lewis + Matt Mathison
     Contracts >$10K annual: CEO + Dr. Lewis; >$50K: + Matt Mathison
     Recommendation: Route to [approvers] for decision by [date]
```

## Output Format

```markdown
# Business Case — [Initiative Name]
**Entity:** [Company] | **Investment:** $[X]K | **Decision needed by:** [Date]
**Prepared by:** Dr. Lewis | **Approval required:** [CEO / CEO + Dr. Lewis / CEO + Dr. Lewis + Matt Mathison]

---

## Recommendation

**APPROVE / DECLINE / DEFER** — [One sentence rationale]

**Bottom line:** [Investment $X]: ROI [X]% / payback [N] months / Bear case: [acceptable / concern]. [One sentence on what this enables.]

---

## Investment Summary

| Component | One-Time | Annual Ongoing | Year 1 Total |
|-----------|---------|----------------|-------------|
| [Software license] | — | $[X]K | $[X]K |
| [Implementation cost] | $[X]K | — | $[X]K |
| [Additional headcount] | $[X]K recruiting | $[X]K salary | $[X]K |
| **Total** | **$[X]K** | **$[X]K** | **$[X]K** |

---

## Return Analysis

| Metric | Conservative | Base | Optimistic |
|--------|-------------|------|-----------|
| Annual benefit | $[X]K | $[X]K | $[X]K |
| Payback period | [N] months | [N] months | [N] months |
| 3-year IRR | [X]% | [X]% | [X]% |
| 3-year NPV | $[X]K | $[X]K | $[X]K |

**Benefit breakdown:** [Revenue generated: $X / Cost saved: $X / Risk avoided: $X]

---

## Cost of Inaction

Not proceeding results in:
- [Revenue opportunity: $[X]K per year foregone]
- [Compliance risk: $[X]K potential fine if audit finds the gap]
- [Operational cost: Current workaround costs [N] hours/week at $[X]/hour = $[X]K/year]

---

## Alternatives Considered

| Option | Investment | Annual Benefit | Payback | Recommendation |
|--------|-----------|---------------|---------|---------------|
| Do nothing | $0 | $0 | — | ❌ (cost of inaction) |
| Minimum solution | $[X]K | $[X]K | [N] mo | ⚠️ (suboptimal return) |
| **Proposed** | **$[X]K** | **$[X]K** | **[N] mo** | **✅ Recommended** |
| Premium | $[X]K | $[X]K | [N] mo | ⚠️ (diminishing return) |

---

## Top Risks

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| [Benefit not achieved] | Medium | −$[X]K benefit | [Milestone review at 6 months; kill criteria: <50% of benefit at Month 6] |
| [Implementation delay] | Low | [N] months extended payback | [Fixed-price vendor contract; penalty clause] |
| [Adoption failure] | Low-Med | [full benefit at risk] | [Training plan; executive sponsorship; success metrics in Q2 review] |

**Kill criteria:** If [specific metric] is not achieved by [Date], discontinue and exit the investment.
```

## Output Contract
- Lead with the recommendation — Matt Mathison and the CEO do not need to read 10 pages to get to the recommendation; the business case leads with "APPROVE / DECLINE / DEFER" and the one-sentence rationale; the rest of the document supports the recommendation; a business case that buries the recommendation at the end (forcing the reader to read the whole document to find out what you're recommending) is structured for the analyst who wrote it, not the executive who needs to decide; Dr. Lewis leads with the recommendation always
- The cost of inaction is as important as the investment cost — every business case must quantify what happens if the decision is "no"; a compliance gap has an expected value of avoiding a fine; a revenue initiative has an opportunity cost if not pursued; a technology upgrade has a current operational cost (manual workarounds); the cost of inaction frames the decision correctly — it is not "do we spend $45K?" but "is the $45K investment better than the cost of inaction ($85K of foregone efficiency)?"
- Kill criteria are mandatory — every business case includes a specific, measurable kill criterion: the point at which management should stop the initiative and cut losses; without a kill criterion, failed initiatives continue indefinitely because there is never a clear moment to stop; the kill criterion is set before the investment is approved, not after the problems emerge; a well-designed kill criterion prevents throwing good money after bad
- HITL required: Dr. Lewis builds the business case; CEO reviews for operational accuracy (does the benefit estimate reflect reality?); Matt Mathison approves per the approval matrix; for initiatives >$25K, Dr. Lewis delivers the business case to Matt Mathison with a cover brief; Matt Mathison decides; no commitment (vendor contract, headcount offer) before approval received; post-decision, Dr. Lewis tracks actual vs. projected benefit and presents at the kill criterion review date

## System Dependencies
- **Reads from:** QuickBooks (current cost structure for cost-of-inaction calculation); fpa-capex-prioritization-model (for CapEx classification and thresholds); approval matrix (fin-ops-approval-matrix-manager); fpa-scenario-planner (Bear/Base/Bull for the return analysis); fpa-headcount-cost-modeler (for headcount-related business cases); market research (for revenue opportunity estimates); vendor quotes (for cost estimates)
- **Writes to:** Business case document (SharePoint/Finance/<Company>/BusinessCases/[Initiative]_[Date].pdf); Matt Mathison decision brief; approval record (after decision); post-implementation review calendar (set at approval); initiative budget line in the rolling forecast (after approval)
- **HITL Required:** Dr. Lewis builds; CEO validates operational assumptions; Matt Mathison approves >$25K; no commitment before approval; post-approval: kill criterion review at the specified date; any scope change after approval requires a revised business case and re-approval

## Test Cases
1. **Golden path:** Allevio wants to launch a telehealth platform for remote primary care visits ($28K implementation + $8K/year license) → Dr. Lewis builds the business case: Problem: Current patients must travel to the clinic; 15% of members have requested telehealth; Proposed solution: Licensed telehealth platform (Spruce Health, $8K/year); Investment: $12K implementation + $8K/year = $20K Year 1; Return: 15 additional visits/week × $65 average reimbursement × 60% margin = $2,730/week = $141,960/year net; Payback: $20K ÷ $141,960 = 1.7 months; IRR 3-year: 620% (non-standard ROI — very fast payback CapEx); Bear case (5 visits/week): $47K/year net; payback 5 months — still highly favorable; Cost of inaction: ~15% member satisfaction gap; competitors already offering telehealth; alternatives: do-nothing (lose members), premium EMR-integrated platform ($45K — overkill at this scale); Recommendation: APPROVE; Dr. Lewis routes to CEO for approval ($28K — below Matt Mathison threshold but just under); CEO approves; implementation begins
2. **Edge case:** The Column6 CEO wants to build a proprietary ad server ($350K development cost) instead of using a third-party platform ($40K/year) → Dr. Lewis builds the business case for both options: Option A (build): $350K investment; annual savings vs. $40K license = $40K/year; payback 8.75 years; IRR 7% over 10 years; Bear case (project delivered 6 months late, 30% over budget): payback 12 years; Option B (license): $40K/year ongoing; no implementation risk; flexibility to switch; Dr. Lewis recommendation: "Building a proprietary ad server does not meet our 15% IRR threshold even in the Base case. The $350K would generate a 25% IRR invested in growth campaigns or account managers. Recommend: license Option B; revisit a build decision when annual platform costs exceed $200K (implying Column6 revenue is $20M+, at which point in-house development makes economic sense)." Matt Mathison receives the analysis; concurs with the licensing recommendation
3. **Adversarial:** CEO presents a business case for a new initiative with the payback calculation using the gross revenue of the initiative (not the net margin) → Dr. Lewis catches the error: "The payback calculation in the draft uses $240K of gross revenue — but the direct cost of delivering this service is $180K, leaving $60K of contribution margin. The payback should be calculated on the $60K net contribution, not the $240K gross revenue: $120K investment ÷ $60K/year = 24-month payback. That's still within our threshold, but the IRR drops from 42% (as presented) to 18%. I recommend we use the corrected numbers — Matt Mathison will catch this when he reviews the gross vs. net, and presenting the gross figure as the basis will reduce confidence in the analysis." CEO agrees; business case revised; presented to Matt Mathison with the correct 18% IRR

## Audit Log
All business cases retained by initiative and date. Approval records retained (CEO, Dr. Lewis, Matt Mathison approvals). Kill criterion review dates documented. Post-implementation benefit tracking (actual vs. projected at 6 months and 12 months). Any declined or deferred decisions documented with reason and re-evaluation trigger.

## Deprecation
Retire when each portfolio company has a CFO who builds business cases for major initiatives — with Dr. Lewis reviewing all cases before Matt Mathison and approving per the approval matrix.
