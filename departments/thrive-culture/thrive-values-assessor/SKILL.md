---
name: thrive-values-assessor
description: "Assess individual or team alignment with MBL THRIVE values (Truth, Hustle, Respect, Integrity, Value, Enjoy). Use when the user says 'THRIVE assessment', 'values assessment', 'THRIVE alignment', 'values alignment', 'culture fit assessment', 'THRIVE score', 'values score', 'values check', 'THRIVE check', 'culture assessment', 'values audit', 'THRIVE audit', 'team values', 'values alignment score', 'measure THRIVE', 'THRIVE measurement', 'assess culture', 'assess values', 'values evaluation', 'THRIVE evaluation', 'culture evaluation', 'does this person fit', 'culture fit check', 'THRIVE fit', 'values misalignment', 'values conflict', 'Callie THRIVE', 'Callie playbook', 'THRIVE playbook assessment', or 'portfolio culture check'."
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "[--subject <individual|team|entity>] [--entity <mbl|allevio|hive|column6>] [--context <hiring|performance|incident|quarterly>]"
---

# Thrive Values Assessor

Assess individual or team alignment with MBL's THRIVE values — Truth, Hustle, Respect, Integrity, Value, Enjoy — producing a structured score that informs hiring, performance, coaching, and portfolio culture decisions. THRIVE alignment is a core filter at MBL Partners; misalignment on any pillar, especially Integrity, is a kill criterion.

## When to Use
- Evaluating a candidate's THRIVE alignment during hiring (after technical screens pass)
- Assessing a team member's THRIVE alignment in a performance or PIP context
- Quarterly THRIVE pulse assessment for a team or entity
- Portfolio company culture due diligence (M&A or onboarding)

## THRIVE Assessment Framework

```
THRIVE DEFINITION (MBL Partners — non-negotiable):
  T — Truth:      Radical honesty; no sugarcoating; accurate reporting of facts even when uncomfortable
  H — Hustle:     Execution velocity; urgency; ownership; outwork the competition
  R — Respect:    Treat everyone with dignity; listen to understand; include diverse perspectives
  I — Integrity:  Do what you say; no hidden agendas; ethical in all dealings; KILL CRITERION
  V — Value:      Create measurable value; ROI mindset; don't do things that don't matter
  E — Enjoy:      Find meaning in the work; build a culture people want to be part of

SCORING MODEL (per pillar, 1-5):
  5 — Exemplary: This pillar is a demonstrated strength; proactively models for others
  4 — Strong: Consistently demonstrates this value; reliable in this area
  3 — Developing: Shows the value but inconsistently; needs coaching to stabilize
  2 — Gap: Inconsistent or weak; has shown opposite behaviors at times
  1 — Misaligned: Repeated behavior contrary to this value; active problem

KILL CRITERION:
  Integrity ≤ 2 = DO NOT HIRE / IMMEDIATE PIP / SEPARATION DISCUSSION
  Integrity is non-negotiable. A 1 or 2 here overrides a strong overall score.
  
  Pattern: Any two pillars ≤ 2 = escalate to Dr. Lewis for review before proceeding.

ASSESSMENT INPUTS (use all available evidence):
  Hiring context:
    Resume and interview responses (behavioral STAR examples)
    Reference check responses
    Background check findings (sec-background-check-tracker)
    
  Performance context:
    Manager observations (documented, not impressions)
    Peer feedback (360 data)
    KPI and output data (did they actually produce value?)
    HR records (incidents, investigations, escalations)
    
  Entity context:
    Culture baseline score (thrive-culture-baseline)
    Prior THRIVE assessments (trending)
    Exit interview themes (thrive-exit-interview-analyzer)

ASSESSMENT BY PILLAR:

  TRUTH (T):
    Key signals: Does this person deliver bad news early? Do they acknowledge mistakes?
    Are their reports accurate or optimistic? Do they speak up in meetings?
    🔴 Red flags: Hidden ball; under-reporting problems; blame-shifting; excessive hedging
    
  HUSTLE (H):
    Key signals: Do they hit deadlines? Do they self-initiate? Output volume and quality?
    Do they escalate when blocked or wait to be asked?
    🔴 Red flags: Missed commitments; waits for direction; low velocity; excuses over solutions
    
  RESPECT (R):
    Key signals: How do they treat support staff? Do they listen? Handle disagreement well?
    🔴 Red flags: Dismissiveness; condescension; interrupting; speaking over others; exclusion
    
  INTEGRITY (I):
    Key signals: Consistency between private and public behavior. Do commitments get kept?
    Any ethics complaints? Discrepancies in reporting?
    🔴 Red flags: Saying one thing/doing another; hidden agenda; dishonest reporting; ethics incidents
    
  VALUE (V):
    Key signals: ROI-mindset? Do they prioritize high-impact work? Do they eliminate waste?
    🔴 Red flags: Busy but not productive; vanity metrics; output without outcomes
    
  ENJOY (E):
    Key signals: Energy level; enthusiasm for the work; team contribution; culture addition?
    🔴 Red flags: Chronic negativity; low energy; doesn't contribute to team; no visible passion

PORTFOLIO ENTITY CONTEXT:
  MBL HoldCo: THRIVE is the operating system — all hires screened, all reviews include THRIVE
  Allevio: HIPAA + THRIVE — clinical and ops hires must score 4+ on Integrity and Respect
  HIVE: Hustle + Integrity critical — oil and gas environment; safety culture = Respect dimension
  Column6: Truth + Hustle critical — media/ad tech moves fast; reporting accuracy non-negotiable
```

