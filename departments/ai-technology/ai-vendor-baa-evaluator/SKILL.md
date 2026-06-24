---
name: ai-vendor-baa-evaluator
description: "Evaluate and manage Business Associate Agreements for MBL AI vendors. Use when the user says 'BAA', 'business associate agreement', 'BAA review', 'BAA evaluation', 'does this vendor have a BAA', 'HIPAA BAA', 'BAA for Allevio', 'BAA for AI vendor', 'AI vendor BAA', 'BAA negotiation', 'BAA terms', 'BAA signing', 'BAA execution', 'execute a BAA', 'sign a BAA', 'BAA checklist', 'BAA requirements', 'BAA compliance', 'BAA audit', 'BAA registry', 'BAA tracking', 'vendor HIPAA compliance', 'HIPAA vendor', 'covered entity BAA', 'business associate', 'HIPAA business associate', 'BAA template', 'BAA redline', 'BAA model language', 'BAA permitted uses', 'BAA data deletion', 'BAA breach notification', 'BAA model training', 'BAA subcontractor', 'BAA chain', 'BAA chain of trust', or 'downstream BAA'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--vendor <name>] [--entity allevio] [--action <evaluate|review|negotiate|execute|audit>]"
---

# AI Vendor BAA Evaluator

Evaluate, negotiate, and manage Business Associate Agreements for MBL AI vendors — assessing BAA quality against HIPAA requirements, identifying problematic terms (model training on PHI; missing breach notification; inadequate deletion requirements), and maintaining the BAA registry for Allevio's AI stack. A BAA is not just a form — it is a legal contract that determines whether an AI vendor can legally receive Allevio's protected health information.

## When to Use
- Evaluating a new AI vendor for Allevio use
- Reviewing a BAA template from a vendor before signing
- Annual BAA audit for all Allevio AI vendors
- When a vendor relationship changes (new use case; contract renewal; termination)

## BAA Evaluation Framework

```
BAA LEGAL REQUIREMENTS (45 CFR § 164.504(e)):
  The BAA must include:
  1. PERMITTED USES: what the vendor can do with Allevio's PHI
     → Acceptable: performance of services; management and administration; de-identified research
     → Unacceptable: using PHI to train AI models (unless explicit consent from covered entity)
     → Red flag: vague language like "to improve our services" — model training prohibition must be explicit
     
  2. SAFEGUARDS: vendor must implement HIPAA Security Rule safeguards (technical; physical; administrative)
     → SOC 2 Type II is strong evidence of technical and administrative controls
     → ISO 27001 is an alternative
     → No security certification → requires direct security questionnaire
     
  3. BREACH NOTIFICATION: vendor must notify Allevio within 60 days of discovering a breach
     → Many vendor templates say "promptly" without a timeline — push for <60 days (HIPAA standard)
     → Best practice: 24-hour notification for known breaches; 72-hour for suspected
     
  4. DATA DELETION: upon termination, vendor must return or destroy all PHI
     → "Will delete within 30 days of contract termination" — acceptable
     → "Retains data per our standard retention policy" — not acceptable without Allevio consent
     → Confirm deletion certificate requirement
     
  5. SUBCONTRACTORS: vendor must obtain BAAs from any subcontractors who handle PHI
     → Ask: do any subcontractors have access to Allevio data? (Common for AI vendors using cloud infrastructure)
     → Cloud providers (AWS; Azure; GCP) must be covered by the vendor's subcontractor BAA chain
     
  6. AUDIT RIGHTS: Allevio's right to audit vendor's HIPAA compliance
     → Preferred: explicit audit rights clause
     → Acceptable: right to request compliance documentation upon reasonable notice
     
COMMON AI VENDOR BAA RED FLAGS:
  "Use data to improve our products" → may mean model training on PHI → REQUIRE explicit prohibition
  No model training prohibition → negotiate addition before signing
  No breach notification timeline → push for <60 days minimum
  "Standard pricing plans do not include a BAA" → means PHI cannot be processed on that tier
  BAA only available on enterprise tier → note cost difference; budget accordingly
  
APPROVED AI VENDORS WITH BAA (Allevio):
  Anthropic (Claude API): HIPAA-eligible tier; BAA available; no training on customer data
  Krista.ai: BAA executed; AI orchestration for MBL; Allevio workflows covered
  Microsoft 365: M365 BAA covers Allevio communications and SharePoint
  Status: always verify current BAA status at each annual review
  
BAA REGISTRY MAINTENANCE:
  All active BAAs: vendor name; coverage scope; execution date; expiry/renewal; signatory
  Annual review: verify BAA still covers current use cases; confirm vendor hasn't changed terms
  Renewal: 60 days before expiry → initiate renewal; do not allow gap in BAA coverage
  Termination: upon vendor contract end → confirm data deletion; obtain deletion certificate
```

