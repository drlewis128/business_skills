---
name: strategy-alignment-checker
description: "Check alignment between a decision or initiative and the strategic plan, thesis, and values. Use when the user says 'alignment check', 'does this fit the strategy', 'is this on strategy', 'strategy fit', 'thesis alignment', 'THRIVE check', 'does this align', 'strategic alignment', 'check this against the strategy', 'does this make sense strategically', 'values alignment', 'alignment review', 'strategic fit check', 'is this the right move', or 'does this fit our thesis'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--decision <description>] [--check <thesis|okr|thrive|annual-plan|all>]"
---

# Alignment Checker

Check whether a proposed decision, initiative, or investment is aligned with the MBL portfolio strategy, investment thesis, annual plan, OKRs, and THRIVE values — providing a structured assessment that surfaces misalignment before resources are committed. At PE portfolio scale, alignment failures are expensive: a portfolio company that pursues an off-thesis acquisition, a service line that doesn't connect to the north star metric, or a hiring decision that prioritizes operational comfort over strategic leverage all represent capital and time deployed to the wrong place. The alignment checker is the strategic filter that catches these before they happen.

## When to Use
- Before committing capital to an initiative — is this on strategy?
- A CEO proposes a strategic direction change — does it fit the thesis?
- Before an acquisition LOI — is this the right deal for the thesis?
- Matt Mathison asks "does [decision] make sense given our strategy?"
- A new hire or partnership — is this aligned with where we're going?

## Alignment Framework

```
Alignment dimensions (check all that apply):

1. INVESTMENT THESIS ALIGNMENT:
   Question: Does this decision advance the investment thesis for this portfolio company?
   Thesis check: Does it grow EBITDA on the path to the target exit value?
   Exit value: Does it make the company more attractive to the identified buyer universe?
   Anti-thesis: Does it diversify away from the thesis (off-market, off-model, off-geography)?
   
   Example (Allevio): Thesis = AZ physician practice consolidation + operational improvement
     Aligned: Adding a physician practice in Phoenix → ✅ Direct thesis advancement
     Aligned: HIPAA compliance program → ✅ De-risks exit; removes buyer discount
     Misaligned: Opening a pharmacy → ❌ New business line outside MSO thesis
     Misaligned: Acquiring a practice in Colorado → ❌ Geography outside thesis
     
2. ANNUAL PLAN ALIGNMENT:
   Question: Is this one of the 3 annual strategic priorities, or does it derive from one?
   If not: Is this a genuinely new opportunity that supersedes a current priority?
   Or: Is this a distraction from the plan that should be deferred?
   Rule: Adding a 4th priority requires dropping an existing one; can't just add
   
3. OKR ALIGNMENT:
   Question: Does this initiative support or conflict with a current OKR Key Result?
   Conflict: Does doing this make it harder to achieve a committed KR?
   Opportunity: Does this help achieve a KR faster?
   
4. THRIVE VALUES ALIGNMENT:
   Truth: Is this decision based on honest assessment, not wishful thinking?
   Hustle: Is this the highest-leverage use of effort? Or does it feel good but create little value?
   Respect: Does this decision honor our obligations to employees, patients, partners, and LPs?
   Integrity: Is this consistent with past commitments and stated values?
   Value: Does this create real value — economic and/or for patients/customers?
   Enjoy: Will the team be engaged in this? Or will it create friction and resentment?
   
5. CAPITAL ALIGNMENT:
   Question: Is there capital available for this, and is it the best use of that capital?
   Opportunity cost: What doesn't get funded if this does?
   Authority: Who has capital approval authority for this amount?
   
6. TIMING ALIGNMENT:
   Question: Is this the right time to pursue this?
   Sequencing: Does this depend on something that isn't yet in place?
   Distraction: Does doing this now make it harder to execute current priorities?
```

## Output Format

