---
name: fpa-financial-risk-modeler
description: "Identify and quantify financial risks for portfolio companies. Use when the user says 'financial risk', 'risk analysis', 'risk register', 'risk model', 'financial risk assessment', 'quantify the risk', 'what could go wrong', 'risk identification', 'downside risk', 'risk management', 'financial exposure', 'risk framework', 'key financial risks', 'risk reporting', 'risk monitoring', 'risk mitigation', 'what are our risks', 'financial risk register', 'risk quantification', or 'scenario risk analysis'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--risk-category <market|credit|operational|liquidity|compliance>] [--action <identify|quantify|monitor|report>]"
---

# Financial Risk Modeler

Identify and quantify financial risks for MBL portfolio companies — building a structured financial risk register, quantifying the expected value of each risk, and tracking the risk mitigation status. Financial risk management is not about avoiding risk (PE investing is inherently risk-taking); it is about taking the right risks knowingly and avoiding surprises from risks that were not modeled. Dr. Lewis maintains a financial risk register for each portfolio company and presents the material risks to Matt Mathison quarterly.

## When to Use
- Annual financial risk review (mandatory — presented to Matt Mathison each year)
- A new risk emerges at a portfolio company — quantify and add to the register
- Board presentation — financial risk section
- LP annual report — risk disclosure section
- Matt Mathison asks "what are the biggest financial risks to the portfolio?"
- Preparing the annual budget — budget conservatism should reflect known risks

## Financial Risk Framework

```
RISK CATEGORIES AND EXAMPLES:

  1. MARKET RISK:
     Commodity price risk (HIVE): WTI below $48/bbl — financial impact quantified
     Interest rate risk: Rising rates increase cost of variable-rate debt
     Customer concentration risk: Top customer cancels — revenue impact
     Industry/sector risk: Healthcare reform changes reimbursement rates (Allevio)
     Programmatic market risk: CPM deflation from supply expansion (Column6)
     
  2. CREDIT RISK:
     Customer non-payment: Employer group or agency fails to pay
     Payer risk (Allevio): Insurance payer disputes claims or delays payment
     Counterparty risk: A key vendor fails and cannot deliver services
     
  3. OPERATIONAL RISK:
     Key person dependency: CEO departure disrupts operations
     Clinical staff shortage (Allevio): Provider leaves; patient panel capacity drops
     Technology failure: Billing system, ad server, or Covercy reporting fails
     
  4. LIQUIDITY RISK:
     Cash runway drops below threshold
     Covenant breach restricts LOC access
     Collections timing mismatch creates cash gap
     
  5. COMPLIANCE RISK:
     HIPAA breach (Allevio) — regulatory fine and reputational damage
     EPA/regulatory violation (HIVE) — environmental liability
     FTC/advertising compliance (Column6) — campaign practices
     Tax compliance: Missed EFTPS deposits; incorrect payroll tax
     
RISK QUANTIFICATION METHODOLOGY:
  For each identified risk:
    Step 1 — Describe the risk: What event causes the risk? What is the trigger?
    Step 2 — Probability: Low (<15%), Medium (15-50%), High (>50%) likelihood in next 12 months
    Step 3 — Financial impact if risk materializes: EBITDA impact? Cash impact? Revenue loss?
    Step 4 — Expected value: Probability × Financial impact = Risk-adjusted exposure
    Step 5 — Current mitigation: What is already in place to reduce probability or impact?
    Step 6 — Residual risk: After mitigations, what is the remaining exposure?
    Step 7 — Mitigation actions: What additional steps should be taken?
    
PORTFOLIO-SPECIFIC RISK REGISTER ENTRIES:

  ALLEVIO — Top 3 Financial Risks:
    1. Employer group cancellation (customer concentration): 
       Probability: Low-Med (10-20% for any given group annually)
       Impact: Largest employer group = $156K annual revenue
       Expected value: 15% × $156K = $23K per group per year
       Mitigation: Multi-group diversification (no group >25% of revenue); 6-month termination notice clauses
       
    2. Clinical staff departure (key person operational):
       Probability: Medium (15-25% annual provider turnover in primary care)
       Impact: One provider departure → 700 patient panel gap → 45-60 day replacement → revenue dip
       Revenue impact: 700 patients × $85 PMPM × 1.5 months = $89K temporary revenue loss
       Mitigation: Competitive compensation; provider employment contracts with notice period; locum tenens backup
       
    3. Payer claim denial increase (collections rate decline):
       Probability: Low-Med
       Impact: If collections rate drops from 93% to 88%: −$17K revenue on current payer billing
       Mitigation: Coding audit quarterly; credential maintenance with Marshall Medical
       
  HIVE — Top 3 Financial Risks:
    1. WTI price decline below stress level ($48/bbl):
       Probability: Medium (commodity markets are volatile)
       Impact at $48 WTI: EBITDA −$280K from base; cash burn begins at −$22K/month
       Expected value: 25% × $280K = $70K risk-adjusted
       Mitigation: Stress protocol at $48; LOC standby; CapEx freeze; WTI weekly monitoring
       
    2. Production decline (geological / equipment failure):
       Probability: Low-Med
       Impact: 20% production decline = −$174K EBITDA at base WTI
       Expected value: 15% × $174K = $26K risk-adjusted
       Mitigation: Preventive maintenance program; equipment insurance; production monitoring
       
    3. Environmental / regulatory event:
       Probability: Low
       Impact: Spill cleanup cost: $150-500K; potential fine; permit risk
       Expected value: 5% × $325K average = $16K risk-adjusted
       Mitigation: Environmental insurance; compliance program; regular OSHA/EPA inspection readiness
       
  COLUMN6 — Top 3 Financial Risks:
    1. Major advertiser loss (concentration risk):
       Probability: Medium (advertising budgets are discretionary)
       Impact: Losing top 2 advertisers = −$350K annual revenue → −$166K EBITDA
       Expected value: 20% × $166K = $33K risk-adjusted
       Mitigation: Diversify client base (no single client >20% of revenue); multi-quarter contracts
       
    2. CPM deflation (programmatic market):
       Probability: Medium-High (digital ad supply is expanding faster than demand)
       Impact: 10% CPM decline → −$235K revenue → −$112K EBITDA
       Expected value: 30% × $112K = $34K risk-adjusted
       Mitigation: Mix shift toward direct-sold CTV (higher CPM, less programmatic); premium content focus
       
    3. Key technology platform failure (ad server or SSP):
       Probability: Low
       Impact: 1 week of downtime = $45K revenue loss; contract penalty clauses
       Expected value: 5% × $45K = $2K risk-adjusted (low; SLAs with vendors)
       Mitigation: Vendor SLA with uptime guarantees; alternative SSP relationships; business continuity
```

