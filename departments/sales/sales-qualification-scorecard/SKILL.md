---
name: sales-qualification-scorecard
description: "Score and qualify sales opportunities for MBL portfolio company sales teams. Use when the user says 'qualification', 'qualify', 'qualified', 'qualifying a deal', 'is this deal qualified', 'qualify this opportunity', 'qualification scorecard', 'deal scorecard', 'opportunity scorecard', 'score the deal', 'score this opportunity', 'MEDDPICCC score', 'deal score', 'qualification score', 'is this a real deal', 'is this legit', 'should we pursue this', 'deal health', 'opportunity health', 'deal quality', 'is this worth pursuing', 'should we pass on this', 'is this in the ICP', 'ICP qualification', 'should I continue with this deal', 'should I walk away', 'walk away from deal', 'disqualify', 'disqualification', 'not qualified', 'hard stop', 'no-go criteria', 'deal criteria', 'deal threshold', 'Allevio qualification', 'Column6 qualification', 'HIVE qualification', 'employer qualification', 'agency qualification', 'acquisition qualification', or 'pipeline quality'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--deal <name>] [--action <score|review|disqualify>]"
---

# Sales Qualification Scorecard

Score and qualify sales opportunities for MBL portfolio company sales teams — providing a structured, entity-specific scoring system that distinguishes real opportunities from hopeful conversations. Pipeline quality is more valuable than pipeline quantity: 20 well-qualified deals produce more revenue than 80 deals that were never truly qualified. Every deal that passes Stage 3 should be able to pass the qualification scorecard.

## When to Use
- Evaluating whether to advance an opportunity past Stage 3 (Discovery)
- Pipeline review — assessing quality of open opportunities
- Deciding whether to pursue an inbound lead that doesn't obviously match ICP
- Disqualifying a deal that no longer meets qualification criteria

## Qualification Scorecard Framework

```
QUALIFICATION HARD STOPS (disqualify immediately; do not spend time):

  ALLEVIO HARD STOPS:
    Employer < 75 employees (not ICP — minimum service threshold)
    Employer is fully insured (not self-insured) AND insurer manages benefits design
    HIPAA: employer asks for individual employee health data in the sales process — pause; consult Dr. Lewis
    No HR Director or C-Suite contact available — cannot qualify without a stakeholder
    
  COLUMN6 HARD STOPS:
    Agency < $100K annual CTV spend (below IO floor; economics don't work)
    Agency is brand-direct (no media agency relationship) AND not in their buying model
    Agency explicitly states "we don't work with non-DSP supply" — may be a technical disqualification
    
  HIVE HARD STOPS:
    Non-producing mineral rights (speculative / undeveloped) — HIVE only acquires producing assets
    WTI trigger active AND Matt Mathison has not authorized an exception — do not advance to LOI
    
MEDDPICCC QUALIFICATION SCORING (Allevio and Column6):
  Score each dimension 0-2:
    0 = Unknown (not yet discovered)
    1 = Partially known (some information; needs verification)
    2 = Fully known (confirmed; documented in GHL)
    
  M — Metrics: what are the measurable outcomes they want?
  E — Economic Buyer: who controls the budget? Have we spoken to them?
  D — Decision Criteria: what are they evaluating alternatives on?
  D — Decision Process: how will they make the final decision? Who's involved?
  P — Paper Process: what does the contract review and signing process look like? How long?
  I — Identify Pain: what is the specific problem they need to solve? How painful is it?
  C — Champion: who is fighting for us internally? Have we tested them?
  C — Competition: who else are they evaluating? How do we compare?
  C — Compelling Event: why do they need to make a decision now? What happens if they don't?
  
  SCORE INTERPRETATION:
    16-18 (8-9 dimensions fully known): Stage 5+ ready; high confidence
    11-15 (majority of dimensions known): Stage 4 appropriate; continue discovery
    6-10 (basics known; gaps remaining): Stage 3; more discovery needed before advancing
    <6: Stage 2; not yet qualified; do not advance; complete discovery or disqualify
    
  MINIMUM SCORE TO ADVANCE TO STAGE 4 (Qualified):
    Allevio: ≥11 MEDDPICCC score + Economic Buyer identified + Compelling Event (renewal date) confirmed
    Column6: ≥10 MEDDPICCC score + budget confirmed + flight date window identified
    
HIVE QUALIFICATION (simplified — not MEDDPICCC):
  Asset qualification:
    Producing (vs. speculative): ✅ required
    Basin: Uinta Basin: ✅ required
    Asset type: royalty interest / ORRI / mineral rights: ✅ required (WI requires deal desk)
    Documentation available: production statement: ✅ required before LOI
  Seller qualification:
    Interested in selling: ✅ required (confirmed in first contact)
    Authority to sell: ✅ required (confirmed; no competing heirs without agreement)
    Timeline: willing to close in 30-90 days: preferred
  WTI status: ✅ above $58/bbl at qualification (or Matt Mathison exception)
  Preliminary LOI price feasible (Matt Mathison model): ✅ required before LOI submission
  
FULL QUALIFICATION CHECKLIST (before advancing to Stage 4):
  Allevio:
    [ ] Employer is self-insured (or partially self-insured)
    [ ] Employee count 75-500
    [ ] Benefits renewal date confirmed
    [ ] HR Director identified and engaged (champion candidate)
    [ ] CFO or CEO identified (economic buyer candidate)
    [ ] Pain stated: claims trend or access problem (in their words)
    [ ] MEDDPICCC score ≥11
    [ ] No HIPAA red flags in discovery notes
    
  Column6:
    [ ] Agency has active CTV spend ≥$100K/quarter
    [ ] Media buyer identified and engaged
    [ ] Campaign brief or objective known
    [ ] Budget confirmed for test IO ($25K minimum)
    [ ] ICP Tier qualification confirmed
    [ ] MEDDPICCC score ≥10
    [ ] Gross margin check: test IO will produce ≥35% margin
```

