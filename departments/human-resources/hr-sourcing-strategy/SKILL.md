---
name: hr-sourcing-strategy
description: "Build a candidate sourcing strategy for MBL Partners portfolio company roles. Use when the user says 'sourcing strategy', 'where do we find candidates', 'how do we source', 'candidate pipeline', 'talent pipeline', 'recruitment channels', 'sourcing channels', 'where to post jobs', 'job boards', 'LinkedIn recruiter', 'Indeed posting', 'active vs passive sourcing', 'referral sourcing', 'employee referral', 'referral program', 'recruiter', 'external recruiter', 'retained search', 'contingency search', 'headhunter', 'recruiting firm', 'sourcing plan', 'pipeline building', 'talent acquisition plan', 'where are the candidates', 'sourcing hard-to-fill role', 'niche sourcing', 'healthcare sourcing', 'oil gas sourcing', 'ad tech sourcing', 'programmatic sourcing', 'CTV sourcing', or 'candidate outreach'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--role <role-title>] [--level <ic|manager|director|vp>] [--timeline <weeks>] [--channel <internal|linkedin|indeed|recruiter|all>]"
---

# HR Sourcing Strategy

Build a multi-channel candidate sourcing plan tailored to the role, entity, and timeline — balancing speed, quality, and cost across internal referrals, direct outreach, job boards, and external recruiters. The cheapest hire is a referral; the fastest hire for a niche role may be a retained search; Dr. Lewis determines the sourcing mix for each role based on urgency and complexity; all external recruiter engagements require Dr. Lewis approval and a signed fee agreement before sourcing starts.

## When to Use
- A role profile has been approved (hr-job-profiler complete)
- Need to determine which sourcing channels to activate and in what sequence
- Pipeline is thin after initial posting and needs augmentation
- Role is niche or difficult-to-fill

## Sourcing Strategy Framework

```
CHANNEL HIERARCHY (cost → quality trade-off):

  TIER 1 — INTERNAL FIRST (zero cost; highest fit signal):
    Internal promotion/transfer: check current roster before any external posting
    Employee referral program:
      MBL: $500 gift card for hires who stay 6+ months (Dr. Lewis authorizes)
      Allevio: $500 gift card for non-healthcare-licensed roles; $750 for clinical/licensed roles
      HIVE: $500 gift card; double for Uinta Basin-area landmen/ops referrals
      Column6: $1,000 for agency-side commercial hires (high scarcity premium)
    Alumni/boomerang: past employees in good standing worth direct outreach first

  TIER 2 — DIRECT SOURCING (low cost; requires time investment):
    LinkedIn Recruiter: primary tool for IC to Director level
      MBL strategy: Boolean search → InMail (personalized; reference entity and specific role context)
      Response rate target: ≥20% (benchmark for quality outreach)
    Indeed: primary tool for hourly, administrative, and entry-level roles
    Indeed Sponsored: for healthcare roles (Allevio) and field operations (HIVE)
    Entity-specific channels:
      Allevio: Healthcare Jobsite; HealthcareSource; Arizona Health Care Association; AHIMA for HIM roles
      HIVE: Roughneck.io; OilAndGasJobSearch; DAKOTAS/Uinta Basin local networks; SPE (Society of Petroleum Engineers)
      Column6: TVB (Television Bureau of Advertising); IAB Talent; programmatic-specific Slack communities
      MBL: LinkedIn primary; Korn Ferry/Spencer Stuart alumni networks for senior roles

  TIER 3 — EXTERNAL RECRUITER (higher cost; faster for niche/senior roles):
    When to use external recruiter:
      VP+ role with thin local market
      Niche technical skill with <5 qualified candidates in the region
      Role open >6 weeks with no qualified pipeline from direct sourcing
    Recruiter types:
      Contingency: fee paid only on hire (typically 15-20% of base salary); use for IC-Director roles
      Retained: upfront fee + success fee (typically 25-33% of comp); use for VP+ and CEO searches
    Dr. Lewis approves all external recruiter engagements (cost and quality control)
    Signed fee agreement before recruiter sources any candidates (no verbal arrangements)
    Exclusive vs. non-exclusive: prefer non-exclusive for speed; retained search is always exclusive

SOURCING PLAN TEMPLATE:

  Role: [title]
  Target hire date: [date]
  Sourcing window: [X weeks to generate 6-8 qualified applicants]
  
  Week 1:
    Internal posting (all entities, internal-first rule)
    Referral request sent (Dr. Lewis or CEO sends to relevant team members)
    
  Week 1-2:
    LinkedIn direct sourcing (20-30 targeted profiles)
    Job board posting (Indeed/LinkedIn Jobs)
    
  Week 3+ (if pipeline thin):
    Evaluate recruiter engagement (Dr. Lewis decides)
    Expand geographic search radius (if applicable)
    Adjust comp range if market feedback shows misalignment

DIVERSITY SOURCING:
  Actively source diverse candidate slates — not as a compliance checkbox but because diverse teams outperform
  Before passing on a diverse finalist: document specific competency gap (not "cultural fit")
  Sourcing channels for diverse candidates: Jopwell, Handshake (HBCU focus), Professional associations
```

## Output Format

