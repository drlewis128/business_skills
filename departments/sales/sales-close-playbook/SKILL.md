---
name: sales-close-playbook
description: "Close sales opportunities for MBL portfolio company sales teams. Use when the user says 'closing', 'close the deal', 'how to close', 'closing techniques', 'ask for the business', 'ask for the sale', 'trial close', 'soft close', 'hard close', 'closing strategy', 'deal stuck', 'deal stalled', 'deal not moving', 'deal is slow', 'deal velocity', 'getting to yes', 'negotiating the close', 'final negotiation', 'deal terms', 'closing call', 'decision deadline', 'creating urgency', 'urgency', 'compelling event', 'final step', 'last step before close', 'legal review', 'contract review', 'contract negotiation', 'signing', 'getting the signature', 'Allevio close', 'Column6 close', 'IO signing', 'IO close', 'HIVE close', 'acquisition close', 'LOI close', 'deal close', 'opportunity close', 'win the deal', 'next steps to close', 'final meeting', 'decision meeting', 'closing meeting', 'champion', 'internal champion', 'multi-stakeholder close', or 'executive close'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--stage <pre-close|close-meeting|stalled|contract>]"
---

# Sales Close Playbook

Close sales opportunities for MBL portfolio company sales teams — providing entity-specific closing strategies, stall-breaker tactics, and the sequence from verbal agreement to signed contract. Closing is not a moment; it is a process that begins in discovery. By the time a close meeting happens, a rep who did discovery and proposal right should be confirming a decision, not persuading.

## When to Use
- Preparing for a close/decision meeting with a prospect
- A deal has stalled after proposal and needs a strategy to advance
- Managing the multi-stakeholder close (getting CFO + HR Director + entity CEO aligned)
- Navigating from verbal agreement to signed contract without losing momentum

## Close Playbook

```
CLOSE READINESS CHECKLIST (run before any close meeting):
  ✅ Economic buyer will be in the close meeting (not just the champion)
  ✅ Decision criteria confirmed and proposal addresses top 3
  ✅ Compelling event acknowledged (why now is still real)
  ✅ Competition assessed (do we know who else they're evaluating?)
  ✅ Champion has been given the internal selling points they need
  ✅ Price and terms confirmed (no new surprises in the close meeting)
  ✅ Paper process clear (who signs; what legal review looks like; how long)
  
CLOSE MEETING STRUCTURE:
  Opening (5 min): "Today, we want to walk through any final questions and confirm next steps."
  Recap (5 min): "Here's what we heard you say your top priorities were..."
  Final Q&A (15 min): address remaining questions; do not re-pitch
  Trial close (2 min): "Based on what we've discussed, does [entity] feel like the right fit?"
  If yes → move to next steps / paper process
  If hesitation → explore: "What would you need to see to feel confident moving forward?"
  Next steps (5 min): specific commitments from both sides (not "we'll follow up")
  
ENTITY-SPECIFIC CLOSE SEQUENCES:

  ALLEVIO — Employer Close:
    Verbal agreement:
      "So we're aligned that Allevio is the right solution — can we confirm the enrollment count 
      and target go-live date so I can get the contract drafted?"
    Contract process:
      Dr. Lewis or entity CEO drafts contract; standard 12-month terms
      Legal review: employer's outside counsel may review (typical: 5-10 business days)
      Signatures: HR Director or CFO (per employer's authority); countersigned by Allevio entity CEO
      Contract signed before census collection begins (no census without signed contract)
    Stall-breaker: "Your open enrollment is [date] — we need to have the contract signed by [date-minus-30-days] 
      to have time for census collection and enrollment. What would it take to meet that date?"
    HIPAA: contract must include BAA for any Allevio vendor with access to plan data; reviewed before execution
    Authorization: entity CEO countersigns all Allevio employer contracts
    
  COLUMN6 — IO Close:
    IO mechanics:
      IO is both the proposal and the contract — once signed by both parties, it's a binding agreement
      Buyer signs → Column6 entity CEO or authorized signatory countersigns → campaign build begins
      Creative assets due within 5 days of IO signing; campaign live within 10 days
    Verbal agreement:
      "Great — I'll get you the IO today for your records. Once you send back the signed copy, 
      we'll request creative assets and get your campaign in the build queue."
    Stall-breaker: "Your campaign needs to be live by [date] to hit your flight dates — 
      the IO needs to be signed by [date] to make that happen. What's standing between you 
      and sending the signed IO today?"
    Gross margin: entity CEO confirms gross margin ≥35% before any IO is countersigned
    Authorization: entity CEO or designated authority countersigns all IOs
    
  HIVE — LOI Close (Acquisition):
    LOI mechanics:
      Non-binding letter of intent; signed by seller and Matt Mathison (always Matt Mathison; no exceptions)
      LOI triggers due diligence period (30-45 days) and exclusivity request
    Verbal agreement:
      "It sounds like we're in the right range — HIVE would like to submit a formal LOI. 
      Our managing partner would need to sign off before we send. Can we confirm the structure 
      [price / payment terms / exclusivity] so I can bring this to him for approval?"
    WTI check: if WTI <$58/bbl for 2+ consecutive weeks when close occurs → pause LOI; Matt Mathison decides
    Authorization: Matt Mathison approves every HIVE LOI before send; Matt Mathison signs all LOIs
    
STALL-BREAKER STRATEGIES (deal stuck after proposal):
  Stall > 7 days: send a "checking in" email with a new compelling event reference or market update
  Stall > 14 days: schedule a 15-min check-in call; ask direct question — "Where does this stand internally?"
  Stall > 21 days: assess champion strength; consider whether to involve Dr. Lewis in the next conversation
  Stall > 30 days: executive escalation — entity CEO reaches out to their economic buyer peer-to-peer
  Stall > 60 days: move to "Stalled" stage in GHL; close out or archive; revisit in 90 days
  
MULTI-STAKEHOLDER CLOSE (when multiple approvers exist):
  Identify the blocker: who is the deal stalled with — champion? economic buyer? legal?
  If champion: are they sharing the proposal internally? Do they need materials to sell up?
  If economic buyer: schedule a direct call between economic buyer + entity CEO / Dr. Lewis
  If legal: provide standard redlines guide; common legal asks and standard responses
  If procurement: understand their timeline and process; lock in a specific date for completion
```

