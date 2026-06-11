---
name: security-vendor-evaluator
description: "Evaluate and select security tools and vendors. Use when the user says 'evaluate a security tool', 'security vendor selection', 'compare security products', 'which SIEM should we use', 'security tool comparison', 'evaluate an EDR', 'which security vendor', 'security RFP', or 'comparing security platforms'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<tool-category> [--entity <name>] [--mode <evaluate|compare|select>] [--budget <N>]"
---

# Security Vendor Evaluator

Evaluate and select security tools and vendors. Security vendors make big promises. Evaluating them rigorously — against your actual environment, team capacity, and budget — separates the tools that will be used from the ones that collect dust. For MBL portfolio companies built on Microsoft 365 and Azure, the evaluation always starts with "can Microsoft's native tooling do this?" before buying a third-party product.

## When to Use
- Selecting a new security tool (EDR, SIEM, DLP, password manager, etc.)
- Comparing vendors before a procurement decision
- Annual security tool review — are we getting value from current tools?
- Post-incident — evaluating whether a new tool would have detected or prevented the incident
- Before contract renewal — is there a better option?

## Evaluation Framework

```
1. Define the requirement (what problem are we solving?)
2. Microsoft-first check (can M365/Azure native tooling meet the need?)
3. Identify 2-4 candidate vendors
4. Score against criteria (capability, integration, cost, support, compliance)
5. Proof of concept (PoC) for top 1-2 candidates
6. Make recommendation with rationale
```

## Microsoft-First Decision Tree

| Need | Microsoft Native Option | Meets Need? |
|------|----------------------|------------|
| EDR | Microsoft Defender for Endpoint | ✅ Yes — included in E3/E5 |
| SIEM | Microsoft Sentinel | ✅ Yes — best for M365-heavy environments |
| DLP | Microsoft Purview | ✅ Yes — native M365 integration |
| Identity protection | Entra ID Protection | ✅ Yes — included in P2 |
| Vulnerability scanning | Microsoft Defender for Cloud | 🟡 Partial — good for Azure; limited for endpoints |
| Security awareness training | Microsoft Defender for Office (simulations) | 🟡 Partial — basic; KnowBe4 is better |
| Password manager | Microsoft Authenticator | 🟡 Limited — no team vaults |
| CASB | Microsoft Defender for Cloud Apps | ✅ Yes — included in E5 |

## Output Format

