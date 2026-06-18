---
name: sales-retention-tracker
description: "Track and manage customer retention for MBL portfolio companies. Use when the user says 'retention', 'customer retention', 'churn', 'churn rate', 'churned account', 'customer churn', 'who churned', 'churn analysis', 'retention rate', 'GRR', 'gross retention', 'net retention', 'NRR', 'net revenue retention', 'retention tracking', 'at-risk customer', 'customer health', 'churn prevention', 'reduce churn', 'track churn', 'retention report', 'retention metrics', 'customer loss', 'why did they leave', 'lost a customer', or 'account churn analysis'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly|annual>] [--action <report|analyze|alert|prevent>] [--account <specific churned or at-risk account>]"
---

# Retention Tracker

Track and manage customer retention for MBL portfolio companies — monitoring health signals, calculating retention metrics, and triggering intervention when churn risk is detected. Customer retention is the foundation of sustainable revenue; a business with a 90% gross retention rate compounds its revenue base every year; a business with 70% retention is running to stay in place. Dr. Lewis tracks retention systematically across the portfolio.

## When to Use
- Monthly retention metrics report (GRR; NRR; at-risk accounts)
- An account is showing churn signals (before they give notice)
- An account has churned (post-churn analysis — why did they leave?)
- Annual retention planning (what is the renewal forecast?)
- Matt Mathison requesting a portfolio-level retention summary

## Retention Tracking Framework

```
RETENTION METRICS DEFINITIONS:

  GRR (Gross Retention Rate):
    Formula: (Beginning ARR − Lost ARR) ÷ Beginning ARR × 100
    Does NOT count upsells or expansions — pure measure of lost revenue
    Target: >90% Allevio; >70% Column6 (Column6 is IO-based; more transactional)
    HIVE: Track lease retention rate (% of leases that are renewed at term end)
    
  NRR (Net Revenue Retention):
    Formula: (Beginning ARR + Expansion ARR − Lost ARR − Downgrade ARR) ÷ Beginning ARR × 100
    DOES count upsells and expansions; target: >100% (the company grows without new logos)
    Example: $1M ARR at start; $100K in expansions; $80K in churn = NRR of 102%
    
  Monthly tracking:
    □ Total ARR at start of month
    □ New ARR added (new logos closed)
    □ Expansion ARR (upsells; member count increases)
    □ Churned ARR (accounts that terminated this month)
    □ Total ARR at end of month
    
AT-RISK SIGNAL MONITORING (weekly review):

  ALLEVIO — At-Risk Signals:
    □ Champion (HR Director) left the company → Escalate immediately
    □ Member count declining 3+ months in a row → Flag; call the HR Director to understand
    □ Claim ratio trend increasing (>85%) → Clinical team review; proactive call
    □ 60+ days without any logged contact activity → Rep must call this week
    □ Open complaint not resolved within 30 days → CEO alert
    □ Competitor quote received (prospect mentions comparing to a competitor) → CEO-led call
    □ Late payment (>30 days past due) → Finance + Dr. Lewis review; may signal financial stress
    □ Non-renewal notice given → Immediately escalate to CEO; do not let this sit
    
  COLUMN6 — At-Risk Signals:
    □ Agency goes 90+ days without booking a new IO → Warm call; re-engagement attempt
    □ Campaign completion rate fell below 85% in the last IO → Proactive service call before the next ask
    □ Agency contact changed (new media buyer assigned) → Re-introduce Column6 immediately
    □ Agency is consolidating to a smaller vendor list → Investigate immediately
    
CHURN RESPONSE PROTOCOL:
  When at-risk signals are detected:
    Step 1: Assign a health score of Yellow or Red immediately in CRM
    Step 2: Rep notifies Dr. Lewis within 24 hours
    Step 3: Dr. Lewis determines the intervention:
      Yellow: Rep increases contact cadence; QBR moved up if possible
      Red: CEO leads the retention conversation personally (see sales-renewal-manager)
    Step 4: If the customer gives a non-renewal notice:
      Dr. Lewis and CEO review within 24 hours — what is the retention strategy?
      CEO calls the customer personally within 48 hours
      Matt Mathison notified if the churning account is >$100K ACV

POST-CHURN ANALYSIS (required for every churned account):
  Document within 30 days of the churn date:
    □ What was the stated reason? (Price; service quality; competitor; business change)
    □ What was the real reason? (Often different from the stated reason)
    □ When did the at-risk signals first appear? (Early warning failure?)
    □ Did we try to save the account? (What did we do?)
    □ What would we do differently? (Specific process change)
    □ Is this account winnable back in 12-24 months? (Add to the re-engagement pipeline)
  Post-churn analysis reviewed by Dr. Lewis and CEO; material findings shared with Matt Mathison

RETENTION LEVERS — IN PRIORITY ORDER:
  1. Prevent at-risk accounts from reaching non-renewal: The QBR cadence; the renewal timeline;
     the health score monitoring — these are all preventive retention tools
  2. Intervene early: A customer who is Yellow at Month 10 and gets CEO attention has a much
     higher save rate than a customer who is Yellow at Month 11.5 and gets CEO attention
  3. Win-back (if they've already left): Re-engage after 12-18 months; circumstances may change
     (new HR Director; carrier rate increase; bad experience with the new vendor)
```

