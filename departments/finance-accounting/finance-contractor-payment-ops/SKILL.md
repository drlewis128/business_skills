---
name: finance-contractor-payment-ops
description: "Manage contractor and freelancer payments for MBL Partners portfolio entities. Use when the user says 'contractor payment', 'freelancer payment', 'pay a contractor', 'pay a freelancer', 'independent contractor', 'IC payment', '1099 contractor', '1099 payment', 'contractor invoice', 'freelance invoice', 'consultant payment', 'consulting invoice', 'pay a consultant', 'contractor onboarding', 'contractor agreement', 'contractor classification', 'employee vs contractor', 'worker classification', 'W-9 contractor', 'contractor W-9', 'contractor tax', 'contractor compliance', 'contractor setup', 'contractor management', 'contractor list', 'who are our contractors', 'contractor spend', 'contractor budget', 'contract worker', 'SOW', 'statement of work', 'contractor SOW', 'contractor engagement letter', 'freelancer agreement', or 'gig worker payment'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--contractor <name>] [--action <onboard|pay|audit|1099|classify>]"
---

# Finance Contractor Payment Ops

Manage contractor and freelancer payments for MBL Partners portfolio entities — onboarding contractors properly (SOW; W-9; classification), processing payments through Bill.com, tracking spend for 1099 reporting, and maintaining clear worker classification to avoid misclassification risk. Contractor relationships are operationally flexible and financially efficient when managed correctly; they create significant tax and labor law exposure when managed carelessly.

## When to Use
- Onboarding a new contractor or freelancer
- Processing a contractor invoice
- Annual 1099 preparation (see also finance-1099-manager)
- Assessing whether a worker should be classified as employee vs. contractor

## Contractor Payment Framework

```
CONTRACTOR ONBOARDING CHECKLIST:
  1. Statement of Work (SOW) or engagement letter: scope; deliverables; rate; term; payment terms
     Entity CEO + Dr. Lewis review SOW for all engagements >$5K
  2. W-9 collected: IRS Form W-9 required before first payment (name; TIN; address)
     Retain for 1099 reporting (if total annual payments ≥$600)
  3. Worker classification confirmed: Dr. Lewis evaluates behavioral control; financial control; type of relationship
     Key factors: does entity control HOW work is done? Does contractor use own tools? Multiple clients?
     If misclassification risk → Dr. Lewis consults CPA before engagement begins
  4. Payment terms set: net 15 or net 30 (contractors are not vendors; pay reasonably promptly)
  5. Bill.com setup: contractor added as vendor with correct 1099 classification
  6. Allevio BAA evaluation: if contractor accesses any Allevio member data → BAA required
  
PAYMENT PROCESSING:
  Standard: contractor submits invoice → Bill.com inbox → entity CEO approves → Dr. Lewis reviews → paid in next payment run
  No payroll tax deductions: contractors are paid gross invoice amount (they pay their own self-employment tax)
  No benefits withholding: no FICA; no income tax withholding; no benefits deductions
  
WORKER CLASSIFICATION ANALYSIS:
  IRS 3-factor test (behavioral; financial; type of relationship):
    Behavioral control: does entity control what the worker does and how they do it? (employee = yes)
    Financial control: does entity control significant aspects of the worker's business? (employee = yes)
    Type of relationship: written contracts; benefits; permanent relationship; integral services? (employee = yes)
  Red flags (contractor may actually be employee):
    Works exclusively for one entity (no other clients)
    Required to follow specific hours/location
    Entity provides tools/equipment
    Relationship is indefinite (not project-based)
    Doing core business function (not specialized outside work)
  Risk: misclassification triggers IRS back taxes + penalties; state labor law claims; worker's comp exposure
  
1099 TRACKING:
  Any contractor paid ≥$600 in a calendar year receives a 1099-NEC by January 31 of following year
  Dr. Lewis tracks total annual contractor payments in QuickBooks by contractor
  Year-end: pull all contractors paid ≥$600; generate 1099-NEC in Gusto or QuickBooks; file with IRS
  Detail: finance-1099-manager skill owns the annual 1099 filing process
  
CONTRACTOR SPEND ANALYSIS (QUARTERLY):
  Total contractor spend per entity vs. budget
  Any contractor approaching misclassification risk thresholds (exclusive; indefinite; hours-controlled)
  Contractors without W-9 on file → hold next payment until W-9 received
  Contractors with lapsed SOW → renew or offboard
  
ALLEVIO NOTE:
  Contractors who interact with any aspect of clinical operations → BAA evaluation required
  Even if contractor doesn't see individual member data, proximity to clinical processes triggers evaluation
  Dr. Lewis documents BAA evaluation outcome for every Allevio clinical-adjacent contractor
```

## Output Format

```markdown
# Contractor Record — [Contractor Name] — [Entity]
**Onboarded:** [Date] | **Onboarded by:** Dr. Lewis

---

## Contractor Onboarding Checklist
- [x] SOW or engagement letter on file (SharePoint link)
- [x] W-9 collected (file retained for 1099)
- [x] Classification confirmed: Independent Contractor (low misclassification risk)
- [x] Bill.com setup: 1099 vendor ✅
- [x] BAA evaluated: [Required / Not required] (Allevio)
- [x] Payment terms: Net [X]

---

## Payment History

| Invoice | Date | Amount | Status | 1099 Running Total |
|---------|------|--------|--------|-------------------|
| [Ref#] | [Date] | $X | Paid | $X |

**Annual total: $X | 1099 required (≥$600)? [Yes/No]**
```

