---
name: sales-lead-scoring
description: "Score and prioritize sales leads for MBL portfolio companies. Use when the user says 'lead scoring', 'score this lead', 'prioritize leads', 'which leads to call first', 'lead priority', 'lead ranking', 'hot leads', 'cold leads', 'lead quality', 'best leads', 'prospect scoring', 'qualify leads', 'lead qualification score', 'BANT', 'lead fit score', 'outbound list scoring', 'which prospects matter most', 'lead prioritization', 'sales lead prioritization', 'prospect quality', 'which accounts to target', or 'account prioritization'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--source <list|single|batch>] [--action <score|rank|segment>]"
---

# Lead Scoring

Score and prioritize sales leads for MBL portfolio companies — ensuring that reps spend time on prospects most likely to convert, not on the next name on the list. Lead scoring converts intuition into a repeatable prioritization system; a rep who calls a scored list in priority order generates 2-3× more meetings per hour than a rep who calls randomly.

## When to Use
- Before a rep begins an outbound calling block (which leads to call first?)
- When a new target account list arrives (which accounts are highest priority?)
- When inbound leads need to be triaged (sales-inbound-qualifier uses the same framework)
- Monthly list review (are the active prospects the right ones?)

## Lead Scoring Framework

```
LEAD SCORING MODEL — 6 DIMENSIONS (max 30 points):

  1. ICP FIT (0-10 points — highest weight):
     10: Perfect ICP match (all size; geography; industry; buying criteria met)
     7-9: Strong match (1 criterion slightly off — e.g., 48 employees vs. 50 minimum)
     4-6: Partial match (2 criteria off; could still be a fit; deprioritize)
     0-3: Outside ICP (significant mismatch; likely to be disqualified at discovery)
     
  2. PAIN SIGNAL / INTENT (0-6 points):
     6: Confirmed pain — they've said or signaled a specific problem we solve
       Allevio: "We're facing a 20% carrier rate increase"
       Column6: "Our CTV completion rates are underperforming"
     4-5: Probable pain — they're in a situation where our pain is common
       Allevio: Employer group with 30+ employees using a major carrier (renewal likely soon)
     2-3: Unknown pain — no signal; we're assuming
     0-1: Counter-signal — they recently renewed; signed with a competitor; no budget
     
  3. DECISION-MAKER ACCESS (0-5 points):
     5: Direct access to the economic buyer (HR Director; CFO; Media Buyer — confirmed)
     4: Champion identified who has access to the economic buyer
     2-3: Unknown — we have a contact but don't know their authority level
     0-1: Known gatekeeper; or contact who explicitly said they have no authority
     
  4. TIMING / URGENCY (0-5 points):
     5: Active buying event — renewal coming up; campaign launching; new budget available
       Allevio: Open enrollment window October-January; renewal 90 days out
       Column6: TV upfront season April-May; Q[X] campaign planning cycle active
     4: Near-term — 90-180 days
     2-3: Medium-term — 6-12 months
     0-1: No timeline; or has a multi-year contract in place
     
  5. RELATIONSHIP / WARM SIGNAL (0-2 points):
     2: Referred by an existing customer; attended a webinar; engaged on LinkedIn
     1: Met at an event; past conversation (even years ago)
     0: Cold / no prior relationship
     
  6. DEAL SIZE POTENTIAL (0-2 points):
     2: Likely to be in the top ACV tier for this entity
       Allevio: 200+ employees → >$200K ACV
       Column6: Agency with >$1M annual CTV budget
     1: Average ACV range
     0: Below-average ACV (still worth pursuing if ICP fit is high; lower priority)
     
LEAD SCORE INTERPRETATION:
  25-30: Priority A — call today; assign best rep time
  18-24: Priority B — call this week; standard cadence
  10-17: Priority C — enter into nurture sequence; monthly check-in
  0-9:   Priority D — archive or disqualify; do not invest active sales time
  
ENTITY-SPECIFIC SCORING NUANCES:
  
  ALLEVIO:
    Timing override: If the prospect's open enrollment is 60-90 days out,
      add 2 bonus points regardless of other factors (urgency window closes fast)
    Industry bonus: Professional services and construction companies tend to have
      higher claim ratios and more openness to MSO models; add 1 point for these
    Disqualifier: Government employers → D (outside Allevio model); zero time spent
    
  COLUMN6:
    Agency buyer bonus: If the prospect is a media planner or buyer at a mid-size independent
      agency (not a holding company — those are handled separately), add 1 point
      (independent agencies move faster; holding company buys require longer sales cycles)
    Campaign launch timing: If a campaign is scheduled to start within 60 days, treat as
      high urgency (5 points for timing) regardless of budget signal
    
  HIVE:
    Mineral ownership bonus: If the landowner owns mineral rights in HIVE's primary development
      area (confirmed via public records), automatically score as Priority A
    Competing LOI disqualifier: If a competing LOI is already signed, score 0 → no time spent
```

## Output Format

```markdown
# Lead Score — [Lead Name / Account] | [Entity]
**Scored by:** Dr. Lewis | **Date:** [Date]

---

## Score Summary

| Dimension | Score | Notes |
|-----------|-------|-------|
| ICP fit | [X]/10 | [e.g., 145 employees; Scottsdale construction; perfect fit] |
| Pain signal | [X]/6 | [e.g., Carrier rate increase 18%; confirmed by HR Director on LinkedIn] |
| Decision-maker access | [X]/5 | [e.g., Direct to HR Director; confirmed decision-maker] |
| Timing / urgency | [X]/5 | [e.g., Open enrollment October; 90 days out] |
| Relationship warmth | [X]/2 | [e.g., Referred by Group A client] |
| Deal size potential | [X]/2 | [e.g., 145 employees = ~$148K ACV; average range] |
| **Total** | **[X]/30** | |

---

## Priority: A / B / C / D

**Action:** [Call today / Call this week / Enter nurture / Archive]
**Assign to:** [Rep name]
**Best outreach:** [Direct call to HR Director / LinkedIn first / Email sequence]
```

