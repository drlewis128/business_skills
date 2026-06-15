---
name: board-deck-reviewer
description: "Review a board presentation for completeness, accuracy, and narrative quality. Use when the user says 'review board deck', 'board presentation review', 'is this deck ready for the board', 'board deck feedback', 'check the board presentation', or 'board slide review'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<deck-outline-or-slides> [--entity <name>] [--meeting-type <quarterly|annual|special>]"
---

# Board Deck Reviewer

Review a board presentation for completeness, accuracy flags, narrative coherence, and board-readiness. Boards should never be surprised by information they see for the first time in the meeting.

## When to Use
- 2-3 weeks before a board meeting (first review pass)
- After the financial team submits the first draft
- Before Matt's final review
- Any time a board deck is being prepared for MBL or portfolio companies

## Review Framework

### 1. Completeness Check
Required sections for a standard quarterly board deck:
- [ ] Financial performance (P&L, BS snapshot, cash position)
- [ ] Budget vs. actual variance (with explanation)
- [ ] Key operational metrics
- [ ] Strategic initiative status
- [ ] Decisions requested from the board (explicit action items)
- [ ] Prior meeting minutes approval (consent calendar)
- [ ] Forward look (next quarter priorities and guidance)
- [ ] Risks and mitigation

### 2. Financial Accuracy Flags
- Do numbers tie to underlying financials?
- Are variances explained (not just shown)?
- Are prior period comparatives included?
- Is cash position current?
- Is any "adjusted" metric clearly labeled?

### 3. Narrative Quality
- Does each slide have a clear title that states the point, not just the topic?
  - Good: "Revenue exceeded budget by $200K driven by Acme upsell"
  - Bad: "Revenue Update"
- Is the narrative consistent with the numbers?
- Are there contradictions between slides?
- Is the story arc clear: here's where we are → here's why → here's what we're doing?

### 4. Surprise Prevention
- Would any board member be surprised by any information in this deck?
- Pre-brief protocol: anything sensitive or unexpected should be shared 1:1 with key directors before the meeting

### 5. Decision Items Quality
- Are decision requests specific (what exact decision is needed)?
- Is relevant context provided on each decision slide?
- Are the options presented (not just the recommended option)?

### 6. Tone and Professionalism
- No spelling or grammar errors (critical for credibility)
- Consistent formatting throughout
- MBL brand standards followed (Tw Cen MT / Arial, correct logo placement)
- Appropriate level of detail (board = strategic; avoid operational minutiae)

## Output Format

```markdown
# Board Deck Review — <Entity> — <Meeting Date>
**Reviewed:** <date> | **Deck Version:** <v1/v2/final>

## Completeness Score: <N>/8 required sections present

### Missing Sections
- [ ] <Missing section 1>

## Financial Accuracy Flags
1. <Issue: slide X, specific discrepancy>

## Narrative Issues
1. Slide <N>: Title is topic-only ("Revenue") — should state the point
2. Slide <N>: Narrative and chart tell different stories — reconcile

## Surprise Prevention
⚠️ Items board members may be seeing for the first time:
1. <Unexpected item — recommend pre-brief>

## Decision Items — Quality Check
| Decision | Is it specific? | Options shown? | Context sufficient? |
|---------|----------------|----------------|---------------------|
| <D1> | ✅ | ✅ | ⚠️ — Add financial impact |

## Tone / Format Issues
<Grammar, spelling, brand standard issues>

## Recommended Revisions (Priority Order)
1. <Critical — must fix>
2. <Should fix>
3. <Nice to have>

## Deck Readiness
✅ Board-ready / ⚠️ Revisions needed / ❌ Not ready — significant gaps
```

## Output Contract
- Every section of the review framework always assessed — nothing skipped
- Financial accuracy flags always include the specific slide and discrepancy
- Surprise prevention section always included — even if empty
- HITL required before distributing reviewed deck to board members

## System Dependencies
- **Reads from:** Deck outline or slides (provided), financial statements for accuracy check
- **Writes to:** Nothing (review only)
- **HITL Required:** Matt Mathison must approve before any board deck is distributed

## Test Cases
1. **Golden path:** Complete deck with all required sections → 8/8 completeness, narrative quality notes only
2. **Edge case:** Deck without a decision items section → flags as missing required section, provides template language for decisions
3. **Adversarial:** Deck that buries a significant performance miss in an appendix → flags as surprise prevention issue, recommends moving to main deck with appropriate context

## Audit Log
Deck review versions retained by entity and meeting date. Final approved deck version documented.

## Deprecation
Retire when board management platform (Diligent, BoardEffect) provides native presentation review workflow.
