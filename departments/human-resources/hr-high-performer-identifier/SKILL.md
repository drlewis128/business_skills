---
name: hr-high-performer-identifier
description: "Identify and retain high performers at MBL Partners portfolio companies. Use when the user says 'high performer', 'top performer', 'top talent', 'identify top talent', 'talent identification', 'succession planning', 'who are our best people', 'who should we retain', 'flight risk', 'retention risk', 'who might leave', 'at-risk talent', 'key person', 'key employee', 'critical employee', 'critical talent', 'talent retention', 'who do we need to keep', 'high potential', 'hi-po', 'development plan', 'talent development', 'succession list', 'succession bench', 'who is promotable', 'ready for promotion', 'next level', 'critical role', 'key role', 'single point of failure', or 'talent mapping'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--action <identify|map|develop|retain>] [--scope <all|department|role>]"
---

# HR High Performer Identifier

Identify, track, and develop high performers across MBL Partners portfolio companies — building a succession bench, flagging flight risks, and ensuring the entity's best people have development paths that retain them. At portfolio company scale (typically 10-40 employees), losing one high performer is a 5-10% talent hit; proactive identification and retention is cheaper than replacing.

## When to Use
- Annual talent review (accompanying performance review cycle)
- An entity CEO asks "who are our most critical people?"
- A flight risk signal is identified (exit interview pattern; compensation gap; competing offer)
- A key role needs a succession plan

## High Performer Identification Framework

```
IDENTIFICATION CRITERIA:

  HIGH PERFORMER (current): demonstrably delivering above role expectations
    Performance rating: Exceeds Expectations (from hr-performance-review-cycle)
    OKR score: consistently 0.8+ over 2+ quarters
    THRIVE alignment: strong across all dimensions (Truth, Hustle, Integrity, Value)
    
  HIGH POTENTIAL (HiPo): solid performer who shows readiness to grow to next level
    Not necessarily at Exceeds today — may be at Meets with strong upward trajectory
    Indicators: taking on scope beyond role; developing others; asking "why" not just "how"
    Note: HiPo ≠ High Performer; they can overlap or be distinct
    
  CRITICAL ROLE (entity-risk): the role is so important that vacancy = business risk
    Criteria: role controls client relationships; sole operator of key system; regulatory function
    Critical role + single person = key person dependency risk
    Solution: document role; cross-train backup; succession plan

TALENT MAP (per entity, quarterly):

  9-BOX MAPPING (simplified 4-box for portfolio scale):
    Performance (Y axis): Exceeds / Meets / Developing
    Potential (X axis): High / Moderate / Limited
    
    Box 1 (Exceeds/High): Top priority to retain and develop — succession candidates
    Box 2 (Exceeds/Moderate): Retain; may not move up; key individual contributors
    Box 3 (Meets/High): Invest; coaching; promotion path candidate
    Box 4 (Meets/Moderate): Solid core; standard retention effort
    Below Meets: per performance management protocols
    
FLIGHT RISK SIGNALS:
  Compensation: at or below 25th percentile for role (hr-compensation-benchmarker)
  Tenure signal: approaching 2-3 years with no promotion or scope change
  Engagement: eNPS decline; low participation in team activities
  External signal: LinkedIn profile updated; recruiter activity mentioned by peer
  Life event: significant personal change that may shift priorities
  Recent disappointment: passed over for promotion; project they cared about cancelled
  
  Flight risk severity:
    Yellow: one signal present — monitor; 1:1 conversation
    Orange: two signals — manager proactive conversation; Dr. Lewis aware
    Red: three+ signals or competing offer — Dr. Lewis + entity CEO decide retention action

DEVELOPMENT PLANS (for Box 1 and Box 3):
  Each high performer or HiPo: 1-page individual development plan
  Contents: next role target; skill gaps; specific development actions (3 max); timeline
  Development is manager-led, Dr. Lewis-supported
  Dr. Lewis reviews all development plans for Box 1 talent annually
  
RETENTION ACTIONS (for Red flight risk):
  Compensation adjustment (if market gap): hr-merit-review-manager off-cycle
  Scope change: new responsibility; project leadership; title change
  Development acceleration: stretch assignment; exposure to Matt Mathison
  Transparency: "We want you here — what do you need?" conversation (manager + Dr. Lewis)
  
  What NOT to do:
    Counter-offer bidding war (they'll leave within 12 months post-counter)
    Empty promises of promotion "someday"
    Assigning them to a PIP-adjacent project as "development" (they'll know)
```

## Output Format

