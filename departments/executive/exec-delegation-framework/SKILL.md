---
name: exec-delegation-framework
description: "Build and execute a structured delegation framework for MBL Partners and portfolio company leadership. Use when the user says 'delegation', 'delegate the task', 'delegate the responsibility', 'how do I delegate this', 'build the delegation framework', 'delegation structure', 'what should I delegate', 'who should own this', 'hand off the responsibility', 'build the team capability', 'stop doing this myself', 'transition the work', 'delegation plan', 'build a delegation model', 'empower the team', 'give the team more ownership', 'reduce my load', 'develop the team through delegation', 'delegate without losing control', 'effective delegation', 'delegation protocol', 'stop doing low-leverage work', or 'what should I hand off'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--person <DrLewis|MattMathison|entityCEO>] [--task <description>] [--recipient <name|role>] [--action <plan|execute|monitor|close>]"
---

# Exec Delegation Framework

Build and execute a structured delegation framework for MBL Partners and portfolio company leadership — creating the systematic process for handing off work, responsibilities, and decision authority to the right people at the right level, freeing up executive capacity for the highest-leverage activities. Delegation fails most often not because leaders lack willingness but because they lack structure: unclear expectations, no progress checkpoints, and no accountability mechanism. Done well, delegation builds team capability, creates organizational resilience, and returns executive time to the activities that only an executive can do.

## When to Use
- A time audit (exec-time-audit) identifies activities that should be delegated
- A new team member needs to take on expanded responsibility
- An executive is overwhelmed and needs to reduce their operational load
- A task that Dr. Lewis owns should be transitioned to an entity leader or team
- Matt Mathison wants to develop an entity CEO's capability by delegating something important

## Delegation Framework

```
DELEGATION DECISION MATRIX:

  Before delegating, assess:
  
    1. CAN this be delegated?
       □ Does the recipient have the capability (or can they develop it)?
       □ Is this a task where the executive's personal involvement is essential?
          (Matt Mathison personal LP calls → NOT delegatable; LP email drafts → delegatable)
       □ Is the risk of a lower-quality output acceptable for this task?
       
    2. SHOULD this be delegated?
       □ Is this low-leverage for the executive? (exec-time-audit)
       □ Would delegating this develop the recipient's capability?
       □ Would delegating this create organizational resilience?
       
    3. TO WHOM?
       □ Who has the capability (or is closest to having it)?
       □ Who has the capacity?
       □ Who would benefit most from the development opportunity?
       
    4. WITH WHAT SUPPORT?
       □ Does the recipient need training before taking it on?
       □ What level of initial oversight is appropriate?
       □ What does success look like? (The outcome; not the method)

DELEGATION LEVELS (what you're delegating):

  Level 1 — Task delegation: "Do this specific task and bring me the result."
    Appropriate for: new team members; first-time tasks; high-risk tasks
    Oversight: high (frequent check-ins; review before finalization)
    
  Level 2 — Method delegation: "Handle this area; check in when you have a decision to make."
    Appropriate for: developing team members with some experience in the area
    Oversight: medium (check-ins at key milestones; not every step)
    
  Level 3 — Outcome delegation: "Own this result. Make the decisions. Update me at milestones."
    Appropriate for: experienced team members; proven capability in this area
    Oversight: low (milestone check-ins; escalation available but not expected)
    
  Level 4 — Authority delegation: "You own the decision authority. I should not be in the loop
    unless you need me."
    Appropriate for: high-trust, proven leaders; strategic delegation to entity CEOs
    Oversight: minimal (quarterly review; escalation reserved for material events)

DELEGATION PROTOCOL (for each delegation):

  STEP 1 — CLARITY OF EXPECTATION:
    What is the specific outcome expected?
    What does "done well" look like? (Not the method — the result)
    What is the deadline or milestone cadence?
    What is the level of delegation? (1-4 above)
    
  STEP 2 — RESOURCE AND ACCESS:
    Does the recipient have what they need? (Systems access; information; budget authority)
    Who should they contact if they need something? (Not "come find me for everything")
    
  STEP 3 — PROGRESS PROTOCOL:
    When do they check in? (Not constantly; not never)
    What should they escalate? (What is within their authority vs. what requires the executive?)
    
  STEP 4 — FEEDBACK AND DEVELOPMENT:
    At the first milestone: Dr. Lewis or Matt reviews the work and gives specific feedback
    Feedback question: "What would you do differently?" (Before "here's what I'd fix")
    Development frame: "The goal is for you to do this without me by [date]."
    
  STEP 5 — CLOSE AND TRANSFER:
    Once the recipient has delivered successfully 2-3 times: this is their responsibility now
    Remove the task from the executive's list formally (exec-time-audit)
    Update exec-action-tracker to reflect the new owner going forward

MBL-SPECIFIC DELEGATION PATTERNS:

  What Matt Mathison should NEVER delegate:
    □ Tier 1 LP personal calls (relationship is non-transferable)
    □ Entity CEO 1-on-1s (culture; accountability; personal relationship)
    □ Board governance decisions and board communication leadership
    □ Final approval on deals (GO/NO GO; LOI; buyer selection)
    □ INTEGRITY consequence decisions (performance exit for a values violation)
    
  What Matt Mathison CAN and SHOULD delegate (to Dr. Lewis):
    □ Meeting intelligence preparation (exec-weekly-briefing; exec-meeting-prep)
    □ Action item tracking and follow-up (exec-action-tracker)
    □ Technology investment evaluation and AI strategy execution
    □ Portfolio operations monitoring (exec-portfolio-operations)
    □ Draft preparation for all external communications
    
  What Dr. Lewis can delegate to entity CEOs / leaders:
    □ Entity-level THRIVE culture implementation (exec-culture-builder)
    □ Department-level accountability (exec-team-accountability)
    □ Operational detail within the approved operating plan
    □ Customer relationship management below the Tier 1 threshold
```

