---
name: exec-technology-investment
description: "Evaluate and approve technology investments for MBL Partners and portfolio companies. Use when the user says 'technology investment', 'tech investment', 'evaluate the software', 'software decision', 'buy or build', 'technology decision', 'software evaluation', 'technology ROI', 'tech ROI', 'should we buy this software', 'evaluate this tool', 'new technology', 'new software', 'platform decision', 'SaaS decision', 'technology budget', 'tech spend', 'technology cost-benefit', 'technology recommendation', 'evaluate the vendor', 'vendor evaluation', 'replace the system', 'upgrade the system', 'technology assessment', 'digital transformation', 'tech stack decision', 'system selection', 'technology roadmap', 'IT investment', or 'technology approval'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--type <SaaS|infrastructure|AI|integration|hardware>] [--cost <annual>] [--action <evaluate|approve|reject|pilot>]"
---

# Exec Technology Investment

Evaluate and approve technology investments for MBL Partners and portfolio companies — ensuring every technology decision is grounded in measurable ROI, THRIVE-filtered, and sized appropriately relative to MBL's capital allocation thresholds. Technology investments fail most often not because the technology is wrong, but because the decision process was wrong: no clear ROI expectation, no integration assessment, no total cost calculation, and no HITL on the purchase authority. Dr. Lewis owns the technology investment evaluation and recommendation; Matt Mathison approves investments per the capital allocation thresholds.

