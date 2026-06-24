---
name: sales-allevio-employer-seller
description: "Run the full Allevio employer sales process from prospecting to signed contract. Use when the user says 'Allevio sales', 'sell Allevio', 'Allevio employer', 'sign an employer', 'employer sales process', 'Allevio sales process', 'how to sell Allevio', 'Allevio pitch', 'Allevio value proposition', 'Allevio employer pitch', 'selling MSO', 'MSO sales', 'selling employer-sponsored primary care', 'primary care sales', 'employer benefits sales', 'Allevio demo', 'Allevio proposal', 'Allevio close', 'Allevio contract', 'employer benefits pitch', 'employer healthcare pitch', 'PMPM pitch', 'Allevio PMPM', 'Allevio ACV', 'employer onboarding', 'Allevio enrollment', 'Allevio pricing', 'Allevio ROI', 'employer ROI', 'healthcare cost reduction pitch', 'benefits cost pitch', 'AE for Allevio', 'Allevio AE', 'Allevio account executive', 'sign a new employer', 'new employer', or 'employer agreement'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--stage <prospecting|discovery|demo|proposal|close|contract>] [--employer-size <small|mid|large>]"
---

# Sales Allevio Employer Seller

Run the full Allevio employer sales process — covering the complete arc from ICP-matched employer identification to signed MSO agreement. Allevio's model is B2B benefits sales: the buyer is an HR Director or CFO, not an individual employee; the decision cycle averages 60-90 days; the compelling event is almost always an upcoming benefits renewal. HIPAA governs every data touchpoint in this process — employer data in the pipeline, not member data.

## When to Use
- Running a full Allevio employer sales cycle from first contact to contract
- Preparing for any stage of the Allevio sales process (discovery; demo; close)
- Coaching an Allevio AE on process and pipeline quality
- Reviewing an Allevio sales opportunity in pipeline review

## Allevio Employer Sales Framework

```
ALLEVIO EMPLOYER SALES OVERVIEW:
  Product: Employer-sponsored primary care MSO (Medical Services Organization)
  Buyer: HR Director (champion) + CFO or CEO (economic buyer)
  Deal size: avg $8,500 PMPM/month; avg ACV $102,000/year (140 employees × $60 PMPM × 12)
  Sales cycle: 60-90 days (open enrollment timing compresses to 45 days in Q3)
  Close signal: prospect engages CFO in conversation; asks about census process
  Compelling event: almost always benefits renewal date (annual; Q4 in most cases)
  
ALLEVIO SALES PROCESS (8 stages in GHL):
  Stage 1 — Prospect: ICP-verified employer in GHL; outreach not yet initiated
  Stage 2 — Contacted: outreach sent; awaiting response; follow-up sequence running
  Stage 3 — Discovery 1: first call scheduled or completed; MEDDPICCC partially known
  Stage 4 — Discovery 2 / Qualified: MEDDPICCC ≥6/8 complete; economic buyer identified; compelling event confirmed
  Stage 5 — Demo: Allevio demo scheduled or completed (HR Director + CFO preferred)
  Stage 6 — Proposal: written proposal delivered; verbal feedback received
  Stage 7 — Negotiation: pricing or terms discussion; internal approval in progress
  Stage 8 — Closed Won / Closed Lost: contract signed or opportunity archived
  
ALLEVIO VALUE PROPOSITION (core):
  1. Healthcare cost reduction: employers average 15-22% reduction in claims trend by year 2
  2. Primary care access: employees have same-day / next-day PCP access (vs. 3-5 week wait with traditional primary care)
  3. Provider continuity: Allevio supplements — employees keep existing specialist relationships
  4. Employer ROI: typical break-even in 12-18 months; positive ROI sustained through claims reduction
  5. Employee satisfaction: health benefit employees actually use → retention and engagement signal
  
ALLEVIO DEMO STRUCTURE (see also: sales-allevio-demo-guide):
  20-30 minutes; HR Director + CFO strongly preferred
  Flow: problem restatement (their words) → how Allevio works (clinical model overview; 3 slides max) →
    employee experience walkthrough (enrollment; scheduling; access) → employer dashboard (aggregate reporting) →
    ROI model (their numbers populated) → Q&A → next step
  HIPAA: demo uses aggregate employer data for ROI examples; no individual member case studies; 
    employer-provided census data is collected only after contract is signed
    
ALLEVIO PRICING MODEL:
  PMPM rate: $50-$120 (varies by employee count; service tier; contract length)
  Typical: $60-$80 PMPM for 75-300 employee employers on 12-month terms
  Annual contract: 12-month minimum; 90-day notice for non-renewal; auto-renew
  Implementation fee: confirm with entity CEO (may vary by market or employer size)
  Billing: monthly PMPM invoicing; employer-aggregate (never employee-level); DSO target <40 days
  Non-standard pricing: entity CEO must approve before any proposal is sent
  
ALLEVIO SALES METRICS (rep targets):
  Prospecting: 15 new employer contacts/week; 4 meetings booked/week
  Pipeline: ≥3× quota coverage maintained (monthly review)
  Demo-to-proposal rate: ≥65% (if demo doesn't produce a proposal, coaching review)
  Proposal-to-close rate: ≥25% (win rate from proposal stage)
  Average sales cycle: 60-90 days; anything >120 days → pipeline review and decision to continue or archive
  
ALLEVIO HIPAA SALES RULES (non-negotiable):
  GHL pipeline: employer name + HR contact + firmographic data ONLY; no member names; no diagnoses; no claims data
  Discovery questions: ask about employer-aggregate benefits cost; never about individual employee health
  Demo: show aggregate dashboards; no individual employee data in demo environment
  References/case studies: employer-aggregate outcomes only; no member-level data shared with prospects
  Census collection: only after contract is signed; census data is Protected Health Information once collected
  Contract: MSO agreement includes BAA for any Allevio data processing vendor; entity CEO signs all agreements
```

