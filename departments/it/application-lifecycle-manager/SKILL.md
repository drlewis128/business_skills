---
name: application-lifecycle-manager
description: "Manage the lifecycle of business applications from evaluation through retirement. Use when the user says 'application lifecycle', 'app lifecycle', 'evaluate a new tool', 'replace an application', 'sunset an application', 'application management', 'tool evaluation', or 'system evaluation'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <evaluate|manage|retire>] [--application <name>]"
---

# Application Lifecycle Manager

Manage the full lifecycle of business applications from evaluation through retirement. Every application accumulates debt over time — cost, maintenance burden, user frustration, and security risk. Application lifecycle management keeps the portfolio healthy by actively managing entry, performance, and exit.

## When to Use
- Evaluating a new software tool for adoption
- Quarterly application portfolio review
- Application is being proposed for replacement or sunset
- New vendor relationship being established
- Post-M&A — what applications overlap between entities?

## Application Lifecycle Stages

| Stage | Duration | Key Activities |
|-------|---------|--------------|
| **Evaluation** | 2-8 weeks | Requirements, vendor demos, POC, security review, cost analysis |
| **Pilot** | 4-8 weeks | Limited deployment, user feedback, integration testing |
| **Active** | Ongoing | Ongoing use, vendor management, performance review |
| **Sunset planning** | 2-4 months | Migration plan, user communication, data export, cutover |
| **Retired** | — | License cancelled, data archived or migrated, documentation updated |

## Evaluation Criteria

| Criterion | Weight | Measure |
|---------|--------|---------|
| **Functional fit** | 30% | Does it do what we need for the next 3 years? |
| **Security posture** | 20% | SOC 2 report, penetration test results, MFA support |
| **Integration capability** | 15% | Connects to Microsoft 365, Krista.ai, other core systems |
| **Cost (TCO)** | 15% | License + implementation + ongoing support |
| **Vendor stability** | 10% | Company size, funding, customer base, track record |
| **User experience** | 10% | Adoption likelihood; training burden |

## Output Format

```markdown
# Application Evaluation — <Application Name>
**Entity:** <MBL entity> | **Use case:** <description> | **Requestor:** <dept/person>
**Date:** <date> | **Decision target:** <date>

---

## Business Case

**Problem being solved:** <What are we trying to fix or enable?>
**Current solution:** <What do we do today — manual process, another tool?>
**Why change now:** <What triggered this request — pain point, growth, compliance?>

---

## Requirements (MoSCoW)

| Requirement | Priority | Must Have? |
|------------|---------|-----------|
| Integrates with Microsoft 365 | Must | ✅ |
| Role-based access control | Must | ✅ |
| SOC 2 Type 2 certification | Must | ✅ |
| Mobile app available | Should | — |
| API available for Krista.ai integration | Must | ✅ |
| Custom reporting | Could | — |

---

## Vendor Comparison

| Criterion | Weight | [Vendor A] | [Vendor B] | [Vendor C] |
|---------|--------|-----------|-----------|-----------|
| Functional fit | 30% | 4.5 | 3.5 | 4.0 |
| Security posture | 20% | 5.0 | 4.0 | 3.5 |
| Integration | 15% | 5.0 | 4.0 | 3.0 |
| Cost (TCO) | 15% | 3.0 | 4.5 | 4.0 |
| Vendor stability | 10% | 5.0 | 3.5 | 3.0 |
| User experience | 10% | 4.0 | 4.5 | 3.5 |
| **Weighted Score** | **100%** | **4.4** | **3.9** | **3.6** |

---

## POC / Pilot Plan

**Pilot scope:** <N> users in <department> for <N> weeks
**Success criteria:** [specific, measurable]
**Go/no-go date:** <date>

---

## Security Review Summary

- [ ] SOC 2 Type 2 report reviewed (or Type 1 with timeline to Type 2)
- [ ] Data handling — no Restricted data processed without DPA
- [ ] MFA supported and required for all users
- [ ] Data residency — US or <region> (per entity requirements)
- [ ] Breach notification SLA: <hours>

---

## Implementation Plan (if approved)

| Phase | Activity | Timeline | Owner |
|-------|---------|---------|-------|
| Contracts | Negotiate terms, execute MSA | 2 weeks | Legal + IT |
| Setup | Configure, integrate, test | 3 weeks | IT Engineer |
| Pilot | 5 users in Sales | 4 weeks | IT + Sales |
| Rollout | All users + training | 2 weeks | IT |

---

## Retirement Plan (for replaced application)

| Step | Timeline | Owner |
|------|---------|-------|
| Data export and archive | Before cutover | IT |
| User communication and training on new system | 2 weeks before cutover | IT + Dept |
| License cancellation | 30 days after stable cutover | IT + Finance |
| Documentation updated | Immediately after | IT |

---

## Decision

**Recommendation:** Approve / Decline / Pilot first
**Reasoning:** <One paragraph — why this decision, what are the alternatives>
**Approved by:** Dr. Lewis | **Date:** <date>
```

## Output Contract
- Security review always completed before any application processes Restricted data
- Total cost of ownership always calculated — license cost alone undersells the real cost
- Retirement plan always paired with adoption — no new tool is approved without a plan for what it replaces
- HITL required: Dr. Lewis approves all new applications > $10K/year; IT Manager approves < $10K; Finance reviews any multi-year commitment

## System Dependencies
- **Reads from:** Requirements from requestor, vendor security documentation, current application inventory (provided)
- **Writes to:** Nothing (evaluation report for HITL decision)
- **HITL Required:** Dr. Lewis approves all applications > $10K/year; IT Manager approves < $10K; Legal reviews contracts > $25K; Finance reviews multi-year commitments

## Test Cases
1. **Golden path:** Evaluating a new project management tool → 3 vendors compared, security reviews completed for top 2, 4-week pilot with Sales team, winner selected and approved by Dr. Lewis, implementation plan and retirement plan for the old tool
2. **Edge case:** Vendor has no SOC 2 report available — claiming "in progress" → treats as conditional — pilot can proceed with no Restricted data, but full deployment blocked until SOC 2 is available; adds to procurement watchlist
3. **Adversarial:** Department head purchases and deploys a new tool without IT review ("it's just a free trial") → immediately flagged as shadow IT, IT conducts a retroactive security review, migrates or removes the tool depending on the security finding, builds this into the procurement policy

## Audit Log
Application evaluations retained by entity and date. Active application portfolio maintained. Retirement decisions and dates documented.

## Deprecation
Retire when entity deploys an IT asset management or SaaS management platform with application portfolio visibility, lifecycle tracking, and automated renewal management.