## When to Use
- A portfolio company is evaluating a new software or platform investment
- A vendor proposes a technology solution
- A technology system needs to be replaced or upgraded
- An AI tool or integration is being considered (beyond exec-ai-strategy-director's roadmap)
- Matt Mathison asks "should we invest in X?" for any technology

## Technology Investment Framework

```
INVESTMENT EVALUATION PROCESS:

  STEP 1 — PROBLEM DEFINITION (before evaluating any technology):
    What specific problem is this technology solving?
    What happens if we don't solve it? (Status quo cost)
    Is this a technology problem, or is it a process problem that technology is being asked to solve?
    Rule: A broken process implemented in software is a broken process that's harder to fix.
    If the answer is "process problem first" → fix the process before buying the software.
    
  STEP 2 — ALTERNATIVES ASSESSMENT:
    Before evaluating a specific vendor:
    □ Build vs. Buy: Can Dr. Lewis or the MBL technology function build this? At what cost? Time?
    □ Existing system extension: Does an existing MBL or entity system (Microsoft 365; Krista;
      Monday.com; QuickBooks; GHL) have this capability that's not being used?
    □ 2-3 alternative vendors if buying
    
  STEP 3 — TOTAL COST OF OWNERSHIP (TCO):
    Year 1 cost: [License/subscription + implementation + training + integration labor]
    Ongoing annual cost: [License + support + estimated version upgrade]
    Hidden costs to assess: □ Data migration, □ API integration, □ Training time,
      □ Change management, □ Compliance review (HIPAA if Allevio; data privacy)
    
  STEP 4 — ROI CALCULATION:
    Time savings: [Hours saved per week × fully-loaded hourly cost × 52 = annual value]
    Error reduction: [Cost of current error rate × reduction % = annual value]
    Revenue enablement: [New revenue enabled / faster execution]
    Risk reduction: [Probability of risk × cost of risk occurrence × reduction % = annual value]
    Payback period: TCO Year 1 ÷ (annual value created) = months to payback
    Target: ≤18 months for operational investments; ≤24 months for strategic investments
    
  STEP 5 — INTEGRATION ASSESSMENT:
    Does this system need to connect to: Microsoft 365? Monday.com? QuickBooks? Krista.ai?
    What is the integration complexity? (API-native? Webhook? File-based? Manual?)
    Who owns the integration? (Dr. Lewis? Vendor? Third-party integrator?)
    Integration cost included in TCO?
    MBL principle: all systems must be API-accessible or they are not approved for MBL use.
    
  STEP 6 — COMPLIANCE AND SECURITY:
    Allevio: HIPAA BAA required for any system that touches clinical or member data
    HIVE: data privacy review for landowner contact and royalty data
    Column6: agency data handling review for client-specific campaign data
    All entities: SOC 2 Type II preferred; minimum SOC 2 Type I for new vendors
    Security review: is the vendor's security posture acceptable? Who is the data controller?
    
  STEP 7 — DECISION AND APPROVAL:
    Per exec-decision-framework capital allocation thresholds:
    <$10K/yr: Dr. Lewis decides independently
    $10K-$50K/yr: Dr. Lewis + entity CEO concurrence
    $50K-$250K/yr: Matt Mathison notification (proceed unless Matt objects within 24hr)
    >$250K/yr: Matt Mathison explicit approval required

ENTITY-SPECIFIC TECHNOLOGY CONTEXT:

  MBL (holding company):
    Core stack: Microsoft 365 (identity/comms/docs), Krista.ai (orchestration),
      Monday.com (project management), QuickBooks (finance), Bill.com (AP), GoHighLevel (CRM)
    Dr. Lewis additions: OpenFang agent OS; Claude API integrations; skill system
    New additions must integrate with or replace an existing tool — not add to fragmentation
    
  Allevio:
    Core stack: AdvancedMD (EMR/billing), Marshall Medical Billing (RCM)
    Technology priority: RCM optimization; HIPAA-compliant AI workflows; employer portal
    
  HIVE Partners:
    Core stack: Covercy (royalty management)
    Technology priority: landowner portal; Covercy API integrations; reporting automation
    
  Column6:
    Core stack: DSP (demand-side platform); reporting tools
    Technology priority: VCR optimization tools; agency reporting automation; data pipeline

BUY VS. BUILD DECISION MATRIX:

  BUILD (OpenFang / Dr. Lewis direct):
    □ The capability is highly MBL-specific (no vendor addresses it well)
    □ The capability is strategic (builds defensible competitive advantage)
    □ The integration complexity favors a custom build
    □ The recurring cost of buying is more than the build cost over 3 years
    
  BUY (vendor):
    □ The capability is commodity (many vendors do it well)
    □ Speed-to-value is critical (need it in weeks, not months)
    □ The vendor has compliance certifications that would take too long to build ourselves
    □ The ongoing maintenance burden is acceptable vs. build cost
```

## Output Format

```markdown
# Technology Investment Evaluation — [System Name] — [Entity] — [Date]
**Evaluated by:** Dr. Lewis | **Approval level:** [Dr. Lewis / Entity CEO / Matt Mathison]

---

## Summary Recommendation

**RECOMMEND:** [APPROVE / APPROVE WITH CONDITIONS / REJECT / PILOT FIRST]
**Reason:** [One sentence — why this recommendation]

---

## Problem Definition

**Problem being solved:** [Specific problem]
**Status quo cost:** [What we're paying or losing now by NOT solving this]
**Is this process-first?** [Is there a process fix needed before or instead of technology?]

---

## TCO and ROI

| Item | Year 1 | Annual | 3-Year |
|------|--------|--------|--------|
| License / subscription | $[X] | $[X] | $[X] |
| Implementation | $[X] | — | — |
| Integration labor | $[X] | $[X/yr] | $[X] |
| Training | $[X] | — | — |
| **Total Cost** | **$[X]** | **$[X]** | **$[X]** |

**Annual value created:** $[X] (basis: [time savings / error reduction / etc.])
**Payback period:** [N] months
**ROI at 3 years:** [N]%

---

## Integration Assessment

- Microsoft 365: [API-native / Webhook / Manual / N/A]
- Krista.ai compatibility: [Yes / No / Requires custom integration]
- Monday.com: [Yes / No / N/A]
- Data flow: [Describe what data moves where]

---

## Compliance and Security

| Check | Status |
|-------|--------|
| SOC 2 Type II | ✅ / ⚠️ Type I only / ❌ None |
| HIPAA BAA (if Allevio) | ✅ / ❌ / N/A |
| Data controller: vendor | [Yes / Shared / No] |

---

## Approval Required

**Threshold:** [< $10K / $10K-$50K / $50K-$250K / > $250K]
**Approver:** [Dr. Lewis / Entity CEO + Dr. Lewis / Matt Mathison notification / Matt Mathison explicit]
```

## Output Contract
- ROI calculation before every technology investment — no technology investment at any level proceeds without a documented ROI calculation; Dr. Lewis does not present "this will make us more efficient" without a number attached to "more efficient"; if the ROI can't be calculated (it's too speculative), that is stated explicitly and the investment case rests on strategic rationale instead — but strategic rationale investments above $50K require Matt Mathison explicit approval regardless of the capital allocation threshold
- Process first, technology second — before recommending any software purchase, Dr. Lewis explicitly evaluates whether a process fix would solve the problem without new technology; technology on top of a broken process creates technical debt; the evaluation always includes this question, and the answer is documented in the decision record
- API requirement for all new additions — any system that cannot expose an API is not approved for MBL use; this is a hard rule because MBL's operating model (Krista as the orchestration layer; Monday.com integration; exec-action-tracker push) depends on systems being connectable; a system that cannot be connected to the orchestration layer creates operational silos that grow over time
- HITL required: all technology investments above the Dr. Lewis independent threshold ($10K/yr) require additional concurrence per the capital allocation framework; Dr. Lewis submits the evaluation with a recommendation; the approving authority makes the decision; no software is purchased without the appropriate approval; recurring subscriptions are reviewed annually at the same threshold level (a subscription renewed at $15K/yr requires entity CEO concurrence even if the original purchase was sub-$10K)

