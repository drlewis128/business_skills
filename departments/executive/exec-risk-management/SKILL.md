---
name: exec-risk-management
description: "Identify, assess, and manage risks across MBL Partners and portfolio companies. Use when the user says 'risk management', 'risk assessment', 'what are the risks', 'identify the risks', 'risk register', 'portfolio risk', 'entity risk', 'risk review', 'risk audit', 'manage the risk', 'risk mitigation', 'risk monitoring', 'top risks', 'key risks', 'what could go wrong', 'risk landscape', 'risk profile', 'risk framework', 'enterprise risk', 'operational risk', 'financial risk', 'regulatory risk', 'legal risk', 'market risk', 'concentration risk', 'key person risk', 'reputational risk', 'board risk report', 'LP risk communication', 'risk heat map', or 'what keeps you up at night'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <all|MBL|Allevio|HIVE|Column6>] [--type <financial|operational|legal|market|people|reputational>] [--action <assess|register|mitigate|monitor|report>] [--cadence <quarterly|annual|event>]"
---

# Exec Risk Management

Identify, assess, and manage risks across MBL Partners and its portfolio companies — maintaining a current, prioritized view of the risks that could most affect MBL's ability to create value and deliver LP returns. Risk management at MBL is not a compliance exercise — it is an operational intelligence function: Dr. Lewis monitors the risk landscape across the portfolio, surfaces risks before they become crises, and ensures Matt Mathison always has an accurate picture of what could go wrong and what is being done about it. The risks that destroy PE-backed companies are not usually surprises — they are risks that were visible, not prioritized, and not mitigated while they were still manageable.

## When to Use
- Quarterly risk review (portfolio-wide risk register update)
- Annual board risk report preparation (exec-board-communication)
- A new risk is identified and needs to be registered and assessed
- A risk has escalated and needs immediate Matt Mathison attention
- An acquisition or investment decision requires risk assessment
- Matt Mathison asks "what are our biggest risks right now?"

## Risk Management Framework

```
RISK CATEGORIES (MBL portfolio):

  1. FINANCIAL RISK:
     □ Cash position below minimum reserve (15% of available capital — exec-capital-allocation)
     □ Customer concentration >20% at any entity (GRR or NRR impact)
     □ Capital deployment delays affecting LP return timeline
     □ Unexpected capital calls at entity level
     □ FX or inflation exposure (if applicable)
     
  2. OPERATIONAL RISK:
     □ Action item completion rate below 70% (exec-team-accountability — execution failure signal)
     □ Key person departure at a CRITICAL role with insufficient succession (exec-succession-planning)
     □ System failure or cybersecurity incident affecting operations
     □ Vendor/supplier concentration (single critical vendor with no backup)
     □ AI system failure or data breach (exec-ai-strategy-director — all integrations)
     
  3. REGULATORY AND LEGAL RISK:
     □ Allevio: HIPAA compliance exposure; employer group regulatory changes; ACA changes
     □ HIVE: Utah severance tax changes; mineral rights regulatory changes; environmental
     □ Column6: FTC/FCC digital advertising regulations; data privacy (CCPA/GDPR); ASC exposure
     □ MBL: PE/fund regulatory requirements; LP disclosure obligations; fiduciary duty
     
  4. MARKET RISK:
     □ Allevio: employer healthcare cost trends; competing insurance models; OE season results
     □ HIVE: Uinta Basin commodity prices; competing operators; landowner market alternatives
     □ Column6: CTV advertising market dynamics; agency consolidation; programmatic pricing
     □ Portfolio: LP market conditions affecting fund-of-fund capital commitments
     
  5. PEOPLE AND CULTURE RISK:
     □ THRIVE culture breach at entity level (exec-culture-builder RED signal)
     □ Leadership team disengagement at entity level (ENJOY dimension deterioration)
     □ Key hiring failure (exec-ceo-hiring — wrong hire in a CRITICAL role)
     □ Burnout of Dr. Lewis or Matt Mathison (exec-time-audit — sustainability check)
     
  6. REPUTATIONAL RISK:
     □ Public media event involving MBL or a portfolio company
     □ LP dissatisfaction that could affect future fundraising
     □ Customer/partner relationship failure with public visibility
     □ THRIVE integrity breach that becomes externally visible

RISK REGISTER FORMAT:

  For each identified risk:
    Risk ID: [R-001, R-002, etc.]
    Description: [Specific risk — not "market risk" but "CTV advertising spend drops >20% in Q3
      due to recessionary advertiser pullback, reducing Column6 revenue by $X"]
    Category: [Financial/Operational/Regulatory/Market/People/Reputational]
    Probability: [Low (< 20%) / Medium (20-50%) / High (>50%)]
    Impact: [Low / Medium / High / Critical]
    Risk score: [Probability × Impact — H×H=Critical; H×M=High; M×M=Medium; etc.]
    Owner: [One person responsible for monitoring and mitigating]
    Mitigation: [Specific action(s) being taken to reduce probability or impact]
    Current status: [Open / Being mitigated / Resolved / Accepted]

ESCALATION LEVELS:

  CRITICAL (immediate Matt Mathison notification; same-day response):
    □ A key person departure at a CRITICAL role with 0 succession depth
    □ A regulatory action or legal filing against an entity
    □ A THRIVE Integrity breach confirmed at the leadership level
    □ Cash position below minimum reserve
    □ A cybersecurity incident affecting entity data
    
  HIGH (Matt Mathison notification within 24 hours):
    □ A customer concentration spike above 25% at any entity
    □ GRR drop >5% at any entity in a single month
    □ A material LP complaint or dissatisfaction signal
    □ A Tier 3 alert from exec-kpi-dashboard
    
  MEDIUM (included in weekly CEO briefing):
    □ A market trend that could affect entity performance in 90+ days
    □ A vendor risk that is being monitored but not yet acute
    □ A people risk (resignation risk; performance concern) at a non-CRITICAL role
```

