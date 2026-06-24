---
name: sec-security-okr-tracker
description: "Track and report security Objectives and Key Results (OKRs) for MBL portfolio companies. Use when the user says 'security OKRs', 'security objectives', 'security KPIs', 'security KRs', 'security metrics', 'security scorecard', 'security performance', 'security goals', 'security targets', 'security progress', 'security roadmap progress', 'security program progress', 'security milestones', 'security accountability', 'measure security', 'security measurement', 'security reporting', 'CISO dashboard', 'security dashboard', 'security status report', 'security program status', 'security initiative', 'security quarterly review', 'security annual review', 'security planning', 'security annual planning', 'next year security', 'next year security plan', 'security budget', 'security investment', 'security ROI', 'security cost', 'security spend', 'security portfolio', 'portfolio security status', 'Matt Mathison security', 'security for Matt', 'executive security briefing', 'board security briefing', 'security reporting to leadership', 'security maturity', 'maturity improvement', 'security maturity model', or 'CMMI security'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive|all>] [--period <quarterly|annual>] [--action <plan|review|report|brief>] [--audience <entity-ceo|matt-mathison>]"
---

# Sec Security OKR Tracker

Track and report security Objectives and Key Results (OKRs) for MBL portfolio companies — translating the security program into measurable outcomes that communicate progress to entity CEOs and Matt Mathison. Security OKRs answer the question Matt Mathison and entity CEOs actually need answered: "Are we getting more secure? What did we invest? What did we get for it?"

## When to Use
- Setting security OKRs for a new year or quarter
- Preparing the quarterly security progress report for entity CEO
- Building the annual portfolio security briefing for Matt Mathison
- Measuring security program ROI and maturity improvement

## Security OKR Framework

```
MBL SECURITY OBJECTIVES (annual — Dr. Lewis sets per entity; entity CEO reviews):

  OBJECTIVE 1: HIPAA COMPLIANCE FULLY MAINTAINED (Allevio)
    KR1: 0 unremediated HIPAA required specification gaps (quarterly audit)
    KR2: 100% workforce HIPAA training completion by December 31
    KR3: Annual risk analysis completed by March 31
    KR4: All BAAs current; 0 PHI flowing to vendors without BAA
    
  OBJECTIVE 2: SECURITY PROGRAM MATURITY IMPROVEMENT
    KR1: Security program maturity level: [Start level] → [Target level] by year-end
    KR2: M365 Secure Score: [Start] → [Target] by December 31
    KR3: Phishing simulation click rate: [Start%] → <[Target%] by December 31
    KR4: Patch compliance: 95% within SLA for all entities
    
  OBJECTIVE 3: CREDENTIAL AND ACCESS HYGIENE
    KR1: MFA coverage: 100% of all entity M365 accounts by Q1
    KR2: Quarterly access reviews completed on time: 4/4 per year per entity
    KR3: All API keys rotated quarterly: 100% compliance
    KR4: 0 departed employees with active access at end of any quarter
    
  OBJECTIVE 4: INCIDENT PREPAREDNESS
    KR1: Annual tabletop exercise completed for each entity
    KR2: IR plan: current version tested; entity CEO knows their role
    KR3: Backup restore test: quarterly; annual full test; all pass
    KR4: Phishing response: Type 3 (credential entry) contained within 60 minutes

  OBJECTIVE 5: SECURITY INVESTMENT ROI
    KR1: Security program cost vs. prior year: [$ or %]
    KR2: Incidents prevented or contained: [N] (estimated based on controls active)
    KR3: Cyber insurance premium vs. prior year: [$ and %] — goal: flat or reduced
    KR4: Compliance gaps that would have been audit findings: [N resolved this year]

OKR SCORING:
  1.0: Fully achieved (≥90% of target)
  0.7: Partially achieved (70-89% of target)
  0.5: Meaningful progress (50-69%)
  0.3: Limited progress (<50%)
  0.0: Not started or abandoned
  
  Portfolio security health: average OKR score across entities
  Target: ≥0.7 on all KRs; ≥0.9 on HIPAA compliance KRs (Allevio)
  
SECURITY INVESTMENT REPORTING (annual — Matt Mathison):

  Format: 1-page BLUF → 2-3 pages detail
  
  BLUF section:
    Portfolio security investment: $[Total] in [Year]
    Security program value: maturity [Level X→Y]; incidents: [N] major, [N] minor
    HIPAA compliance: [Compliant / Gaps found and resolved]
    Recommended [Year+1] investment: $[Total] — [BLUF rationale]
    
  Investment breakdown:
    Tool costs: M365 Business Premium security features; Defender; BitWarden; pentest
    Labor: Dr. Lewis security time allocation per entity (approximate hours/year)
    Incidents: cost of any incidents (response; recovery; notification if applicable)
    ROI narrative: "The phishing simulation program caught [N%] of employees clicking
                   before training; now [N%] — fewer clicks = fewer credential compromises
                   = lower incident cost. Estimated value: [$ avoided per incident × N incidents prevented]"
    
QUARTERLY ENTITY CEO BRIEFING FORMAT:
  One page; 5 bullet points maximum; BLUF at top:
  "Security status for [Entity] — [Quarter]: [Green/Yellow/Red]"
  
  Bullet 1: Overall status + 1 notable achievement
  Bullet 2: Any incidents this quarter (count; resolution; learnings)
  Bullet 3: OKR progress (2-3 KRs; on track / off track / completed)
  Bullet 4: One risk or gap to be aware of (with remediation plan)
  Bullet 5: Next quarter focus
  
  No more than 1 page. Entity CEOs are busy; dense reports get skimmed.
  
ANNUAL PORTFOLIO BRIEFING FOR MATT MATHISON:
  2-3 pages; BLUF first
  Portfolio-level view (not entity-by-entity detail)
  Executive-level framing: risk reduction; investment; compliance status
  Recommendations: where to invest in [Year+1]; any entity at elevated risk
  Dr. Lewis attestation: "As of [Date], all critical HIPAA controls are in place at Allevio;
    no material security gaps exist at any portfolio entity."
```

