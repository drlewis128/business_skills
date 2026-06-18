---
name: cs-at-risk-responder
description: "Respond to at-risk customer accounts for MBL portfolio companies. Use when the user says 'at risk account', 'at-risk customer', 'account at risk', 'save the account', 'customer save', 'save a customer', 'retention save', 'save plan', 'account save plan', 'customer is at risk', 'customer might leave', 'high churn risk', 'churn intervention', 'intervention plan', 'save strategy', 'account recovery plan', 'customer recovery', 'turn around the account', 'account turnaround', 'rescue the relationship', 'customer rescue', 'fix a struggling account', 'customer in trouble', 'save this account', 'Red account', 'Red health account', 'account went Red', or 'critical account intervention'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--risk-level <High|Critical>] [--action <plan|execute|review>]"
---

# CS At-Risk Responder

Respond to at-risk customer accounts for MBL portfolio companies — building and executing a structured save plan that addresses the root cause of the risk, elevates the response to the appropriate level, and demonstrates to the customer that we are committed to their success. At-risk response is one of the highest-stakes CS activities; a successful save converts a Detractor into an advocate; a failed save results in churn and often a negative reference.

## When to Use
- An account reaches Red health status (cs-health-score-tracker — score below threshold)
- A churn risk score exceeds 50 (cs-churn-predictor — High or Critical)
- A customer explicitly signals they may not renew
- A P1 escalation puts the relationship at risk

## At-Risk Response Framework

```
RISK CLASSIFICATION BEFORE RESPONSE:

  Is this at-risk? Ask three questions:
    1. What specifically is wrong? (signal; not just "they seem unhappy")
    2. What is the customer's ARR? (determines the response level)
    3. Is the cause fixable? (our failure vs. something outside our control)
    
  If the cause is fixable: build the save plan (see below)
  If the cause is NOT fixable (acquisition; business closure; force majeure):
    Conduct an offboarding gracefully; do not attempt to save an unsaveable account
    Focus on: leaving the relationship in good standing for a future opportunity
    Document the reason carefully in CRM (involuntary churn)

SAVE PLAN STRUCTURE:

  Step 1 — Root Cause Assessment (within 24 hours of Red flag):
    What is the specific cause of the at-risk status?
    Categorize:
      □ Performance failure (we didn't deliver what we promised)
      □ Champion/relationship breakdown (person who bought us is gone or disengaged)
      □ Financial pressure (customer is under budget constraints)
      □ Competitive threat (another vendor is in an active evaluation)
      □ Expectation mismatch (they expected something we didn't promise — or something we did promise but haven't delivered)
    The root cause determines the save strategy; guessing without diagnosis leads to the wrong response
    
  Step 2 — Response Level (within 24 hours):
    ACV <$50K: CS rep leads the save; Dr. Lewis coaches; CEO informed if risk is critical
    ACV $50-150K: Dr. Lewis leads the save call; CEO aware and briefed
    ACV >$150K: CEO leads the save call; Dr. Lewis prepares the briefing and the talking points;
      Matt Mathison informed if risk is Critical (churn risk score ≥75)
      
  Step 3 — Save Call (within 48-72 hours of Root Cause Assessment):
    The save call is not a normal check-in — it is a "I'm committed to making this right" call
    Call opens with:
      "I've been thinking about our relationship and I want to be direct with you.
       I know things haven't been where they should be. I want to understand what
       we'd need to do to earn your continued partnership — and I want to be honest
       about what we can commit to."
    Listen first — the first 10 minutes of the save call is the customer talking; not us
    After listening: "Based on what you've shared, here's my commitment to you..." (specific; not vague)
    Do NOT offer pricing concessions in the save call without CEO approval (see HITL)
    End with: "I'd like to check in with you in two weeks to see if we're moving in the right direction.
      Would that work?" (keeps the conversation open and creates a next touchpoint)
      
  Step 4 — Save Actions (within 5-10 business days of save call):
    Deliver on the commitments made in the save call
    Common save actions by entity:
      Allevio: Escalate a specific member care issue; deliver a personalized claim ratio analysis;
        schedule a CEO-to-CEO call to rebuild executive relationship; implement a clinical outreach program
        for the high-cost members; introduce a new contact (if champion changed)
      Column6: Fix the campaign performance issue (targeting reset; publisher blocklist update; creative change);
        deliver a make-good (bonus impressions on the next IO); escalate to Column6 leadership
      HIVE: Schedule a development update call; resolve the payment or royalty dispute; provide a lease analysis
        showing the economic value of the current terms vs. going with a competitor
    Log every action in CRM with the date, what was done, and the customer's response
    
  Step 5 — Follow-Up Check-In (2 weeks after save call):
    Did we do what we said? Has anything changed in the customer's situation?
    Opening: "I wanted to follow up on our conversation 2 weeks ago.
      I committed to [specific actions]. Here's where we stand: [update].
      Has your perspective shifted at all? I want to make sure we're heading in the right direction."
    If positive response: move account to Yellow (from Red); continue elevated monitoring
    If no change: escalate to CEO immediately; determine whether to make a final offer or prepare for churn
    
  Step 6 — Close the Loop:
    Successful save: Document what worked; update health score; acknowledge the team's response
    Churn: Document the full timeline; conduct post-churn analysis (cs-churn-predictor);
      ensure offboarding is professional; thank the customer for the relationship

ENTITY-SPECIFIC SAVE LEVERS:

  ALLEVIO at-risk save levers:
    Champion change: Introduce Dr. Lewis and the CEO to the new contact personally;
      build the new relationship from scratch; deliver a value report from Year 1 as context
    Claim ratio issue: Schedule a clinical deep-dive — present the specific members driving
      the ratio; the clinical intervention plan for each; the 6-month trajectory if the plan is followed
    HR Director frustration: Commit to a dedicated response protocol — any email from the HR Director
      receives a response within 4 hours (not 24); make this a personal commitment from Dr. Lewis
    Financial pressure: Explore whether a member count reduction (smaller group) reduces cost;
      whether a payment plan is available; whether a multi-year commitment at the current rate reduces
      per-year exposure; CEO approves any pricing flexibility
      
  COLUMN6 at-risk save levers:
    Performance issue: Provide a root cause analysis and a performance guarantee on the next IO:
      "If we don't hit ≥90% VCR on the next IO, we will run a make-good campaign at no charge"
      (CEO approval required for make-good commitment)
    Media buyer changed: Dr. Lewis calls the new buyer directly; runs an account intro meeting;
      presents the performance history and the Q4 plan
    Competitive threat: Pull together a side-by-side performance comparison (Column6 VCR/CPM vs.
      industry benchmarks); make the case for Column6's brand safety and measurement capabilities
    IO gap: Reach out proactively with a specific campaign concept for the next quarter —
      don't wait for them to come to us; show we're thinking about their campaigns
      
  HIVE at-risk save levers:
    Competing operator: Schedule a lease comparison meeting — walk the landowner through
      the economic terms side-by-side; present HIVE's development timeline and royalty projections
    Communication gap: Establish a monthly update protocol — a dedicated HIVE contact sends
      a one-page development update every month, no exceptions
    Royalty dispute: Resolve immediately — Dr. Lewis and the CEO brief immediately; legal counsel
      if needed; no contested royalty goes unresolved for more than 30 days
```

