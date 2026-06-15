---
name: esg-report-builder
description: "Build an ESG or sustainability report for a portfolio company. Use when the user says 'ESG report', 'sustainability report', 'environmental social governance', 'ESG disclosure', 'write an ESG report', 'impact report', 'sustainability disclosure', 'how do we report ESG', 'build an ESG framework', or 'LP asking about ESG'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--year <year>] [--level <basic|comprehensive>]"
---

# ESG Report Builder

Build an ESG (Environmental, Social, Governance) report or sustainability disclosure for MBL Partners or a portfolio company. ESG reporting is increasingly expected by institutional LPs, larger customers, and strategic partners. At MBL's current scale, ESG reporting does not require SASB or GRI certification — a clear, honest narrative with measurable commitments is sufficient and builds the same credibility.

## When to Use
- An LP asks MBL Partners about ESG practices or reporting
- A portfolio company customer requests an ESG disclosure as part of a vendor requirement
- Preparing a portfolio company for an eventual sale where ESG diligence is expected
- Annual stakeholder communications include a sustainability component
- MBL Partners wants to establish ESG as a differentiator in LP fundraising

## ESG Framework (MBL-Scale)

```
ESG at MBL portfolio scale does not require:
  - GRI or SASB certification
  - Third-party verification (until scale warrants)
  - Carbon accounting software
  - Full sustainability infrastructure

ESG at MBL portfolio scale DOES require:
  - Honest disclosure of what you do and don't measure
  - Commitments that are specific and achievable
  - Governance structure that is real (not theoretical)
  - Industry-relevant material issues addressed

Industry-specific material ESG issues:
  Allevio (Healthcare): Patient safety, HIPAA/data privacy, employee wellbeing, 
                        healthcare access for underserved communities
  HIVE (Oil & Gas): Methane emissions, spill prevention, OSHA safety, 
                    water management, community impact
  Column6 (AdTech): Data privacy, supply chain (brand safety), AI ethics,
                    diverse media inventory support
  MBL Partners (PE): Portfolio company governance, community investment,
                     diversity in deal sourcing and portfolio leadership
```

## Output Format

```markdown
# ESG Report — <Entity Name>
**Entity:** <Company> | **Reporting year:** <Year>
**Level:** Foundational / Comprehensive
**Date:** <date> | **Prepared by:** Dr. John Lewis | **Approved by:** CEO / Matt Mathison

---

## Our Approach to ESG

[3-4 sentences — why ESG matters to this specific company. Not boilerplate. Connect ESG to the business model. For Allevio: ESG is about the patients we serve and the practices we support. For HIVE: ESG is about operating responsibly in the communities where we drill. For MBL: ESG is about the businesses we build and the communities they affect.]

---

## Environmental

### What we measure
| Metric | [Year] value | Prior year | Trend | Notes |
|--------|-------------|-----------|-------|-------|
| [E.g., Energy consumption (kWh) — if applicable] | [Value or "Not yet measured"] | — | — | |
| [E.g., Fuel/emissions — HIVE specific] | [Value] | — | — | |
| [Water usage — HIVE specific] | [Value] | — | — | |

### What we're doing
- [Specific environmental initiative 1 — with outcome or target]
- [Specific environmental initiative 2]

### What we're not yet measuring — and plan to:
- [Honest disclosure of gaps + timeline]

---

## Social

### Workforce
| Metric | Value | Notes |
|--------|-------|-------|
| Total employees | [N] | As of [date] |
| Employee turnover rate | [X%] | [Year] |
| Training hours per employee | [N hours] | [Year] |
| Employee satisfaction (if measured) | [Score/metric] | [Method] |

### Community
- [Community investment or impact — specific and named: volunteer hours, charitable giving, local supplier preference]
- [Healthcare access — Allevio specific: services provided to underinsured patients, community health programs]
- [OSHA recordable rate — HIVE specific]

### Customers / Patients
- [Patient safety metrics — Allevio specific: adverse event rate, patient satisfaction]
- [Data privacy — actions taken to protect customer/patient data]

---

## Governance

### Board and Oversight
| Structure | Status |
|-----------|--------|
| Board composition | [N members; independent vs. affiliated] |
| Audit function | [External auditor / Fund accountant] |
| Compliance training | [Annual / Ad hoc] |
| Code of conduct | [In place / In development] |
| Whistleblower mechanism | [In place / In development] |

### Anti-Corruption and Ethics
- THRIVE values framework: Truth, Hustle, Respect, Integrity, Value, Enjoy — applied to all business decisions; Integrity is a hard disqualifier for hiring and partnerships
- Code of conduct: [Status — in place / developing]
- Anti-bribery commitment: [Statement]
- Vendor due diligence: [Process for vetting suppliers and partners]

### Data Privacy (for Allevio and Column6)
- HIPAA compliance status: [Allevio — current, last audit date]
- Data security framework: [Column6 — SOC 2 / equivalent]
- Breach incident history: [None / disclosed if applicable]

---

## ESG Commitments for [Year+1]

| Commitment | Metric | Target | Owner |
|-----------|--------|--------|-------|
| [Specific ESG action] | [How we'll measure progress] | [Target by date] | [Name] |
| [Commitment 2] | [Metric] | [Target] | [Owner] |

---

## A Note on What We Don't Measure — And Why

[This section is optional but differentiating: honest acknowledgment of ESG data gaps and the plan to close them. LPs and sophisticated customers respect transparency more than inflated reporting. "We don't yet measure X; here is when and how we plan to start" is more credible than omitting X and pretending it doesn't exist.]
```

