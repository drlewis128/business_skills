---
name: rc-employment-compliance
description: "Manage employment law compliance — FLSA, ADA, FMLA, Title VII, and state law. Use when the user says 'employment compliance', 'employment law', 'FLSA compliance', 'exempt vs. non-exempt', 'ADA accommodation', 'FMLA', 'Title VII', 'discrimination compliance', 'employment regulations', 'wage and hour compliance', 'employment poster', 'EEO-1 filing', 'new hire compliance', 'employment law audit', or 'HR compliance review'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--domain <FLSA|ADA|FMLA|Title VII|state|all>] [--action <audit|advise|report|filing>]"
---

# Employment Compliance Manager

Manage employment law compliance at MBL portfolio companies — ensuring compliance with federal employment law (FLSA, ADA, FMLA, Title VII, ADEA, NLRA) and state-specific requirements (Arizona, Utah, Texas, Colorado). Employment law violations expose portfolio companies to regulatory fines, employee lawsuits, class actions, and reputational damage. At the portfolio scale Dr. Lewis operates, employment compliance is a risk management function: identify the requirements, implement the controls, and document the compliance — before a complaint, audit, or lawsuit makes compliance reactive and expensive.

## When to Use
- Annual employment compliance audit — are all requirements met?
- A question arises about FLSA classification (exempt vs. non-exempt)
- An ADA accommodation request is received
- An FMLA leave request is received
- EEO-1 filing is due (typically October)
- A new state jurisdiction is added (new location or remote employee)
- Preparing for a DOL or EEOC investigation

## Employment Compliance Framework

```
FLSA (Fair Labor Standards Act):
  Minimum wage: Federal $7.25/hr; AZ: $14.35/hr (2025, increases annually January 1); UT: $7.25/hr; CO: $14.42/hr
  Overtime: Non-exempt employees: 1.5× for hours >40/week; FLSA does not require daily OT
  Exempt classification (all three tests required):
    1. Salary basis: Paid fixed salary not subject to reduction based on quality/quantity of work
    2. Salary level: ≥$684/week ($35,568/year) — DOL threshold, subject to revision
    3. Duties test: Executive, Administrative, Professional, or Highly Compensated Employee duties
  Common misclassification risk: Calling someone "manager" without managing 2+ FTE employees; calling someone "professional" without advanced degree or specialized knowledge requirement
  Independent contractor: IRS 3-factor control test + FLSA economic reality test; misclassification is a major audit risk
  
ADA (Americans with Disabilities Act):
  Covers employers with ≥15 employees
  Qualified individual with disability: Can perform essential functions with or without reasonable accommodation
  Interactive process: Must engage in good faith; cannot simply deny accommodation requests
  Reasonable accommodation: Undue hardship is the defense; must be documented and specific
  Healthcare context (Allevio): Clinical staff disability accommodations that affect patient safety require careful analysis; legal counsel for patient-facing accommodation disputes
  
FMLA (Family and Medical Leave Act):
  Covers employers with ≥50 employees within 75 miles of worksite (Allevio may reach this threshold)
  12 weeks unpaid, job-protected leave for qualifying reasons
  Qualifying reasons: Serious health condition (employee or family member); birth/adoption/foster care; qualifying military exigency
  Notice: Employer must notify of FMLA designation within 5 business days of knowing about qualifying leave
  ADA intersection: After FMLA exhaustion, evaluate ADA accommodation (return to work with modified duties)
  
Title VII / Anti-discrimination:
  Covers employers with ≥15 employees
  Protected classes: Race, color, religion, national origin, sex (including pregnancy, sexual orientation, gender identity)
  ADEA (Age Discrimination in Employment Act): ≥20 employees; protects employees 40+
  Harassment prevention: Employer liability for supervisor harassment; reasonable care standard for co-worker harassment
  Reporting: EEO-1 filing required annually for employers with ≥100 employees or federal contractors
  
State-specific requirements (primary portfolio states):
  Arizona:
    → No state FMLA (federal FMLA only; AZ FAAST for state employees)
    → AZ Earned Paid Sick Time Act (EPSTA): 1 hour per 30 hours worked; ≥15 employees: max 40 hrs/year; <15 employees: max 24 hrs/year
    → AZ minimum wage: Indexed annually (currently $14.35/hr)
    → AZ non-compete enforcement: Courts scrutinize; AZ limits scope but does not ban
    → E-Verify: Arizona employers required (HB 2779) — mandatory for all new hires
    
  Utah:
    → UT minimum wage: $7.25/hr (no state increase; federal minimum)
    → No state FMLA or state sick leave law
    → HIVE: Rural remote employees; specific wage requirements for oil & gas fieldwork
    
  Texas (if Column6/HIVE have TX employees):
    → TX minimum wage: $7.25/hr federal minimum
    → At-will employment strongly enforced
    → Non-compete enforceable if meets Criteria under TX Business & Commerce Code §15.50
    
Annual compliance calendar:
  January 1: State minimum wage effective dates (AZ, CO); update payroll
  January 31: W-2s due to employees; 941 filing
  February 1: OSHA 300A posting begins
  March 31: ACA ALE reporting (if ≥50 FTE) — Form 1095-C to employees
  April 30: OSHA 300A posting period ends
  October: EEO-1 reporting period (if applicable)
  Ongoing: I-9 and E-Verify (AZ mandatory); new hire reporting to AZ or UT within 20 days
```

