---
name: security-budget-planner
description: "Plan and justify the cybersecurity budget. Use when the user says 'security budget', 'cybersecurity budget', 'how much should we spend on security', 'security investment', 'security cost justification', 'security ROI', 'budget for security tools', or 'cyber budget planning'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <annual|quarterly>] [--mode <plan|review|justify>]"
---

# Security Budget Planner

Plan and justify the cybersecurity budget. Security budgets are never large enough to do everything. The question is: what delivers the most risk reduction per dollar? This skill builds a prioritized security budget with clear ROI framing — money spent preventing a breach vs. money spent recovering from one.

## When to Use
- Annual security budget planning cycle
- Justifying a new security tool investment
- Presenting the security budget to leadership (Matt Mathison)
- Evaluating whether current security spend is adequate
- Post-incident — building the case for increased security investment

## Security Spend Benchmarks

| Organization Type | Security as % of IT Budget | Security per Employee |
|----------------|--------------------------|---------------------|
| Small business (< 100 employees) | 4-8% | $1,000-$3,000/year |
| Mid-market (100-500 employees) | 8-12% | $2,000-$5,000/year |
| Healthcare (HIPAA) | 10-15% | $3,000-$8,000/year |
| Financial services | 10-15% | $3,000-$8,000/year |

**MBL context:** Private equity firm (MBL) + healthcare MSO (Allevio) + oil & gas (HIVE) + CTV/media (Column6). Security spend should reflect healthcare (highest) and financial services requirements.

## ROI Framework for Security Spend

```
Security ROI Formula:
Return = (Annualized Loss Expectancy without control) - (Annualized Loss Expectancy with control) - Control Cost

Example:
- Probability of ransomware: 5% per year
- Cost of ransomware incident: $500,000 (recovery + downtime + legal)
- Annualized Loss Expectancy (ALE) without EDR: 5% × $500K = $25,000/year
- Cost of EDR: $8,000/year
- ALE with EDR (reduces probability to 0.5%): 0.5% × $500K = $2,500/year
- ROI: ($25,000 - $2,500) - $8,000 = $14,500/year net benefit
```

## Output Format

