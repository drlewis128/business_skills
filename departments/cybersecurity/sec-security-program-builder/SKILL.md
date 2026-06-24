---
name: sec-security-program-builder
description: "Build and manage the information security program for MBL portfolio companies. Use when the user says 'security program', 'build a security program', 'information security program', 'security framework', 'security strategy', 'cybersecurity program', 'cybersecurity strategy', 'security posture', 'improve security posture', 'security maturity', 'security baseline', 'NIST CSF', 'CIS controls', 'security charter', 'security governance', 'security policy', 'security standards', 'security roadmap launch', 'start a security program', 'where do we start with security', 'security program assessment', 'security program review', 'security program status', 'MBL security', 'Allevio security', 'HIVE security', 'Column6 security', or 'portfolio security'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--action <build|assess|roadmap|status>] [--framework <nist|cis|hipaa>]"
---

# Sec Security Program Builder

Build and manage the information security program for MBL portfolio companies — establishing the governance structure, policy framework, control baseline, and continuous improvement cycle that protects each entity's data, systems, and operations. Security programs without governance are point solutions waiting to fail; programs without continuous improvement become compliance theater.

## When to Use
- Building a security program from scratch or assessing the current state
- Establishing security governance (charter, roles, policy hierarchy)
- Selecting a control framework and mapping entity-specific requirements
- Producing the annual security program status report for Dr. Lewis / Matt Mathison

## Security Program Framework

```
MBL PORTFOLIO SECURITY POSTURE:

  Allevio (HIPAA-regulated):
    Primary framework: HIPAA Security Rule (§164.308/310/312) — non-negotiable
    Supplementary: NIST CSF 2.0 / CIS Controls 18
    Key constraint: PHI in every system; BAA required with all vendors touching PHI
    Risk owner: Dr. Lewis (Privacy Officer + IT oversight)
    
  Column6 (data-driven ad tech):
    Primary framework: CCPA/CPRA + SOC 2 readiness
    Key constraint: consumer data in targeting; pixel/tag security; agency data isolation
    Risk owner: Dr. Lewis + Column6 entity CEO
    
  HIVE (oil & gas, Covercy):
    Framework: NIST CSF 2.0 baseline; Covercy platform security
    Key constraint: LP data isolation; Covercy API credential management
    Risk owner: Dr. Lewis + HIVE entity CEO
    
  MBL HoldCo:
    Framework: CIS Controls 18 (implementation group 1)
    Key constraint: Microsoft 365 tenant; Krista.ai integration; financial data
    Risk owner: Dr. Lewis
    
SECURITY PROGRAM STRUCTURE (6 pillars):
  1. Governance: charter, roles, policy hierarchy, reporting cadence
  2. Risk Management: annual risk assessment, risk register, residual risk decisions
  3. Asset Management: inventory (hardware/software/data/cloud); criticality classification
  4. Controls: CIS/NIST/HIPAA mapped controls; implementation status; gap tracking
  5. Incident Response: IR plan, HIPAA breach notification readiness, tabletop tests
  6. Continuous Improvement: metrics, annual assessment, board/Matt Mathison reporting
  
SECURITY ROLES (MBL context):
  Dr. Lewis: Security Program Owner; Privacy Officer (Allevio); final security decisions
  Entity CEO: Security sponsor at entity level; approves entity security budget and policy
  Matt Mathison: Receives annual security briefing; approves portfolio-level security investments
  IT team: Implements and operates controls; reports to Dr. Lewis
  Employees: Follow policies; mandatory annual security awareness training
  
POLICY HIERARCHY:
  Level 1 — Information Security Policy (master; CEO approval; annual review)
  Level 2 — Standards (specific requirements: password, encryption, access)
  Level 3 — Procedures (how to implement: provisioning steps, patch process)
  Level 4 — Guidelines (recommended best practices; not mandatory)
  
  Allevio: HIPAA Policies required at Level 1 (Privacy Policy, Security Policy, Sanction Policy)
  All entities: Acceptable Use Policy; Incident Response Plan; Business Continuity Plan
  
MATURITY LEVELS (1-5):
  1 — Initial: ad hoc; reactive; no formal processes
  2 — Developing: policies exist; inconsistent implementation; risks mostly known
  3 — Defined: processes documented; consistently implemented; metrics tracked
  4 — Managed: metrics drive decisions; proactive; audit-ready
  5 — Optimizing: continuous improvement; threat intelligence integrated; board-level visibility
  
  MBL target: Level 3 minimum for all entities; Level 4 for Allevio (HIPAA)
  Current baseline: entity CEO self-assessment → Dr. Lewis verification
  
ANNUAL SECURITY PROGRAM CYCLE:
  Q1: Annual risk assessment; update risk register; policy reviews
  Q2: Security awareness training (100% completion target); vendor security reviews
  Q3: Tabletop exercise (IR plan test); control effectiveness review
  Q4: Annual security briefing to Matt Mathison; budget for next year; maturity assessment
```

## Output Format

