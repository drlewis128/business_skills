---
name: reseller-program-manager
description: "Design or manage a reseller partner program. Use when the user says 'reseller program', 'design a reseller model', 'reseller partner', 'channel reseller', 'white-label reseller', 'VAR program', 'value-added reseller', 'reseller agreement', 'reseller margins', 'reseller partner program', or 'manage our reseller channel'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--reseller-type <pure-reseller|VAR|white-label>] [--market <target market>]"
---

# Reseller Program Manager

Design and manage a reseller partner program — where a partner buys or licenses a company's product/service and resells it to their customers, typically under their own brand or as part of a broader solution. Reseller programs are fundamentally different from referral programs: the reseller owns the customer relationship, handles the sales motion, and often manages the customer experience — which requires more enablement, tighter quality controls, and different economics than referral partnerships.

## When to Use
- A portfolio company wants to expand market reach by having others resell their product
- A strong existing partner wants to go deeper than referrals — they want to own the customer relationship
- Entering a market where we don't have direct sales capacity
- Building a value-added reseller (VAR) channel for a product that benefits from bundling with complementary services
- Evaluating whether a white-label arrangement is better than a referral or co-sell structure

## Reseller Model Types

```
Three reseller models:

1. Pure reseller: Partner buys at wholesale, sells at retail. 
   No customization; uses our brand. Simplest model.
   Risk: Partner controls the customer experience; quality control is harder.

2. Value-added reseller (VAR): Partner adds their services on top of our product.
   Customer gets our product + partner's implementation/consulting.
   More common in B2B — integrators who bundle solutions.

3. White-label reseller: Partner resells under their own brand; we're invisible.
   Highest margin for us, most control for partner.
   Requires the most trust — partner is responsible for everything customer-facing.
   Requires legal clarity on brand use, support responsibilities, and data handling.
```

## Output Format

```markdown
# Reseller Program — <Company Name>
**Program type:** Pure Reseller / VAR / White-Label
**Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison / CEO

---

## Reseller Program Design

### Program Rationale
[Why a reseller program? What market access does it provide that direct sales doesn't? What's the strategic case for letting a partner own the customer relationship?]

**Markets targeted via reseller:** [Specific markets where we lack direct presence or capacity]
**Estimated revenue potential:** Bear $[X] / Base $[X] / Bull $[X] (Year 1 through resellers)
**Direct sales impact:** [Does the reseller program cannibalize direct sales — or reach markets direct can't? Be honest.]

---

### Economics Model

| Model component | Our position | Notes |
|----------------|-------------|-------|
| Reseller price (what they pay us) | [X%] of list price / $[X]/unit | [Wholesale price] |
| List price (what they charge customers) | [Set by them within limits / Set by us] | [Pricing control policy] |
| Reseller margin | [X%] of list price | [Margin they earn on each sale] |
| Minimum annual commitment | $[X] / [N] units | [Or: No minimum] |
| Royalty / SaaS fee structure (if applicable) | [X%] of reseller revenue / $[X]/month] | |

**Economics must work for the reseller:** If the reseller margin is too low, resellers won't prioritize selling our product. 20-40% margin is typical for B2B software/services resellers. If margin is <15%, expect low engagement.

---

### Reseller Qualification Criteria

Not every company should be a reseller. A reseller who provides a poor customer experience damages our brand even when we're invisible. Minimum qualification:

| Criterion | Minimum standard |
|-----------|----------------|
| Market coverage | [E.g., "Serves ≥25 customers in our target market in their region"] |
| Financial stability | [Reference from 2 customers + no pending litigation] |
| Technical capability (for VAR) | [E.g., "Certified in EMR implementation / HIPAA-compliant operations"] |
| Support capacity | [E.g., "Can provide Tier 1 support to their customers during business hours"] |
| THRIVE alignment | [No integrity concerns; confirmed via reference check] |
| Exclusivity / conflicts | [No exclusive arrangement with a competitor in same vertical] |

---

### Reseller Onboarding

| Milestone | Deliverable | Owner | Timeline |
|-----------|-----------|-------|---------|
| Agreement signed | Executed reseller agreement + pricing schedule | Dr. Lewis + legal | Day 0 |
| Product training | [N]-hour product certification (mandatory) | Us (deliver) | Day 1-14 |
| Sales enablement | Reseller kit: pitch deck, ICP, demo script, objection guide | Us (deliver) | Day 1-7 |
| First sale support | Joint sales call on first deal (we assist, they lead) | Dr. Lewis | First deal |
| 30-day check-in | Pipeline status, blockers, questions | Dr. Lewis | Day 30 |
| Certification | Reseller receives certified status after passing product assessment | Us (certify) | Day 14-30 |

**First sale target:** Within [60] days of agreement signing

---

### Quality and Brand Controls

| Control | Mechanism |
|---------|----------|
| Product/service pricing floors | Minimum resale price defined in agreement — prevents race to bottom |
| Brand use (if not white-label) | Brand guide provided; no unauthorized modifications; monthly audit |
| Customer experience standards | [E.g., "24-hour response SLA for customer inquiries; Tier 2 issues escalated to us within 48 hours"] |
| Customer satisfaction monitoring | [E.g., "Quarterly NPS or CSAT survey sent to reseller customers; we review results"] |
| Termination for quality breach | [E.g., "If NPS drops below X or SLA breached 3× in 90 days, warning issued; persistent breach triggers agreement termination"] |

---

### Reseller Performance Expectations

| Metric | Bronze Reseller | Silver Reseller | Gold Reseller |
|--------|----------------|----------------|--------------|
| Annual reseller revenue | $[X]-$[Y] | $[Y]-$[Z] | >$[Z] |
| New customers added per quarter | [N] | [N] | [N] |
| Customer retention rate | >[X%] | >[Y%] | >[Z%] |
| Support escalations (max) | [N]/quarter | [N]/quarter | [N]/quarter |

---

### Reseller Agreement Key Terms

| Term | Our position |
|------|-------------|
| Territory | [Exclusive by region / Non-exclusive / Protected accounts] |
| Term | [12 months, auto-renew] |
| Minimum purchase commitment | [$X annually / or no minimum] |
| Pricing floor | [Resellers may not sell below $[X]] |
| Support obligations | [Reseller provides Tier 1; we provide Tier 2/3] |
| Data and customer ownership | [Customer data owned by customer; accessible to us for support; reseller must sign DPA] |
| Termination | [30-day notice; immediate for quality breach; 90-day for volume failure] |
| IP and brand | [Our IP remains ours; reseller has limited license; no modifications] |

---

## Matt Mathison Summary

**Reseller program proposal for [Company]:** [Program type] targeting [market]. Economics: [X%] reseller margin on $[Y] list price. Year 1 revenue target: $[X] through resellers. [N] reseller candidates identified. First reseller qualification: [Company] — [brief rationale]. **Matt Mathison decision needed:** Approve program economics / Approve first reseller agreement / No action — Dr. Lewis managing
```