## Output Format

```markdown
# At-Risk Response Plan — [Account Name] | [Entity]
**Risk level:** High / Critical | **Churn risk score:** [X]/100 | **ARR at risk:** $[X]K
**Root cause:** [One of: Performance failure / Champion change / Financial pressure / Competitive threat / Expectation mismatch]
**Response lead:** Dr. Lewis / CEO | **CEO notified:** Yes — [Date]

---

## Root Cause Assessment

**What specifically is wrong:** [Factual description — data, not interpretation]
**When did the signal first appear:** [Date]
**Is this fixable:** Yes / No / Partially
**Customer's ARR:** $[X]K → Response level: Dr. Lewis / CEO

---

## Save Plan

| Step | Action | Owner | Due date | Status |
|------|--------|-------|---------|--------|
| Save call | Dr. Lewis / CEO calls customer directly | Dr. Lewis / CEO | [Date +48hr] | ⏳ |
| [Specific action 1] | [E.g., Deliver personalized claim analysis] | Dr. Lewis | [Date] | ⏳ |
| [Specific action 2] | | | | |
| Follow-up check-in | 2-week check-in call | Dr. Lewis | [Date +2wk] | ⏳ |

---

## Commitments Made in Save Call

[Specific commitments made to the customer — date; owner; what was promised]

---

## Outcome

**Save call outcome:** Positive / Neutral / Negative
**Health score change:** [Before] → [After]
**Churn decision:** Saved / Churned / Decision pending
**Post-churn analysis initiated:** Yes / N/A
```

## Output Contract
- Root cause first, save action second — the instinct in a crisis is to act; a CS rep who calls the at-risk customer to "check in" without a diagnosis is wasting the call; Dr. Lewis requires a written root cause assessment before the save call is made; a save call without a root cause is an apology call — it feels caring but doesn't solve anything; the customer who is at risk needs to see that we understand what went wrong, not just that we care
- The save call is not a negotiation call — opening a save call with a price offer or a concession signals panic; it also trains the customer to threaten churn whenever they want a discount; Dr. Lewis explicitly prohibits the CS team from leading with pricing flexibility in a save call; the save call is about understanding, commitment, and specific action; pricing flexibility may come later, approved by the CEO, after the relationship issue has been addressed
- Escalation level matches ARR — a $30K account at risk gets a CS rep-led save call; a $180K account at risk gets a CEO-led save call; a CS team that runs every save at the same level either underinvests in large accounts or burns executive credibility on small accounts; Dr. Lewis calibrates the response level to the ARR at risk
- HITL required: Dr. Lewis is notified within 24 hours of any account reaching Red health; CEO is notified immediately for ACV >$50K at-risk accounts; Matt Mathison is notified for Critical risk (churn score ≥75) on accounts >$150K ACV; any pricing concession or make-good commitment requires CEO authorization before being offered to the customer; Dr. Lewis reviews the save plan before any save action is taken; post-churn analysis for >$100K ACV churns requires CEO review