## Output Format

```markdown
# Retention Report — [Entity] | [Month/Quarter YYYY]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Reviewed with:** CEO + Matt Mathison (if requested)

---

## Retention Metrics

| Metric | Target | [Period] actual | Status |
|--------|--------|----------------|--------|
| GRR | >90% | [X]% | 🟢 / 🟡 / 🔴 |
| NRR | >100% | [X]% | 🟢 / 🟡 / 🔴 |
| Churned accounts | 0 | [N] | 🟢 / 🟡 / 🔴 |
| Churned ARR | $0 | $[X]K | 🟢 / 🟡 / 🔴 |
| At-risk (Yellow) | 0 | [N] | 🟢 / 🟡 / 🔴 |
| At-risk (Red) | 0 | [N] | 🟢 / 🟡 / 🔴 |

---

## At-Risk Accounts

| Account | Health | Signal | ARR at risk | Action | Owner |
|---------|--------|--------|------------|--------|-------|
| [Company A] | 🔴 Red | Non-renewal notice received | $[X]K | CEO-led call this week | CEO |
| [Company B] | 🟡 Yellow | Champion departed 3 weeks ago | $[X]K | New intro call scheduled | Rep |

---

## Churned Accounts (if any)

| Account | Churn date | ARR lost | Stated reason | Real reason | Win-back potential |
|---------|-----------|---------|--------------|------------|------------------|
| [Company X] | [Date] | $[X]K | "Switching to carrier for simplicity" | Unresolved billing dispute + new HR Director | 18 months |

---

## Retention Actions

| Action | Owner | Due | Priority |
|--------|-------|-----|---------|
| CEO calls [Company A] | CEO | This week | Critical |
| Rep re-engages [Company B] new HR Director | Rep | Within 2 weeks | High |
| Post-churn analysis: [Company X] | Dr. Lewis | Within 30 days | Medium |
```

## Output Contract
- GRR and NRR are the lagging indicators — the leading indicators are the at-risk signals; a business with a 91% GRR is fine; a business with 5 Yellow accounts entering a quarter is a 91% GRR about to drop; Dr. Lewis monitors the at-risk signals weekly and treats Yellow and Red accounts as the primary retention management task, not as items to review at the next QBR
- Post-churn analysis is mandatory — every churned account has a lesson; some lessons are "this customer was always going to leave (wrong ICP; financial stress; business closure)"; some lessons are "we had signals 6 months ago and didn't act"; the distinction matters for process improvement; Dr. Lewis writes a post-churn analysis for every churned account above $50K ACV within 30 days of the churn date; the analysis is reviewed with the CEO
- CEO leads at-risk retention calls — the CEO's involvement in a retention call sends a signal that the company values the relationship; a rep-led retention call on a high-value at-risk account is less effective than a CEO-led call; Dr. Lewis alerts the CEO immediately when any account reaches Red status; the CEO decides the retention strategy; Dr. Lewis prepares the briefing
- HITL required: Rep monitors contact cadence and surfaces at-risk signals; Dr. Lewis assigns health scores and triggers interventions; CEO leads Red account retention calls; Matt Mathison notified when churned ARR exceeds $100K in a quarter; Dr. Lewis does not let non-renewal notices sit for more than 24 hours without CEO notification; any retention incentive (pricing discount to save an account) requires CEO authorization before it is offered; Dr. Lewis does not offer a discount without CEO approval