## Output Format

```markdown
# Allevio Opportunity — [Employer Name] | [Date]
**Stage:** [1-8] | **Employee count:** [N] | **Est. ACV:** [$X]
**Compelling event:** [Benefits renewal date] | **Champion:** [HR Director name]
**Economic buyer:** [CFO/CEO name; access level] | **Close target:** [Date]

---

## MEDDPICCC Status
[See sales-discovery-guide format — 9-dimension table]

## Stage Assessment
**Stage-appropriate activity:** [What should be happening at this stage]
**Blocking issue (if any):** [What's preventing stage advancement]
**Recommended next action:** [Specific; with date]

---

## Pipeline Value
**PMPM rate:** $[X] | **Enrolled employees:** [N] | **Annual value:** $[X]
**Confidence %:** [Low/Medium/High based on MEDDPICCC completeness]
```

## Output Contract
- Benefits renewal date is the sale's heartbeat — the Allevio sales cycle exists within the employer's annual benefits renewal calendar; most employers renew in Q4 (October-January); the rep must know the renewal date by end of Discovery 1; if the renewal is in 3 months, the rep has 6 weeks to complete discovery, demo, and proposal before the decision is made; if the renewal is in 12 months, the rep has more runway but also less urgency; pipeline review tracks renewal date for every open Allevio opportunity; an opportunity without a known renewal date is an opportunity without a compelling event; Dr. Lewis flags these in pipeline review as requiring discovery follow-up
- Census is never collected before the contract is signed — the employer census (name; date of birth; ZIP code; gender of each employee) is PHI once it's associated with Allevio's clinical system; collecting census before the contract is signed means Allevio is handling PHI without a signed agreement; Dr. Lewis enforces this with Allevio AEs as an absolute rule; any AE who receives an employer census via email before contract signature must immediately: (1) not import the census into any system; (2) notify Dr. Lewis; (3) notify the entity CEO; the census collection step is explicitly listed in the onboarding workflow as "post-contract signed"
- HITL required: non-standard pricing → entity CEO before proposal; all Allevio contracts → entity CEO countersigns; demo with economic buyer → entity CEO may join (strategic accounts); pipeline review ≥$200K total pipeline → entity CEO + Dr. Lewis quarterly; GHL pipeline audit → Dr. Lewis monthly (verify no member data in employer records); census pre-collection → Dr. Lewis + entity CEO immediate; stall >30 days → entity CEO + Dr. Lewis review

