---
name: regulatory-filing-tracker
description: "Track regulatory filing deadlines and compliance submissions. Use when the user says 'regulatory filing', 'filing deadline', 'regulatory report', 'compliance filing', 'government report', 'regulatory submission', 'annual filing', 'state filing', 'SEC filing', 'CMS filing', 'OSHA report', 'we need to file', or 'what filings are due'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name|all>] [--domain <healthcare|financial|employment|environmental|all>] [--period <monthly|quarterly|annual>]"
---

# Regulatory Filing Tracker

Track regulatory filing deadlines and compliance submissions for MBL Partners and portfolio companies. Missing a regulatory filing is an enforcement risk — fines, license revocations, and loss of operating authority. This skill maintains the master filing calendar across all entities and regulatory domains, with lead-time alerts so filings are completed, not discovered late.

## When to Use
- Annual regulatory filing calendar build
- Pre-quarter planning — what's due this quarter?
- New entity or new state — what filings are required?
- After a regulatory change that adds new filing obligations
- LP reporting preparation (HIVE)

## Filing Requirements by Domain

### Employment / HR (All Entities)
| Filing | Frequency | Approx. Due Date | Agency |
|--------|---------|----------------|--------|
| W-2 / 1099 (employee and contractor) | Annual | Jan 31 | IRS / SSA |
| Form 940 (FUTA) | Annual | Jan 31 | IRS |
| Form 941 (payroll tax quarterly) | Quarterly | Last day of month following quarter end | IRS |
| ACA Form 1094/1095 (if 50+ FTE) | Annual | Feb 28/Mar 31 | IRS |
| OSHA 300A Summary (if required) | Annual | Feb 1 - Apr 30 posting | OSHA |
| EEO-1 (if 100+ employees or federal contractor) | Annual | As announced | EEOC |
| Workers' comp (per carrier/state) | Annual | Per carrier | State WC board |
| State unemployment (SUI) | Quarterly | Last day of month following quarter end | State labor |

### Healthcare — Allevio
| Filing | Frequency | Due Date | Agency |
|--------|---------|---------|--------|
| HIPAA breach notification (if breach occurs) | As needed | Within 60 days of discovery | HHS OCR |
| CMS enrollment revalidation | Every 5 years (or upon trigger) | Per CMS notice | CMS |
| State healthcare license renewal | Per state, per license type | Per license | State health dept |
| AdvancedMD / clearinghouse ERA enrollment | As needed | N/A | Payer |
| OSHA (if clinical staff) | Annual | Feb 1 | OSHA |

### Oil & Gas — HIVE Partners
| Filing | Frequency | Due Date | Agency |
|--------|---------|---------|--------|
| Utah Division of Oil, Gas & Mining production reports | Monthly | 45 days after month end | UDOGM |
| Federal royalty reporting (if federal land) | Monthly | As specified | ONRR |
| EPA air quality reporting (if applicable) | Annual / quarterly | Per permit | EPA |
| BLM reports (if BLM land) | Per lease | Per lease terms | BLM |
| LP capital account / K-1 | Annual | March 15 (or extended) | Investors |

### Corporate (All Entities)
| Filing | Frequency | Due Date | Agency |
|--------|---------|---------|--------|
| AZ Annual Report | Annual | Per entity anniversary month | AZ Corporation Commission |
| UT Annual Report (HIVE) | Annual | Per registration date | Utah Division of Corporations |
| BOI / FinCEN (new entities within 90 days) | One-time + updates | 90 days after formation | FinCEN |
| Registered agent renewal | Annual | Per agent contract | Registered agent |

## Output Format

