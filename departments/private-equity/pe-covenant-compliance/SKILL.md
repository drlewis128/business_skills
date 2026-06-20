---
name: pe-covenant-compliance
description: "Monitor and manage debt covenant compliance for MBL Partners portfolio companies. Use when the user says 'covenant compliance', 'debt covenant', 'covenant', 'covenant test', 'covenant testing', 'covenant report', 'financial covenant', 'maintenance covenant', 'incurrence covenant', 'leverage covenant', 'leverage ratio', 'debt to EBITDA', 'interest coverage', 'fixed charge coverage', 'DSCR', 'debt service coverage', 'minimum liquidity', 'minimum cash', 'covenant breach', 'covenant violation', 'covenant default', 'technical default', 'lender notice', 'waiver request', 'covenant waiver', 'amendment request', 'credit agreement', 'loan agreement', 'term loan', 'revolving credit', 'credit facility', 'lender relationship', 'bank relationship', 'lender compliance', 'bank covenant', 'SBA loan compliance', 'line of credit covenant', 'covenant package', 'compliance certificate', 'compliance report', 'quarterly compliance', or 'annual compliance lender'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--action <test|report|monitor|waiver|amend>] [--covenant <leverage|coverage|liquidity|other>] [--period <monthly|quarterly|annual>]"
---

# PE Covenant Compliance

Monitor and manage debt covenant compliance for MBL Partners portfolio companies — tracking all financial covenants in entity credit agreements, testing compliance at required intervals, preparing compliance certificates, and managing lender relationships when covenant headroom is tightening or a violation is at risk. Covenant compliance is a legal obligation that protects both the lender and MBL's investment: a covenant default that is not proactively managed can result in the lender declaring an event of default, accelerating the debt, and triggering a crisis that destroys entity value; a covenant default that is identified early and communicated proactively to the lender is almost always manageable through a waiver or amendment. Dr. Lewis monitors covenant compliance monthly and brings Matt Mathison into any situation where headroom is below 15% or a default is at risk.

## When to Use
- Monthly or quarterly covenant testing is due
- Entity financial performance is declining and headroom may be at risk
- A compliance certificate needs to be prepared
- A covenant waiver or amendment needs to be negotiated

## Covenant Compliance Framework

```
COVENANT TYPES (verify exact definitions per each entity's credit agreement):

  MAINTENANCE COVENANTS (tested quarterly; most common in PE-backed entities):
    Total leverage ratio: Total debt / EBITDA ≤ [X.Xx]x (verify per credit agreement)
    Interest coverage ratio: EBITDA / interest expense ≥ [X.Xx]x
    Fixed charge coverage ratio: (EBITDA - capex - taxes) / debt service ≥ [X.Xx]x
    Minimum liquidity: cash + revolver availability ≥ $[X]M
    
  INCURRENCE COVENANTS (triggered only when the entity takes specific actions):
    Maximum additional debt incurrence (tests before new debt is issued)
    Permitted acquisitions (tests leverage ratio before an acquisition)
    Permitted investments and dividends
    
  REPORTING COVENANTS:
    Monthly/quarterly financial statements: due [X] days after period end
    Annual audited financials: due [X] days after fiscal year end
    Compliance certificate: due [X] days after each test period
    Material event notice: immediately upon discovery of covenant violation; litigation; MAC

COVENANT TESTING PROCESS:

  STEP 1 — DATA PULL:
    Entity EBITDA (TTM; LTM; or per credit agreement definition — verify definition)
    Total debt outstanding (term loan + revolver drawn + other debt)
    Interest expense (monthly; annualized)
    Cash and revolver availability
    Capex (per credit agreement definition)
    
  STEP 2 — CALCULATE CURRENT COVENANT LEVELS:
    Leverage ratio: total debt / LTM EBITDA
    Coverage ratio: LTM EBITDA / annualized interest expense
    Headroom: current ratio vs. covenant threshold
    
  STEP 3 — HEADROOM ASSESSMENT:
    >25% headroom: GREEN — no action needed
    15-25% headroom: YELLOW — increase monitoring frequency; prepare contingency plan
    <15% headroom: ORANGE — brief Matt Mathison; begin lender communication
    <5% headroom or covenant breach: RED — Matt Mathison + legal counsel immediately
    
  STEP 4 — COMPLIANCE CERTIFICATE:
    Prepared by: Dr. Lewis + entity CFO
    Reviewed by: Dr. Lewis (confirmed accuracy)
    Approved by: Matt Mathison (for any compliance certificate where headroom <25%)
    Signed by: entity CEO or CFO (per credit agreement)
    Delivered to: lender by deadline in credit agreement (never late)

COVENANT BREACH MANAGEMENT:

  IF COVENANT BREACH IS CONFIRMED:
    Day 0: Matt Mathison + legal counsel notified immediately
    Day 0-3: legal counsel reviews credit agreement (cure period? notice requirements?)
    Day 1: Dr. Lewis prepares financial analysis of the breach and causes
    Day 3-5: proactive call to lender relationship manager (before required notice)
      Script: "We've identified that we will be in technical default on [covenant] as of [date].
       We're calling proactively because we value our relationship and want to discuss a waiver.
       Here is our analysis of what caused the breach and our plan to cure it."
    Waiver request: prepares formal waiver request (specific violation; cure plan; duration)
    Amendment: if systemic issue, negotiate covenant reset (requires lender approval)
    
  NEVER:
    Delay breach notification to Matt Mathison
    Try to "fix" the numbers to avoid a covenant test
    Assume the lender won't notice
    Contact the lender without Matt Mathison's knowledge and approval of the approach

LENDER RELATIONSHIP MANAGEMENT:

  PROACTIVE COMMUNICATION IS THE BEST COMPLIANCE TOOL:
    Monthly/quarterly calls with lender relationship manager (Dr. Lewis)
    Share portfolio company update proactively (don't wait for them to ask)
    Give lenders early warning of potential headroom compression
    Lenders who feel informed and respected are far more flexible when problems arise
    
  LENDER CONTACTS (maintain per entity — verify current contacts):
    Allevio: [Lender; relationship manager; contact info]
    HIVE: [Lender; relationship manager; contact info]
    Column6: [Lender; relationship manager; contact info]
```

