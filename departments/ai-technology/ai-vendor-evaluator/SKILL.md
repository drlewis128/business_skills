---
name: ai-vendor-evaluator
description: "Evaluate AI vendors and tools for MBL Partners and portfolio companies. Use when the user says 'AI vendor', 'evaluate this AI tool', 'AI tool evaluation', 'should we use this AI', 'AI vendor assessment', 'AI vendor comparison', 'AI vendor selection', 'AI software evaluation', 'AI platform evaluation', 'vendor security assessment', 'AI vendor security', 'AI vendor BAA', 'does this AI vendor have a BAA', 'AI vendor HIPAA', 'AI vendor compliance', 'AI vendor contract', 'AI vendor pricing', 'AI vendor capabilities', 'AI vendor review', 'Krista evaluation', 'Claude evaluation', 'AI tool comparison', 'AI software comparison', 'which AI tool should we use', 'AI tool selection', 'ChatGPT vs. Claude', 'compare AI tools', 'AI tool recommendation', 'AI vendor due diligence', 'third-party AI risk', 'AI SaaS vendor', 'evaluate AI subscription', 'AI tool budget', 'AI vendor shortlist', or 'select an AI vendor'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--vendor <name>] [--use-case <name>] [--entity <mbl|allevio|hive|column6>] [--action <evaluate|compare|select|contract>]"
---

# AI Vendor Evaluator

Evaluate AI vendors and tools for MBL Partners and portfolio companies — assessing capabilities, security posture, data handling, contractual protections, HIPAA compliance readiness, and integration fit against MBL's stack (Microsoft 365; Krista.ai; QuickBooks; Monday.com; GoHighLevel) to produce a vendor selection recommendation.

## When to Use
- Before subscribing to or deploying any AI tool at MBL or a portfolio company
- Comparing multiple AI vendor options for the same use case
- Reviewing an existing vendor contract at renewal
- Allevio AI tool evaluation (HIPAA BAA assessment required)

## AI Vendor Evaluation Framework

```
EVALUATION DIMENSIONS (rated 1-5 each):

  1. CAPABILITY FIT (25% weight):
     Does this vendor solve the specific use case better than alternatives?
     Can it integrate with MBL's stack (MS365; Krista; QB; Monday.com)?
     Is the output quality verified by testing, not just demos?
     Score 5: Best-in-class for use case; native integration with MBL stack; tested
     Score 1: Marginal capability; no integration path; not tested
     
  2. SECURITY AND DATA HANDLING (25% weight):
     How does the vendor handle MBL data?
       Does input data train the vendor's models? (Opt-out or no training = required)
       Where is data stored? (US-only preferred for healthcare data)
       SOC 2 Type II certification? (Required for any financial or HR data access)
       Encryption in transit and at rest? (Required)
     Score 5: SOC 2 Type II; no model training on customer data; US data residency; end-to-end encryption
     Score 1: No SOC 2; data used for model training; unclear data residency
     
  3. HIPAA COMPLIANCE READINESS (for Allevio use cases — weight increased to 30% for Allevio):
     Does the vendor offer a Business Associate Agreement (BAA)?
     BAA quality check: does it cover the specific data types Allevio would share?
     Is the vendor in Anthropic's / relevant platform's HIPAA-eligible tier?
     Score 5: Executes BAA; enterprise HIPAA tier; documented security controls
     Score 1: No BAA offered; not HIPAA-compliant; cannot be used for Allevio
     Note: For non-Allevio use cases, replace this dimension with "Vendor Stability / Business Risk"
     
  4. INTEGRATION COMPLEXITY (15% weight):
     API availability and quality
     Pre-built integrations with MBL stack (Krista.ai; MS365; Monday.com; QuickBooks)
     Time and cost to integrate — Dr. Lewis estimates
     Score 5: Pre-built integrations; full API; Dr. Lewis can integrate in <1 week
     Score 1: No API; manual workflow only; 3+ months to integrate
     
  5. COST AND ROI (15% weight):
     Monthly/annual cost vs. MBL AI ROI framework (target: 100% ROI Year 1)
     Pricing model fit (per seat; usage-based; flat; enterprise)
     Contractual flexibility (month-to-month; annual; cancellation terms)
     Score 5: Clear ROI positive; flexible pricing; no long-term lock-in
     Score 1: Cost exceeds projected ROI; locked into multi-year contract

SCORING INTERPRETATION:
  22-25: Strong recommendation — proceed to contract review
  17-21: Conditional — resolve gaps before signing
  <17: Do not deploy — gaps are too significant for MBL's requirements
  
MBL INCUMBENT VENDORS (already approved):
  Claude / Anthropic: enterprise tier; no training on customer data; BAA available (HIPAA eligible tier)
  Krista.ai: primary orchestration partner; BAA in place; integration tested
  Microsoft 365 / Copilot: MS enterprise agreement in place; HIPAA-eligible via M365 BAA
  Any new vendor must be evaluated against this framework before deployment
  
VENDOR CONTRACT REQUIREMENTS:
  Data processing agreement (DPA) required for all vendors handling MBL data
  BAA required for any vendor with Allevio data access (no exceptions)
  Model training opt-out: required; must be documented in contract
  Data deletion on termination: required; SLA for deletion documented
  Security incident notification: <72 hours required; BAA mandates this for HIPAA
  Audit rights: preferred; required for financial and healthcare data vendors
```

