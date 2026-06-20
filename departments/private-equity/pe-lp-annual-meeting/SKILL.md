---
name: pe-lp-annual-meeting
description: "Plan and produce MBL Partners annual LP meeting materials. Use when the user says 'annual meeting', 'LP annual meeting', 'limited partner annual meeting', 'annual investor meeting', 'annual LP day', 'LP day', 'fund annual meeting', 'annual fund meeting', 'annual meeting materials', 'annual meeting deck', 'annual meeting presentation', 'LP annual presentation', 'annual report LP', 'annual LP report', 'annual performance review LP', 'LP meeting agenda', 'annual meeting agenda', 'annual meeting planning', 'LP meeting planning', 'fund annual review', 'annual review for LPs', 'LP annual update', 'annual update investors', 'investor annual day', 'annual conference LP', 'LP conference', 'annual meeting prep', 'annual meeting presentation prep', 'benchmark presentation LP', 'LP fund strategy presentation', 'investment strategy presentation LP', 'portfolio review annual', 'annual portfolio review', 'LP Q&A', 'LP questions annual', 'fund future plans', 'next fund', 'fund II', 'capital raise next fund', 'follow-on fund', 'successor fund', or 'LP relationship annual'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--year <YYYY>] [--action <plan|draft|prepare|present>] [--format <in-person|virtual|hybrid>] [--focus <performance|strategy|portfolio|fundraising>]"
---

# PE LP Annual Meeting

Plan and produce MBL Partners annual LP meeting materials — building the annual meeting agenda, performance presentation (with honest benchmarking), portfolio company updates, fund strategy review, and materials that give LPs a complete, unfiltered view of MBL's performance and plans. The annual LP meeting is MBL's most important LP relationship moment: it is the one time each year that all LPs are in the room (or call) together; LPs form their re-investment judgment based largely on what they see in the annual meeting; a great annual meeting builds the relationship for Fund II; a defensive or evasive annual meeting creates LP skepticism that takes years to rebuild.

## When to Use
- Preparing the annual LP meeting (typically Q4 or Q1 of following year)
- Matt Mathison asks "let's start preparing the annual meeting"
- Building materials for a specific LP meeting section

## Annual LP Meeting Framework

```
ANNUAL MEETING STRUCTURE (full day or half-day; timing per Matt Mathison):

  OPENING SEGMENT (30-45 minutes):
    Welcome and agenda overview
    Fund performance summary (ILPA metrics; benchmarks vs. Cambridge Associates)
    Key accomplishments this year
    
  PORTFOLIO REVIEW (60-90 minutes):
    Entity-by-entity deep dive:
      Financial performance (revenue; EBITDA; vs. plan)
      North Star metrics (GRR; VCR; WTI/production; vs. targets)
      Value creation progress (VCP status)
      Management team assessment (briefly)
      Risks and outlook (honest; specific)
    HIPAA: Allevio presentation contains aggregate/de-identified data only
    
  INVESTMENT STRATEGY (30-45 minutes):
    Deal sourcing review (pipeline this year; investment thesis validation)
    New investments made (deal summary; thesis; expected returns)
    Portfolio construction (sector mix; stage; diversification)
    Market outlook (sector-specific; honest about headwinds)
    
  FINANCIAL REVIEW (30 minutes):
    Management fees: actual vs. budget
    Fund expenses: actual vs. budget
    Waterfall status: where we are on the preferred return
    Capital account statements: distributed separately to each LP
    
  Q&A (45-60 minutes):
    Open Q&A — all LPs, any topic
    Matt Mathison leads; Dr. Lewis answers operational / financial questions
    
  LP COMMITTEE MEETING (if applicable):
    Separate session for LP advisory committee (LPAC)
    Conflicts of interest review; any consent items
    
ANNUAL MEETING MATERIALS PACKAGE:

  1. Presentation deck (Matt Mathison reviews each slide before presentation)
  2. Annual report (written; more detailed than the deck — per ILPA Annual Report standards)
  3. Financial statements (audited; fund-level; per ASC 946)
  4. LP capital account statements (individual; per LP; fund administrator validated)
  5. ILPA standard metrics (as-of most recent quarter-end)
  6. Benchmark comparison (Cambridge Associates; Preqin — pe-benchmark-comparator)
  7. Management fee and expense detail (per LPA)
  
ANNUAL MEETING HONEST DISCLOSURE STANDARDS:

  Underperformance: if any entity is underperforming the thesis, state it directly in the
  portfolio update; explain the cause; present the response plan
  
  Exit exits timeline: if original LP documents showed a 3-5 year hold period and the fund
  is in year 6 without exits, address this directly: timeline; why; path to liquidity
  
  Management team changes: any CEO or CFO change during the year is disclosed with context
  
  Market headwinds: if the sector has a headwind (healthcare regulation; WTI price; CTV ad spend),
  acknowledge it and explain MBL's response — do not pretend the headwind doesn't exist
  
  Fund II announcement (if planned): LPs learn about Fund II at the annual meeting first

ANNUAL MEETING TIMING (calendar anchor):

  Oct 1: Annual meeting planning begins
  Nov 1: Deck outline reviewed by Matt Mathison
  Dec 1: Draft deck complete → Matt Mathison review
  Dec 15: Revised deck → Matt Mathison final review
  Jan (or Q1): Annual meeting held
  Within 30 days: Meeting minutes distributed to LP advisory committee
```

