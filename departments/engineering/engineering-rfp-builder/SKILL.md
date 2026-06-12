---
name: engineering-rfp-builder
description: "Build engineering RFPs and vendor evaluation criteria for technical procurements. Use when the user says 'engineering RFP', 'technical RFP', 'vendor evaluation', 'evaluate these tools', 'which tool should we use', 'build vs buy for engineering', 'technical procurement', 'request for proposal', or 'evaluate engineering vendors'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--category <platform|tool|service|consulting>] [--entity <name>] [--budget <range>]"
---

# Engineering RFP Builder

Build engineering RFPs and vendor evaluation criteria for technical procurements at MBL. Engineering tool and vendor decisions carry long-term implications — the wrong observability platform, the wrong database, or the wrong API integration partner can set a team back 12+ months. This skill produces structured evaluation frameworks and RFP documents calibrated to MBL's technical and compliance requirements.

## When to Use
- Evaluating two or more tools for the same engineering need
- Preparing to issue an RFP to engineering services vendors (consulting, managed services)
- Documenting the build vs. buy analysis for a significant capability
- Annual review of engineering vendor contracts (renewal / replacement consideration)
- Portfolio company technology assessment — what tools are they using and should we standardize?

## Evaluation Framework

### Technical Requirements Scoring

| Category | Weight | Criteria |
|---------|--------|---------|
| Core feature fit | 30% | Does it do the thing we need? Score 1-5 per required feature |
| Security and compliance | 25% | SOC 2 Type II; HIPAA BAA available (if Allevio); data residency; encryption |
| Integration compatibility | 20% | REST API quality; webhooks; existing MBL stack compatibility (Microsoft, Monday.com, Rust) |
| Scalability | 15% | Handles 3× current load; multi-tenant for portfolio use |
| Operational overhead | 10% | Managed vs. self-hosted; support quality; SLA |

### Pricing Model Analysis

```
Year 1 Total Cost of Ownership:
  License / subscription: $<amount>
  Implementation/integration: $<amount> (engineer-days × loaded rate)
  Training: $<amount>
  Migration from current tool: $<amount>
  Ongoing support: $<amount>

Year 3 projection (accounting for scale):
  License at expected scale: $<amount>
  Maintenance: $<amount>

Break-even vs. build:
  Build cost (estimate): $<engineer-months × rate>
  Buy cost (3-year): $<TCO>
  Decision threshold: if build cost < 2× Year 1 buy cost, evaluate build seriously
```

## MBL-Specific Requirements Checklist

```
SECURITY (required for all tools):
  [ ] SOC 2 Type II certified (or equivalent)
  [ ] Data encrypted at rest and in transit
  [ ] SSO/SAML support (Microsoft integration)
  [ ] Audit log of all actions
  [ ] Data deletion / right to erasure support

HIPAA (required if tool touches Allevio data):
  [ ] BAA available
  [ ] US-only data residency
  [ ] PHI handling documented
  [ ] Breach notification process documented

INTEGRATION:
  [ ] REST API with documented specification
  [ ] Webhook support for event-driven workflows
  [ ] Claude API integration possible (if AI-assisted workflows needed)
  [ ] Monday.com integration or API access for status sync

VENDOR STABILITY:
  [ ] Company founded >3 years OR well-funded startup
  [ ] Customer reference available in similar industry
  [ ] Contractual SLA for uptime (>99.5% minimum)
  [ ] Data export capability (avoid vendor lock-in)
```

## Output Format

