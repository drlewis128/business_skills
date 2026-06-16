---
name: sales-tax-compliance-manager
description: "Manage sales tax compliance and filings. Use when the user says 'sales tax', 'sales tax compliance', 'state sales tax', 'nexus', 'sales tax filing', 'collect sales tax', 'sales tax registration', 'economic nexus', 'sales tax liability', 'sales tax return', 'use tax', 'sales tax exemption', or 'do we need to collect sales tax'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <nexus-analysis|registration|filing|audit>] [--state <state or 'all'>]"
---

# Sales Tax Compliance Manager

Manage sales tax compliance for MBL portfolio companies — determining where the company has nexus (taxing jurisdiction), what must be collected (taxable products/services), how to register, and how to file returns. Sales tax is a complex, state-by-state compliance obligation that has become significantly more burdensome since the *South Dakota v. Wayfair* (2018) decision, which established economic nexus for remote sellers. A company doing business in multiple states without a sales tax compliance program is likely non-compliant and building up an unrecognized liability.

## When to Use
- A portfolio company is selling into a new state — does it have nexus?
- Matt Mathison asks "are we collecting sales tax where we should be?"
- A company has received a state sales tax audit notice
- Building a sales tax compliance program for a new or growing portfolio company
- A new product or service is being launched — is it taxable?
- Column6/Siprocal has advertising/media revenue in multiple states — nexus analysis needed

## Sales Tax Framework

```
Nexus: When does a company have to collect sales tax?

Physical nexus (traditional):
  - Office, warehouse, or employees in the state
  
Economic nexus (post-Wayfair, 2018):
  - Most states: >$100,000 in sales OR >200 transactions in the state
  - Some states have different thresholds
  - Counts ALL sales to that state, not just taxable ones

What's taxable:
  Physical goods: Generally taxable (state by state variations)
  Software/SaaS: Varies widely — about half of states tax SaaS
  Services: Generally not taxable (but exceptions exist)
  Professional services: Usually not taxable
  Digital products: States vary widely
  
MBL portfolio context:
  Allevio: Healthcare services — generally exempt; check specific services
  HIVE Partners: Production sales — subject to severance tax, not sales tax
  Column6/Siprocal: Advertising services — check state-by-state; 
    some states tax digital advertising; political ad exemptions vary
```

## Output Format

```markdown
# Sales Tax Compliance Analysis — <Company Name>
**Date:** <Date> | **Prepared by:** Dr. John Lewis
**CPA and legal review required for formal nexus determinations**

---

## Company Profile

| | Value |
|---|---|
| Entity | [Company name] |
| Business type | [SaaS / Services / Physical goods / Media/Advertising] |
| States with physical presence | [List] |
| States with economic nexus (estimated) | [List — based on revenue/transaction data] |
| Annual revenue | $[X] |
| Current sales tax registration | [States where currently registered] |
| Current annual sales tax filings | [How many / which states] |

---

## Nexus Analysis

| State | Revenue from state | Transaction count | Physical nexus | Economic nexus | Currently registered | Action needed |
|-------|-------------------|-----------------|---------------|---------------|-------------------|--------------|
| [AZ] | $[X] | [N] | ✅ Yes (HQ) | ✅ Yes | ✅ Yes | None |
| [CA] | $[X] | [N] | ❌ | ✅ Yes (>$500K) | ❌ No | 🔴 Register immediately |
| [TX] | $[X] | [N] | ❌ | ⚠️ Near threshold | ❌ No | 🟡 Monitor — near $100K |
| [NY] | $[X] | [N] | ❌ | ❌ Below threshold | ❌ No | ✅ No action now |
| [FL] | | | | | | |

**Unregistered states with nexus:** [N states — requires immediate action]
**Estimated exposure:** $[X] in uncollected/unremitted sales tax (subject to CPA analysis)

---

## Taxability Analysis

| Product/Service | Taxable? | Notes |
|----------------|---------|-------|
| [SaaS subscription] | [Taxable in: AZ, CO, TX / Exempt in: CA, FL / Varies: NY] | [SaaS taxability varies significantly by state] |
| [Professional services] | [Generally exempt] | [Confirm state-by-state for each nexus state] |
| [Digital advertising] | [Exempt in most states / Taxable in: MD (pending)] | [Digital advertising tax laws changing rapidly] |
| [Healthcare services] | [Generally exempt] | [Allevio — confirm specific service types] |

---

## Registration and Filing Requirements

| State | Registration status | Next filing | Frequency | Amount estimated |
|-------|-------------------|-------------|-----------|-----------------|
| [AZ] | Registered — TPT license [#] | [Due date] | Monthly | $[X] |
| [CO] | Registered | [Due date] | Quarterly | $[X] |
| [States to register] | Registration pending | [After registration] | | |

---

## Voluntary Disclosure Program (VDA) Analysis

*For states where nexus existed but registration was not timely*

| State | Estimated back liability | VDA available? | Benefit | Recommendation |
|-------|------------------------|---------------|---------|---------------|
| [CA] | $[X] (estimated) | Yes | Waiver of penalties; limited look-back (typically 3-4 years) | Pursue VDA |
| [TX] | $[X] (estimated) | Yes | | Pursue VDA |

**VDA note:** A voluntary disclosure agreement allows companies to come into compliance retroactively with reduced penalties. It must be initiated before a state audit notice is received. CPA and legal assistance required for VDA filings.

---

## Action Plan

| Priority | Action | Owner | Timeline |
|---------|--------|-------|---------|
| 1 🔴 | Register in [State] — nexus established | Dr. Lewis + CPA | Immediate |
| 2 🔴 | Evaluate VDA for [State] — estimated $[X] exposure | CPA + Attorney | Within 30 days |
| 3 🟡 | Configure sales tax collection software (TaxJar / Avalara) | IT / Dr. Lewis | 60 days |
| 4 🟡 | Monitor [State] — approaching threshold | Dr. Lewis | Quarterly |
| 5 🟢 | Annual nexus review | Dr. Lewis + CPA | January each year |
```

