---
name: exec-team-accountability
description: "Build and manage executive accountability systems for MBL Partners and portfolio company leadership teams. Use when the user says 'team accountability', 'accountability system', 'leadership accountability', 'hold the team accountable', 'accountability framework', 'exec accountability', 'team performance accountability', 'how do we hold leaders accountable', 'accountability structure', 'team commitments', 'executive commitments', 'commitment tracking', 'accountability meeting', 'accountability review', 'performance accountability', 'results accountability', 'who is accountable for what', 'RACI', 'responsibility matrix', 'leadership team commitments', 'how do we track commitments', 'escalation process', 'team miss accountability', or 'address the accountability gap'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--level <executive|team|department>] [--action <build|review|escalate|debrief>] [--cadence <weekly|monthly|quarterly>]"
---

# Exec Team Accountability

Build and manage accountability systems for MBL Partners and portfolio company leadership teams — creating the commitment structures, review cadences, and escalation protocols that ensure what leaders say they will do actually gets done. Accountability is not punishment for missing targets; it is a system that makes commitments visible, creates shared pressure, and drives execution at the leadership level. A team without accountability infrastructure is a team that runs on goodwill and informal pressure — which works until it doesn't.

## When to Use
- Building a new leadership team accountability cadence for a portfolio company
- Preparing a leadership team performance review (monthly, quarterly)
- Addressing a pattern of missed commitments by a leader or team
- Matt Mathison wants to understand the accountability health of a specific entity
- Post-portfolio-review: converting the review's findings into accountability actions

## Team Accountability Framework

```
ACCOUNTABILITY ARCHITECTURE:

  Level 1 — Individual commitments (exec-action-tracker):
    Every action item has one owner, one due date, one definition of done.
    Tracked weekly in Monday.com.
    Escalated per the action tracker protocol.
    
  Level 2 — Quarterly OKRs / goal commitments:
    Each leader commits to 3-5 measurable objectives per quarter.
    Objectives are SMART: Specific, Measurable, Achievable, Relevant, Time-bound.
    Progress reviewed monthly (not just at the end of the quarter).
    MISS categories: A (Execution), B (Plan), C (External), D (Resource) — same as exec-portfolio-review
    
  Level 3 — Operating rhythm commitments:
    Each leader commits to their recurring deliverables:
      CEO: Weekly Matt briefing (input to exec-ceo-briefing); quarterly review inputs (5 days early)
      COO: Weekly ops report; department head 1-on-1s (exec-1-on-1-framework)
      CFO: Monthly financial close (by the 15th); quarterly LP report inputs
    These are non-negotiable recurring commitments — missing one requires same-day explanation.

ACCOUNTABILITY REVIEW MEETING (Monthly; leadership team):

  Purpose: Not a status update. An accountability meeting.
  The distinction: a status update reports what happened; an accountability meeting asks
    who committed to what, what happened, and what changes based on the result.
    
  Agenda (60 minutes):
    0:00-0:10 — Scoreboard review:
      3-5 entity metrics in green/yellow/red. No narrative — just the numbers.
      Each red item gets one sentence: root cause category (A/B/C/D) and owner.
      
    0:10-0:40 — Commitment review:
      Each leader: what did you commit to last month? Did you deliver?
      Green: acknowledge and move on.
      Yellow: what's the path to completion? What help do you need?
      Red: what's the root cause? What changes? (No blaming external factors first — own execution)
      
    0:40-0:55 — Next month commitments:
      Each leader states 2-3 specific commitments for the next 30 days.
      Commitments are logged live in Monday.com (exec-action-tracker).
      
    0:55-1:00 — Accountability culture note:
      One brief observation from Matt Mathison or Dr. Lewis about team accountability patterns.
      Not personal criticism — a pattern observation. "I notice we keep categorizing misses as C
      (external) — let's make sure we're being honest about the A (execution) component."

ACCOUNTABILITY CONVERSATION FRAMEWORK (for individual missed commitments):

  Step 1 — Fact first:
    "The commitment was X. The actual result was Y. The gap is Z."
    State the fact. Don't editorialize. Don't start with "I'm disappointed."
    
  Step 2 — Understand before judging:
    "Walk me through what happened."
    Listen. Do not interrupt. Do not challenge during the explanation.
    
  Step 3 — Root cause:
    Classify together: A (their execution), B (their planning), C (external), D (resource).
    If they say C (external) and Dr. Lewis assesses it's A: "I hear that [external factor] was
      a contributor. What's the execution piece that you owned in this outcome?"
    
  Step 4 — Consequence (if recurring):
    First miss: coaching conversation. No formal consequence.
    Second miss (same type): explicit expectation reset. "This needs to not happen a third time."
    Third miss (same type): Matt Mathison conversation. Formal performance management.
    
  Step 5 — Forward commitment:
    "What do you commit to specifically for the next 30 days to address this?"
    Write it down. Log it. Review it next month.

TEAM ACCOUNTABILITY HEALTH INDICATORS (Dr. Lewis monitors):

  GREEN signals:
    □ >85% of monthly commitments delivered on or before due date
    □ Misses are self-reported before being flagged by Dr. Lewis
    □ Root cause classification is honest (mix of A/B/C/D, not all C)
    □ Leaders hold each other accountable without waiting for Matt Mathison to do it
    
  YELLOW signals:
    □ 70-85% commitment delivery rate
    □ Misses are discovered by Dr. Lewis before being surfaced by the leader
    □ Root cause is always C (external) or D (resource) — executive defensiveness
    □ Leaders hedge on their commitments to protect themselves from accountability
    
  RED signals:
    □ <70% commitment delivery rate
    □ Recurring misses from the same leader with no behavior change
    □ Leaders are not candid about what's happening in their area
    □ Accountability conversations are avoided by Matt Mathison or Dr. Lewis
```

