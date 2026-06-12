---
name: regulatory-change-tracker
description: "Track regulatory changes affecting MBL portfolio companies. Use when the user says 'regulatory change', 'new regulation', 'law change', 'compliance deadline', 'what regulations affect us', 'regulatory update', 'new compliance requirement', 'regulatory horizon', or 'what changed in the law'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--domain <healthcare|privacy|employment|financial|all>] [--period <quarterly|annual>]"
---

# Regulatory Change Tracker

Track regulatory changes affecting MBL portfolio companies. The regulatory environment for healthcare, private equity, data privacy, and employment law changes continuously. Missing a new requirement isn't just a compliance gap — it's a liability and a potential enforcement action. This skill monitors the regulatory horizon and translates changes into required actions for MBL and its portfolio.

## When to Use
- Quarterly regulatory review
- After a major new regulation or rule is announced
- Before a compliance audit — are we current?
- When a portfolio company enters a new jurisdiction or business line
- Before filing deadlines and reporting obligations

## Regulatory Domains by Entity

| Domain | Applicable Entities | Key Regulators |
|--------|------------------|--------------|
| **Healthcare (HIPAA, HITECH)** | Allevio | HHS OCR, CMS |
| **Data Privacy (CCPA, state laws)** | All entities with California customers | CA AG, state AGs |
| **Employment Law** | All entities | DOL, EEOC, state labor agencies |
| **Financial / Investment** | MBL Partners, HIVE (LP funds) | SEC, FINRA, state regulators |
| **Oil & Gas** | HIVE Partners | EPA, BLM, Utah Division of Oil, Gas & Mining |
| **Corporate (state law)** | All entities | AZ Corporation Commission, state SOS |
| **CTV/Advertising** | Column6 / Siprocal | FTC, FCC |

## Output Format

```markdown
# Regulatory Change Report — <Entity / Portfolio>
**Period:** <quarter/year> | **Date:** <date>
**Prepared by:** Dr. John Lewis

---

## Executive Summary

**Regulatory risk level this period:** Low / Elevated / High
**New requirements with near-term deadlines:** <N>
**Key message:** <2-3 sentences on what matters most>

---

## New/Upcoming Regulations — Action Required

### High Priority — Compliance Deadline Approaching

| Regulation | Effective Date | Entity | Requirement | Action | Owner | Due |
|-----------|-------------|--------|-----------|--------|-------|-----|
| HIPAA Security Rule (Updated 2024) | Jan 2025 (phased) | Allevio | Enhanced security requirements — annual risk analysis, specific technical safeguards | Review updated requirements against current controls; gap assessment | Dr. Lewis + Allevio | <date> |
| California CPRA (amended CCPA) | Jan 2023 (ongoing) | All entities with CA customers | Expanded consumer rights, data minimization, sensitive personal information | Assess California customer base; update privacy policy if applicable | Legal | <date> |

---

### Medium Priority — Monitor

| Regulation | Status | Entity | Impact | Watch Date |
|-----------|--------|--------|--------|-----------|
| FTC Non-Compete Rule | Stayed by courts — monitoring | All entities | Potentially voids non-compete agreements | Monitor court proceedings |
| State data privacy laws (TX, FL, OR) | New states effective 2024-2025 | MBL entities with state-specific operations | New consumer rights obligations | Assess by Q2 |

---

## Compliance Calendar — Upcoming Filing Deadlines

| Filing / Report | Entity | Due Date | Responsible | Status |
|---------------|--------|---------|-----------|--------|
| HIPAA Annual Risk Assessment | Allevio | Annually by Dec 31 | Dr. Lewis / IT | 🟡 In progress |
| Corporate annual report (AZ) | MBL Partners | <date> | Legal/Admin | 📅 Calendared |
| Form ADV (if applicable) | MBL Partners | 90 days after fiscal year end | Outside counsel | ❌ Confirm applicability |
| W-2 / 1099 deadline | All entities | Jan 31 | Finance/Payroll | 📅 Calendared |
| Workers' comp audit | Allevio | <date per carrier> | HR | 📅 |
| Utah oil & gas reports | HIVE Partners | Quarterly | HIVE Ops | 📅 |

---

## Regulatory Watch List (No Action Yet — Monitor)

| Development | Jurisdiction | Entity | Potential Impact | Timeline |
|-----------|------------|--------|----------------|---------|
| AI regulation (state laws emerging) | CA, CO, TX | MBL/OpenFang | AI system disclosure and bias requirements | 2025-2026 |
| Healthcare price transparency | Federal | Allevio | Additional billing transparency requirements | Ongoing |
| Private equity fund regulation (SEC) | Federal | MBL | Potential new LP reporting requirements | Proposed rulemaking |

---

## Regulatory Changes — No Action Required This Period

| Change | Why No Action |
|-------|-------------|
| New OSHA ergonomics guidance | Does not apply to office-based workforce |
| State minimum wage increases | Current wages exceed new minimums in all operating states |
```

## Output Contract
- Compliance deadlines always listed with lead time — reactive compliance is expensive compliance
- HIPAA changes always flagged for Allevio with immediate escalation to Allevio compliance officer
- AI regulation developments always tracked — MBL and OpenFang create AI regulatory exposure
- "No action required" items always documented with reasoning — proves diligence
- HITL required: Dr. Lewis reviews regulatory change report; Legal counsel provides interpretation for significant changes; Allevio compliance officer receives HIPAA changes; Matt Mathison briefed on high-priority changes with financial exposure

## System Dependencies
- **Reads from:** Legal counsel advisories, regulatory agency updates, industry association alerts, news monitoring (provided)
- **Writes to:** Regulatory action items and compliance calendar (for HITL assignment)
- **HITL Required:** Dr. Lewis reviews; Legal counsel interprets significant changes; Allevio compliance officer for healthcare; Matt Mathison for high-priority items

## Test Cases
1. **Golden path:** Quarterly regulatory review → HHS updates HIPAA Security Rule with new annual risk analysis requirements (Allevio — action required by Dec 31), new state data privacy law affecting MBL's Texas operations (assess by Q2), FTC rule stayed (monitor only) — report sent to Dr. Lewis and Matt Mathison
2. **Edge case:** Major regulatory change announced during the quarter (not at review time) → immediate notification to Dr. Lewis and relevant entity leadership; don't wait for quarterly review for high-priority changes
3. **Adversarial:** Business unit says "that regulation doesn't apply to us" without analysis → legal/compliance must make that determination, not the business unit; analysis documented; if unsure, outside counsel engaged

## Audit Log
Regulatory change reports retained quarterly. Compliance calendar items tracked. Outside counsel engagements for regulatory interpretation documented.

## Deprecation
Retire when entity subscribes to a regulatory change monitoring service (Wolters Kluwer, Thomson Reuters Regulatory Intelligence) with automated alerts and entity-specific filtering.
