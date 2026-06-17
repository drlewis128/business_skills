---
name: rc-erm-program-builder
description: "Design and build an Enterprise Risk Management program. Use when the user says 'ERM program', 'enterprise risk management', 'build a risk program', 'risk management framework', 'risk governance', 'risk committee', 'risk program design', 'risk management maturity', 'risk management structure', 'COSO ERM', 'risk program from scratch', 'risk function', or 'risk management program'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--maturity <initial|developing|defined|managed>] [--action <design|assess|build|review>]"
---

# ERM Program Builder

Design and build an Enterprise Risk Management (ERM) program for MBL portfolio companies — establishing the governance structure, processes, tools, and cadence that make risk management a systematic capability rather than a reactive one. At portfolio scale with Dr. Lewis serving as the risk function for multiple companies simultaneously, the ERM program is the operating system: it defines who owns what, how risks are identified and scored, what gets reported and to whom, and how the program improves over time.

## When to Use
- A portfolio company has no formal risk program — building from scratch
- A portfolio company's risk activities are ad hoc — need to systematize
- A new acquisition is being integrated — establish risk governance
- Annual ERM program maturity assessment — is the program effective?
- Preparing for an audit, investor review, or regulatory examination that expects ERM documentation

## ERM Program Framework

```
ERM program components (COSO ERM adapted for PE portfolio scale):
  1. Governance and culture:
    → Risk appetite statement (rc-risk-appetite-setter)
    → Risk ownership: Dr. Lewis as CRO-equivalent at portfolio level; CEO as risk owner at entity level
    → Risk committee equivalent: Dr. Lewis + CEO monthly risk review; Matt Mathison quarterly
    → THRIVE culture as foundation: Truth (honest risk reporting), Integrity (no compliance shortcuts)
    
  2. Strategy and objective setting:
    → Risk appetite aligned to business strategy annually
    → Strategic risks identified when business strategy changes (new service line, acquisition, etc.)
    → IT/technology risks aligned to IT roadmap (it-roadmap-builder)
    
  3. Performance:
    → Risk identification: Annual enterprise-wide risk identification; event-triggered updates
    → Risk assessment: Likelihood × Impact scoring (see rc-risk-register)
    → Risk response: Accept / Mitigate / Transfer (insurance) / Avoid
    → Risk monitoring: Monthly KRI dashboard (rc-key-risk-indicator)
    
  4. Review and revision:
    → Monthly: KRI monitoring; Red KRI escalation
    → Quarterly: Risk register review; CEO + Matt Mathison reporting (rc-risk-report)
    → Annual: Full risk register refresh; appetite review; program effectiveness assessment
    
  5. Information and communication:
    → Risk reporting cadence (monthly CEO, quarterly Matt Mathison, annual comprehensive)
    → Risk escalation protocol (thresholds defined in risk appetite)
    → Risk culture: THRIVE alignment; "raise the flag" culture (Truth value)
    
ERM maturity levels (self-assessment):
  Level 1 — Initial: Risk management is ad hoc; no formal register; reactive only
  Level 2 — Developing: Risk register exists; inconsistent scoring; some KRIs; informal reporting
  Level 3 — Defined: Formal register with consistent scoring; KRI dashboard; regular reporting; clear ownership
  Level 4 — Managed: Quantitative risk data; risk appetite formally linked to decisions; leading indicator monitoring
  Level 5 — Optimized: Continuous monitoring; risk data drives strategy; predictive risk analytics
  
MBL portfolio target: Level 3 for all portfolio companies; Level 4 for Allevio (regulatory complexity)
  
Portfolio-wide ERM structure:
  Dr. Lewis (CRO equivalent):
    → Maintains risk registers for all portfolio companies
    → Monitors KRI dashboard portfolio-wide
    → Produces quarterly portfolio risk report for Matt Mathison
    → Escalates all High/Critical risks
    
  Portfolio Company CEOs:
    → Own risk appetite for their entity
    → Review risk register monthly with Dr. Lewis
    → Are accountable for risk mitigation execution
    
  Matt Mathison (Board-equivalent oversight):
    → Receives quarterly portfolio risk brief
    → Informed same-day of all Critical risks
    → Approves risk acceptance >$250K potential impact
```

## Output Format