## Output Format

```markdown
# Employment Compliance Audit — <Company Name>
**Date:** [Date] | **Entity:** [Company] | **Responsible:** Dr. John Lewis
**States:** AZ / UT / [Other] | **Employee count:** [N]

---

## FLSA Compliance

| Area | Requirement | Status | Issue | Action |
|------|------------|--------|-------|--------|
| AZ minimum wage ($14.35/hr) | All AZ non-exempt ≥$14.35 | ✅ / ⚠️ | [Issue] | |
| Exempt classification — job by job | All 3 tests met | ✅ [N] exempt classifications reviewed | [Any gaps] | |
| Overtime calculation | Weekly basis; 1.5× >40 hrs | ✅ / ⚠️ | | |
| Timekeeping (non-exempt) | Accurate; no rounding abuse | ✅ / ⚠️ | | |
| Independent contractor | IRS control test applied | ✅ / ⚠️ | | |

**FLSA risk:** 🟢 Low / 🟡 Medium / 🔴 High

---

## ADA and Accommodation

| Area | Status | Notes |
|------|--------|-------|
| ADA poster posted | ✅ / ⚠️ | |
| Open accommodation requests | [N] open — [status of each] | |
| Interactive process documented | ✅ / ⚠️ | |
| Accommodations provided | [List] | |

---

## FMLA (if ≥50 employees)

| Area | Status | Notes |
|------|--------|-------|
| FMLA threshold (≥50 employees) | Applicable / Not applicable [current: N employees] | |
| FMLA designation notices issued within 5 days | ✅ / ⚠️ | |
| FMLA tracking log | Current ✅ / Gap ⚠️ | |
| ADA bridge (post-FMLA) | Protocol in place | |

---

## State Compliance

| Requirement | State | Status | Notes |
|------------|-------|--------|-------|
| AZ minimum wage ($14.35) | AZ | ✅ / ⚠️ | Verified in payroll |
| AZ EPSTA (earned sick time) | AZ | ✅ / ⚠️ | [Accrual method; balance tracking] |
| E-Verify (AZ mandatory) | AZ | ✅ / ⚠️ | [Enrollment confirmed; new hires verified] |
| New hire reporting (20-day deadline) | AZ | ✅ / ⚠️ | |
| UT minimum wage ($7.25) | UT | ✅ | No state increase |

---

## Required Postings (all worksites)

| Poster | Required by | Location | Current version | Status |
|--------|-----------|---------|----------------|--------|
| FLSA (Minimum Wage) | DOL | Posted at [location] | Current | ✅ |
| FMLA | DOL | | | |
| EEO/Title VII | EEOC | | | |
| OSHA Safety | OSHA | | | |
| ADA | DOL | | | |
| AZ Minimum Wage | AZ | | | |
| AZ EPSTA | AZ | | | |
| AZ Workers' Comp | AZ | | | |

---

## Annual Filing Calendar

| Filing | Due date | Threshold | Status |
|--------|---------|---------|--------|
| EEO-1 | October [YYYY] | ≥100 employees or federal contractor | Not applicable [N employees] / ✅ Filed / ⚠️ Due |
| ACA (Form 1095-C) | March 31 | ALE (≥50 FTE) | Applicable / Not applicable |
| OSHA 300A | Feb 1 — Apr 30 | All employers | ✅ Posted |

---

## Matt Mathison Brief (if significant employment law violation or DOL/EEOC investigation)

[Company] employment compliance: [Issue description]. Employees affected: [N]. Financial exposure: $[X] estimated. Attorney engaged: [Yes — [name]]. Status: [Remediation in progress / Investigation / Resolved]. Prevention: [What changed].
```

