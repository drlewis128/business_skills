---
name: sales-commission-modeler
description: "Design and model sales commission plans for MBL portfolio companies. Use when the user says 'commission', 'commission plan', 'sales commission', 'sales compensation', 'commission structure', 'commission rate', 'sales incentive plan', 'variable compensation', 'rep commission', 'commission model', 'how do we pay sales', 'commission on a deal', 'accelerator', 'commission draw', 'commission clawback', 'spiff', 'sales bonus', 'OTE', 'on-target earnings', 'commission payout', 'calculate commission', 'commission calculation', or 'comp plan review'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--rep <name>] [--deal <deal name>] [--action <model|calculate|review|design>]"
---

# Commission Modeler

Design and model sales commission plans for MBL portfolio companies — creating incentive structures that motivate the right behaviors, pay for the right results, and are affordable at different attainment levels. A commission plan is a contract with the sales rep: if the plan is unclear, inconsistently applied, or pays for the wrong behaviors, it destroys motivation and costs the company money. Dr. Lewis designs, models, and governs the commission plans across the portfolio.

## When to Use
- Designing the initial commission plan for a new portfolio company sales team
- Calculating commission for a deal that was just closed
- Annual comp plan review (October — for the following year)
- A rep disputes their commission calculation
- A deal has non-standard terms that affect the commission calculation

## Commission Plan Framework

```
COMMISSION PLAN DESIGN PRINCIPLES:
  Simple: A rep should be able to calculate their own commission on a napkin
  Motivating: The payout at 100% quota should be meaningful; at 125%+ it should be exciting
  Affordable: The commission cost at 100% attainment should fit within the SG&A model
  Behaviors: The plan should pay for the behaviors the company wants (new logos; retention; margin)
  
STANDARD COMMISSION STRUCTURE — MBL PORTFOLIO:

  ALLEVIO (Employer Group Sales):
    Base salary: $65,000-$85,000/year (varies by experience; set per hr-hiring-scorecard)
    OTE (On-Target Earnings): $120,000-$150,000 (base + commission at 100% quota)
    Commission rate: 8% of ACV for new employer group contracts (paid at signing)
    Commission structure:
      0-74% of quota: 6% commission rate (below-quota rate; maintains affordability)
      75-99% of quota: 8% commission rate (standard rate)
      100-124% of quota: 8% commission rate + $2,000 accelerator per deal at 100%+ attainment
      125%+: 10% commission rate (accelerator; paid on all deals after 125% threshold)
    Renewal commission: 3% of renewal ACV (lower than new — renewing is easier than acquiring)
    Upsell commission: 6% of the incremental ACV added at renewal
    
    Payment timing:
      50% of commission paid at contract signing
      50% paid when the customer makes their first PMPM payment (risk of implementation failure)
      
    Clawback:
      If a customer churns within 6 months of signing: 100% of the signing commission is clawed back
      If a customer churns between 6-12 months: 50% of the signing commission is clawed back
      No clawback after 12 months
      
  COLUMN6 (Agency Sales — IO-based):
    Base salary: $70,000-$90,000/year
    OTE: $140,000-$180,000 (higher OTE reflects higher ACV deals and more transactional nature)
    Commission rate: 6% of IO value (paid when the IO is signed and the campaign begins delivery)
    Structure:
      0-74% of quota: 4% commission rate
      75-99% of quota: 6% commission rate
      100-124% of quota: 6% commission rate + $5,000 quarterly accelerator at 100%+ attainment
      125%+: 8% commission rate
    Repeat booking commission: 4% on repeat IOs from the same agency within 90 days
      (lower rate — the relationship is already established)
    
    Payment timing:
      100% paid when the IO is signed and campaign delivery begins
      No clawback (delivery is the obligation; rep is not responsible for campaign outcomes)

COMMISSION CALCULATION PROCESS:
  Step 1: Confirm the deal is signed (commission is earned at signature, not at proposal)
  Step 2: Confirm the deal value (ACV as defined in the contract — not the proposal)
  Step 3: Calculate the rep's attainment YTD (where are they vs. quota for the year?)
  Step 4: Apply the correct commission rate for their attainment tier
  Step 5: Calculate the commission amount
  Step 6: Apply clawback if applicable (check prior months for churn events)
  Step 7: Document the calculation; submit for payroll
  
  Example (Allevio; rep at 85% of quota; closes a $132K ACV deal):
    Rep attainment: 85% → Commission rate: 8%
    Commission on deal: $132,000 × 8% = $10,560
    Payment: $5,280 at signing (50%); $5,280 at first PMPM payment (50%)
    
COMMISSION GOVERNANCE:
  Commission calculations are reviewed by Dr. Lewis before payment
  Any dispute goes to Dr. Lewis → CEO → resolution (not to the accounting team directly)
  Matt Mathison approves any commission payment >$20K (large deal or accelerator payout)
  Commission plan changes require 30-day advance notice to reps in writing
  No retroactive commission plan changes (changes apply to future deals only)
```

## Output Format

```markdown
# Commission Calculation — [Deal Name] | [Entity]
**Rep:** [Name] | **Deal signed:** [Date] | **Deal value (ACV):** $[X]K
**Calculated by:** Dr. Lewis | **Date:** [Date]

---

## Commission Calculation

| Component | Amount |
|-----------|--------|
| Deal ACV | $[X]K |
| Rep YTD quota attainment (before this deal) | [X]% |
| Commission rate (based on attainment) | [X]% |
| **Commission earned** | **$[X]K** |

---

## Payment Schedule

| Payment | Amount | Trigger | Date |
|---------|--------|---------|------|
| 50% at signing | $[X]K | Contract signed | [Date] |
| 50% at first PMPM | $[X]K | First payment received | Est. [Date] |

---

## Clawback Risk

**Risk period:** 6 months from signing (full clawback) / 6-12 months (50% clawback)
**Clawback period ends:** [Date] (full) / [Date] (50%)

---

## Approval

| Step | Approver | Status |
|------|---------|--------|
| Commission review | Dr. Lewis | ✅ Approved |
| Payment authorization | CEO | ✅ Approved |
| Matt Mathison approval (if >$20K) | Matt Mathison | [N/A / ✅ Approved] |
```