```markdown
# ERM Program Design — <Company Name>
**Version:** [X] | **Date:** [Date] | **Program Owner:** Dr. John Lewis
**Entity CEO:** [Name] | **Matt Mathison awareness:** [Date]
**Target maturity:** Level [N] | **Current maturity:** Level [N]

---

## Program Overview

**Purpose:** [One paragraph — why this ERM program exists and what it enables]
**Scope:** All operational, financial, compliance, technology, and reputational risks for [Company]
**Standard:** COSO ERM framework (adapted for [Company] size and complexity)

---

## Governance Structure

| Role | Person | Risk Responsibility | Decision Authority |
|------|--------|--------------------|--------------------|
| Risk Program Owner (CRO equivalent) | Dr. John Lewis | Build and maintain program; report to CEO and Matt Mathison | Risk assessment; KRI thresholds; escalation decisions |
| Entity Risk Owner | CEO [Name] | Own risk appetite; ensure mitigation execution | Risk acceptance (≤$250K impact); risk appetite approval |
| Portfolio Oversight | Matt Mathison | Quarterly portfolio review; Critical risk awareness | Risk acceptance (>$250K impact); strategic risk decisions |
| Domain Risk Owners | [Controller, IT lead, Clinical director] | Own specific domain risks | Mitigation execution within their domain |

---

## Risk Identification Process

**Annual risk identification (Month [X] each year):**
1. Dr. Lewis conducts enterprise risk identification using structured prompts by domain
2. CEO interviews (30 min): "What keeps you up at night? What new risks has the business taken on?"
3. Department lead inputs: Each domain lead contributes 2-3 risks in their area
4. External environment scan: Regulatory changes, industry incidents, macroeconomic shifts
5. Outcome: Updated risk register with all risks scored and owned

**Event-triggered risk identification:**
→ Triggers: Acquisition, new service line, new location, significant regulatory change, significant incident
→ Dr. Lewis conducts targeted assessment within 30 days of trigger event

---

## Risk Assessment Process

1. Score using Likelihood (1-5) × Impact (1-5) matrix (see rc-risk-register)
2. Assess inherent risk (before controls) and residual risk (after controls)
3. Validate controls are actually implemented (not aspirational)
4. Assign risk owner for each risk ≥ Medium
5. Mitigation plan required for all residual risk ≥ High (≥15)

---

## Risk Response Assignments

| Response type | When to use | Example |
|--------------|------------|---------|
| **Accept** | Residual risk ≤ Low (≤8); cost to mitigate > risk cost; strategic necessity | Low-severity operational risks with controls in place |
| **Mitigate** | Residual risk ≥ Medium (≥9); cost-effective controls available | Cybersecurity controls reducing ransomware from inherent 20 to residual 10 |
| **Transfer** | Risk is insurable; transfer is cost-effective | Cyber insurance for residual ransomware risk |
| **Avoid** | Risk is critical and cannot be mitigated to acceptable level | Avoid a business line that would create uninsurable HIPAA liability |

---

## Risk Monitoring Cadence

| Frequency | Activity | Owner | Output |
|-----------|---------|-------|--------|
| Weekly | Cybersecurity KRI check (Secure Score, open vulns) | Dr. Lewis | Alert if Red threshold crossed |
| Monthly | Full KRI dashboard review | Dr. Lewis | Monthly CEO risk brief |
| Monthly | Risk register spot-check (new risks, status updates) | Dr. Lewis | Register updated |
| Quarterly | Full risk register review | Dr. Lewis + CEO | Quarterly Matt Mathison brief |
| Annually | Enterprise risk identification; appetite review | Dr. Lewis + CEO | Full register refresh; appetite update |

---

## Risk Escalation Protocol

| Trigger | Escalation | Timeline |
|---------|-----------|---------|
| New Critical risk (score 21-25) | Dr. Lewis → CEO → Matt Mathison | Same day |
| Residual risk ≥15 with no mitigation | Dr. Lewis → CEO approval to accept | Within 48 hours |
| HIPAA breach or regulatory action | Dr. Lewis → CEO → Matt Mathison → Attorney | Same day |
| Risk event with >$50K financial impact | Dr. Lewis → CEO | Same day |
| Risk event with >$250K financial impact | CEO → Matt Mathison | Same day |

---

## Program Effectiveness Metrics

| Metric | Target | Current | Trend |
|--------|--------|---------|-------|
| Risk register current (updated within 90 days) | Yes | [Yes/No] | |
| KRIs monitored (% with current data) | 100% | [X]% | |
| Mitigation plans for all High risks | 100% | [X]% | |
| CEO risk review completions (monthly) | 12/year | [N]/year | |
| Matt Mathison briefings (quarterly) | 4/year | [N]/year | |
| Risk events not in register (surprise events) | 0 | [N] | |
| High/Critical risks reduced to Medium/Low by mitigations | Target: trend up | [N] | ↑/↓ |

---

## ERM Maturity Roadmap

| Maturity | Level | Current gap | Actions to advance |
|---------|-------|------------|------------------|
| Risk register | Level [N] | [Gap] | [Actions] |
| KRI monitoring | Level [N] | | |
| Risk reporting | Level [N] | | |
| Risk culture | Level [N] | | |
| Overall | Level [N] | Target: Level [Target] | [Top 3 actions] |

---

## Matt Mathison Program Brief (annual)

[Company] ERM program annual review: Current maturity Level [N] (target: [N]). Risks: [N] total; [N] High; [N] Critical. Program effectiveness: [Metric highlights]. Improvement from prior year: [Key advance]. Investment: $[X] (primarily Dr. Lewis time + insurance). No decisions required / Decision needed: [What].
```