## Output Contract
- "Not yet measured" is an acceptable answer — honesty about ESG data gaps is more credible than filling in estimated or unverified figures; every metric table may contain "Not yet measured" with a note on the plan to measure; ESG reports that appear comprehensive but contain unverified data are a liability
- Industry-specific material issues are always addressed — a generic ESG report that doesn't address Allevio's patient safety or HIVE's environmental footprint has missed the point; the material ESG issues must be industry-specific and explicitly addressed
- Commitments must be specific and measurable — "we are committed to environmental responsibility" is not a commitment; "we will measure and report Scope 1 emissions by Q4 [Year+1]" is a commitment; every commitment has a metric, a target, and an owner
- THRIVE Integrity applies to all ESG claims — every statement in the ESG report must be true and verifiable; claims that cannot be verified must not be made; greenwashing is an Integrity violation and a legal risk
- HITL required: Dr. Lewis builds the report; CEO reviews and approves all statements; Matt Mathison reviews for LP-facing ESG disclosures; all financial and metric data verified before publication; legal reviews for any regulatory claims (HIPAA compliance, OSHA compliance); no distribution without all required approvals

## System Dependencies
- **Reads from:** Company operational data, HR data, safety records, financial records, compliance documentation
- **Writes to:** ESG report (SharePoint/ESG/<Company>/<Year>); LP reporting package
- **HITL Required:** CEO approves all statements; Matt Mathison reviews LP-facing ESG; legal reviews regulatory claims; data verified before publication

## Test Cases
1. **Golden path:** Allevio ESG report (foundational level) → Environmental: limited data (primarily office-based company; note that physical plant energy consumption will be measured starting in Year+1); Social: 87 employees, 12% turnover (below healthcare industry average of 18%), 8hr average training per year, 95% patient satisfaction, no reportable HIPAA incidents; Governance: HIPAA compliance current (audited Q2), code of conduct in place, Dr. Lewis as compliance oversight; Commitments: measure and report employee training hours by role (Q4), complete formal HIPAA risk assessment annually; LP feedback: "credible and honest — appreciate the transparency about what isn't measured yet"
2. **Edge case:** HIVE had an environmental incident during the reporting year → the incident must be disclosed in the ESG report; describe the incident, the response, the outcome, and the preventive measures implemented; ESG reports that omit material negative events are a reputational and legal liability when discovered; disclosure in the annual report is far better than disclosure via media coverage
3. **Adversarial:** A prospective LP demands GRI-compliant ESG reporting as a condition of investment → assess whether GRI compliance is achievable given current data infrastructure; if not: be honest — "We do not currently produce GRI-compliant reporting. Here is our current ESG disclosure and our roadmap to more comprehensive reporting. Can we discuss whether this meets your requirements?" The answer may be no, and that's a legitimate outcome; overpromising ESG capability is worse than not having it

## Audit Log
ESG reports retained by year and entity. Data sources documented. Approval sign-offs retained. Any ESG commitments tracked for follow-through in subsequent year's report.

## Deprecation
Retire when portfolio companies reach a scale or LP base that requires formal GRI/SASB reporting with third-party verification.