## Output Format

```markdown
# THRIVE Assessment — [Name/Team] | [Entity] | [Date]
**Assessor:** Dr. John Lewis | **Context:** [Hiring/Performance/Quarterly/M&A]

---

## Pillar Scores

| Pillar | Score (1-5) | Evidence Summary |
|--------|------------|-----------------|
| T — Truth | [1-5] | [1-2 sentence evidence] |
| H — Hustle | [1-5] | [1-2 sentence evidence] |
| R — Respect | [1-5] | [1-2 sentence evidence] |
| I — Integrity | [1-5] | [1-2 sentence evidence] |
| V — Value | [1-5] | [1-2 sentence evidence] |
| E — Enjoy | [1-5] | [1-2 sentence evidence] |
| **TOTAL** | **[6-30]** | **Avg: [score]/5** |

---

## Kill Criterion Check
- Integrity score: [N] — [✅ Clear / 🔴 KILL CRITERION TRIGGERED]
- Two-pillar ≤2 check: [✅ None / 🔴 Flag — [pillars] — escalate]

---

## Recommendation
**[HIRE / DO NOT HIRE / PIP / COACHING / RETAIN / SEPARATION DISCUSSION]**

[2-3 sentences on the basis for the recommendation — specific, not generic]

---

## Coaching Priorities (if retaining)
1. [Lowest-scored pillar] — [specific development action]
2. [Second priority] — [specific action]
```

## Output Contract
- Integrity scores of 1 or 2 are a hard stop — the assessor must flag this immediately to Dr. Lewis and, for hiring decisions, to the entity CEO before any offer is extended; for existing employees, a score of 1 or 2 on Integrity triggers an immediate performance conversation and documentation; there is no "wait and see" when integrity is at risk because integrity failures compound — a person who is dishonest in small things will be dishonest in big things when the stakes are higher, and at MBL where we manage financial data, LP relationships, and PHI at Allevio, an integrity failure can have legal and regulatory consequences; the THRIVE framework exists precisely to prevent these situations by screening for alignment before problems occur
- Assessment scores must be grounded in specific observable evidence, not impressions — "I don't trust this person" is not an assessment; "In the past 60 days, I documented three instances where [name] reported project status as green when it was yellow, and one instance where a deadline commitment was not surfaced as at-risk until the day it was missed" is an assessment; the difference matters because vague impressions don't hold up to scrutiny, create legal exposure in employment decisions, and can reflect bias; Dr. Lewis requires at least one specific behavioral example per pillar score of 3 or below; hiring managers complete this before the assessment is treated as final
- HITL required: any Integrity score ≤2 → Dr. Lewis + entity CEO before any decision; any two pillars ≤2 → Dr. Lewis review; hiring recommendation → Dr. Lewis reviews assessment before offer authorization; M&A culture assessment → Matt Mathison review before deal thesis is finalized; separation recommendation → attorney review + Matt Mathison authorization

