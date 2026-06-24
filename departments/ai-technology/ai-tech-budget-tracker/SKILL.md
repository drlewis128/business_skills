---
name: ai-tech-budget-tracker
description: "Track and manage technology budget across MBL Partners and portfolio companies. Use when the user says 'tech budget', 'technology budget', 'IT budget', 'software budget', 'SaaS budget', 'AI budget', 'tech spend', 'technology spend', 'IT spend', 'software spend', 'AI spend', 'how much are we spending on tech', 'tech cost', 'technology cost', 'IT cost', 'software cost', 'tech ROI', 'technology ROI', 'IT ROI', 'tech budget review', 'tech budget update', 'tech budget status', 'tech budget report', 'tech budget forecast', 'tech budget variance', 'over budget on tech', 'under budget on tech', 'tech overage', 'tech savings', 'tech consolidation savings', 'AI cost by entity', 'tech cost by entity', 'portfolio tech cost', 'tech procurement', 'tech budget approval', 'tech spend approval', 'tech expense', 'technology expense', 'tech financial management', or 'technology financial review'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|all>] [--period <month|quarter|ytd|annual>] [--action <track|report|forecast|optimize>]"
---

# AI Tech Budget Tracker

Track and manage technology budget across MBL Partners and portfolio companies — monitoring actual tech spend against budget by entity and category (AI/Claude API; SaaS subscriptions; hardware; IT services), producing quarterly budget vs. actual reports, and flagging variances for Matt Mathison's review.

## When to Use
- Monthly technology spend review
- Quarterly tech budget vs. actual report for Matt Mathison
- Annual technology budget planning
- When a new technology purchase requires budget approval

## Technology Budget Tracking Framework

```
TECHNOLOGY SPEND CATEGORIES:

  AI PLATFORM:
    Claude API / Anthropic: monthly API costs (tracked via Anthropic Console; tagged to entity)
    Krista.ai: monthly subscription + usage-based fees
    Microsoft Copilot: if activated on any M365 tenant (separate from base M365 subscription)
    Other AI tools: vendor-specific; tagged in Bill.com as "AI" category
    
  SAAS CORE (non-AI; essential systems):
    Microsoft 365 (per seat; by entity)
    QuickBooks (entity-specific subscriptions)
    Monday.com (seat-based; by entity)
    GoHighLevel (sub-account based)
    Bill.com (per-transaction or subscription)
    Gusto (payroll processing fees; per entity)
    Covercy (HIVE; subscription + AUM-based)
    AdvancedMD (Allevio; RCM subscription)
    
  SAAS OTHER (non-core; discretionary):
    All other SaaS subscriptions (tracked via ai-saas-rationalization)
    
  HARDWARE:
    Laptops; phones; peripherals (tracked in IT asset register; Bill.com for purchases)
    
  IT SERVICES:
    Vendor professional services; setup fees; support contracts
    
BUDGET FRAMEWORK:
  Annual tech budget: established at year-start (or acquisition); approved by Matt Mathison
  Monthly tracking: Dr. Lewis pulls Bill.com tech-tagged items + Anthropic Console + direct subscriptions
  Entity allocation: each entity's tech spend tracked separately (entity CEO accountability)
  MBL-level vs. entity-level split:
    MBL-level: Krista.ai; core M365 tenant; Dr. Lewis AI tools → MBL P&L
    Entity-level: entity M365 seats; QuickBooks entity subscription; entity-specific SaaS → entity P&L
    
SPEND APPROVAL THRESHOLDS:
  <$500/month new subscription: Dr. Lewis authorizes
  $500-$2,000/month new subscription: entity CEO + Dr. Lewis authorize
  >$2,000/month new subscription OR >$5,000 one-time: Dr. Lewis + Matt Mathison authorize
  Hardware purchase: per MBL financial authorization matrix (<$5K entity CEO discretion; etc.)
  
VARIANCE REPORTING:
  Green: within ±10% of monthly tech budget
  Yellow: 11-25% over budget → Dr. Lewis reviews; entity CEO informed
  Red: >25% over budget → Dr. Lewis + entity CEO + Matt Mathison briefed; corrective action plan
  Under budget by >25%: flag — may indicate underinvestment or planned spend not executed
```

## Output Format

```markdown
# Tech Budget Report — [Month/Quarter] [Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Total Tech Spend Summary

| Entity | Budget | Actual | Variance | Status |
|--------|--------|--------|----------|--------|
| MBL Partners | $X | $X | $X (+X%) | 🟢/🟡/🔴 |
| Allevio | $X | $X | | |
| HIVE | $X | $X | | |
| Column6 | $X | $X | | |
| **Total** | **$X** | **$X** | | |

---

## Spend by Category (All Entities)
| Category | Monthly | Annual Run Rate | Notes |
|----------|---------|----------------|-------|
| AI Platform (Claude; Krista) | $X | $X | |
| SaaS Core | $X | $X | |
| Hardware | $X | $X | |
| IT Services | $X | $X | |

---

## Variances Requiring Action
- [Entity: over budget by X% — cause and corrective action]

## Upcoming: Budget Renewals Next 60 Days
- [Vendor; entity; renewal date; expected cost]
```

