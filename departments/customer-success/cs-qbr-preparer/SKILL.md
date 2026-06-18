---
name: cs-qbr-preparer
description: "Prepare quarterly business reviews for MBL portfolio company CS accounts. Use when the user says 'QBR', 'quarterly business review', 'QBR prep', 'prepare a QBR', 'QBR agenda', 'QBR template', 'business review', 'quarterly review', 'account review', 'quarterly account review', 'customer review', 'quarterly customer review', 'build a QBR', 'QBR deck', 'quarterly meeting', 'quarterly check-in', 'prepare for the quarterly', 'what should the QBR cover', 'QBR framework', 'QBR outline', 'quarterly report', or 'customer quarterly report'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--quarter <Q1|Q2|Q3|Q4 YYYY>] [--action <prepare|review|present>]"
---

# CS QBR Preparer

Prepare quarterly business reviews for MBL portfolio company CS accounts — building a structured, data-driven review that demonstrates the value delivered in the quarter, surfaces any issues honestly, and advances the customer relationship toward renewal and expansion. The QBR is the CS team's most important recurring touchpoint; a strong QBR builds trust, documents value, and creates a natural forum for expansion conversations; a weak QBR that reviews metrics without meaning wastes the customer's time and signals that we don't understand their business.

## When to Use
- 2 weeks before any scheduled QBR (prep window)
- At the start of each quarter (build the QBR calendar for the next 12 weeks)
- Post-QBR documentation (what was discussed; what was agreed; action items)

## QBR Framework

```
QBR PREPARATION (2 weeks before the meeting):

  Week -2: Data Collection
    □ Pull the quarter's performance data (entity-specific — see below)
    □ Compare to success plan targets (cs-success-plan-builder)
    □ Update the health score (cs-health-score-tracker — is this account Green/Yellow/Red going into the QBR?)
    □ Check the churn risk score (cs-churn-predictor — any signals to address proactively?)
    □ Review action items from the last QBR — are they complete?
    □ Identify expansion opportunities (cs-expansion-spotter — should the QBR include an expansion conversation?)
    
  Week -1: QBR Deck and Agenda
    □ Build the QBR document (see Output Format — 5-section structure)
    □ Dr. Lewis reviews all QBR decks for >$100K ACV before they are presented
    □ Practice the "hard conversation" if the quarter was below target:
        Own it; explain why; present the correction plan; ask what they need from us
    □ Pre-send the agenda to the customer 3-5 business days before the meeting
    □ Confirm the meeting attendees: who is the customer bringing? Are the right decision-makers in the room?
    □ For renewal-track accounts: coordinate with cs-renewal-coordinator — is a renewal ask appropriate this QBR?

QBR AGENDA STRUCTURE (45-60 minutes):

  1. RELATIONSHIP CHECKPOINT (5-10 min):
     "How is the relationship going — from your perspective?"
     "Is there anything you'd like to cover today that isn't on the agenda?"
     Purpose: Surface any issues early; establish a two-way conversation; don't just present
     
  2. PERFORMANCE REVIEW — LAST QUARTER (15-20 min):
     Entity-specific data (see below)
     Format: "Here's what we committed to; here's what we delivered; here's the context"
     If below target: own it; give the cause; give the plan
     If at/above target: quantify the value in dollars and business outcomes, not just metrics
     
  3. ACTION ITEMS REVIEW — FROM LAST QBR (5 min):
     What did we say we'd do? Did we do it?
     What did they say they'd do? Did they do it?
     Close the loop — don't gloss over incomplete items
     
  4. LOOKING AHEAD — NEXT QUARTER (10-15 min):
     What's coming up for the customer in Q2? (open enrollment? new campaign? operational change?)
     What are we planning to do for them in Q2?
     Any changes to goals or priorities we should adjust the success plan for?
     
  5. ACTION ITEMS + CLOSE (5-10 min):
     Specific next steps: who does what by when
     Renewal discussion (if in the renewal window): "We're coming up on your renewal in [N] months..."
     Expansion discussion (if applicable): "Based on Q1 performance, I want to explore..."
     "Is there anything else we should have covered today?"

ENTITY-SPECIFIC PERFORMANCE DATA:

  ALLEVIO — Employer Group QBR Data:
    □ Active member count: beginning of quarter vs. end; trend explanation
    □ Claim ratio: monthly actuals vs. target; year-to-date trend; comparison to industry benchmark
    □ PMPM cost: actual vs. prior period; annualized savings vs. prior carrier (if Year 1)
    □ Clinical care utilization: how many members engaged with clinical care services this quarter?
    □ Top 3 claim categories: where is the cost coming from? (claim category breakdown, no PHI)
    □ Administrative metrics: were all reports delivered on time? Any process issues?
    □ Member satisfaction: any feedback from employees? (HR Director's informal sense)
    
  COLUMN6 — Agency/Brand QBR Data:
    □ IOs run this quarter: campaign names; dates; spend; impression count
    □ VCR (Video Completion Rate): by campaign; vs. benchmark; trend
    □ CPM performance: actual vs. contracted; explanation if above
    □ Pacing: did all IOs deliver in full? Any underdelivery? (with explanation and make-good plan)
    □ Attribution results (if applicable): conversions attributed; CPA vs. benchmark
    □ Creative performance: which creative assets performed best? Recommendations for next quarter
    □ Spend trajectory: quarterly spend this year vs. last year; Q2 projection
    
  HIVE — Landowner Lease QBR:
    Note: Most HIVE relationships don't have formal QBRs — use a "quarterly update call" framing
    □ Production activity: what development activity occurred on or near the lease this quarter?
    □ Royalty payments: monthly payments received; total for the quarter; YTD
    □ Covercy access: is the landowner using the portal to view their statements?
    □ Lease status: any upcoming decisions? Any title issues that need to be flagged?
    □ Lease term: how many months/years remaining? Beginning to think about renewal?

QBR CADENCE:
  Priority A accounts (>$150K ACV or strategic): Quarterly QBR — no exceptions
  Priority B accounts ($50-150K ACV): Quarterly QBR — may be abbreviated (45 min vs. 60 min)
  Priority C accounts (<$50K ACV): Semi-annual business review (every 6 months)
  Priority D accounts: Annual review only (or promote to C if they begin expanding)
```