## Output Contract
- Score the lead against criteria, not gut feel — a rep who prioritizes leads by "who sounds most interesting" will waste time on low-probability contacts; Dr. Lewis builds the scoring model from ICP and historical win data; every lead on the target list is scored before the rep begins outreach; the rep calls in priority order from A to D
- ICP fit is the most important dimension — a lead that has pain, urgency, and a decision-maker but is outside the ICP will almost always fail at discovery (disqualified when the full ICP criteria emerge); Dr. Lewis weights ICP fit at 10 of 30 points (33%) to prevent reps from chasing exciting conversations that lead to disqualification; a 0 in ICP fit should be disqualified immediately regardless of other scores
- Timing is a force multiplier, not a static criterion — the same lead at 5 points in January may score 2 points in August when their benefits aren't up for renewal; Dr. Lewis re-scores lists quarterly to capture timing changes; a lead that was a B in Q1 may become an A in Q3 when their renewal window opens; the scoring model is applied to the list at the time of use, not once at list generation
- HITL required: Reps use the scores to prioritize their time; Dr. Lewis reviews the scoring model quarterly and updates it based on win/loss patterns; CEO reviews the top-priority account list monthly; any account in the Priority A tier with >$200K potential is reviewed by the CEO before the rep begins outreach; Matt Mathison is not involved in individual lead scoring; he reviews aggregate pipeline quality metrics monthly

## System Dependencies
- **Reads from:** ICP criteria (sales-ideal-customer-profile); target account list (SharePoint/Sales/<Company>/Prospects/TargetAccountList_[Date].xlsx); CRM (GoHighLevel — prior contact history; any prior conversations or notes); public records (LinkedIn; AZ Dept of Labor; county assessor for HIVE mineral rights); win/loss analysis (sales-win-loss-analyzer — which segments have the highest win rates?); open enrollment calendar (Allevio — which companies are 60-90 days from their renewal date?)
- **Writes to:** Scored lead list (SharePoint/Sales/<Company>/Prospects/ScoredList_[Date].xlsx); CRM lead record (GoHighLevel — lead score and priority tier entered as a field); sales-pipeline-manager (Priority A leads enter the active pipeline immediately after first response); rep call priority queue (communicated by Dr. Lewis in the weekly pipeline review); sales-kpi-dashboard (lead quality by source — which sources generate the highest-scoring leads?)
- **HITL Required:** Dr. Lewis scores lists and reviews the model; CEO reviews Priority A accounts >$200K; reps use scores to prioritize; Dr. Lewis does not instruct reps to pursue leads that are clearly outside the ICP even if a rep finds them interesting; Dr. Lewis updates the scoring model quarterly based on win/loss data and submits changes to the CEO for review before implementing

## Test Cases
1. **Golden path:** Scoring a 50-lead Allevio target list → Dr. Lewis scores all 50: 8 are Priority A (scores 25-30): all have 130-220 employees; Maricopa/Pima county; professional services or construction; known renewal windows within 90 days; 2 are referred by existing Allevio clients; 15 are Priority B (18-24); 18 are Priority C; 9 are Priority D (disqualified: 2 are government employers; 3 are below 25 employees; 4 are outside Arizona); Dr. Lewis sends the scored list to the rep: "Call the 8 Priority A accounts this week. I've ranked them in order. Start with accounts 1 and 2 — they're referred leads and referrals convert at 3× the rate of cold outreach"; rep follows the list; 3 of 8 Priority A leads convert to discovery calls in the first week
2. **Edge case:** A new list of 100 Column6 agency prospects contains 12 holding company DSP desks — these require a different (longer) sales process than the independent agency ICP → Dr. Lewis scores the list: "The 12 holding company DSPs are scored differently. They score high on deal potential (large budgets) but low on timing (long sales cycles; approval layers) and decision-maker access (5+ layers to get to the actual buyer). I'm giving them a separate Priority B tier with a note: 'These require a VP-level introduction — they don't respond to cold outreach from a rep. Identify one warm connection into each of these 12 before beginning outreach.'" List segmented into: 35 Priority A-B independent agencies (standard outreach); 12 Priority B-special holding company accounts (executive introduction required); 53 Priority C-D (nurture or disqualify)
3. **Adversarial:** A rep ignores the scored list and calls prospects in the order they appear in the spreadsheet (alphabetical) → Dr. Lewis in the weekly pipeline review: "I noticed the outreach activity this week doesn't match the scored list order. Priority A accounts 1-8 have 0 logged contacts. Priority D accounts J through M (alphabetical) have 3 logged attempts each. This is the exact opposite of what the scoring is for. Walk me through what happened." Rep explains they were more comfortable starting at the top of the sheet. Dr. Lewis: "Let's reconfigure your CRM view. I'll sort the prospect list by priority score. The scored list is your call list — top to bottom. Starting at the top of an alphabetical spreadsheet means you're prioritizing C and D leads over your best opportunities. We'll fix this today." CRM view updated; rep recalibrated

## Audit Log
All scored lead lists retained by entity and date. Scoring model version retained. Priority tier assignments retained. CEO account reviews (>$200K Priority A) retained. Quarterly model update records retained. Win/loss cross-reference records (do high-score leads convert at higher rates? validate quarterly).

## Deprecation
Retire when each portfolio company has a dedicated Sales Operations role who manages lead scoring and list prioritization — with Dr. Lewis reviewing the scoring model annually and the CEO reviewing the top-tier accounts monthly.