```markdown
# Security Program Status — [Entity] | [Date]
**Security Program Owner:** Dr. John Lewis | **Maturity Level:** [N]/5

---

## Program Health
| Pillar | Status | Last Updated | Gap |
|--------|--------|-------------|-----|
| Governance | 🟢/🟡/🔴 | [Date] | [Gap if any] |
| Risk Management | 🟢/🟡/🔴 | [Date] | [Gap] |
| Asset Management | 🟢/🟡/🔴 | [Date] | [Gap] |
| Controls | 🟢/🟡/🔴 | [Date] | [Gap] |
| Incident Response | 🟢/🟡/🔴 | [Date] | [Gap] |
| Continuous Improvement | 🟢/🟡/🔴 | [Date] | [Gap] |

---

## Top 3 Risks (current)
1. [Risk] — [Likelihood × Impact] — [Mitigation status]

---

## Annual Briefing Summary (Matt Mathison — 1 page)
[BLUF: security posture; top risks; investments needed; no incidents / incidents summary]
```

## Output Contract
- Security program reports to Dr. Lewis and annually to Matt Mathison — not to entity employees as a whole; the annual briefing is 1 page, BLUF-first, focused on: current maturity level vs. target, top 3 risks and status, budget required for gaps, incident summary (if any); Matt Mathison doesn't want a 20-page security document — he wants the answer to "are we protected, what's the risk, and what does it cost to close the gap?"
- HIPAA compliance for Allevio is not optional and not part of the "maturity roadmap" — it is a legal requirement; the HIPAA Security Rule safeguards (administrative, physical, technical) must be implemented regardless of maturity level; the security program's job is to confirm and document HIPAA compliance, not to treat it as a gap to close over time; Dr. Lewis reviews HIPAA control status quarterly; any required safeguard that is not implemented → entity CEO + Dr. Lewis action plan with 30-day timeline
- HITL required: Information Security Policy → entity CEO approves before distribution; annual risk assessment → Dr. Lewis reviews findings; security budget → entity CEO proposes, Dr. Lewis reviews, Matt Mathison approves if >$25K; HIPAA policy changes → Dr. Lewis reviews; incident response plan → entity CEO and Dr. Lewis co-sign; Matt Mathison annual briefing → Dr. Lewis prepares, entity CEO reviews, Matt Mathison receives

## System Dependencies
- **Reads from:** Entity risk register (sec-security-risk-register); asset inventory (entity IT records); HIPAA control mapping (rc-hipaa-security-program); control status (all sec-* skills); incident records (sec-incident-responder); annual security awareness training completion (sec-security-awareness-trainer)
- **Writes to:** Security program status report (SharePoint → [Entity] → Security → Program → Status → [Date]); Matt Mathison annual briefing (1-page; Dr. Lewis prepares); entity CEO security briefing (quarterly); security budget request (entity financial system); policy register (SharePoint → [Entity] → Security → Policies)
- **HITL Required:** Master policy → entity CEO approves; annual risk assessment → Dr. Lewis reviews; budget >$25K → Matt Mathison; HIPAA safeguard gap → entity CEO + Dr. Lewis 30-day plan; IR plan → entity CEO + Dr. Lewis co-sign; Matt Mathison briefing → Dr. Lewis prepares + entity CEO reviews

## Test Cases
1. **Golden path:** Dr. Lewis conducts Q4 annual security program review for Allevio. Maturity assessment: Governance (Level 3 — policies exist; CEO approved; annual review done); Risk Management (Level 3 — risk register maintained; annual assessment completed); Asset Management (Level 2 — inventory incomplete; cloud assets not cataloged); Controls (Level 3 — HIPAA safeguards documented; 85% implemented; patch compliance 94%); Incident Response (Level 3 — IR plan exists; tabletop completed in Q3; HIPAA breach protocol documented); Continuous Improvement (Level 2 — metrics tracked; not consistently reviewed). Overall: Level 2.8 → rounding to Level 3. Gap: Asset Management. Budget ask: $8K for asset inventory tool. Matt Mathison 1-page briefing: "Allevio security at Level 3 maturity. Top risk: asset inventory gaps (cloud SaaS not fully cataloged). No incidents in 2026. $8K budget request for cloud asset discovery tool. HIPAA safeguards 85% implemented; 15% gap has 30-day action plan with entity CEO."
2. **Edge case:** Entity CEO pushes back on security policy: "I don't want to make my team do annual security training — it takes too much time." Dr. Lewis: "Annual security awareness training is required under HIPAA Administrative Safeguards (§164.308(a)(5)) for Allevio — it's not optional. For other entities, it's industry standard and our insurance carrier requires it. The training takes 45-60 minutes per employee per year. I can help you find a platform (KnowBe4 has a free tier) and schedule it during a lower-activity period. Completion is logged and reportable to Matt Mathison. This is one of those requirements that protects the entity if we ever have a breach — 'we trained our employees' is a significant factor in HIPAA enforcement discretion."
3. **Adversarial:** External vendor asks for access to Allevio's security program documentation to complete their "vendor onboarding questionnaire." Dr. Lewis response: "We provide a security questionnaire response to vendors — we don't share our internal security program documentation, policies, or risk register. I'll complete the vendor's security questionnaire with the relevant control assertions. Our policies, risk assessments, and program documentation remain internal."

## Audit Log
Security program status records (annual; maturity assessment; entity; Dr. Lewis review; date; SharePoint). Policy approval records (policy; version; entity CEO approval; date). Annual risk assessment records (assessment; Dr. Lewis review; date). Matt Mathison briefing records (date; content summary; delivery confirmed). HIPAA safeguard gap records (gap; 30-day action plan; entity CEO + Dr. Lewis; resolution date). Security budget records (request; approval; date; entity).

## Deprecation
Security program structure reviewed annually in Q4. Framework references (NIST CSF, CIS Controls) updated when new versions release. HIPAA requirements updated when HHS guidance changes. Matt Mathison briefing format reviewed annually.
