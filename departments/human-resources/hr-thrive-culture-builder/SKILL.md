---
name: hr-thrive-culture-builder
description: "Build and sustain THRIVE culture at MBL Partners portfolio companies. Use when the user says 'THRIVE', 'THRIVE culture', 'build culture', 'culture building', 'culture initiative', 'culture assessment', 'values assessment', 'values alignment', 'culture health', 'values-based culture', 'how do we build culture', 'culture program', 'employee recognition', 'recognition program', 'reward culture', 'culture reinforcement', 'culture rituals', 'team culture', 'culture check', 'culture survey', 'culture workshop', 'culture communication', 'THRIVE workshop', 'THRIVE orientation', 'THRIVE score', 'THRIVE assessment', 'THRIVE ritual', 'company values', 'values in action', or 'living the values'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <assess|program|recognize|workshop|communicate>] [--focus <truth|hustle|respect|integrity|value|enjoy>]"
---

# HR THRIVE Culture Builder

Build, assess, and sustain THRIVE culture across MBL Partners and its portfolio companies — ensuring THRIVE is not a poster on the wall but a decision-making filter used every day. Culture is what happens when no one is watching; the HR function's job is to design the rituals, recognition, and accountability that make THRIVE the default behavior, not the aspiration.

## When to Use
- A new entity needs THRIVE orientation (first 90 days post-acquisition)
- Culture assessment is needed (after rapid growth, leadership change, or attrition spike)
- Recognition programs need to be designed or refreshed
- A THRIVE value is being systematically violated and systemic response is needed

## THRIVE Framework

```
THRIVE DIMENSIONS:

  T — TRUTH: say what's true, even when it's uncomfortable
    Behaviors: bringing bad news early; not sugarcoating; accurate self-assessment
    Anti-patterns: telling leadership what they want to hear; hiding problems; spin
    
  H — HUSTLE: execute with urgency and intensity
    Behaviors: proactive action; meeting commitments; bias toward doing
    Anti-patterns: waiting for perfect information; analysis paralysis; missed deadlines without notice
    
  R — RESPECT: treat people with dignity regardless of title or result
    Behaviors: listening; inclusive meeting behaviors; acknowledgment
    Anti-patterns: talking over people; dismissiveness; status-based disrespect
    
  I — INTEGRITY: absolute standard; no exceptions
    Behaviors: keeping commitments; transparent decision-making; ethical conduct
    Anti-patterns: ANY: lying, fraud, misrepresentation, cover-up, non-disclosure of conflicts
    Note: Integrity is the only THRIVE dimension with a HARD KILL criterion
    Dr. Lewis handles all Integrity violations — no delegation; no exceptions
    
  V — VALUE: create measurable value for stakeholders
    Behaviors: outcome focus; ROI thinking; leverage-aware decisions
    Anti-patterns: activity without outcomes; vanity metrics; effort without result
    
  E — ENJOY: find meaning and energy in the work
    Behaviors: engagement; curiosity; bringing others along
    Anti-patterns: persistent disengagement; energy drain on team; joyless execution

THRIVE OPERATING MECHANISMS:

  1. THRIVE ORIENTATION (all new hires, Day 1):
     Delivered by Dr. Lewis or entity CEO — not delegated
     Content: origin story of each value; a real example of each from the entity's history
     Duration: 60-90 min conversation (not a slide deck read-through)
     Close: "When you face a hard decision here, run it through THRIVE. If any value fails, pause."
     
  2. THRIVE IN HIRING (hr-hiring-scorecard + hr-candidate-screener):
     THRIVE behavioral questions in every interview panel
     Any Integrity flag from interview → automatic decline (no override)
     
  3. THRIVE IN PERFORMANCE (hr-performance-review-cycle):
     THRIVE alignment is 25 of 100 points in performance scorecard
     Integrity double-weighted (10/25); score=0 = AUTOMATIC DECLINE regardless of total
     
  4. THRIVE RECOGNITION:
     Recognition is tied to specific THRIVE values — not generic "great job"
     Format: "Sarah demonstrated Truth this week when she surfaced the billing discrepancy 
       before it hit the client — even though it created more work for our team."
     Channels: team meetings; all-hands; Slack (entity-specific); entity CEO weekly update
     Frequency: weekly shoutout (small entity); bi-weekly (larger)
     Dr. Lewis asks each entity CEO for one THRIVE example per month (minimum)
     
  5. THRIVE CULTURE ASSESSMENT (annual):
     5-question survey per dimension = 30 questions
     Anonymous; Dr. Lewis administers and reviews
     Results presented to entity CEO and Dr. Lewis together
     Action plan: one specific initiative per dimension scoring <3.5/5.0
     Trend: track year-over-year by entity
     
  6. THRIVE ACCOUNTABILITY:
     THRIVE misalignment is addressed — not ignored because person is high-performing
     "He's great at his job but treats people poorly" = Respect failure = must be addressed
     "She hits her numbers but avoids difficult truths" = Truth failure = must be addressed
     THRIVE misalignment from leaders is the most important to address — it cascades

CULTURE RESTORATION (post-incident or attrition):
  If culture score drops significantly or attrition clusters around one entity/team:
    Trigger hr-exit-interview pattern analysis
    Entity CEO + Dr. Lewis conversation: "What's causing this?"
    Targeted culture program (1 quarter): focused workshops; leader behavior change
    Dr. Lewis checks in monthly (not just annual survey)
```

## Output Format