## Output Format

```markdown
# Financial Risk Register — [Entity or Portfolio]
**Period:** [YYYY] | **Prepared by:** Dr. Lewis | **Last review:** [Date]

---

## Risk Summary

| Rank | Risk | Category | Probability | Impact | Expected Value | Mitigation Status |
|------|------|---------|------------|--------|---------------|-----------------|
| 1 | [WTI below $48] | Market | Medium | $280K EBITDA | $70K | ✅ Stress protocol active |
| 2 | [Top advertiser loss] | Credit | Medium | $166K EBITDA | $33K | ⚠️ Diversification ongoing |
| 3 | [Provider departure] | Operational | Medium | $89K revenue | $13K | ✅ Contracts in place |
| 4 | [Claim denial rate] | Compliance | Low-Med | $17K revenue | $5K | ✅ Quarterly audit |

**Total expected value of identified risks:** $[X]K annually

---

## Top Risk Detail: [Risk Name]

**Description:** [What triggers this risk; what specifically goes wrong]
**Probability:** [Low/Medium/High] — [rationale]
**Financial impact if realized:** $[X]K — [how calculated]
**Expected value:** $[X]K
**Current mitigations:** [What is in place]
**Residual risk:** [What remains after mitigations]
**Additional mitigation actions:** [What Dr. Lewis recommends]
**Owner:** [CEO / Dr. Lewis / Matt Mathison]
**Next review:** [Date or trigger event]
```

