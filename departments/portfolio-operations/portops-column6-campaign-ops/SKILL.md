---
name: portops-column6-campaign-ops
description: "Column6 campaign ops, campaign pacing monitor, underdelivery risk Column6, 7-day early warning underdelivery, impressions delivery tracking, campaign performance metrics Column6, CPM actuals vs sold, video completion rate tracking, make-good tracking Column6, client satisfaction signals ad tech, CTV campaign pacing, mobile campaign pacing, gaming campaign performance, Column6 weekly campaign dashboard, ad campaign ops review, campaign delivery accuracy, campaign completion review, Siprocal campaign monitor, IO delivery pacing, campaign health check Column6"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "reporting week (e.g. Week of June 23 2026), campaign ID or agency name (optional filter)"
---

# Column6 Campaign Ops

Column6 manages simultaneous in-flight campaigns across CTV, Mobile, and Gaming channels, each with contractually committed impression volumes that must deliver within the IO window or trigger make-good obligations that compress future margin. This skill produces the weekly campaign ops dashboard for the entity CEO and fires a 7-day early warning when any campaign is projected to miss its contracted delivery.

## When to Use

- Weekly campaign ops review for Column6 / Siprocal entity CEO
- Mid-campaign pacing check when a client requests a delivery update
- Post-campaign completion review for any IO flagged as at-risk during delivery
- Make-good tracking when an underdelivery has been formally acknowledged to a client
- Pre-renewal conversation requiring delivery performance history by agency

## Column6 Campaign Ops Framework

```
CAMPAIGN INVENTORY OVERVIEW
  Active campaigns by channel: CTV | Mobile | Gaming
  For each campaign: IO ID, agency, contracted impressions, flight dates, channel, sold CPM
  Total active impressions contracted across all live IOs
  Delivery window: days elapsed vs total IO duration for each campaign

PACING MONITOR
  Daily pacing % = (impressions delivered to date / contracted impressions) x (total IO days / elapsed days)
  Pacing buckets: On Track (95-105%) | Watch (85-94%) | At Risk (<85%) | Overdelivery (>105%)
  Overdelivery alert: >110% pacing may indicate trafficking error -- flag for ops review
  Pacing reported at campaign level and rolled up by channel and by agency

7-DAY UNDERDELIVERY EARLY WARNING
  Trigger: projected final delivery <95% of contracted impressions based on current pacing trend
  Projection method: linear extrapolation from last 7-day delivery average
  Alert recipients: entity CEO (immediate), account manager (immediate), Dr. Lewis (daily digest)
  Required response: account manager must submit delivery recovery plan within 24 hours of alert
  Escalation: if no recovery plan in 24 hours, Dr. Lewis notifies entity CEO directly

PERFORMANCE METRICS
  Impressions: delivered vs contracted (cumulative and daily)
  Click-through rate (CTR): actual vs benchmark by channel (CTV: N/A; Mobile: 0.3%; Gaming: 0.5%)
  Video completion rate (VCR): CTV target 85%+; Mobile target 70%+; Gaming target 60%+
  CPM actuals vs sold CPM: actuals should be within 5% of sold; variance >10% requires explanation
  Discrepancy tracking: third-party vs first-party impression count; >10% discrepancy = escalation

CLIENT SATISFACTION SIGNALS
  Client-reported performance concerns: logged with date, agency, and assigned resolution owner
  Renewal signals: IOs proposed for renewal before current IO completes = positive signal
  Complaint tracking: formal complaints (email or call) logged and triaged within 24 hours
  Account health summary: Green / Yellow / Red per agency based on satisfaction signals + pacing

MAKE-GOOD TRACKING
  Make-good trigger: final delivery below 95% of contracted impressions (per IO terms)
  Log per make-good: original IO, shortfall volume, make-good IO created, delivery status, resolution date
  Margin impact: make-good impressions deliver at near-zero direct revenue; track impact on monthly GM%
  Resolution target: make-goods completed within 60 days of original IO close date
  Open make-goods >60 days: escalate to entity CEO for client relationship decision

CAMPAIGN COMPLETION REVIEW
  Triggered when any IO reaches its end date
  Review: final delivery % vs contracted | CPM actuals vs sold | VCR vs benchmark | discrepancy
  Client report: delivery certificate issued within 5 business days of IO close
  Lessons learned: flag any campaign with delivery <95% or CPM variance >10% for post-mortem

WEEKLY CAMPAIGN OPS DASHBOARD TEMPLATE
  See Output Format section below
```

## Output Format