## Output Format

```markdown
# Close Plan — [Prospect Name] | [Entity] | [Date]
**Deal size:** [$X] | **Target close date:** [Date] | **Compelling event:** [Event/date]
**Champion:** [Name/role/strength 1-5] | **Economic buyer:** [Name/role/access level]

---

## Close Readiness Status
| Checkpoint | Status |
|------------|--------|
| Economic buyer in close meeting | ✅ / ❌ |
| Decision criteria addressed | ✅ / ❌ |
| Competition assessed | ✅ / ❌ |
| Paper process understood | ✅ / ❌ |

**Close-ready?** [Yes / No — what's missing]

---

## Close Meeting Agenda
[Timing + structure for the close conversation]

---

## Stall-Breaker Plan (if applicable)
[Specific action + owner + date if deal is stalled]

---

## Contract Process
[Next steps from verbal yes to signed contract; authorization requirements]
```

## Output Contract
- A close meeting without the economic buyer is a presentation, not a close — the most common reason deals stall after a close meeting is that the champion attended but the economic buyer didn't; the champion leaves the meeting enthusiastic and then has to "sell internally" — which they rarely do as effectively as the rep would; Dr. Lewis coaches entity sales teams to require the economic buyer's presence before confirming any close meeting; "I'll share it with my CFO" is not a close meeting — it is a referral step; the rep's job is to get to the economic buyer directly, either in the close meeting or in a separate executive briefing
- Urgency must be real, not manufactured — fake urgency destroys trust; the compelling event from discovery is the rep's legitimate urgency source: "Your open enrollment is November 1 and you need 45 days for onboarding — that means contract signed by September 15"; "Your campaign needs to be live by October 1 to hit your holiday media plan — IO signed by September 22"; these are real dates with real consequences; "This deal ends Friday" (when it doesn't) is a trust-destroying tactic that Dr. Lewis coaches reps to never use; if there's no real compelling event, the honest response is "help me understand what would make this decision feel urgent for you"
- HITL required: HIVE LOI → Matt Mathison approves and signs (absolute); Allevio contract → entity CEO countersigns; Column6 IO → entity CEO or authorized signatory countersigns; stall >21 days → Dr. Lewis informed; executive escalation → entity CEO + Dr. Lewis; pricing concession at close → entity CEO (per concession authority matrix); HIVE LOI if WTI <$58/bbl → pause; Matt Mathison decides; contract legal redline beyond standard → entity CEO + Dr. Lewis review