## Output Format

```markdown
# Covenant Compliance Report — [Entity] — [Quarter Year]
**Prepared by:** Dr. Lewis | **Reviewed by:** Entity CFO | **Due to lender:** [Date]

---

## Covenant Test Results

| Covenant | Threshold | Actual | Headroom | Status |
|---------|---------|--------|---------|--------|
| Total leverage ratio | ≤[X.Xx]x | [X.Xx]x | [X%] | 🟢/🟡/🔴 |
| Interest coverage | ≥[X.Xx]x | [X.Xx]x | [X%] | 🟢/🟡/🔴 |
| Minimum liquidity | ≥$[X]M | $[X]M | [X%] | 🟢/🟡/🔴 |

**Overall covenant status:** 🟢 COMPLIANT / ⚠️ WATCH / 🔴 BREACH

---

## Headroom Trend (last 4 quarters)

| Covenant | Q[N-3] | Q[N-2] | Q[N-1] | Q[N] | Trend |
|---------|--------|--------|--------|------|-------|
| Leverage | [X.Xx]x | [X.Xx]x | [X.Xx]x | [X.Xx]x | ↑ Improving / ↓ Declining |

---

## Compliance Certificate Status

- Entity: [Name]
- Period: [Quarter Year]
- Signed by: [Entity CFO/CEO]
- Delivered to lender: [Date] / ⏳ Pending by [Date]
```

