---
name: exec-weekly-briefing
description: "Build the weekly meeting intelligence summary for MBL Partners. Use when the user says 'weekly briefing', 'weekly summary', 'meeting summary', 'week in review', 'meeting intelligence', 'weekly meeting intelligence', 'summarize the week', 'what happened this week', 'build the weekly', 'weekly report', 'weekly update', 'pull meeting summaries', 'summarize the meetings', 'Krista weekly summary', 'Monday.com push', 'weekly intelligence report', 'action item summary', 'weekly highlights', 'executive weekly summary', 'MBL weekly', 'meeting recap', 'weekly meeting recap', 'what came out of meetings this week', 'aggregate meeting summaries', 'week summary for Matt', or 'pull the week together'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--week <YYYY-MM-DD>] [--entity <all|MBL|Allevio|HIVE|Column6>] [--source <Krista|manual|both>] [--action <build|push-monday|deliver>]"
---

# Exec Weekly Briefing

Build the weekly meeting intelligence summary for MBL Partners — aggregating what happened across all meetings in the prior week, extracting the key themes and action items, and delivering a clear weekly intelligence product that keeps Matt Mathison and entity CEOs current without requiring them to attend every meeting. This is Meeting Intelligence Phase 2 (weekly summary), the first of the two Meeting Intelligence workflows. The Phase 3 workflow (pre-meeting prep) uses this summary as an input.

## When to Use
- Every Sunday evening (for the Monday morning CEO briefing)
- When Krista has generated meeting transcripts from the prior week that need to be synthesized
- A specific meeting needs a summary delivered to a stakeholder who wasn't in the room
- Matt Mathison asks "what came out of the Allevio CEO call this week?"

## Weekly Briefing Framework

```
WEEKLY MEETING INTELLIGENCE WORKFLOW:

  STEP 1 — SOURCE COLLECTION (Sunday):
  
    Primary source (Krista transcripts — when available):
      Krista records all MBL and portfolio company meetings.
      Dr. Lewis pulls the week's transcripts from Krista.
      Transcripts cover: MBL leadership calls; entity CEO meetings; 
        board/committee meetings; LP calls; partner meetings.
      
    Secondary source (when Krista is not available or a meeting wasn't recorded):
      Dr. Lewis pulls notes from exec-action-tracker (what action items were created this week)
      Entity CEO weekly inputs (brief update emails from Allevio, HIVE, Column6 CEOs)
      Matt Mathison's calendar review (which meetings happened; what was discussed)
      
  STEP 2 — EXTRACTION:
  
    From each meeting/transcript, extract:
      □ Key decisions made (who decided what)
      □ Key information shared (what did the entity CEO say that matters?)
      □ Action items created (who owns what by when)
      □ Sentiment or relationship signals (is anyone concerned? Is there tension?)
      □ Forward commitments (what did MBL commit to? What did the other party commit to?)
      
    What NOT to extract:
      × Routine updates that don't change anything
      × Meeting logistics (scheduling, platform, technical issues)
      × Information already in exec-kpi-dashboard (don't re-summarize known metrics)
      × Everything that was said (this is a summary, not a transcript)
      
  STEP 3 — SYNTHESIS:
  
    The intelligence synthesis is the most important step.
    Extraction gives you data. Synthesis gives you meaning.
    
    For each entity, answer:
      □ What's the one thing that happened this week that matters most?
      □ What changed from what we expected?
      □ What should Matt Mathison know that he might not already?
      □ What action needs to happen that doesn't yet have an owner?
      
  STEP 4 — MONDAY.COM PUSH (exec-action-tracker):
  
    All action items extracted from the week's meetings are pushed to Monday.com
    within 24 hours of the meeting (not held for the weekly briefing).
    The weekly briefing summarizes what was pushed; it does not replace the push.

WEEKLY BRIEFING STRUCTURE:

  Section 1 — Week-in-Review (2-3 minute read):
    Entity-labeled bullets: the 1-2 most important things from each entity's meetings this week.
    
  Section 2 — Key Decisions Made:
    Decisions that were actually finalized this week (not discussions — decisions).
    Include: what was decided; who decided it; whether it needs documentation.
    
  Section 3 — Open Action Items Summary:
    Count and status of all open action items across the portfolio.
    Flag anything overdue or at risk of being late.
    
  Section 4 — Relationship Signals:
    Anything from the week's meetings that suggests a relationship concern:
      LP expressing concern; entity CEO sounding frustrated; board member asking unexpected questions.
    Rule: Dr. Lewis flags what he observes in meeting transcripts, not what he interprets
      as "the intent" — observation first, interpretation labeled as interpretation.
      
  Section 5 — Forward: What's Coming Next Week:
    Key meetings next week that need prep (exec-meeting-prep)
    Key deadlines next week (from exec-action-tracker)

ALLEVIO PARTNER EMAIL NOTE:
  The Allevio weekly partner email (exec-partner-email-builder) is a separate but related workflow.
  The weekly briefing informs the partner email (Morgan Sills' EOW is one input source),
  but they are different products for different audiences:
    Weekly briefing: for Matt Mathison's internal portfolio awareness
    Partner email: for Allevio partners and stakeholders (external-facing)
```