## Output Format

```markdown
# Delegation Plan — [Task/Responsibility] — [Date]
**From:** [Dr. Lewis / Matt Mathison] | **To:** [Recipient name/role]
**Level:** [1 / 2 / 3 / 4] | **Development opportunity:** [Yes / No]

---

## Expectation Clarity

**Outcome expected:** [Specific result — not the method]
**Definition of done:** [What does excellent look like?]
**Deadline / milestone cadence:** [Specific date or recurring cadence]
**Delegation level:** [Level 1-4 description]

---

## Resources and Access

| Need | Status |
|------|--------|
| System access | [Confirmed / Pending] |
| Information | [What they have; what they need] |
| Budget authority | [Amount if applicable] |

---

## Progress Protocol

**Check-ins:** [When; how often; what format]
**Escalation criteria:** [What warrants coming back to the delegator]
**Autonomy boundary:** [What they decide independently; what they escalate]

---

## Transition Timeline

| Milestone | What happens | Date |
|-----------|-------------|------|
| First delivery | Delegator reviews and gives feedback | [Date] |
| Second delivery | Delegator light-touches only | [Date] |
| Full transfer | Recipient owns independently | [Date] |
```

## Output Contract
- Outcome, not method — the delegator specifies the result, not the steps; telling someone exactly how to do something is not delegation — it is supervised execution; the recipient should have the freedom to develop their own method for delivering the specified outcome; if the delegator is constantly correcting the method, they have delegated a task but not the decision authority; Dr. Lewis distinguishes between "this method doesn't meet the quality standard" (acceptable correction) and "I would have done it differently" (not a correction — leave it)
- First milestone review is mandatory — the first time a recipient delivers a delegated task is always reviewed by the delegator; not to approve every future delivery, but to confirm the quality standard was understood and achieved; if the first delivery is off-target, catching it early prevents a pattern from forming; if the first delivery is good, the delegator can immediately move to Level 2 or 3 oversight and free themselves from the task faster
- Formal transfer closes the loop — a delegation that is "mostly" transitioned but still shows up on the executive's list is an incomplete delegation; the delegation is complete when: (1) the recipient has delivered successfully 2-3 times; (2) the task is formally removed from the executive's responsibility list; (3) exec-action-tracker reflects the new owner; (4) the executive is no longer being looped in on routine progress
- HITL required: Matt Mathison approves any delegation that gives an entity CEO or leader decision authority that was previously held at the MBL level (e.g., delegating a capital decision below the $10K threshold to an entity CEO); Dr. Lewis implements delegations within his own scope without Matt approval for routine executive support tasks; any delegation that changes the accountability structure for a Tier 1 LP or board relationship requires Matt Mathison awareness

