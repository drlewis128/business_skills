---
name: meet-attribution-checker
description: "verify attribution in meeting summaries, attribution accuracy in meetings, speaker identification verification, decision attribution in meetings, commitment attribution in meetings, who made the decision in a meeting, who said what in a meeting, Matt Mathison attribution standard, contested attribution protocol, meeting summary attribution review, correct person credited for meeting commitment, transcript speaker to correct person, idea attribution in meetings, meeting commitment vs assignment, attribution dispute protocol, Dr. Lewis transcript review for attribution, attribution verification in meeting intelligence, meeting output attribution check"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[summary ID or transcript ID to verify, optional specific attribution to check]"
---

# Meeting Attribution Checker

This skill verifies that decisions, commitments, and ideas in meeting intelligence summaries are attributed to the correct person, cross-referencing transcript content to confirm speaker identification before attribution is published. When attribution is contested or uncertain, Dr. Lewis reviews the raw transcript and issues the authoritative attribution call before the summary is distributed.

## When to Use

- A meeting intelligence summary contains attributions that need verification before distribution to Matt Mathison or entity CEOs
- A participant contests an attribution in a prior summary (claiming they were incorrectly credited with a commitment or decision)
- Transcript speaker labels are ambiguous or inconsistent across a meeting recording
- A high-stakes attribution (e.g., who approved a significant decision) needs independent verification

## Attribution Checker Framework

```
ATTRIBUTION VERIFICATION — [SUMMARY ID / TRANSCRIPT ID]
========================================================

SECTION 1: ATTRIBUTION INVENTORY
  Extract all attributions from the summary:
  | # | Attribution Type | Statement / Commitment / Decision | Attributed To | Source (line/timestamp) |
  |---|-----------------|-----------------------------------|---------------|------------------------|
  | 1 | Commitment      | "Will deliver X by Friday"        | [Name]        | [Transcript line #]     |
  | 2 | Decision        | "Approved Y"                      | [Name]        | [Transcript line #]     |
  | 3 | Idea/Proposal   | "Suggested Z approach"            | [Name]        | [Transcript line #]     |

SECTION 2: SPEAKER VERIFICATION
  For each attribution:
  - Transcript speaker label: [what Krista.ai labeled the speaker]
  - Cross-reference: [voice pattern / context clues / meeting roster match]
  - Speaker confidence: HIGH (clear label) / MEDIUM (inferred from context) / LOW (ambiguous)
  - If LOW: flag for Dr. Lewis manual transcript review

  Common speaker identification issues:
  - Speaker label "Unknown" or "Speaker 2" without name resolution
  - Two participants with similar names or voices causing label swap
  - Remote participant audio quality causing misidentification
  - Late-joining participants not captured in initial speaker map

SECTION 3: COMMITMENT ATTRIBUTION VERIFICATION
  Commitments are what someone said they will do — not what was assigned to them after the fact.
  For each commitment:
  - What was said verbatim: "[exact transcript quote]"
  - Who said it: [verified name]
  - Was it self-committed ("I'll handle that") or assigned by others ("Can you take that on?")?
  - Did the person accept the assignment? YES / NO / AMBIGUOUS
  - Attribution validity: CONFIRMED / UNCONFIRMED / INCORRECT — [explanation]
  - If INCORRECT or AMBIGUOUS: revision instruction for summary

SECTION 4: DECISION ATTRIBUTION VERIFICATION
  Decisions are attributed to the person who made them, not the group present.
  For each decision:
  - Decision text: [what was decided]
  - Who stated the decision: [verified name]
  - Was the decision collaborative (consensus) or individual (one person's call)?
  - If collaborative: attribute to "leadership team" or "meeting consensus" — not one person
  - If individual: attribute to the decision-maker explicitly
  - Attribution validity: CONFIRMED / NEEDS REVISION — [explanation]

SECTION 5: MATT MATHISON ATTRIBUTION STANDARD
  Matt Mathison's attributions require extra care — what he said in a meeting shapes 
  organizational direction. For any attribution to Matt:
  - Verbatim quote from transcript: "[exact text]"
  - Is the summary attribution faithful to what he actually said?
  - Does the summary make a commitment on his behalf that he didn't explicitly make?
  - Does the summary understate a commitment he did make?
  - Matt Mathison attribution result: ACCURATE / OVERSTATED / UNDERSTATED / INCORRECT
  - If any deviation: revision required before distribution

SECTION 6: DISPUTE PROTOCOL
  When a participant contests an attribution:
  - Contestant name and role
  - Contested attribution (exact text)
  - Contestant's claimed correct attribution
  - Dr. Lewis action: review raw transcript at contested timestamp
  - Transcript evidence: [verbatim transcript content at relevant timestamp]
  - Attribution ruling: [ORIGINAL CONFIRMED / CONTESTED PARTY CORRECT / AMBIGUOUS — REMOVE ATTRIBUTION]
  - Resolution documented: [date; ruling; who was notified]

SECTION 7: ATTRIBUTION REPORT
  - Total attributions checked: [N]
  - Confirmed accurate: [N]
  - Revised: [N] — [list revisions]
  - Unresolvable (Dr. Lewis review required): [N]
  - Summary ready for distribution: YES / NO — PENDING [N] REVISIONS
```

