---
name: thrive-exit-interview-analyzer
description: "analyze exit interviews thrive lens, thrive exit interview questions, departure reason classification thrive, controllable uncontrollable departure, thrive signal extraction exit interview, regrettable non-regrettable departure analysis, entity ceo debrief exit interview, matt mathison portfolio departure trend, turnover cost calculation thrive, exit trend culture intervention trigger, thrive departure analysis, exit interview culture signal, voluntary departure thrive attribution, exit interview pillar signal, which pillar drove departures, culture departure analysis mbl, thrive exit pattern, exit interview report entity ceo, departure classification culture, thrive departure intervention"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "<entity> <departing-employee-name> <role> <departure-date>"
---

# THRIVE Exit Interview Analyzer

Every voluntary departure is a data point — but only if the exit interview is structured to extract the culture signal rather than a polished goodbye. This skill applies the THRIVE lens to exit interviews, classifies departure reasons, extracts pillar-level signals, and feeds the findings into entity-level and portfolio-level culture intervention logic.

## When to Use

- An employee provides notice and an exit interview needs to be scheduled and analyzed
- Dr. Lewis is reviewing entity-level departure patterns at the end of a quarter
- An entity CEO is seeing a spike in voluntary turnover and needs root cause analysis
- Matt Mathison is preparing for a portfolio quarterly review and needs the departure trend section

## THRIVE Exit Interview Analyzer Framework

```
THRIVE EXIT INTERVIEW ANALYSIS — [ENTITY] | [EMPLOYEE] | [ROLE] | DEPARTURE: [DATE]
══════════════════════════════════════════════════════════════════════════════════════

EXIT INTERVIEW PROTOCOL
─────────────────────────────────────────────────────
Interviewer: Entity CEO (preferred) or senior HR leader — NOT direct manager
Format: 30-minute structured conversation; recorded with consent or detailed notes
Timing: Within last 3 days of employment OR 1-2 weeks after final day (post-departure honesty)

THRIVE-PROBING EXIT QUESTIONS
─────────────────────────────────────────────────────
For each pillar, one direct probe:

  TRUTH (candor and safety):
  "Did you feel you could speak honestly here — raise problems, share bad news,
   disagree — without negative consequences?"
  Follow-up: "Was there a specific moment where you felt you couldn't?"

  HUSTLE (accountability and ownership):
  "Did you feel like the people around you — your team, your manager — held
   themselves accountable? Or did you carry more than your fair share?"

  RESPECT (dignity and treatment):
  "Did you feel genuinely respected here — by your manager, your peers,
   and the organization? Was there a pattern that made you feel otherwise?"

  INTEGRITY (ethics and trust):
  "Were there moments where you were asked to do something that felt ethically
   uncomfortable or that didn't sit right with you?"
  Note: Any "yes" with details → immediate flag to Dr. Lewis; do not wait for pattern.

  VALUE (meaning and impact):
  "Did you feel like your work created real value here? Or did it feel like activity
   without meaningful impact?"

  ENJOY (engagement and sustainability):
  "Was this a place you could see yourself thriving long-term? What made it
   difficult to sustain your energy here?"

  CLOSING:
  "What's the one thing we could have done differently that might have kept you?"
  "Is there anything you want us to know that no one has asked?"

DEPARTURE REASON CLASSIFICATION
─────────────────────────────────────────────────────
  CONTROLLABLE (culture and leadership addressable):
    □ THRIVE misalignment (specific pillar: _______)
    □ Management failure (Hustle gap in manager; Respect failure; Truth suppression)
    □ Culture toxicity (peer behavior; team dynamic)
    □ Integrity discomfort (asked to do something wrong)
    □ Growth/Value gap (role didn't allow meaningful contribution)
    □ Burnout / Enjoy failure (sustainability breakdown; workload; poor leadership)

  UNCONTROLLABLE (not addressable by culture intervention):
    □ Personal (relocation, family, health, life circumstances)
    □ Compensation (above-market offer; financial need)
    □ Career pivot (role type change; industry switch; advanced degree)
    □ Geographic (remote opportunity; spouse relocation)

  CLASSIFICATION:
    Primary reason: [Controllable / Uncontrollable]
    THRIVE pillar signal (if controllable): [Pillar name]
    Confidence: [High / Medium / Low] (based on depth of interview response)

REGRETTABLE VS. NON-REGRETTABLE ANALYSIS
─────────────────────────────────────────────────────
  REGRETTABLE: High performer; THRIVE exemplar; would have been promoted;
               their departure represents a net culture and capability loss.
  NON-REGRETTABLE: Low performer; values misalignment; would have been PIPed;
                   their departure is an outcome not a loss.

  This departure: [Regrettable / Non-Regrettable]
  Justification: [2-3 sentences]

  Note: Non-regrettable controllable departures are still analyzed — the departure
  may indicate a systemic culture problem even if this individual wasn't a top performer.

ENTITY CEO DEBRIEF
─────────────────────────────────────────────────────
Format: 15-minute briefing (Dr. Lewis → entity CEO); within 5 business days of exit interview
Content:
  □ Departure classification (controllable / uncontrollable)
  □ THRIVE pillar signal (if controllable)
  □ Regrettable / non-regrettable assessment
  □ Pattern question: "Is this the first time we've heard this signal, or is this a pattern?"
  □ Recommended action (if any)

PORTFOLIO DEPARTURE TREND (QUARTERLY)
─────────────────────────────────────────────────────
  Entity          | Departures | Controllable | Primary Pillar Signal | Regrettable
  ──────────────────────────────────────────────────────────────────────────────
  Allevio         |            |              |                       |
  HIVE            |            |              |                       |
  Column6         |            |              |                       |
  MBL HoldCo     |            |              |                       |
  ──────────────────────────────────────────────────────────────────────────────
  PORTFOLIO TOTAL |            |              |                       |

  Pattern trigger: Same pillar cited as controllable driver across ≥ 3 departures
  in one entity in one quarter → culture intervention required

TURNOVER COST CALCULATION
─────────────────────────────────────────────────────
  Replacement cost estimate: 50–200% of annual salary (role-dependent)
  Regrettable controllable departures this quarter: _______
  Avg salary of departing employees: $________
  Estimated replacement cost (portfolio): $________
  THRIVE-attributed turnover cost: $________ (controllable departures only)
  ROI note: This number goes to Matt Mathison quarterly to frame culture investment value.
```