## System Dependencies
- **Reads from:** exec-capital-allocation (capital available and decision thresholds); exec-ai-strategy-director (AI roadmap — technology investments should align with AI strategy); exec-value-creation-plan (VCP technology investments must advance value creation milestones); existing system inventory (Microsoft 365, Krista, Monday.com, QuickBooks, GHL, entity-specific stacks — Dr. Lewis maintains)
- **Writes to:** Technology investment decisions (SharePoint → ExecutiveSupport → TechnologyInvestments → [Entity] → [YYYY]); exec-action-tracker (implementation milestones as action items); exec-portfolio-operations (new technology additions noted in portfolio ops review); exec-capital-allocation (approved technology investments update capital deployment tracking)
- **HITL Required:** Investments above Dr. Lewis threshold ($10K/yr) require entity CEO concurrence; above $50K/yr require Matt Mathison notification (or explicit approval at $250K+); all HIPAA-adjacent Allevio technology requires compliance review before approval; API requirement is non-negotiable (Dr. Lewis enforces); annual subscription renewals reviewed at the same threshold level

## Test Cases
1. **Golden path:** Column6 CEO proposes a $24K/yr campaign analytics platform; Dr. Lewis evaluates: Problem (specific): campaign performance reporting takes 3 hrs/week manually → $24K/yr problem. TCO Year 1: $24K license + $6K integration = $30K. ROI: 3 hrs/week × $75/hr loaded × 52 = $11,700/yr saved + $12,000 estimated campaign optimization value = $23,700/yr. Payback: 15 months. API: native Zapier webhooks (compatible with Krista). SOC 2 Type II: yes. No HIPAA required. Approval threshold: $10K-$50K → Dr. Lewis + Column6 CEO concurrence. Both agree. Approved. Implementation tracked in exec-action-tracker.
2. **Edge case:** Allevio asks to purchase a clinical AI tool that accesses member records for care gap identification → Dr. Lewis: "This requires HIPAA compliance review before any evaluation proceeds. The vendor needs to provide: (1) a signed BAA, (2) their HIPAA technical safeguards documentation, (3) their data subprocessor list. Once those are confirmed, I'll complete the standard evaluation. Until then, this is paused. Additionally, this tool would be accessing PHI — which means I need to verify that the clinical team's HIPAA privacy officer has reviewed the use case and confirmed it's within the permitted uses under your existing Notice of Privacy Practices." Allevio CEO: "I'll get the compliance team involved. Give me 2 weeks."
3. **Adversarial:** An entity CEO makes a software purchase ($18K/yr SaaS) without going through Dr. Lewis's evaluation → Dr. Lewis: "I need to flag this. The $18K/yr purchase required entity CEO + Dr. Lewis concurrence, and I wasn't included in the decision. That's not an accusation — it may have been a process gap. But here's why the process exists: I need to evaluate API compatibility (so I know if it can integrate with our orchestration layer), compliance posture, and whether we already have this capability in an existing system. Can you send me the vendor's documentation? I'll do a retroactive evaluation. If it passes, great — we're done. If it doesn't, we may need to revisit the purchase decision." Entity CEO: "I didn't know the threshold applied to SaaS. Sending the docs now."

## Audit Log
All technology investment evaluations retained by entity and date. Approval records retained (approver; date; conditions). Rejected investments retained (why rejected; alternative suggested). Annual subscription renewal reviews retained. Compliance review records retained (HIPAA BAAs; SOC 2 certifications). ROI realization reviews (at 12 months post-implementation: did the projected ROI materialize?).

## Deprecation
Retire when MBL has a dedicated CTO or IT function who manages technology evaluation — with Dr. Lewis retaining the AI strategy and OpenFang/Krista integration inputs and Matt Mathison retaining the capital approval authority.