## System Dependencies
- **Reads from:** GHL (Allevio employer pipeline; contacts; stage; activity); ICP definition (sales-icp-builder); discovery guide (sales-discovery-guide); MEDDPICCC status; benefits renewal dates; Allevio pricing guide; aggregate employer outcome data (no PHI); competitive intelligence (sales-competitive-playbook)
- **Writes to:** GHL (stage updates; MEDDPICCC fields; activity log; next steps; close date); Allevio contract repository (SharePoint → Allevio → Sales → Contracts); entity CEO authorization request (non-standard terms); onboarding handoff (sales-allevio-onboarding-handoff; post-contract); win/loss records; pipeline review reporting
- **HITL Required:** Non-standard pricing → entity CEO; all contracts → entity CEO countersigns; census pre-collection → Dr. Lewis + entity CEO immediate; pipeline audit → Dr. Lewis monthly; stall >30 days → entity CEO + Dr. Lewis; pipeline >$200K → quarterly entity CEO + Dr. Lewis; HIPAA rules enforced at all pipeline stages

## Test Cases
1. **Golden path:** 210-employee self-insured manufacturing employer in Scottsdale. ICP Tier 1. Discovery 1 (April 5): benefits renewal November 1; HR Director champion; CFO economic buyer; healthcare cost up 23%; CFO given 2 renewals to fix. Discovery 2 (April 12): CFO confirmed economic buyer; decision process 2 weeks evaluation + 1 week CFO review; BAA and legal review expected. Demo (April 22): HR Director + CFO attending; ROI model populated with employer estimates. Post-demo: CFO requests cost model vs. current trend. Proposal (April 28): $72 PMPM × 210 employees = $15,120/month; ROI model shows $47K in avoided cost increases by year 2. Close (May 8): contract signed by HR Director; countersigned by Allevio entity CEO. Census collection begins May 9. Onboarding handoff completed (45-day timeline; go-live June 23 — 5 months before open enrollment).
2. **Edge case:** Rep receives employer census spreadsheet via email from HR Director before the contract is signed ("Just starting to gather this so we're ready") → Dr. Lewis: "Do not import this file into any system. This is PHI once associated with Allevio. Actions: (1) Do not open the attachment beyond confirming what it is; (2) Reply to the HR Director: 'Thank you for getting this ready — we'll reach back out for the census as soon as the contract is signed, as that's when we formally begin your data setup. We're working to get the contract to you this week.' (3) Notify entity CEO immediately. (4) Log this as a near-miss HIPAA event. The census collection step in the onboarding workflow needs to be reinforced with this rep."
3. **Adversarial:** Allevio AE wants to use an individual employer employee's health testimonial ("She had diabetes and Allevio changed her life") in sales materials → Dr. Lewis: "That testimonial is PHI — an individual employee's health condition associated with Allevio's clinical program is PHI under HIPAA. It cannot be used in sales materials without a HIPAA-compliant written authorization from the individual, reviewed by Allevio's HIPAA counsel. The right approach: aggregate employer outcomes ('87% of enrolled employees accessed primary care in year 1; employer healthcare cost trend reduced 19% by Q4') convey the same value without PHI. I'll work with the entity CEO to develop an aggregate case study library that reps can use without privacy risk."

## Audit Log
GHL Allevio employer pipeline records (all stages; activity; stage transitions; SharePoint). Contract execution records (signed contracts; countersignature; SharePoint → Allevio → Sales → Contracts). Census handling records (date collected; post-contract verification; any near-miss incidents). HIPAA near-miss records (pre-contract census collection; individual health data in pipeline). Pipeline audit records (monthly; Dr. Lewis). Win/loss records. Non-standard pricing authorization records.

## Deprecation
Sales process reviewed annually against win/loss and sales cycle data. PMPM pricing reviewed when Allevio's cost structure or service offering changes. HIPAA sales rules reviewed when HHS AI guidance or HIPAA marketing rules change. ICP criteria reviewed quarterly against employer GRR/NRR outcomes. Pipeline stage definitions reviewed when sales motion changes.
