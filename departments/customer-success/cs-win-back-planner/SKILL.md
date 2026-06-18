---
name: cs-win-back-planner
description: "Plan and execute win-back programs for churned customers at MBL portfolio companies. Use when the user says 'win back a customer', 'win-back', 're-engagement', 're-engage a churned customer', 'churned customer', 'lost customer outreach', 'bring back a lost customer', 'recover a churned customer', 'reacquire a customer', 'ex-customer outreach', 'former customer', 'customer re-acquisition', 'win back lost business', 'reconnect with a lost customer', 'reach out to churned accounts', 'churn recovery', 'lost account recovery', 'lapsed customer', 'customer came back', 'lost customer came back', or 'win back program'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <former customer name>] [--churn-date <YYYY-MM>] [--reason <reason for churn>] [--action <plan|outreach|report>]"
---

# CS Win-Back Planner

Plan and execute win-back programs for churned customers at MBL portfolio companies — identifying which former customers are worth pursuing, building a re-engagement approach that addresses why they left, and timing the outreach so that it arrives when circumstances may have changed in our favor. Not all churned customers should be pursued; win-back effort should focus on accounts where the churn reason has changed and where the relationship can be rebuilt.

## When to Use
- 6-12 months after a customer churned (the earliest viable win-back window)
- A former customer reaches out proactively
- A former customer's circumstances change (new HR Director; new budget cycle; competitor failure)
- Annual win-back review (which churned accounts from the last 2 years are worth re-engaging?)

## Win-Back Planning Framework

```
WIN-BACK ELIGIBILITY SCREENING (before any outreach):

  Pursue win-back if:
    □ Churn was involuntary: business closure; acquisition; budget elimination (not a product failure)
       Reason: Our service was likely not the issue; re-engage when they are operational again
    □ Churn was due to a problem WE HAVE SINCE FIXED:
       Example: "They churned because claim ratio was too high — we've since added clinical programs
         that reduced portfolio average claim ratio by 9 points"
    □ The contact who made the churn decision is no longer there:
       Example: "The HR Director who chose to switch carriers left the company 6 months ago"
    □ The relationship was strong despite the churn (NPS was positive; no legal disputes)
    □ The account could rebuild to >$50K ACV
    
  Do NOT pursue win-back if:
    □ Churn was due to a fundamental product or pricing mismatch that we haven't addressed
    □ There was a legal dispute, fraud allegation, or significant unpaid balance
    □ The account leadership specifically said "don't contact us again"
    □ The contact who made the churn decision is still in place AND the same problem exists
    □ Win-back ARR potential is <$25K (not worth the executive attention)

WIN-BACK STRATEGY BY CHURN REASON:

  REASON: Switched to a competitor (price or features)
    Win-back window: 12-18 months after churn (competitor honeymoon fades)
    Approach: "I've been thinking about our time working together.
      I'm not sure if you're evaluating your options yet, but I'd love to
      show you what's changed — we've made some significant improvements since
      we last worked together. Would you be open to a 20-minute conversation?"
    What to bring: The specific improvements since they left (not what was there before)
      
  REASON: Champion/decision-maker change (new person didn't value the relationship)
    Win-back window: 6-12 months after the new person has been in place
    Approach: Reach out to the new decision-maker as a new contact, not as a former vendor
    Opening: "I wanted to introduce myself — I understand you recently joined [Company]
      as [Title]. In the past, [Company] worked with [Allevio/Column6/HIVE] and I'd love
      to reconnect and understand your priorities."
    Don't mention: "You used to use us" — let them discover the relationship history naturally
      
  REASON: Budget cut (financial pressure; not a product decision)
    Win-back window: When the company's financial situation visibly improves (headcount up; new funding;
      new location; public financial news)
    Approach: Timing-triggered — monitor LinkedIn/press for signs of recovery
      "I saw that [Company] recently [expanded/hired/raised] — congrats. I've been following
      your progress since we last worked together. Given your growth, I thought it might be
      a good time to reconnect."
      
  REASON: Service failure (our fault — claim ratio; delivery failure; escalation mishandled)
    Win-back window: Minimum 12 months after we have demonstrably fixed the issue
    DO NOT pursue win-back until: The specific issue has been resolved in the product/service
    Approach: The win-back requires an admission: "When we last worked together, we fell short.
      I'm aware of exactly what happened. In the last 12 months, we've made specific changes:
      [list specific changes]. I'd like to earn the right to show you what's different."

ENTITY-SPECIFIC WIN-BACK CONTEXT:

  ALLEVIO:
    Best win-back window: 12-18 months post-churn; outreach timed to open enrollment planning season
    Best win-back signal: New HR Director at the employer group
    Win-back offer: Updated plan design; case study from a similar group showing cost reduction;
      clinical program addition since they left
    Avoid: Reaching out during an active open enrollment (HR Directors have no bandwidth)
    
  COLUMN6:
    Best win-back window: 6-12 months post-churn; budget cycle reset
    Best win-back signal: Agency wins a new brand brief in a category Column6 serves well
    Win-back offer: Updated inventory quality data; new attribution capability; specific campaign concept
      tailored to a brand they're currently managing
    
  HIVE:
    Best win-back window: Lease expiration with the competing operator; or after a negative
      experience with the competing operator (royalty delay; no communication)
    Win-back signal: Landowner contact (phone or email) — they may reach out proactively
    Win-back offer: HIVE's track record since they left; current lease bonus per acre vs. market;
      development activity update on adjacent parcels
    Note: In mineral rights, win-backs are often the landowner calling HIVE — not HIVE cold-calling.
      Monitor Covercy for landowners with expiring competing leases.

WIN-BACK OUTREACH PROTOCOL:
  All win-back outreach for >$75K ARR accounts: Dr. Lewis makes the first contact (not the CS rep)
  First contact is always a call (not an email) for accounts >$50K ARR
  Email is acceptable for <$50K ARR accounts
  Never mention: "You should come back" or "We miss your business" — sounds desperate
  Always lead with: what has changed; what they might get now that they couldn't before
  If the prospect declines: "Absolutely — I understand. If anything changes, please know the door
    is open. I'd like to stay in touch." Add to a 12-month re-check list
```

