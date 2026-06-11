---
name: security-team-capacity-planner
description: "Plan security team capacity and staffing. Use when the user says 'security team capacity', 'security staffing', 'do we need a CISO', 'security headcount', 'security team structure', 'how many security people do we need', 'outsource security', or 'MSSP'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--size <small|mid|enterprise>] [--mode <assess|plan|outsource>]"
---

# Security Team Capacity Planner

Plan security team capacity and staffing. Most small-to-mid-size organizations don't have a dedicated security team — security is owned by IT, leadership, or a fractional CISO. This skill assesses current capacity, identifies gaps, and recommends the right staffing model (internal, outsourced, or hybrid) based on organizational size and risk profile.

## When to Use
- Assessing whether current security capacity matches risk exposure
- Planning security headcount for next fiscal year
- Evaluating whether to hire a CISO vs. use a fractional CISO
- Evaluating MSSP (Managed Security Service Provider) options
- After a security incident that revealed capacity gaps

## Staffing Models

| Model | Best For | Cost | MBL Fit |
|-------|---------|------|---------|
| **IT-led security** | < 50 employees, low risk | Lowest — no dedicated security FTE | Early stage — IT Manager owns security |
| **Fractional CISO** | 50-500 employees, growing risk | $3K-$10K/month | ✅ MBL current model (Dr. Lewis) |
| **MSSP (Managed Security)** | Any size — outsource SOC, monitoring | $5K-$30K/month | Good for 24/7 monitoring |
| **Internal security team** | 200+ employees or high regulated | $150K-$300K/FTE/year | Future state for Allevio |
| **Hybrid** | Mid-market — internal + MSSP | Varies | Best for most MBL entities |

## Security Capacity Assessment

```
Key questions:
1. Who is currently responsible for security? (IT Manager, Dr. Lewis, shared?)
2. How many hours/week does security get from each person?
3. What security functions are currently performed? Which are not?
4. What is the entity's risk profile? (PHI? Financial data? PE target?)
5. What regulatory obligations exist? (HIPAA? SOC 2?)
```

## Output Format

```markdown
# Security Team Capacity Assessment — <Entity>
**Date:** <date> | **Entity:** <name>
**Prepared by:** Dr. John Lewis
**Entity size:** <N employees> | **Risk profile:** Low / Medium / High / Critical

---

## Current Security Capacity

| Role | Person | Security Hours/Week | Primary Responsibilities |
|------|--------|-------------------|------------------------|
| IT Manager | <name> | 10 hours | Alert triage, patch management, access control |
| Fractional CISO | Dr. Lewis | 8 hours/month | Strategy, compliance, architecture, governance |
| IT Engineer | <name> | 5 hours | Vulnerability remediation, tool implementation |
| **Total** | | **~18-22 hours/week** | |

**Current capacity:** ~1,000 hours/year

---

## Security Function Coverage

| Function | Required? | Current Coverage | Gap |
|---------|---------|----------------|-----|
| Security strategy & governance | Yes | ✅ Dr. Lewis | None |
| Vulnerability management | Yes | 🟡 IT Manager (part-time) | Undersourced — reactive only |
| Alert triage / SOC | Yes | 🟡 IT Manager (part-time) | No 24/7 coverage; critical alerts may wait |
| Incident response | Yes | ✅ IT Manager + Dr. Lewis | OK for current risk level |
| Compliance (HIPAA) | Yes (Allevio) | 🟡 Shared | Needs dedicated compliance resource |
| Security awareness | Yes | ✅ IT Manager | OK |
| Pen test management | Annual | ✅ Dr. Lewis | OK |
| Threat intelligence | Nice-to-have | ❌ No one | Acceptable — use free sources |
| 24/7 monitoring | Recommended | ❌ No coverage | Key gap — MSSP could fill |

---

## Capacity Gap Analysis

| Gap | Risk | Solution | Cost |
|-----|------|---------|------|
| No 24/7 alert monitoring | High — incidents detected only during business hours | MSSP for monitoring ($3-8K/month) | $36-96K/year |
| Compliance function under-resourced (Allevio HIPAA) | High — compliance exposure | Part-time compliance coordinator at Allevio | $40-60K/year |
| Vulnerability management reactive only | Medium | Automated vuln management tool + IT Manager time | $10-20K/year tool |

---

## Staffing Recommendations

**Next 12 months:**

| Recommendation | Priority | Investment | Rationale |
|--------------|---------|-----------|---------|
| MSSP for 24/7 monitoring (co-managed) | High | $5-8K/month | Closes the 24/7 coverage gap without a full SOC hire |
| Allevio HIPAA compliance coordinator (0.5 FTE) | High | $25-35K/year | HIPAA compliance needs dedicated ownership at Allevio |
| Maintain Dr. Lewis fractional CISO | Yes | Current | Strategy, architecture, governance, AI security |

**FY roadmap:**
- Q1-Q2: Evaluate and onboard MSSP for monitoring
- Q2: Allevio compliance coordinator hired or contracted
- Q4: Assess whether full-time security engineer is warranted based on growth

---

## Metrics to Monitor

| Metric | Current | Target | Trend |
|--------|---------|--------|-------|
| Mean time to detect (MTTD) | 4 hours | <1 hour | Needs improvement |
| Critical alerts unreviewed >4 hours | 3-4/month | 0 | Needs improvement |
| Compliance tasks completed on time | 80% | 95% | Needs improvement |
| Security team capacity vs. workload | 70% | 80-90% | OK |
```

## Output Contract
- 24/7 monitoring gap always flagged for entities with high-risk data (Allevio PHI, financial data)
- HIPAA compliance function always separated for Allevio — it needs dedicated ownership
- Staffing recommendations always include cost — capacity planning without cost context isn't actionable
- Recommendations always include a "what happens if we don't" risk — helps leadership make investment decisions
- HITL required: Dr. Lewis recommends; Matt Mathison approves hiring and budget; HR executes any new hire; Finance approves MSSP contracts

## System Dependencies
- **Reads from:** Current IT/Security team structure, tool inventory, incident logs (provided)
- **Writes to:** Capacity assessment and staffing plan (for HITL review)
- **HITL Required:** Dr. Lewis presents recommendations; Matt Mathison approves headcount and budget; HR executes hiring; Finance approves contracts

## Test Cases
1. **Golden path:** MBL entity assessment → IT Manager owns security (~10 hrs/week), Dr. Lewis fractional CISO; gap: no 24/7 monitoring, HIPAA compliance under-resourced; recommendation: MSSP ($6K/month), Allevio compliance coordinator (part-time), approved by Matt Mathison
2. **Edge case:** Rapid growth — entity doubles from 50 to 100 employees in a year → capacity reassessment; MSSP may not scale adequately; evaluate adding a full-time security engineer vs. upgrading MSSP
3. **Adversarial:** Leadership wants to cut the fractional CISO role to save money → presents what the fractional CISO delivers (security strategy, compliance, architecture, AI security, board-level reporting) and what disappears without it; security program without governance reverts to reactive IT security

## Audit Log
Capacity assessments retained by entity and year. Staffing decisions documented. Headcount approvals recorded.

## Deprecation
Retire when entity has a mature internal security team with a dedicated CISO and defined security program with board-level reporting.
