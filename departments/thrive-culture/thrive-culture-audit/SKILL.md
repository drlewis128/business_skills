---
name: thrive-culture-audit
description: "Audit an MBL entity's culture against THRIVE standards. Use when the user says 'culture audit', 'THRIVE audit', 'culture review', 'culture deep dive', 'culture investigation', 'culture problem', 'culture issue', 'culture breakdown', 'culture crisis', 'culture diagnosis', 'diagnose culture', 'what is wrong with our culture', 'culture dysfunction', 'culture toxicity', 'toxic culture', 'culture red flags', 'culture warning signs', 'audit culture', 'culture health check', 'deep culture assessment', 'culture due diligence', 'M&A culture audit', 'acquisition culture', 'pre-deal culture', 'post-acquisition culture', or 'turnaround culture audit'."
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|target-company>] [--trigger <routine|incident|ma|leadership-change|pattern>] [--depth <quick|standard|deep>]"
---

# Thrive Culture Audit

Audit an entity's culture against THRIVE standards with enough depth to identify root causes, not just symptoms. A culture audit is triggered when the baseline signals dysfunction, when an M&A target requires cultural due diligence, or when a pattern of incidents suggests a systemic culture issue. The output is a root cause finding with a prioritized remediation plan — not a culture report that sits in a drawer.

## When to Use
- Entity culture baseline drops below 3.5 overall or below 3.5 on Integrity
- Pattern of HR incidents (3+ in 90 days) suggesting systemic issue
- M&A target due diligence — is there a cultural liability?
- Post-acquisition — what culture did we inherit?
- Leadership change — did culture change under new leadership?

## Culture Audit Framework

```
AUDIT DEPTH SELECTION:
  Quick (2-4 hours): Survey + incident review + 3 leadership interviews
    Use when: quarterly check shows sudden decline; early warning signal
    
  Standard (1-2 days): Full THRIVE baseline + 10+ interviews + document review
    Use when: baseline below 3.5; pattern of incidents; M&A target
    
  Deep (3-5 days): Full baseline + all-hands interviews + process/output analysis + HR records deep dive
    Use when: Integrity score below 3.0; leadership under review; Matt Mathison engaged;
              post-acquisition cultural liability assessment

AUDIT METHODOLOGY:

  PHASE 1 — DOCUMENT REVIEW:
    HR incident records (last 12 months): complaints; investigations; separations; patterns
    Exit interview data (last 12 months): departure reasons → THRIVE pillar mapping
    Performance review data: THRIVE scores by pillar; trends; outlier ratings
    THRIVE pulse survey history: trend; specific pillar trajectory
    
  PHASE 2 — BEHAVIORAL OBSERVATION:
    Meeting observation (1-2 leadership team meetings): who speaks; who defers; what is not said
    Email/Teams communication samples (with entity CEO consent): tone; escalation patterns
    Output review: delivery rate; commitment-keeping; quality over time
    
  PHASE 3 — INTERVIEWS (anonymous unless consent given):
    Entity CEO: "What do you see as the top 2 culture strengths? Top 2 gaps?"
    Direct reports to entity CEO (each individually): same questions + "What would you change?"
    Representative sample of ICs (3-5): "How would you describe this organization's culture?"
    Departing employees (if reachable): "What really drove your decision to leave?"
    
  PHASE 4 — THRIVE PILLAR ROOT CAUSE:
    For each pillar scoring below target:
      What is the observable symptom?
      What is the root cause (leadership behavior? systemic incentive? policy? specific person?)
      What is the leverage point for change?
      
ROOT CAUSE CATEGORIES:
  Leadership behavior: The problem is modeled from the top (most common; hardest to fix)
  Incentive misalignment: The culture says X but the reward system rewards Y
  Structural issue: The org design creates the culture problem (e.g., no feedback loops)
  Historical wound: A past incident created lasting dysfunction (e.g., layoff handled badly)
  Individual actor: One person is driving a disproportionate culture impact
  
ENTITY CONTEXT:
  Allevio: Culture audit must include PHI handling compliance culture (HIPAA integrity dimension)
  HIVE: Safety culture is a legal and life-safety dimension — field safety = Respect + Integrity
  Column6: Client reporting culture (Truth) and agency relationship norms (Respect) are high-stakes
  M&A targets: Audit focuses on Integrity and Truth as primary indicators of hidden liability
```

## Output Format

```markdown
# THRIVE Culture Audit — [Entity] | [Date] | [Trigger]
**Auditor:** Dr. John Lewis | **Depth:** [Quick/Standard/Deep] | **Matt Mathison review:** [Required/Not required]

---

## Audit Summary (BLUF)
[3-sentence BLUF: overall health; worst finding; top recommended action]

---

## THRIVE Pillar Findings

| Pillar | Score | Root Cause | Severity |
|--------|-------|-----------|---------|
| T — Truth | [score] | [1-sentence] | 🟢/🟡/🔴 |
| H — Hustle | | | |
| R — Respect | | | |
| I — Integrity | | | |
| V — Value | | | |
| E — Enjoy | | | |

---

## Root Cause Analysis
**Primary root cause:** [Leadership behavior / Incentive misalignment / Structural / Historical / Individual actor]
**Evidence:** [3-5 specific observations]

---

## Remediation Plan
| Priority | Action | Owner | Timeline | Expected impact |
|---------|--------|-------|---------|----------------|
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |

---

## Escalation Required?
[Yes/No] — [If yes: what and to whom]
```

