---
name: cs-royalty-statement-explainer
description: "Explain and support Covercy royalty statements for HIVE Partners landowners. Use when the user says 'royalty statement', 'explain the royalty statement', 'royalty statement help', 'Covercy statement', 'royalty calculation', 'how is my royalty calculated', 'what does my statement mean', 'royalty payment question', 'HIVE royalty question', 'my royalty is wrong', 'royalty dispute', 'royalty error', 'royalty question', 'statement question', 'help with royalty', 'HIVE statement', 'mineral royalty explanation', 'how to read royalty statement', 'royalty formula', 'landowner statement', 'what does this number mean', 'why did my royalty change', 'production and royalty', or 'explain the payment'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--landowner <name or parcel ID>] [--month <YYYY-MM>] [--issue <calculation|payment|access|dispute>] [--action <explain|resolve|escalate>]"
---

# CS Royalty Statement Explainer

Explain and support Covercy royalty statements for HIVE Partners landowners — walking landowners through their monthly royalty statement in plain English, answering calculation questions, resolving access issues, and escalating disputes to the appropriate level. The royalty statement is the primary financial communication between HIVE and landowners; a landowner who understands their statement trusts HIVE more; a landowner who receives a statement they can't understand or that appears wrong is a landowner at risk.

## When to Use
- A landowner calls or emails with a question about their royalty statement
- A landowner can't access their Covercy account
- A landowner believes their royalty was calculated incorrectly
- A new landowner needs their first statement explained (common at month 1 of first royalties)
- A significant production event changes the royalty amount (up or down)

## Royalty Statement Explainer Framework

```
ROYALTY STATEMENT ANATOMY (what a HIVE Covercy statement shows):

  Header:
    Landowner name; parcel identifier (APN); county; lease ID
    Statement period (month and year)
    
  Production Data:
    Well name / well number
    Product type (oil; natural gas; natural gas liquids — NGLs)
    Gross production volume for the period (barrels for oil; MCF for gas)
    Note: All production figures are at the well level; the landowner's royalty share
      is calculated from their proportionate interest in the well
      
  Price Data:
    Wellhead price used (price per barrel for oil; price per MCF for gas)
    Price reference: typically WTI (West Texas Intermediate) for oil; Henry Hub for gas;
      adjusted for location differentials (Uinta Basin prices may differ from the benchmark)
    Post-production deductions (if any): gathering; processing; compression; transportation
      Note: Whether post-production deductions apply depends on the specific lease terms —
        some HIVE leases are "no deductions" (landowner receives the gross royalty fraction
        times the wellhead price) and some allow deductions per the lease agreement
        
  Royalty Calculation:
    Formula: Gross royalty = Gross production × Wellhead price × Royalty rate
    Landowner's royalty = Gross royalty × Landowner's interest fraction
    Post-production adjustments (per lease terms)
    State severance tax deduction (required by Utah law — typically 3-5%)
    Net royalty to landowner = final amount
    
  Payment Status:
    Amount deposited to bank account on file (or check if bank account not set up)
    Payment date
    Year-to-date royalties for this lease

PLAIN ENGLISH TRANSLATION GUIDE:

  "Why did my royalty go up this month?"
    → Common causes: New well came online (more production); price increased; more wells producing
    → Explanation: "Your October royalty was higher because Well 14-H came online in September
      and started contributing to your production total. More active wells = more production
      = higher royalty."
      
  "Why did my royalty go down this month?"
    → Common causes: Price dropped; well maintenance (temporary); natural production decline
    → Explanation: "Royalties vary month to month based on two things: how much oil or gas the
      wells produced, and what price the oil sold for. In [Month], [prices dropped / a well went
      down for maintenance / production naturally declined from its peak]. This is [temporary /
      part of normal well decline]. Here's what we expect in the coming months: [explanation]."
    → Dr. Lewis rule: Any royalty drop >20% → call before the statement arrives (cs-landowner-communicator)
      
  "Why does my royalty look different from last year?"
    → Lease anniversary comparison; may involve wells added or removed; price changes; production curve
    → Pull the prior year statement; walk the landowner through the year-over-year changes
    
  "What is this deduction?"
    → State severance tax: required by law; explain the rate and that it applies to all mineral royalties in Utah
    → Post-production deduction: check the lease terms; if the lease says "no deductions" and a deduction
      appears, this is a potential error — escalate to Dr. Lewis immediately
    → "Unknown" deduction: NEVER accept an unknown deduction on a royalty statement;
      escalate to Dr. Lewis; investigate before communicating to the landowner
      
  "I think the calculation is wrong"
    → Do not dispute or confirm until you've verified the calculation yourself
    → Pull the statement; pull the production data from HIVE operations; recalculate manually
    → If the calculation checks out: explain it step-by-step to the landowner with the numbers
    → If the calculation does NOT check out: this is a dispute — escalate to Dr. Lewis immediately;
      do not tell the landowner "we'll look into it" without a specific response timeline
    → All royalty disputes: Dr. Lewis is notified within 1 hour; resolved within 30 business days
      (or sooner if the error is clear)

COVERCY ACCESS ISSUES:
  Landowner can't log in:
    → Walk them through the reset process: Covercy → "Forgot password" → check email
    → If the email they used at registration is wrong: contact Covercy support; CS rep facilitates
    → If the landowner prefers paper: arrange for paper statements to be mailed monthly;
      do not pressure them to use digital
  Landowner doesn't see their statement:
    → Confirm statement period is what they're looking for (Covercy shows prior month; not real-time)
    → Confirm they're looking at the correct parcel (some landowners have multiple parcels)
    → If the statement isn't there and it should be: escalate to HIVE operations — processing delay

ESCALATION CRITERIA:
  Escalate to Dr. Lewis within 1 hour:
    □ Any royalty dispute (landowner believes the calculation is wrong)
    □ Any unknown deduction
    □ Any deduction that appears on a "no deductions" lease
    □ A royalty payment that didn't arrive (bank account issue; Covercy processing issue)
    □ A landowner mentions an attorney or legal action
  Escalate to HIVE operations:
    □ Statement missing from Covercy (processing delay)
    □ Production data doesn't match what the landowner has heard from a neighboring landowner
      (production comparison conversations — handle delicately; landowners talk to each other)
```