## System Dependencies
- **Reads from:** CRM account activity log (GoHighLevel — contact frequency; last activity; open issues); member count (Allevio AdvancedMD — member trend by account); Column6 IO history (last booking date; campaign completion rates); QuickBooks (payment history — late payments); account health scores (sales-account-plan); QBR notes (sales-qbr-framework — what did the customer say?); sales-renewal-manager (renewal dates; at-risk flags)
- **Writes to:** Retention report (SharePoint/Sales/<Company>/Retention/[YYYY-MM]_RetentionReport.pdf); CRM health score (GoHighLevel — Yellow or Red flag with signal and owner); CEO at-risk alert (same-day when Red is detected); Matt Mathison churn alert (when ARR loss >$100K); post-churn analysis (SharePoint/Sales/<Company>/Retention/PostChurn/[Account]_[Date]_Analysis.pdf); win-back pipeline (CRM — churned accounts flagged for re-engagement in 12-18 months); sales-kpi-dashboard (GRR; NRR monthly)
- **HITL Required:** Rep monitors and surfaces signals; Dr. Lewis assigns health scores and triggers interventions; CEO leads Red calls; Matt Mathison notified of material churn; CEO authorizes retention incentives; Dr. Lewis does not offer a pricing concession to save an account without CEO approval; no retention call with a Red account happens without Dr. Lewis briefing the CEO first

## Test Cases
1. **Golden path:** Monthly retention review for Allevio — 22 active accounts → Dr. Lewis reviews: GRR: 95.2% (1 account churned last month — $8K ACV; outside ICP size; expected); NRR: 107% (including 3 member count expansions totaling $42K); At-risk: 1 Yellow (champion left; new HR Director contacted last week by the rep; intro meeting scheduled next week); 0 Red; report published; CEO reviews; satisfied with retention metrics; Matt Mathison not required (no material churn); post-churn analysis for the churned account: "12-employee company — always below our 25-employee ICP minimum; shouldn't have been in the pipeline originally; update the ICP filter in GoHighLevel to prevent below-minimum accounts from being onboarded"
2. **Edge case:** Three Allevio accounts simultaneously show at-risk signals in the same week (champion left at Account A; claim ratio spiking at Account B; non-renewal notice from Account C) → Dr. Lewis: "BLUF: Three at-risk situations this week — combined ARR at risk is $[X]K. CEO needs to be briefed on all three today. Actions by priority: (1) Account C: Non-renewal notice — CEO calls today; non-renewal reversal attempt required; Dr. Lewis prepares the retention briefing now; (2) Account A: Champion left — rep calls the CFO today; Dr. Lewis and CEO follow up next week with a personal note; (3) Account B: Claim ratio spiking — clinical team review within 48 hours; proactive call from the account manager with the data and a plan to address the trend. I'll prepare briefs for the CEO on all three before 5pm today." CEO engaged; all three addressed
3. **Adversarial:** An Allevio customer gives a non-renewal notice and the account manager tries to negotiate the renewal themselves without notifying Dr. Lewis or the CEO → Dr. Lewis when it comes to light: "This needs to stop immediately. A non-renewal notice on a $[X]K ACV account is a CEO-level event — the CEO should have been notified within 24 hours. The rep has been in negotiations for 5 days without backup. Whatever the rep has discussed is not binding — we haven't offered any retention incentive without CEO authorization. Let's schedule a call with the customer today, bring in the CEO, and reset the conversation. Going forward: any non-renewal notice must be reported to Dr. Lewis within 4 hours of receipt. This is not optional." Rep corrected; CEO joins the retention conversation; renewal saved with a modest 2-year term commitment (no price reduction)

## Audit Log
All retention reports retained by entity and period. At-risk signal records retained. Post-churn analyses retained. CEO alert records retained. Matt Mathison notifications retained. Retention incentive approval records retained (what was offered; CEO approval; outcome). Win-back pipeline records retained.

## Deprecation
Retire when each portfolio company has a dedicated Customer Success Manager who monitors account health and a Revenue Operations function that produces the retention report — with Dr. Lewis reviewing GRR/NRR quarterly and Matt Mathison receiving the monthly portfolio retention summary.
