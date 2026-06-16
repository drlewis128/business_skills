---
name: it-vendor-evaluator
description: "Evaluate IT vendors — infrastructure, security, and application vendors. Use when the user says 'IT vendor evaluation', 'vendor assessment', 'evaluate vendor', 'vendor selection', 'RFP IT', 'IT vendor comparison', 'choose IT vendor', 'managed service provider', 'MSP evaluation', 'IT vendor scorecard', 'technology vendor', 'vendor due diligence', or 'evaluate IT provider'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--category <MSP|cloud|security|hardware|software>] [--vendors <vendor1,vendor2>] [--entity <company name>]"
---

# IT Vendor Evaluator

Evaluate IT vendors at MBL portfolio companies — scoring infrastructure vendors, security service providers, managed service providers (MSPs), hardware vendors, and technology partners against a consistent framework. Good vendor evaluation at portfolio scale is about separating "excellent demo" from "excellent vendor" and ensuring that the vendor's financial stability, security posture, and support model are consistent with the business requirements.

## When to Use
- Selecting a new IT vendor (MSP, cloud provider, security vendor, hardware)
- Evaluating whether to renew with a current vendor or switch
- A vendor is performing poorly — structured scorecard vs. contract terms
- Portfolio company acquisition — evaluating inherited IT vendors
- Annual vendor review for key IT relationships

## Vendor Evaluation Framework

```
Evaluation criteria (IT vendors):
  Technical fit (30%): Does the solution actually meet the technical requirements?
    → Demo is not enough; request a proof-of-concept or reference call with similar customer
    → For MSPs: What tools do they use? Remote monitoring? Ticketing? What are their NOC hours?
    
  Security posture (25%): Is the vendor's own security adequate to protect company data?
    → SOC 2 Type II (especially for cloud, SaaS, and MSPs with system access)
    → Data handling: Where is company data stored? Who can access it?
    → HIPAA BAA availability (Allevio — non-negotiable for PHI vendors)
    → Vendor's own security incident history
    
  Financial stability and longevity (20%): Will this vendor still exist in 3 years?
    → Years in business; customer count; funding / profitability
    → Privately held vs. PE-backed (PE-backed may be subject to acquisition or pivot)
    → References from customers of similar size and industry
    
  Support model and SLA (15%): When something breaks, how quickly is it fixed?
    → Defined SLAs for different severity levels
    → Support hours (business hours only vs. 24/7 vs. on-call)
    → Escalation path: Who is the escalation contact? How quickly?
    
  Commercial terms (10%): Contract flexibility and cost predictability
    → Contract length (1 year preferred; avoid multi-year unless significant discount)
    → Auto-renewal notice period (45+ days recommended)
    → Data portability / exit clause (especially for SaaS — how do you get your data out?)
    → Price lock or escalation cap (important for multi-year)
    
MSP-specific evaluation (if evaluating a Managed Service Provider):
  What services are included vs. extra?
  How many technicians are assigned to accounts our size?
  What is the tool stack? (RMM, PSA, security tools)
  What are the response time SLAs by incident priority?
  Do they have any healthcare clients? (Important for Allevio HIPAA requirements)
  Do they offer vCISO services or security advisory? (Complementary to Dr. Lewis's role)
```

## Output Format

```markdown
# IT Vendor Evaluation — <Vendor Category>
**Date:** [Date] | **Entity:** [Company]
**Vendors evaluated:** [Vendor 1, Vendor 2, Vendor 3]
**Evaluator:** Dr. John Lewis

---

## Evaluation Scorecard

| Criterion | Weight | [Vendor 1] | [Vendor 2] | [Vendor 3] |
|-----------|--------|-----------|-----------|-----------|
| Technical fit | 30% | [1-5] | [1-5] | [1-5] |
| Security posture | 25% | [1-5] | [1-5] | [1-5] |
| Financial stability | 20% | [1-5] | [1-5] | [1-5] |
| Support / SLA | 15% | [1-5] | [1-5] | [1-5] |
| Commercial terms | 10% | [1-5] | [1-5] | [1-5] |
| **Weighted score** | 100% | **[X/5]** | **[X/5]** | **[X/5]** |

---

## Vendor Profiles

### [Vendor 1]
| Attribute | Detail |
|-----------|--------|
| Founded | [Year] | Years in business: [N] |
| Customer count | [N] customers | Portfolio companies served |
| SOC 2 Type II | Yes / No | [Audit date] |
| HIPAA BAA | Available / Not available |
| Contract terms | [Length, auto-renewal, exit clause] |
| Pricing | $[X]/month or $[X]/user/month |
| References | [N provided; contacted N] |
| Key strength | [Summary] |
| Key weakness | [Summary] |

---

## Security Assessment per Vendor

| Vendor | SOC 2 Type II | HIPAA BAA | Data location | Incident history | Security score |
|--------|-------------|----------|------------|----------------|--------------|
| Vendor 1 | Yes — [Date] | Yes | US | None known | Strong |
| Vendor 2 | No | No | EU | [Incident in 2023] | Weak |
| Vendor 3 | In progress | Yes | US | None known | Acceptable |

---

## Reference Check Summary

| Vendor | References contacted | Key feedback |
|--------|---------------------|-------------|
| Vendor 1 | 2 of 3 | "Responsive; good for our size; healthcare experience helpful" |
| Vendor 2 | 1 of 3 | "Took 3 days to resolve a P1; billing disputes" |

---

## Recommendation

**Recommended vendor:** [Vendor X]
**Score:** [X/5]
**Rationale:** [2-3 sentences on why this vendor]
**Key concerns:** [What to monitor in the first 90 days]
**HIPAA BAA:** [Status for Allevio — must be signed before service start if PHI involved]
**Decision authority:** Dr. Lewis + [CEO / Matt Mathison based on contract value]
**Proposed contract terms:** [1-year / annual / specific terms to negotiate]

---

## Matt Mathison Brief (if contract >$25K/year or critical infrastructure decision)

[Category] vendor selected: [Vendor] at $[X]/year. Evaluated [N] vendors. Key differentiator: [Why this one]. Contract: [Terms]. HIPAA: [BAA status]. Decision requires Matt approval: [Yes/No].
```