## Output Format

```markdown
# QBR — [Account Name] | [Entity] | [Quarter YYYY]
**QBR date:** [Date] | **Attendees:** [Customer names + roles] + [Dr. Lewis / Rep]
**ACV:** $[X]K | **Health score:** [X/25] 🟢/🟡/🔴 | **Churn risk:** Low/Medium/High

---

## Section 1: Performance — Q[X] Actuals

| Metric | Success plan target | Q[X] actual | YTD actual | Status |
|--------|-------------------|------------|-----------|--------|
| Claim ratio | <80% | [X]% | [X]% | ✅ / ⚠️ / ❌ |
| PMPM savings | $[X]/member | $[X] | $[X] annualized | ✅ / ⚠️ / ❌ |
| Member count | Stable/growing | [N] (+/-[X]) | — | ✅ / ⚠️ / ❌ |

**Q[X] Summary:** [2-3 sentences: what did we accomplish? what fell short and why?]

---

## Section 2: Action Items from Last QBR

| Item | Owner | Status |
|------|-------|--------|
| [Action 1] | [Name] | ✅ Done / ❌ Not done / ⏳ In progress |

---

## Section 3: Looking Ahead — Q[X+1] Plan

**Customer's Q[X+1] priorities:** [What they told us matters to them next quarter]
**Our Q[X+1] commitments:** [What we are specifically going to do]

---

## Section 4: Action Items + Next Steps

| Action | Owner | Due date |
|--------|-------|---------|
| [Action] | [Rep] | [Date] |
| [Renewal conversation] | Dr. Lewis | [Date] |
```

## Output Contract
- Data before opinions — the QBR opens with data, not a narrative; the customer should see the numbers before hearing any interpretation; a metric that is below target is worse to discover in the meeting than in the pre-read; Dr. Lewis sends the QBR agenda and summary data to the customer 3 business days before the meeting as a pre-read; "no surprises" is the QBR standard
- Own misses, don't explain them away — a quarter where a metric was missed is an opportunity to build trust through accountability; "we were below our VCR target this quarter — here's exactly why and here's what we're doing" is stronger than "there were some campaign delivery headwinds in the market"; Dr. Lewis coaches CS reps that owning a miss with a clear plan earns more trust than explaining it away
- Every QBR ends with written action items — verbal agreements made in QBRs that aren't documented don't get done; Dr. Lewis requires a written action item summary emailed to the customer within 24 hours of every QBR; the action items become the first agenda item at the next QBR; this creates continuity and accountability across quarters
- HITL required: Dr. Lewis reviews QBR decks for >$100K ACV accounts before they are presented; Dr. Lewis joins QBRs for >$150K ACV accounts; CEO joins QBRs for Priority A accounts at renewal; expansion proposals surfaced in a QBR require Dr. Lewis approval before they are presented; any pricing discussion in a QBR requires Dr. Lewis to be on the call or have pre-approved the response

