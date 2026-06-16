---
name: ops-insurance-reviewer
description: "Review business insurance coverage for adequacy and gaps. Use when the user says 'insurance review', 'business insurance', 'are we covered', 'insurance coverage', 'insurance gap', 'insurance audit', 'review our insurance', 'liability coverage', 'GL coverage', 'D&O insurance', 'E&O', 'professional liability', 'workers comp', 'cyber insurance', 'insurance renewal', 'insurance broker', 'check our coverage', or 'business insurance checklist'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <review|renewal|gap-analysis|claim>]"
---

# Ops Insurance Reviewer

Review business insurance coverage at MBL portfolio companies — identifying coverage gaps, verifying adequacy for current risk exposures, and managing renewals. Insurance is a risk transfer mechanism: the right coverage at the right limits means that when something goes wrong, the financial impact is absorbed by the insurer rather than the business. Under-insured companies absorb losses that shouldn't be theirs; over-insured companies pay premiums for coverage they don't need. Dr. Lewis ensures coverage is calibrated.

## When to Use
- Annual insurance review and renewal
- A new risk has emerged (new location, new service line, new headcount level) that may require coverage changes
- A claim needs to be filed or a potential claim needs to be assessed
- A portfolio company has never had a formal insurance review
- A contract requires specific coverage and Dr. Lewis needs to verify it exists

## Insurance Framework

```
Core business insurance types:
  General Liability (GL): Third-party bodily injury, property damage, advertising injury
    Minimum: $1M per occurrence / $2M aggregate — typical for professional services
    Higher limits required: healthcare (Allevio), field operations (HIVE)
    
  Professional Liability / E&O: Claims from professional services errors or omissions
    Required for: MBL (consulting/advisory), Allevio (medical professional liability / malpractice)
    Note: Medical malpractice is separate from E&O for Allevio — providers carry their own
    
  Directors & Officers (D&O): Claims against company leadership for management decisions
    Required for: Any company with a board, investors, or LPs
    MBL HoldCo: Required — LP exposure; portfolio companies: D&O or management liability
    
  Workers Compensation: Required by law in all states for W-2 employees
    AZ, UT, CO, TX: All require workers comp for 1+ employees
    HIVE: Higher risk classification — field/oilfield operations
    
  Commercial Property: Physical assets (building contents, equipment, furniture)
    Covers: Theft, fire, vandalism, certain water damage
    Does NOT cover: Flood, earthquake (separate policies if applicable)
    
  Business Interruption: Lost revenue during a covered property event
    Tie to revenue: coverage should approximate 6-12 months of operating expenses
    
  Cyber Liability: Data breach, ransomware, business email compromise
    Required for: All portfolio companies — every company is a cyber target
    Allevio: HIPAA-specific cyber coverage; breach response costs; notification costs
    
  Commercial Auto: Company-owned vehicles or significant employee vehicle use
    HIVE: Required — field vehicles; Owned vehicle + hired/non-owned coverage

Healthcare-specific (Allevio):
  Medical Malpractice / Professional Liability: Per provider ($1M/$3M minimum)
    Note: Each clinical provider must carry their own or be covered under a group policy
  EPLI (Employment Practices Liability): Claims of discrimination, wrongful termination, harassment
    Required for all; especially important for healthcare due to employee-patient dynamic
  Umbrella/Excess Liability: $1M-$5M umbrella over all primary policies
    Allevio: Recommend $2M minimum given patient-facing operations

Oil & gas-specific (HIVE):
  Pollution Liability: Environmental contamination from well operations
  Control of Well: Costs to regain control of a well blowout
  Commercial Auto: Fleet vehicles + hired/non-owned
  Workers Comp: High-risk classification for field staff
```

## Output Format

```markdown
# Insurance Coverage Review — <Company Name>
**Date:** [Date] | **Prepared by:** Dr. John Lewis
**Insurance broker:** [Name, firm, contact]
**Next renewal date(s):** [Date(s)]

---

## Coverage Summary

| Policy | Carrier | Limits | Annual premium | Expiration | Status |
|--------|---------|--------|--------------|-----------|--------|
| General Liability | [Carrier] | $[M]/$[M] | $[X] | [Date] | 🟢/🟡/🔴 |
| Professional Liability / E&O | | | | | |
| D&O / Management Liability | | | | | |
| Workers Compensation | | | $[X] | | |
| Commercial Property | | | | | |
| Business Interruption | | | | | |
| Cyber Liability | | | | | |
| EPLI | | | | | |
| Umbrella/Excess | | [$ umbrella] | | | |
| [Entity-specific: Medical Malpractice / Pollution / etc.] | | | | | |
| **Total annual premium** | | | **$[X]** | | |

---

## Coverage Gap Analysis

| Coverage type | Required? | Current limits | Adequate? | Gap / Action |
|-------------|---------|--------------|---------|------------|
| General Liability | ✅ | $[M] | 🟢 Yes / 🟡 Low / 🔴 Gap | |
| Cyber Liability | ✅ | $[M] | | |
| D&O | ✅ | $[M] | | |
| EPLI | ✅ | $[M] | | |
| Medical Malpractice (Allevio) | ✅ | Per provider: $[M]/$[M] | | |
| Pollution Liability (HIVE) | ✅ | $[M] | | |

**Critical gaps identified:**
🔴 [Coverage type] — Not in place or limits too low — action required before [date]
🟡 [Coverage type] — Consider increasing limits at next renewal

---

## Contract Compliance

Contracts that require specific insurance:
| Contract/Vendor | Required coverage | Required limits | Currently met? |
|----------------|-----------------|----------------|---------------|
| [Landlord lease] | GL + property | $[M] | ✅ / 🔴 |
| [Healthcare payer contract] | Medical malpractice | $[M]/$[M] | ✅ / 🔴 |
| [HIVE working interest partner] | GL + pollution | $[M] | ✅ / 🔴 |

**Certificates of insurance needed:** [List parties requiring COI — Dr. Lewis requests from broker]

---

## Claims History

| Date | Policy | Claim type | Amount | Status | Lesson learned |
|------|--------|-----------|--------|--------|--------------|
| [Date] | [GL] | [Slip and fall] | $[X] | [Closed / Open] | |

**Claims rate impact at renewal:** [No surcharge expected / $[X] premium increase from claims]

---

## Renewal Recommendations

**For upcoming renewal ([Date]):**
1. [Increase cyber limits from $500K to $1M — ransomware landscape has changed; cost delta ~$2K/year]
2. [Add EPLI — company is now at 15 employees, EPLI risk is real — cost ~$3K/year]
3. [Remove [coverage] — business no longer has this exposure]
4. [Shop GL and property — market is competitive; get 2 competing quotes]

**Broker recommendation:** [Renew with current broker / Get competing broker proposals — rationale]

---

## Matt Mathison Brief (if significant gap or renewal >$25K total premium)

[Company] insurance reviewed. [Key finding: gap identified / coverage adequate / renewal approaching]. [Action: obtaining [coverage] immediately at est. $[X]/year / No action needed]. [Total annual premium: $[X] — [status vs. prior year]].
```