## Output Format

```markdown
# Team Accountability Review — [Entity] — [Month/Year]
**Facilitated by:** [Dr. Lewis / Matt Mathison] | **Participants:** [List]

---

## Scoreboard

| Metric | Target | Actual | Status | Root cause (if red) |
|--------|--------|--------|--------|-------------------|
| [Metric] | [Target] | [Actual] | 🟢/🟡/🔴 | [A/B/C/D — owner] |

---

## Commitment Review (Prior Month)

| Leader | Commitment | Status | Root cause | Next step |
|--------|-----------|--------|-----------|----------|
| [Name] | [What they committed to] | 🟢/🟡/🔴 | [If not green] | [Specific next step] |

---

## Next Month Commitments (logged live)

| Leader | Commitment | Due | Logged in Monday.com |
|--------|-----------|-----|---------------------|
| [Name] | [Specific commitment] | [Date] | ✅ / Pending |

---

## Accountability Culture Note

[One observation about team accountability patterns — non-accusatory, specific, pattern-level]

---

## Accountability Health: [GREEN / YELLOW / RED]

Delivery rate last 3 months: [N]%
Pattern observation: [What Dr. Lewis is watching]
```

## Output Contract
- Accountability is applied consistently or it erodes — a commitment that is missed without consequence trains the team that commitments are optional; the first miss gets coaching; the second gets an explicit reset; the third gets Matt Mathison; this protocol is applied consistently across all leaders regardless of their relationship with Matt Mathison or their prior performance; inconsistent accountability application is worse than no accountability system because it creates a hierarchy of accountability that destroys trust
- Commitments must be specific before they go on the record — "I'll improve our onboarding process" is not a commitment; "I will deliver the updated onboarding playbook to Dr. Lewis by the 15th" is a commitment; Dr. Lewis challenges vague commitments in the accountability meeting before logging them; a specific commitment has a verb, an outcome, and a date
- The accountability system serves the culture, not the other way around — accountability tools (Monday.com, the monthly review, the escalation protocol) are infrastructure; they work only if Matt Mathison models the accountability behavior he expects from the team; if Matt misses commitments without holding himself accountable, the team interprets accountability as selective enforcement; Dr. Lewis includes Matt's own commitments in the review cadence
- HITL required: accountability conversations involving a second or third miss are reviewed with Matt Mathison before Dr. Lewis delivers them; any formal performance management action requires Matt Mathison approval; the monthly accountability review is attended by Matt Mathison or delegated to Dr. Lewis explicitly — it is not optional; Matt Mathison's own commitments are included in the review