## Output Format

```markdown
# Security OKR Review — [Entity/Portfolio] | [Quarter/Year] | [Date]
**Program Owner:** Dr. John Lewis | **Portfolio security health:** [Green/Yellow/Red]

---

## Objective 1: HIPAA Compliance (Allevio)
| Key Result | Target | Current | Score |
|-----------|--------|---------|-------|
| 0 unremediated HIPAA gaps | 0 | [N] | [0.0-1.0] |
| 100% training completion | 100% | [N]% | |
| Annual risk analysis complete | March 31 | ✅/In progress | |
| All BAAs current | 0 gaps | [N] gaps | |

---

## Objective 2: Security Program Maturity
| Key Result | Target | Current | Score |
|-----------|--------|---------|-------|
| Maturity level | Level [N] → Level [N+1] | Level [N.X] | |
| M365 Secure Score | [N] → [Target] | [Current] | |
| Phishing click rate | <[N%] | [Current%] | |
| Patch compliance | 95% | [Current%] | |

---

## Annual Investment Summary (Year-end only)
**Total security investment:** $[N]
**Security program ROI:** [Narrative — incidents prevented; compliance maintained]
**Recommended [Year+1] investment:** $[N] — [BLUF]
```

## Output Contract
- Security OKRs must be set at the start of the year and reviewed quarterly — security programs without defined outcomes drift; Dr. Lewis sets security OKRs for each entity in January (aligned with the security roadmap from sec-security-roadmap-planner); the entity CEO reviews and agrees; quarterly progress is reported against those agreed-upon targets; when a KR is off track, Dr. Lewis reports it to the entity CEO with a remediation plan, not with an apology; the entity CEO can adjust resources (budget; IT time) if a critical KR is at risk; this feedback loop is what makes the security program accountable rather than a black box that costs money and produces reports nobody reads
- The annual portfolio security briefing for Matt Mathison is a strategic document, not a technical report — Matt Mathison does not need to know that Allevio's M365 Secure Score is 74; he needs to know whether the portfolio's security posture represents an acceptable risk at his investment level; the briefing answers: are we HIPAA-compliant? (yes/no and how we know); did we have any material security incidents? (count; resolution; financial impact); are we spending security dollars wisely? (investment vs. maturity improvement); what are the top 2-3 remaining risks? (with mitigation plans); what do we need next year? (investment recommendation with rationale); Dr. Lewis writes this briefing as though presenting to an investor board, not a security committee — BLUF; plain language; action-oriented; no jargon; investor mindset framing
- HITL required: OKR setting → entity CEO reviews and agrees in January; entity CEO can reject or modify proposed KRs; quarterly OKR review → entity CEO receives 1-page briefing; any KR off-track → Dr. Lewis + entity CEO discuss remediation; resource (budget; IT time) allocation to get back on track; annual portfolio briefing → Matt Mathison receives and acknowledges; Dr. Lewis attestation signature; investment recommendation → Matt Mathison decision on Year+1 security budget per entity; entity CEO budget approval for security tool spend above current baseline

