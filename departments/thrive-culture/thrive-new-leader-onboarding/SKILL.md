---
name: thrive-new-leader-onboarding
description: "onboard new leader to thrive culture, new manager thrive orientation, leader culture integration, thrive week one listening protocol, day 30 thrive check-in new leader, day 60 behavioral feedback leader, day 90 thrive assessment leader, shadow thrive exemplar, you are the culture now leader moment, entity ceo sponsor new leader, manager thrive onboarding, director thrive integration, vp thrive culture orientation, new hire manager thrive, leadership culture accountability first 90 days, thrive leader modeling, new leader observe before acting, culture carrier leader, leader thrive behavioral feedback, manager culture integration verdict"
metadata:
  version: 1.0.0
  tier: thrive-culture
  owner: Dr. John Lewis
argument-hint: "<entity> <leader-name> <title> <start-date>"
---

# THRIVE New Leader Onboarding

New leaders at MBL entities carry disproportionate culture weight — their team watches every behavior from Day 1 and reverse-engineers what is actually valued. This skill manages the structured 90-day THRIVE culture integration sequence for all Manager-and-above hires across MBL Partners and its portfolio companies.

## When to Use

- A new Manager, Director, VP, or C-suite leader joins any MBL entity (Allevio, HIVE, Column6, MBL HoldCo)
- An existing employee is promoted into a people-leadership role for the first time
- Dr. Lewis needs to brief the entity CEO on a new leader's THRIVE culture integration status
- A new leader's team is showing early signs of culture drift that may trace to leadership modeling gaps

## THRIVE New Leader Onboarding Framework

```
NEW LEADER THRIVE ONBOARDING — [ENTITY] | [LEADER NAME] | [TITLE] | START: [DATE]
═══════════════════════════════════════════════════════════════════════════════════

WEEK 1 — LISTENING PROTOCOL
─────────────────────────────────────────────────────
Rule: Observe before acting. No policy changes, no restructures, no culture declarations.
Actions:
  □ Attend THRIVE orientation session (1 hr; Dr. Lewis or Callie-led)
  □ Read entity-specific THRIVE playbook (provided Day 1)
  □ Shadow 2+ THRIVE exemplars in natural work settings
  □ Meet entity CEO for culture expectations conversation
  □ Complete: "What does THRIVE look like in my role?" written reflection

THRIVE ORIENTATION SESSION — WEEK 1
─────────────────────────────────────────────────────
Pillar-by-pillar debrief:
  TRUTH     — What honest communication looks like at this entity
  HUSTLE    — Accountability, ownership, no excuses culture
  RESPECT   — How we treat each other, vendors, clients, and the work
  INTEGRITY — Kill criterion; non-negotiable; what it means to fail here
  VALUE     — Are we creating real returns or activity?
  ENJOY     — Sustainable energy; not toxic positivity; real culture enjoyment

YOU ARE THE CULTURE NOW — LEADERSHIP FRAMING
─────────────────────────────────────────────────────
Message delivered to every new leader verbally and in writing:
  "Your team will reverse-engineer the culture from watching you.
   If you cut corners on Truth, they will too.
   If you model Integrity, it becomes the floor.
   You don't announce culture — you demonstrate it."

DAY 30 — THRIVE CHECK-IN
─────────────────────────────────────────────────────
Facilitated by: Dr. Lewis (Manager+); Entity CEO (Director+)
Format: 30-min 1:1; open questions
  □ What has surprised you about the culture here?
  □ Where do you see THRIVE values operating well?
  □ Where do you see friction or gaps?
  □ What questions do you have about the kill criterion?
  □ Is there anything you've been asked to do that felt off?
Output: Brief written summary → entity CEO

DAY 60 — BEHAVIORAL FEEDBACK ROUND
─────────────────────────────────────────────────────
Facilitated by: Entity CEO + Dr. Lewis review
Source: 3-5 direct reports or peers (anonymous; structured survey)
Questions:
  □ Is this leader demonstrating Truth in communications? (1-5)
  □ Are they modeling Hustle and accountability? (1-5)
  □ Do they show Respect to the team? (1-5)
  □ Do you see any Integrity concerns? (yes/no + open)
  □ Do you feel this leader creates Value? (1-5)
  □ Does this leader help make work Enjoyable? (1-5)
Threshold: Any score ≤ 2.5 → coaching conversation initiated
Integrity flag: Any "yes" on Integrity concern → immediate escalation

DAY 90 — THRIVE ASSESSMENT + CULTURE INTEGRATION VERDICT
─────────────────────────────────────────────────────
Self-assessment + Manager assessment + Dr. Lewis review
  FULL INTEGRATION      — Modeling all pillars; no concerns; cleared
  COACHING NEEDED       — 1-2 pillar gaps; coaching plan activated
  VALUES MISALIGNMENT   — Sustained gap or Integrity flag; PIP or separation

Entity CEO signature on verdict required for Director+
Matt Mathison notified for VP+ or any Values Misalignment verdict
```

