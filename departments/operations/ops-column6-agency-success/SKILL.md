---
name: ops-column6-agency-success
description: "Manage Column6 / Siprocal agency relationships and account success. Use when the user says 'agency relations', 'agency relationship', 'agency management', 'agency account', 'agency success', 'account management', 'account success', 'agency NRR', 'agency retention', 'agency renewal', 'agency upsell', 'agency expansion', 'agency churn', 'agency at risk', 'agency review', 'agency QBR', 'agency check-in', 'agency pipeline', 'agency satisfaction', 'agency complaint', 'agency escalation', 'agency communication', 'media buyer', 'media buyer relationship', 'holding company agency', 'independent agency', 'agency contact', 'agency account review', 'Column6 agency', 'Siprocal agency', 'agency upsell opportunity', 'grow the agency', 'expand the agency', 'agency account growth', 'new agency', 'agency onboarding', 'introduce Column6', or 'agency pitch'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--agency <name>] [--action <review|onboard|upsell|escalate|report|qbr>] [--segment <top-agency|mid|new|at-risk>] [--metric <nrr|spend|vCR|satisfaction|margin>] [--period <monthly|quarterly|annual>]"
---

# Ops Column6 Agency Success

Manage Column6's agency relationships — tracking agency NRR, managing key account relationships, identifying upsell and expansion opportunities, escalating at-risk agencies, and ensuring that Column6's highest-value agency relationships are receiving the attention and performance that justify their continued and growing spend. Agency NRR is Column6's North Star metric — maintaining ≥95% agency NRR means that existing agencies are spending at least as much as they did in the prior period; above-95% NRR means agencies are expanding their spend; below-95% means agencies are pulling back. Dr. Lewis tracks agency NRR at the portfolio level as a financial health signal; the Column6 CEO and the agency success team manage individual agency relationships.

## When to Use
- Monthly agency NRR review
- A major agency is at renewal or expansion discussion
- An agency escalates a performance or billing complaint
- Agency NRR drops below 95%
- New agency onboarding

## Agency Success Framework

```
AGENCY NRR CALCULATION:

  Agency NRR = (Revenue from retained agencies in current period / Revenue from those same agencies in prior period) × 100
  Target: ≥95% (Column6 North Star metric per CLAUDE.md)
  Interpretation:
    >100%: agencies are expanding spend (upsell + retention success)
    95-100%: agencies are stable (good retention; minimal expansion)
    <95%: agencies are pulling back (churn or spend reduction)
  
  Dr. Lewis calculates NRR monthly (from fin-column6-io-billing)
  Flag: NRR <95% → Column6 CEO root cause analysis within 30 days

AGENCY SEGMENTATION:

  TIER 1 — STRATEGIC AGENCIES (holding company; top 5 by revenue):
    Representation: 70-80% of Column6 total revenue
    Cadence: Monthly check-in (Column6 CEO or senior account lead); Quarterly QBR
    NRR target: ≥98%
    At-risk threshold: any spend reduction → immediate escalation to Column6 CEO
    
  TIER 2 — GROWTH AGENCIES (independent; expanding):
    Active growth; spending more each quarter
    Cadence: Monthly check-in; semi-annual QBR
    NRR target: ≥95%
    
  TIER 3 — STANDARD AGENCIES (consistent; not growing):
    Cadence: Quarterly check-in; annual review
    NRR target: ≥90%
    
  NEW AGENCY ONBOARDING:
    First 90 days: weekly check-in; hyper-attentive
    First IO: confirm delivery target; send mid-flight report proactively
    First invoice: verified and accurate before sending
    90-day review: is the agency expanding? Are there any complaints?

AGENCY QBR FRAMEWORK:

  QUARTERLY BUSINESS REVIEW (for Tier 1 agencies):
    Participants: Agency buying team + Column6 CEO (or account lead)
    Pre-work: Dr. Lewis or Column6 ops prepares:
      - Revenue by campaign (trailing quarter + trailing 12 months)
      - VCR and viewability performance by campaign
      - Make-good resolution status
      - Q+1 pipeline (open IOs; upcoming campaigns)
    Agenda:
      Performance review (VCR; delivery; make-good resolution)
      Budget discussion (Q+1 spend plan; any budget shifts)
      Product/channel feedback (what's working; what's not)
      Expansion opportunity (new channels; new brands within the agency)
    
  AGENCY UPSELL OPPORTUNITIES:
    Cross-channel: agency buying CTV → offer mobile or gaming
    Increased CPM: agency satisfied with performance → test premium placements
    Brand expansion: agency has other brands that could benefit from Column6 channels
    Private marketplace deals: for agencies preferring programmatic guaranteed

AT-RISK AGENCY MANAGEMENT:

  AT-RISK SIGNALS:
    Spend declining month-over-month for 2+ months
    Missed IO renewals (no new IO after prior one ended)
    Escalated complaint not fully resolved
    Agency contact has changed (new buyer who doesn't know Column6)
    Agency holding company has issued a vendor consolidation directive
    
  AT-RISK PROTOCOL:
    Flag to Column6 CEO
    Column6 CEO schedules a personal conversation with the agency buyer lead
    Understand: is this a performance issue (Column6 can fix)? A budget issue (agency-side)? A competitive issue (another vendor offering better terms)?
    Develop response: what can Column6 do to re-engage the agency?
    Dr. Lewis tracks NRR impact of at-risk agencies monthly
```