## Output Format

```markdown
# BAA Evaluation — [Vendor Name]
**Entity:** Allevio | **Evaluated by:** Dr. Lewis | **Date:** [Date]
**Vendor HIPAA tier:** [Standard (no BAA) / Business (BAA available) / Enterprise (BAA)]

---

## BAA Quality Assessment

| Requirement | Status | Finding |
|-------------|--------|---------|
| Permitted uses — no model training | ✅/❌ | [Explicit prohibition ✅ / Vague "improve services" ❌] |
| Security safeguards | ✅/❌ | [SOC 2 Type II ✅ / No cert ❌] |
| Breach notification (<60 days) | ✅/❌ | ["Promptly" — too vague ❌ / "<60 days" ✅] |
| Data deletion on termination | ✅/❌ | ["30 days" ✅ / "Standard retention" ❌] |
| Subcontractor BAA chain | ✅/❌ | [Covered ✅ / Not addressed ❌] |
| Audit rights | ✅/❌ | |

---

## Red Flags
- [Model training prohibition missing — must negotiate]
- [Breach notification says "promptly" — negotiate <60 days]

## Recommendation
**[EXECUTE AS-IS / NEGOTIATE THEN EXECUTE / DO NOT USE FOR ALLEVIO]**
[Required changes before signing: list]

## Signing Authority
- Vendor: [Signatory] | Allevio (covered entity): [Allevio entity CEO — not Dr. Lewis]
```

## Output Contract
- Dr. Lewis evaluates BAAs but does not sign them on behalf of Allevio — the BAA is a contract between the AI vendor (business associate) and Allevio (covered entity); as the covered entity, Allevio's authorized representative signs; that is the Allevio entity CEO, not Dr. Lewis; Dr. Lewis reviews, negotiates, and recommends; Dr. Lewis is the technical HIPAA expert in this process, not the legal signatory; if the Allevio entity CEO is not available to sign a time-sensitive BAA, the correct escalation is to determine who has authorized signing authority at Allevio — it is not for Dr. Lewis to sign on the entity's behalf
- "HIPAA compliant" marketing claims require verification against the BAA — many AI vendors claim to be "HIPAA compliant" or "HIPAA ready" in marketing; these claims refer to the vendor's internal security practices, not their willingness to sign a BAA or their pricing tier eligibility; Dr. Lewis evaluates the actual BAA document (or requests it from the vendor) — not marketing materials; a vendor can have excellent security practices and not offer a BAA on standard pricing tiers; the BAA is what makes the relationship legally defensible for Allevio, not the vendor's security posture alone
- HITL required: BAA evaluation → Dr. Lewis completes; negotiation → Dr. Lewis leads; entity CEO reviews key terms; BAA signing → Allevio entity CEO (not Dr. Lewis); legal counsel review recommended for any non-standard BAA terms; BAA registry update → Dr. Lewis maintains; annual review → Dr. Lewis prepares; entity CEO reviews for awareness; vendor termination data deletion → Dr. Lewis requests certificate; entity CEO notified

