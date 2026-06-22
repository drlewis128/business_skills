---
name: hr-background-check
description: "Manage pre-employment background checks for MBL Partners portfolio company hires. Use when the user says 'background check', 'background screen', 'pre-employment screen', 'pre-employment background', 'criminal background', 'criminal check', 'credit check hire', 'employment verification', 'education verification', 'reference check', 'FCRA', 'adverse action', 'background check declined', 'failed background', 'background check result', 'OIG check', 'OIG exclusion', 'LEIE check', 'LEIE exclusion', 'healthcare background check', 'drug test', 'drug screen', 'motor vehicle record', 'MVR check', or 'background check vendor'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--candidate <name>] [--entity <mbl|allevio|hive|column6>] [--role <role-title>] [--action <order|review|adverse-action>]"
---

# HR Background Check

Manage pre-employment background screening — ordering the correct check package for the role and entity, reviewing results under FCRA guidelines, and executing the adverse action process if a check produces disqualifying information. Background checks are a contingency on the offer letter, not a pre-offer gate; results are reviewed using individualized assessment (not automatic disqualification on any criminal record); OIG/LEIE exclusion is the one automatic disqualifier for Allevio healthcare roles with no individualized assessment needed.

## When to Use
- A signed contingent offer letter is in place and background check needs to be ordered
- Background check results have returned and need to be reviewed
- An adverse action process needs to be initiated

## Background Check Framework

```
BACKGROUND CHECK PACKAGES BY ROLE TYPE:

  STANDARD (all roles, all entities):
    Criminal history: 7-year federal, state, and county (candidate's county of residence + work)
    Social Security trace (identity verification)
    Employment verification: last 3 employers
    Education verification: highest degree claimed
    
  ALLEVIO HEALTHCARE (all roles at Allevio — additional required):
    OIG Exclusion List check (Office of Inspector General) — MANDATORY
    LEIE check (List of Excluded Individuals/Entities) — MANDATORY
    Professional license verification (for licensed clinical roles: RN, LPC, etc.)
    Any OIG or LEIE hit = automatic decline + immediate notification to Allevio CEO + Dr. Lewis
    Note: OIG/LEIE are not FCRA-governed; no individualized assessment required for exclusion hits
    
  FINANCIAL ROLES (CFO, Controller, AP Manager, any role with financial signing authority):
    Credit check (FCRA compliant; candidate consent required; AZ and UT permit)
    
  DRIVING ROLES (field roles, delivery, logistics):
    Motor Vehicle Record (MVR): last 3 years driving history
    
  HIVE FIELD ROLES:
    Standard + any state-specific energy industry requirements
    
FCRA COMPLIANCE PROCESS:
  
  PRE-CHECK:
    1. Stand-alone disclosure form provided to candidate (not embedded in application)
    2. Candidate authorization obtained (signed before check ordered)
    3. Check ordered through approved vendor (Dr. Lewis has approved vendor relationship)
    
  RESULTS REVIEW:
    Review within 5 business days of receipt
    Do NOT automatically disqualify on any criminal record (FCRA individualized assessment)
    
  INDIVIDUALIZED ASSESSMENT (if criminal record found):
    Factors to consider: nature of crime; time elapsed; relevance to role; rehabilitation evidence
    Disqualifying: violent felony within 7 years (no IC role in proximity to clients)
    Disqualifying: financial crime (fraud, embezzlement) for any financial-authority role
    Not automatically disqualifying: misdemeanor; old offense; unrelated crime
    Document assessment rationale before any adverse action
    
  ADVERSE ACTION PROCESS (if background check leads to rescinding offer):
    Step 1: Pre-adverse action notice + copy of report + Summary of Rights → candidate (mail/email)
    Step 2: 5-business-day waiting period (candidate can dispute)
    Step 3: Adverse action notice (if no dispute or dispute resolved against candidate)
    Step 4: Offer is formally rescinded
    Steps 1-3 are legal requirements under FCRA; skipping = FCRA violation
    Dr. Lewis reviews all adverse action decisions before initiating

OIG/LEIE PROCESS (Allevio healthcare roles only):
  Checked before candidate starts work (ideally before start date, not just before hire)
  Exclusion hit: automatic rescission of offer; no waiting period; no individualized assessment
  Dr. Lewis notified immediately; Allevio CEO notified immediately
  Check performed at hire AND monthly thereafter (OIG/LEIE exclusions can occur during employment)
  Monthly check is an Allevio compliance requirement (CMS Conditions of Participation)
```

## Output Format