## Output Format

```markdown
# Column6 Agency Success Report — [Month Year]
**Prepared by:** Column6 Operations | **Reviewed by:** Dr. Lewis | **For:** Column6 CEO + Matt Mathison

---

## Agency NRR: [%] (target: ≥95%) | Trend: ↑↓→

Breakdown:
- Tier 1 agencies: [%] NRR | Revenue: $[X]
- Tier 2 agencies: [%] NRR | Revenue: $[X]
- New agencies (< 6 months): [N] | Revenue: $[X]

---

## At-Risk Agency Watch List

| Agency | Tier | Q spend trend | Signal | Last contact | Action |
|--------|------|--------------|--------|-------------|--------|
| [Agency A] | 1 | -22% | Spend declining 3 months | [Date] | CEO call this week |
| [Agency B] | 2 | -8% | New buyer (unfamiliar with Column6) | [Date] | Intro call scheduled |

---

## Expansion Opportunities

| Agency | Current spend | Opportunity | Expected value | Status |
|--------|--------------|-------------|---------------|--------|
| [Agency C] | $[X]/mo | Mobile channel add-on | +$[X]/mo | Proposal sent |

---

## Q[N] Agency QBR Status

| Agency | QBR date | Outcome | Follow-up |
|--------|---------|---------|----------|
| [Tier 1 Agency] | [Date] | Q+1 budget confirmed (+15%) | None pending |
```

## Output Contract
- NRR is the health metric, not the vanity metric — Column6 NRR is calculated from actual booked and invoiced revenue against the same agencies in the comparable prior period; it is not inflated by new agency adds (new logos are a separate growth metric); Dr. Lewis validates the NRR calculation methodology with the Column6 CEO monthly; an NRR that includes new agency revenue inflates the retention picture; a separated view (existing agency NRR + new agency revenue) gives the accurate picture of whether Column6 is retaining its existing business while growing new business
- Tier 1 agency relationships are the Column6 CEO's personal responsibility — the strategic agencies (top 5 by revenue) should feel that they have a direct relationship with Column6 leadership, not just with an account manager; the Column6 CEO's personal involvement in Tier 1 QBRs and at-risk conversations is non-negotiable; these agencies represent 70-80% of Column6 revenue; losing one materially impacts NRR, monthly revenue, and Matt Mathison's LP returns; the column6 CEO knows who these agencies are and they know the CEO
- At-risk signals are detected before agencies communicate them formally — a declining spend trend is a signal before the agency says "we're reducing our budget"; a new buyer who doesn't know Column6 is a signal before that buyer decides not to renew an IO; Dr. Lewis surfaces these signals to the Column6 CEO in the monthly report; the Column6 CEO acts on signals, not on formal agency notices; an agency that formally tells you they're reducing spend has often already made the decision — the goal is to catch the signal before the decision is final
- HITL required: agency NRR <95% → Column6 CEO root cause analysis + Dr. Lewis briefing to Matt Mathison; Tier 1 agency spend decline >20% → Column6 CEO direct call within 5 days; any agency threat to pull all spend → Column6 CEO + Dr. Lewis + Matt Mathison awareness; agency billing dispute >$50K → Dr. Lewis review; at-risk agency representing >15% of Column6 revenue → Matt Mathison notification; new agency relationships with first-year spend potential >$500K → Matt awareness