```markdown
# Regulatory Filing Calendar — <Entity / Portfolio>
**Period:** <quarter/year> | **Date:** <date>
**Prepared by:** Dr. John Lewis

---

## Immediate — Due This Month

| Filing | Entity | Agency | Due Date | Status | Owner |
|--------|--------|--------|---------|--------|-------|
| Form 941 (Q1 payroll tax) | All | IRS | April 30 | 🟡 In progress | Finance / Payroll |
| UDOGM production report (March) | HIVE | UDOGM | May 15 | 📅 Calendared | HIVE Ops |

---

## Upcoming — Due Next 90 Days

| Filing | Entity | Agency | Due Date | Status | Owner |
|--------|--------|--------|---------|--------|-------|
| AZ Annual Report — MBL Partners | MBL | AZ Corp Commission | <date> | 📅 | Outside Counsel |
| AZ Annual Report — Allevio | Allevio | AZ Corp Commission | <date> | 📅 | Outside Counsel |
| State nursing license renewal | Allevio | AZ AHCCCS | <date> | 📅 | Allevio Admin |

---

## Annual Filing Calendar

| Filing | Entity | Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec |
|--------|--------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| W-2 / 1099 | All | ✅ | | | | | | | | | | | |
| Form 941 | All | | | | ✅ | | | ✅ | | | ✅ | | |
| AZ Annual Report | Per entity | | | | | | | | | | | | |
| HIPAA risk analysis | Allevio | | | | | | | | | | | | ✅ |

---

## Missed / Late Filings Log

| Filing | Entity | Original Due | Filed Date | Late by | Penalty? | Action |
|--------|--------|------------|---------|---------|---------|--------|
| [None currently] | | | | | | |

---

## License and Permit Inventory (Allevio)

| License / Permit | Type | Issued By | Number | Expires | Status | Owner |
|----------------|------|---------|--------|---------|--------|-------|
| AZ Medical Practice License | State | AZ Medical Board | <#> | <date> | ✅ Current | Allevio Admin |
| HIPAA Notice of Privacy Practices | Federal | HHS OCR | N/A | N/A | ✅ Current | Compliance Officer |
| Medicare Provider Enrollment | Federal | CMS | <PTAN/NPI> | Revalidate every 5 yr | ✅ | Billing |
```

## Output Contract
- HIPAA breach notification deadline always tracked (60 days from discovery) — this is an absolute legal deadline
- Missing filing always escalated immediately — no grace period for most regulatory filings
- Allevio license renewals always tracked — operating without a current healthcare license is an immediate enforcement risk
- HIVE oil & gas reports always tracked — UDOGM production reports are tied to royalty payments and regulatory compliance
- HITL required: Dr. Lewis reviews calendar quarterly; Finance team owns tax filings; Allevio Compliance Officer owns healthcare licenses; outside counsel owns entity filings; Matt Mathison informed of any missed filings

## System Dependencies
- **Reads from:** State agency portals, CMS enrollment, UDOGM (HIVE), IRS calendar, license expiration dates (provided by entity leads)
- **Writes to:** Filing calendar (maintained by Dr. Lewis; tracked in Monday.com or shared calendar)
- **HITL Required:** Finance team owns tax filings; Allevio Admin owns license renewals; Dr. Lewis reviews; outside counsel files entity reports

## Test Cases
1. **Golden path:** Q2 filing calendar review → Form 941 due April 30 (Finance has it), AZ annual reports due for 3 entities in May (outside counsel has them), HIVE March production report due May 15 (HIVE Ops confirmed), no missed filings this quarter
2. **Edge case:** PHI breach discovered at Allevio — breach notification deadline triggered → 60-day clock starts; calendar immediate deadline; HHS OCR notification and patient notification required simultaneously; legal counsel engaged immediately
3. **Adversarial:** A filing deadline was missed for 30 days — business unit says "it was just a technical filing" → all regulatory filings are material — late filing triggers automatic penalties and can trigger audits; immediately file late with explanation; do not minimize; engage outside counsel to manage the regulatory response

## Audit Log
Filing calendar maintained with completion dates. Late filing log maintained. All filed documents retained with date stamps.

## Deprecation
Retire when entity deploys a compliance calendar platform with automated alerts (Wolters Kluwer's CT Corporation service, or a GRC platform) that manages multi-state filing requirements.
