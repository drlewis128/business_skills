---
name: cs-renewal-coordinator
description: "Coordinate customer renewal process for MBL portfolio companies from the CS side. Use when the user says 'renewal', 'renewal process', 'renewal coordination', 'customer renewal', 'account renewal', 'contract renewal', 'renewal timeline', 'renewal prep', 'renewal readiness', 'is this customer going to renew', 'renewal risk', 'renewal conversation', 'prepare for renewal', 'renewal checklist', 'when does this contract renew', 'renewal date', 'upcoming renewals', 'renewal pipeline', 'renewal calendar', 'coordinate the renewal', 'CS renewal', 'customer success renewal', or 'renewal planning'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--renewal-date <date>] [--action <plan|prepare|execute|report>]"
---

# CS Renewal Coordinator

Coordinate the customer renewal process for MBL portfolio companies from the CS side — owning the pre-renewal preparation, value documentation, and renewal conversation readiness so that when the sales team (or Dr. Lewis) presents the renewal, the customer already knows the value they've received and is mentally prepared to continue. CS owns the relationship through the contract period; when renewal arrives, the outcome is largely already determined by the quality of the CS work done in the preceding months.

## When to Use
- 120 days before any contract renewal date (start the renewal process)
- Monthly renewal calendar review (which accounts are renewing in the next 90/60/30 days?)
- A customer at risk of not renewing (coordinate the save strategy with the CEO)
- Post-renewal: document the outcome and lessons learned

## CS Renewal Framework

```
RENEWAL TIMELINE (120-day countdown):

  DAY -120: Renewal calendar review
    □ Identify all accounts renewing in the next 120 days
    □ Review health score for each (from cs-health-score-tracker)
    □ Flag any Yellow or Red accounts for immediate intervention (before the renewal window)
    □ Confirm the renewal owner: Dr. Lewis for >$150K ACV; CS rep for smaller accounts
    
  DAY -90: Value documentation
    □ Pull the full year's data: claim ratio improvement; VCR performance; royalty payments
    □ Compare actuals to success plan targets (cs-success-plan-builder): did we achieve the goals?
    □ Draft the "Value Delivered" one-pager — quantified outcomes for this account specifically
    □ Identify any gaps: if we missed a target, prepare an honest explanation and a correction plan
    
  DAY -75: Internal renewal review
    □ Dr. Lewis reviews the value documentation and flags any concerns
    □ If health score is Yellow or Red: CEO briefed; save strategy developed before renewal outreach
    □ Pricing: Is the renewal price the same? Any increase? Any member count change?
    □ Sales team briefed: renewal opportunity exists; are there expansion conversations to layer in?
    
  DAY -60: Proactive renewal outreach
    □ CS rep (or Dr. Lewis for >$150K ACV) contacts the customer proactively
    □ Framing: "We're coming up on your renewal in 60 days and I want to make sure we've
        prepared a comprehensive summary of everything we've accomplished together this year.
        I'd like to schedule a renewal review meeting — 30-45 minutes — to walk through the
        results and discuss the path forward."
    □ Do NOT wait for the customer to bring up renewal; proactive ownership is a CS strength
    
  DAY -45: Renewal review meeting
    □ Present the Value Delivered one-pager
    □ Review success plan actuals vs. targets
    □ Address any outstanding issues (this is the last chance to fix problems before the renewal)
    □ Confirm the customer's intent: "Based on what we've accomplished together, are you planning
        to continue?" If yes: "Great — I'll have the renewal documents to you by [date]."
        If uncertain: "What would make this a clear yes for you?" (surface the real concern)
    □ If the customer raises a price concern: "I hear you — let me discuss with my team and get
        back to you within 48 hours." Do NOT negotiate on the spot without Dr. Lewis involvement
        
  DAY -30: Renewal documents and final close
    □ Renewal agreement sent (same terms or updated terms as approved)
    □ CEO or Dr. Lewis follows up on any unsigned renewal documents after 5 business days
    □ If not renewed by Day -10: CEO-led call; last opportunity before auto-notification protocols
    
  DAY 0: Renewal date
    □ If renewed: Mark in CRM; update billing in QuickBooks; CS continues
    □ If not renewed: Notice period begins; offboarding initiated; CEO and Matt Mathison informed

ENTITY-SPECIFIC RENEWAL NOTES:

  ALLEVIO:
    Benefits renewal aligns with open enrollment — most Allevio clients have a January 1 or 
      July 1 plan year; renewal conversation must happen at least 90 days before open enrollment
      begins (October 1 enrollment → renewal conversation by August 1)
    Value documentation centers on: claim ratio improvement; PMPM cost savings vs. prior carrier;
      HR Director time savings; member satisfaction indicators
    Common renewal risk: New HR Director who wasn't there when the original decision was made
      → treat as a new relationship; value documentation needs to be even stronger
    Pricing: PMPM pricing is reviewed annually; any increase requires CEO approval and
      at least 60-day notice to the employer group
    
  COLUMN6:
    IO-based buying means there is no "renewal" in the traditional sense — the relationship
      is renewed every time a new IO is signed; but annual agreements (pre-committed spend) do exist
    For pre-committed agreements: same 120-day timeline applies
    For IO-based relationships: "renewal" = re-engagement after 90+ days of inactivity
      (see cs-health-score-tracker — last IO >90 days = booking activity score drops)
    Value documentation: VCR performance vs. benchmark; CPM delivered vs. contracted; attribution results
    
  HIVE:
    Mineral rights leases have defined terms (typically 3-5 years); renewal is negotiated at term end
    Lease renewal timeline: begin 12 months before term end (not 120 days — earlier for O&G)
    Dr. Lewis and the CEO lead lease renewal negotiations; the landowner often has alternative
      operator interest by lease-end; competitive renewal process requires early engagement
    Value documentation: Royalty payments received; total bonus paid; production history;
      HIVE's development activity and plans for the renewed term
    Renewal pricing: Bonus and royalty rate may increase at renewal; Matt Mathison reviews
      before any commitment
```