## Output Format

```markdown
## Attribution Verification — [Summary ID] — [DATE]

**Total Attributions Checked:** [N]
**Confirmed:** [N] | **Revised:** [N] | **Pending Dr. Lewis Review:** [N]

**Attribution Status:** VERIFIED / REQUIRES REVISION / PENDING TRANSCRIPT REVIEW

**Revisions Required:**
| # | Original Attribution | Corrected Attribution | Reason |
|---|---------------------|----------------------|--------|
| 1 | "[text] — [Name]"   | "[text] — [Name]"    | ...    |

**Dr. Lewis Review Items:**
- [Attribution requiring manual transcript review + why]

**Matt Mathison Attributions:** [ACCURATE / issues if any]

**Summary Distribution Authorization:** APPROVED / HOLD PENDING REVISIONS
```

## Output Contract

- **Commitment attribution follows who said it, not who was assigned it.** A critical distinction in meeting intelligence is the difference between a self-commitment ("I'll get that to you by Thursday") and a post-meeting assignment ("Let's have John handle that"). Only self-commitments appear as individual action item attributions; post-meeting assignments are noted as assigned items. This distinction matters because if an assignment was delegated without the assignee's explicit agreement in the meeting, the action item may not be fully owned by that person — and the closure rate and accountability tracking downstream depends on accurate ownership.

- **Matt Mathison's attributions are held to a higher verification standard because they carry organizational authority.** A summary that incorrectly attributes a commitment to Matt — either overstating something he implied but didn't commit to, or understating a commitment he clearly made — can create organizational confusion about what the Managing Partner has or hasn't approved. The verbatim quote check for every Matt Mathison attribution is non-optional. If the transcript does not support the attributed statement verbatim or in clear paraphrase, the attribution is revised or removed before distribution.

- **Dispute resolution is always decided by transcript evidence, not by participant memory.** When a participant contests an attribution, both parties' accounts are set aside in favor of the transcript record. Dr. Lewis reviews the raw transcript at the contested timestamp, reads the verbatim exchange, and issues an attribution ruling based solely on what was said. If the transcript is ambiguous — speaker labels unclear, audio quality poor, statement genuinely interpretable multiple ways — the attribution is removed from the summary entirely rather than speculated. An uncertain attribution removed from the summary is less damaging than a wrong attribution that persists in the record.

## System Dependencies

### Reads from
- Meeting intelligence summaries (draft, pre-distribution)
- Krista.ai raw transcripts (for speaker verification and verbatim quote lookup)
- Meeting roster (invited and attending participants for speaker label cross-reference)

### Writes to
- Attribution verification log: SharePoint /Meeting Intelligence/Attribution-Checks/[date]-attribution-[summary-id].md
- Revised summary (when revisions are required, returned to generation workflow)
- Dr. Lewis dispute log (when disputes are filed and resolved)

### HITL Required
- Dr. Lewis: reviews all LOW-confidence speaker attributions; rules on all disputed attributions; verifies all Matt Mathison attributions
- Disputing participant: provides their contested claim; Dr. Lewis reviews and issues ruling
- Matt Mathison: notified only if a dispute involves an attribution to him directly

## Test Cases

1. **Golden path:** Summary with 12 attributions — 10 confirmed HIGH confidence from clear transcript labels, 2 flagged MEDIUM with context-based speaker inference — Dr. Lewis reviews the 2 MEDIUM items, confirms both are accurate, summary approved for distribution.
2. **Edge case:** A meeting had two participants named "Michael" — one from MBL, one from an external vendor. Krista.ai labeled both as "Michael" without disambiguation. Attribution checker flags all "Michael" attributions as LOW-confidence, requires Dr. Lewis to review each one against meeting context to determine which Michael is speaking, and holds all ambiguous attributions until resolved.
3. **Adversarial:** A summary attributes a budget approval decision to Matt Mathison. Reviewing the transcript, Matt's actual words were "that sounds reasonable" in response to a presented option — not an explicit approval. Attribution checker must flag this as OVERSTATED, revise the attribution to reflect "Matt Mathison indicated the approach sounds reasonable; formal approval not recorded," and note that a follow-up decision confirmation from Matt may be needed.

## Audit Log

Every attribution verification is stored in SharePoint with the summary ID, verification date, total attributions checked, confidence levels, revisions made, dispute records (if any), and Dr. Lewis sign-off timestamp. Dispute resolution records are retained indefinitely as they may be referenced in future discussions about what was decided or committed in a meeting. Standard attribution logs are retained for 2 years per the Meeting Intelligence retention policy.

## Deprecation

This skill is deprecated when Krista.ai's speaker identification accuracy reaches ≥98% with named speaker labels (not generic "Speaker N" labels) across all MBL meeting types, and when automated attribution confidence scoring is integrated into the summary generation pipeline with the same commitment/assignment distinction logic this skill enforces. Dr. Lewis assesses Krista.ai accuracy quarterly and approves deprecation when the threshold is sustained for 3 consecutive months.