## Output Contract
- Worker misclassification is one of the most common and costly compliance errors in small portfolio companies — Dr. Lewis evaluates every new contractor engagement against the IRS 3-factor test before the first payment; if there is meaningful misclassification risk (e.g., the contractor works exclusively for one entity, does the core business function, and follows a fixed schedule), Dr. Lewis does not approve the engagement until the entity CEO and a CPA have reviewed the classification; the cost of misclassification (back FICA taxes, penalties, and potential worker claims) is almost always more than the cost of simply hiring the person as an employee
- The W-9 is a hard gate before the first payment — no W-9, no payment; this rule is not negotiable; a contractor who provides services and then resists providing a W-9 creates both a tax compliance problem (IRS requires it for 1099) and a potential fraud signal (legitimate contractors provide W-9s immediately); if a contractor provides services without a W-9 and Dr. Lewis cannot issue the 1099, the entity could face penalties for non-filing; the gate prevents this; W-9 collection happens before work begins, not before the invoice arrives
- HITL required: new contractor SOW >$5K → entity CEO + Dr. Lewis review; misclassification risk → Dr. Lewis + CPA before engagement; Allevio clinical-adjacent contractor → BAA evaluation; W-9 not received → hold payment; contractor spend >$50K annually → entity CEO + Dr. Lewis review (may be better as hire); annual 1099 filing → finance-1099-manager process; contractor offboarding → entity CEO confirms; classification dispute from contractor → Dr. Lewis + CPA + entity CEO

## System Dependencies
- **Reads from:** Bill.com (contractor invoices; payment history); QuickBooks (annual contractor spend tracking; 1099 report); SharePoint (SOW files; W-9 files; BAA evaluations); finance-vendor-payment-ops (contractor also onboarded as vendor in Bill.com); revops-data-governance (Allevio BAA status for contractors)
- **Writes to:** Bill.com (contractor vendor records; payment approvals); QuickBooks (contractor payment GL entries; 1099 tracking); SharePoint (contractor records; W-9 files; classification records); finance-1099-manager (annual filing inputs); entity CEO contractor approval records
- **HITL Required:** SOW >$5K → entity CEO + Dr. Lewis; misclassification risk → Dr. Lewis + CPA; Allevio → BAA evaluation; W-9 missing → hold payment; >$50K annual → entity CEO + Dr. Lewis review; 1099 → finance-1099-manager; offboarding → entity CEO; classification dispute → Dr. Lewis + CPA + entity CEO

## Test Cases
1. **Golden path:** Column6 onboards a freelance media analyst ($3,500 SOW; 3-month project; market research and competitive intelligence). Onboarding: SOW reviewed (project-based; deliverables clear; not core business function; analyst has other clients) ✅. Misclassification risk: low (multiple clients; project-based; analyst provides own tools; not Column6 employee work) ✅. W-9 received Day 1 ✅. Bill.com setup as 1099 vendor ✅. Net 30 payment terms ✅. BAA evaluation: no Allevio involvement; not applicable ✅. 2 invoices processed ($1,750 each); both paid in regular run. Annual total: $3,500 (<$600 threshold... wait: $3,500 > $600 → 1099-NEC required). Dr. Lewis adds to 1099 tracker. Clean engagement.
2. **Edge case:** Entity CEO has been working with a "contractor" every week for 11 months, telling them what to work on daily, providing them a company laptop, and they have no other clients → Dr. Lewis: "This engagement pattern has serious misclassification risk. The characteristics you've described — exclusive relationship; daily direction on tasks; entity-provided equipment; indefinite term — align more with an employment relationship than an independent contractor under the IRS 3-factor test. Before we process another payment, I need to brief the entity CEO and our CPA on the classification risk. Options: (1) formally convert the contractor to a W-2 employee (cleanest resolution; onboard properly); (2) restructure the engagement to reduce control and exclusivity (may be difficult if the work is core business function); (3) accept the risk and document the business rationale (not recommended). This is time-sensitive — every additional payment while misclassified adds to the exposure."
3. **Adversarial:** Contractor refuses to provide a W-9, claiming "I don't want the entity knowing my Social Security number" → Dr. Lewis: "The W-9 uses a Tax Identification Number (TIN) — which can be an EIN (if the contractor has a business entity) instead of a personal SSN. If they operate as a business, they can provide their business EIN instead. If they're operating as an individual without a business entity, the SSN is required for 1099 reporting — there's no alternative; it's an IRS requirement. I won't process payment without the W-9. If the contractor is uncomfortable with an SSN, the path is to create an LLC and provide an EIN — that's a common solution. I can explain this to them directly. But the gate stands: W-9 first, payment second."

## Audit Log
Contractor onboarding records (permanent; W-9 retained 7 years). SOW files. Classification evaluation records. Allevio BAA evaluation records. Annual contractor spend tracking. 1099 eligibility records. Payment history by contractor. Misclassification risk assessments. Entity CEO contractor approval records. CPA consultation records (classification concerns).

## Deprecation
Classification criteria reviewed when IRS or state labor law guidance changes. Payment process reviewed when Bill.com capabilities change. 1099 threshold reviewed if IRS changes reporting requirements. Allevio BAA evaluation process reviewed when HIPAA guidance changes. SOW review thresholds reviewed annually.
