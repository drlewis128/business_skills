---
name: revops-win-loss-tracker
description: "Track and analyze win/loss patterns for MBL Partners portfolio entities. Use when the user says 'win loss', 'win/loss', 'why do we lose deals', 'why do we win', 'win rate', 'loss rate', 'deal outcomes', 'closed lost analysis', 'competitive wins', 'competitive losses', 'why did we lose that deal', 'win loss interview', 'win loss program', 'loss analysis', 'close rate', 'deal win analysis', 'won deal patterns', 'lost deal patterns', 'why are we losing', 'competitive displacement', 'win loss report', 'what kills our deals', 'what closes our deals', 'deal outcome analysis', 'lost to competitor', 'loss reasons', 'win reasons', or 'sales effectiveness analysis'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--period <90|180|365>] [--action <track|analyze|interview|report>]"
---

# RevOps Win/Loss Tracker

Track and analyze deal win/loss patterns across MBL Partners portfolio entities — identifying systematic patterns in what drives wins and losses to inform sales process improvement, competitive positioning, and product/service decisions. Win/loss analysis is one of the highest-leverage revenue improvement activities because it tells you what the market actually thinks, not what internal teams assume.

## When to Use
- Monthly or quarterly win/loss pattern review
- After a significant deal loss (>$50K ACV) — immediate interview
- When close rates are declining and root cause is unclear
- Competitive intelligence update from win/loss patterns

## Win/Loss Framework

```
WIN/LOSS TAGGING IN GOHIGHLEVEL:

  Every Closed Lost deal must have a reason code (mandatory; no reason code = data gap):
    - Lost to Competitor (name competitor if known)
    - Lost to No Decision (prospect chose status quo)
    - Lost to Budget (funding not secured or reprioritized)
    - Lost to Timeline (deal fell outside their buying window)
    - Lost to Product/Service Gap (we couldn't meet a key requirement)
    - Lost to Relationship (competitor had a stronger relationship)
    - Disqualified (was never a real deal; removed from pipeline correctly)
    
  Every Closed Won deal should have a win reason (encouraged; not mandatory):
    - Won on ROI / Business Case
    - Won on Trust / Relationship
    - Won on Product Superiority
    - Won on Price / Value
    - Won on References / Proof
    - Won on Speed / Responsiveness

WIN/LOSS INTERVIEW PROGRAM:
  Trigger: any deal >$30K ACV (Allevio) or >$50K (Column6) — conduct post-decision interview
  Interviewer: entity CEO (not the rep who worked the deal — conflict of interest)
  Questions:
    1. "What ultimately drove your decision?" (open-ended first)
    2. "What did we do well in the evaluation?" (wins: reinforce; losses: confirm what we got right)
    3. "What could we have done differently?" (losses: the real intelligence)
    4. "What did the competitor do that we didn't?" (losses)
    5. "Would you consider us again in the future?" (losses: gauges reversibility)
  Interview findings: logged in GoHighLevel under the deal record; summary to Dr. Lewis

ANALYSIS CADENCE:
  Monthly: GoHighLevel loss reason codes → close rate by reason → entity sales lead
  Quarterly: Dr. Lewis win/loss summary → entity CEO → patterns and actions
  Annual: full win/loss report including interview findings → entity CEO + Dr. Lewis + competitive intelligence update (mktg-competitive-intelligence)

ENTITY-SPECIFIC PATTERNS TO WATCH:
  Allevio:
    "Lost to No Decision" high → Allevio is a new category in some AZ markets; address with education
    "Lost to Competitor" → who? Track Accolade/Spring Health/Lyra displacement
    "Product Gap" → what requirement? Feed to Allevio leadership for roadmap
    
  Column6:
    "Lost to Competitor" → which DSP/CTV platform? Track displacement by platform
    "Lost to Relationship" → agency already committed to another platform; rebuild with new agency contacts
    "Budget" → agency client didn't get CTV budget approved; strengthen media plan education content
```

## Output Format

```markdown
# Win/Loss Report — [Entity] — [Period]
**Deals analyzed:** [N] closed won + [N] closed lost | **Interviews conducted:** [N]

---

## Close Rate Summary

| Category | # Deals | Close Rate | vs. Prior Period |
|----------|---------|-----------|-----------------|
| All qualified (Stage 4+) | | X% | ±X% |
| Excluding "No Decision" | | X% | |

---

## Loss Reason Distribution

| Reason | # Deals | % of Lost | Notable pattern |
|--------|---------|---------|----------------|
| Lost to Competitor | | | [Competitor name] |
| No Decision | | | |
| Budget | | | |
| Product Gap | | | |
| Timeline | | | |

---

## Win Reason Distribution

| Win Reason | # Deals | % of Won |
|-----------|---------|---------|

---

## Key Findings
[3-5 bullet points: most actionable patterns from this period]

---

## Actions
1. [Action — owner — due date]
```