## Output Contract
- Commission is a contract, and contracts must be honored exactly — if the commission plan says 8% at 100% attainment, every rep who hits 100% gets 8% on every deal; if the plan is later revised to 7%, it applies only to future deals (not retroactively); Dr. Lewis treats the commission plan as a binding commitment to the rep and enforces it consistently; inconsistent commission payment destroys rep trust faster than almost any other management failure
- Pay at signature, not at payment — commission paid when a deal closes (at contract signing) creates the right incentive alignment; if commission is paid when cash is received (which can be 30-60 days later), the rep has no incentive to help with implementation or first payment issues; Allevio's 50%/50% split (signature/first payment) is a reasonable compromise that protects the company from implementation failures while giving the rep a clear, near-term payout signal
- Clawback protects the company from commission on churned accounts — a rep who closes an employer group that churns 3 months later should not keep the full commission; Allevio's 6-month full clawback and 12-month 50% clawback is the standard framework; clawbacks are disclosed in the commission plan and in the employment agreement; Dr. Lewis tracks all active clawback risk and calculates clawback amounts when a customer churns within the clawback period
- HITL required: Dr. Lewis calculates all commissions; CEO authorizes payment; Matt Mathison approves any individual commission payment >$20K; rep disputes go to Dr. Lewis, then CEO, for resolution; commission plan changes require 30-day notice to reps in writing (HR involvement for any plan changes that affect existing employment agreements); Dr. Lewis does not process commission payments without CEO authorization; payroll does not process commission without Dr. Lewis's calculation and CEO's sign-off

## System Dependencies
- **Reads from:** CRM closed deal records (GoHighLevel — deal ACV; signing date; contract status); quota plan (sales-quota-setter — rep's quota for commission rate calculation); QuickBooks (first PMPM payment received — triggers 2nd commission tranche for Allevio); renewal pipeline (sales-renewal-manager — churn events that trigger clawback); hr-employment-agreement-manager (commission plan as incorporated in the employment agreement); prior commission payments (Dr. Lewis commission log — YTD commission paid; clawback amounts outstanding)
- **Writes to:** Commission calculation record (SharePoint/HR/<Company>/Commissions/[Rep]_[Deal]_[Date]_Commission.pdf); QuickBooks payroll (commission payment instruction); clawback tracker (when a churn occurs within the clawback period — calculate and notify rep); Matt Mathison commission approval memos (for payments >$20K); annual W-2 commission totals (for payroll/tax year-end)
- **HITL Required:** Dr. Lewis calculates; CEO authorizes payment; Matt Mathison approves >$20K; rep disputes resolved by Dr. Lewis + CEO; commission plan changes require 30-day written notice to reps; Dr. Lewis does not process payments without CEO authorization; payroll does not pay without Dr. Lewis calculation; Dr. Lewis does not change a commission plan retroactively under any circumstances

## Test Cases
1. **Golden path:** Rep A closes an Allevio employer group at $144K ACV — rep is at 88% of annual quota before this deal → Commission calculation: ACV = $144,000; attainment tier: 75-99% → commission rate: 8%; commission: $144,000 × 8% = $11,520; payment: $5,760 at signing (paid with the next payroll cycle); $5,760 at first PMPM payment (track implementation; expected 45 days); clawback period: 6 months full / 12 months 50%; Dr. Lewis calculation confirmed; CEO authorizes; commission paid per schedule; Matt Mathison not required (<$20K)
2. **Edge case:** A rep closes a Column6 IO at $380K (single deal) — commission at 6% = $22,800 → Dr. Lewis: "$22,800 is above the $20K threshold — Matt Mathison approval required before payment. Commission calculation: $380,000 × 6% = $22,800. Rep attainment YTD: 78% → rate: 6% (correct). No clawback risk for Column6 IOs. Payment: 100% at campaign launch (IO signed; delivery begins). Preparing the Matt Mathison approval memo." Matt Mathison receives the calculation; approves; commission paid on payroll following campaign launch confirmation
3. **Adversarial:** An Allevio employer group churns 4 months after signing — the rep received $4,200 (50% of the signing commission) at contract signing → Dr. Lewis calculates the clawback: "Churn occurred 4 months after signing — within the 6-month full clawback window. Full clawback applies: $4,200 (already paid) must be returned. The 2nd tranche ($4,200 — payable at first PMPM) is also voided (first PMPM payment will not occur). Rep notification: Dr. Lewis contacts the rep to explain the clawback per the commission plan terms; the $4,200 will be deducted from the next commission payment (or from final paycheck if the rep has departed). This is not punitive — it is the contractual clawback provision that was disclosed in the commission plan and employment agreement." Rep acknowledges; clawback processed per the plan

## Audit Log
All commission calculations retained by rep, deal, and date. CEO authorization records retained. Matt Mathison approval records (>$20K) retained. Clawback records retained (trigger event; amount; processing). Commission plan versions retained with effective dates. Annual W-2 commission records retained. Rep dispute resolution records retained.

## Deprecation
Retire when each portfolio company has a VP of Sales and HR who manage the commission plan and calculation — with Dr. Lewis reviewing the plan design annually and Matt Mathison approving the commission budget in the operating plan.
