---
name: portops-portfolio-risk-monitor
description: "portfolio risk monitor, risk monitoring across all entities, financial risk, operational risk, regulatory risk, personnel risk, market risk, HIPAA risk Allevio, WTI risk HIVE, client concentration risk Column6, key person risk, critical risk escalation, portfolio risk register, entity risk assessment, risk signal detection, same-day risk notification, MBL portfolio risk, portfolio risk dashboard, cross-entity risk monitoring, risk flag escalation, portfolio risk summary, risk heat map"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "entity name or 'all', risk category (financial/operational/regulatory/personnel/market), reporting period"
---

# Portfolio Risk Monitor

This skill maintains and updates the MBL portfolio risk register across all four entities — Allevio, HIVE Partners, Column6/Siprocal, and MBL HoldCo — covering financial, operational, regulatory, personnel, and market risk vectors. Any risk event rated Critical triggers an immediate same-day notification to Dr. Lewis and Matt Mathison with a recommended response action.

## When to Use

- Monthly risk register review across all portfolio entities
- Responding to a specific risk event or signal that needs classification and escalation
- Pre-investment or pre-LOI risk assessment for a new acquisition target
- Annual risk register refresh ahead of LP communications or board reporting

## Portfolio Risk Monitor Framework

```
PORTFOLIO RISK MONITOR — [DATE]
Prepared by: Dr. John Lewis | For: Matt Mathison (Critical), Entity CEOs (High)

RISK RATING SCALE:
  🔴 CRITICAL  — Material financial/legal/regulatory exposure; same-day escalation
  🟠 HIGH      — Significant risk requiring active mitigation plan; entity CEO owns
  🟡 MEDIUM    — Monitoring required; Dr. Lewis tracks; monthly review
  🟢 LOW       — Acknowledged; no active action required; annual review

═══════════════════════════════════════════════════════
ALLEVIO — HEALTHCARE MSO RISKS
═══════════════════════════════════════════════════════
HIPAA / PHI Compliance:
  Rating: [🔴/🟠/🟡/🟢] | Last audit: [date] | BAA gaps: [X]
  Risk: [description — PHI breach, BAA lapse, OIG exclusion, training gap]
  Mitigation: [status]

Regulatory / Licensure:
  Rating: [rating] | State filings: [status] | Expiring licenses: [X]

Clinical Quality / Liability:
  Rating: [rating] | Malpractice current: [Y/N] | Incidents: [X] open

RCM Financial Risk:
  Rating: [rating] | DSO: [X]d (target 35-40) | Denial rate: [X]%

Key Person Risk:
  Rating: [rating] | CEO tenure: [X]yr | Succession: [Y/N]

═══════════════════════════════════════════════════════
HIVE PARTNERS — OIL & GAS RISKS
═══════════════════════════════════════════════════════
WTI Market Risk:
  Current WTI: $[X] | Gate: [OPEN/PAUSED]
  Rating: [rating] | Consecutive weeks below $58: [X]
  Risk: Revenue compression, acquisition halt, distribution capacity

Production / Operational Risk:
  Rating: [rating] | Downtime events (30d): [X] | Variance vs budget: [X]%

Utah DOGM Regulatory Risk:
  Rating: [rating] | Filings current: [Y/N] | Permit gaps: [X]

Environmental / OSHA:
  Rating: [rating] | Open violations: [X] | Incident rate: [X]

LP Relation Risk:
  Rating: [rating] | Distribution current: [Y/N] | LP complaints: [X]

═══════════════════════════════════════════════════════
COLUMN6 / SIPROCAL — CTV/MOBILE/GAMING RISKS
═══════════════════════════════════════════════════════
Client Concentration Risk:
  Rating: [rating] | Top-3 client % of revenue: [X]%
  Risk: Loss of top agency = [X]% revenue impact

Gross Margin Risk:
  Current GM: [X]% | Threshold: ≥35%
  Rating: [🔴 if <35%] | Trend: [improving/deteriorating]

CCPA Compliance:
  Rating: [rating] | Consumer requests pending: [X] | 45-day clock: [status]
  Last compliance review: [date]

Tech Infrastructure Risk:
  Rating: [rating] | DSP/SSP uptime: [X]% | Data pipeline incidents: [X]

Revenue Concentration / Churn:
  Rating: [rating] | Agencies at renewal risk: [X]

═══════════════════════════════════════════════════════
MBL HOLDCO — MANAGEMENT COMPANY RISKS
═══════════════════════════════════════════════════════
Cash / Liquidity Risk:
  Runway: [X] months | Rating: [🟢≥3mo / 🟡2-3mo / 🔴<2mo]

Key Person Risk (Dr. Lewis / Matt):
  Rating: [rating] | Succession plan: [status] | Cross-training: [status]

System / Technology Risk:
  Rating: [rating] | M365/Krista.ai/QuickBooks failures: [X]

Strategic Initiative Risk:
  AI Phase [X] status: [on track / delayed] | Risk: [description]

═══════════════════════════════════════════════════════
CRITICAL RISK ESCALATION (SAME-DAY ACTION REQUIRED)
═══════════════════════════════════════════════════════
[List all 🔴 items with: entity, risk description, impact, recommended action, owner]
[NONE — no critical risks this period]
```