```markdown
# Alignment Check — [Decision/Initiative Name]
**Date:** [Date] | **Entity:** [Company] | **Reviewer:** Dr. Lewis
**Decision:** [Clear description of what is being considered]
**Requestor:** [Who is proposing this]

---

## Alignment Summary

| Dimension | Status | Assessment |
|---------|--------|-----------|
| Investment thesis | ✅ Aligned / ⚠️ Partial / ❌ Misaligned | [One sentence] |
| Annual plan (3 priorities) | ✅ / ⚠️ / ❌ | [Which priority it connects to, or why it doesn't] |
| Current OKRs | ✅ / ⚠️ / ❌ | [Does it support or conflict with a KR] |
| THRIVE values | ✅ All / ⚠️ [Filter] / ❌ [Filter] | [Which filter is at risk] |
| Capital alignment | ✅ / ⚠️ / ❌ | [Available / Best use? Authority level?] |
| Timing | ✅ / ⚠️ / ❌ | [Right now? Or defer?] |
| **Overall** | **✅ Aligned / ⚠️ Conditional / ❌ Misaligned** | |

---

## Detailed Assessment

### Thesis Alignment
[2-3 sentences: How specifically does this advance the investment thesis? Or why doesn't it?]
[If misaligned: What is the thesis implication? What does this say about strategic direction?]

### Annual Plan Connection
[Which of the 3 annual priorities does this support? Quote the priority. 
If it doesn't connect: Is this a 4th priority that requires CEO + Matt Mathison to explicitly add and offset?]

### THRIVE Analysis

| Filter | Assessment | Detail |
|--------|-----------|--------|
| Truth | ✅/⚠️ | [Is the assumption behind this decision honest?] |
| Hustle | ✅/⚠️ | [Is this high-leverage or comfortable busywork?] |
| Respect | ✅/⚠️ | [Are obligations to patients/employees/LPs honored?] |
| Integrity | ✅/⚠️ | [Consistent with past commitments?] |
| Value | ✅/⚠️ | [Real value — economic and/or patient/customer?] |
| Enjoy | ✅/⚠️ | [Will team be engaged or resentful?] |

### Key Alignment Risk
[If there is a ⚠️ or ❌: What is the specific misalignment? What does it cost if ignored?]

---

## Recommendation

**Verdict:** ✅ Proceed / ⚠️ Proceed with conditions / ❌ Do not proceed / ⏸ Defer

**Reasoning:** [2-3 sentences — why this verdict]

**Conditions (if conditional):**
- [Condition 1: Proceed only if [specific criterion] is confirmed]
- [Condition 2: Requires Matt Mathison approval before proceeding]

**If the decision-maker disagrees:** [What additional information or argument would change the recommendation?]

---

## Matt Mathison Alignment Brief (if threshold exceeded)

[Decision]: Alignment check complete. Overall: [Aligned / Conditional / Misaligned]. Thesis: [One sentence]. THRIVE: [All clear / [Filter] at risk — specific]. Recommendation: [Proceed / Conditions / Don't proceed]. Action from Matt Mathison: [None needed / Review and approve / Discuss [specific tension]].
```

## Output Contract
- Alignment check is advisory, not a veto — Dr. Lewis is not the ultimate decision authority on portfolio company decisions; the CEO decides for their company; Matt Mathison decides for the portfolio; the alignment check is Dr. Lewis's structured assessment that ensures the decision-maker has full strategic context before deciding; a "misaligned" verdict from an alignment check can be overridden by the CEO or Matt Mathison with explicit acknowledgment; Dr. Lewis documents the decision and the alignment gap for the record
- A ⚠️ Partial is not a pass — partial thesis alignment is usually worse than full alignment or full misalignment; a decision that is "sort of" aligned with the thesis is often a thesis dilution event dressed as a strategic opportunity; Dr. Lewis is specific about what "partial" means and what condition would make it fully aligned; vague partial alignment assessments enable the motivated reasoning that leads to off-thesis decisions being rationalized rather than examined
- The THRIVE check is mandatory on all decisions above $10K or material strategic significance — the THRIVE filter is not decoration; it is a kill criterion; Misalignment on Integrity (not consistent with past commitments) or Truth (decision based on wishful thinking rather than evidence) are automatic escalation points; Dr. Lewis does not recommend proceeding on any decision that fails the Integrity or Truth filter without Matt Mathison review
- HITL required: Dr. Lewis produces the alignment check; CEO reviews and decides for portfolio company decisions; Matt Mathison reviews for decisions that affect LP returns, material capital commitments, or thesis-level changes; any decision rated ❌ Misaligned that the CEO wants to proceed with requires Matt Mathison explicit review; Dr. Lewis documents all decisions and their alignment status