## Output Format

```markdown
# Win-Back Plan — [Former Account Name] | [Entity]
**Churn date:** [Month YYYY] | **Churn reason:** [Category] | **ARR at churn:** $[X]K
**Win-back eligibility:** Approved / Not approved — [reason]
**Win-back approach:** [Strategy type based on churn reason]
**Outreach owner:** Dr. Lewis / CS Rep | **Target outreach date:** [Date]

---

## Why They Left (from post-churn analysis)
[Specific root cause documented in cs-churn-predictor post-churn analysis]

---

## What Has Changed Since They Left
[Specific improvements, product additions, or circumstance changes that make now the right time]

---

## Win-Back Outreach Script / Key Talking Points
[Draft opening for the call or email — specific to the churn reason and entity]

---

## Status Log

| Date | Action | Outcome |
|------|--------|---------|
| [Date] | [Dr. Lewis called / email sent] | [Response / no response] |
| [Date] | [Follow-up] | |
```

## Output Contract
- Eligibility screening is mandatory before outreach — pursuing a win-back on an account that left due to an unresolved product failure is worse than not reaching out; it tells the former customer we haven't learned anything; Dr. Lewis requires a documented eligibility review against the criteria above before any win-back outreach is authorized; if the churn reason hasn't been addressed, the win-back is not approved
- Win-back outreach is a privilege, not a right — former customers who were burned will accept a call from Dr. Lewis as a sign of respect; they will not accept a call from a CS rep who didn't understand what went wrong; Dr. Lewis personally handles all win-back calls for accounts >$50K ARR; any win-back conversation that doesn't acknowledge what happened is a win-back that will fail
- Timing matters more than the script — the best win-back script delivered at the wrong time gets a polite no; monitor the signals that indicate the right moment (leadership change; new budget; competitor failure; lease expiration) and let the timing drive the outreach; a win-back that arrives 6 months before the prospect is ready to consider alternatives is 6 months too early
- HITL required: Dr. Lewis approves all win-back outreach before it begins; CEO is briefed on win-back efforts for accounts that churned due to a service failure (these carry reputational risk); Dr. Lewis personally makes the first call for all >$50K ARR win-back accounts; any win-back offer that includes a pricing concession or a term modification requires CEO approval before it is presented