## Output Format

```markdown
## THRIVE Exit Interview Analysis
**Employee:** [Name] | **Entity:** [Entity] | **Role:** [Role] | **Departure:** [Date]

### Departure Classification
- **Type:** [Controllable / Uncontrollable]
- **Primary THRIVE Pillar Signal:** [Pillar or N/A]
- **Confidence:** [High / Medium / Low]
- **Regrettable:** [Yes / No]

### Pillar Signal Summary
| Pillar | Signal? | Quote or Theme |
|--------|---------|---------------|
| Truth | Y/N | |
| Hustle | Y/N | |
| Respect | Y/N | |
| Integrity | Y/N — FLAG if YES | |
| Value | Y/N | |
| Enjoy | Y/N | |

### Entity CEO Debrief
**Delivered:** [Date] | **Pattern identified:** [Yes — specify / No]
**Recommended Action:** [None / Specific action]

### Turnover Cost
- Estimated replacement cost: $[amount]
- THRIVE-attributed (if controllable): [Yes / No]
```

## Output Contract

- Any Integrity signal in an exit interview triggers an immediate flag to Dr. Lewis before the entity CEO debrief is scheduled — an employee who names an ethical concern on the way out the door represents a material governance risk, and the information must be assessed at the program level before it is shared with an entity CEO who may be part of the pattern being described.

- The regrettable vs. non-regrettable classification is documented with written justification, not just a binary label — a "non-regrettable" classification that is used to dismiss a controllable departure without investigating the underlying culture signal is one of the most common ways organizations allow systemic culture problems to persist, and the justification requirement creates accountability for that assessment.

- Turnover cost is calculated and reported to Matt Mathison quarterly because the culture investment must be understood in the context of the cost of inaction — a THRIVE program budget is difficult to defend without a corresponding estimate of what controllable voluntary turnover is costing the portfolio each quarter.

## System Dependencies

### Reads from
- Employee HR record (tenure, role, performance history, prior THRIVE assessments)
- Prior exit interviews from the same entity (pattern detection baseline)
- thrive-culture-kpi-dashboard (THRIVE-attributed departure rate KPI input)

### Writes to
- Exit interview record (entity HR file; retained per data retention policy)
- thrive-culture-kpi-dashboard (KPIs 3 and 4: voluntary turnover; THRIVE-attributed rate)
- thrive-portfolio-culture-monitor (quarterly departure trend section)
- Dr. Lewis anomaly flag log (Integrity signals; immediate)
- Matt Mathison quarterly brief (turnover cost and departure trend)

### HITL Required
- Dr. Lewis reviews all exit interview analyses before entity CEO debrief
- Any Integrity signal → Dr. Lewis same-day notification; entity CEO debrief sequenced after
- Entity CEO debriefs all controllable departures within 5 business days of analysis

## Test Cases

1. **Golden path:** Senior care coordinator leaves Allevio after 2 years. Exit interview reveals: Enjoy failure (burnout; understaffed team) and Value concern (feels like volume over outcomes). Controllable departure; primary signal: Enjoy. Regrettable: yes (exemplar performer). Entity CEO debrief: first time this specific signal has been heard from a senior clinical staff member. Recommended action: workload audit for the care coordination team. Logged in quarterly departure trend.

2. **Edge case:** HIVE field tech leaves after 4 months. Exit interview reveals: compensation was the primary driver (received above-market offer from a competitor). Uncontrollable departure. Non-regrettable (performance concerns prior to resignation). No THRIVE pillar signal. Entity CEO debrief: no pattern; no action required. Replacement cost logged but not counted as THRIVE-attributed.

3. **Adversarial:** Column6 account manager leaves and raises an Integrity concern in the exit interview: "I was asked to alter campaign performance data for a client report." Immediate flag to Dr. Lewis before entity CEO debrief. Dr. Lewis investigates with entity CEO. Incident confirmed; separate HR and legal process initiated. Exit interview analysis held as evidence. Matt Mathison notified same day. The departure is classified controllable / Integrity / Regrettable, and the root cause is a manager directing the data alteration — not the departing employee's failure.

## Audit Log

Exit interview records are retained for the duration of the business entity plus seven years, consistent with employment record retention standards. Integrity signal flags are logged with timestamp, flagging analyst, and escalation chain. Regrettable/non-regrettable classifications are retained as structured data with written justifications. Quarterly departure trend summaries are archived as program records.

## Deprecation

This skill is reviewed annually. The THRIVE-probing question set is reviewed each year by Callie and Dr. Lewis; modifications require Dr. Lewis approval and Fitz pilot testing. The skill is deprecated when MBL implements a formal exit interview platform that covers these capabilities, provided the THRIVE pillar signal extraction and the Integrity immediate-flag protocol are preserved. No successor skill may aggregate away Integrity signals into a composite score.
