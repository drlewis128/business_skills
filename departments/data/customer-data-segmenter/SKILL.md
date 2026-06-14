---
name: customer-data-segmenter
description: "Segment customer data for targeted analysis and actions. Use when the user says 'customer segmentation', 'segment our customers', 'group customers by', 'which customers are most valuable', 'customer tiers', 'customer analysis', 'RFM analysis', 'segment the portfolio', 'customer groups', or 'cluster customers'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--method <rfm|tier|behavioral|industry>] [--company <MBL|Allevio|HIVE|Column6>]"
---

# Customer Data Segmenter

Segment customer data to identify the most valuable customers, the most at-risk customers, and the patterns that distinguish each group. Unsegmented customer data treats a $500K/year client the same as a $10K/year trial client. Segmentation makes targeted decisions possible — different retention strategies, different upsell approaches, different support levels. For MBL, customer segmentation applies to portfolio company customers, not just MBL's own clients.

## When to Use
- Understanding which customers to prioritize for retention
- Planning an upsell or expansion campaign
- CS team needs to differentiate their approach by segment
- Portfolio company assessment — how do they think about their customer base?
- Building a customer health score — start with segmentation

## Segmentation Methods

```
RFM (Recency, Frequency, Monetary):
  Recency: When did the customer last engage or transact?
  Frequency: How often do they engage or transact?
  Monetary: How much revenue do they generate?
  Use for: E-commerce, subscription, transactional businesses
  Output: Champions / Loyal / At Risk / Lost segments

Tier-based:
  Tier 1 / Enterprise: Highest revenue; strategic accounts
  Tier 2 / Mid-market: Medium revenue; scalable relationship
  Tier 3 / SMB: Lowest revenue; high volume; self-serve focus
  Use for: B2B SaaS; account-based sales and CS strategies

Behavioral:
  Power users vs. occasional users vs. passive users
  Based on product engagement metrics (sessions, features used, actions taken)
  Use for: Product-led companies; AI products (useful vs. token users)

Industry/persona:
  Group by industry, company size, or buyer persona
  Use for: Sales territory design; content personalization; ICP refinement
```

## Output Format

```markdown
# Customer Segmentation Analysis — <Company>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Segmentation method:** RFM / Tier-based / Behavioral / Industry
**Data source:** GoHighLevel / QuickBooks / Product analytics
**Total customers analyzed:** <N>

---

## Segmentation Results

### Tier-Based Segmentation

| Tier | ARR threshold | Customer count | % of customers | % of total ARR | Notes |
|------|-------------|--------------|--------------|--------------|-------|
| Tier 1 (Enterprise) | >$200K ARR | <N> | <N>% | <N>% | Strategic accounts; white-glove |
| Tier 2 (Mid-market) | $50K-$200K ARR | <N> | <N>% | <N>% | Growth accounts; CS-led |
| Tier 3 (SMB) | <$50K ARR | <N> | <N>% | <N>% | Self-serve; tech touch |

**Revenue concentration:** Top 10 customers = <N>% of total ARR (target: <50%)

---

### RFM Segmentation (if transactional business)

| Segment | Recency | Frequency | Monetary | Count | % of total | Strategy |
|---------|---------|---------|---------|-------|-----------|---------|
| Champions | <30 days | High | High | <N> | <N>% | Expand; ask for referrals |
| Loyal customers | 30-90 days | Medium | High | <N> | <N>% | Upsell opportunity |
| At risk | >90 days | Low | Medium | <N> | <N>% | Win-back campaign |
| Lost | >180 days | None | Low | <N> | <N>% | Exit survey; write off |

---

### Behavioral Segmentation (for AI/product)

| Segment | Definition | Count | % | Revenue | Health |
|---------|-----------|-------|---|---------|--------|
| Power users | ≥3 sessions/week; core feature used daily | <N> | <N>% | <N>% | Excellent |
| Regular users | 1-2 sessions/week; core feature used weekly | <N> | <N>% | <N>% | Good |
| Passive users | <1 session/week; rarely uses core feature | <N> | <N>% | <N>% | At risk |
| Churned users | No session in 30+ days | <N> | <N>% | <N>% | Lost |

**Aha moment by segment:** Power users completed action item creation in Session 1 at 88% rate; Passive users: 22%
**Implication:** Get passive users to action item creation in Session 1 → predicted to improve to Regular

---

## Segment Profiles

### Tier 1 (Enterprise) Profile
**Who they are:** <Characteristic description — role, company type, use case>
**Why they're valuable:** <What drives their ARR; strategic value beyond revenue>
**How they're different:** <What makes this segment distinct>
**Risks:** <What could cause them to churn>
**Strategy:** White-glove CS; quarterly business reviews; expansion roadmap; advocate development

---

## Segment Actions

| Segment | Recommended action | Owner | Target metric | Timeline |
|---------|------------------|-------|------------|---------|
| Tier 1 | Quarterly executive business review | CS lead | NRR >110% | This quarter |
| Behavioral: Passive | Activation campaign: action item creation CTA | Dr. Lewis | Power user conversion: 15% | 60 days |
| RFM: At Risk | Win-back sequence: 3-touch email | CS | Reactivation: 25% | 30 days |
| RFM: Champions | Referral ask: incentivized | Sales | 2 new referrals | 30 days |

---

## Segment Tracking (quarterly update)

| Segment | Q1 count | Q2 count | Trend | Action |
|---------|---------|---------|-------|--------|
| Champions | 8 | 10 | ↑ +25% | Maintain referral program |
| Loyal | 15 | 13 | ↓ -13% | Investigate movement to At Risk |
| At Risk | 6 | 9 | ↑ +50% | Win-back campaign urgently |
```