## System Dependencies
- **Reads from:** exec-action-tracker (weekly commitment status; Monday.com board data); exec-portfolio-review (quarterly performance data — feeds the scorecard); exec-kpi-dashboard (entity metrics — scoreboard input); exec-leadership-coaching (accountability data feeds back into coaching development plans); exec-1-on-1-framework (individual leader 1-on-1 accountability between monthly reviews)
- **Writes to:** Monthly accountability review record (SharePoint → ExecutiveSupport → AccountabilityReviews → [Entity] → [YYYY]); exec-action-tracker (new commitments logged live); exec-leadership-coaching (accountability pattern data informs coaching focus); exec-performance-management (recurring miss patterns escalate to formal performance management)
- **HITL Required:** Second and third miss conversations reviewed with Matt Mathison before delivery; formal performance management actions require Matt Mathison approval; Matt Mathison attends the monthly accountability review or explicitly delegates; Matt's own commitments included in the review; any formal consequence for a recurring miss requires Matt Mathison authorization

## Test Cases
1. **Golden path:** Column6 monthly accountability review; 4 leaders; Dr. Lewis facilitates; VCR metric is 🟡 at 90.8% (target 92%); Column6 Head of Ad Operations committed to "run the targeting parameter audit by the 10th" — RED, not delivered; accountability conversation: "Walk me through what happened." Head of Ad Ops: "We had a client emergency that consumed the team." Dr. Lewis: "I hear that. What's the execution piece you own in missing the audit date — did you flag the conflict proactively or wait until after the deadline?" Head of Ad Ops: "I didn't flag it." Dr. Lewis: "That's the execution piece. The commitment for next month: deliver the audit by the 5th, and if anything threatens that timeline, flag it to me 48 hours before — not after. Agreed?" Head of Ad Ops: "Agreed." Logged. Next month: audit delivered on the 4th, plus a 48-hour heads-up was sent on day 3 as a precaution. Culture improvement visible.
2. **Edge case:** Accountability delivery rate has been stuck at 75% for 3 months → Dr. Lewis raises to Matt: "We have a systemic accountability health issue at [entity] — 75% delivery rate for 3 months suggests the commitments being made are either not specific enough, not resourced properly, or not genuinely owned. I want to do a 30-minute root cause session with you before the next accountability review. My hypothesis: the commitments are too ambitious and leaders are setting themselves up to miss. We may need to reset the commitment-setting process before we address individual performance." Matt: "Agree — let's do the root cause session."
3. **Adversarial:** A senior leader pushes back on the accountability system as "creating bureaucracy that slows us down" → Dr. Lewis: "I hear that. Tell me specifically what's slowing you down — is it the Monday.com logging, the monthly review meeting, or the commitment structure itself?" Leader: "The monthly meeting takes 60 minutes and I don't feel like I get value from it." Dr. Lewis: "Fair. Let's look at the meeting format — if the scoreboard review and commitment review can be condensed, we'll do that. But I want to be honest with you: the alternative to a structured 60-minute accountability meeting is a 4-hour crisis meeting when something that was yellow for 3 months finally turns red. Which do you prefer?" Leader: "Fine. Can we get it to 45 minutes?" Dr. Lewis: "Yes. I'll redesign the format."

## Audit Log
All accountability reviews retained by entity and month. Commitment delivery rate data retained (for trend analysis). Accountability conversations (second and third miss) retained. Matt Mathison approvals for formal consequences retained. Accountability health trend data retained (quarterly analysis: is the team getting better or worse?).

## Deprecation
Retire when each entity has a COO or Chief of Staff who owns the operating cadence and accountability infrastructure — with Dr. Lewis providing the THRIVE framework oversight and portfolio-level accountability data to Matt Mathison.