## Output Contract
- Quantify the risk, don't just name it — a risk register that says "customer concentration risk — high" is not useful; a risk register that says "customer concentration risk: the top employer group accounts for 21% of Allevio revenue ($156K); if they cancel (estimated 15% annual probability), EBITDA declines by $46K (after cost reduction); expected value $7K/year; mitigated by a 6-month cancellation notice clause that gives Allevio time to replace the revenue" is useful; Dr. Lewis quantifies every risk in the register to the dollar before presenting to Matt Mathison
- Risk registers go stale — the financial risk register is only useful if it reflects current risk, not historical risk; the WTI trigger at $48/bbl matters when WTI is at $65; it is already realized when WTI is at $45; Dr. Lewis updates the risk register after any material event that changes the probability or impact of a risk; the annual review ensures a complete refresh; the register is never more than 12 months old without a review
- Don't confuse operating challenges with financial risks — not every operational problem belongs in the financial risk register; the risk register captures events that would materially change the financial model if they occurred; a provider who is slow at charting is an operational challenge; a provider who leaves and takes their patient panel is a financial risk; Dr. Lewis applies the materiality threshold: a financial risk qualifies for the register if its expected value is >$10K or its tail impact (if it materializes) is >$100K
- HITL required: Dr. Lewis builds and maintains; CEO reviews the risks for their company (they may identify risks Dr. Lewis hasn't modeled); Matt Mathison reviews the portfolio-level risk register quarterly and in the annual LP report; the board receives a risk summary (top 3 risks per company); mitigations are the CEO's responsibility to implement — Dr. Lewis tracks status; the stress protocol triggers in the risk register (WTI $48, cash <30 days) are automatic — the CEO and Dr. Lewis execute them without waiting for Matt Mathison approval; Matt Mathison is informed when triggers are crossed

## System Dependencies
- **Reads from:** fpa-sensitivity-analysis-builder (risk quantification uses the same sensitivity framework); fpa-cash-runway-modeler (liquidity risk inputs); fpa-debt-capacity-analyzer (covenant breach risk); fpa-unit-economics-modeler (unit-level risk analysis); insurance policies (to identify what risks are insured); credit agreements (covenant risk thresholds); operational reports from each CEO (for operational risk identification)
- **Writes to:** Financial risk register (SharePoint/Finance/MBL/RiskManagement/[YYYY]_FinancialRiskRegister.xlsx); board financial package (risk section — top 3 risks per company); LP annual report (risk disclosure); Matt Mathison quarterly portfolio review (risk summary); budget (conservative assumptions for budget-year risks reflected in the budget stress scenarios)
- **HITL Required:** Dr. Lewis identifies and quantifies; CEO validates probability estimates and mitigation status for their company; Matt Mathison reviews annually and quarterly; board receives the risk summary; any new material risk (expected value >$50K or tail risk >$500K) surfaced to Matt Mathison immediately, not held for the next scheduled review

## Test Cases
1. **Golden path:** Annual risk register for Allevio → Dr. Lewis identifies 8 risks; ranks by expected value; top 3: (1) Employer group cancellation (15% probability × $46K EBITDA impact = $7K expected value; mitigation: 6-month notice clause, active pipeline of replacement groups); (2) Provider departure (20% probability × $45K EBITDA impact = $9K; mitigation: retention bonus, employment contract with 90-day notice); (3) HIPAA breach (3% probability × $250K regulatory cost = $7.5K; mitigation: HIPAA compliance program, cyber liability insurance); total risk register expected value: $23.5K annually; Dr. Lewis presents to Matt Mathison: "Allevio's financial risk profile is manageable — the expected value of all identified risks is $23.5K annually, which is 2.8% of current EBITDA. The top risk by expected value is provider departure at $9K; the top tail risk is HIPAA breach at $250K potential impact. All risks are being actively mitigated. No new material risks identified this year."
2. **Edge case:** HIVE gets an EPA notice of inspection → Dr. Lewis immediately updates the risk register with a new entry: Environmental inspection event; probability at this stage: Medium-High (EPA doesn't inspect without cause — 60% probability of finding something); potential impact: $150K-$500K cleanup and fine; expected value: 60% × $325K average = $195K — this is now the #1 financial risk for HIVE; Dr. Lewis alerts Matt Mathison same day: "HIVE received an EPA inspection notice. This is a material financial risk — estimated $195K expected value (60% × $325K potential cost). Recommended actions: (1) Engage environmental counsel immediately; (2) HIVE CEO to prepare inspection compliance documentation; (3) Notify HIVE's environmental insurance carrier; (4) Do not proceed with any new CapEx at HIVE until the inspection is resolved." Matt Mathison receives the alert and authorizes the environmental counsel engagement
3. **Adversarial:** The Column6 CEO presents the risk register at the board meeting and describes the advertiser concentration risk as "Low" probability — but the top advertiser represents 28% of revenue and has a contract expiring in 3 months → Dr. Lewis corrects the classification before the board meeting: "I need to revise the advertiser concentration risk classification before the board presentation. Our largest advertiser is 28% of revenue (above our 20% target) and their contract expires in 90 days without a renewal conversation started. That is a Medium-High probability, not Low. The impact if they don't renew is −$196K EBITDA (23% of total). I've updated the risk register to reflect this accurately. The board should know we are within 90 days of a material renewal decision." The risk is corrected; the CEO is engaged to start the renewal conversation immediately; the board sees an accurate risk profile

## Audit Log
All financial risk registers retained by year. Risk escalation records retained (date, event, Dr. Lewis notification, Matt Mathison response). Stress protocol trigger events retained. Insurance claims related to identified risks retained. Post-event analyses (actual financial impact vs. modeled) retained for all realized risks.

## Deprecation
Retire when MBL Partners has a formal risk management function or an outside advisor who maintains the financial risk framework — with Dr. Lewis contributing the financial model inputs and Matt Mathison reviewing the risk summary quarterly.