## Output Contract
- Covenant compliance certificates are never late — the credit agreement specifies the delivery deadline; Dr. Lewis tracks these deadlines on a rolling calendar and initiates preparation at least 15 days before the due date; a late compliance certificate is a technical default in most credit agreements even if the covenants are being met; Dr. Lewis has never delivered a late compliance certificate and does not start now; if the entity CFO is slow to provide data, Dr. Lewis escalates to the entity CEO and, if needed, Matt Mathison
- Headroom below 15% triggers a Matt Mathison briefing and a lender call — when covenant headroom falls below 15%, the entity is within one or two bad months of a covenant breach; Dr. Lewis does not wait for the breach to happen; at the 15% threshold, Dr. Lewis prepares a headroom analysis showing what events could trigger a breach, briefs Matt Mathison, and initiates a proactive call with the lender relationship manager to provide an updated business overview and reassure them of the trajectory; lenders who are surprised by breaches are unforgiving; lenders who are warned in advance are usually cooperative
- No financial manipulation to avoid a covenant test — adjusting the timing of revenue recognition; delaying an expense; or misrepresenting EBITDA to pass a covenant test is fraud; if covenants cannot be met honestly, the right answer is a waiver request or an amendment negotiation; Dr. Lewis validates the underlying financial data before preparing the compliance certificate and verifies that the EBITDA and debt numbers tie to the financial statements; any number that doesn't tie goes back to the entity CFO for correction before the certificate is prepared
- HITL required: compliance certificates where headroom <25% → Matt Mathison reviews and approves before delivery; headroom <15% → Matt Mathison briefing + lender call (Dr. Lewis leads with Matt's knowledge and approval); covenant breach → Matt + legal immediately; waiver request → Matt approval of approach before lender contact; amendment negotiation → Matt Mathison leads or approves terms; covenant definition interpretation question → legal counsel; any proactive lender communication about performance → Matt awareness

## System Dependencies
- **Reads from:** Entity credit agreements (covenant definitions; testing requirements; delivery deadlines); QuickBooks (EBITDA; interest expense; debt balances; cash); entity CFO (covenant test calculation support); pe-portfolio-kpi-dashboard (entity financial data); pe-portfolio-health-monitor (entity financial health trend)
- **Writes to:** Compliance certificates (delivered to lenders per credit agreement); covenant tracker (SharePoint → Portfolio → Covenants → [Entity] → [YYYY]); Matt Mathison briefings (headroom warnings; breach risk; waiver requests); lender correspondence (approved by Matt Mathison); waiver request documents; amendment request documents
- **HITL Required:** Compliance certificate with headroom <25% → Matt reviews; headroom <15% → Matt briefing + lender call; covenant breach → Matt + legal immediately; waiver request → Matt approval; amendment → Matt leads or approves; lender communication about performance → Matt awareness

## Test Cases
1. **Golden path:** Q2 covenant test for Allevio. Credit agreement requires quarterly leverage ratio test (≤4.0x) and minimum liquidity (≥$500K). Dr. Lewis data pull: total debt $3.8M; LTM EBITDA $1.4M; leverage ratio 2.71x (headroom: 32% vs. 4.0x threshold — comfortable). Cash + revolver availability: $780K (headroom: $280K above minimum — adequate). Compliance certificate prepared with entity CFO; tied to QuickBooks. Delivered to lender 12 days before deadline. No Matt Mathison review required (headroom >25%).
2. **Edge case:** HIVE leverage ratio is tightening — Q1: 3.4x, Q2: 3.6x, Q3: 3.9x (threshold: 4.0x; headroom now 2.5%) → Dr. Lewis: "HIVE leverage ratio is at 3.9x against a 4.0x threshold — 2.5% headroom. This is a RED situation. Root cause: WTI price drop reduced revenue by 12% without a corresponding debt reduction. I've briefed Matt Mathison. Recommended actions: (1) Proactive call to HIVE's lender relationship manager this week to give them a business update and our plan to reduce leverage; (2) Evaluate whether any debt can be paid down from entity cash; (3) Prepare a waiver request in parallel (in case Q4 EBITDA doesn't improve). Matt's decision: proceed with proactive lender call; Dr. Lewis to lead with Matt's approval. Waiver request to be prepared but not submitted unless Q4 test fails."
3. **Adversarial:** The entity CFO suggests using an alternative EBITDA add-back methodology for the covenant test that produces a higher EBITDA number and avoids a covenant breach → Dr. Lewis: "This is a legal and integrity question. The credit agreement defines EBITDA precisely — I'm going to pull the exact definition from Section [X] of the credit agreement and apply it exactly as written. If the CFO's methodology is consistent with the credit agreement definition, it may be appropriate. If it's a creative reinterpretation that the lender would object to if they knew about it, we cannot use it. I'm sending the proposed calculation to fund counsel for a determination before we finalize the compliance certificate. Matt Mathison: I'm briefing you on this CFO suggestion — I want your awareness before we engage counsel."

## Audit Log
All compliance certificates retained permanently (with delivery confirmation). Covenant test calculations retained (with source data tie-out). Headroom trend history retained. Lender communications retained. Matt Mathison briefings retained (headroom warnings; breach risk). Waiver and amendment records retained. Legal counsel opinions retained.

## Deprecation
Covenant compliance monitoring is active for the life of each entity's credit facility. Monitoring is retired when the entity is either exited or all debt is repaid. Credit agreement amendments are incorporated into the covenant tracker immediately upon execution.
