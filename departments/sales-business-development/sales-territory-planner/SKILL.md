---
name: sales-territory-planner
description: "Plan and manage sales territories for MBL portfolio companies. Use when the user says 'territory', 'sales territory', 'territory planning', 'territory design', 'territory assignment', 'territory mapping', 'territory coverage', 'territory carve', 'rep territory', 'assign accounts', 'territory split', 'territory boundaries', 'who owns this account', 'account ownership', 'territory balance', 'territory review', 'territory fairness', 'territory equity', 'territory capacity', 'which rep covers', 'territory expansion', 'geographic territory', 'territory plan', 'account assignment', or 'territory rebalance'."
metadata:
  version: 2.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--rep <name>] [--action <design|assign|review|rebalance>] [--segment <geography|industry|account-size>]"
---

# Territory Planner

Plan and manage sales territories for MBL portfolio companies — designing territory allocations that give every rep a fair, workable, and productive set of accounts and prospects. A poorly designed territory creates resentment (rep A has 3× the market opportunity of rep B), wastes time (rep drives across the city to call on accounts that could be covered more efficiently), and produces misleading attainment data (rep A's "great performance" may just be a better territory). Dr. Lewis designs territories from market data, not from seniority or convenience.

## When to Use
- Adding a new sales rep (what territory will they cover?)
- Annual territory review (are territories still balanced given market changes?)
- A rep is consistently over or under their quota (territory imbalance may be the cause)
- A rep departs (how do we reassign their territory?)

## Territory Planning Framework

```
TERRITORY DESIGN PRINCIPLES:
  Fair: Each rep should have roughly equal market opportunity (not necessarily equal accounts)
  Workable: The geography should be manageable (a rep can't cover Phoenix + Tucson + Flagstaff alone)
  Clear: Account ownership is unambiguous — every prospect belongs to exactly one rep
  Documented: Territory boundaries are in writing and acknowledged by both the rep and Dr. Lewis
  
TERRITORY DIMENSIONS (use one or more per entity):
  1. Geography: Primary — most B2B territories use geography as the first carve
  2. Industry / vertical: Secondary — useful when product fit varies significantly by industry
  3. Account size: Tertiary — large accounts often get a dedicated rep or executive coverage
  4. Named accounts: Specific accounts assigned to specific reps regardless of territory rules

ENTITY-SPECIFIC TERRITORY DESIGN:

  ALLEVIO (Employer Group Sales):
    Primary carve: Geography (county + ZIP code clusters)
      Maricopa County (greater Phoenix):
        West Valley (Goodyear; Avondale; Surprise; Peoria): Rep A
        Central Phoenix (Phoenix; Scottsdale; Tempe; Chandler; Gilbert; Mesa): Rep B
        [If 3rd rep added: East Valley or North Scottsdale carved out]
      Pima County (Tucson): No dedicated rep currently — CEO manages; add when 3rd rep hired
      Coconino / Yavapai (Flagstaff / Prescott): Out of territory until rep capacity exists
      
    Industry overlay:
      Professional services (law; consulting; CPA) → Rep with stronger relationship sales style
      Construction → Rep with stronger direct/transactional style
      No hard carve by industry unless a rep has a clear expertise advantage
      
    Named accounts:
      Any employer group with 300+ employees → CEO + Dr. Lewis joint account (not a single rep)
      Any employer group referred by a broker → Broker's assigned rep handles all of that broker's referrals
      
    Territory capacity model:
      Maricopa territory: ~8,500 ICP-qualifying employers; rep can realistically contact ~200/year
      At 30% discovery rate; 30% win rate: ~18-20 new groups/year per rep
      
  COLUMN6 (Agency Sales):
    Primary carve: Agency type + relationship ownership (not geography — buyers are national)
      Agency tier 1 (strategic — top 50 US agencies by CTV budget): CEO + Dr. Lewis manage
      Agency tier 2 (mid-market — active CTV buyers with $500K-$5M annual budgets): Rep manages
      Agency tier 3 (small indie agencies — <$500K CTV budget): Outbound sequencer only; no dedicated rep
    Brand direct: CEO + Dr. Lewis manage major brand relationships; rep can work brand campaigns
      when the agency is the lead contact
    
  HIVE (Mineral Rights Acquisition):
    Territory: Defined by lease area within the Uinta Basin
      Primary development area: Map-defined boundary — all landowners within this boundary
      Priority sub-areas: Specific sections/townships where production economics are best
      Named landowners: Any landowner with 500+ acres → CEO + Dr. Lewis handle personally

TERRITORY REBALANCE TRIGGERS:
  Annual review: Every October; before territory takes effect January 1
  Rep departure: Immediate temporary reassignment to CEO; permanent rebalance within 30 days
  Rep addition: New rep gets a defined territory (carved from existing territories or new geography)
  Market change: If a new geography is opened or an ICP definition changes materially
  Fairness complaint: If a rep believes their territory is significantly smaller than a peer's;
    Dr. Lewis investigates using the territory capacity model
```

## Output Format

```markdown
# Territory Plan — [Entity]
**Version:** [X.X] | **Owner:** Dr. Lewis | **Effective date:** [Date] | **Approved by:** CEO

---

## Territory Allocation

| Rep | Territory definition | ICP accounts in territory | Estimated annual potential | Quota |
|-----|---------------------|--------------------------|--------------------------|-------|
| [Rep A] | West Valley Maricopa (ZIP 85XXX-85XXX) | ~2,800 employers | $[X]M | $[X]K |
| [Rep B] | Central/East Valley + Scottsdale | ~3,400 employers | $[X]M | $[X]K |
| CEO | 300+ employee accounts + broker referrals | Named accounts | $[X]M | N/A |

---

## Account Ownership Rules

1. Named accounts (300+ employees): CEO + Dr. Lewis
2. Broker-referred accounts: Assigned to the rep who manages that broker relationship
3. Geographic accounts: Assigned by ZIP code (see the territory map in SharePoint)
4. Conflicts: Any account ownership dispute goes to Dr. Lewis for resolution; CEO is final arbiter

---

## Territory Capacity Analysis

| Territory | ICP accounts | Rep can contact/year | Projected wins/year | Annual revenue potential |
|----------|-------------|---------------------|-------------------|------------------------|
| West Valley | [X] | [X] | [X] | $[X]K |
| Central/East Valley | [X] | [X] | [X] | $[X]K |

---

## Rep Acknowledgment

**Rep A:** [Signed / Date] — acknowledges this territory definition
**Rep B:** [Signed / Date] — acknowledges this territory definition
```

## Output Contract
- Territory capacity determines quota validity — a quota built from a top-down revenue plan without validating that the territory can actually support it is a fantasy; Dr. Lewis validates every territory assignment against a market capacity estimate before setting the corresponding quota (see sales-quota-setter); if the territory doesn't have enough addressable accounts to hit the quota at reasonable win rates, the quota is wrong or the territory needs to expand
- Every account has exactly one owner — ambiguous account ownership is the #1 source of rep conflict; when two reps both call on the same account, the customer gets confused, internal credibility is lost, and commission disputes arise; Dr. Lewis documents every territory boundary explicitly and adjudicates any ownership dispute quickly; the rule is simple: if the account is in your territory, it is yours; if it's in their territory, it is theirs; if it's on the boundary, Dr. Lewis assigns it
- Territory changes are prospective, not retroactive — if a rep has been building a relationship with an account that is technically in another rep's territory, that deal belongs to the rep who has been working it; Dr. Lewis makes territory changes effective at the start of the next period (January 1) unless the CEO approves an exception; mid-period territory changes that reassign a rep's active pipeline are destructive and require CEO approval
- HITL required: Dr. Lewis designs territories; CEO approves the final territory plan; all reps acknowledge their territory in writing; Dr. Lewis adjudicates ownership disputes; CEO is final arbiter if Dr. Lewis's adjudication is contested; Matt Mathison is informed if a territory design requires a material change to the headcount plan or quota model; Dr. Lewis does not reassign an active deal from one rep to another without CEO approval and a commission protection agreement

## System Dependencies
- **Reads from:** ICP market data (sales-ideal-customer-profile — who qualifies as a prospect); market sizing model (sales-market-sizing — how many total addressable accounts are in each territory?); CRM territory fields (GoHighLevel — which rep is assigned to which account); rep headcount (hr-headcount-planner — how many reps do we have and when are new reps starting?); quota plan (sales-quota-setter — territory capacity must support the quota); win/loss by geography (sales-win-loss-analyzer — is there a geographic pattern in wins and losses?)
- **Writes to:** Territory plan document (SharePoint/Sales/<Company>/Territories/TerritoryPlan_v[X]_[Date].pdf); CRM account ownership (GoHighLevel — rep assigned to each account by territory rule); rep employment addendum (hr-employment-agreement-manager — territory as a defined term in the rep's variable compensation agreement); quota plan (territory capacity feeds the quota capacity model); annual sales plan
- **HITL Required:** Dr. Lewis designs; CEO approves; reps acknowledge in writing; Dr. Lewis adjudicates ownership disputes; CEO is final arbiter; any mid-period territory change requires CEO approval; commission protection agreements for deal-in-progress at territory change require CEO + Dr. Lewis + HR sign-off; Matt Mathison informed of material headcount or territory changes that affect the revenue plan

## Test Cases
1. **Golden path:** Annual territory review for Allevio entering 2027 with 2 reps → Dr. Lewis pulls the market data: Maricopa County: 9,200 ICP-qualifying employers (revised up from 8,200 — 3 new ZIP codes added to the ICP geography); current territory: Rep A (West Valley); Rep B (Central/East); capacity model: West Valley has ~3,400 accounts; Central/East has ~5,800 accounts; imbalance: Rep B has 70% of the territory but the same quota as Rep A; Dr. Lewis recommendation: "Either (a) hire a 3rd rep to handle Central Phoenix as its own territory; or (b) shift the boundary to give Rep A a larger piece of the Central Phoenix market. I recommend option A — we have the revenue to support a 3rd rep and the market opportunity to justify it." CEO approves hiring a 3rd rep; Dr. Lewis redesigns the territory into 3 equal-capacity zones; territory plan published; rep acknowledgments collected before January 1
2. **Edge case:** A rep leaves Allevio in March with 7 active deals in their territory → Dr. Lewis acts within 24 hours: "Immediate territory reassignment: All 7 active deals assigned to the CEO temporarily. I've reviewed each deal: 2 are in Contract Sent stage (critical — CEO calls both today); 3 are in Proposal stage (Rep B takes the 2 that are in his extended coverage area; CEO handles the 1 that's technically in the departed rep's carve); 2 are in Discovery stage (new rep assignment when the replacement is hired — or Rep B if they have capacity). Permanent territory reassignment: I'll present options for the 3rd rep hire or territory absorption at the next CEO meeting. No commission dispute expected — departed rep is owed commission on any deals that close from their pipeline within 30 days of departure per the commission plan." CEO executes; deals managed; no churn
3. **Adversarial:** Rep A calls on a prospect in Rep B's territory, closes the deal, and claims the commission → Dr. Lewis: "This is a territory violation. The account is in Rep B's territory per the documented territory plan (signed by both reps in January). Rep A called on the account without authorization. The commission on this deal goes to Rep B (the territory owner) not Rep A (the unauthorized caller). Rep A's compensation: None for this deal. Rep A receives a coaching conversation on territory rules. Going forward: any account Rep A calls on that is not in their territory requires Dr. Lewis approval before the first contact. Rep B is notified and the deal is transferred to their pipeline with full commission credit." CEO confirms the ruling; both reps are briefed; CRM updated; coaching session with Rep A scheduled

## Audit Log
All territory plan versions retained by entity and date. Rep acknowledgment records retained. Territory ownership dispute records retained (dispute description; Dr. Lewis ruling; CEO confirmation if appealed). Mid-period territory changes retained (reason; CEO approval; commission protection terms). Annual review records retained (capacity model; market data used).

## Deprecation
Retire when each portfolio company has a VP of Sales who owns the territory plan — with Dr. Lewis reviewing annually during the budget cycle and Matt Mathison informed of material changes to the rep coverage model.