## Output Contract
- Economics model always explicit — reseller programs that don't define the pricing floor, reseller margin, and minimum commitment upfront create disputes; every reseller conversation must start from a documented economics model
- Quality controls always included — reseller programs where the reseller owns the customer experience must include quality standards; a reseller who provides bad service under our product's name is brand damage even if we're invisible; minimum NPS/CSAT monitoring required
- Qualification criteria always applied — not every company that asks to resell should be accepted; the qualification criteria protect the brand and the customer experience; especially for white-label programs where the quality control is almost entirely the reseller's responsibility
- Cannibalization assessment always stated — if the reseller program competes with direct sales, this is a strategic decision that requires Matt Mathison's explicit input; don't assume reseller and direct can coexist without thinking through the territory and accounts
- HITL required: Dr. Lewis designs; Matt Mathison approves program economics and any reseller agreement; legal reviews all reseller agreements (especially territory, IP, and white-label arrangements); HIPAA/compliance counsel for any healthcare reseller agreement involving patient data; CEO approval required for white-label arrangements where our product is sold under another brand

## System Dependencies
- **Reads from:** Product/service description, pricing model, competitive reseller programs, partner qualification scorecard
- **Writes to:** Reseller program documentation (SharePoint/BD/Reseller Program); reseller agreements; partner CRM
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves economics and agreements; legal reviews all reseller agreements; compliance counsel for regulated industry resellers

## Test Cases
1. **Golden path:** Allevio builds a VAR program for medical billing consultants who serve physician practices → VAR model (consultant provides implementation services, Allevio provides RCM platform); Economics: consultant buys at 25% below list, marks up to full list price or bundles with their consulting fee; Qualification: consultant serves ≥10 active physician practice clients, HIPAA-compliant operations confirmed, reference from 2 clients; First VAR: healthcare consulting firm in Phoenix, 15 practice clients; onboarded in 14 days; first sale in 38 days; $22K Year 1 contract; consultant earned $5,500 margin; customer NPS from VAR-sold accounts: 52 (above direct-sold average of 48 — VAR is adding white-glove implementation value)
2. **Edge case:** A reseller starts pricing below the floor (undercutting our direct sales team or other resellers) → this is a material agreement breach; issue a formal written warning citing the specific pricing violation; require compliance within 5 business days; if they fail to comply, invoke the termination clause; reseller who undercuts pricing destroys the channel for everyone; it cannot be tolerated and enforcement must be swift; document the violation and enforcement action for future reseller program governance
3. **Adversarial:** A reseller acquires a competitor and now their parent company is a competitor → the change of control clause must address this (it's in the standard agreement for this reason); if the change of control creates a competitive conflict, we have the right to terminate the reseller agreement with proper notice; exercise the termination clause; transition existing reseller customers to direct sales or an alternative reseller; document the rationale for the termination

## Audit Log
Reseller program design and economics retained. Reseller agreements archived. Qualification assessments logged. Performance reviews retained. Pricing floor violations documented. Agreement terminations with rationale archived.

## Deprecation
Retire when portfolio companies have dedicated channel sales teams who manage reseller programs as a standard go-to-market motion with their own program manager and CRM-integrated channel tracking.