## System Dependencies
- **Reads from:** exec-time-audit (what should be delegated — the input that identifies delegation candidates); exec-team-accountability (who has the capability to receive delegated work); exec-leadership-coaching (which leaders are ready for expanded responsibility); exec-1-on-1-framework (delegation can be framed as a development opportunity in the 1-on-1 context); exec-succession-planning (delegation is a succession planning tool — developing the next layer of leadership)
- **Writes to:** Delegation plans (SharePoint → ExecutiveSupport → Delegation → [YYYY]); exec-action-tracker (delegated tasks are re-logged with the new owner); exec-time-audit (successfully delegated tasks are removed from the executive's allocation); exec-leadership-coaching (delegation outcomes feed into development tracking)
- **HITL Required:** Matt Mathison approves delegations that change MBL-level decision authority; Dr. Lewis executes routine executive support delegations within his own scope; first milestone review is mandatory for all new delegations; formal transfer requires explicit confirmation that the task is off the executive's list

## Test Cases
1. **Golden path:** exec-time-audit identifies that Dr. Lewis is spending 2.5 hrs/week on entity CEO meeting scheduling coordination (a Level 1 task that entity support staff could handle); Dr. Lewis writes a delegation plan: "To: Allevio office admin; Level 1; outcome: all entity CEO scheduling coordination handled directly with the entity office admin, with Dr. Lewis only looped in for Matt Mathison calendar conflicts; first milestone: handle all scheduling for 4 weeks independently; Dr. Lewis reviews any exceptions; formal transfer: after 4 weeks of clean execution." 4 weeks later: 0 exceptions; Dr. Lewis removes the task from his weekly list; exec-action-tracker updated. Time recaptured: 2.5 hrs/week.
2. **Edge case:** Dr. Lewis delegates a capability to an entity CEO that requires access to a system the entity CEO hasn't used before → Dr. Lewis: "Before handing this off, I need to walk you through the Monday.com boards and how the action tracker works. I'll give you 30 minutes of orientation, then you'll shadow me on one cycle, then you'll run it with me available for questions, then you're on your own. The goal is that by week 4, you're running this without needing me. Does that timeline work?" Entity CEO: "Yes." Orientation happens. Shadow week. Trial run. Full transfer in week 4. Level 1 → Level 3 in 4 weeks.
3. **Adversarial:** Matt is resistant to delegating a specific task ("I want to be involved in this") → Dr. Lewis: "Understood — and I respect that instinct. Can you help me understand what specifically you want to be involved in? If it's the decision, that's yours — I'm proposing you delegate the preparation and the first draft, not the decision itself. If it's because the quality isn't there yet, we should work on the capability before delegating, not indefinitely hold onto the task. If it's because the relationship requires your personal involvement, we should classify this as a non-delegatable task and take it off the list of options. Which of those is it?" Matt: "It's the quality — I don't trust the work yet." Dr. Lewis: "Then let's build the capability first. I'll work alongside them for 6 weeks and get you to the quality level you need. Then we delegate."

## Audit Log
All delegation plans retained by task and date. First milestone reviews retained. Formal transfer records retained (task off the executive's list; new owner confirmed). Delegation failures retained (what was delegated; why it didn't transfer successfully; what the corrective action was). Time recaptured records retained (what delegation freed; how the freed time was reallocated).

## Deprecation
Retire when MBL has a Chief of Staff who manages executive delegation and workflow design — with Dr. Lewis retaining the AI strategy and technology delegation decisions and Matt Mathison retaining the decision authority on what to delegate and to whom.