## Output Contract
- Coverage gaps are prioritized by risk magnitude — a missing cyber policy at a healthcare company is more urgent than a missing inland marine rider for office equipment; the gap analysis ranks findings by (1) regulatory requirement, (2) contractual requirement, (3) operational risk magnitude; required coverages (workers comp by law, malpractice for providers) are non-negotiable; gaps in these categories require immediate action, not "address at next renewal"
- Certificates of insurance (COI) are requested proactively — many contracts require proof of coverage; Dr. Lewis requests COIs from the broker for any contract party that requires them, and keeps them on file; a COI that doesn't match the contract requirements (wrong limits, wrong named additional insured) is a contractual breach; verify the COI matches the contract before submitting it
- Renewals are reviewed 60 days before expiration, not 5 — 60 days provides time to: review current coverage, assess any new exposures from the past year, request competing quotes if warranted, and make adjustments before the renewal binds; policies that auto-renew without review often have incorrect limits (company has grown, coverage hasn't) or are above market rate (insurer assumes you won't shop it)
- HITL required: Dr. Lewis reviews all coverage; broker provides technical insurance input; Matt Mathison approves total premium spend >$25K/year or any new policy >$10K/year; CEO is named insured on all policies and must be aware of coverage; critical gaps require immediate action by Dr. Lewis with CEO notification; claim filings require Dr. Lewis oversight

## System Dependencies
- **Reads from:** Existing insurance policies, certificates of insurance, broker communications, contract requirements, risk register (ops-risk-register), financial data (revenue for appropriate limits)
- **Writes to:** Coverage review (SharePoint/Ops/<Company>/Insurance/); COI tracker; broker instructions; renewal decision; Matt Mathison brief
- **HITL Required:** Dr. Lewis reviews; broker for technical underwriting; Matt Mathison for total premium >$25K or new policy >$10K; CEO named insured awareness; claim filings require Dr. Lewis

## Test Cases
1. **Golden path:** Allevio annual insurance review → GL: $1M/$2M (adequate); Medical Malpractice: 2 providers with individual $1M/$3M (adequate — confirm all providers current); Workers Comp: AZ policy, field classification correct; Cyber: $500K (🟡 — recommend increase to $1M given PHI exposure — HIPAA breach costs); EPLI: in place at $500K (adequate for 18 employees); D&O: not in place (🟡 — Allevio has no board; management liability covers similar risk — adequate for now); Umbrella: $1M (adequate); Gap identified: Cyber limits low — request quote for $1M at renewal in 45 days; broker provides $1M cyber option at +$1,800/year premium; Dr. Lewis recommends; CEO approves; renewal bound; Matt Mathison not notified (total premium $22K — under $25K threshold; cyber increase minor)
2. **Edge case:** A new contract with a hospital system requires Allevio to carry $2M/$6M medical malpractice (vs. current $1M/$3M) → This is a contractual insurance requirement that must be met before the contract is signed; contact the broker immediately to quote the increased limits; assess cost; if cost is acceptable relative to contract value, increase coverage and request a COI showing $2M/$6M; if cost is prohibitive, negotiate the insurance requirement with the hospital before signing; never sign a contract you can't meet the insurance requirements of
3. **Adversarial:** "Our broker handles all of this — I don't need to review it" → The broker renews whatever is in place unless you tell them to change it; they don't know your business has grown, added a location, or taken on a new risk unless you tell them; the review is 2 hours per year; it catches coverage that doesn't match the current risk profile, which is the most common insurance failure mode at growing companies

## Audit Log
Coverage reviews retained annually by company. COI tracker maintained. Claim records retained. Renewal decisions and premium history retained. Matt Mathison approvals documented. Gap analysis and remediation documented.

## Deprecation
Retire when portfolio companies have CFOs or risk managers who own insurance reviews, engage brokers directly, and bring renewal decisions to Dr. Lewis only for strategic input, with coverage adequacy verified quarterly as part of the risk register process.