## Output Format

```markdown
## THRIVE New Leader Onboarding Report
**Leader:** [Name] | **Entity:** [Entity] | **Title:** [Title] | **Start:** [Date]

### Week 1 Completion
- [ ] THRIVE Orientation attended
- [ ] Entity playbook read
- [ ] Exemplar shadow sessions (2 minimum)
- [ ] CEO culture conversation complete
- [ ] Written reflection submitted

### Day 30 Check-In Summary
[Key themes from 30-min 1:1]

### Day 60 Behavioral Feedback Scores
| Pillar | Score (1-5) | Flag? |
|--------|------------|-------|
| Truth | | |
| Hustle | | |
| Respect | | |
| Integrity | | |
| Value | | |
| Enjoy | | |

### Day 90 Verdict
**Status:** [Full Integration / Coaching Needed / Values Misalignment]
**Approved by:** [Entity CEO] | **Reviewed by:** Dr. Lewis
```

## Output Contract

- Every report must capture all three milestone checkpoints (Day 30, 60, 90) — partial completion is logged as incomplete and triggers a follow-up reminder to Dr. Lewis because the integration cadence is the primary failure prevention mechanism; skipping milestones is correlated with culture drift in the first year.

- Integrity scores are reported separately and always surfaced first in any escalation communication — the kill criterion applies equally to new leaders regardless of title, offer package, or hiring-manager relationship, and any ambiguity on this point must be resolved before Day 30 concludes.

- The "You Are the Culture Now" framing is delivered verbally and confirmed in writing at every leader onboarding without exception — new leaders who do not receive this message explicitly often underestimate the behavioral modeling weight their team assigns to them, which is a root cause of first-year culture erosion.

## System Dependencies

### Reads from
- Entity THRIVE playbook (entity-specific; Callie maintains)
- THRIVE exemplar roster (current; maintained in Dr. Lewis's program records)
- Prior THRIVE assessment history for internal promotions

### Writes to
- Entity CEO onboarding progress summary (Day 30, 60, 90)
- Dr. Lewis program tracking log (all Manager+ integrations)
- Matt Mathison notification queue (VP+ or Values Misalignment verdicts)

### HITL Required
- Dr. Lewis reviews all Day 60 feedback scores before distribution
- Entity CEO must co-sign Day 90 verdict for Director+
- Matt Mathison escalation required for any Values Misalignment verdict at any level

## Test Cases

1. **Golden path:** New Director joins Allevio on June 1. Week 1 orientation complete. Day 30 check-in reveals enthusiasm for THRIVE but unfamiliarity with Integrity kill criterion — Dr. Lewis clarifies in session. Day 60 feedback: all pillars 3.8+; no Integrity flags. Day 90: Full Integration verdict. Entity CEO signs off. Dr. Lewis closes the record.

2. **Edge case:** Internal IC promoted to first-time manager at HIVE. No external hire process — promoted mid-quarter. Skill triggers a retroactive Day 1 orientation and compresses Week 1 protocol into Week 2 without skipping milestones. Day 60 feedback surfaces low Hustle score (2.4) from direct reports — coaching plan activated; Day 90 reassessment scheduled.

3. **Adversarial:** New VP joins Column6, skips scheduled Week 1 orientation citing "ramp priorities." Entity CEO does not escalate. Skill flags the missed milestone to Dr. Lewis, who re-schedules and notifies the entity CEO that orientation is mandatory regardless of seniority. Day 60 feedback surfaces an Integrity concern from one direct report — immediate escalation to Dr. Lewis and entity CEO per protocol.

## Audit Log

Every new leader onboarding record is timestamped at each milestone (Week 1, Day 30, Day 60, Day 90), attributed to Dr. Lewis as program owner, and retained for the duration of the leader's employment plus three years. Day 60 feedback data is stored anonymously at the response level but attributed at the aggregate pillar score level. Values Misalignment verdicts are logged with entity CEO signature, Dr. Lewis confirmation, and Matt Mathison notification timestamp.

## Deprecation

This skill is reviewed annually by Dr. Lewis as part of the THRIVE culture ops review cycle. It is deprecated when MBL adopts a successor leader integration framework that formally supersedes the 30-60-90 protocol, or when the THRIVE values framework is materially revised. Callie coordinates deprecation testing with Fitz before any version is retired from the active skill registry.