## Output Format

```markdown
# Annual LP Meeting — [Year] — Planning Checklist
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Agenda (draft for Matt Mathison review)

| Time | Segment | Presenter | Materials needed |
|------|---------|----------|----------------|
| 9:00am | Welcome + fund performance | Matt Mathison | Deck Section 1 |
| 9:45am | Portfolio review | Matt Mathison + Dr. Lewis | Deck Section 2 |
| 11:15am | Investment strategy | Matt Mathison | Deck Section 3 |
| 12:00pm | Lunch | — | — |
| 1:00pm | Financial review | Dr. Lewis | Capital account statements |
| 1:30pm | Q&A | Matt Mathison | All materials |

---

## Materials Checklist

| Material | Owner | Status | Due date |
|---------|-------|--------|---------|
| Presentation deck (Sections 1-3) | Dr. Lewis | [In progress] | [Dec 15] |
| Annual report (written) | Dr. Lewis | [Not started] | [Dec 15] |
| Audited financial statements | Fund administrator | [Not started] | [Dec 1] |
| LP capital accounts | Fund administrator | [Not started] | [Dec 20] |
| Benchmark comparison | Dr. Lewis | [Not started] | [Dec 10] |

---

## Key Messages for Matt Mathison (2-3 per segment)

**Fund performance:** [Message 1] / [Message 2]
**Portfolio:** [Entity A: message] / [Entity B: message]
**Strategy:** [Message 1] / [Message 2]
```

## Output Contract
- The presentation deck is reviewed slide-by-slide with Matt Mathison before the meeting — no slide appears in the annual meeting that Matt Mathison has not reviewed and approved; this includes the benchmark comparison slides (which may show MBL below top quartile), the portfolio update slides (which may include negative performance findings), and the financial detail slides (which show management fees and expenses in full); a draft marked "draft" that Matt Mathison has not reviewed is not a draft that is ready to present; Matt Mathison's pre-meeting review includes a Q&A preparation session where Dr. Lewis asks the hardest questions LPs might ask and Matt Mathison rehearses the answers
- LP questions at the annual meeting are answered honestly and completely — "I'll get back to you on that" is appropriate for a question that requires data Dr. Lewis needs to look up; "we don't disclose that" is appropriate for genuinely proprietary information; "that's a really interesting question" as a substitute for an actual answer is not; LPs who feel their questions were deflected leave the annual meeting without the trust MBL needs for Fund II; Dr. Lewis prepares a Q&A prep document listing the 20 most likely hard questions and the honest, complete answers for each
- Audited financial statements are distributed at the annual meeting — not "we'll send the audit when it's done later"; the audit timeline is managed to ensure the audited fund financials are ready before the annual meeting (this is why the audit engagement begins in January and the target is audit completion by March 31; annual meeting is typically scheduled after the audit is complete); if audit delays make the full audit unavailable at the meeting, unaudited (management) accounts are presented with a clear label and the audit status is disclosed
- HITL required: annual meeting date → Matt Mathison selects and confirms; agenda → Matt Mathison approves; deck → Matt Mathison reviews slide-by-slide; any negative performance findings in the deck → Matt Mathison briefed before deck is drafted; Q&A prep → Matt Mathison reads and provides guidance; LP capital account statements → fund administrator validates; post-meeting action items → Dr. Lewis tracks and reports to Matt Mathison; Fund II announcement → Matt Mathison decides timing and message; LPAC meeting content → Matt Mathison leads