## Output Format

```markdown
# Qualification Scorecard — [Deal Name] | [Entity] | [Date]
**AE:** [Name] | **Stage:** [Current] | **Recommended stage:** [N]

---

## MEDDPICCC Score (Allevio / Column6)
| Dimension | Score (0-2) | Evidence |
|-----------|-------------|---------|
| Metrics | [0/1/2] | [What we know] |
| Economic Buyer | [0/1/2] | [Name; access level] |
| Decision Criteria | [0/1/2] | [What they're evaluating on] |
| Decision Process | [0/1/2] | [Who's involved; timeline] |
| Paper Process | [0/1/2] | [Contract review; timeline] |
| Identify Pain | [0/1/2] | [Exact pain; their words] |
| Champion | [0/1/2] | [Name; test result] |
| Competition | [0/1/2] | [Who else; how positioned] |
| Compelling Event | [0/1/2] | [Renewal date / flight date] |
| **Total** | **[N]/18** | |

---

## Hard Stop Check
- [ ] No hard stop criteria triggered ✅
- [ ] Hard stop: [Which criteria] → Disqualify immediately ❌

---

## Qualification Decision
**Score:** [N]/18 | **Minimum to advance:** [11 (Allevio) / 10 (Column6)]
**Decision:** ✅ Advance to Stage [N] / ⚠️ Continue discovery (gaps: [list]) / ❌ Disqualify ([reason])
```

## Output Contract
- A deal that doesn't pass qualification should be disqualified early — the opportunity cost of a rep spending 4 weeks on a disqualified deal (one that was never going to close) is 4 weeks they could have spent on a qualifying deal; a deal with a MEDDPICCC score of 4 at Stage 4 is not a qualified deal that needs more time — it is a conversation that was never properly qualified and should be moved back to Stage 3 or closed as "not yet qualified"; Dr. Lewis enforces a simple test in pipeline review: for any Stage 4+ deal, can the rep state the compelling event, the economic buyer, and the pain in 3 sentences? If not, the deal is not qualified; hard-stop criteria are not "deal-by-deal judgment calls" — they are disqualifiers; an employer with 60 employees doesn't become qualified because the rep is excited about the conversation
- MEDDPICCC dimensions are discovered in order of risk — the Compelling Event (why do they need to decide now?) and Economic Buyer (who controls the budget?) are the highest-risk unknowns; a rep can run a beautiful discovery call and learn about the employer's pain and decision criteria, but if they don't know the benefits renewal date (compelling event) and haven't identified the CFO (economic buyer), the deal may be "interesting" but it's not qualified; Dr. Lewis coaches: the two questions that must be answered by end of Discovery 1 are (1) "When is your benefits renewal?" and (2) "Who at your organization makes the final call on benefits decisions?"; if the rep doesn't have both answers, Discovery 1 didn't finish the job
- HITL required: hard-stop disqualification → AE notifies entity CEO same day (pipeline coverage impact); HIPAA red flag in Allevio discovery → Dr. Lewis + entity CEO consulted before deal advances; HIVE qualification → Dr. Lewis reviews production statement and WTI before Matt Mathison briefing; below-minimum MEDDPICCC score at Stage 5+ → entity CEO + Dr. Lewis review (was this deal advanced prematurely?); deal where champion has not been tested by Stage 4 → entity CEO coaching; Allevio deal where economic buyer (CFO) has not been identified by Stage 5 → entity CEO involved