## Output Format

```markdown
# Renewal Coordination Plan — [Account Name] | [Entity]
**Renewal date:** [Date] | **ACV:** $[X]K | **Renewal owner:** Dr. Lewis / [Rep name]
**Current health:** 🟢 Green / 🟡 Yellow / 🔴 Red | **Renewal risk:** Low / Medium / High

---

## Renewal Timeline

| Target date | Action | Owner | Status |
|------------|--------|-------|--------|
| [Day -120] | Added to renewal calendar | Dr. Lewis | ✅ |
| [Day -90] | Value documentation draft complete | CS Rep | ⏳ |
| [Day -75] | Internal review; CEO briefed if Yellow/Red | Dr. Lewis | ⏳ |
| [Day -60] | Proactive renewal outreach | CS Rep / Dr. Lewis | ⏳ |
| [Day -45] | Renewal review meeting | CS Rep + Dr. Lewis | ⏳ |
| [Day -30] | Renewal documents sent | Dr. Lewis | ⏳ |
| [Day 0] | Renewal decision | — | — |

---

## Value Delivered Summary

| Metric | Success plan target | Actual | Achievement |
|--------|-------------------|--------|------------|
| Claim ratio | <80% | [X]% | ✅ / ❌ |
| PMPM vs. prior carrier | $[X] savings | $[X] savings | ✅ / ❌ |
| Member enrollment | ≥85% | [X]% | ✅ / ❌ |

---

## Renewal Risk Assessment

**Primary risk:** [What could prevent renewal?]
**CEO involvement:** Required / Not required
**Price change:** No change / $[X]K increase (CEO approved / not yet approved)
**Expansion opportunity:** Yes — [describe] / No
```

## Output Contract
- Proactive at Day -60 is non-negotiable — a CS team that waits for the customer to ask about renewal gives the customer time to explore alternatives; Dr. Lewis requires proactive renewal outreach at Day -60 for every account; "I don't want to pressure them" is not a reason to skip this step; early outreach is about giving the customer the information they need to make a confident decision, not about pressuring them; a customer who hears from their CS team at Day -60 makes a better-informed renewal decision than one who is surprised by a renewal invoice at Day -5
- Value documentation is the renewal conversation — the renewal meeting is only as strong as the value documentation prepared for it; if the CS team cannot show the customer what was achieved (in the customer's terms, with the customer's metrics), the renewal conversation becomes a negotiation about price; Dr. Lewis requires a completed value documentation summary before any renewal conversation begins
- CEO leads at-risk renewals — any account that is Yellow or Red at the Day -75 review is an at-risk renewal; Dr. Lewis briefs the CEO and the CEO decides the save strategy before any outreach begins; the CS rep does not conduct a renewal conversation with a Red account without CEO direction
- HITL required: Dr. Lewis runs renewal outreach and meetings for >$150K ACV accounts; CEO briefed on all Yellow/Red account renewals at Day -75; any pricing change requires CEO approval before it is presented to the customer; CEO or Matt Mathison approves any retention incentive (pricing discount; service upgrade; extended terms); Dr. Lewis does not allow a renewal to lapse without CEO notification; Matt Mathison notified of any non-renewal above $150K ACV

