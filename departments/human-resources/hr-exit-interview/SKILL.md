---
name: hr-exit-interview
description: "Conduct and analyze exit interviews for MBL Partners portfolio company departing employees. Use when the user says 'exit interview', 'exit survey', 'departure interview', 'why did they leave', 'why are they leaving', 'offboarding interview', 'exit conversation', 'separation interview', 'resignation interview', 'exit feedback', 'what did they say when they left', 'why do people leave', 'turnover reason', 'attrition reason', 'exit data', 'retention signal', 'flight risk signal', 'regrettable attrition', 'what can we learn from departures', 'pattern in departures', or 'exit themes'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--employee <name>] [--entity <mbl|allevio|hive|column6>] [--role <role-title>] [--tenure <months>] [--type <voluntary-resignation|end-of-contract>]"
---

# HR Exit Interview

Conduct structured exit interviews for voluntarily departing employees and synthesize findings into retention intelligence — identifying patterns in departures that signal organizational, management, or compensation issues before they become systemic. Exit data is a leading indicator of culture health; a pattern of departures citing the same manager is actionable signal; departures citing better compensation suggest a comp band review is overdue.

## When to Use
- An employee has voluntarily resigned and their last week is approaching
- Aggregate exit data needs to be synthesized for a quarterly review
- A manager or team has unusually high voluntary attrition

## Exit Interview Framework

```
INTERVIEW TIMING AND FORMAT:
  Scheduled for: last week of employment (not last day — less reflective)
  Conducted by: Dr. Lewis or HR designee (not the departing employee's direct manager)
  Format: 30-45 min video or in-person conversation (not a written survey only)
  Tone: genuine curiosity; no defensiveness; no retention pitch (decision is made)
  
  If the departure involves a manager-subordinate conflict or HR complaint:
    Dr. Lewis conducts the exit interview directly
    Legal counsel notified if litigation risk is identified in the conversation

EXIT INTERVIEW QUESTIONS:

  ROLE AND GROWTH:
    "What aspects of the role did you enjoy most?"
    "What aspects were most frustrating?"
    "Did you feel your contributions were recognized?"
    "Were there opportunities for growth that you were looking for but didn't find?"
    
  MANAGEMENT AND CULTURE:
    "How would you describe your relationship with your manager?"
    "Did you feel the team/company culture was aligned with your values?"
    "Were THRIVE values visible in how decisions were made day to day?"
    "Was there anything leadership could have done differently?"
    
  COMPENSATION AND BENEFITS:
    "Was compensation a factor in your decision?"
      If yes: "Can you share what drove that perception?"
    "Were benefits (health, retirement, PTO) what you expected when you joined?"
    
  NEW ROLE:
    "What drew you to your new opportunity?"
    "What does the new role offer that this role didn't?"
    (Listen carefully — this is often the most honest answer about what MBL is missing)
    
  RETENTION (retrospective):
    "Is there anything we could have done that would have changed your decision to leave?"
    "Would you consider returning to [entity] in the future?"
    "Would you recommend [entity] to a friend as a place to work?"
    
  CLOSING:
    "Is there anything you'd like to share that I haven't asked?"
    "Is there anything you'd like management to know that you haven't felt comfortable saying?"

CLASSIFICATION OF EXIT REASONS (for analytics):
  A — Compensation: left for higher pay
  B — Growth: left for more advancement opportunity
  C — Management: left due to relationship with manager or leadership
  D — Culture: THRIVE misalignment; values conflict
  E — Life/Personal: relocation; family; health
  F — External opportunity: better role found; passive recruit
  G — Workload: burnout; unsustainable pace
  H — Role fit: role changed significantly from what was hired for
  
AGGREGATION (quarterly):
  Dr. Lewis reviews aggregate exit data by entity, manager, and reason code
  Flag patterns: 2+ exits from same manager in 90 days (management signal)
  Flag patterns: 3+ exits citing compensation in 180 days (comp band review trigger)
  Flag patterns: consecutive exits from same team (culture signal)
  Quarterly summary to entity CEOs; annual summary to Matt Mathison
```

## Output Format

```markdown
# Exit Interview Summary — [Employee Name] | [Entity] — [Date]
**Role:** [Title] | **Tenure:** [X months] | **Reason code:** [A-H]
**Conducted by:** Dr. Lewis / HR designee | **Regrettable departure:** Yes / No

---

## Key Themes

**What they valued:**
- [1-2 specific positive themes]

**What drove the departure:**
- Primary reason: [specific — not sanitized]
- Secondary reason: [if applicable]

**New opportunity:** [1-2 sentences on what drew them — compensation / role / growth / culture]

**Retention insight:** "Would anything have changed your decision?" → [direct answer]

**Would recommend [entity] to a friend:** Yes / No / Maybe | **Would consider returning:** Yes / No

---

## Flags for Dr. Lewis Review
☐ Management concern cited (flag: [manager name])
☐ Compensation gap cited (flag: comp band review)
☐ Culture concern cited (THRIVE misalignment signal)
☐ Legal risk identified (flag: Dr. Lewis + legal counsel)
☐ No flags — clean departure
```