## System Dependencies
- **Reads from:** Investment thesis (strategy-investment-thesis), annual strategic plan (strategy-annual-plan-builder), current OKRs (strategy-company-okr-builder), THRIVE values (CLAUDE.md), capital available (strategy-capital-allocation)
- **Writes to:** Alignment check record (SharePoint/Strategy/<Company>/Decisions/); Matt Mathison decision brief if escalation needed; decision log
- **HITL Required:** Dr. Lewis assesses; CEO decides for portfolio company; Matt Mathison for decisions affecting LP returns, material capital, or thesis changes; misaligned decisions that CEO proceeds with anyway → Matt Mathison documentation

## Test Cases
1. **Golden path:** Allevio CEO proposes opening a dental practice as part of Allevio's "healthcare services expansion" → Alignment check: Thesis — ❌ Misaligned: Allevio's thesis is physician practice MSO, specifically primary care and specialist practices; dental is a separate market, separate regulatory environment (state dental board vs. medical board), separate payer contracting (dental insurance vs. medical), and separate operational expertise; this is not MSO expansion, it's business model diversification; Annual plan — ❌ No annual priority supports dental expansion; THRIVE: Truth ⚠️ — the "expansion" framing is not aligned with the actual thesis; Hustle — CEO energy toward dental is energy away from the primary care thesis; Verdict: ❌ Do not proceed — dental expansion is off-thesis; if dental is genuinely attractive, it should be presented to Matt Mathison as a new investment thesis evaluation, not an Allevio expansion; Matt Mathison briefed; CEO agrees to drop dental
2. **Edge case:** A new EHR vendor offers Allevio a 30% discount if they sign this week — CEO wants to approve immediately → Timing pressure ⚠️: artificial urgency created by vendor is a procurement tactic; alignment check: Thesis ✅ (EHR supports operations); Annual plan ✅ (Priority 2: HIPAA compliance requires EHR upgrade); THRIVE — Hustle ⚠️: signing this week without proper evaluation is not hustle, it's reaction; Truth ⚠️: is the 30% discount real, or would the vendor offer the same terms next week if negotiated?; Recommendation: Conditional — proceed with vendor if: (1) due diligence confirms the discount is real and the vendor meets the HIPAA security requirements from the risk assessment, (2) this vendor was already being evaluated (not a new evaluation prompted only by the discount); do not sign in 24 hours without completing the requirements check; CEO agrees to a 3-day expedited review rather than immediate signing
3. **Adversarial:** CEO argues that the alignment framework is too rigid and kills good opportunities → The alignment framework is descriptive, not restrictive; it describes what the thesis and annual plan say, not what can be done; if a genuinely compelling opportunity doesn't fit the current thesis, the right response is to evaluate whether the thesis should be updated, not to bypass the alignment check; a thesis is not sacred — Matt Mathison can update it; but the update requires an explicit decision, not a series of off-thesis decisions that drift the company away from the original investment rationale without anyone noticing; Dr. Lewis uses the alignment check to surface these tensions for Matt Mathison's explicit consideration

## Audit Log
All alignment checks retained. CEO/Matt Mathison decisions on flagged items retained. Misaligned decisions that proceeded retained with rationale. THRIVE failures and escalations retained permanently.

## Deprecation
Retire when portfolio company leadership has internalized the strategic filters and can self-check alignment before bringing decisions to Dr. Lewis — with Dr. Lewis reviewing material decisions for thesis alignment rather than running the full alignment framework on routine decisions.