```markdown
# Talent Review — [Entity] — [Quarter YYYY]
**Reviewed by:** Dr. Lewis + Entity CEO | **Confidential**

---

## High Performers (Box 1: Exceeds + High Potential)

| Employee | Role | Tenure | Flight risk | Next role | Development priority |
|----------|------|--------|------------|---------|---------------------|
| [Name] | [Role] | [X months] | Green / Yellow / Red | [Target role] | [1 specific action] |

---

## High Potential Investments (Box 3: Meets + High Potential)

| Employee | Role | Key strength | Development gap | 12-month goal |
|----------|------|-------------|----------------|--------------|
| [Name] | | | | |

---

## Flight Risk Alerts

| Employee | Risk level | Signals | Recommended action |
|----------|-----------|--------|-------------------|
| [Name] | 🟡 Yellow / 🟠 Orange / 🔴 Red | [Signals] | [Action by whom by when] |

---

## Critical Role / Key Person Dependencies

| Role | Current holder | Backup | Documentation status |
|------|---------------|--------|---------------------|
| [Role] | [Name] | [Name / None] | ✅ Documented / ⚠️ Undocumented |

---

## Actions Required
1. [Specific action — owner — due date]
```

## Output Contract
- Talent review is conducted by entity CEO + Dr. Lewis together — a talent review that is done by the manager alone produces self-serving ratings; a talent review done without the entity CEO produces actions that the CEO may not support; Dr. Lewis facilitates the quarterly talent review with the entity CEO and together they assign each employee to the talent map; the output (flight risk list; development plans; retention actions) is actionable only if the CEO is a co-author
- Flight risk signals trigger proactive action — a talent review that identifies flight risks but produces no action is worse than no talent review (it creates false comfort); every Red flight risk employee receives a proactive retention conversation from the entity CEO or Dr. Lewis within 2 weeks of the talent review; the conversation is honest: "You're important to us. I want to make sure we're giving you what you need to want to stay here"
- Individual development plans are specific — "leadership development" is not a development plan; "lead the Q3 employer onboarding process independently and debrief the entity CEO by August 31" is a development plan; Dr. Lewis ensures every Box 1 and Box 3 employee has 1 specific, dated, outcome-oriented development action per quarter
- HITL required: talent review → entity CEO + Dr. Lewis; flight risk Red → entity CEO + Dr. Lewis retention conversation within 2 weeks; compensation retention adjustment → Dr. Lewis + CEO (Matt Mathison if >$25K); development plan for Director+ → Matt Mathison awareness; succession plan for CEO role → Matt Mathison owns

## System Dependencies
- **Reads from:** hr-performance-review-cycle (ratings; development context); hr-okr-facilitator (OKR scores); hr-compensation-benchmarker (comp vs. market for flight risk signals); hr-exit-interview (departure patterns — who is leaving and why); hr-engagement-analyzer (eNPS; engagement signals); HRIS (tenure; role history)
- **Writes to:** Talent review (SharePoint → HR → Talent Reviews → [Entity] → [Quarter]); individual development plans; flight risk monitoring log; retention action records; Matt Mathison succession briefing (VP+); entity CEO talent conversation guide
- **HITL Required:** Talent review → CEO + Dr. Lewis; Red flight risk → CEO + Dr. Lewis conversation ≤2 weeks; compensation retention → Dr. Lewis + CEO + (Matt if >$25K); Director+ development → Matt awareness; CEO succession → Matt owns

## Test Cases
1. **Golden path:** Column6 quarterly talent review. Box 1: VP Sales (Exceeds; High; 18 months; Green flight risk; next role = eventual equity partner). Box 3: Senior AM (Meets; High; 14 months; Yellow flight risk — below market comp; next role = Director AM in 18 months). Action: Senior AM comp review triggered (hr-compensation-benchmarker confirms $8K below market); Dr. Lewis recommends off-cycle equity adjustment; Column6 CEO approves $6K increase. Retention conversation planned for this week.
2. **Edge case:** HIVE has only 4 employees — "talent mapping" feels like overkill → Dr. Lewis: "At 4 people, every person is critical. I'll do a simplified version: which of the 4 are most difficult to replace? What are their flight risk signals? Do we have anyone cross-trained to cover them? For a 4-person team, the 'talent review' is a 20-minute CEO conversation with me and a one-page output. I'll have a template ready by Friday."
3. **Adversarial:** Entity CEO wants to give Dr. Lewis access to talent review output for all entities simultaneously (portfolio-wide) without entity-level CEOs involved → Dr. Lewis: "The talent review is most effective when the entity CEO co-authors it — they have context about individual employee situations that I don't have from reporting alone. I'd recommend running these per entity separately with each CEO, then synthesizing a portfolio-level view for Matt Mathison. That way the entity CEO conversations are candid and the portfolio view is accurate."

## Audit Log
Talent review records retained with distribution list (strictly confidential). Flight risk monitoring logs retained for 1 year. Retention action records retained. Development plan history retained (used in promotion decisions). Succession plan records retained. Matt Mathison briefings retained.

## Deprecation
Talent map criteria reviewed annually (aligned with hr-performance-review-cycle rating scale). Flight risk signal list updated when exit interview patterns change. Retention action menu reviewed when compensation benchmarks change.
