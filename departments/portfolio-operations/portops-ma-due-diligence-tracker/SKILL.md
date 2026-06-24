---
name: portops-ma-due-diligence-tracker
description: "track due diligence workstreams, DD status tracker, acquisition due diligence, financial DD tracker, legal DD status, technology due diligence Dr. Lewis, HR diligence tracker, regulatory DD, THRIVE culture diligence, culture audit acquisition, DD findings log, materiality rating findings, critical path to close, HIPAA due diligence healthcare, PHI data room controls, BAA requirements acquisition, DD weekly update Matt Mathison, operational diligence tracker, DD issue log, close blocker identification, quality of earnings diligence, key person risk diligence"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<deal name, workstream, owner, status, and any findings or blockers>"
---

# M&A Due Diligence Tracker

Manages all DD workstreams from kick-off through close for MBL Partners acquisitions, tracking owner assignments, per-workstream completion status, a findings log with materiality ratings, and critical path blockers. Dr. John Lewis owns the Technology workstream on every deal; Matt Mathison receives a weekly DD update during active diligence periods and is notified same-day on any High-materiality finding.

## When to Use

- A deal enters the DD stage and workstream owners need to be assigned and kick-off documented
- A DD workstream owner surfaces a new finding and materiality must be assessed and logged
- The weekly DD briefing for Matt needs to be assembled from workstream owner status reports
- A healthcare target triggers the HIPAA DD protocol and data room controls must be enforced
- A potential close blocker is identified and the critical path to close must be re-evaluated

## M&A Due Diligence Tracker Framework

```
DD WORKSTREAM FRAMEWORK
  Seven workstreams, each with assigned owner, status, and findings sub-log:
    1. Financial       — quality of earnings, balance sheet, cash flow, working capital
    2. Legal           — corporate structure, contracts, IP, litigation, employment
    3. Operational     — business processes, customer concentration, vendor dependencies
    4. HR/People       — org chart, key person risk, compensation, benefits, turnover
    5. Technology      — systems landscape, tech debt, cybersecurity (Dr. Lewis owns)
    6. Regulatory      — licenses, permits, industry compliance, HIPAA if healthcare
    7. THRIVE Culture  — Truth/Hustle/Respect/Integrity/Value/Enjoy alignment assessment

FINANCIAL DD
  Quality of earnings analysis: revenue recognition, recurring vs. one-time, adjustments
  Balance sheet: debt obligations, contingent liabilities, off-balance-sheet items
  Cash flow quality: free cash flow, capex requirements, working capital normalization
  Working capital peg: NWC target, peg methodology, peg dispute risk
  QuickBooks access: MBL reviews QuickBooks directly as financial system of record
  Debt schedule: existing debt, covenants, change-of-control provisions

LEGAL DD
  Corporate structure: entity type, ownership, cap table, voting agreements
  Material contracts: customer agreements, vendor contracts, change-of-control clauses
  IP ownership: patents, trademarks, software licenses, proprietary rights
  Litigation: pending, threatened, settled in past 3 years; indemnification exposure
  Employment agreements: key employee contracts, non-competes, severance obligations

OPERATIONAL DD
  Business processes: how revenue is generated, delivered, and retained
  Customer concentration: top 10 customers as % of revenue; loss-of-customer risk
  Vendor dependencies: single-source suppliers; contract terms; continuity risk
  Operational risk: business continuity plans, insurance coverage, facility review

HR/PEOPLE DD
  Org chart and reporting lines; headcount by department; role clarity
  Key person risk: which individuals are existential to the business; retention plans
  Compensation benchmarking: at-market vs. over/under-compensated; offer letter review
  Benefits: health, retirement, PTO; cost per employee; compliance (ACA, ERISA)
  Turnover data: trailing 12-month attrition rate; voluntary vs. involuntary split

TECHNOLOGY DD — DR. LEWIS OWNED (EVERY DEAL)
  Systems inventory: all software, hardware, cloud services; license compliance
  Architecture: build vs. buy; integration complexity; scalability assessment
  Technical debt: estimate in dollars and engineering-months to remediate
  Cybersecurity posture: endpoint protection, MFA, access controls, breach history
  Data infrastructure: data quality, governance, AI/automation opportunity scan
  Integration complexity rating: Low | Medium | High (feeds integration tracker)

REGULATORY DD
  Industry-specific licenses and permits: current, in-good-standing verification
  Regulatory filings: current on all required state and federal submissions
  HIPAA compliance for healthcare targets: special protocol activated (see below)
  Environmental, health, and safety: OSHA compliance; applicable sector regulations

HEALTHCARE TARGET HIPAA PROTOCOL
  BAA required with every data room provider before any PHI documents are shared
  PHI de-identification: confirm PHI is de-identified or access is BAA-gated
  Access log: document who accessed which PHI-containing documents and when
  Minimum necessary standard: only request PHI genuinely necessary for DD
  HIPAA DD counsel: engage counsel with healthcare regulatory practice
  Breach history: request 6-year lookback on HIPAA incidents and OCR interactions
  Coverage review: confirm target has valid HIPAA Privacy and Security officer designations

THRIVE CULTURE AUDIT
  Framework: evaluate target leadership and culture against each THRIVE dimension
    Truth      — do leaders communicate honestly, even with bad news?
    Hustle     — is there urgency, bias to action, competitive intensity?
    Respect    — is the workplace psychologically safe and inclusive?
    Integrity  — do stated values match observable behaviors?
    Value      — is value creation (customer, employee, investor) the organizing lens?
    Enjoy      — is there genuine enthusiasm for the work and the team?
  Interview protocol: structured interviews with CEO, 2-3 direct reports, 2-3 front-line staff
  Survey: anonymous culture alignment survey with 12-question THRIVE instrument
  Red flags: THRIVE misalignment is a kill criterion — document and escalate to Matt

DD FINDINGS LOG AND CRITICAL PATH
  Findings: each finding gets ID, workstream, description, materiality (High/Med/Low), status
  High materiality: deal-breaker candidate; Matt notified same day; integration into LOI renegotiation
  Medium materiality: price adjustment candidate or rep/warranty coverage item
  Low materiality: noted for integration planning; does not affect pricing or deal structure
  Critical path: any blocker that delays close beyond target date is escalated to Matt
```