## Output Contract
- References are called, not just provided — a vendor who provides 3 references has selected 3 customers who will speak well of them; Dr. Lewis calls 2 of the 3 and asks specific questions: "What was your worst incident with this vendor and how did they handle it? Would you sign with them again? What would you have known before signing?"; the reference call reveals what the demo and brochure do not
- HIPAA BAA is confirmed available before final evaluation at Allevio — a vendor who cannot provide a HIPAA BAA for a PHI service is eliminated regardless of score; this is confirmed at the beginning of the evaluation, not at contract signing; discovering a missing BAA after selecting a vendor wastes evaluation time and creates pressure to sign anyway
- Security posture is scored for vendors who access company systems — a vendor with system access but no SOC 2 Type II audit is a risk; Dr. Lewis requests the SOC 2 audit report and reviews it (specifically: the user entity controls section, which describes what the customer must do to maintain the security environment); for MSPs who have RMM access to all company endpoints, security posture is weighted higher
- HITL required: Dr. Lewis leads all IT vendor evaluations; vendor selection for contracts >$10K/year requires CEO; >$25K/year requires Matt Mathison; HIPAA BAA signed by Privacy Officer (Allevio) before PHI vendor goes live; final contract reviewed by Dr. Lewis; reference calls by Dr. Lewis

## System Dependencies
- **Reads from:** Vendor proposals, SOC 2 audit reports, vendor references (via phone call), ops-vendor-scorecard (for ongoing vendor performance), ops-vendor-onboarding (for vendor setup after selection)
- **Writes to:** Vendor evaluation report (SharePoint/Ops/<Company>/IT/Vendors/Evaluations/); vendor scorecard (for ongoing monitoring); contract terms documentation; BAA tracker (Allevio)
- **HITL Required:** Dr. Lewis leads evaluation; reference calls by Dr. Lewis; CEO for >$10K/year; Matt Mathison for >$25K/year; HIPAA BAA signed by Privacy Officer (Allevio)

## Test Cases
1. **Golden path:** Allevio evaluating 3 MSPs to provide on-site IT support at clinics → Criteria: healthcare experience (HIPAA), local technician availability, response time SLA, pricing; Vendor A: SOC 2 ✅, HIPAA BAA available ✅, 3 healthcare clients in Phoenix, 4-hour P1 SLA, $3,500/month — score 4.1/5; Vendor B: no SOC 2, no HIPAA experience — eliminated; Vendor C: SOC 2 ✅, HIPAA BAA ✅, 1 healthcare client, 8-hour P1 SLA, $2,800/month — score 3.3/5; References: Vendor A — called 2 of 3, both positive ("handled HIPAA training well; P1 response was 3.5 hours last incident"); Recommendation: Vendor A at $42K/year → CEO approval needed; HIPAA BAA signed before clinic access; Dr. Lewis retains security oversight and strategic IT
2. **Edge case:** The selected vendor's SOC 2 audit is 14 months old (expired — SOC 2 Type II covers a 12-month period; the current period's audit is not yet complete) → Request the bridge letter (vendor's attestation that no material changes to controls occurred since the last audit); also ask: when will the current-period audit be complete? If they cannot provide a bridge letter or a completion timeline, factor this into the security score and note it as a contract condition (current-period SOC 2 to be provided within 90 days of contract start)
3. **Adversarial:** The vendor's sales rep says "our customers never need the HIPAA BAA because we don't store PHI — we just support your systems" → MSPs with RMM access to all endpoints (which may have PHI on them) are Business Associates under HIPAA; an MSP with remote access to Allevio's clinical workstations can potentially see PHI on those machines; HIPAA requires a BAA with any Business Associate; a vendor who claims they are not a BA may simply be uninformed about HIPAA requirements (common) or may be trying to avoid the BAA obligation; either way, obtain the BAA or select a different vendor; this is non-negotiable

## Audit Log
Vendor evaluation reports retained by evaluation date. Reference call notes retained. SOC 2 audit reports retained. HIPAA BAA status retained (Allevio — permanent). Vendor selection decisions retained with rationale. Contract terms retained. Vendor performance tracking linked to ops-vendor-scorecard.

## Deprecation
Retire when portfolio companies have dedicated procurement and vendor management functions who lead IT vendor evaluations — with Dr. Lewis reviewing security posture assessments and signing off on PHI vendor BAAs at Allevio. HIPAA BAA requirement for PHI vendors is permanent regardless of procurement maturity.