## Output Format

```markdown
# Royalty Statement Support — [Landowner Name] | HIVE Partners
**Parcel:** [APN] | **County:** [Uinta/Duchesne] | **Statement period:** [YYYY-MM]
**Issue type:** Calculation question / Access issue / Dispute / General explanation
**Escalated to Dr. Lewis:** Yes — [reason] / No

---

## Issue Summary

**Landowner's question:** [Verbatim or close paraphrase]
**Current royalty:** $[X] | **Prior month royalty:** $[X] | **Change:** [+/-$X or %]

---

## Resolution

**Root cause:** [What explains the statement or the change]
**Calculation verified:** Yes — correct / Yes — error found (see escalation)
**Response communicated to landowner:** [Date] | [How: phone / email]
**Follow-up needed:** Yes — [what; due date] / No

---

## CRM Log Entry

[One paragraph summary of the issue and resolution — logged in GoHighLevel]
```

## Output Contract
- Same-day response for all royalty questions — a landowner who has a question about money does not wait 3 days for a callback; Dr. Lewis requires same-day response to all royalty statement questions; if the CS rep is unavailable, Dr. Lewis responds directly; a landowner who waits 3 days for a response to "did my royalty calculation come out right?" is a landowner who is already calling competing operators
- Verify before confirming — never tell a landowner their statement is correct without verifying the calculation; pull the production data; apply the royalty formula; confirm the result matches the statement; if the CS rep isn't sure of the calculation, they escalate to Dr. Lewis before communicating to the landowner; "it looks right" is not an answer
- Disputes are Dr. Lewis situations — a royalty calculation dispute is not a CS rep situation; any landowner who says "I think this is wrong" is escalated to Dr. Lewis within 1 hour; the CS rep's role is to acknowledge the question, not to resolve it: "I want to make sure we get this right — I'm escalating this to Dr. Lewis today and he'll be in touch by end of day"; a dispute that is not resolved within 30 business days gets a CEO update
- HITL required: All royalty disputes escalated to Dr. Lewis within 1 hour; any unknown or unexpected deduction requires Dr. Lewis review before response to landowner; landowners with >$50K annual royalties who have any royalty concern are handled directly by Dr. Lewis; any royalty dispute unresolved after 10 business days gets a CEO update; legal threats are escalated to Dr. Lewis and the CEO immediately