```markdown
# THRIVE Culture Assessment — [Entity] — [Year]
**Administered by:** Dr. Lewis | **Reviewed with:** Entity CEO | **Date:** [Date]

---

## Dimension Scores (Anonymous Survey, N=[count])

| Dimension | Score (1-5) | Trend vs. Prior Year | Action needed? |
|----------|------------|---------------------|---------------|
| Truth | X.X | ↑ / → / ↓ | Yes / No |
| Hustle | | | |
| Respect | | | |
| Integrity | | | |
| Value | | | |
| Enjoy | | | |

**Overall THRIVE score:** X.X / 5.0

---

## Key Findings
- [Lowest-scoring dimension]: [What the data shows; example themes from open responses]
- [Biggest drop from prior year]: [Possible root cause]

---

## Action Plan

| Initiative | Target dimension | Owner | Timeline |
|-----------|-----------------|-------|---------|
| [1 specific initiative] | [Dimension] | [Entity CEO / Dr. Lewis] | [Quarter] |

---

## Recognition Examples This Quarter
- [THRIVE value]: [Employee name] — [brief description of behavior]
```

## Output Contract
- THRIVE Integrity has one standard — a zero-tolerance Integrity violation by a high performer is addressed the same way as one by an underperformer; the moment THRIVE values bend for business convenience, they are no longer values — they are aspirations; Dr. Lewis does not accept entity CEO exceptions for Integrity violations, regardless of the business impact of the corrective action; this is non-negotiable and was established by Dr. Lewis as the basis of MBL's cultural credibility
- THRIVE orientation is delivered by Dr. Lewis or entity CEO personally — culture is transmitted person-to-person, not document-to-person; a THRIVE orientation delivered by an HR coordinator reading a slide deck produces zero cultural effect; the THRIVE story must be told by someone who has lived it and made decisions based on it; Dr. Lewis delivers the MBL-level orientation; entity CEOs deliver it for their teams with Dr. Lewis establishing the standard
- Recognition is specific and tied to a THRIVE value — "great job" is not recognition; recognition that says "you demonstrated Truth when you told the client about the billing error before they found it themselves — that's exactly the behavior that makes us different" is recognition; the specificity reinforces the behavior and signals to the rest of the team what the entity actually values; generic recognition reinforces nothing
- HITL required: THRIVE orientation delivery → Dr. Lewis or entity CEO delivers; Integrity violation → Dr. Lewis handles (no delegation; no exception); culture assessment → Dr. Lewis administers + reviews with entity CEO; culture action plan → entity CEO commits to specific initiatives; attrition cluster → Dr. Lewis + entity CEO conversation; culture restoration program → Dr. Lewis designs + entity CEO leads

## System Dependencies
- **Reads from:** hr-performance-review-cycle (THRIVE alignment scores from annual review); hr-engagement-analyzer (engagement scores; dimension correlation); hr-exit-interview (departure reason codes — culture signals); hr-investigation-manager (Integrity violation patterns); hr-hiring-scorecard (THRIVE behavioral question results)
- **Writes to:** THRIVE culture assessment report (SharePoint → HR → Culture → [Entity] → [Year]); entity CEO recognition guide; action plan (Monday.com → HR workboard → Culture Initiatives); Matt Mathison annual summary
- **HITL Required:** Orientation delivery → Dr. Lewis or CEO; Integrity violation → Dr. Lewis handles; culture assessment → Dr. Lewis administers; action plan → entity CEO commits; culture restoration → Dr. Lewis designs; Matt Mathison annual summary → Dr. Lewis submits

## Test Cases
1. **Golden path:** Allevio Q4 THRIVE assessment. N=18. Integrity: 4.7 (stable). Truth: 3.2 (↓ from 3.8). Respect: 3.9. Dr. Lewis + Allevio CEO conversation: "The Truth drop correlates with 3 exit interview comments about 'not feeling safe raising problems.' The CEO hired 4 managers in the past 6 months — I think this is a leadership modeling problem. Action: Dr. Lewis runs a Truth workshop with all managers in January. CEO commits to a monthly 'good news / bad news' format in team meetings where bad news is celebrated, not buried."
2. **Edge case:** HIVE has 4 employees and a formal culture assessment feels like overkill → Dr. Lewis: "At 4 people, the 'culture' is essentially the CEO's behavior. I'll skip the formal survey and run a 30-minute 1:1 conversation with each employee: 'What's one thing we're doing that embodies our values? What's one thing we're doing that contradicts them?' I'll synthesize and share back with the CEO. That IS the culture assessment for a 4-person team."
3. **Adversarial:** Entity CEO says "our top sales person doesn't really live the Hustle value — they coast between quarters — but they're too valuable to address" → Dr. Lewis: "I hear you on the business value. But when your team watches someone coast and nothing happens, the signal they receive is that Hustle is optional if you're a top producer. The hidden cost of that signal is real. I'm not recommending we fire this person. I'm recommending we have a direct conversation: 'You're one of our best — we need you engaged year-round, not just in Q4. Here's what that looks like.' If the conversation changes behavior, the problem is solved. If not, we have a documented record."

## Audit Log
THRIVE culture assessment results retained (trend analysis). Entity CEO recognition records retained (modeling evidence). THRIVE orientation delivery records retained (date; who delivered). Action plan completion records retained. Integrity violation records retained permanently.

## Deprecation
THRIVE framework is a permanent MBL values foundation — no deprecation. Assessment instrument reviewed every 3 years for question relevance. Recognition format updated as communication channels evolve.