## Output Contract
- FLSA classification is tested job by job, not by title — an employee titled "manager" who has no direct reports and whose primary duties are non-exempt work (processing transactions, providing services) is likely non-exempt; an employee titled "associate" who exercises genuine discretion and independent judgment on significant matters is likely exempt Administrative; Dr. Lewis reviews every exempt classification against the actual duties test; a wage and hour audit that finds misclassified employees creates retroactive liability for unpaid overtime × 2-3 years × 1.5× rate × all affected employees; the math gets large quickly
- AZ E-Verify is mandatory — not "recommended" but mandatory for all Arizona employers since 2008 (HB 2779); every new hire in Arizona must be verified through E-Verify within 3 business days of hire (in addition to I-9 completion); Dr. Lewis confirms E-Verify enrollment and verifies the process is running for every new hire; a state audit finding that E-Verify was not done is a significant compliance failure; federal contractors have additional requirements (E-Verify executive order)
- Employment law compliance is documented, not just done — an ADA interactive process that happens verbally but is not documented is legally indistinguishable from an ADA interactive process that didn't happen; the FMLA designation notice must be in writing within 5 business days; the I-9 must be on the correct version of the form within 3 business days; documentation is the proof that the compliance obligation was met; Dr. Lewis maintains documentation for all employment compliance activities
- HITL required: Dr. Lewis manages employment compliance; CEO informed of EEOC charges, DOL investigations, or class action threats; attorney immediately for EEOC charges, DOL investigations, class action lawsuits, and ADA accommodation disputes involving patient safety; Matt Mathison for employment litigation with >$100K exposure or pattern of complaints suggesting systemic issues

## System Dependencies
- **Reads from:** Payroll system (exempt classification; wage rates), employee roster (I-9/E-Verify compliance), hr-onboarding-coordinator (new hire compliance), state agency portals (AZ, UT, CO minimum wage schedules), DOL/EEOC
- **Writes to:** Employment compliance audit (SharePoint/RC/<Company>/Employment/Compliance/); accommodation log; FMLA tracking log; I-9/E-Verify tracking; required posting record; EEO-1 filing
- **HITL Required:** Dr. Lewis manages compliance; attorney for EEOC charges, DOL investigations, ADA disputes (patient safety), class actions; CEO for material employment law violations; Matt Mathison for litigation >$100K or systemic issues

## Test Cases
1. **Golden path:** Annual employment compliance audit for Allevio → FLSA: 5 exempt employees reviewed; 4 pass all 3 tests; 1 Medical Biller classified as Administrative exempt — duties review: billing entry work is primarily non-discretionary; fails duties test; reclassify as non-exempt; calculate retroactive OT owed (8 months × avg 2 hrs/week OT × $23/hr × 1.5 = $887 gross); self-correct with back pay; document the review and correction; attorney reviewed and confirmed self-correction approach; AZ EPSTA: accrual tracked in payroll system ✅; E-Verify: confirmed running for new hires ✅; postings: all current except AZ minimum wage poster (2023 version posted — update to 2024 version); attorney review of one accommodation request (medical scheduling flexibility — Interactive process documented; accommodation approved); audit complete; CEO briefed
2. **Edge case:** Remote employee hired in Colorado (new state for MBL portfolio) → Triggers new state compliance: CO minimum wage ($14.42/hr); CO FAMLI (Family and Medical Leave Insurance — paid leave program; both employer and employee contributions required); CO non-compete statute (significantly more restrictive than AZ); CO EPEWA (Equal Pay for Equal Work Act — requires pay range disclosure in job postings for CO employees); immediate actions: update payroll for CO minimum wage; enroll in CO FAMLI; review CO job posting for pay range compliance; consult attorney on non-compete enforceability for CO employee; add CO to compliance calendar
3. **Adversarial:** "Employment law doesn't really apply to us — we're a small company" → Most federal employment laws apply at 15 employees (Title VII, ADA) or 20 employees (ADEA); some states have lower thresholds; AZ EPSTA applies from day one; AZ E-Verify applies from day one; FLSA applies from the first employee; the "small company" assumption creates exactly the gaps that plaintiffs' employment attorneys look for; a 15-person healthcare company with one FLSA misclassification and one undocumented ADA accommodation is not insulated by its size — it is exposed

## Audit Log
Employment compliance audits retained annually. Exempt classification reviews retained by employee and year. Accommodation request records retained 3 years from the date of decision. FMLA records retained 3 years. I-9 records retained: 3 years from hire OR 1 year after termination, whichever is later. EEO-1 filings retained 1 year. Attorney engagement records retained permanently.

## Deprecation
Retire when portfolio companies have dedicated HR and employment law counsel providing compliance oversight — with Dr. Lewis contributing to portfolio-wide compliance calendar and escalation protocol. Attorney-referral standard for EEOC charges and DOL investigations is permanent regardless of who manages day-to-day compliance.