## Output Contract
- Exit interviews are conducted by Dr. Lewis or HR, not the departing employee's manager — the departing employee will not be honest about their manager in a conversation with their manager; Dr. Lewis or an HR designee conducts all exit interviews; the hiring manager receives only a synthesized summary (not a verbatim transcript) to protect candor; if the exit interview reveals something serious about the manager, Dr. Lewis decides how to handle it before surfacing to the CEO
- The data is used — exit interview data that is collected and ignored is worse than not collecting it (it signals that feedback doesn't matter); Dr. Lewis reviews aggregate exit data quarterly and surfaces patterns to entity CEOs; a CEO who has 3 departures in 90 days from the same team receives a specific conversation from Dr. Lewis, not a report in a deck
- Regrettable vs. non-regrettable classification is documented — not every departure is regrettable; a low performer who leaves saves the entity a PIP conversation; a top performer who leaves for a comp reason that we couldn't match is a regrettable departure; Dr. Lewis classifies each departure as regrettable or non-regrettable for attrition analytics; this distinction matters when reporting to Matt Mathison (regrettable attrition rate is the meaningful metric)
- HITL required: exit interview involving manager complaint → Dr. Lewis conducts personally; legal risk identified in exit interview → Dr. Lewis + legal counsel; aggregate pattern (2+ from same manager) → Dr. Lewis conversation with entity CEO; comp pattern (3+ in 180 days) → Dr. Lewis initiates comp review; THRIVE culture concern → Dr. Lewis escalates to entity CEO

## System Dependencies
- **Reads from:** hr-offboarding-manager (departure timeline; voluntary vs. involuntary); hr-performance-review-cycle (performance history — context for regrettable/non-regrettable); hr-attrition-analyzer (aggregate patterns); hr-compensation-benchmarker (comp gap context)
- **Writes to:** Exit interview summary (SharePoint → HR → Exit Interviews → [Entity] → [Name]); hr-attrition-analyzer (reason code; regrettable flag); Dr. Lewis quarterly exit report; entity CEO summary (pattern-level; not verbatim); Matt Mathison annual summary
- **HITL Required:** Manager complaint → Dr. Lewis conducts interview; legal risk → Dr. Lewis + legal; 2+ same manager → Dr. Lewis conversation with CEO; comp pattern → Dr. Lewis initiates review; THRIVE concern → CEO escalation

## Test Cases
1. **Golden path:** Allevio Care Coordinator leaves after 14 months for a hospital system offering $8K more. Exit interview: valued patient relationships and THRIVE culture; frustrated with system documentation requirements (AdvancedMD); driven primarily by comp gap. Reason code: A (compensation). Regrettable: Yes (strong performer). Flag: comp band for Care Coordinator is $5-8K below market — flagged to Allevio CEO for review before next hire.
2. **Edge case:** Second departure from the same Column6 Account Manager team in 60 days — both cite the same manager → Dr. Lewis: "This is a management signal. I'm conducting both exit interviews personally. I'm not surfacing the verbatim content to the CEO yet — I want to confirm the pattern and assess severity first. After both interviews I'll bring a specific, evidence-based summary to the Column6 CEO. If the pattern is confirmed, we have a manager development or replacement conversation."
3. **Adversarial:** HIVE CEO wants to skip exit interviews because "we're too small for that kind of process" → Dr. Lewis: "I understand the instinct, but exit data is most valuable at small companies precisely because every departure is a larger percentage of your team. One departure from a 12-person team is 8% of your workforce. Even a 20-minute conversation can tell us whether we have a comp problem, a manager problem, or something structural. I'll conduct them and I won't burden the team — it won't involve anyone but me and the departing employee."

## Audit Log
All exit interview summaries retained for 3 years. Manager concern records retained (relevant to any future management action). Legal risk records retained permanently. Quarterly aggregate reports retained. Annual Matt Mathison summary retained. Regrettable/non-regrettable classification retained for attrition analytics.

## Deprecation
Exit interview question bank reviewed annually. Reason code taxonomy reviewed when new departure patterns emerge. Aggregate report format updated when Dr. Lewis changes reporting cadence.
