---
name: pe-co-investment-manager
description: "Manage co-investment opportunities for MBL Partners LPs and strategic partners. Use when the user says 'co-investment', 'co-invest', 'co-investor', 'co-investment opportunity', 'co-investment offer', 'LP co-investment', 'LP co-invest', 'co-investment rights', 'co-investment notice', 'co-invest LP', 'side car', 'sidecar investment', 'sidecar vehicle', 'co-investment vehicle', 'co-investment SPV', 'SPV co-invest', 'strategic co-invest', 'strategic partner co-investment', 'co-invest structure', 'co-investment terms', 'co-investment fees', 'co-invest fees', 'co-investment economics', 'reduced fee co-invest', 'no fee co-invest', 'co-invest carry', 'co-invest carried interest', 'parallel investment', 'parallel fund', 'co-underwrite', 'co-underwriting', 'co-invest capacity', 'how much to co-invest', 'co-invest sizing', 'co-invest approval', 'co-invest process', 'who gets co-invest', 'co-invest allocation', 'co-invest order of priority', 'co-invest LPA rights', 'co-invest LP rights', 'right of first offer co-invest', 'ROFO co-invest', 'co-investment closing', 'co-invest close', or 'investment alongside the fund'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--deal <deal-name>] [--co-investor <lp-name|strategic-partner>] [--amount <$XM>] [--action <evaluate|structure|offer|close|report>] [--terms <fee|no-fee|reduced-carry>]"
---

# PE Co-Investment Manager

Manage co-investment opportunities for MBL Partners LPs and strategic partners — evaluating when co-investment is appropriate, managing the offer and allocation process, structuring co-investment vehicles (SPVs), and ensuring that LP co-investment rights per the LPA are honored and that co-investor relationships are managed with the same diligence as LP relationships. Co-investment is a valuable LP relationship tool: LPs who co-invest directly alongside MBL have deeper skin in the game; they have better direct visibility into the investment quality; and co-investment opportunities (often at reduced or no fees) are a meaningful LP benefit that MBL can offer to its best LP relationships; Matt Mathison controls co-investment allocation — it is one of the most sensitive GP relationship tools.

## When to Use
- A new deal is being evaluated that is larger than the fund's single-investment limit
- Matt Mathison wants to offer a co-investment to an LP or strategic partner
- An LP invokes their LPA co-investment rights
- Structuring a co-investment SPV for a specific deal

## Co-Investment Framework

```
WHEN CO-INVESTMENT IS APPROPRIATE:

  DEAL SIZE:
    If a deal is too large for the fund to absorb within concentration limits (30% of committed capital),
    co-investment allows MBL to participate in a larger deal than the fund alone can support
    Co-investment fills the equity gap above the fund's single-deal limit
    
  LP RELATIONSHIP BUILDING:
    Offering co-investment to key LPs deepens the relationship (they see MBL's deal quality firsthand)
    LPs who co-invest successfully become strong Fund II commitments
    Matt Mathison identifies which LP relationships benefit most from co-investment access
    
  LPA CO-INVESTMENT RIGHTS:
    Review the LPA for any LP co-investment rights (right to co-invest alongside the fund)
    LP co-investment rights are mandatory: if the LPA gives an LP the right to co-invest,
    MBL must offer the opportunity before accepting capital from third parties
    Process per LPA: notice → response period → allocation → close
    If no LPA co-investment rights: co-investment is a discretionary offer (Matt Mathison decides who gets it)

CO-INVESTMENT STRUCTURE:

  SPV (Special Purpose Vehicle):
    Most common structure: separate LLC or LP for each co-investment
    Co-investors invest into the SPV; SPV invests alongside the main fund in the portfolio company
    SPV is typically tax-transparent (pass-through)
    
  CO-INVESTMENT FEES (standard market terms):
    No-fee / no-carry: most attractive for LPs; reduces MBL's income from the deal
    Reduced fee (e.g., 0.5% management fee; no carry): middle ground
    Full fee (same as fund): rare for co-investment; LPs generally expect a discount
    Matt Mathison approves all co-investment fee structures (economic decision for MBL)
    
  CO-INVESTMENT ECONOMICS:
    Profit allocation: co-investors receive their pro-rata share of investment economics
    without being subject to the fund-level waterfall
    (Co-investor economics are deal-specific; they do not cross-subsidize fund-level performance)
    Losses: co-investors participate in losses at the same pro-rata as the fund
    
  DOCUMENTATION:
    Co-investment LPA or operating agreement (separate from fund LPA)
    Subscription agreement (per co-investor)
    KYC/AML screening (same as pe-new-lp-onboarding)
    Side letter (if co-investor has specific terms)

CO-INVESTMENT PROCESS:

  STEP 1 — IDENTIFY CO-INVESTMENT NEED:
    Deal requires more equity than fund concentration limit allows
    OR Matt Mathison identifies co-investment as a relationship tool
    OR LP invokes LPA co-investment right
    
  STEP 2 — SIZING:
    Total equity needed: [EV - debt] = total equity
    Fund capacity (30% of committed capital): $[X]
    Co-investment need: total equity - fund capacity = $[X] to raise from co-investors
    
  STEP 3 — ALLOCATION DECISION:
    LPA co-investment rights honored first (if any)
    Matt Mathison allocates remaining co-investment capacity to preferred LP relationships
    Allocation documented with rationale (defensible if an LP asks why they weren't offered it)
    
  STEP 4 — OFFER PROCESS:
    Notice to each co-investor: deal summary; size; terms; acceptance deadline
    Co-investors may accept in whole or in part
    If oversubscribed: Matt Mathison pro-rates or selects (documented)
    If undersubscribed: Matt Mathison decides to reduce deal size or find additional co-investors
    
  STEP 5 — CLOSE:
    SPV formed; co-investment subscriptions received
    KYC/AML for each co-investor (new co-investors) or update for existing LPs
    Capital closes simultaneously with main fund investment in the portfolio company
    
  STEP 6 — ONGOING:
    Co-investors receive the same entity reports as fund LPs (with the same HIPAA constraints)
    Co-investors participate in exit proceeds at their pro-rata share
    Co-investor capital accounts maintained by fund administrator
```

