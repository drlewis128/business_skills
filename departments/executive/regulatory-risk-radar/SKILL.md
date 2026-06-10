---
name: regulatory-risk-radar
description: "Monitor regulatory developments relevant to MBL portfolio sectors and flag material risks. Use when the user says 'regulatory risk', 'regulatory update', 'compliance risk', 'what regulations apply to us', 'new regulations', 'regulatory radar', 'regulatory landscape', or 'compliance monitoring'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--sector <healthcare|oil-gas|ctv|pe|all>]"
---

# Regulatory Risk Radar

Monitor regulatory developments across MBL's portfolio sectors and surface material risks, compliance requirements, and action items.

## When to Use
- Quarterly regulatory landscape review
- When a new regulation or rule change is announced
- M&A diligence (understand target's regulatory environment)
- Before entering a new state or market
- When a portfolio company receives a regulatory inquiry

## Portfolio Regulatory Map

### MBL Partners / PE Holding Company
- **SEC**: Investment Adviser Act (if registered) — registration thresholds, reporting
- **ERISA**: If any LP is a pension fund — prohibited transaction rules
- **State PE regulations**: State-by-state investment adviser registration
- **Tax**: Pass-through taxation, carried interest treatment

### Allevio (Healthcare / MSO)
- **HIPAA**: Data privacy, breach notification, business associate agreements
- **Stark Law / Anti-Kickback Statute**: Physician relationships, referral arrangements
- **CMS / Medicare / Medicaid**: Billing rules, audit risk, audit cycles
- **State medical board**: Practice structure, corporate practice of medicine doctrine
- **FTC**: Healthcare M&A antitrust review (now more scrutinized)
- **Surprise billing (No Surprises Act)**: Patient billing requirements

### HIVE Partners (Oil & Gas, Uinta Basin, Utah)
- **EPA**: Clean Air Act compliance, emissions reporting
- **State of Utah DOGM**: Division of Oil, Gas and Mining — production reporting, permits
- **BLM**: If any federal acreage — federal royalty, permit compliance
- **Utah Water Quality Board**: Produced water disposal
- **OSHA**: Well safety, worker safety
- **Utah State severance tax**: Monthly production reporting

### Column6 / Siprocal (CTV / Digital Advertising)
- **FTC**: Digital advertising, endorsement guidelines, dark patterns
- **COPPA**: Children's online privacy (if any audience is under 13)
- **CCPA / CPRA**: California consumer privacy for California users
- **State privacy laws**: Growing patchwork (CT, VA, CO, TX, etc.)
- **FCC**: If any broadcast-adjacent activity

## Regulatory Risk Scoring

| Risk Level | Definition | Response |
|-----------|-----------|---------|
| 🔴 Critical | Active enforcement action or immediate compliance gap | Immediate escalation to Matt + legal |
| 🟠 High | Upcoming requirement with implementation deadline | Action plan with owner and deadline |
| 🟡 Monitor | Proposed rule or developing situation | Track quarterly, no immediate action |
| 🟢 Low | Stable regulatory environment, compliant | Annual review |

## Output Format

```markdown
# Regulatory Risk Radar — <Entity / Portfolio>
**Period:** <date> | **Updated:** <date>

## Critical Alerts — Immediate Action Required
<Any active enforcement, notice, or compliance gap requiring immediate action>

## Portfolio Regulatory Scorecard
| Entity | Sector | Risk Level | Top Regulatory Issue | Action |
|--------|--------|-----------|---------------------|--------|
| Allevio | Healthcare | 🟠 High | No Surprises Act billing compliance gaps | Legal review by Jul 31 |
| HIVE | Oil & Gas | 🟡 Monitor | EPA proposed methane rule | Track — final rule expected Q4 |

## Key Regulatory Developments (This Quarter)
1. <Development — entity affected, potential impact, action>
2. <Development>

## Compliance Calendar
| Deadline | Entity | Requirement | Owner |
|---------|--------|------------|-------|
| Jun 30 | HIVE | Utah severance tax Q2 | Finance |
| Jul 31 | Allevio | CMS cost report deadline | Controller |

## M&A Regulatory Watch
<Any pending M&A transactions with regulatory review implications>
```

## Output Contract
- Always covers all portfolio entities — no selective reporting
- Critical items always include immediate escalation language
- Compliance calendar always shows next 90 days
- HITL required before any regulatory communication is sent to a government agency

## System Dependencies
- **Reads from:** Known regulatory calendar, recent regulatory news (if web search enabled), entity-specific compliance status (provided)
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison + legal counsel review before any regulatory response or filing

## Test Cases
1. **Golden path:** Stable quarter, no critical alerts → clean scorecard with monitoring items and upcoming calendar
2. **Edge case:** New CMS rule proposed affecting Allevio's billing → flags as 🟠 High, outlines implementation timeline and owner
3. **Adversarial:** Regulatory inquiry received by HIVE → immediately flags as 🔴 Critical, escalates to Matt and legal, does not suggest responding without counsel

## Audit Log
Regulatory radar reports retained quarterly. Compliance calendar events tracked to completion.

## Deprecation
Retire when a dedicated compliance management platform (e.g., Navex, Riskonnect) monitors regulatory feeds for each portfolio entity automatically.