## System Dependencies
- **Reads from:** HR interview scorecards (hr-hiring-scorecard); 360/performance review data (hr-performance-review); reference check notes (hr-background-check-tracker); HR incident records (hr-employee-relations); prior THRIVE assessments (thrive-culture-baseline); entity KPI and output data (ops-kpi-dashboard); exit interview data (thrive-exit-interview-analyzer)
- **Writes to:** THRIVE assessment record (SharePoint → [Entity] → People → THRIVE-Assessments → [Name]-[Date]); HR file (hiring decisions: offer/no-offer decision linked to assessment); performance record (performance context: triggers coaching plan or PIP); culture baseline update (thrive-culture-baseline — portfolio view updated with new data); Dr. Lewis + entity CEO notification (Integrity kill criterion trigger)
- **HITL Required:** Integrity ≤2 → Dr. Lewis + entity CEO immediately; two-pillar gap → Dr. Lewis review; hiring no-hire recommendation → entity CEO aware; M&A culture assessment → Matt Mathison; separation recommendation → attorney + Matt Mathison

## Test Cases
1. **Golden path:** Hiring assessment for Allevio clinical coordinator candidate. Interview responses show: strong patient communication examples (R: 5); delivered bad news to prior employer clearly (T: 4); hit all deadlines in last role (H: 4); no ethics issues, reference checks clean (I: 5); clear ROI framing on prior initiatives (V: 4); enthusiastic about mission-driven work (E: 5). Total: 27/30. Integrity: 5 — clear. Recommendation: HIRE. Assessment filed in SharePoint, offer authorized by entity CEO.
2. **Edge case:** Quarterly THRIVE assessment for HIVE operations lead shows: T:4, H:5, R:3, I:4, V:5, E:3. No kill criteria. But R:3 and E:3 prompt a coaching plan: "Respect — observed 2 instances of dismissing contractor input in team meetings; coaching focus: listen-first protocol. Enjoy — low energy noted at last 3 check-ins; explore if role scope is aligned with strengths." Dr. Lewis reviews, entity CEO aware, coaching plan activated. Next assessment in 60 days.
3. **Adversarial:** Entity CEO pushes back on a Integrity:2 score for a high-performing revenue producer: "He brings in $2M/year, we can't lose him." Dr. Lewis: "The revenue is real and matters. The Integrity flag is also real: [specific documented incident]. Our THRIVE framework exists for exactly this reason — one person's integrity failure, especially in a revenue role with customer relationships, can cost more than $2M in a single incident. We have three options: (1) PIP with specific integrity behavioral benchmarks, 90-day review, Dr. Lewis and CEO re-assess. (2) Role redesign — remove him from contexts where integrity failures cause the most damage. (3) Separation now, before the inevitable incident. I recommend option 1 with a clear 90-day deadline. But option 3 is on the table if the PIP doesn't produce change. Matt Mathison is aware."

## Audit Log
All THRIVE assessments retained in SharePoint (entity; name; date; context; scores; evidence; assessor; recommendation; entity CEO acknowledgment). Kill criterion triggers retained indefinitely (Integrity ≤2 records). Hiring decision linkage (assessment → offer authorization → outcome). M&A assessments retained as deal documents (Matt Mathison). Coaching plans linked to assessments and tracked in Monday.com.

## Deprecation
THRIVE definition reviewed annually with Matt Mathison. Scoring scale reviewed annually. Kill criterion thresholds reviewed annually (Integrity kill criterion is permanent — not subject to change). Portfolio entity context reviewed when entity composition changes. Assessment template reviewed when HR legal counsel recommends adjustments.