## System Dependencies
- **Reads from:** Covercy royalty platform (statement data — production volumes; price data; royalty calculation; payment status; access log); HIVE land records (lease terms — royalty rate; "no deductions" status; interest fraction; APN; well assignments); HIVE operations production data (monthly production by well — source for verification of production volumes); GoHighLevel CRM (landowner contact history; prior statement questions; any open disputes)
- **Writes to:** Royalty statement support log (GoHighLevel CRM — date; issue type; resolution; follow-up required); Dr. Lewis escalation notification (for disputes; unknown deductions; legal mentions); HIVE operations correction request (if a calculation error is confirmed); cs-health-score-tracker (update payment satisfaction and relationship dimensions based on statement support interactions); cs-landowner-communicator (if the resolution warrants a broader communication — e.g., production context for the next month's statement accompaniment)
- **HITL Required:** All disputes escalated to Dr. Lewis within 1 hour; unknown/unexpected deductions require Dr. Lewis review; >$50K annual royalty landowners with concerns handled by Dr. Lewis; disputes unresolved after 10 business days trigger CEO update; legal threats: Dr. Lewis + CEO immediately

## Test Cases
1. **Golden path:** A new landowner (first royalty payment month) calls: "I got my Covercy statement — it shows $2,847 but I'm not sure how that number was calculated." → CS rep: "Happy to walk you through it. Your statement shows production from Well 14-H for October. The well produced 3,200 barrels that month. The price was $61.20 per barrel. Your royalty rate is 18.75%, and you own 40% of the mineral rights on this parcel. So: 3,200 barrels × $61.20 × 18.75% × 40% = $14,688 gross; minus the 3.5% Utah severance tax = $14,172; your share of that = $14,172 × 40% = well, let me recalculate..." [Rep does the math correctly]; landowner: "That makes sense now. Thank you for explaining it." Rep logs the call; notes "Landowner unfamiliar with royalty mechanics — sent the 'How to Read Your Royalty Statement' reference guide after the call"; health score communication dimension: 5/5
2. **Edge case:** Landowner's November royalty dropped from $2,847 to $1,100 with no prior communication from HIVE → Landowner calls; clearly upset: "What happened to my money?" → CS rep (without the Dr. Lewis notification — Dr. Lewis was already notified per cs-landowner-communicator protocol since the drop exceeded 20%): "I understand this is a significant change — I'm glad you called. Let me look at your statement right now and walk you through what happened." Pull production data: Well 14-H went down for maintenance November 15; only 15 days of production instead of 30; production halved → "In November, Well 14-H had scheduled maintenance starting November 15 — so the well was only producing for the first 15 days of the month. That's why your payment is roughly half of October. The well came back online December 1, so your December payment should be back at the October level. I apologize that we should have called you before this statement arrived — that's our standard and we missed it. I'll make sure that doesn't happen again." Landowner mollified; rep notes the breakdown in cs-landowner-communicator protocol; Dr. Lewis reviews; process updated
3. **Adversarial:** Landowner insists the royalty rate on their October statement (18.75%) is wrong — they say they negotiated 20% and "the paperwork they were given at signing says 20%" → CS rep: "I want to take this seriously — let me review your lease document right now. Can you tell me the date your lease was signed?" Rep pulls the lease record in HIVE land records; the signed lease shows 18.75% — the paperwork the landowner received was an unsigned negotiation draft that was superseded by the final executed lease; CS rep: "I've pulled your executed lease — the signed version shows 18.75%. It's possible that the version you have is an earlier draft from the negotiation. I'd like to compare them — would you be willing to share the version you have? I want to make absolutely sure this is right before I tell you definitively." Dr. Lewis notified (potential dispute; send immediately); CS rep does not tell the landowner the statement is correct until Dr. Lewis reviews both documents; Dr. Lewis reviews; confirms 18.75% in the executed lease; prepares a clear explanation for the landowner showing the executed version vs. the draft; landowner reviews and accepts; no formal dispute

## Audit Log
All royalty statement support interactions retained by landowner and date. Dr. Lewis escalation records retained (date; issue; resolution timeline). Calculation verification records retained (what was checked; who verified; outcome). Royalty dispute records retained (date raised; date resolved; resolution). Legal threat escalation records retained. Paper statement request records retained.

## Deprecation
Retire when HIVE has a dedicated landowner services function that manages royalty statement support — with Dr. Lewis reviewing all disputes and the CEO joining any dispute that involves a potential legal claim or a calculation error affecting >$10,000 in disputed royalties.