## Output Format

```markdown
## PORTFOLIO RISK SUMMARY — [DATE]

| Entity | Risk Category | Rating | Top Risk | Action Owner |
|--------|--------------|--------|----------|-------------|
| Allevio | HIPAA | 🟢/🟡/🟠/🔴 | [description] | Dr. Lewis |
| HIVE | WTI Market | 🟢/🟡/🟠/🔴 | [description] | Entity CEO |
| Column6 | Client Concentration | 🟢/🟡/🟠/🔴 | [description] | Entity CEO |
| MBL HoldCo | Cash | 🟢/🟡/🟠/🔴 | [description] | Dr. Lewis |

**Critical Escalations:** [list or NONE]
**Matt's Sign-off Required:** [list or NONE]
```

## Output Contract

- Critical (🔴) risk events must generate an immediate, same-day notification artifact — not held for the next scheduled report cycle. The notification must name the risk, quantify the potential impact in dollars or regulatory severity, identify the responsible party, and propose a specific mitigation action. Vague escalations without a recommended action are not acceptable.
- Allevio HIPAA risk must be evaluated every cycle regardless of other risk activity because HIPAA violations have strict 60-day breach notification deadlines under HITECH, and a missed detection window can convert a containable incident into a federal enforcement action with OCR. The BAA register must be checked for gaps or expirations at every monitoring cycle.
- The portfolio risk register is the single authoritative log of acknowledged risks. Each risk item must have a last-reviewed date so that Dr. Lewis and Matt can verify that no risk has gone unreviewed for more than 30 days at the critical/high level or 90 days at medium/low. Stale risk items must be flagged automatically.

## System Dependencies

**Reads from:** AdvancedMD aggregate (Allevio HIPAA signals), Covercy (HIVE production/WTI), Column6 internal reporting, QuickBooks (MBL cash), M365 (system health), Monday.com (initiative risk items)
**Writes to:** SharePoint /MBL/Portfolio/Risk-Register/, Monday.com (critical risk board items), Matt Mathison email (critical only)
**HITL Required:** Dr. Lewis reviews all High/Critical before escalation; Matt authorizes all Critical risk responses

## Test Cases

- **Golden path:** All entities at Low/Medium risk, HIPAA clean, WTI above $58, Column6 GM 37%, MBL cash 4 months — produces clean register with no escalations
- **Edge case:** Allevio BAA found expired for a billing vendor — skill classifies as 🔴 Critical, generates same-day escalation to Dr. Lewis, drafts corrective action memo
- **Adversarial:** Risk input omits Column6 client concentration data — skill flags data gap as a risk itself (unknown concentration = unquantified risk), does not proceed as if no risk exists

## Audit Log

All risk register updates are version-stamped and archived in SharePoint with the reviewer name, update timestamp, and prior rating for change tracking. Critical escalation notifications are logged with the delivery timestamp and Matt's response timestamp to track response time SLA. Annual risk register audits are cross-referenced with LP communications to ensure no material risk was disclosed to LPs without prior internal classification.

## Deprecation

This skill is deprecated when MBL adopts a dedicated enterprise risk management (ERM) platform that auto-monitors entity signals and routes escalations natively; the replacement skill focuses on validating platform outputs against MBL-specific thresholds. Deprecation requires Dr. Lewis sign-off and Matt Mathison approval after a 90-day parallel operation period.