## System Dependencies
- **Reads from:** Discovery notes and MEDDPICCC (GHL); proposal (SharePoint); champion assessment; competitive status; paper process notes; contract templates (Allevio MSO agreement; Column6 IO template; HIVE LOI template); WTI current price (HIVE deals)
- **Writes to:** GHL (stage to Closed Won/Lost; close date; final deal size; notes); contract repository (SharePoint → [Entity] → Sales → Contracts → [Customer]); Matt Mathison notification (HIVE LOI); entity CEO countersignature request; closed won onboarding handoff (sales-allevio-onboarding-handoff); win/loss record (revops-win-loss-tracker)
- **HITL Required:** HIVE LOI → Matt Mathison (absolute); Allevio contract → entity CEO countersigns; Column6 IO → entity CEO countersigns; stall >21 days → Dr. Lewis; executive escalation → entity CEO + Dr. Lewis; pricing concession → per authorization matrix; WTI trigger → HIVE LOI paused; lost deal debrief → entity CEO + Dr. Lewis within 5 business days

## Test Cases
1. **Golden path:** Allevio employer — HR Director champion confirmed economic buyer (CFO) will join close meeting. Close readiness: 6/6 ✅. Close meeting: opened with "Here's what we heard you say mattered most — cost reduction, provider continuity, and employee accessibility." Final Q&A: 2 questions (payroll integration for premium deductions; data security for census). Both answered directly. Trial close: "Does Allevio feel like the right fit?" CFO: "Yes — we want to move forward." Rep: "Great. To confirm: 140 employees, go-live target October 1 (45 days from today). I'll have the contract to you by Friday. Is it your standard process to route this through outside counsel, or does your team handle review internally?" CFO: "We'll review internally — 3 days." Contract drafted by entity CEO; sent Friday; signed Tuesday. Census collection begins; go-live October 1 on schedule.
2. **Edge case:** Deal stalled 25 days after proposal — champion responsive but CFO won't engage → Dr. Lewis: "The champion is willing but not able to move the CFO. At 25 days, this needs an executive move. Recommended: entity CEO reaches out directly to CFO — peer-to-peer conversation. Email from entity CEO: 'I understand you've been evaluating Allevio. I'd welcome 15 minutes directly with you to address any questions — [two date options]. I find these conversations are most useful when we can speak frankly about the financials.' If CFO agrees → joint call with entity CEO + CFO. If CFO declines → genuine signal that deal is not a priority; move to Stalled in GHL; follow up in 90 days."
3. **Adversarial:** Column6 entity CEO is being pressured by the agency to countersign an IO with a "we'll sort out the gross margin later" understanding (agency pushed on CPM and margin is 29%) → Dr. Lewis: "Do not countersign. 'Sort it out later' means Allevio takes a loss on this campaign with no mechanism for recovery. The IO is the contract — whatever is in the IO is the deal. If the CPM produces 29% margin and the entity CEO countersigns, that's a 29% margin campaign. Options: (1) Renegotiate CPM with the agency before signing; (2) Reduce volume to hit margin at current CPM; (3) Decline this IO and accept that we won't win this agency's first campaign at our margin floor. The gross margin standard exists because campaigns below 35% margin erode the business model. We don't sign our way into margin problems hoping to negotiate our way out."

## Audit Log
Close meeting records (preparation; outcome; GHL). Contract execution records (all signed contracts; entity CEO countersignature; SharePoint). HIVE LOI records (Matt Mathison approval + signature; WTI check at close). Executive escalation records. Stall management records (stage; actions taken; resolution). Win/loss records (within 5 days of close/loss). Pricing concession records at close (approval chain). Gross margin approval records (Column6 IOs below threshold).

## Deprecation
Close sequence reviewed quarterly against win/loss data. Contract templates reviewed when legal standards or entity offerings change. HIVE LOI process reviewed when acquisition strategy changes. Stall timeline thresholds reviewed when average sales cycle data changes. Authorization matrix reviewed when financial controls change.