## System Dependencies
- **Reads from:** Post-churn analysis records (cs-churn-predictor — why they left; what we could have done differently); cs-health-score-tracker (what was the health score trajectory before they left?); GoHighLevel CRM (full account history; contact records; last communication date; churn documentation); entity product/service improvement log (what has changed since they left?); LinkedIn/press (for budget-recovery and leadership-change signals)
- **Writes to:** Win-back plan document (SharePoint/CustomerSuccess/<Company>/WinBacks/[Account]_[Date]_WinBackPlan.pdf); GoHighLevel CRM (win-back status field; outreach log; outcome); win-back result report (SharePoint/CustomerSuccess/<Company>/WinBacks/[Account]_WinBackOutcome.pdf — when the effort concludes); cs-kpi-dashboard (win-back conversion rate; win-back ARR recovered)
- **HITL Required:** Dr. Lewis approves all win-back outreach; CEO briefed on service-failure win-backs; Dr. Lewis personally calls all >$50K ARR win-back prospects; pricing concessions or term modifications require CEO authorization before offer

## Test Cases
1. **Golden path:** Allevio — employer group churned 14 months ago (claim ratio was 89%; switched back to prior carrier at open enrollment); CS rep notes that the new HR Director posted on LinkedIn 2 months ago — the original HR Director who switched carriers has left the company → Eligibility review: New decision-maker in place ✅; we've since added clinical programs that reduced portfolio avg claim ratio 9 points ✅; ACV was $98K ✅; no legal disputes ✅ — WIN-BACK APPROVED → Dr. Lewis calls the new HR Director: "Hi [Name], I'm John Lewis at Allevio. I understand [Company] was with us a couple of years ago — before your time. I'm not sure if you've had a chance to evaluate your benefits provider recently, but I'd love to introduce myself and share some of the changes we've made to our clinical programs. Would you be open to a 20-minute conversation?" HR Director: "Actually, I was just reviewing our claims data and we're running above 87% — I'd love to hear what you're doing." Meeting scheduled; win-back progresses; account re-signed at $112K ACV
2. **Edge case:** A former Column6 customer reaches out proactively — "We had some issues with your platform 18 months ago but we're hearing good things lately. Are you still in the market?" → Dr. Lewis: "This is exactly the win-back scenario we want. They came to us — that's better than cold outreach. Call them back same day. Lead with what's changed, not with an apology. We want them to see the new Column6, not rehash the old one." CS rep calls; Dr. Lewis joins the discovery call; former customer re-signs a $45K IO for Q3; expands to a $180K annual agreement by Q4
3. **Adversarial:** A CS rep wants to reach out to an account that churned 3 months ago because they "felt bad" about how the churn went — no eligibility review, no post-churn analysis → Dr. Lewis: "I understand the impulse — but 3 months is not a win-back window, it's a wound. If we call them now, we look desperate and we remind them of the bad experience. The minimum window is 6 months for most accounts; 12 months if we had a service failure. Pull the post-churn analysis. What was the root cause? If we haven't fixed what drove the churn, outreach will backfire. I'll put this account on a 9-month win-back review calendar. When 9 months comes, we'll look at whether circumstances have changed." Account added to review calendar; outreach held

## Audit Log
All win-back plans retained by account, entity, and date. Eligibility screening records retained. Dr. Lewis outreach call records retained. CEO briefing records for service-failure win-backs retained. Win-back outcome records retained (converted; declined; in progress; re-contact in X months). Pricing concession authorization records retained.

## Deprecation
Retire when each portfolio company has a dedicated sales function that manages re-acquisition — with Dr. Lewis reviewing all win-back plans for accounts that churned due to a service failure and the CEO approving any win-back offer that includes pricing flexibility.