## Output Contract
- Culture audits must name root causes, not just symptoms — "the team doesn't communicate well" is a symptom; "the entity CEO regularly dismisses bad news in team meetings, which has trained direct reports to withhold problems until they explode" is a root cause; the audit cannot be effective unless it names the actual drivers, including when the driver is the entity CEO or a specific individual; this requires courage from the auditor and trust from the entity CEO that the audit is meant to help; Dr. Lewis frames all audit findings as "here is what is creating the culture problem and here is how we fix it" rather than as blame; but the truth must be named — a THRIVE culture audit that avoids naming the problem is itself a THRIVE violation (Truth pillar)
- M&A culture audits produce a specific cultural liability rating — when auditing a deal target, the output must include a clear assessment: is the culture a liability that would survive post-acquisition integration, require a leadership change to fix, or kill the deal? Matt Mathison needs this information before the deal closes; a culture that scores 2.5 on Integrity in a target company should be a deal-breaker or a significant purchase price discount factor, because integrity cultures don't change quickly and post-acquisition integration problems multiply existing cultural dysfunction; the culture audit finding goes directly into the deal memo
- HITL required: Integrity finding below 3.0 → Dr. Lewis + Matt Mathison review within 48hr; individual actor identified as root cause → entity CEO + Dr. Lewis determine action plan; leadership behavior identified as root cause → Matt Mathison engagement; M&A audit → Matt Mathison reviews before close; remediation plan → entity CEO approves and commits; post-audit check-in at 30 and 60 days → Dr. Lewis verifies remediation progress

## System Dependencies
- **Reads from:** HR incident records (hr-employee-relations); exit interview data (thrive-exit-interview-analyzer); THRIVE pulse history (thrive-pulse-survey-builder); THRIVE baseline trend (thrive-culture-baseline); performance review THRIVE scores (hr-performance-review); meeting observation (direct — auditor present); entity CEO + direct report interviews (direct collection)
- **Writes to:** Culture audit report (SharePoint → [Entity] → Culture → THRIVE-Audit → [Date]-Audit); Matt Mathison briefing (required if Integrity <3.0 or Deep audit); remediation plan (Monday.com → [Entity] → Culture tasks → owner → deadline); entity CEO briefing (delivered in person or via Teams before distribution); M&A culture memo (deal file if applicable)
- **HITL Required:** Integrity <3.0 → Dr. Lewis + Matt Mathison within 48hr; individual actor → entity CEO + Dr. Lewis; leadership root cause → Matt Mathison; M&A → Matt Mathison before close; remediation plan → entity CEO approves; 30/60-day follow-up → Dr. Lewis verifies

## Test Cases
1. **Golden path:** Standard audit triggered by Allevio culture baseline dropping from 3.9 to 3.4 in one quarter. Document review: 4 HR complaints in Q3 (up from 1). Exit data: 3 departures, all citing "management style." Interview finding: one specific manager is dismissed by multiple reports as "impossible to please and never acknowledges good work" — Enjoy and Respect impact identified. Root cause: Individual actor (1 manager; supervisory style). Remedy: 60-day coaching with Dr. Lewis; if no improvement, PIP. Entity CEO briefs the manager; Dr. Lewis provides coaching framework. 30-day check-in scheduled.
2. **Edge case:** M&A target (healthcare MSO in Phoenix). Deep culture audit. Interview finding: "The owner consistently adjusts billing codes to optimize reimbursement — most of us are uncomfortable with it but he says it's standard practice." Document review: 2 CMS audits in 3 years. THRIVE finding: Integrity score 2.1. Culture audit report: "Cultural liability — Integrity deficit appears to be owner-modeled and systemic. Risk: post-acquisition compliance exposure (HIPAA; CMS). Recommend: this finding is a deal-breaker or a purchase price reduction with a compliance remediation escrow. Matt Mathison decision required before LOI submission."
3. **Adversarial:** Entity CEO says: "This audit feels like you're judging us — the culture issues are temporary, we're just going through a tough quarter." Dr. Lewis: "I hear that — and I want to be clear that this isn't about judgment, it's about helping you. The data I'm seeing: three departures in 60 days, all citing management concerns; an HR complaint pattern; a Hustle score that's dropped 0.8 in two quarters. These are real signals. Here's what I'd rather do than argue about whether there's a problem: let me share specifically what I found and my recommended actions. If you disagree with my read of the root cause, let's debate that specifically. The goal is to fix it — not to document it."

## Audit Log
Audit records retained in SharePoint (entity; date; depth; trigger; findings; root causes; remediation plan; entity CEO review; Matt Mathison engagement if applicable; Dr. Lewis). M&A audit records retained as deal documents. Remediation tracking records (Monday.com tasks; 30/60-day follow-up; Dr. Lewis verification; outcome). Integrity finding records retained indefinitely (entity; score; root cause; action taken; resolution; Dr. Lewis; Matt Mathison).

## Deprecation
Audit methodology reviewed annually with Matt Mathison. Interview question bank reviewed annually. Root cause categories updated when new patterns emerge in portfolio. M&A audit criteria updated when deal thesis evolves. Entity-specific context reviewed when entity industry or regulatory environment changes.
