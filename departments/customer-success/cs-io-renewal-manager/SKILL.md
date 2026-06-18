---
name: cs-io-renewal-manager
description: "Manage IO renewal and rebooking for Column6 agency customers. Use when the user says 'IO renewal', 'rebook the IO', 'IO rebooking', 'renew an insertion order', 'Column6 IO renewal', 'next IO', 'book the next campaign', 'follow-on IO', 'reorder an IO', 'campaign rebooking', 'IO follow-up', 'renew the campaign', 'next campaign', 'book a new campaign', 'IO extension', 'extend the IO', 'IO renewal outreach', 'rebooking conversation', 'next brief', 'agency rebooking', 'book the next IO', 'Column6 renewal', 'rebooking', or 'IO booking'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--account <agency name>] [--io <prior IO number or name>] [--action <plan|outreach|close|report>]"
---

# CS IO Renewal Manager

Manage IO renewal and rebooking for Column6 agency customers — proactively starting the next IO conversation before the current flight ends, using the current campaign's performance data to anchor the rebooking pitch, and ensuring that the gap between IOs is as short as possible. For Column6, renewals are not annual events — they are every IO; the CS team should always be working toward the next brief while the current campaign is running.

## When to Use
- 2 weeks before the current IO flight ends (start the rebooking conversation)
- The current IO wrap report is delivered (use results to launch the next brief discussion)
- An agency has been in an IO gap for 30+ days (trigger a proactive outreach)
- Annual account planning (build the full-year IO forecast for Priority A agencies)

## IO Renewal Framework

```
IO REBOOKING TIMELINE (for all active IOs):

  Week -2 before flight end — Rebooking conversation starts:
    CS rep initiates: "We're 2 weeks out from the end of your current flight.
      I wanted to get ahead of Q[next] planning — do you have any briefs coming up
      that we should be thinking about? Given the VCR performance on this IO,
      I have some ideas for Q[next] that I'd love to share."
    Don't wait for the wrap report to start the conversation —
      agencies who aren't asked about the next IO will give it to the first vendor who asks
      
  Day 0 — IO flight end — Wrap report delivered (cs-campaign-performance-reporter):
    Deliver the wrap report within 48 hours of flight end
    The wrap report email ends with: "Based on these results, I have 2-3 ideas for your
      next campaign — I'd love to walk you through them. Can we schedule 20 minutes this week?"
    If VCR was strong (≥92%): "We outperformed on completion rate — perfect setup for
      a brand safety story for Q[next]. When can we talk?"
    If VCR was below target: Acknowledge it; explain the fix; anchor on what worked
    
  Days 1-14 post-flight — Rebooking outreach:
    If no response to wrap report email in 3 business days: follow-up call
    If no response after follow-up call: escalate to Dr. Lewis
    
  Days 15-30 post-flight — IO gap management:
    If IO gap extends to 30 days with no confirmed next IO:
      cs-churn-predictor behavioral signal: "IO gap 30+ days" (+15 churn risk points for Column6)
      Dr. Lewis notified; targeted outreach with a specific campaign concept
      
  Days 30-60+ post-flight — IO gap escalation:
    IO gap >60 days for a Priority A agency: cs-at-risk-responder triggered
    IO gap >60 days for Priority B: Dr. Lewis personal outreach

REBOOKING CONVERSATION STRUCTURE:

  Step 1 — Performance anchor (what just happened):
    "Your Q3 VCR was 94% — best-in-class. Your CPM was $23 vs. the $38 market rate for your category.
     I want to build on that momentum in Q4."
    
  Step 2 — Next brief discovery (what's coming):
    "What brands are you pitching for Q4? What categories are you seeing the most activity in?"
    Understand the agency's pipeline — which brands are planning media buys in Q4?
    Column6 opportunity: CTV is strongest in Q4 (holidays; sports; political) — lean into timing
    
  Step 3 — Campaign concept (how Column6 fits):
    Based on the brief discovery, propose a specific campaign concept:
    "For the retail brand you mentioned — I'm thinking a November 1 – December 15 flight;
     30-second connected TV; household targeting with a Q4 shopper behavioral overlay;
     3M impressions at $23 CPM. I can have a full proposal to you by [date]."
    Specific is better than general — agencies want to see you've thought about their problem
    
  Step 4 — Proposal → IO:
    If the agency is interested: send the formal proposal within 24 hours of the conversation
    Proposal includes: flight dates; targeting; impressions; CPM; creative specs; attribution option
    Follow up on the proposal within 3 business days if no response
    
  Step 5 — Signed IO:
    Process signed IO within 24 hours; activate the campaign within 5 business days (cs-onboarding-coordinator Column6 SLA)

AGENCY ANNUAL PLANNING (Priority A accounts):
  In Q4 (October-November): request an annual planning meeting with Priority A agencies
    "I'd love to sit down and look at your Q1-Q4 media plan for next year together —
     understanding your full calendar helps us hold the right inventory for you and
     makes sure we're building the right proposals before your RFP season."
  Annual planning meeting output: Full-year IO forecast for the agency
    (not a commitment — a planning document used to prioritize Column6 inventory)
  Update the renewal forecast (cs-renewal-forecast) with the annual IO forecast
```