## Output Contract
- The ERM program is measured by effectiveness, not documentation — a 50-page ERM policy that nobody uses is a compliance artifact, not a program; the test of an ERM program is: are all High and Critical risks known to the CEO? Are mitigations executing on schedule? Are KRIs monitored and responded to? Is Matt Mathison informed quarterly? If yes to all: the program is working; the documentation supports the program but does not substitute for it
- Risk ownership is specific people, not roles or departments — "the IT department owns cyber risk" is not ownership; "Dr. John Lewis owns the ransomware risk — he is responsible for mitigation execution, KRI monitoring, and escalation" is ownership; every risk on the register has a named owner who is accountable for the mitigation plan and status updates; ownership is reviewed when people change roles
- The ERM program is proportionate to the company's size and complexity — Allevio at $4M revenue with 24 employees does not need a 15-person risk committee; it needs: a risk register maintained by Dr. Lewis, a monthly CEO risk review (30 minutes), quarterly Matt Mathison brief, and annual risk identification; the program complexity scales with the business complexity and regulatory environment, not with what a Fortune 500 ERM program looks like
- HITL required: Dr. Lewis designs and maintains ERM program; CEO approves risk appetite and risk acceptance decisions; Matt Mathison quarterly portfolio oversight; new Critical risk same-day escalation; annual program review presented to CEO and Matt Mathison

## System Dependencies
- **Reads from:** Business strategy, all risk sub-programs (rc-risk-register, rc-key-risk-indicator, rc-risk-report), compliance programs (rc-hipaa-security-program, rc-compliance-calendar), insurance program (rc-insurance-program-manager), IT risk (it-security-assessor)
- **Writes to:** ERM program document (SharePoint/RC/<Company>/RiskManagement/Program/); governance structure; escalation protocol; annual program effectiveness report
- **HITL Required:** Dr. Lewis builds and maintains program; CEO approves appetite and acceptance decisions; Matt Mathison quarterly; Critical risk same-day escalation

## Test Cases
1. **Golden path:** Building ERM program for Allevio from scratch → Current maturity: Level 1 (ad hoc); Target: Level 3 in 12 months, Level 4 in 24 months; Program built: risk register (40 risks identified, scored, owned); KRI dashboard (15 KRIs across 4 domains, all with data sources); monthly CEO review (30-min standing agenda item established); quarterly Matt Mathison brief (first sent Q2); risk appetite statement (CEO approved); escalation protocol defined; governance document filed; Month 3 check: 100% KRIs monitored; register updated quarterly; CEO review attendance 3/3; maturity assessment: Level 2 advancing to 3; key gap: risk culture — one department head had 3 risks that weren't escalated; follow-up: "raise the flag" session with leadership team (Truth value)
2. **Edge case:** Matt Mathison asks "how mature is our risk management across the portfolio?" → ERM maturity self-assessment run for all 3 entities: MBL: Level 3 (defined — formal register, KRIs, regular reporting); Allevio: Level 3 advancing to 4 (HIPAA regulatory complexity drives higher maturity investment); HIVE: Level 2 (developing — register exists, reporting inconsistent); portfolio average: Level 2.7; program: advance HIVE to Level 3 in next 6 months (focus on KRI consistency and reporting cadence); Matt Mathison brief prepared; one decision needed: HIVE risk program investment ($X in Dr. Lewis time)
3. **Adversarial:** "We can't afford a formal ERM program — we're a $3M company" → A Level 3 ERM program for a $3M company requires: 4 hours/quarter to maintain the risk register; 1 hour/month for the CEO risk review; 2 hours/quarter for the Matt Mathison brief; an insurance program that is already in place; the tools are SharePoint and Excel (already in M365); the cost is primarily Dr. Lewis's time — approximately 3-4% of a full-time role; the cost of NOT having a program at Allevio: a missed OIG LEIE check that results in an excluded employee providing services = Medicare/Medicaid recoupment and potential exclusion; a HIPAA breach without a documented risk analysis = OCR fine that could exceed annual revenue; the ERM program is not a luxury

## Audit Log
ERM program documents retained with version history. Maturity assessments retained annually. CEO approval records retained. Matt Mathison program briefings retained. Escalation protocol execution records retained. Risk ownership records retained.

## Deprecation
Retire when portfolio companies have dedicated risk management officers who own the ERM program design, implementation, and annual effectiveness assessment — with Dr. Lewis contributing to portfolio-level ERM integration and AI/technology risk governance. Matt Mathison quarterly portfolio risk oversight is a permanent governance requirement.