## System Dependencies
- **Reads from:** cs-health-score-tracker (Red account flag; health score and primary signal); cs-churn-predictor (churn risk score; signal categories); cs-escalation-manager (any open escalations contributing to the risk); cs-success-plan-builder (what were the customer's goals? — what specifically did we fall short on?); GoHighLevel CRM (full account history; contact log; complaint history); QuickBooks (payment status; ACV for response level determination)
- **Writes to:** At-risk response plan (SharePoint/CustomerSuccess/<Company>/SavePlans/[Account]_[Date]_SavePlan.pdf); save call commitment log (GoHighLevel CRM — what was promised; date; who made the commitment); health score update (cs-health-score-tracker — updated post-save call); CEO and Matt Mathison notification records; post-churn analysis (cs-churn-predictor — if churn occurs despite save attempt); cs-kpi-dashboard (save success rate; save ARR recovered)
- **HITL Required:** Dr. Lewis notified within 24 hours of Red health; CEO notified for >$50K ACV at-risk; Matt Mathison notified for Critical risk >$150K ACV; CEO authorizes any pricing concession or make-good commitment; Dr. Lewis reviews save plan before actions are taken; CEO reviews post-churn analyses for >$100K ACV churns

## Test Cases
1. **Golden path:** Allevio — 145-member group at risk; health score dropped to Red (11/25): champion (HR Director) left 3 weeks ago; claim ratio 84% (above target); CS rep has had no contact with the new HR Director → Dr. Lewis: "Root cause: champion change + claim ratio trending up. Response level: I'm calling the new HR Director personally — this is an ACV >$100K account. Save call agenda: (1) introduce myself; (2) understand what she knows about the plan and what her priorities are; (3) NOT pitch the claim ratio stats yet — I need to understand her perspective first. The claim ratio plan comes after I have a relationship." Save call Day 2: New HR Director is neutral; she inherited the account and knows little about Allevio; Dr. Lewis offers: "I'd like to schedule a 45-minute onboarding session with you — let me walk you through exactly what your employees' plan covers and what we've been doing to manage the cost on your behalf." Meeting held; HR Director is engaged; Dr. Lewis delivers a personalized claim analysis; health score improves to Yellow (16/25) over 60 days; renewal secured
2. **Edge case:** Column6 — competitive threat: media buyer mentions a competitor platform in a campaign review call; says "we're evaluating some alternatives for Q3" → Dr. Lewis (briefed immediately by the CS rep): "This is a competitive threat at medium risk — current health score is Green but this changes the picture. I'm not going to wait for them to make a decision. Here's the save play: (1) The CS rep requests a Q3 planning call this week — frame it as 'I want to make sure we're building the right campaign plan for Q3'; (2) In the planning call, pull up the VCR comparison: Column6 at 94% vs. industry avg at 62%; our CPM vs. the competitor's published rate; our attribution methodology; (3) Ask: 'What is the competitor offering that we haven't been providing? I want to hear specifically what's attracting them.' Don't bid-shop — understand the gap." Planning call reveals the competitor offers a different attribution tool; Column6 offers to add Nielsen OneCount for Q3 (at cost); agency stays
3. **Adversarial:** A CS rep receives a message from an at-risk customer: "We're not happy with performance — we're looking at other options." The rep responds by email: "I'm so sorry to hear that — what can we do to make this better? We really value your partnership!" → Dr. Lewis: "Stop. That response is sympathy, not a save. We sent an email where we should have called. And we asked an open-ended question where we should have done a diagnosis. Here's what we send now — not an email, a calendar invite: 'I read your message and I want to talk directly. Can we find 20 minutes this week? I'd like to understand specifically what's happening and what it would take to get things right.' Personal call; diagnosis first; save plan after. I'll join the call." Save call held; Dr. Lewis leads; issue identified (pacing problem on the last IO); make-good approved by CEO; account retained

## Audit Log
All at-risk response plans retained by account, entity, and date. Save call commitment logs retained. CEO and Matt Mathison notification records retained. Pricing concession authorization records retained (what was offered; CEO approval; outcome). Save success/failure outcomes retained. Post-churn analysis records retained for all churns despite a save attempt.

## Deprecation
Retire when each portfolio company has a dedicated CS escalation and save function managed by a CS Lead — with Dr. Lewis reviewing all Critical save plans and the CEO leading all save calls for accounts >$150K ACV.
