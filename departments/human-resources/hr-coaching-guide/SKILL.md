---
name: hr-coaching-guide
description: "Guide manager coaching conversations for MBL Partners portfolio company leaders. Use when the user says 'coaching', 'coaching conversation', 'coach an employee', 'manager coaching', 'how to give feedback', 'give feedback', 'feedback conversation', 'performance feedback', 'behavioral feedback', 'difficult conversation', 'how to have a difficult conversation', 'hard conversation', 'employee conversation', 'address a behavior', 'address performance', 'SBI feedback', 'situation behavior impact', 'how do I tell them', 'how do I address', 'manager support', 'how to manage', 'managing performance', 'informal coaching', 'documenting coaching', 'coaching documentation', 'prior to PIP', 'before PIP', 'coaching plan', 'informal performance improvement', or 'how to raise a concern'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--manager <name>] [--employee <name>] [--entity <mbl|allevio|hive|column6>] [--topic <performance|behavior|thrive|development>] [--action <prep|document|debrief>]"
---

# HR Coaching Guide

Guide managers through informal coaching conversations — preparing them with an SBI (Situation-Behavior-Impact) framework, structuring difficult performance and behavior conversations, and documenting outcomes to build the record required before any formal PIP. Coaching is the most important managerial skill at portfolio company scale; a manager who cannot coach is a retention liability and a legal risk (undocumented performance concerns that lead to surprise terminations).

## When to Use
- A manager needs to address a performance or behavior gap before it warrants a PIP
- A manager is preparing for a difficult conversation and needs structure
- Coaching conversations need to be documented for HR records
- A manager is developing a direct report and needs a framework

## Coaching Framework

```
SBI FEEDBACK MODEL (all coaching conversations):

  SITUATION: Describe the specific context when you observed the behavior
    Time, place, setting — specific enough that the employee recalls it
    Not: "You never follow up with clients."
    Yes: "In last Tuesday's agency review call, after we agreed on the make-good plan..."
    
  BEHAVIOR: Describe the observable behavior (not your interpretation)
    What you saw or heard — not what you think it means about the person
    Not: "You don't care about client relationships."
    Yes: "...you didn't send the follow-up recap within the 24-hour window we'd committed to."
    
  IMPACT: Describe the impact on the team, entity, or client
    Business impact; relationship impact; team impact — specific, not general
    Not: "That's unprofessional."
    Yes: "The agency called me the next morning asking for the recap. I had to explain the delay,
    which undermined their confidence in our follow-through at a critical renewal moment."
    
  RESPONSE: Give the employee space to respond
    Ask: "What was happening from your side?"
    Listen without defending — understanding context is not excusing the behavior
    
  EXPECTATION: State clearly what you need to see going forward
    Not: "Please be more responsive."
    Yes: "Client follow-up recaps go out within 24 hours of any client meeting — same day when possible.
    If you're unable to meet a commitment, the client hears from you before the deadline passes."

TYPES OF COACHING CONVERSATIONS:

  PERFORMANCE COACHING (behavior that misses role expectations):
    Tone: direct but not punitive
    Goal: specific behavior change; documented
    Frequency: as needed; but at least monthly if there is an open performance concern
    
  DEVELOPMENT COACHING (strength building for HiPos):
    Tone: collaborative; growth-oriented
    Goal: build toward next level readiness
    Frequency: monthly 1:1 supplement
    
  THRIVE COACHING (values or culture misalignment):
    Tone: serious; specific; no hedging
    Goal: behavioral alignment with THRIVE standards
    Integrity concerns: Dr. Lewis conducts the conversation directly (not delegated to manager)
    Non-Integrity THRIVE concerns: manager conducts with Dr. Lewis available if needed
    
  DIFFICULT FEEDBACK PRINCIPLES:
    Deliver privately; not in front of peers
    Same day or within 24 hours of the incident (not weeks later)
    Specific behavior, not character ("you didn't follow up" not "you're unreliable")
    One issue per conversation (don't stack multiple concerns in one meeting)
    End with: "I need X from you. Do you understand? Do you have any questions?"

DOCUMENTATION (every coaching conversation):
  After every coaching conversation, the manager writes a brief note:
    Date; topic covered; specific behavior addressed; expectation stated; employee's response
    Not a memo — 3-4 sentences; sent to HR file (email to Dr. Lewis is sufficient)
    Timing: same day or next morning
    
  Why documentation matters:
    "We talked about this" is not documentation
    Without documentation, a PIP that comes 6 months later looks like the first conversation
    With 3 documented coaching conversations, the PIP looks like a reasonable escalation
    
COACHING CONVERSATION STRUCTURE (20-30 min):
  Opening (2 min): "I want to discuss something specific that happened."
  SBI feedback (5-7 min): deliver the situation-behavior-impact
  Employee response (5-10 min): listen; do not defend
  Expectation (2-3 min): clear, specific going forward
  Support (2 min): what can I do to help you succeed here?
  Close (1 min): "I'm documenting this conversation. Any questions?"
```

## Output Format