## Output Format

```markdown
# Portfolio Risk Register — [Quarter/Year]
**Maintained by:** Dr. Lewis | **Reviewed by:** Matt Mathison

---

## Risk Summary

| Risk ID | Description | Category | Probability | Impact | Score | Owner | Status |
|---------|------------|---------|------------|--------|-------|-------|--------|
| R-001 | [Risk] | [Type] | [L/M/H] | [L/M/H/C] | [Score] | [Name] | [Status] |

---

## Critical Risks (immediate attention)

| Risk | Entity | Finding | Owner | Action required | Due |
|------|--------|---------|-------|----------------|-----|
| [Risk ID] | [Entity] | [What's happening] | [Name] | [Action] | [Date] |

---

## New Risks This Quarter

[Any risk that was not on the register last quarter — with full register entry]

---

## Resolved Risks

| Risk ID | Description | Resolved date | How |
|---------|------------|--------------|-----|
| [ID] | [Risk] | [Date] | [What resolved it] |

---

## Risk Trend

**Portfolio risk trend:** [Improving / Stable / Deteriorating]
**Largest risk increase this quarter:** [Risk ID and reason]
**Largest risk decrease this quarter:** [Risk ID and reason]
```

## Output Contract
- Specific risks, not categories — "market risk" is not a risk; "the HIVE competing operator on the Peterson parcel signs a lease with 3 of HIVE's top 10 landowners by Q3, reducing royalty revenue by $X and triggering a GRR decline below 85%" is a risk; the specificity forces a specific mitigation; Dr. Lewis refuses to maintain a risk register with category-level descriptions because they cannot be monitored, owned, or mitigated with precision
- Every risk has one owner — a risk without a named owner is a risk that nobody manages; the owner is not "MBL" or "the entity CEO" — it is one specific named person who is responsible for monitoring the risk and implementing the mitigation; Dr. Lewis is the owner of portfolio-level risks; entity CEOs own entity-level risks; Matt Mathison is the escalation point for any CRITICAL or HIGH risk that an owner cannot resolve
- Critical risks go to Matt same-day — a critical risk that is discovered and held for the weekly briefing is a risk that has had 3-7 more days to worsen before Matt was informed; Dr. Lewis operates under a same-day escalation rule for critical risks: if a critical risk is confirmed or discovered, Matt is notified by phone or text before any other communication; the escalation protocol is faster than the briefing cadence
- HITL required: Matt Mathison reviews the quarterly risk register; all CRITICAL escalations go to Matt same-day by phone or text; HIGH escalations go to Matt within 24 hours; Matt approves any mitigation action that involves capital commitment above his own authority threshold; the annual board risk report includes the top 5 portfolio risks and is reviewed by Matt before board submission; LP risk communication is Matt Mathison decision per exec-lp-reporting