## Output Format

```markdown
# IO Renewal Plan — [Agency Name] × Column6
**Prior IO:** [IO#] | **Flight:** [Start] – [End] | **Amount:** $[X]K
**Rebooking status:** Active discussion / Proposal sent / IO signed / IO gap (Day [N])

---

## Rebooking Timeline

| Date | Action | Outcome |
|------|--------|---------|
| [Date -14] | Pre-flight end rebooking conversation | [Response] |
| [Date 0] | Wrap report delivered | [Outcome] |
| [Date +3] | Follow-up if no response | |

---

## Next IO Concept

**Target brand:** [Brand] | **Category:** [Category]
**Proposed flight:** [Date] – [Date] | **Impressions:** [N]M | **CPM:** $[X] | **Total:** $[X]K
**Targeting:** [CTV; household; behavioral overlay]
**Proposal status:** Draft / Sent / Approved / Signed
```

## Output Contract
- Rebooking starts before the current IO ends — a Column6 CSM who waits for the wrap report to start talking about the next IO is a CSM who is always behind; the agency's next brief is being written while the current IO is still running; Dr. Lewis requires that the next IO conversation starts 2 weeks before the current flight ends — not after; an IO gap that starts with a proactive conversation is almost always shorter than one that starts with a wrap report
- Specific proposals close faster than open-ended discussions — an agency who is asked "would you be interested in another Column6 campaign?" will say "let me think about it"; an agency who is shown "here's a specific 3M-impression CTV proposal for your Q4 retail client at $23 CPM with a November 1 start date" will say "yes, send the IO" or "let me tweak the targeting"; specific proposals advance the conversation; Dr. Lewis trains the CS team to have a specific concept ready before the rebooking conversation begins
- IO gaps are the Column6 equivalent of Yellow health — a Column6 account with no active or planned IO is a Column6 account that may not renew; Dr. Lewis tracks IO booking velocity for every Column6 Priority A and B account; an IO gap of 30+ days triggers an immediate review; an IO gap of 60+ days triggers a Dr. Lewis personal call; the goal is to keep booking velocity positive — there should almost always be something in the pipeline
- HITL required: Dr. Lewis reviews the annual IO forecast for all Priority A Column6 agencies; any IO gap >30 days for Priority A or >60 days for Priority B triggers Dr. Lewis notification; proposals for IOs >$150K require Dr. Lewis review before sending; Dr. Lewis joins the annual planning meeting for agencies with annual IO commitment >$300K

