---
name: sec-security-roadmap-planner
description: "Build a cybersecurity improvement roadmap for MBL portfolio companies. Use when the user says 'security roadmap', 'security improvement plan', 'security plan', 'remediation roadmap', 'security gaps', 'fix security gaps', 'security priorities', 'what to fix first', 'prioritize security', 'security backlog', 'security project plan', 'security investment', 'security budget', 'security spending', 'where to invest in security', 'security quick wins', 'security milestones', 'H1 security', 'H2 security', 'quarterly security plan', 'annual security plan', 'security OKRs', 'security goals', 'security targets', 'HIPAA remediation', 'HIPAA gap remediation', 'NIST gap', 'CIS control gap', 'close security gaps', or 'security improvement'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--horizon <90day|annual|3year>] [--budget <$X>]"
---

# Sec Security Roadmap Planner

Build a cybersecurity improvement roadmap for MBL portfolio companies — translating risk assessment findings and control gaps into a prioritized, budgeted, time-bound improvement plan that leadership can approve and track. A security roadmap is not a list of everything wrong — it is the sequence of fixes that reduces the most risk for the least cost, in the order that matters.

## When to Use
- After a security assessment or risk register update
- Building the annual security improvement plan
- Prioritizing security investments when budget is limited
- Presenting security needs to entity CEO or Matt Mathison

## Security Roadmap Framework

```
ROADMAP PLANNING PRINCIPLES:
  1. Risk-driven: prioritize controls that address the highest-impact, most-likely risks
  2. Quick wins first: deploy high-impact/low-cost controls in H1 (builds momentum and trust)
  3. Foundation before sophistication: fix identity and patching before deploying SIEM
  4. HIPAA non-negotiable: required HIPAA safeguards are not roadmap items — they are immediate
  5. Budget-realistic: every roadmap item has an estimated cost and owner
  
PRIORITY TIERS:
  P0 — Immediate (within 30 days):
    HIPAA required safeguard not implemented (Allevio)
    Active vulnerability with known exploit (CVSS ≥9.0)
    No MFA on any admin account
    PHI accessible without authentication
    
  P1 — Short term (30-90 days):
    CVSS 7.0-8.9 vulnerabilities unpatched >30 days
    Missing encryption on PHI data at rest
    No security awareness training in 12 months
    No offboarding process for departed employees (accounts still active)
    
  P2 — Medium term (90 days - 6 months):
    CIS Controls 1-6 not implemented (basic cyber hygiene)
    No documented IR plan
    No asset inventory (can't protect what you don't know about)
    Legacy OS (Windows Server 2012 R2 or older) still in production
    
  P3 — Long term (6-12 months):
    Advanced controls (SIEM, EDR, UEBA)
    SOC 2 readiness work
    Zero Trust architecture planning
    Security program maturity advancement
    
ROADMAP STRUCTURE (annual):
  H1 (Q1-Q2) — Foundation:
    Quick wins: MFA everywhere; patching cadence; offboarding automation
    Compliance gates: HIPAA safeguards 100% for Allevio
    Cost: typically $5K-$25K (mostly process + existing tools)
    
  H2 (Q3-Q4) — Capability:
    Detection: EDR for endpoints; SIEM or log aggregation
    Response: tabletop exercise; IR plan update
    Compliance: vendor security reviews; access reviews
    Cost: varies ($10K-$50K depending on tooling decisions)
    
MBL PORTFOLIO-SPECIFIC PRIORITIES:

  Allevio (HIPAA):
    P0: HIPAA Security Rule safeguards — all required; any gap = immediate
    P0: BAA in place with all vendors accessing PHI
    P1: PHI encryption at rest and in transit (AdvancedMD; Marshall Medical Billing)
    P1: Access reviews for AdvancedMD users (terminated employee access)
    P2: Workforce training completion (100% target)
    P3: HIPAA risk analysis documented and current
    
  Column6 (CCPA):
    P1: Consumer data mapping (what data collected; where stored; who has access)
    P1: Pixel/tag security review (are partner tags collecting data they shouldn't?)
    P2: CCPA response process (consumer rights requests)
    P3: SOC 2 Type II readiness (if agency clients begin requesting it)
    
  HIVE (Covercy):
    P1: Covercy API credentials secured (not in code; rotated quarterly)
    P1: LP data access review (who can see LP records in Covercy?)
    P2: Covercy backup verification
    P3: HIVE data isolation review (LP data vs. other entity data)
    
  MBL HoldCo (Krista.ai / Microsoft 365):
    P0: M365 Secure Score >60/100 (MFA, legacy auth blocked, Safe Links)
    P1: Krista.ai integration credential management
    P1: Admin account separation (dedicated admin accounts; not daily-use accounts)
    P2: Conditional Access policies (device compliance for M365 access)
    
ROADMAP DOCUMENT STRUCTURE:
  1. Executive summary (1 paragraph; risk reduction + cost)
  2. Current state (maturity; top 3 risks)
  3. H1 plan (Q1-Q2; quick wins; P0 and P1 items; budget)
  4. H2 plan (Q3-Q4; capability; P2 items; budget)
  5. Long-term horizon (P3; 3-year view; budgets estimated)
  6. Success metrics (what "done" looks like for each milestone)
```

## Output Format