## Output Format

```markdown
# MBL Weekly Meeting Intelligence — Week of [Date]
**Prepared by:** Dr. Lewis | **Sources:** [Krista transcripts / Manual / Both]
**Meetings covered:** [N meetings; list entity or meeting names]

---

## Week-in-Review

**Allevio:** [1-2 bullets — most important things from Allevio meetings]
**HIVE:** [1-2 bullets]
**Column6:** [1-2 bullets]
**MBL (LP/board/partner):** [1-2 bullets if applicable]

---

## Key Decisions Made This Week

| Decision | Owner | Date | Documentation needed? |
|---------|-------|------|----------------------|
| [Decision] | [Name] | [Date] | Yes / No |

---

## Action Item Summary

| Status | Count | Overdue |
|--------|-------|---------|
| Open | [N] | [N] |
| Completed this week | [N] | — |
| Due next week | [N] | — |

[Flag any overdue or at-risk items]

---

## Relationship Signals

[Observation from meeting transcripts — what did I notice that Matt should know?]

---

## Next Week Preview

| Meeting | Date | Prep needed? |
|---------|------|-------------|
| [Meeting] | [Date] | Yes → exec-meeting-prep pending / No |
```

## Output Contract
- Intelligence, not transcription — the weekly briefing is a synthesis of meaning, not a recitation of what was said in each meeting; if Matt could get the same value by reading the Krista transcripts himself, the briefing has added no value; the value Dr. Lewis adds is extracting the signal from the noise: the one thing from the Allevio CEO call that changes how Matt should think about Allevio this week; Dr. Lewis asks himself "what would I tell Matt if I had 30 seconds?" and leads with that
- Relationship signals are observations, not interpretations — if a Krista transcript shows the Allevio CEO expressing frustration about the budget conversation, Dr. Lewis notes: "Allevio CEO sounded frustrated in the budget call — specific language: '[quote]'. Interpretation: this may reflect a resource tension that hasn't been explicitly raised with Matt yet." Observations and interpretations are labeled separately; Matt decides what to do with them
- The weekly briefing feeds the CEO briefing — the Monday CEO briefing (exec-ceo-briefing) is partially built from the weekly briefing; the BLUF of the CEO briefing is the top-line synthesis of the weekly briefing; the What Happened section is the Week-in-Review; the Decisions section includes unresolved decisions from the week; Dr. Lewis builds both in sequence: weekly briefing first (Sunday), then CEO briefing (Sunday evening → Monday delivery)
- HITL required: Dr. Lewis prepares the weekly briefing and CEO briefing; Matt Mathison receives both by Monday 8 AM; Krista transcript use is logged; any relationship signal that suggests a significant tension or concern is reviewed by Dr. Lewis before inclusion (don't flag a non-issue from a casual comment); Jimmy Lindsley (MBL operations) receives a copy of the weekly briefing for operational items that affect his work

## System Dependencies
- **Reads from:** Krista meeting transcripts (primary source for all MBL and portfolio meetings recorded by Krista); exec-action-tracker (action item status — what was created, what's overdue, what's due next week); entity CEO weekly inputs (brief update from Allevio, HIVE, Column6 CEOs); exec-meeting-prep (what meetings happened this week; what were the objectives and outcomes); Matt Mathison's calendar (which meetings occurred)
- **Writes to:** Weekly briefing (email/Teams → Matt Mathison + Jimmy Lindsley; Sunday evening / Monday by 8 AM); exec-ceo-briefing (weekly briefing feeds directly into the CEO briefing — same timing); exec-action-tracker (any new action items discovered in the synthesis); Monday.com (any action items not yet pushed are pushed when the weekly briefing is built)
- **HITL Required:** Dr. Lewis prepares and delivers; received by Matt and Jimmy by Monday 8 AM; Krista transcript use logged; relationship signals reviewed by Dr. Lewis before inclusion; significant concerns flagged to Matt before the weekly briefing is sent if they warrant immediate awareness rather than Monday delivery

## Test Cases
1. **Golden path:** Sunday 6 PM; Dr. Lewis pulls 4 Krista transcripts from the week (Allevio CEO call; HIVE lease team call; Column6 agency review; Matt LP call with Cornerstone Capital); extraction: 8 action items (6 already pushed to Monday.com during the week; 2 new items found in synthesis); key decision: Matt approved $340K Allevio clinical expansion on the CEO call; relationship signal: Cornerstone LP asked about HIVE volatility more than once — "notable pattern; they may have seen something in the energy markets"; synthesis complete; weekly briefing delivered to Matt and Jimmy at 7 PM Sunday; CEO briefing built from it; delivered to Matt by Monday 8 AM. Matt: "The Cornerstone signal is useful — I'll address it proactively on our next call."
2. **Edge case:** Krista didn't record the Allevio CEO call this week (system error) → Dr. Lewis: "No Krista transcript for the Allevio call. I'm building the Allevio section from [Allevio CEO]'s weekly input email and the action items Dr. Lewis logged from the call notes. The Allevio section may be less complete than usual — I'll flag this to the Krista team as a recording gap." Weekly briefing: "Allevio section — based on Dr. Lewis notes (Krista transcript unavailable for this meeting)." Matt: "Got it — this is the second time Krista has missed the Allevio call. Worth a conversation with the Krista team about reliability." Dr. Lewis logs the reliability issue for the Krista capability feedback (relevant to the Krista-MCP-Feedback document).
3. **Adversarial:** Entity CEO asks Dr. Lewis to exclude their candid comments from the weekly briefing (they said something critical of a board member in a meeting Krista recorded) → Dr. Lewis: "I understand. My standard is: I include observations that would be material for Matt to know about the portfolio or a relationship. If the comment was a frank opinion expressed privately, I'd typically not include it verbatim — I'd summarize the concern it reflects without quoting the specific statement. Would that work? And it's worth knowing that Krista records meetings as part of our meeting intelligence infrastructure — if you're not comfortable with a meeting being recorded, you can let me know before the call and I'll note it as no-record." Entity CEO: "The summary framing is fine. Good to know about the recording protocol."

## Audit Log
All weekly briefings retained by date. Krista transcript sources retained (which transcripts were used for which briefing). Entity CEO input records retained. Action item extraction records retained. Relationship signals and Dr. Lewis observations retained. Krista recording gap incidents retained (for Krista platform feedback).

## Deprecation
Retire when Krista has full autonomous meeting intelligence capability — ingesting transcripts, extracting action items, synthesizing weekly themes, and delivering to Monday.com and Matt Mathison without Dr. Lewis as the integration layer. At that point, Dr. Lewis role shifts from building the intelligence product to configuring and quality-checking the Krista pipeline.
