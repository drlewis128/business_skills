---
name: securities-compliance-tracker
description: "Track securities law and investment compliance for MBL Partners. Use when the user says 'securities compliance', 'SEC', 'investment advisor', 'Form ADV', 'accredited investor', 'private placement', 'Reg D', 'LP investor', 'fund compliance', 'SEC registration', 'securities offering', 'investment company', or 'securities laws'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity MBL|HIVE] [--mode <assess|filing|LP-reporting>] [--topic <registration|exemption|LP>]"
---

# Securities Compliance Tracker

Track securities law and investment compliance for MBL Partners and its LP-funded entities (HIVE Partners). Private equity firms, fund managers, and entities that raise capital from outside investors operate within a complex securities law framework. Whether MBL Partners is required to register as an Investment Adviser, whether HIVE's LP interests are securities, and what exemptions apply are questions that require outside securities counsel — but this skill maintains the tracking framework and flags when counsel must be engaged.

## When to Use
- Annual securities compliance review
- Adding new LP investors to HIVE Partners or any fund vehicle
- Before any capital raise or securities offering
- Assessing Investment Adviser Act registration requirements for MBL Partners
- Form ADV filing or amendment (if registered)

## KEY DISCLAIMER

```
Securities law is highly technical and fact-specific. This skill provides a 
tracking framework and issue identification — it does not provide securities 
law advice. Any securities compliance question requires review by outside 
securities counsel before action.

CRITICAL: Selling unregistered securities without a valid exemption is 
a federal crime. Any capital raise must be reviewed by securities counsel 
before proceeding.
```

## MBL Partners Securities Law Analysis

| Issue | Analysis Framework | Action |
|-------|------------------|--------|
| **Investment Adviser Registration** | If MBL Partners receives compensation for investment advice and manages LP funds: likely requires SEC or state IA registration unless an exemption applies | Engage securities counsel to assess IA registration requirement |
| **Exempt Reporting Adviser (ERA)** | If managing private funds but below $150M AUM threshold: may qualify as ERA (files truncated Form ADV) | Assess with securities counsel |
| **HIVE LP interests as securities** | LP interests in HIVE Partners are likely securities under federal law | Private placement exemption (Reg D) required for each new investor |
| **Reg D / Rule 506(b) exemption** | Most common PE/fund exemption: up to 35 non-accredited investors; unlimited accredited investors; no general solicitation | Confirm all LP investors qualify and proper Form D filed |
| **Accredited investor verification** | New SEC requirements (2020) expand who qualifies; must verify investor status | Verify each investor meets accredited investor definition |

## Accredited Investor Standards (2024)

```
Individual qualifies as accredited investor if:
  ✅ Net worth > $1 million (excluding primary residence) individually or 
     with spouse/spousal equivalent, OR
  ✅ Annual income > $200K individually (or $300K joint) for past 2 years 
     with reasonable expectation of same current year, OR
  ✅ Holds in good standing Series 7, 65, or 82 securities license, OR
  ✅ Is a "knowledgeable employee" of the fund, OR
  ✅ Is an SEC/FINRA-registered investment adviser

Entity qualifies if:
  ✅ All equity owners are accredited investors, OR
  ✅ Assets > $5 million (various entity types)
```

## Output Format