## System Dependencies
- **Reads from:** Vendor BAA documents; vendor SOC 2 Type II reports; vendor HIPAA documentation; 45 CFR § 164.504(e) (BAA regulatory requirements); HHS OCR guidance on BAAs; current BAA registry (SharePoint → Allevio → Compliance → BAA Register)
- **Writes to:** BAA evaluation reports (SharePoint → Allevio → Compliance → BAA → [Vendor] → Evaluation); BAA registry updates; negotiation notes and redlines; deletion certificates; annual review records; Matt Mathison notification if new significant vendor BAA is executed
- **HITL Required:** BAA evaluation → Dr. Lewis; negotiation → Dr. Lewis leads + entity CEO reviews key terms; signing → Allevio entity CEO only; non-standard terms → legal counsel review; registry update → Dr. Lewis; annual review → entity CEO reviews; termination deletion → Dr. Lewis requests certificate; Matt Mathison → notified for significant vendor changes

## Test Cases
1. **Golden path:** New AI scheduling tool evaluated for Allevio. Vendor claims "HIPAA compliant." Dr. Lewis requests BAA. Vendor sends enterprise tier BAA. Dr. Lewis reviews: Permitted uses — "provide services and improve vendor product experience" — RED FLAG (possible model training). Dr. Lewis requests clarification. Vendor confirms: "improving product experience does not include training on customer PHI — we will add explicit prohibition." Breach notification: "within 30 days" ✅ (better than 60-day minimum). Data deletion: "within 30 days of termination" ✅. Subcontractor chain: "AWS processes data; AWS BAA in place" ✅. Audit rights: "upon reasonable request" ✅. After explicit model training prohibition added: BAA acceptable. Entity CEO reviews key terms. Entity CEO and vendor sign. BAA registry updated. Vendor approved for Allevio use.
2. **Edge case:** Vendor offers a BAA only on their $800/month enterprise tier; the feature Allevio needs is available on the $200/month standard tier → Dr. Lewis: "The BAA is required — no BAA means no Allevio data in the platform. The business decision is: is the $600/month additional cost worth the capability? I'll include this in the AI ROI analysis: enterprise tier cost = $9,600/year; BAA is non-negotiable for HIPAA compliance; the standard tier without BAA is not an option for Allevio. If the capability delivers $12K+/year in value, the enterprise tier is worth it. If it delivers less, we look for an alternative vendor that offers BAA at a lower cost tier or provides a different capability path." Cost-benefit analysis frames the decision; compliance gate doesn't move.
3. **Adversarial:** Vendor claims their BAA covers Allevio automatically because "we have a standard BAA with all customers" → Dr. Lewis: "A 'standard BAA with all customers' that customers haven't signed doesn't create a valid BAA — it's a unilateral vendor document that may not meet HIPAA requirements and hasn't been agreed to by Allevio as the covered entity. For a BAA to be valid: (1) Both parties must sign it; (2) It must be specific to the relationship (not just a generic terms of service addendum); (3) It must include all the required terms under 45 CFR § 164.504(e). I need the vendor's BAA template, and Allevio's entity CEO needs to sign it. A vendor claim of 'automatic BAA' does not create legal protection for Allevio."

## Audit Log
BAA registry (all active and expired BAAs; vendor; execution date; expiry; scope; signatory; SharePoint → Allevio → Compliance → BAA Register). BAA evaluation reports. Negotiation records (redlines; correspondence). Deletion certificates (vendor terminations). Annual review records. Legal counsel engagement records. Non-standard term records. Matt Mathison notifications (significant vendor changes).

## Deprecation
BAA evaluation criteria reviewed when HHS issues new BAA guidance. Required terms updated when regulatory requirements change. Approved vendor list reviewed at each annual audit. Registry maintained continuously. Model training prohibition requirement reviewed as AI regulatory landscape evolves.