## Output Format

```markdown
# AI Vendor Evaluation — [Vendor Name]
**Use Case:** [Specific use case] | **Entity:** [Entity] | **Evaluated by:** Dr. Lewis | **Date:** [Date]

---

## Vendor Overview
**Vendor:** [Name] | **Product:** [Product] | **Pricing:** [Model + monthly cost]
**Proposed use:** [1 sentence]

---

## Evaluation Scores

| Dimension | Score (1-5) | Finding |
|-----------|------------|---------|
| Capability fit | X | [Tested; integration path: X] |
| Security / data handling | X | [SOC 2: ✅/❌; training opt-out: ✅/❌] |
| HIPAA readiness | X | [BAA: ✅/❌/N/A] |
| Integration complexity | X | [API: ✅/❌; est. integration: X weeks] |
| Cost / ROI | X | [$X/month; projected ROI: X%] |
| **Total** | **X/25** | |

---

## Recommendation
**[APPROVED / CONDITIONAL / DO NOT DEPLOY]**
[2-sentence rationale]

## Contract Requirements Before Signing
- [ ] DPA executed
- [ ] BAA executed (if Allevio)
- [ ] Model training opt-out confirmed in writing
- [ ] Data deletion on termination SLA documented
```

## Output Contract
- Vendor evaluation ends with a tested recommendation, not a demo-based recommendation — vendor demos are designed to show best-case performance; Dr. Lewis tests any AI vendor against actual MBL use case inputs before completing the evaluation; for a meeting summarization tool, Dr. Lewis runs an actual meeting transcript through the tool and evaluates the output quality; a vendor that demos well but performs poorly on real MBL inputs gets a lower capability score; the evaluation score reflects tested performance, not marketing claims
- HIPAA BAA is a hard gate for any Allevio use case — a vendor without a BAA cannot be deployed at Allevio regardless of capability score or cost; this is not negotiable; if a vendor's pricing tier includes a BAA (many enterprise tiers do) but the standard tier doesn't, the evaluation notes this: "HIPAA-eligible on Enterprise plan at $X/month; not eligible on Standard plan"; Dr. Lewis does not sign a BAA on behalf of Allevio — the BAA is between the vendor and Allevio (the covered entity); the entity CEO signs; Dr. Lewis facilitates
- HITL required: evaluation → Dr. Lewis completes; Matt Mathison approves budget-significant vendors (new subscription >$500/month); Allevio vendor → entity CEO reviews BAA before signing; contract signing → entity CEO or Matt Mathison per authorization matrix; vendor discontinuation → Dr. Lewis proposes; Matt Mathison approves; security incident → Dr. Lewis + entity CEO + Matt Mathison immediate