## Output Format

```markdown
# Co-Investment Opportunity — [Deal Name] — [Date]
**Co-investment size:** $[X]M | **Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Deal Context

| Item | Amount |
|------|--------|
| Total acquisition EV | $[X]M |
| Total equity required | $[X]M |
| Fund investment (at 30% concentration limit) | $[X]M |
| Co-investment equity to raise | $[X]M |

---

## Proposed Co-Investor Allocation

| Co-investor | Relationship | LPA rights? | Proposed allocation | Fee terms |
|------------|-------------|------------|-------------------|----------|
| [LP A] | 5 years; Fund I LP | Yes — LPA Sec [X] | $[X]M | No fee / no carry |
| [LP B] | Prospective Fund II LP | No | $[X]M | 0.5% fee / no carry |

**Matt Mathison approval required for this allocation before offers go out.**

---

## Co-Investment Terms

**Structure:** SPV (LLC)
**Management fee:** [None / 0.5% annually]
**Carried interest:** [None / X%]
**SPV formation:** [Fund counsel — estimated timeline X weeks]
```

## Output Contract
- LP co-investment rights per the LPA are honored before any third-party co-investor receives an allocation — if the LPA grants an LP the right to co-invest, that right is a legal contractual right; Dr. Lewis reads the LPA to identify any co-investment rights before making any co-investment allocation; if the process fails to notify an LP who had an LPA co-investment right, MBL has breached the LPA; the consequence is LP dispute and potential legal liability; Dr. Lewis reviews the LPA for co-investment provisions at the start of every co-investment process and documents the compliance check
- Matt Mathison owns all co-investment allocation decisions — co-investment allocation is one of the most relationship-sensitive decisions in PE GP management; an LP who wants co-investment access and doesn't get it may interpret the exclusion as a negative signal about their relationship with MBL; Matt Mathison makes every allocation decision with full awareness of the LP relationship context; Dr. Lewis prepares the co-investment capacity analysis and the allocation options, but does not make the allocation decision alone; every allocation decision is documented with Matt Mathison's rationale (defensible if an LP asks why they weren't offered it)
- Co-investor KYC/AML and qualified investor verification is required for every co-investment — a co-investor who is a new entity (even if its principals are known to MBL) must complete the same KYC/AML screening as a new LP; a co-investor who participated in a prior deal but in a different entity must be re-screened for the new entity; "we know these people" is not a substitute for the regulatory compliance process; fund counsel is engaged for each co-investment SPV formation and confirms the qualification of each co-investor before capital is accepted
- HITL required: co-investment decision → Matt Mathison decides (offer or not); co-investment allocation → Matt Mathison approves with documented rationale; LPA co-investment rights check → Dr. Lewis certifies compliance before offers; co-investment fee structure → Matt Mathison approves; SPV formation → fund counsel engaged; co-investor KYC/AML → Dr. Lewis certifies; co-investor subscription → fund counsel reviews; any LP dispute about co-investment allocation → Matt Mathison briefing + legal counsel; co-investment reporting to co-investors → same HIPAA constraints as fund LP reporting

## System Dependencies
- **Reads from:** LPA (co-investment rights; any LP-specific provisions; permitted co-investment structures); pe-new-lp-onboarding (KYC/AML process for new co-investors); pe-lp-admin (LP register; existing LP co-investment history); pe-deal-thesis-builder (deal summary for co-investor offer); pe-fund-accounting (fund concentration position; co-investment capital account); fund counsel (SPV formation; co-investor qualification; co-investment agreement drafting); pe-investment-strategy (concentration limit confirmation)
- **Writes to:** Co-investment offer notices; co-investment allocation records (with Matt Mathison rationale); SPV operating agreements; co-investor KYC/AML files; co-investor capital accounts; co-investment reporting schedule; Matt Mathison co-investment briefings
- **HITL Required:** Co-investment decision → Matt decides; allocation → Matt approves; LPA rights check → Dr. Lewis certifies; fee structure → Matt approves; SPV formation → fund counsel; co-investor KYC → Dr. Lewis certifies; subscription → fund counsel reviews; LP dispute → Matt + legal; reporting → HIPAA constraints applied

## Test Cases
1. **Golden path:** New deal requires $5M total equity. Fund capacity (30% concentration limit): $3.2M. Co-investment need: $1.8M. Dr. Lewis reads LPA: no LP has a mandatory co-investment right. Matt Mathison selects 2 co-investors: LP A ($1M — 5-year relationship; no-fee structure) and LP B ($800K — prospective Fund II LP; 0.5% fee; no carry). Dr. Lewis issues co-investment offer notices: deal summary; SPV structure; fee terms; 5-business-day acceptance window. Both accept in full. KYC confirmed (both existing LPs in good standing). Fund counsel forms SPV (10 days). Co-investor capital calls issued simultaneously with fund capital call. Deal closes. Co-investors receive all entity reports going forward (aggregate data; no PHI for Allevio).
2. **Edge case:** Three LPs each want to co-invest but total demand exceeds the co-investment capacity → Dr. Lewis: "We have $1.8M of co-investment capacity and $3.4M of LP demand from 3 LPs. Matt Mathison must decide the allocation. My analysis: LP A has LPA co-investment rights — they must be honored first ($800K requested; $800K gets priority). Remaining capacity: $1.0M. LP B ($1.2M requested) and LP C ($1.4M requested) are competing for $1.0M. Matt: I'd recommend pro-rata allocation of the remaining $1.0M ($462K to LP B; $538K to LP C — at their relative request sizes) to be fair to both relationships. Alternatively, you may have a relationship reason to favor one. This is your call. I'll document whatever allocation you select with your rationale."
3. **Adversarial:** An LP who was not offered a co-investment opportunity contacts Matt Mathison and says they're "disappointed to have been excluded from the [deal] co-invest" → Dr. Lewis: "Preparing Matt Mathison's response. The facts: (1) This LP does not have an LPA co-investment right (confirmed, LPA Section [X.X]); (2) The co-investment was allocated to [LP A and LP B] because [Matt Mathison's documented rationale]; (3) This LP was not overlooked — they were not included in this specific allocation. Response options for Matt: (a) Acknowledge the disappointment; explain that co-investment capacity is limited and we try to distribute opportunities across LP relationships over time; commit to including them in the evaluation for future co-investment opportunities; (b) If the LP relationship is strategically important for Fund II: offer a supplemental co-investment if additional equity can be structured into the deal; (c) If the LP has expressed interest in co-investment access going forward: discuss structuring their Fund II commitment with enhanced co-investment rights. Matt: which direction? I'll draft the response."

## Audit Log
All co-investment allocation decisions retained permanently (with Matt Mathison rationale; LP rights check). Co-investment offer notices retained. Co-investor KYC/AML files retained. SPV formation records retained (fund counsel). Co-investor subscription agreements retained. Capital account records retained. Reporting to co-investors retained (same retention as LP quarterly reports).

## Deprecation
Co-investment management is an active function during the investment period of each fund. Co-investment SPVs are maintained for the life of each specific investment. Records are archived at exit.
