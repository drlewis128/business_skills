---
name: partner-channel-plan
description: "Build or evaluate a partner or channel sales strategy. Use when the user says 'partner program', 'channel strategy', 'reseller', 'referral partners', 'partner plan', 'indirect sales', 'partner ecosystem', 'build a partner channel', or 'how do we grow through partners'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <referral|reseller|technology|integration>] [--stage <build|evaluate|optimize>]"
---

# Partner / Channel Plan

Build or evaluate a partner and channel sales strategy. Channel revenue is high-leverage — the right partner brings a trusted relationship, industry expertise, and existing customer access that would take years to build directly. The wrong partner is a distraction.

## When to Use
- Building a partner program from scratch
- Evaluating an existing partnership for ROI and continuation
- Deciding whether to invest in channel vs. direct sales
- A partner wants to resell or refer your product
- Annual partner review and program design for Matt Mathison

## Partner Types

| Type | Description | Revenue Model |
|------|-------------|--------------|
| **Referral partner** | Introduces prospects; we close | Referral fee (5-15% of ACV, one-time) |
| **Reseller / VAR** | Sells our product as part of their offering | Reseller margin (15-30% discount) |
| **Technology partner** | Integration that creates mutual value | Co-marketing; revenue share varies |
| **Strategic partner** | Deep relationship; co-selling or co-building | Custom arrangement |

## Partner Evaluation Framework

Score prospective partners on:

| Criterion | Weight | Questions to Answer |
|-----------|--------|-------------------|
| Market access | 25% | Do they have access to our ICP at scale? How many relevant relationships? |
| Credibility and trust | 20% | Are they respected in the target market? Would customers trust their recommendation? |
| Alignment | 20% | Is our product complementary (not competitive) to what they do? |
| Commitment | 20% | Will they actively promote us, or are we just a footnote in their catalog? |
| Economics | 15% | Can we structure a deal that makes sense for both parties? |

**Partner Score > 75%: Pursue**
**Partner Score 50–74%: Pilot (limited investment)**
**Partner Score < 50%: Decline politely**

## Partner Program Economics

### Referral Model
```
Referral fee = 8-12% of Year 1 ACV (standard)
Example: $80K ACV deal → $6,400-$9,600 referral fee
No referral fee on renewal (referral credit is for the new deal)
```

### Reseller Model
```
Reseller discount = 20-25% off list price (typical)
Partner sells to end customer at list; keeps margin
Example: $100K list → partner pays $75-80K → partner earns $20-25K margin
Support: Partner owns the relationship; we support the product
```

## Output Format

```markdown
# Partner / Channel Plan — <Entity>
**Date:** <date> | **Program type:** <referral/reseller/technology/strategic>

---

## Program Objectives

| Objective | Target | Timeline |
|-----------|--------|---------|
| Partner-sourced revenue | $<N> (X% of total revenue) | <year> |
| Number of active partners | <N> | <date> |
| Average revenue per partner | $<N> | |

---

## Partner Ideal Profile

**Industry/vertical focus:** <where we want partner coverage>
**Partner type:** <What kind of companies make good partners>
**Excluded:** <Partner types that are competitive or conflict-of-interest>

**Target partner traits:**
- Has established relationships with our ICP
- Serves customers we can't reach efficiently with direct sales
- Complements (does not compete with) our core offering
- Has a sales-oriented team that can actively promote

---

## Partner Evaluation Scorecard

| Partner | Market Access | Credibility | Alignment | Commitment | Economics | Total Score | Decision |
|---------|-------------|------------|----------|-----------|----------|------------|---------|
| <Name> | X/25 | X/20 | X/20 | X/20 | X/15 | X/100 | Pursue / Pilot / Decline |

---

## Program Structure

### Partner Benefits
- Referral fee / reseller margin: <details>
- Co-marketing support: <what we provide>
- Sales support: <what we provide>
- Training: <what we offer>

### Partner Obligations
- Minimum referrals / revenue: <threshold>
- Training completion: <required certifications>
- CRM reporting: <how they track referrals>

### Deal Registration Process
1. Partner registers deal in [system]
2. We confirm no existing relationship with the account
3. Partner receives 45-day exclusivity on registered deal
4. Close and pay referral fee within 30 days of invoice payment

---

## Active Partner Performance Tracker

| Partner | Deals Registered | Deals Closed | Revenue | Status |
|---------|----------------|-------------|---------|--------|
| <Name> | <N> | <N> | $<N> | 🟢 Active |
| <Name> | <N> | <N> | $<N> | 🟡 Low activity |

## 90-Day Partner Launch Plan

| Action | Owner | Due |
|--------|-------|-----|
| Identify and outreach to top 5 partner candidates | Rep / Dr. Lewis | <date> |
| Partner agreements drafted | Legal | <date> |
| Partner onboarding materials created | Sales / Marketing | <date> |
| First partner training session | Manager | <date> |
```

## Output Contract
- Partner evaluation score always calculated before partnership commitment — no handshake deals
- Program economics always modeled — what does partner revenue cost and what does it produce?
- Partner obligations always defined — a partner program with no accountability is a marketing program, not a sales channel
- HITL required: Dr. Lewis and Matt Mathison approve all partner agreements; Legal reviews partner contracts; Finance reviews revenue share structure

## System Dependencies
- **Reads from:** Target market data, partner intelligence, product positioning (provided)
- **Writes to:** Nothing (plan for HITL review and legal execution)
- **HITL Required:** Dr. Lewis approves all active partner pursuits; Matt Mathison approves partner agreements > $50K potential; Legal reviews all partner contracts

## Test Cases
1. **Golden path:** Building referral partner program for MBL entity, targeting accountants and wealth managers → partner profile, 3 candidate evaluations, referral fee structure at 10% Year 1 ACV, deal registration process, 90-day launch plan
2. **Edge case:** Partner proposes to resell at 40% margin (double standard) → evaluates the economics, recommends counter at 25%, surfaces that 40% makes the program economically unviable, suggests alternative structure
3. **Adversarial:** Request to sign a partner agreement with a company that is a direct competitor in a specific market segment → flags conflict of interest, recommends clear exclusion clause or declining partnership, escalates to legal review

## Audit Log
Partner agreements and performance data retained by partner and year. Revenue attribution tracked through deal registration.

## Deprecation
Retire when partner relationship management (PRM) platform manages partner program enrollment, deal registration, revenue tracking, and performance reporting.