## System Dependencies
- **Reads from:** Renewal calendar (GoHighLevel CRM — contract end date field; renewal date flagged); cs-health-score-tracker (current health score and trend); cs-success-plan-builder (success plan actuals vs. targets — the basis of value documentation); sales-renewal-manager (sales-side renewal strategy — CS coordinates with sales on the renewal); QuickBooks (billing history; any payment issues); AdvancedMD claim ratio (Allevio — year-over-year improvement data)
- **Writes to:** Renewal coordination plan (SharePoint/CustomerSuccess/<Company>/Renewals/[Account]_[Year]_RenewalPlan.pdf); value delivered summary (SharePoint/CustomerSuccess/<Company>/ValueReports/[Account]_[Year]_ValueDelivered.pdf); renewal outcome record (GoHighLevel CRM — renewed/churned; ACV; pricing change; date); CEO renewal briefing (for Yellow/Red accounts at Day -75); Matt Mathison notification (for non-renewals >$150K ACV); cs-kpi-dashboard (renewal rate; renewal ARR; time-to-renew)
- **HITL Required:** Dr. Lewis runs >$150K ACV renewal conversations; CEO briefed on Yellow/Red renewals at Day -75; CEO approves pricing changes before customer presentation; CEO or Matt Mathison authorizes any retention incentive; Dr. Lewis does not let a renewal lapse without CEO notification; Matt Mathison notified of any non-renewal >$150K ACV

## Test Cases
1. **Golden path:** Allevio — 145-member group renewing January 1 (plan year) → Dr. Lewis adds to renewal calendar August 15 (Day -137); value documentation built October 1 (Day -92): claim ratio went from 87% → 78% (exceeded the 80% target); PMPM savings vs. prior carrier: $58/member/month = $100.8K annual savings for the employer group; HR Director reports she's spending 3 hours/week on benefits instead of 8 (exceeded the 5-hour savings goal); Day -75 internal review: Green health; renewal is low-risk; no CEO briefing required; Day -60 (October 31): CS rep calls HR Director: "I wanted to reach out before your renewal to make sure we're aligned. I have a summary of everything we've accomplished together this year and I'd love to walk through it. Could we find 30 minutes in the next week?" Meeting scheduled; Day -45: renewal review meeting — HR Director is delighted; renewal signed at Day -45 (6 weeks early); $147.9K renewal; Dr. Lewis calls to congratulate; account plan updated with Year 2 goals
2. **Edge case:** A Column6 agency has a pre-committed $400K annual spend agreement renewing in 60 days — the media buyer who signed the original agreement was replaced 2 months ago; new buyer hasn't been fully introduced to Column6 → Dr. Lewis: "This is a new-buyer situation — the renewal risk is medium regardless of performance. We need to treat the new buyer like a new customer: intro call; value delivered summary personalized to what she cares about (find out quickly); and I'll join the renewal meeting personally given the ACV. CS rep: schedule an intro call with the new buyer this week. Goal: understand her priorities before we present the renewal documentation. I'll build the value summary once we know what she values." Intro call completed; new buyer's priorities identified (attribution is #1); value documentation rebuilt around attribution results; renewal meeting goes well; $400K renewed
3. **Adversarial:** A customer at the Day -45 renewal meeting says "we're 80% sure we're renewing but we need a 20% price reduction to make the numbers work" → Dr. Lewis (CS rep reports this): "Don't negotiate on the spot. Here's the response: 'I appreciate you sharing that — I want to make sure we find the right solution for you. Let me take this back to my team and we'll get back to you within 48 hours with our best thinking.' That buys time to involve the CEO. Then we evaluate: (1) Is the price reduction request legitimate (budget issue; or are they negotiating)? (2) What's the cost of losing this account vs. the revenue impact of a 20% reduction? (3) Is there a non-price alternative (longer term for a smaller per-year increase; added service for the same price)? The CEO decides — not the CS rep." CEO briefed within 24 hours; decision: offer a 10% reduction for a 2-year renewal term; customer accepts

## Audit Log
All renewal coordination plans retained by account, entity, and year. Value delivered summaries retained. Renewal outcome records retained. CEO and Matt Mathison notification records retained. Pricing change approvals retained. Retention incentive authorization records retained. Non-renewal records with reason retained.

## Deprecation
Retire when each portfolio company has a dedicated CS renewal motion managed by a CSM — with Dr. Lewis reviewing the renewal pipeline monthly and the CEO approving all pricing changes and retention incentives.