## Output Contract
- Economic nexus analysis must be data-driven — stating "we might have nexus in California" is not analysis; the analysis must pull actual revenue by state from QuickBooks and compare against each state's threshold; this turns a guess into a determination
- VDA (Voluntary Disclosure Agreement) always considered when unregistered nexus exists — registering in a state without a VDA exposes all prior periods to audit; a VDA typically limits lookback to 3-4 years and waives penalties; the VDA analysis must be part of any remediation plan
- Taxability analysis cannot be assumed — "we're a service company so we're exempt" is not reliable; services taxability varies by state and by service type; a proper taxability analysis must be done for each product/service in each nexus state; the CPA or sales tax consultant must confirm
- Sales tax software always recommended for multi-state sellers — manually calculating, collecting, and filing sales tax across multiple states is error-prone and time-consuming; once a company has nexus in 3+ states, sales tax automation software (TaxJar, Avalara, Vertex) pays for itself in error prevention and compliance efficiency
- HITL required: Dr. Lewis performs nexus analysis; CPA or sales tax specialist confirms nexus determinations and taxability; Matt Mathison approves any VDA filings (which involve formalizing a past-due liability); all state registrations and VDA agreements require CPA and potentially legal review; audit notices require immediate escalation to Matt Mathison and engagement of CPA + attorney

## System Dependencies
- **Reads from:** QuickBooks (revenue by customer location), CRM (customer addresses), sales data, prior tax returns
- **Writes to:** Sales tax compliance tracker (SharePoint/Finance/Tax/Sales Tax/); state registrations; monthly/quarterly returns
- **HITL Required:** Dr. Lewis analyzes; CPA confirms nexus and taxability; Matt Mathison approves VDA filings; audit notices require immediate escalation + CPA + attorney

## Test Cases
1. **Golden path:** Column6/Siprocal nexus analysis 2026 → Revenue by state: AZ $180K (physical HQ — registered ✅), CA $420K (economic nexus — >$100K threshold — not registered 🔴), TX $115K (economic nexus — registered ✅), NY $380K (economic nexus — not registered 🔴), FL $95K (below threshold — no action); Taxability: digital advertising — CA exempt from sales tax; NY complex (NY has an advertising exemption but digital services vary); Action: (1) Immediately register in CA and NY; (2) Evaluate VDA for CA and NY — estimated back liability $42K CA, $38K NY — CPA to confirm; (3) Implement Avalara for automated multi-state collection; Matt Mathison informed; CPA engaged for VDA analysis; target registrations complete within 30 days
2. **Edge case:** A state sends a nexus questionnaire asking the company to disclose its activities → do not complete and return a nexus questionnaire without CPA and legal review; the responses in a nexus questionnaire can be used as admissions against the company; engage the CPA and potentially a state tax attorney before responding; the questionnaire may have a response deadline — track it; respond with a preliminary "we are reviewing and will respond by [date]" if needed
3. **Adversarial:** A CEO says "we're a B2B service company so we definitely don't have to collect sales tax" → sales tax exemptions for services are not universal; while most professional services are exempt in most states, there are exceptions (NY taxes some services; some states tax digital services; some states have broad service taxability); the safe answer is to confirm, not to assume exemption; run the taxability analysis for each state where there's nexus; document the conclusion with CPA confirmation; do not rely on the CEO's assumption

## Audit Log
Nexus analyses retained by entity and year. State registrations documented with dates and license numbers. VDA agreements and related correspondence retained permanently. Monthly/quarterly return filings retained. Audit notices and outcomes retained permanently.

## Deprecation
Retire when portfolio companies have automated sales tax compliance software (TaxJar, Avalara) with direct CPA oversight, and when all nexus states are registered and compliant with automated filing, reducing Dr. Lewis's role to annual review of nexus thresholds.