## System Dependencies
- **Reads from:** Vendor websites; SOC 2 reports (requested from vendor); vendor BAA (Allevio); DPA documents; integration documentation (APIs; webhooks); MBL stack documentation (CLAUDE.md systems map); pricing sheets; reference customer contacts (if available)
- **Writes to:** Vendor evaluation reports (SharePoint → MBL → AI Strategy → Vendor Evaluations → [Vendor Name]); approved vendor registry (SharePoint → MBL → AI Strategy → Approved Vendors); contract requirements checklists; Matt Mathison vendor briefings
- **HITL Required:** Budget-significant approval → Matt Mathison; Allevio BAA → entity CEO signs; contract signing → entity CEO or Matt Mathison; security incident → immediate escalation; vendor discontinuation → Matt Mathison approves

## Test Cases
1. **Golden path:** New AI meeting note-taking tool pitched to Dr. Lewis — "Otter.ai for MBL meetings." Evaluation: Capability fit: 3 (transcription only; no workflow automation; no integration with Krista.ai; Monday.com; SharePoint). Security: 3 (SOC 2 Type II ✅; training opt-out: ✅ in enterprise tier; data residency: US ✅). HIPAA: 2 (BAA available in Business plan at $X/month; but Krista.ai already handles transcription with BAA — redundant). Integration: 2 (API available; but would require Dr. Lewis to build integration; estimated 3 weeks; overlaps with Krista.ai). Cost: 2 ($40/month per seat × 5 = $200/month; ROI unclear given Krista.ai already covers this). Total: 12/25. Recommendation: DO NOT DEPLOY — Krista.ai already covers transcription + workflow; Otter.ai adds cost without capability improvement; revisit if Krista.ai transcription quality degrades.
2. **Edge case:** Allevio entity CEO has already signed up for a "free" AI tool that "just helps with scheduling" → Dr. Lewis: "Before we continue using this tool at Allevio, I need to evaluate it — specifically: (1) Does it have access to patient scheduling data (which is PHI)? (2) Does it offer a BAA? Most 'free' AI tools do not offer enterprise BAAs, and scheduling data that includes patient names + appointment times is PHI. If this tool processes any PHI without a BAA, we have a reportable HIPAA violation. I'll evaluate within 24 hours. In the meantime, please do not input any patient data into the tool until we have cleared this." Evaluation completed within 24 hours; tool found to be free-tier only with no BAA → discontinued; HIPAA counsel notified; breach assessment completed.
3. **Adversarial:** A vendor sales rep goes directly to Matt Mathison with an AI tool pitch ("revolutionary AI for PE portfolio management") and Matt asks Dr. Lewis to "just get it set up" without a formal evaluation → Dr. Lewis: "Matt — I'll get this evaluated and can have a recommendation within 3 business days. A few things I need to check before setup: (1) How does this vendor handle MBL financial data — do they train their models on it? (2) What's the SOC 2 status? (3) Is there integration with our stack or is this a standalone tool? These are 30-minute checks that prevent a security or integration problem down the road. I've been burned by 'just set it up' requests with vendors whose data terms turned out to be problematic. I'll move fast. Can you ask the vendor to send me the DPA and any SOC 2 report while I evaluate the capability side?"

## Audit Log
Vendor evaluations (all vendors; including rejected; SharePoint). Approved vendor registry. Contract execution records (DPA; BAA; dates; signatories). Vendor security incident records. Vendor discontinuation records. Matt Mathison approval records (budget-significant vendors). Allevio entity CEO BAA acknowledgment records.

## Deprecation
Evaluation framework reviewed annually as AI vendor market evolves. HIPAA compliance requirements reviewed when regulations change. Security standards updated when MBL's compliance posture changes. Approved vendor registry reviewed quarterly. Vendor contracts reviewed at renewal.