## System Dependencies
- **Reads from:** exec-kpi-dashboard (Tier 3 alerts are often risk signals — same system); exec-portfolio-operations (entity operational health signals); exec-succession-planning (key person risk — succession depth); exec-team-accountability (execution failure signals); exec-culture-builder (culture breach signals — people/reputational risk); exec-capital-allocation (financial risk — cash position, concentration); exec-ai-strategy-director (technology and AI system risk)
- **Writes to:** Risk register (SharePoint → ExecutiveSupport → RiskManagement → [YYYY]-Q[N]); exec-board-communication (top 5 risks section of the board package); exec-lp-reporting (risk section of LP quarterly report); exec-action-tracker (mitigation actions as tracked items); exec-ceo-briefing (CRITICAL and HIGH risks surfaced in the weekly briefing)
- **HITL Required:** Matt Mathison reviews quarterly risk register; CRITICAL risks go to Matt same-day; HIGH risks go within 24 hours; mitigation actions involving capital require Matt approval per thresholds; board risk report reviewed by Matt before submission; LP risk communication is Matt's decision; Dr. Lewis monitors continuously but Matt decides the response to any CRITICAL or HIGH risk

## Test Cases
1. **Golden path:** Q2 risk register review; 12 open risks; 2 new risks this quarter: (1) Column6 agency client announced acquisition by a competitor — concentration risk if acquisition changes their ad spend behavior; (2) Allevio clinical enrollment below target for 2 consecutive quarters — operational/financial risk if claim ratio deteriorates as a result. Neither is CRITICAL; both are HIGH. Matt notified within 24 hours: "Two new HIGH risks this quarter — Column6 agency acquisition and Allevio enrollment lag. Column6 risk owner: [Column6 CEO] — mitigation: confirm with the buying entity that the IO will continue; put a meeting on the calendar with their new parent company media buyer. Allevio risk owner: [Allevio CEO] — mitigation: clinical intervention escalation already in exec-action-tracker. I'll monitor both weekly." Matt: "Keep me posted on Column6. If the IO is at risk, I'll call the agency president directly."
2. **Edge case:** A cybersecurity incident affects Allevio's AdvancedMD instance — patient records potentially exposed → Dr. Lewis: "CRITICAL risk triggered. Calling Matt now." Matt call: "Allevio AdvancedMD may have been accessed by an unauthorized party. I don't have confirmation yet — IT is assessing. Per our HIPAA protocol: (1) Allevio CEO has been notified; (2) AdvancedMD is notifying us of the scope; (3) I am not communicating anything externally until we have the scope confirmed and legal counsel has reviewed the notification obligations. What I need from you: confirmation that you're aware, and authorization to engage outside legal counsel for the HIPAA breach assessment. Expected next update: 2 hours." Matt: "Authorized. Keep me on this." Dr. Lewis manages from there.
3. **Adversarial:** A board member reviews the risk register and says "You've missed a key risk — the regulatory change that's coming in Arizona healthcare" → Dr. Lewis: "Thank you for flagging that. Can you share more context on the specific regulatory change you're referring to? I want to make sure I have the right scope before logging it. If it's the [specific ACA/state-level change], I have it as a MEDIUM risk (R-009) because the current read from our compliance team is that Allevio's employer-direct model is not directly affected by the mechanism of the proposed change. If it's a different regulatory vector, I want to understand it and assess it fresh. Either way, if you have a specific source or analysis, I'd like to review it and update the register if warranted." Board member: "It's the ACA subsidies change." Dr. Lewis: "I have that as R-009 — let me update the entry with the additional detail you've provided and present it again in the next board meeting."

## Audit Log
All risk register versions retained quarterly. Risk escalations retained (CRITICAL and HIGH — who was notified; when; response; resolution). Mitigation action outcomes retained. Board risk report submissions retained. LP risk communication records retained. Risk trend data retained annually (how has the portfolio risk profile changed year-over-year?).

## Deprecation
Retire when MBL has a dedicated risk management or compliance function — with Dr. Lewis providing the technology and AI risk inputs and Matt Mathison retaining the portfolio-level risk review authority and LP/board risk communication.