## System Dependencies
- **Reads from:** Success plan (cs-success-plan-builder — targets vs. actuals framework); health score (cs-health-score-tracker — current status and trend); churn risk score (cs-churn-predictor — any signals to address?); expansion opportunities (cs-expansion-spotter — is expansion appropriate this QBR?); AdvancedMD claim ratio and member count (Allevio); Column6 campaign dashboard (VCR; CPM; IO delivery); Covercy royalty records (HIVE); QuickBooks (payment status); last QBR action items (SharePoint/CustomerSuccess/<Company>/QBRs/ — previous QBR notes)
- **Writes to:** QBR document (SharePoint/CustomerSuccess/<Company>/QBRs/[Account]_Q[X]_[YYYY]_QBR.pdf); action item follow-up email (sent to customer within 24 hours of QBR); success plan updates (cs-success-plan-builder — if goals or targets are adjusted); health score update (cs-health-score-tracker — post-QBR status); CRM activity record (GoHighLevel — QBR date; attendees; outcome; next steps); cs-kpi-dashboard (QBR completion rate; action item closure rate; NPS from QBR)
- **HITL Required:** Dr. Lewis reviews QBR materials for >$100K ACV before presentation; Dr. Lewis joins QBRs for >$150K ACV; CEO joins QBRs for Priority A at renewal; expansion proposals require Dr. Lewis approval; pricing discussions require Dr. Lewis or pre-approval; action items emailed within 24 hours

## Test Cases
1. **Golden path:** Q2 Allevio QBR — 135-member group; Dr. Lewis reviewing prep: claim ratio 77.4% (target <80% ✅); PMPM savings $62/member = $100.5K annualized savings ✅; member count +3 from Q1 (stable/growing ✅); QBR deck built; pre-read sent to HR Director Monday; QBR Thursday — Dr. Lewis opens: "How's the relationship going from your side?" HR Director: "We're really happy — especially the cost data." Dr. Lewis: "Let me show you the Q2 numbers..." Presents data; HR Director is delighted; expansion conversation: "We have a second location opening in October — could we cover them under the same plan?" Dr. Lewis: "Absolutely — let me get the enrollment details from you and we'll price it today." Action items sent Friday; expansion priced and proposed next week
2. **Edge case:** Q3 Column6 QBR — the previous IO had a VCR of 74% (below the 80% benchmark); this is the first miss in 6 quarters → Dr. Lewis to CS rep: "Don't hide from this. The agency knows — they saw the campaign data. The QBR must open with it: 'I want to address the Q3 campaign VCR directly before we get into the rest of the data. It came in at 74% against our 80% benchmark — here's exactly what happened and here's what we've already changed.' Have the technical explanation ready and the fix already implemented — not 'we're looking into it.' If we've already made the change and the Q4 campaigns are set up correctly, they'll forgive the miss. If we come in explaining why it happened with no fix, it's a trust issue." QBR goes well; agency appreciates the proactive ownership; Q4 IO booked
3. **Adversarial:** A CS rep wants to skip the Q2 QBR for a $65K ACV account because "they're too busy and said to just email the report" → Dr. Lewis: "Emailing a report is not a QBR. A QBR is a live conversation where we hear what's changing in their business — something we can't get from an email report. The customer saying 'just email it' usually means either (a) they had a bad QBR experience before that wasn't worth their time, or (b) they're not that engaged with us right now (which is itself a churn signal). Here's the framing: 'I totally understand you're busy — could we do a 20-minute call instead of the full hour? I have three things I want to cover and I want to make sure we're set up for a strong Q3.' 20 minutes almost always gets a yes. Book it." QBR held (25 minutes); rep discovers the customer is considering reducing their spend due to a budget reset; Dr. Lewis and CEO informed; retention plan developed; full spend maintained

## Audit Log
All QBR documents retained by account, entity, and quarter. QBR attendance records retained. Action item follow-up emails retained. Success plan updates triggered by QBR discussions retained. Expansion proposals surfaced during QBRs retained. Post-QBR health score updates retained.

## Deprecation
Retire when each portfolio company has a CS platform that generates QBR templates from live system data — with Dr. Lewis reviewing the QBR template annually and the CEO participating in all Priority A QBRs.