```markdown
# Coaching Conversation Record — [Employee Name] | [Entity] — [Date]
**Manager:** [Name] | **Topic:** [Performance / Behavior / THRIVE / Development]
**Documented by:** [Manager] | **Sent to HR:** [Date]

---

## Situation
[Specific context — time; place; observable event]

## Behavior Addressed
[Specific, observable behavior — what was said or done]

## Impact Stated
[Business/client/team impact — specific]

## Employee Response
[Summary of what the employee said — their context or explanation]

## Expectation Going Forward
[Specific, measurable behavior change expected]

## Support Offered
[What manager or entity will provide to help]

## Outcome
☐ Employee acknowledged; agreed to change
☐ Employee acknowledged; noted disagreement
☐ Employee denied behavior (document; Dr. Lewis review if conflicting accounts)

**Next check-in scheduled:** [Date]
```

## Output Contract
- Documentation happens same day — a coaching conversation documented 2 weeks later is easily challenged ("the manager just wrote this after they decided to fire me"); Dr. Lewis requires same-day or next-morning documentation; managers who resist documentation are managers who don't want a paper trail, which is exactly the problem; Dr. Lewis explains: "Documentation protects you as a manager as much as it protects the entity"
- THRIVE Integrity coaching conversations are conducted by Dr. Lewis directly — a manager who is not experienced at conducting values-based conversations may inadvertently make it punitive or vague; when the behavior concern involves the Integrity dimension of THRIVE, Dr. Lewis conducts the conversation personally; if the integrity concern is serious enough to potentially warrant termination, legal counsel is consulted before any conversation occurs
- One issue per conversation — a manager who delivers a "feedback dump" (5 performance concerns in one meeting) overwhelms the employee and dilutes every individual message; Dr. Lewis coaches managers to address one specific behavior per conversation; if there are multiple ongoing concerns, they are addressed in a structured sequence, not all at once
- HITL required: THRIVE Integrity coaching → Dr. Lewis conducts; coaching conversation documentation → manager sends to Dr. Lewis same day; employee denies behavior → Dr. Lewis reviews conflicting accounts; Developing/Not Meeting coaching pattern → Dr. Lewis reviews before PIP initiation; Development coaching for Director+ → Dr. Lewis awareness

## System Dependencies
- **Reads from:** hr-performance-review-cycle (performance context; rating history); hr-pip-builder (coaching serves as PIP prerequisite documentation); hr-high-performer-identifier (development coaching inputs); hr-job-profiler (role expectations — basis for performance coaching); THRIVE framework (CLAUDE.md — values framework)
- **Writes to:** Coaching conversation records (SharePoint → HR → Coaching → [Entity] → [Employee]); hr-pip-builder (coaching documentation input); hr-performance-review-cycle (coaching history for review cycle); Dr. Lewis coaching log
- **HITL Required:** Integrity concern → Dr. Lewis conducts; employee denial → Dr. Lewis reviews; Developing pattern (2+ coaching conversations) → Dr. Lewis reviews before PIP; Director+ development coaching → Dr. Lewis awareness; coaching about to escalate to PIP → Dr. Lewis + entity CEO

## Test Cases
1. **Golden path:** Column6 Campaign Manager missed VCR reporting deadline for an agency client — 2nd occurrence. Manager conducts SBI coaching: Situation: "Last Friday, the weekly VCR report for [Agency] was due by 3 PM." Behavior: "The report was sent at 5:45 PM, after the agency had already emailed asking for it." Impact: "The agency mentioned punctuality in their last NRR conversation. This is a pattern we can't sustain." Employee response: "I was finishing the make-good analysis first." Expectation: "Scheduled reports go out on time; if you need an extension, you notify the agency before the deadline, not after." Documentation sent to Dr. Lewis same afternoon.
2. **Edge case:** Employee breaks down in the coaching conversation → Dr. Lewis coaching for managers: "Acknowledge the emotion first. 'I can see this is difficult. Can I give you a moment?' Wait. Then continue when they're ready. The conversation needs to happen, but compassion is not incompatible with directness. Don't abandon the substance because they're upset. Complete the SBI; state the expectation; give them support. Document that the conversation occurred and that the employee was emotional but that the topics were addressed."
3. **Adversarial:** Manager wants to skip coaching conversations and go straight to PIP because "I've mentioned it informally dozens of times" → Dr. Lewis: "I understand the frustration — you've been dealing with this for a while. But 'I've mentioned it informally' is not documentation, and without documentation, a PIP and subsequent termination looks like the first time we raised the concern. I need 2 written coaching conversation records before we can initiate a PIP. Let's start one today — I'll help you write it up in 10 minutes."

## Audit Log
All coaching conversation records retained permanently (potential litigation reference). THRIVE Integrity coaching records retained permanently. Manager-authored coaching documentation retained with date (to confirm timing). Escalation-to-PIP documentation retained.

## Deprecation
SBI framework is a permanent tool with no planned deprecation. THRIVE coaching escalation triggers reviewed if THRIVE framework changes. PIP prerequisite documentation standard reviewed annually.