```markdown
# Security Vendor Evaluation — <Tool Category>
**Date:** <date> | **Entity:** <name>
**Requirement:** <what problem are we solving?>
**Budget:** $<N>/year | **Evaluator:** Dr. John Lewis

---

## Requirement Definition

**Business need:** <Why are we evaluating this? What risk/gap does it address?>
**Current state:** <What is the entity currently using? Why is it insufficient?>
**Success criteria:** <What does "this tool works" look like in 6 months?>
**Constraints:** <Must integrate with M365 / Must be under $X / Must support HIPAA>

---

## Microsoft Native Option Assessment

| Capability | Microsoft Option | Included In | Assessment |
|-----------|---------------|------------|-----------|
| <Need> | <M365 tool> | <License> | ✅ Sufficient / 🟡 Partial / ❌ Insufficient |

**Microsoft native verdict:** ✅ Use it (no additional cost) / 🟡 Use it with caveats / ❌ Evaluate third-party

---

## Vendor Comparison

| Criterion | Weight | Vendor A | Vendor B | Vendor C |
|---------|--------|---------|---------|---------|
| **Capability match to our requirements** | 30% | 4 | 3 | 3 |
| **M365 / Azure integration quality** | 20% | 5 | 3 | 2 |
| **Ease of use for our team size/skill** | 15% | 4 | 4 | 3 |
| **Total cost of ownership (3-year)** | 15% | 3 | 4 | 5 |
| **Vendor security posture (SOC 2)** | 10% | 5 | 4 | 3 |
| **Support quality / SLA** | 10% | 4 | 3 | 3 |

**Weighted score (1-5):**
- Vendor A: 4.2 ← Recommended
- Vendor B: 3.5
- Vendor C: 3.0

---

## SIEM Evaluation Example (Sentinel vs. Splunk vs. SumoLogic)

| Criterion | Microsoft Sentinel | Splunk | SumoLogic |
|---------|-----------------|--------|---------|
| M365 native integration | ✅ Native — all connectors free | 🟡 Connector ($$$) | 🟡 Limited |
| Cost model | Pay-per-GB ingested | Per GB + license | Per GB |
| M365 data ingestion cost | ✅ Free (M365 logs free in Sentinel) | 🔴 Charged per GB | 🔴 Charged |
| AI/ML anomaly detection | ✅ Copilot for Security | ✅ Good | 🟡 Basic |
| Team skill curve | Low (M365 admins already know it) | High | Medium |
| 3-year TCO (MBL scale) | ~$18K/year | ~$60K/year | ~$35K/year |
| HIPAA compliance | ✅ BAA available | ✅ BAA available | ✅ BAA available |

**Verdict:** Microsoft Sentinel — lowest TCO, native M365 integration, M365 data free, and team already knows the Microsoft interface.

---

## Security Awareness Training Evaluation (KnowBe4 vs. Proofpoint vs. MS Defender)

| Criterion | KnowBe4 | Proofpoint Security Awareness | Microsoft Defender (simulations) |
|---------|---------|------------------------------|-------------------------------|
| Phishing simulation templates | ✅ 10,000+ templates | ✅ Good library | 🟡 Limited |
| Training content quality | ✅ Excellent, engaging | ✅ Good | 🟡 Basic |
| Reporting / dashboard | ✅ Excellent | ✅ Good | 🟡 Basic |
| M365 integration | ✅ API | ✅ API | ✅ Native |
| Cost per user | ~$25/user/year | ~$30/user/year | Included in M365 E5 |
| HIPAA compliance | ✅ | ✅ | ✅ |

**Verdict:** KnowBe4 for most entities — best content and simulations at reasonable cost. Use Microsoft if already on E5 and budget is tight.

---

## Proof of Concept Plan (if required)

**PoC scope:** <What specifically will we test?>
**Duration:** 30 days
**Success criteria:** <Measurable outcomes>
**Resources required:** IT Engineer (8 hours setup + 4 hours/week monitoring)

---

## Recommendation

**Selected vendor:** <Vendor A>
**Rationale:** <2-3 sentences on why this vendor wins>
**Total cost:** $<N>/year
**Implementation timeline:** <N weeks>
**Next step:** Pilot with IT team; Dr. Lewis approval before contract signing
```

## Output Contract
- Microsoft-first always evaluated before any third-party — avoids paying for what's already licensed
- Total cost of ownership always calculated (3-year) — monthly SaaS pricing is misleading without TCO
- Integration quality with M365 always weighted heavily — poor integration means manual work and gaps
- Vendor security posture always assessed — tool vendors have access to sensitive data
- HITL required: Dr. Lewis reviews evaluation and approves recommendation; Finance approves purchase; IT Manager validates PoC before full deployment; Legal reviews vendor contracts

## System Dependencies
- **Reads from:** Current tool inventory, M365 license status, entity budget, vendor collateral (provided)
- **Writes to:** Evaluation report and recommendation (for HITL approval and procurement)
- **HITL Required:** Dr. Lewis approves tool selection; Finance approves budget; Legal reviews contract; IT Manager validates PoC

## Test Cases
1. **Golden path:** SIEM evaluation → Microsoft Sentinel vs. Splunk vs. SumoLogic → Sentinel wins on M365 integration, TCO ($18K vs. $60K), and team familiarity; approved by Dr. Lewis, 30-day PoC, then full deployment
2. **Edge case:** No clear winner in comparison — two vendors very close → 30-day PoC for both, structured comparison, IT Manager casts deciding vote with Dr. Lewis sign-off; if still tied, choose the one with better M365 integration
3. **Adversarial:** Security vendor pitches a new tool claiming to solve every security problem → applies evaluation framework systematically; overlapping capabilities with existing tools are flagged; TCO calculated including displacement of existing tools; "covers everything" claims scrutinized against our actual environment

## Audit Log
Vendor evaluation reports retained by tool category and date. PoC results documented. Contract terms and vendor security posture assessments retained.

## Deprecation
Retire when entity has a formal procurement process with standardized security vendor evaluation criteria and a GRC platform tracking tool performance.
