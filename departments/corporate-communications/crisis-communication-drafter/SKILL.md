---
name: crisis-communication-drafter
description: "Draft crisis communications for internal and external stakeholders. Use when the user says 'crisis communication', 'crisis message', 'how do we communicate this bad news', 'damage control communication', 'incident communication', 'breach notification', or 'emergency announcement'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<crisis-description> [--audience <internal|lp|customers|media|regulatory>] [--severity <high|critical>]"
---

# Crisis Communication Drafter

Draft crisis communications for any audience under time pressure. Calm, clear, credible — the three non-negotiables in a crisis communication.

## When to Use
- Cybersecurity breach or data incident
- Significant financial loss or fraud discovery
- Key leadership departure (unexpected)
- Regulatory action or legal issue
- Operational failure affecting customers or LPs
- Any situation where silence is worse than speaking

## Communication Principles

### What Works in a Crisis
1. **Speed** — first credible communication beats perfect communication
2. **Honesty** — say what you know, say what you don't know, say what you're doing
3. **No speculation** — state facts, not guesses
4. **Empathy before explanation** — acknowledge impact before details
5. **Action** — what you're doing, not just what happened

### What Kills Credibility
- Minimizing: "this is a minor issue..."
- Deflecting: "this was caused by..."
- Silence: saying nothing is a message
- Inconsistency across audiences (different stories to different groups)

## Audience-Specific Tone

| Audience | Tone | Key Emphasis |
|---------|------|-------------|
| Internal (employees) | Direct, human, transparent | Impact on them, what leadership is doing |
| LPs / Investors | Professional, full context | Financial exposure, management response |
| Customers / Clients | Empathetic, action-focused | Impact on them, remediation steps |
| Regulatory | Formal, complete, factual | Compliance posture, corrective actions |
| Media (if applicable) | Controlled, factual, brief | Key facts only — no speculation |

## Message Architecture

**Level 1 (immediate — within 2 hours of awareness):**
"We are aware of [issue]. We are actively investigating. We will update you by [time]."

**Level 2 (first substantive update — within 24 hours):**
- What happened (facts only)
- Who is affected and how
- What we've done so far
- What we're doing next
- Next update timing

**Level 3 (resolution communication):**
- Root cause
- Full impact disclosure
- Remediation complete
- What we're doing to prevent recurrence

## Output Format

```markdown
# Crisis Communication Draft
**Incident:** <brief description>
**Severity:** High / Critical
**Audience:** <audience>
**Draft Level:** 1 (initial) / 2 (substantive) / 3 (resolution)
**Prepared:** <date/time>

---

[Subject / Heading for the communication]

[Communication body]

---

**Notes for review:**
- <What we don't know yet and should not speculate about>
- <Legal review recommended on: <specific section>>
- <Timing recommendation>
```

## Output Contract
- Never speculates — flags what is unknown and should not be stated
- Always recommends legal review before sending to LPs or regulatory bodies
- Level 1 draft always complete within the skill run — no excuses for delay
- HITL required (Tier 1 only — Matt Mathison) before any crisis communication is sent

## System Dependencies
- **Reads from:** Incident description provided, affected parties
- **Writes to:** Nothing (draft only)
- **HITL Required:** Matt Mathison must approve all crisis communications before sending. Legal review recommended for LP and regulatory communications.
- **Data sensitivity:** CONFIDENTIAL — treat the incident description itself as sensitive

## Test Cases
1. **Golden path:** Data breach discovered at 10pm → Level 1 "we are aware" draft ready immediately for internal distribution
2. **Edge case:** Crisis where root cause is unknown → explicitly flags root cause as "under investigation — do not state cause", uses only confirmed facts
3. **Adversarial:** Request to minimize or spin a serious incident → refuses to minimize factual severity, offers to frame mitigation actions positively while keeping facts accurate

## Audit Log
Crisis communication drafts retained with timestamp, incident description, and approval chain. All sent communications documented.

## Deprecation
This skill is always relevant. Review annually to align with updated crisis communication best practices.