## System Dependencies
- **Reads from:** pe-lp-quarterly-report (quarterly reports as source material); pe-fund-performance-review (annual fund performance summary); pe-benchmark-comparator (benchmark comparison for the presentation); pe-portfolio-kpi-dashboard (entity KPIs for the year); pe-value-creation-tracker (VCP progress for portfolio review); pe-irr-tracker (net IRR for the fund); pe-moic-calculator (TVPI/DPI/RVPI); pe-fund-accounting (audited financials; capital accounts); pe-investment-strategy (fund strategy section of the presentation); pe-lp-admin (LP list for annual meeting invitations)
- **Writes to:** Annual meeting deck (SharePoint → Investor Relations → Annual Meetings → [YYYY]); annual report; Q&A prep document; post-meeting action item list; Matt Mathison annual meeting briefings
- **HITL Required:** Annual meeting date → Matt selects; agenda → Matt approves; deck → Matt reviews slide-by-slide; negative findings → Matt briefed before draft; Q&A prep → Matt reviews; capital accounts → fund administrator validates; Fund II announcement → Matt decides; LPAC content → Matt leads

## Test Cases
1. **Golden path:** Annual meeting preparation for [Year]. Matt Mathison selects date in March. Agenda drafted: fund performance (30 min); portfolio review (75 min); investment strategy (30 min); financial review (30 min); Q&A (60 min). Deck drafted: Section 1 (fund performance: TVPI 1.42x; Net IRR 14.2%; 2nd quartile vs. Cambridge Associates LMM PE; J-curve context provided); Section 2 (Allevio: strong; HIVE: stable; Column6: slight VCR softness addressed); Section 3 (deal pipeline active; 2 new investments in diligence). Dr. Lewis drafts Q&A prep with 20 hard questions including: "When do we get our money back?"; "Why is IRR below top quartile?"; "What's your plan for Column6 if VCR continues to underperform?" Matt Mathison reviews; adds 3 questions; records preferred answers for 3 sensitive items. Annual meeting held; 8 of 11 LPs attend (3 virtual). Post-meeting: 2 action items (Dr. Lewis). Closed out within 14 days.
2. **Edge case:** An LP sends a hard question in advance — "What is MBL's plan if HIVE doesn't recover its FMV and WTI stays below $60?" → Dr. Lewis: "Preparing an honest, complete answer for Matt Mathison: 'WTI at $60 or below for a sustained period would require us to reconsider HIVE's development pace. Our current position: (1) We pause new acreage acquisitions if WTI falls below $58 for 2 consecutive weeks — this is already our policy. (2) Existing royalty income is not impacted by development decisions — we continue to receive royalties on all producing acreage regardless of WTI. (3) The FMV impact at $60 WTI is approximately [X%] lower than our $70 base case — we're prepared to disclose this sensitivity in the annual meeting if it's relevant at meeting time. (4) Our exit plan for HIVE is timing-sensitive to WTI recovery — we would extend the hold period rather than sell at a distressed WTI price.' Matt: this is how I'd answer this. Does this reflect your position?"
3. **Adversarial:** An LP at the meeting asks "why did you mark down Allevio 15% this quarter and not tell us until now?" → Matt Mathison is asked to respond; Dr. Lewis had sent the quarterly report with the FMV reduction and the explanation → Dr. Lewis (quietly to Matt): "That was disclosed in Q3 quarterly report, page 4, entity update section — I can pull it up on screen. The LP may not have read that section. I'll confirm in 30 seconds." Response: "The Q3 quarterly report, distributed [date], disclosed the Allevio FMV reduction on page 4 with the specific drivers. I'll pull up that page now [shares screen]. We take a consistent approach: any FMV change greater than 10% is disclosed in the quarter it occurs, with a full explanation. Happy to go through the detail of that Q3 section now or schedule a one-on-one with you."

## Audit Log
All annual meeting materials retained permanently (deck versions; Matt Mathison approval; date). Annual reports retained permanently. LP attendance records retained. Q&A session notes retained. Post-meeting action items retained (with completion dates). LP capital account statements retained per LP. LPAC meeting records retained.

## Deprecation
Annual LP meeting is a permanent function for the life of each fund. The meeting format is reviewed annually for LP feedback and updated.