```markdown
# Engineering Tool/Vendor Evaluation — <Category>
**Date:** <date> | **Evaluator:** Dr. John Lewis
**Entity:** <All / specific> | **Budget range:** $<amount>/year
**Decision needed by:** <date>

---

## Executive Summary

**Recommendation:** <tool/vendor name>
**Rationale:** <2-3 sentences — why this, not the alternative>
**Total Year 1 cost:** $<amount>
**Key trade-off:** <what we're giving up for the recommended choice>

---

## Options Evaluated

| Vendor/Tool | Core fit | Security | Integration | Scale | Cost/yr | Score |
|------------|---------|---------|-----------|-------|---------|-------|
| [Option A] | 4/5 | 5/5 | 4/5 | 4/5 | $12K | **4.3** |
| [Option B] | 5/5 | 3/5 | 3/5 | 5/5 | $8K | **4.0** |
| [Option C] | 3/5 | 4/5 | 5/5 | 3/5 | $18K | **3.7** |
| Build in-house | 5/5 | 5/5 | 5/5 | 5/5 | $85K (est) | N/A |

**Weighted score:** (Core × 0.30) + (Security × 0.25) + (Integration × 0.20) + (Scale × 0.15) + (Cost × 0.10)

---

## Detailed Assessment — [Recommended Option]

### Feature Fit
| Required Feature | Supported | Notes |
|----------------|---------|-------|
| [Feature 1] | ✅ Native | |
| [Feature 2] | ⚠️ Via API | Additional integration work needed |
| [Feature 3] | ❌ Not supported | Workaround: [describe] |

### Security Assessment
- SOC 2 Type II: ✅
- HIPAA BAA: ✅ Available (required for Allevio)
- SSO (Microsoft): ✅ Native SAML
- Data residency: ✅ US-only option

### Integration Plan
- **Week 1-2:** API access provisioned; basic integration scaffolding
- **Week 3-4:** Full integration with Monday.com and Microsoft
- **Week 5-6:** Testing + rollout to MBL team; Allevio rollout follows after validation

### Total Cost of Ownership

| Cost Item | Year 1 | Year 3 (projected) |
|---------|--------|-------------------|
| License | $12,000 | $18,000 |
| Implementation | $8,500 | $2,000 |
| Training | $1,000 | $0 |
| **Total** | **$21,500** | **$20,000** |

---

## Risk Assessment

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|-----------|
| Vendor acquired / service discontinued | Low | High | Data export tested; migration plan documented |
| HIPAA BAA revoked | Very low | Critical | Contract clause; annual review |

---

## Procurement Next Steps

1. Dr. Lewis approves recommendation — <date>
2. Legal reviews vendor contract — <timeframe>
3. HITL: Matt Mathison approves if total Year 1 cost > $25K
4. Procurement: negotiate contract, execute BAA if applicable
5. Implementation: per integration plan above
```

## Output Contract
- Recommendation always first — decision-makers need the bottom line before the evidence
- Build vs. buy always considered and documented — "we didn't evaluate building" is not acceptable for significant capabilities
- HIPAA compliance always checked for Allevio-touching tools — non-compliant tools are disqualified regardless of score
- Total cost of ownership always 3-year, not just Year 1 — Year 1 pricing often understates true cost
- HITL required: Dr. Lewis approves all engineering tool decisions; Matt Mathison approves tools >$25K/year; legal reviews vendor contracts before execution

## System Dependencies
- **Reads from:** Vendor documentation, SOC 2 reports, pricing pages, reference customer contacts
- **Writes to:** Vendor evaluation document (SharePoint/Engineering); procurement record
- **HITL Required:** Dr. Lewis approves selection; Matt Mathison approves if >$25K/year; legal reviews contract; BAA required for Allevio tools touching PHI

## Test Cases
1. **Golden path:** Evaluate observability tools for MBL Engineering → 3 options: Datadog vs. Grafana Cloud vs. Honeycomb; weighted scoring; Datadog wins (4.1 score) — better Monday.com integration and MBL-grade support SLA; Year 1 TCO: $18K (license) + $12K (implementation) = $30K; Matt Mathison approval required; Dr. Lewis recommends proceed; legal reviews contract
2. **Edge case:** Recommended tool doesn't have a HIPAA BAA → if Allevio data is in scope, disqualify regardless of other scores; document the disqualification; evaluate next option; if no option has a BAA, build or use a HIPAA-compliant alternative service layer
3. **Adversarial:** Business stakeholder wants to use a free tool without security review → free tools still require security assessment; "free" means the vendor's business model is different, not that security requirements are lower; run the security checklist; if it fails, document why and propose a compliant alternative

## Audit Log
Vendor evaluations retained. Procurement decisions documented. Contract execution records retained. Annual renewal reviews documented.

## Deprecation
Retire when MBL establishes a formal IT procurement function with standardized vendor assessment processes and integrated vendor management platform.