## Output Contract
- Loss reason data quality drives the entire analysis — a win/loss analysis where 40% of Closed Lost deals have no reason code is not an analysis; it is a guess; Dr. Lewis enforces mandatory reason code tagging in GoHighLevel; if the entity sales lead is not tagging reason codes, that is a CRM hygiene problem that must be fixed before win/loss analysis can be meaningful; the entity CEO is responsible for requiring their sales team to log reason codes on every loss; Dr. Lewis will not build a win/loss analysis on incomplete data and will flag the data quality gap to the entity CEO before delivering a report
- Win/loss interviews deliver information that reason codes cannot — reason codes capture "we lost to no decision"; a win/loss interview reveals "the CFO pushed back because they didn't understand how the ROI was calculated and the rep couldn't answer in the meeting"; the second level of insight is where actionable change lives; Dr. Lewis requires win/loss interviews for all material deals (>$30K Allevio; >$50K Column6) because the pattern across multiple interviews often reveals a systematic gap in sales effectiveness, messaging, or product-market fit
- HITL required: win/loss interview for deals >$30K Allevio />$50K Column6 → entity CEO conducts (not rep); quarterly win/loss report → Dr. Lewis reviews before entity CEO; "Product Gap" pattern emerging as recurring loss reason → Dr. Lewis + entity CEO + product/service leadership; annual win/loss report → entity CEO + Dr. Lewis; any competitive displacement pattern → mktg-competitive-intelligence update triggered

## System Dependencies
- **Reads from:** GoHighLevel (deal records; close/lost reason codes; deal values; competitive notes); revops-deal-velocity-analyzer (velocity by win vs. loss cohort); mktg-competitive-intelligence (competitive context for loss pattern analysis)
- **Writes to:** Win/loss report (SharePoint → [Entity] → Sales → Win-Loss → [Period]); GoHighLevel deal records (interview findings added); entity CEO competitive brief; mktg-competitive-intelligence (loss pattern → competitive intel update); Dr. Lewis portfolio close rate summary
- **HITL Required:** Post-deal interview → entity CEO; quarterly report → Dr. Lewis; product gap pattern → Dr. Lewis + entity CEO; annual report → entity CEO + Dr. Lewis; competitive displacement → competitive intel update

## Test Cases
1. **Golden path:** Allevio Q3 win/loss review. 8 Closed Won; 14 Closed Lost. Close rate: 36% (↓ from 41% Q2 — trending down). Loss distribution: No Decision 5 (36%); Lost to Competitor 4 (29% — 3 to Spring Health, 1 to Accolade); Budget 3 (21%); Product Gap 2 (14%). Key finding: Spring Health displacement increasing; 2 of the 3 Spring Health losses cite "Spring Health offered a dedicated on-site nurse practitioner option that Allevio doesn't." Win/loss interview (largest loss, $84K ACV): "We chose Spring Health because they have physical presence — our employees kept asking 'where do I actually go?' Allevio's digital-first model confused our HR team." Actions: (1) Update Allevio messaging to proactively address "where does the employee actually go?" (2) Flag clinical delivery model question to Allevio leadership. (3) Update competitive battlecard: Spring Health physical presence is a real differentiator for HR teams that prioritize facility-based care. Dr. Lewis + Allevio CEO briefed.
2. **Edge case:** Close rate drops from 40% to 28% in one quarter — but 8 of the 12 new losses are "No Decision" at Stage 2-3 (very early stage) and reflect a new prospecting script that is generating unqualified conversations → Dr. Lewis: "The close rate drop is a qualification problem, not a sales effectiveness problem. If we're losing 8 deals at Stage 2-3 to 'No Decision,' we're either not qualifying ICP before setting discovery calls, or we're using 'Closed Lost' incorrectly — some of these may be 'Disqualified' (never a real deal). I want to review these 8 deals in GoHighLevel: if they were ICP (AZ employer ≥25 employees) then we have a discovery call problem; if they weren't ICP, they should be 'Disqualified' and the prospecting criteria should be tightened. Close rate calculated from Stage 4+ qualified deals is the right metric — not from all entered pipeline."
3. **Adversarial:** Sales rep disputes a "Lost to Competitor" tag, claiming the deal was actually lost because Allevio's pricing was too high and it should be "Budget" → Dr. Lewis: "The distinction matters. 'Budget' means the buyer didn't have the money regardless of vendor — their CFO cut the category. 'Lost to Competitor' means they chose another vendor's price over ours. Which is it? If they chose Spring Health at a lower price, that's 'Lost to Competitor — price,' not 'Budget.' Tag it correctly in GoHighLevel and add a note: 'Prospect stated Spring Health priced at $X PMPM vs. Allevio's $Y.' That's the data I need to have a pricing strategy conversation with Allevio CEO. Mislabeled reason codes produce wrong analysis and wrong strategy."

## Audit Log
Win/loss reports retained permanently. Deal reason codes in GoHighLevel (permanent). Win/loss interview records (SharePoint — permanent; includes identity of interviewer). Entity CEO escalation records. Competitive displacement pattern records. Product gap findings (shared with entity leadership).

## Deprecation
Win/loss reason code taxonomy reviewed annually. Benchmark close rates reviewed when ICP definition changes. Interview trigger thresholds reviewed when deal size distribution changes. Competitive tracking updated when portfolio competitive landscape changes.
