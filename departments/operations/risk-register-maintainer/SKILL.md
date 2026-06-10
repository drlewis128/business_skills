---
name: risk-register-maintainer
description: "Maintain the operational risk register and track mitigation status. Use when the user says 'risk register', 'operational risks', 'add a risk', 'risk log', 'risk tracker', 'what are our top risks', 'risk management', or 'update the risk register'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <view|add|update|report>] [--risk-id <RIS-XXX>]"
---

# Risk Register Maintainer

Maintain and report on the operational risk register for MBL and portfolio companies. Identifies, scores, and tracks mitigation of business risks.

## When to Use
- Quarterly risk review (standard cadence)
- After a new risk is identified (add to register)
- When a risk changes in probability or impact
- Board reporting (top risk summary)
- Before a significant business change (what risks does this introduce?)

## Risk Register Record

```yaml
id: RIS-<NNN>
entity: MBL / Allevio / HIVE / Column6
category: <Strategic|Operational|Financial|Compliance|Technology|People>
risk: <Short description of the risk>
cause: <What causes or enables this risk>
impact: <What happens if this risk materializes>
probability: High / Medium / Low  # likelihood of occurring
impact_level: High / Medium / Low  # severity if it occurs
risk_score: <1-9 composite P×I>
mitigation_status: <Not mitigated | In progress | Mitigated | Accepted>
mitigation_plan: <What is being done to reduce P or I>
owner: <Named person responsible for mitigation>
due_date: <When mitigation is expected complete>
residual_risk: <Risk remaining after mitigation>
last_reviewed: <YYYY-MM-DD>
```

## Risk Scoring Matrix

| | Low Impact | Medium Impact | High Impact |
|--|-----------|--------------|------------|
| **High Probability** | 3 | 6 | 9 |
| **Medium Probability** | 2 | 4 | 6 |
| **Low Probability** | 1 | 2 | 3 |

Scores 7-9: 🔴 Escalate to Matt immediately
Scores 4-6: 🟡 Monitor, mitigation required
Scores 1-3: 🟢 Accept or monitor

## Common Risk Categories (MBL Context)

### Strategic
- Deal flow concentration (too few targets)
- Portfolio company underperformance
- LP concentration risk (few large LPs)
- Key man dependency (Matt or Dr. Lewis)

### Operational
- Single-point-of-failure in critical processes
- Vendor concentration (critical vendor failure)
- System outage (financial systems)

### Financial
- Cash flow risk (portfolio company underperformance)
- Debt covenant breach
- Fraud risk (see `fraud-signal-scoring`)

### Compliance / Legal
- Regulatory changes in portfolio sectors
- Tax exposure
- Data privacy (HIPAA, CCPA)

### Technology
- Cybersecurity breach
- System availability
- Data integrity

### People
- Key employee departure
- Succession gap
- Culture degradation

## Output Format

```markdown
# Risk Register — <Entity>
**Period:** <date> | **Total Risks:** <N>

## Risk Heat Map Summary
| Risk Level | Count | Change vs. Prior Period |
|-----------|-------|------------------------|
| 🔴 Critical (7-9) | <N> | +/-<N> |
| 🟡 High (4-6) | <N> | |
| 🟢 Acceptable (1-3) | <N> | |

## Critical Risks — Immediate Attention

### RIS-001: <Risk Name>
**Category:** <category> | **Score:** X/9 | **Owner:** <name>
**Risk:** <description>
**Mitigation:** <what is being done> | **Status:** <status> | **Due:** <date>
**Residual risk after mitigation:** <risk remaining>

## New Risks Added This Period
[any risks added since last review]

## Closed Risks (Mitigated or Accepted)
[risks removed from active register]

## Action Items
| Risk ID | Action | Owner | Due |
|---------|--------|-------|-----|
```

## Output Contract
- All risks include probability, impact, and composite score
- Critical risks (score 7+) always surface first
- Mitigation plans must have named owner and due date
- HITL required before any risk is marked "Accepted" without mitigation

## System Dependencies
- **Reads from:** Risk register data (provided or maintained in Monday.com)
- **Writes to:** Risk register updates (with HITL)
- **HITL Required:** Matt Mathison reviews all critical risks and accepts any risks without mitigation

## Test Cases
1. **Golden path:** Quarterly review with 20 risks → prioritized heat map, escalations for critical risks, closed items noted
2. **Edge case:** New regulatory risk identified mid-quarter → adds with immediate scoring, flags if score ≥ 7 for immediate escalation
3. **Adversarial:** Request to remove a critical risk without mitigation → flags risk cannot be removed without either mitigation or explicit acceptance documented by Tier 1

## Audit Log
Risk register versions retained by quarter. Changes to risk scores and mitigation status documented.

## Deprecation
Retire when GRC (Governance, Risk, Compliance) platform handles risk register management.