## System Dependencies
- **Reads from:** GHL (MEDDPICCC fields; stage; discovery notes; activity log); ICP definitions (sales-icp-builder — hard stop criteria); champion assessment (sales-champion-builder); discovery notes (sales-discovery-guide); WTI current price (HIVE); production statement (HIVE qualification)
- **Writes to:** GHL (qualification scorecard fields; MEDDPICCC scores; stage recommendation; disqualification notes); pipeline review reporting (sales-pipeline-review — qualified vs. unqualified deal flags); entity CEO briefing (hard-stop disqualifications; pipeline quality alerts); HIVE: Matt Mathison briefing document (post-qualification summary)
- **HITL Required:** Hard-stop disqualification → entity CEO same day; HIPAA red flag → Dr. Lewis + entity CEO; HIVE qualification → Dr. Lewis reviews before Matt Mathison briefing; below-minimum score at Stage 5+ → entity CEO + Dr. Lewis; champion not tested at Stage 4 → entity CEO coaching; CFO not identified at Stage 5 (Allevio) → entity CEO involved

## Test Cases
1. **Golden path:** Allevio employer — 200-employee manufacturing firm (self-insured ✅; >75 employees ✅). MEDDPICCC: M (claims trend 12%/year, CFO wants reduction = 2); E (CFO Bill; HR Director confirms he makes benefits decisions = 2); D (decision criteria = cost and employee utilization = 1 — not fully confirmed); D (decision process = HR Director recommends; CFO approves; board not involved = 2); P (paper process = legal reviews; ~5-10 days = 1 — needs verification); I (pain = "HR Director says their claims trend is killing them" = 2); C (champion = Amanda HR Director; tested and confirmed = 2); C (competition = "looked at telemedicine-only options" = 1); C (renewal date = November 1 = 2). Score: 15/18. Minimum: 11 ✅. Economic buyer identified ✅. Compelling event confirmed ✅. Decision: Advance to Stage 4. Gaps: Decision Criteria (confirm what they weight most heavily); Paper Process (confirm legal timeline).
2. **Edge case:** Column6 agency — media buyer showed interest; had a call; said "we might have some budget next quarter." MEDDPICCC: M (unknown = 0); E (unknown = 0); D (unknown = 0); D (unknown = 0); P (unknown = 0); I ("budget pressure from client to improve CPM" = 1); C (media buyer might be champion = 0 — not tested); C (unknown = 0); C ("might have budget next quarter" = 0 — not a compelling event). Score: 1/18. Decision: Not qualified — Stage 2. "This is an interested contact, not a qualified deal. AE action: keep in nurture sequence; follow up next quarter; do not enter as an active opportunity in pipeline until: (1) budget is confirmed; (2) campaign brief is shared; (3) economic buyer is identified. Remove from Stage 3+ pipeline; log as Nurture in GHL."
3. **Adversarial:** Rep insists a deal "feels qualified" despite MEDDPICCC score of 6: "They really like us; I know they're going to buy" → Dr. Lewis: "Intuition is useful; qualification data is required. A score of 6 tells me: we know their pain (good); we don't know who controls the budget; we don't know what else they're evaluating; we don't know their decision process; we don't know their paper process; we don't have a confirmed champion; we don't know their compelling event. In a 12-week sales cycle, discovering at week 10 that the CFO has a different agenda than the HR Director — and that there are two other vendors being evaluated — is how deals die at Stage 6. Run another discovery call focused on: Economic Buyer (who's the CFO; does Amanda have access?); Decision Process (who else is involved?); Compelling Event (when is renewal?). Come back with a score of ≥11 and then we advance this to Stage 4. The 'feeling' is information; the scorecard is the discipline."

## Audit Log
Qualification scorecard records (all Stage 3+ opportunities; entity; score; decision; date; GHL). Hard-stop disqualification records (deal; criterion; entity CEO notification; date). HIPAA red-flag records (Allevio — event; Dr. Lewis + entity CEO consultation; resolution). Premature advance records (Stage 5+ with below-minimum score; entity CEO + Dr. Lewis review; outcome). HIVE qualification records (production statement review; WTI status; Dr. Lewis review; Matt Mathison briefing). Pipeline quality reports (monthly — qualified deal count; average MEDDPICCC score by rep).

## Deprecation
Hard-stop criteria reviewed when ICP changes. MEDDPICCC minimum score thresholds reviewed when win rate data shows pattern of over- or under-qualification. HIVE qualification criteria reviewed when acquisition thesis changes. Qualification scorecard reviewed semi-annually against pipeline quality and win rate correlation.