## System Dependencies
- **Reads from:** All sec-* skill outputs (every skill produces a data point for OKR measurement); M365 Secure Score (quarterly — Objective 2, KR2); phishing simulation results (sec-security-awareness-trainer — KR3); patch compliance reports (sec-patch-compliance-tracker — KR4); access review records (sec-access-review-coordinator — KR on quarterly review timing); HIPAA safeguard status (sec-hipaa-security-officer; sec-allevio-security-monitor — Objective 1); incident records (sec-incident-responder — Objective 4); backup test records (sec-backup-security-validator); annual audit report (sec-security-audit-coordinator — maturity rating); security investment cost tracking (Dr. Lewis maintained — tool costs; labor estimates)
- **Writes to:** Quarterly OKR scorecard (SharePoint → [Entity] → Security → OKRs → [Year]-Q[N]-OKR.xlsx); entity CEO quarterly briefing (1-page; SharePoint → [Entity] → Security → Entity-CEO-Briefings → [Quarter-Year]); annual portfolio security briefing (Matt Mathison — 2-3 pages; SharePoint → MBL → Security → Portfolio-Briefings → [Year]-Annual); annual OKR reset document (January; entity CEO agreement; SharePoint); investment recommendation (feeds Matt Mathison budget planning; Dr. Lewis prepares)
- **HITL Required:** OKR setting → entity CEO agrees January; KR off-track → entity CEO + Dr. Lewis discuss; resource allocation decision → entity CEO + Dr. Lewis; quarterly briefing → entity CEO receives + acknowledges; annual portfolio briefing → Matt Mathison receives + acknowledges; Dr. Lewis attestation signature; Year+1 investment recommendation → Matt Mathison decision; entity CEO budget approval for above-baseline security spend

## Test Cases
1. **Golden path:** Q3 OKR review for Allevio. Dr. Lewis reviews progress: Objective 1 (HIPAA Compliance): KR1 — 0 unremediated gaps ✅ (1.0); KR2 — training 87% complete (target 100% by Dec 31 — on track for 1.0 by year-end; 0.7 now); KR3 — risk analysis complete March ✅ (1.0); KR4 — all BAAs current ✅ (1.0). Objective 2 (Maturity): M365 Secure Score 68 → target 75 (currently at 71 — 0.7); phishing click rate 22% → target <15% (currently 18% after Q3 sim — trending right; 0.6). Objective 3 (Credentials): MFA 100% ✅ (1.0); access reviews 3/4 on time ✅ (Q4 due); API keys 80% rotated (1 overdue — 0.8). Entity CEO briefing: "Q3: Green. HIPAA compliance fully maintained. Phishing click rate improving (22%→18%). M365 Secure Score on track for year-end target. Q4 focus: complete workforce training; finish Secure Score push."
2. **Edge case:** Mid-year, an entity CEO asks for a security investment breakdown to justify the security program budget: Dr. Lewis provides: "Allevio security investment YTD: (1) M365 Business Premium security features (Defender; Intune; DLP): included in existing M365 subscription — $0 incremental. (2) BitWarden Business vault: $3/user × 20 users × 6 months = $360. (3) Annual penetration test: $8,000 (amortized: $4,000 YTD). (4) Phishing simulation platform: $500 YTD. (5) Dr. Lewis security labor (approximate): 4 hours/week × 26 weeks × $[blended rate]. Total incremental security investment YTD: ~$[total]. Security value generated: HIPAA compliance maintained (OCR fine avoidance: $50,000-$1.9M for a breach); 3 phishing credential attempts caught and contained before compromise (estimated breach cost avoided: $[N × avg breach cost]); cyber insurance terms maintained (0 claims). ROI: security investment generates risk mitigation value significantly in excess of cost."
3. **Adversarial:** Matt Mathison asks during the annual portfolio briefing: "Our security spend went up 30% this year — what did we actually get for it?": Dr. Lewis presents: "The 30% increase covered three specific investments: (1) Penetration tests for Allevio and MBL HoldCo ($12K) — we found 4 high findings before attackers did; remediation cost $2K; estimated breach cost avoided if any of these had been exploited: $150K-$500K. (2) Expanded DLP coverage (M365 Compliance add-on; $3K/year) — caught 2 PHI email incidents before they became reportable breaches; HHS notification avoidance value: significant reputational + legal cost. (3) Security awareness training platform upgrade ($2K) — phishing click rate across portfolio dropped from 24% to 11%; 13 percentage points × estimated [N] employees × estimated click-to-breach conversion rate = [N] avoided incidents. The security program is returning $8-12 in risk mitigation for every $1 invested. The 30% increase in spend produced approximately $[N] in avoided incident cost. For Year+1, I'm recommending the same level with 2 additions: [recommendations]."

## Audit Log
Annual OKR setting records (entity; objectives; KRs; targets; entity CEO agreement; Dr. Lewis; January; SharePoint). Quarterly OKR review records (entity; quarter; KR scores; entity CEO briefing date; SharePoint). Off-track KR records (KR; status; entity CEO discussion; remediation plan; resource allocation; resolution). Annual portfolio security briefing records (year; content; Matt Mathison receipt; Dr. Lewis attestation; SharePoint). Security investment records (tool costs; labor estimates; year; entity; Dr. Lewis maintained). Matt Mathison Year+1 investment decision records (recommendation; decision; date; entity budget approvals).

## Deprecation
OKR objectives reviewed annually in December (adjust for entity maturity; new priorities; completed objectives). KR targets updated annually based on prior year performance and next year ambition. Portfolio briefing format reviewed annually with Matt Mathison (what does he find most valuable?). Security investment tracking updated when entity security tool subscriptions change. Maturity scoring reviewed when entity security programs advance to Level 4 (targets tighten at higher maturity).