## Output Format

```markdown
## DD Weekly Update — [DEAL NAME] | Week of [DATE]

**Overall DD Status:** [On Track / At Risk / Blocked]
**Days to Target Close:** [N] | **DD Kick-Off:** [DATE]
**Open High-Materiality Findings:** [N] — [brief descriptions]

| Workstream | Owner | Status | Issues | Critical Path |
|------------|-------|--------|--------|---------------|
| Financial | | In Progress | | No |
| Legal | | In Progress | | No |
| Operational | | Complete | | No |
| HR/People | | In Progress | | No |
| Technology | Dr. Lewis | In Progress | [finding] | Yes |
| Regulatory | | Not Started | | No |
| THRIVE Culture | | In Progress | | No |

**Critical Path Blockers:** [list or "None"]
**New Findings This Week:** [Finding ID — one-line description — materiality]
**Matt Action Required:** [specific asks — decision, authorization, same-day finding notification]
**HIPAA Status:** [BAA confirmed / PHI log active / protocol compliant — or N/A]
```

## Output Contract

- High-materiality findings go to Matt Mathison the same day they are logged — a High finding that sits in the tracker for a week before Matt sees it is a process failure that can result in closing a deal with an undisclosed deal-breaker, exposing MBL to post-close liability and LP relationship damage. The tracker generates an immediate one-page finding brief for any High-rated issue, separate from the weekly update cycle.
- The Technology workstream is always owned by Dr. John Lewis on every deal without exception — the technology assessment directly informs the integration plan, the systems synergy model, the tech debt remediation budget, and the post-close AI roadmap for the acquired entity. Ownership must not drift to outside counsel or the seller's data room team.
- HIPAA DD protocols activate at the moment a healthcare target is flagged in the pipeline tracker — PHI documents must never enter the data room without a BAA and access logging in place, and this tracker enforces that sequence before granting any data room instructions to the diligence team. Retrofitting controls after PHI has already been shared is not a compliant remediation.

## System Dependencies

**Reads from:** Data room platform (documents and access logs); Monday.com DD task board; outside counsel status reports; Dr. Lewis technology assessment notes; THRIVE culture survey results
**Writes to:** Monday.com DD workstream board; Matt's weekly DD brief (M365/email); findings log (persistent, immutable record); integration tracker (post-close handoff of tech debt and systems inventory)
**HITL Required:** Dr. Lewis reviews Technology workstream before weekly brief is sent; Matt Mathison receives any High-materiality finding same day with recommended action; Matt authorizes all close-readiness determinations

## Test Cases

- **Golden path:** Financial and Legal workstreams complete with no High findings; Technology workstream surfaces a Medium finding (tech debt $800K estimated); price adjustment memo drafted; Matt briefed; integration tracker pre-populated with tech debt remediation milestone sequenced into Day 31-60 systems workstream.
- **Edge case:** DD is 72 hours from target close and a new High-materiality legal finding surfaces (undisclosed litigation). Finding brief auto-generated, Matt notified same day, close date flagged as At Risk, outside counsel looped in for rapid assessment of deal-kill vs. price adjustment vs. escrow holdback.
- **Adversarial:** Healthcare target where a workstream owner shares PHI documents via email outside the data room without a BAA in place. Tracker flags protocol breach immediately, Dr. Lewis notified, HIPAA counsel engaged, incident logged with access details, and data room access suspended until BAA is executed.

## Audit Log

Every finding entry, materiality rating change, and workstream status update is timestamped with the name of the person making the change. HIPAA access events — who accessed which PHI-containing documents and when — are retained as a separate immutable log for no less than six years per HIPAA requirements. Matt notification events for High-materiality findings are logged with delivery method and confirmation. The THRIVE culture audit results are retained permanently as part of the deal file, regardless of whether the acquisition closes.

## Deprecation

Retire this skill when MBL implements an integrated deal management platform with native DD workstream tracking that meets HIPAA audit log requirements and provides equivalent per-workstream status and findings logging. The Technology workstream ownership by Dr. Lewis is a standing policy, not a skill artifact — that assignment must be explicitly preserved in whatever system replaces this tracker and documented in the replacement platform's configuration.