```markdown
# Securities Compliance Assessment — MBL Partners / HIVE Partners
**Date:** <date>
**Prepared by:** Dr. John Lewis / Outside Securities Counsel

---

## DISCLAIMER: Securities Counsel Required
This assessment identifies issues and tracks compliance status. Any securities compliance decision requires review and sign-off by outside securities counsel before action.

---

## Investment Adviser Act Assessment

| Question | Answer | Implication |
|---------|--------|------------|
| Does MBL receive compensation for investment advice? | Yes / No | If yes → IA Act likely applies |
| Does MBL manage private fund assets? | Yes / No | |
| AUM in LP fund vehicles? | $<amount> | >$150M → SEC registration; <$150M → state IA or ERA |
| Number of private fund clients? | <N> | |

**IA Registration Status:** Registered / Exempt Reporting Adviser / No Registration Required / Assess with Counsel

---

## HIVE Partners — Securities Compliance

| Issue | Status | Action |
|-------|--------|--------|
| LP interests treated as securities | ✅ Confirmed | Require valid exemption for each offering |
| Reg D offering active? | Yes / No | If yes — confirm Form D filed and current |
| Form D (Notice of Exempt Offering) filed? | ✅ / ❌ | File within 15 days of first sale if offering is active |
| All investors accredited? | ✅ / ❌ / 🟡 Verify | Must be verified for Rule 506(b) |
| General solicitation used? | No | Rule 506(b): no general solicitation; 506(c): allowed but verification required |

---

## LP Investor Registry

| Investor | Accredited Status | Verified? | Verification Date | Amount Invested | Notes |
|---------|----------------|---------|-----------------|--------------|-------|
| [LP 1] | Individual — income | ✅ | <date> | $<amount> | |
| [LP 2] | Entity — >$5M assets | ✅ | <date> | $<amount> | |
| [LP 3] | | ❌ Not verified | | | Verify before next capital call |

---

## Regulatory Filings

| Filing | Entity | Requirement | Due | Status |
|--------|--------|-----------|-----|--------|
| Form D (Reg D offering) | HIVE Partners | Within 15 days of first sale; annual amendment | <date> | ✅ / ❌ |
| Form ADV (if IA registered) | MBL Partners | Annual amendment within 90 days of fiscal year end | <date> | N/A / ✅ / ❌ |
| State IA registration | MBL Partners (AZ) | If below federal threshold | | Assess |

---

## LP Reporting Obligations

| Report | Recipient | Frequency | Due | Status |
|--------|---------|---------|-----|--------|
| Quarterly operations update | All LPs | Quarterly | 45 days after quarter end | 🟡 Q1 due |
| Annual financial statements | All LPs | Annual | 120 days after fiscal year end | 📅 |
| K-1 tax documents | All LPs | Annual | March 15 (or extended) | 📅 |
| Material event notices | All LPs | As needed | Promptly | |
```

## Output Contract
- Securities counsel engagement always required before any capital raise or LP investor addition — non-negotiable
- Form D always filed within 15 days of first sale for active Reg D offerings — late filing is an SEC violation
- Accredited investor verification always completed before accepting investment — unverified investors in a 506(b) offering create the offering's exemption
- IA registration always assessed annually — MBL's activities may cross the registration threshold as AUM grows
- HITL required: Outside securities counsel reviews all securities compliance matters; Dr. Lewis coordinates; Matt Mathison approves all capital raise and investor decisions; LP communications reviewed by securities counsel before distribution

## System Dependencies
- **Reads from:** HIVE LP agreements, investor subscription documents, EDGAR (SEC filings), state IA registration status (provided by outside securities counsel)
- **Writes to:** Securities compliance assessment (for Dr. Lewis, outside securities counsel, and Matt Mathison)
- **HITL Required:** Outside securities counsel owns all securities compliance determinations; Dr. Lewis coordinates; Matt Mathison approves; no capital raise without securities counsel sign-off

## Test Cases
1. **Golden path:** Annual securities compliance review → HIVE Form D current for active offering, all 8 LP investors verified as accredited (documentation on file), Q1 LP report 3 days late (send now), MBL Partners IA registration not required at current AUM (but approaching threshold — monitor), Form ADV not required (no SEC registration)
2. **Edge case:** New LP investor interested in HIVE — is a company a qualified investor? → analyze: is the entity an accredited investor (>$5M assets or all equity owners are accredited)? Require investor questionnaire and supporting documentation; do not accept capital without securities counsel confirmation
3. **Adversarial:** Someone wants to "tell people about the HIVE investment opportunity" on social media → this is general solicitation — fatal to a Rule 506(b) offering; if general solicitation has occurred, the 506(b) exemption may be blown; engage securities counsel immediately before any further marketing; if offering has been generally solicited, may need to switch to 506(c) with mandatory accredited investor verification

## Audit Log
LP investor registry maintained. Accredited investor verification documents retained. Form D filings documented. LP reports retained. IA registration assessment retained annually.

## Deprecation
Retire when MBL engages a dedicated fund administrator or hires in-house securities counsel who owns securities compliance for the portfolio.