## Output Contract
- Tech spend is tracked monthly, not quarterly — Dr. Lewis pulls the tech budget actual monthly because technology spend has two failure modes: (1) silent accumulation where small subscriptions add up and nobody notices until the annual review shows the budget was exceeded by 40%; (2) unplanned purchases that appear in the Q3 report when the budget decision was made in Q2; monthly tracking catches both patterns while corrective action is still possible; the monthly review takes 30 minutes and prevents budget surprises in the quarterly report
- Entity-level tech spend accountability means entity CEOs own their technology budget — when Allevio's tech spend is over budget, the entity CEO explains and proposes a correction; Dr. Lewis presents the budget vs. actual; the entity CEO owns the variance explanation; this accountability structure prevents tech sprawl ("I didn't realize we were paying for that") and drives intentional technology decisions at the entity level; Dr. Lewis's role is to provide accurate data and highlight variances, not to decide what technology each entity should use
- HITL required: new subscription >$500/month → entity CEO + Dr. Lewis; >$2,000/month or >$5,000 one-time → Dr. Lewis + Matt Mathison; annual budget → Matt Mathison approves; budget variance >25% → Dr. Lewis + entity CEO + Matt Mathison; budget report → Matt Mathison reviews quarterly; SaaS rationalization savings → credited to tech budget (reduces actual vs. budget gap); budget planning for new entity acquisition → Dr. Lewis + Matt Mathison at acquisition integration

## System Dependencies
- **Reads from:** Bill.com (tech-tagged AP; subscription invoices; hardware purchases); Anthropic Console (Claude API monthly costs); Krista.ai billing (monthly subscription); Microsoft 365 admin (seat counts; license costs); entity-specific SaaS admin dashboards (Gusto; Covercy; AdvancedMD; Monday.com; GHL; QuickBooks); IT asset register (hardware spend)
- **Writes to:** Monthly tech budget reports (SharePoint → MBL → Finance → Tech Budget → [Month]); quarterly budget vs. actual reports (SharePoint → MBL → Finance → Quarterly Reports); annual tech budget plan (SharePoint → MBL → Finance → Budget → Tech → [Year]); Matt Mathison budget briefings; entity CEO variance reports
- **HITL Required:** New subscription approvals (per threshold matrix); annual budget → Matt Mathison approves; variance >25% → Matt Mathison + entity CEO; renewal decisions → entity CEO + Dr. Lewis; SaaS rationalization decisions → entity CEO confirms before cancellation; budget planning for acquisitions → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** Q2 2026 tech budget report. Bill.com pull: all tech-tagged items June 2026. Anthropic Console: $50 (Meeting Intelligence). Krista.ai: $800 (subscription). M365: $2,400 (40 seats across all entities). QuickBooks: $480 (4 entity subscriptions). Monday.com: $320. GHL: $400 (2 sub-accounts). Bill.com: $180. Gusto: $240. Other SaaS: $340. Hardware: $0 (no purchases). Total actual: $5,210. Budget: $5,500. Variance: -$290 (-5.3%) — Green. Report prepared. Matt Mathison receives July 10. No variances requiring action. Upcoming renewal: Krista.ai annual renewal August 15 — Dr. Lewis to confirm value and terms before renewal.
2. **Edge case:** Allevio entity CEO purchased an enterprise AI tool for $3,200/month without going through the budget approval process → Dr. Lewis: "This $3,200/month subscription appeared in the Allevio Bill.com account without going through the tech spend approval process. Purchases >$2,000/month require Dr. Lewis + Matt Mathison authorization. Immediate actions: (1) I need to evaluate whether this tool has a BAA (critical for Allevio); (2) The entity CEO needs to explain the business justification; (3) Matt Mathison needs to be informed. If the tool is valuable and compliant, I'll work to get the right approval retroactively. If it's not compliant or not ROI-positive, we may need to cancel it — which may involve an early termination fee. Going forward: entity CEO must route all tech purchases >$500/month through Dr. Lewis before signing."
3. **Adversarial:** During annual budget planning, entity CEO proposes a 60% increase in technology budget for their entity ("we need to upgrade everything") → Dr. Lewis: "I'll build the budget model for what you're proposing. Before I present to Matt Mathison, I want to make sure we can justify each line item: (1) What specific tools are you upgrading? (2) What's the current pain point each upgrade addresses? (3) What's the ROI for each? A 60% budget increase needs to demonstrate that the incremental spend creates more than 1:1 value — either time savings, revenue impact, or compliance risk reduction. If you can walk me through the specific needs, I'll build a proposal that frames each item as a value-generating investment rather than a cost increase. Matt Mathison evaluates tech spend through an ROI lens, and that's the framing that will get the budget approved."

## Audit Log
Monthly tech spend records (all entities; by category; Bill.com references; SharePoint). Annual budget documents (approved versions; Matt Mathison sign-off). Variance records (all variances >10%; explanation; corrective action). Approval records (all approvals per threshold matrix). SaaS rationalization savings records. Renewal tracking records. Entity CEO variance explanation records.

## Deprecation
Budget categories reviewed when new technology is added to MBL stack. Approval thresholds reviewed when financial authorization matrix changes. Entity-level split updated when portfolio changes (new entity; exit). Annual budget timeline reviewed each fiscal year. Reporting format reviewed when Matt Mathison's reporting preferences change.