```markdown
# Sourcing Plan — [Role Title] | [Entity] — [Date]
**Target hire date:** [Date] | **Sourcing window:** [X weeks] | **Approved by:** Dr. Lewis

---

## Channel Mix

| Channel | Start week | Target output | Cost |
|---------|-----------|--------------|------|
| Internal posting | Week 1 | 0-2 candidates | $0 |
| Referral request | Week 1 | 1-3 candidates | $500-1K (if hired) |
| LinkedIn direct | Week 1-2 | 5-10 qualified responses | $0 (Recruiter license) |
| Indeed posting | Week 1 | 5-15 applicants | $[X] |
| External recruiter | Week 3+ (if needed) | 3-6 qualified candidates | [X%] of base salary |

---

## Pipeline Health Gates

| Week | Qualified applicants | Action if below gate |
|------|---------------------|---------------------|
| End of Week 2 | ≥3 | Expand channels; Dr. Lewis reviews comp range |
| End of Week 3 | ≥6 | On track; continue |
| Week 4 (if still thin) | <4 | Engage external recruiter; revisit must-haves |

---

## Diversity Sourcing Channels Activated
- [ ] Jopwell (targeted)
- [ ] Professional association posting: [name]
- [ ] HBCU Handshake (entry-level): [Y/N]
```

## Output Contract
- Internal candidates are always considered first — posting externally without first checking whether an internal candidate is qualified and interested signals to the team that external hires are preferred over developing internal talent; Dr. Lewis checks the current roster for each entity before any external posting goes live; if an internal candidate is qualified, they receive a conversation before the external pipeline is built; if the internal candidate is not selected, the reason is documented and communicated
- Referral requests are sent by the most senior person closest to the role — a referral request from the CEO or Dr. Lewis generates 3× the response rate of a generic company-wide post; Dr. Lewis writes and sends the referral request message; the request is role-specific (not "we're hiring, check our careers page") and includes what success looks like in the role
- External recruiter fee agreements are signed before sourcing begins — verbal recruiter arrangements create ambiguous fee liability; if a recruiter presents a candidate without a signed agreement and the company hires that candidate, the recruiter can assert a fee claim; Dr. Lewis ensures every external recruiter has a signed fee agreement with the entity before they submit a single resume; fee amount, payment trigger, guarantee period, and exclusivity terms are all in writing
- HITL required: sourcing plan → Dr. Lewis approves channel mix; external recruiter engagement → Dr. Lewis approves; recruiter fee agreement → Dr. Lewis signs; comp range expansion (if market feedback) → Dr. Lewis and CEO decide; if pipeline is still thin at Week 4 → Dr. Lewis and CEO review must-haves

## System Dependencies
- **Reads from:** hr-job-profiler (role outcomes; must-haves; comp range; disqualifiers); hr-compensation-benchmarker (market comp validation); hr-metrics-dashboard (time-to-fill benchmarks); entity CEO (referral network contacts)
- **Writes to:** Sourcing plan document (SharePoint → HR → Sourcing → [Entity] → [Role]); LinkedIn Recruiter project; Indeed job posting; referral request communications; external recruiter fee agreement (if activated)
- **HITL Required:** Sourcing plan approval → Dr. Lewis; external recruiter → Dr. Lewis approves + signs fee agreement; comp range adjustment → Dr. Lewis + CEO; pipeline review at Week 2 gate → Dr. Lewis

## Test Cases
1. **Golden path:** Column6 needs a Senior Account Manager (commercial; $90K target; 6-week hire timeline). Week 1: internal posting (no internal candidates available); referral request sent by Column6 CEO to commercial team (1 referral generated). Week 1-2: LinkedIn direct sourcing (25 profiles targeted in programmatic/CTV space; 6 InMail responses; 3 phone screens scheduled); Indeed post (12 applicants; 2 qualified). Week 3 pipeline: 6 qualified candidates in pipeline — above gate. Proceed to interviews. No external recruiter needed. Hire made at Week 6.
2. **Edge case:** HIVE needs a Petroleum Landman in the Uinta Basin — thin local candidate pool → Dr. Lewis: "This is a niche geography play. LinkedIn search in Uinta Basin + Vernal, UT area finds 14 landmen profiles; 9 are employed; 4 are potentially passive. I'm sending personalized InMail to all 14 this week. I'm also posting on OilAndGasJobSearch and reaching out to SPE Uinta Basin chapter. If we don't have 3 qualified candidates by Week 3, I'll engage a Uinta Basin-specific energy staffing firm (fee: 18% of base). Dr. Lewis initiating per sourcing plan."
3. **Adversarial:** A recruiter presents an unsolicited candidate for a Column6 VP Marketing role and implies they should be compensated if hired → Dr. Lewis: "We do not have a fee agreement with this recruiter. I will send them a standard reply stating that we cannot consider their candidates under an implied fee arrangement, but we are open to executing a fee agreement before they submit any candidates. I'll share our standard recruiter agreement template with them. If Column6 is interested in the specific candidate, I'll handle that separately through direct outreach — the candidate is not the recruiter's property."

## Audit Log
All sourcing plans retained. External recruiter fee agreements retained permanently. Pipeline health gate check-ins retained (date; qualified count; action taken). Referral payments retained (name; date; amount; hire reference). Recruiter submissions retained per agreement terms.

## Deprecation
Sourcing plans are archived once the role is filled. Channel performance is reviewed annually (Time-to-fill by channel; cost per hire by channel; quality of hire by channel) to refine the channel hierarchy.