```markdown
# Background Check Record — [Candidate Name] | [Role] | [Entity] — [Date]
**Check package:** [Standard / Healthcare / Financial / Field]
**Ordered:** [Date] | **Results received:** [Date] | **Reviewed by:** Dr. Lewis

---

## Check Results

| Check type | Result | Notes |
|-----------|--------|-------|
| Criminal (7-year) | Clear / Finding | [If finding: nature; date; disposition] |
| Employment verification | Verified / Discrepancy | [If discrepancy: what was claimed vs. found] |
| Education verification | Verified / Discrepancy | |
| OIG/LEIE (Allevio only) | Clear / HIT | [If HIT: immediate stop; notify CEO + Dr. Lewis] |
| Credit check (if applicable) | Clear / Finding | |
| License verification (if applicable) | Active / Lapsed / Finding | |

---

## Assessment Decision
☐ **CLEAR** — All checks clear; offer confirmed; start date maintained
☐ **ADVERSE ACTION INITIATED** — Finding: [nature]; individualized assessment: [outcome]; adverse action process started [date]
☐ **OIG/LEIE HIT** — Offer rescinded; Allevio CEO notified [date]; Dr. Lewis notified [date]

**Dr. Lewis review:** [Date / Initials]
```

## Output Contract
- OIG/LEIE hit is the only automatic rescission trigger — all other background check findings require individualized FCRA assessment; OIG/LEIE exclusion for Allevio healthcare roles is different: federal law prohibits MBL from billing Medicare or Medicaid with an excluded individual on staff; even though Allevio's primary model is employer-sponsored (not Medicaid), the CMS Conditions of Participation standard applies and an OIG/LEIE exclusion is a direct billing fraud risk; Dr. Lewis does not exercise discretion on OIG/LEIE exclusions — any hit is an automatic rescission and immediate notification
- FCRA adverse action process is followed exactly — a candidate who is rejected due to a criminal background check result has specific FCRA rights (notice; copy of report; opportunity to dispute); skipping or shortening the 5-business-day window is an FCRA violation with statutory damages of $100-$1,000 per violation + attorney fees; Dr. Lewis ensures the pre-adverse action notice goes out before any verbal communication of rescission to the candidate
- Individualized assessment is documented — "we don't hire people with criminal records" is a discriminatory blanket policy; "we assessed [candidate]'s [crime] from [year] against the [role] and determined it was [relevant/not relevant] because [specific reason]" is a documented, defensible assessment; every adverse action decision is documented with the specific assessment rationale
- HITL required: background check package selection → Dr. Lewis confirms correct package for role and entity; OIG/LEIE hit → Dr. Lewis + Allevio CEO notified immediately; any criminal finding → Dr. Lewis reviews individualized assessment before adverse action; adverse action process initiation → Dr. Lewis approves; offer rescission → entity CEO and Dr. Lewis joint decision

## System Dependencies
- **Reads from:** hr-job-profiler (role requirements; entity; whether OIG/LEIE check required); hr-offer-builder (contingent offer letter reference; start date); approved background check vendor (external); OIG exclusion list (HHS external database); LEIE (OIG external database)
- **Writes to:** Background check record (SharePoint → HR → Background Checks → [Entity] → [Candidate] → [Date]); adverse action file (if applicable); OIG/LEIE check log for Allevio (required for compliance audit); hr-onboarding-planner (clear signal = proceed to onboarding)
- **HITL Required:** Package selection → Dr. Lewis confirms OIG/LEIE inclusion for Allevio; OIG/LEIE hit → Dr. Lewis + Allevio CEO immediately; criminal finding → Dr. Lewis individualized assessment; adverse action initiation → Dr. Lewis approves; offer rescission → Dr. Lewis + entity CEO

## Test Cases
1. **Golden path:** Allevio Care Coordinator. Package ordered: Standard + OIG/LEIE + License verification (CNA credential). Results: Criminal clear; Employment verified (2 of 3 employers; 1 employer out of business, unable to verify — acceptable); Education verified; OIG clear; LEIE clear; CNA license active in AZ. Decision: CLEAR. Offer confirmed. Start date maintained. Monthly OIG/LEIE monitoring enrolled.
2. **Edge case:** Standard background check returns a 4-year-old misdemeanor DUI for a Column6 Account Manager → Dr. Lewis individualized assessment: "Nature: DUI misdemeanor (non-violent, non-financial). Time elapsed: 4 years. Relevance to role: Account Manager has no driving requirements and no financial signing authority. Rehabilitation: no subsequent offenses. Assessment: not disqualifying for this role. Offer confirmed." Document retained.
3. **Adversarial:** Allevio CEO wants to proceed with a candidate's start date before OIG/LEIE results are back → Dr. Lewis: "We cannot start an employee at Allevio before OIG/LEIE is clear. If they start and are later found to be on the exclusion list, every hour they worked creates a compliance exposure. The check typically returns in 24-48 hours. I'll expedite with the vendor. If the candidate cannot wait 48 hours, that's a signal worth considering — a candidate who has been excluded can't afford to have the check run."

## Audit Log
All background check records retained for 5 years (FCRA compliance). Adverse action files retained permanently. OIG/LEIE check logs for Allevio retained permanently (compliance audit requirement). Monthly OIG/LEIE monitoring logs retained for active employees. Individualized assessment decisions retained for all criminal findings.

## Deprecation
Background check packages reviewed annually. OIG/LEIE check scope and vendor verified annually. Adverse action notice templates updated when FCRA regulations change. Monthly OIG/LEIE monitoring scope reviewed if Allevio's payor mix changes.