## System Dependencies
- **Reads from:** fin-column6-io-billing (agency spend data; NRR calculation source); ops-column6-campaign-ops (delivery performance by agency — key input to QBR); ops-column6-reporting-ops (client-facing reporting quality — affects agency satisfaction); GHL CRM (agency contacts; relationship notes; pipeline)
- **Writes to:** Agency NRR tracker (SharePoint → Column6 → Operations → AgencySuccess); at-risk watch list (Column6 CEO briefing); Column6 CEO briefings; Matt Mathison notifications (NRR <95%; Tier 1 spend decline; at-risk >15% revenue); GHL CRM (agency interaction logs; spend notes; at-risk flags)
- **HITL Required:** NRR <95% → Column6 CEO root cause + Dr. Lewis to Matt; Tier 1 decline >20% → CEO direct call ≤5 days; all-spend threat → CEO + Dr. Lewis + Matt; billing dispute >$50K → Dr. Lewis; at-risk agency >15% revenue → Matt notification; spend potential >$500K new agency → Matt awareness

## Test Cases
1. **Golden path:** Monthly agency NRR review. 22 active agencies. NRR calculation: existing agencies (same as prior quarter) total spend this quarter $1.87M; prior quarter same agencies $1.84M; NRR = 101.6% — excellent. New agency adds: 2 new agencies contributing $95K (separate from NRR). Tier 1 review: all 5 Tier 1 agencies on-track or growing. One Tier 2 agency (mid-size independent) spend declined 9% — watch list added. Column6 CEO reached out; agency is experiencing client-side budget cuts — not a Column6 performance issue. Column6 CEO note: "They're paused for 60 days; they'll be back in Q4 when their client's budget cycle resets." Dr. Lewis: "NRR strong at 101.6%. One Tier 2 agency on watch — not a product issue; budget cycle pause. Tracking."
2. **Edge case:** A Tier 1 holding company agency issues a vendor consolidation directive, reducing their DSP partners from 8 to 3 → Dr. Lewis: "This is a significant at-risk event. [Agency] is a Tier 1 agency representing [%] of Column6 revenue. If Column6 is not selected as one of the 3 retained DSP partners, the revenue impact is approximately $[X]/year. Immediate actions: (1) Column6 CEO needs to schedule an executive meeting with the agency's investment lead within 5 days — the decision is likely being made in the next 30 days. (2) The criteria for the 3 selected partners needs to be understood: is it price? Performance? Volume? Data? (3) Column6 needs a differentiated response: VCR performance data (Column6 consistently above 92%); CTV inventory access; reporting quality. Matt: I'm flagging this — this is a strategic threat to Column6 NRR. Column6 CEO is on it. I'll update you weekly."
3. **Adversarial:** Column6 CEO wants to report agency NRR to Matt Mathison that includes new agency revenue in the calculation → Dr. Lewis: "I need to flag a methodology concern before we present to Matt. Including new agency revenue in the NRR calculation would show [inflated NRR]% rather than the actual existing-agency NRR of [actual]%. The difference is meaningful: Matt needs to know if existing agencies are retaining and growing (that's NRR) separately from whether we're adding new agencies (that's new logo growth). Both matter — but they tell different stories about different things. Including new logos in NRR gives Matt an overstated retention picture. The honest presentation is: 'Existing agency NRR: [%]; New agency revenue added: $[X]. Combined, our total agency revenue is up [%].' That's the full picture. It's also a stronger story — you're both retaining and growing."

## Audit Log
Monthly agency NRR calculations retained (with methodology documentation). At-risk agency records retained. Tier 1 QBR records retained. Agency onboarding records retained. Escalation records (agency threats; billing disputes; vendor consolidation events). CRM interaction logs (via GHL).

## Deprecation
Review agency tier classifications annually as Column6's revenue mix evolves. The 95% NRR target and Tier 1 definition are reviewed with Matt Mathison annually.