```markdown
# Column6 Campaign Ops Dashboard -- Week of [Date]
**Prepared by:** Dr. John Lewis | **Distribution:** Column6 Entity CEO

## BLUF
[2-3 sentences: total campaigns in flight, overall pacing health, any active early warnings or escalations]

## Campaign Pacing Summary
| Campaign / IO | Agency | Channel | Pacing % | Status | Action |
|---------------|--------|---------|----------|--------|--------|
| IO-XXXX | Agency Name | CTV | 97% | On Track | None |
| IO-XXXX | Agency Name | Mobile | 82% | AT RISK | Recovery plan due [date] |

## 7-Day Underdelivery Early Warnings
[List any campaigns triggering the <95% projected delivery threshold]
[For each: IO ID, Agency, current pacing %, projected final delivery %, recovery plan status]

## Performance Metrics Summary
| Channel | Avg CTR | Avg VCR | CPM Variance |
|---------|---------|---------|--------------|
| CTV | N/A | X% | +/-X% |
| Mobile | X% | X% | +/-X% |
| Gaming | X% | X% | +/-X% |

## Make-Good Tracker
| Original IO | Shortfall | Make-Good IO | Status | Days Open | Margin Impact |
|-------------|-----------|--------------|--------|-----------|---------------|

## Client Satisfaction
[Agency | Health Status | Signal | Action Required]

## Completed This Week
[IOs that closed this week: final delivery %, client report status, any post-mortem flagged]

## Actions Required
1. [Action -- Owner -- Due Date]
```

## Output Contract

- Every campaign below 85% pacing must appear in the dashboard with a named action owner and a deadline -- not simply a status flag. In ad tech, underdelivery is a contractual breach risk; a dashboard that lists problems without assigned recovery owners provides no operational leverage and will result in make-good obligations that compress margin for the following month.
- The 7-day early warning must trigger automatically based on the pacing projection calculation, not on subjective assessment. The 95% threshold is the contractual floor for most IOs, so the early warning at projected <95% provides a 7-day intervention window -- if the warning is discretionary it will be suppressed by account managers who are optimistic about recovery and the make-good obligation will materialize regardless.
- Make-good tracking must include the margin impact column because make-goods are a direct drag on monthly gross margin and must be visible in the revenue monitor as well. Disconnecting make-good volume from margin reporting creates a situation where the entity CEO believes delivery is healthy while gross margin is eroding from invisible make-good fulfillment.

## System Dependencies

**Reads from:** Column6 ad serving platform (delivery data), IO management system (contracted volumes and flight dates), third-party verification (discrepancy data), CRM (client satisfaction signals)
**Writes to:** Weekly campaign ops dashboard (entity CEO distribution), 7-day early warning alerts (entity CEO + account manager), make-good tracker, campaign completion reviews
**HITL Required:** Make-good acknowledgment to client (entity CEO approval); escalation of unresolved make-goods >60 days (Dr. Lewis decision); any CPM discrepancy >10% (entity CEO + Dr. Lewis review)

## Test Cases

- **Golden path:** 12 active campaigns, all pacing 95-102%, no early warnings, two IOs completed with 98%+ delivery and client reports issued on time -- dashboard is clean green with zero escalations.
- **Edge case:** A CTV campaign pacing at 92% at day 10 of a 14-day IO has no realistic recovery path due to inventory constraints; skill must project final delivery, fire the early warning, and note that recovery is mathematically impossible within the IO window so make-good planning should begin immediately.
- **Adversarial:** An account manager manually marks a campaign as "On Track" in the CRM despite pacing data showing 78% -- skill must use the pacing calculation from delivery platform data, not the CRM flag, so that human override cannot suppress an objective early warning.

## Audit Log

Every weekly dashboard is logged with: generation timestamp, report week, number of campaigns in each pacing bucket, number of early warnings fired, make-good register state at time of report, and the entity CEO confirmation of receipt. Early warning alerts are individually logged with the timestamp fired, the projected delivery % that triggered the alert, the account manager notified, and whether a recovery plan was submitted within the 24-hour window.

## Deprecation

This skill is deprecated when Column6 implements a real-time campaign operations platform with automated pacing dashboards, alerting, and make-good workflow management built into its ad serving infrastructure -- at that point this skill's role reduces to a weekly exception report for Dr. Lewis rather than a full dashboard production workflow.

---
*MBL Partners Portfolio Operations -- Column6 / Siprocal Campaign Intelligence*
*HITL Chain: Dr. Lewis > Column6 CEO > Matt Mathison*