```markdown
# Security Roadmap — [Entity] | [Year] | [Date]
**Owner:** Dr. John Lewis | **Entity CEO reviewed:** [Yes/No] | **Total budget:** $[X]

---

## H1 (Q1-Q2) — Foundation
| Priority | Control / Action | Owner | Cost | Due | Status |
|----------|-----------------|-------|------|-----|--------|
| P0 | [HIPAA gap or critical vuln] | [IT/Dr. Lewis] | $[X] | [Date] | 🔴 Not started |
| P1 | [MFA enforcement] | IT | $0 | [Date] | 🟡 In progress |

---

## H2 (Q3-Q4) — Capability
| Priority | Control / Action | Owner | Cost | Due | Status |
|----------|-----------------|-------|------|-----|--------|
| P2 | [EDR deployment] | IT | $[X] | Q3 | 🟢 Planned |

---

## Budget Summary
| Period | Estimated Cost | Approved |
|--------|---------------|---------|
| H1 | $[X] | Yes/No |
| H2 | $[X] | Yes/No |
| **Total** | **$[X]** | |
```

## Output Contract
- P0 items are not roadmap items — they are active remediation requirements; a P0 security gap does not get a "30-day deadline" that slides into a roadmap column; it gets a named owner, a specific fix action, and daily status tracking until resolved; Dr. Lewis escalates P0 gaps to entity CEO within 24 hours of identification; if a P0 gap involves PHI exposure or an active exploit, Matt Mathison is notified; roadmap planning is for P1-P3 items; P0 items are incident-level responses
- Budget estimates are ranges, not exact quotes — the roadmap shows estimated cost ranges that are directionally accurate for planning; exact costs come from vendor quotes during procurement; the roadmap budget is used to get approval-in-principle from entity CEO (and Matt Mathison if >$25K); once approved, actual procurement uses the standard vendor evaluation process; Dr. Lewis does not commit to a specific vendor in the roadmap — the roadmap commits to a capability ("EDR protection for all endpoints"), and the vendor is selected during procurement
- HITL required: P0 gaps → entity CEO notified within 24 hours; Dr. Lewis escalates to Matt Mathison if PHI or active exploit; roadmap document → entity CEO approves before execution; budget >$25K → Matt Mathison approves; HIPAA gaps in roadmap → must confirm these are P0 (immediately resolved) not P1-P3; roadmap progress → Dr. Lewis reviews monthly; missed milestones → entity CEO notified; annual roadmap → entity CEO approves; 3-year view → Matt Mathison briefed

## System Dependencies
- **Reads from:** Security risk register (sec-security-risk-register); vulnerability scan results (sec-vulnerability-scanner); HIPAA control gaps (rc-hipaa-security-program); CIS Controls assessment (sec-security-program-builder); asset inventory; current security budget
- **Writes to:** Security roadmap document (SharePoint → [Entity] → Security → Roadmap → [Year]); entity CEO security investment briefing; security budget request (entity financial system); IT work queue (Monday.com — security projects); Matt Mathison portfolio security summary (quarterly)
- **HITL Required:** P0 gaps → entity CEO 24hr + Matt Mathison if PHI/active exploit; roadmap → entity CEO approves; budget >$25K → Matt Mathison; HIPAA gaps → confirm P0 treatment; missed milestones → entity CEO notified; annual roadmap → entity CEO approval

## Test Cases
1. **Golden path:** Annual security assessment for MBL HoldCo reveals 3 gaps: (1) 2 admin accounts without MFA (P0); (2) Legacy auth not fully blocked in M365 (P1); (3) No Conditional Access policies for device compliance (P2). Roadmap: P0 immediately — IT enables MFA on both accounts today; entity CEO notified. H1: block legacy auth in M365 (1 week; $0 — built-in M365 feature; IT owner). H2: deploy Conditional Access policies (Q3; $0 if using existing M365 Business Premium licenses; IT owner). Total cost: $0 — all gaps resolved with existing tooling. Dr. Lewis documents in security program status.
2. **Edge case:** Column6 entity CEO asks to deprioritize the CCPA consumer data mapping project ("we don't really have California customers"): Dr. Lewis: "CCPA threshold is >$25M revenue or >100K consumer records or >50% revenue from selling data annually — before we deprioritize, I want to confirm which threshold applies to Column6. If Column6's ad campaigns reach California residents (which CTV by definition does), the 100K consumer record threshold likely applies. I'll verify with the entity CEO: (1) How many unique consumer IDs are in the targeting data in a given year? (2) Does any of that data qualify as 'personal information' under CCPA (IP address, device ID, browsing behavior — all qualify)? Once we confirm the analysis, if CCPA applies, the consumer data mapping is at minimum a P2 item. If it doesn't apply, we document that determination and the basis for it."
3. **Adversarial:** IT team wants to deploy a SIEM before fixing patching compliance (currently at 78%): Dr. Lewis: "SIEM is a P3 capability and patching is a P1 control. Deploying a SIEM into an environment with 22% unpatched systems means: (1) the SIEM will generate noise about the patching gaps you haven't fixed; (2) you'll spend SIEM budget before closing the risks it would detect; (3) the foundational control (patching) is more impactful than the detection tool built on top of it. Sequence: patch compliance to 95%+ first (H1); then deploy SIEM (H2 or next year). I know SIEM is more interesting — but foundation before sophistication."

## Audit Log
Security roadmap records (annual; entity; Dr. Lewis approval; entity CEO approval; date; SharePoint). P0 gap records (gap; entity CEO notification; Dr. Lewis escalation if PHI/exploit; resolution date). Budget approval records (roadmap budget; approval level; date). Missed milestone records (item; original due; missed date; entity CEO notification; revised plan). HIPAA P0 treatment records (Allevio — gap; immediate resolution confirmation; Dr. Lewis document).

## Deprecation
Roadmap reviewed quarterly for milestone progress. Annual roadmap replaced each Q4 with next-year plan. Framework references updated when NIST CSF or CIS Controls version changes. HIPAA priority guidance updated when HHS enforcement priorities change.