## Output Contract
- Segmentation always connected to action — segments without recommended actions are academic
- Revenue concentration always calculated — knowing that 3 customers = 60% of ARR is critical portfolio risk information
- Behavioral segmentation always for AI/product customers — tier-based alone misses engagement quality
- Quarterly tracking always planned — a one-time segmentation without ongoing tracking provides limited value
- HITL required: Dr. Lewis reviews segmentation analysis; segment-based action campaigns reviewed by Dr. Lewis before execution; Matt Mathison informed of significant concentration risks or segment shifts

## System Dependencies
- **Reads from:** QuickBooks (ARR by customer), GoHighLevel (customer contacts, deal history), product analytics (engagement data)
- **Writes to:** Segmentation analysis (SharePoint/Data/Customers); CRM tags (GoHighLevel); CS action plan
- **HITL Required:** Dr. Lewis approves; campaigns based on segments reviewed by Dr. Lewis before sending; HIPAA: Allevio customer data never included in cross-portfolio segmentation

## Test Cases
1. **Golden path:** MBL portfolio company customer segmentation → Tier-based: 2 Tier 1 clients (>$200K ARR), 8 Tier 2, 14 Tier 3; concentration: top 2 = 38% of ARR (acceptable); behavioral: 22% power users, 45% regular, 28% passive, 5% churned; Action: Tier 1 QBR in Q3; passive user activation campaign; champion referral ask; track quarterly
2. **Edge case:** A portfolio company has only 5 customers — segmentation seems unnecessary → even with 5 customers, tier-based segmentation tells you which 1-2 to protect at all costs and which 3 need different strategies; with small N, make it behavioral/qualitative rather than statistical; conduct individual customer profiles rather than statistical analysis
3. **Adversarial:** CS team wants to treat all customers the same ("they're all important") → equal treatment of unequal customers is the most common CS inefficiency; a Tier 1 customer at $250K ARR should get QBRs, executive attention, and product roadmap input; a Tier 3 customer at $12K ARR should get excellent product + self-serve support; treating them the same means overserving one and underserving both; segmentation enables appropriate resource allocation, not discrimination

## Audit Log
Segmentation analyses retained quarterly. Segment migrations (customer moving tiers) tracked. Campaign results linked to segments.

## Deprecation
Retire when MBL has a dedicated CS analytics function with automated customer health scoring and segmentation that refreshes continuously.