```markdown
# Cybersecurity Budget Plan — <Entity>
**Period:** <fiscal year> | **Entity:** <name>
**Prepared by:** Dr. John Lewis
**Total budget request:** $<N>

---

## Executive Summary

**Security investment rationale:**
<2-3 sentences: What risk does this spending address? What's the cost of not spending it?>

**Budget summary:** $<N> total — <N>% of IT budget
**Top 3 priorities:** [tool/initiative 1], [2], [3]

---

## Current Security Cost Baseline

### Tools and Licenses (Recurring)

| Tool | Purpose | Users/Seats | Annual Cost | Entity |
|------|---------|-----------|-----------|--------|
| Microsoft 365 E3/E5 (Defender included) | Identity, email security, EDR | All staff | $<N> | All |
| CrowdStrike / SentinelOne / Defender | EDR (if separate) | All endpoints | $<N> | All |
| KnowBe4 / Proofpoint | Security awareness training | All staff | $<N> | All |
| 1Password / Bitwarden | Password manager | All staff | $<N> | All |

**Recurring tools total:** $<N>/year

---

### Services (Recurring)

| Service | Frequency | Annual Cost | Entity |
|---------|---------|-----------|--------|
| Penetration testing | Annual | $<N> | All |
| Vulnerability scanning | Monthly | $<N> | All |
| Cyber insurance | Annual | $<N> | All |
| Security consulting (Dr. Lewis / outsourced) | Ongoing | $<N> | All |

**Recurring services total:** $<N>/year

---

## FY Budget Request

### Must-Have (Compliance/Insurance Required)

| Item | Justification | Annual Cost | Risk if Not Funded |
|------|------------|-----------|------------------|
| Cyber insurance renewal | Required; covers ransomware, breach costs | $<N> | Uninsured for cyber incidents |
| Annual pen test | Cyber insurance requirement; SOC 2 | $<N> | Insurance gap; compliance finding |
| Security awareness training | HIPAA, SOC 2, cyber insurance all require | $<N> | Compliance finding + high phishing risk |

**Must-have subtotal:** $<N>

---

### High-Priority (Significant Risk Reduction)

| Item | Justification | Annual Cost | Risk Reduction |
|------|------------|-----------|--------------|
| Microsoft Sentinel (SIEM) | Centralized log monitoring; SOC 2 requirement; incident detection | $<N> | Reduces MTTD from hours to minutes |
| DLP policy configuration | HIPAA PHI protection; Allevio compliance | $<N> (IT time) | Closes HIPAA compliance gap |
| Azure Key Vault (secrets management) | Prevent credential exposure; developer hygiene | $<N> | Eliminates top cloud breach vector |
| Privileged Identity Management (PIM) | Admin access control; SOC 2 | Included in E5 | Closes privileged access gap |

**High-priority subtotal:** $<N>

---

### Nice-to-Have (Improve Posture)

| Item | Justification | Annual Cost | Timeline |
|------|------------|-----------|---------|
| CSPM tool (Defender for Cloud P2) | Continuous cloud security monitoring | $<N> | Q3 |
| Threat intelligence subscription | Proactive threat awareness | $<N> | Q4 |

**Nice-to-have subtotal:** $<N>

---

## Total Budget Summary

| Category | Annual Cost |
|---------|-----------|
| Must-Have | $<N> |
| High-Priority | $<N> |
| Nice-to-Have (optional) | $<N> |
| **Total** | **$<N>** |

---

## ROI Justification

| Investment | Annual Cost | Risk Mitigated | ALE Reduction | Net Annual Benefit |
|-----------|-----------|--------------|-------------|------------------|
| Cyber insurance | $<N> | Ransomware/breach | $500K covered | Risk transfer — justified |
| SIEM (Sentinel) | $<N> | Faster incident detection | ~$50K (4 hr MTTD → 30 min) | $<N> |
| Security awareness | $<N> | Phishing click rate | ~$25K/year (1 prevented BEC) | $<N> |
| **Total** | **$<N>** | | | **Exceeds cost** |
```

## Output Contract
- ROI framing always included — security budgets justified in risk reduction terms, not just cost
- Must-have items (cyber insurance, pen test, training) always separated — these are compliance/insurance requirements, not optional
- Allevio security budget always separated — HIPAA compliance costs are entity-specific obligations
- Budget presented as risk reduction investment, not a cost center
- HITL required: Dr. Lewis prepares and presents budget; Matt Mathison approves; Finance approves payment; IT Manager executes spending

## System Dependencies
- **Reads from:** Current tool licenses, insurance premiums, contractor costs (provided)
- **Writes to:** Budget proposal document (for HITL review and Finance approval)
- **HITL Required:** Dr. Lewis prepares budget; Matt Mathison approves; Finance approves; IT Manager executes

## Test Cases
1. **Golden path:** Annual budget for MBL entity → baseline tools ($28K), services ($22K), new investment requests ($15K for Sentinel, $5K for secrets management) → total $70K → ROI justification shows $150K+ risk reduction → Matt Mathison approves
2. **Edge case:** Budget is being cut — what's the minimum acceptable security spend? → Must-have items (cyber insurance, pen test, training) are non-negotiable — insurance and compliance require them; Nice-to-have items are cut first; High-priority items evaluated case-by-case with risk acceptance documentation
3. **Adversarial:** CFO says "we've never had a breach, so why spend more on security?" → zero breaches may mean current controls are working, OR it means you've been lucky; average cost of a healthcare breach: $10.9M; current security spend: $X; the ratio justifies the investment

## Audit Log
Annual budget plans retained by entity and year. Approved budgets and actual spending documented.

## Deprecation
Retire when entity has a formal security program with a dedicated CISO managing an ongoing security budget process with board oversight.