## System Dependencies
- **Reads from:** Column6 campaign dashboard (flight end dates; active IO status; booking history); cs-campaign-performance-reporter (wrap report data — the anchor for the rebooking conversation); cs-health-score-tracker (booking activity dimension — IO booking velocity); cs-renewal-forecast (Column6 renewal status for each agency); cs-churn-predictor (IO gap churn risk signals)
- **Writes to:** Next IO proposal (SharePoint/CustomerSuccess/Column6/Proposals/[Agency]/[Date]_[Brand]_Proposal.pdf); GoHighLevel CRM (IO renewal status; outreach log; rebooking conversation notes); cs-renewal-forecast (updated with confirmed or at-risk next IO status); cs-kpi-dashboard (Column6 booking velocity; IO pipeline value); Dr. Lewis notification (for IO gaps >30 days Priority A; >60 days Priority B)
- **HITL Required:** Dr. Lewis reviews annual IO forecasts for Priority A agencies; IO gaps >30/60 days trigger Dr. Lewis notification; proposals >$150K require Dr. Lewis review; Dr. Lewis joins annual planning meeting for >$300K annual commitment agencies

## Test Cases
1. **Golden path:** Column6 Priority A agency — Q3 IO ending September 30 (VCR 94%; $85K); CS rep starts rebooking conversation September 15 (2 weeks before flight end): "Your Q3 results are tracking really well — 94% VCR and we're on pace to over-deliver on impressions. I'm thinking about Q4 already — do you have any briefs coming up for the holiday season? I have some inventory concepts for your retail clients that I'd love to share." Media buyer: "Yes, actually — we have a big holiday brief from [Brand] dropping next week." CS rep: "Perfect timing. Once you have the brief, send it over and I'll have a Column6 proposal back to you within 24 hours." Brief received October 2; proposal sent October 3; IO signed October 7 (flight November 1 – December 31; $110K); IO gap: 1 day; booking velocity: 2 IOs in Q4
2. **Edge case:** An IO gap has reached 45 days for a Priority B agency — the prior IO underdelivered slightly (94% delivery vs. 100% contracted); the CS rep hasn't followed up since the wrap report → Dr. Lewis: "45 days is past the 30-day notification threshold. The wrap report probably felt awkward to follow up on because of the delivery miss, but that's exactly when you need to follow up — own it. I'm calling the media buyer today: 'Hi [Name], I've been thinking about our Q3 campaign. We fell slightly short on delivery — I want to make sure we've addressed that and that you're satisfied with how we handled it. And I have some ideas for Q4 that I'd love to share.' We're not hiding from the miss. We're showing up with it and moving forward." Call made by Dr. Lewis; delivery miss acknowledged; make-good offered on next IO; agency books Q4 IO; IO gap closed at 48 days; within acceptable range for Priority B
3. **Adversarial:** A CS rep waits until the IO has ended and the wrap report has been delivered before starting the rebooking conversation (standard procedure at their prior job) → Dr. Lewis: "At Column6, by the time the wrap report is delivered, the agency has already had conversations with 2-3 other platforms about Q4. The rebooking window opened 2 weeks ago. Starting the conversation after the wrap report is reactive, not proactive — we're responding to their RFP instead of shaping their thinking before the RFP exists. Going forward: the rebooking conversation starts 2 weeks before flight end; the wrap report delivery email ends with a specific Q4 concept; the proposal is ready within 24 hours of a brief. The wrap report is confirmation of value, not the start of the sales conversation."

## Audit Log
All IO renewal plans retained by agency and IO number. Rebooking conversation records retained. Proposal documents retained (date sent; response; outcome). IO gap notification records retained. Annual planning meeting notes retained. Dr. Lewis review records for >$150K proposals retained.

## Deprecation
Retire when Column6 has a dedicated sales operations function that manages IO pipeline and renewal forecasting — with Dr. Lewis reviewing the annual IO forecast for Priority A agencies and the CEO approving any pricing flexibility or make-good commitments in rebooking conversations.
