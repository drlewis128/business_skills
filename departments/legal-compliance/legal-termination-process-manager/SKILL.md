---
name: legal-termination-process-manager
description: "Manage the legal-compliant employee termination process for MBL portfolio companies. Use when the user says 'termination', 'terminate an employee', 'fire someone', 'let someone go', 'employee dismissal', 'RIF', 'layoff', 'reduction in force', 'separation', 'termination process', 'termination checklist', 'final paycheck', 'WARN Act', 'separation meeting', 'termination documentation', 'performance improvement plan', 'PIP', 'termination for cause', 'at-will termination', 'wrongful termination risk', 'termination notice', or 'involuntary separation'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--termination-type <for-cause|without-cause|layoff|rif>] [--action <plan|execute|document>] [--state <AZ|UT|other>]"
---

# Termination Process Manager

Manage the legal-compliant employee termination process for MBL portfolio companies — ensuring that every involuntary separation is properly documented, follows the correct process for the termination type (for-cause vs. without-cause vs. RIF), and manages the legal risk of wrongful termination claims. A poorly managed termination is one of the most common and expensive operational legal mistakes; an employee who was terminated incorrectly (wrong process, insufficient documentation, potential retaliation) files a claim that costs $75K-$200K to defend even if the termination was ultimately justified. Dr. Lewis ensures the process is correct before, not after.

## When to Use
- A portfolio company CEO is planning to terminate an employee
- Assessing the documentation and legal risk before a termination is executed
- Structuring a RIF or layoff (multiple simultaneous separations)
- Determining the correct final paycheck requirements
- Preparing the separation agreement and documentation

## Termination Process Framework

```
TERMINATION TYPES AND PROCESSES:

  AT-WILL TERMINATION (without cause):
    Applicable: All Arizona and Utah employees (at-will states; no cause required for termination)
    Process:
      1. Decision: CEO + Dr. Lewis confirm the decision; document the business reason
      2. Documentation: Prepare the separation documentation before the termination meeting
         (severance letter; COBRA notice; final paycheck; separation agreement if applicable)
      3. Separation meeting: In-person preferred; by video if remote; not by email or phone
         Short; respectful; clear: "Your position has been eliminated effective today"
         Do not over-explain or debate; have security/IT access ready to revoke immediately after
      4. Final paycheck: See below — timing requirements are state-specific
      5. Property return: Company laptop; phone; access cards; any company property
      6. System access: Revoke all system access (email; VPN; HR systems) same day as termination
      7. Benefits continuation: COBRA notice within 44 days of qualifying event
      
  TERMINATION FOR CAUSE:
    Higher documentation standard required (may be needed to resist a wrongful termination claim)
    Documentation trail BEFORE termination:
      □ Written performance warnings: At least 1-2 prior written warnings for the same issue
        (unless the misconduct is severe enough to warrant immediate termination)
      □ Performance Improvement Plan (PIP): For performance issues (not conduct issues)
        PIP must include: Specific deficiencies; specific improvement targets; timeline; consequences
      □ Written notice of the final incident: Document the specific act that triggered termination
    For-cause termination meeting:
      State the cause clearly and specifically
      Have the documentation ready
      Do not offer severance as a condition of a release UNLESS you want the release to be enforceable
        (without consideration, a release is unenforceable; with severance, it is enforceable)
    Risk: "Cause" as defined in the employment agreement may be narrower than "any business reason"
      Review the employment agreement's definition of "cause" before proceeding
      
  RIF / LAYOFF (Reduction in Force):
    Selection criteria: Must be non-discriminatory; document the business rationale for each selection
      Age discrimination risk: If disproportionate impact on workers 40+ → ADEA review required
      Gender/race discrimination risk: Statistical analysis of who was selected
    WARN Act: Federal law requires 60-day notice for:
      Employers with 100+ employees; plant closing; or mass layoff (50+ employees in 30 days)
      MBL portfolio companies: Likely below WARN Act threshold (<100 employees); confirm
    Severance: Provide severance; obtain a release; ADEA requirements apply for employees 40+
    Outplacement: Consider offering outplacement support (good faith; reduces EPLI exposure)
    
FINAL PAYCHECK REQUIREMENTS (BY STATE):
  ARIZONA:
    Involuntary termination: Final paycheck due within 7 working days OR the next regular payday,
      whichever is sooner
    Voluntary resignation: Next regular payday
    Accrued vacation payout: Arizona law does not require vacation payout on termination 
      UNLESS the company's policy or employment agreement promises it
    Penalty for late final paycheck: Potential claim by employee; damages
      
  UTAH:
    Involuntary termination: Final paycheck due within 24 hours if the employer or employee
      ends employment
    Voluntary resignation: Next regular payday
    Accrued vacation payout: Utah does not require vacation payout unless company policy mandates it
    Penalty: Up to 60 days of waiting time penalty if not paid timely
    
  NOTE: Final paycheck is based on ALL hours worked through the termination date — including overtime,
    any accrued but unpaid commissions that are earned (not pending), and any other owed wages.
    Do not withhold final paycheck to recover company property — this is an illegal setoff in both AZ and UT

RETALIATION RISK ASSESSMENT:
  Before any termination, confirm the employee has NOT recently:
  □ Filed or threatened an employment claim (EEOC, DOL, OSHA)
  □ Reported a legal violation internally (whistleblower)
  □ Requested FMLA or a workplace accommodation (ADA)
  □ Reported a workers' compensation claim
  □ Participated in a protected activity (union organizing; discrimination investigation)
  If ANY of these apply: STOP. Engage employment counsel before proceeding.
  Reason: Temporal proximity (firing someone shortly after a protected activity) is strong evidence 
    of retaliation; a retaliation claim can outlast the underlying discrimination claim
    
TERMINATION DOCUMENTATION PACKAGE:
  □ Separation letter: Confirms termination date; at-will (or cause if applicable); final paycheck amount
  □ COBRA election notice: Must be delivered within 44 days of qualifying event
  □ Severance letter (if applicable): Conditions on release; payment schedule; non-disparagement
  □ Separation agreement (if applicable): Release of claims; ADEA-compliant if employee 40+
  □ Property return confirmation: List of company property returned; signed by both parties
  □ System access revocation log: IT confirmation of access revocation and timestamp
```

## Output Format

```markdown
# Termination Process Plan — [Employee Name]
**Entity:** [Company] | **Date:** [Date] | **Termination type:** [At-will / For-cause / Layoff]
**State:** [AZ/UT/CA] | **Role:** [Title] | **Tenure:** [X] years
**Dr. Lewis review:** [Date] | **CEO decision:** Confirmed

---

## Legal Risk Assessment

| Factor | Status | Notes |
|--------|--------|-------|
| Protected activity in last 90 days? | ✅ None / ❌ YES — STOP | [Describe if applicable] |
| Documentation trail | ✅ Sufficient / ⚠️ Thin / ❌ None | [Prior warnings; PIP?] |
| Employment agreement | ✅ At-will / ⚠️ Has cause definition | [Review cause definition] |
| Employee age | [X] | [40+ → ADEA COBRA notice + 21-day consideration] |
| Severance offered? | Yes $[X]K / No | [Condition on release?] |

---

## Termination Checklist

| Action | Owner | Deadline | Status |
|--------|-------|---------|--------|
| Final paycheck calculated | Dr. Lewis | Termination day | In progress |
| Separation letter drafted | Dr. Lewis | Before meeting | Done |
| COBRA notice prepared | HR | Within 44 days | Pending |
| System access revocation | IT | Same day | Pending |
| Property return list | CEO | Day of | Pending |

---

## Final Paycheck

**State:** [AZ: due within 7 working days / UT: due within 24 hours]
**Amount:** $[X] | **Calculation:** [Base through [date] + [accrued vacation if policy requires] + [commission if earned]]
**Method:** [Check at meeting / Direct deposit / Mail]

---

## Recommendation

**[PROCEED / ENGAGE EMPLOYMENT COUNSEL FIRST / DO NOT TERMINATE — PROTECTED ACTIVITY RISK]**
[2-sentence rationale]
```

## Output Contract
- Protected activity review is mandatory before every termination — Dr. Lewis reviews whether the employee has filed a complaint, requested an accommodation, or engaged in any other legally protected activity before the CEO executes the termination; this is not an optional check; a termination of an employee who filed an EEOC complaint last month without Dr. Lewis's review is a retaliation risk that can cost $150K+ to defend and settle; the check takes 5 minutes; skipping it is not an option
- Final paycheck timing is a strict legal deadline — in Utah, the final paycheck is due within 24 hours of an involuntary termination; in Arizona, within 7 working days; these are statutory requirements, not company policy; missing the final paycheck deadline exposes the company to a wage claim and potential waiting time penalties; Dr. Lewis confirms the final paycheck amount and delivery method before the termination meeting, not after; the check is ready at the meeting (or direct deposit is processed same day)
- Property return and system access cannot be traded for the paycheck — it is illegal in both Arizona and Utah to withhold or delay the final paycheck until the employee returns company property; the company's remedy for non-returned property is a separate civil claim; the final paycheck must be paid regardless of whether property is returned; Dr. Lewis separates these two issues: final paycheck is paid on time; property return is a separate matter handled through the property return list and, if necessary, a civil demand letter
- HITL required: Dr. Lewis reviews every termination before execution (minimum: protected activity check + documentation review + final paycheck calculation); CEO executes the termination meeting and delivers the separation documentation; Matt Mathison must approve: (a) executive terminations (≥VP level); (b) any termination where severance >$50K is being offered; employment counsel must be engaged if: the employee recently engaged in protected activity; the termination is for cause with a contested employment agreement; any WARN Act analysis is needed; a separation agreement with an EEOC/ADEA release is required; Dr. Lewis does not terminate employees — that is the CEO's role

## System Dependencies
- **Reads from:** Employment agreement (at-will confirmation; cause definition; severance terms); state employment law tracker (legal-employment-law-tracker — final paycheck timing; accrued vacation obligation); EPLI insurance policy (is this termination covered?); prior documentation (performance warnings; PIPs; disciplinary records); HR records (FMLA; accommodation requests; complaint history); fpa-headcount-cost-modeler (severance cost impact on budget); legal-employment-agreement-manager (severance terms by role)
- **Writes to:** Separation letter; separation agreement (if applicable); COBRA notice; property return list; system access revocation log; termination documentation file (SharePoint/Legal/<Company>/Employment/Terminations/[Name]_[Date]_Termination.pdf); Matt Mathison notification (for executive terminations or severance >$50K); HR termination record
- **HITL Required:** Dr. Lewis reviews; CEO executes the termination meeting; Matt Mathison approves executive terminations and severance >$50K; employment counsel required if protected activity risk, contested cause definition, or WARN Act; Dr. Lewis does not deliver the termination notice — CEO does; Dr. Lewis does not authorize the final paycheck without confirming the correct amount and state-law deadline

## Test Cases
1. **Golden path:** Allevio's billing coordinator is being terminated at-will (performance issues; no PIPs; company is restructuring the billing function around outsourced model) → Dr. Lewis pre-termination review: Employee age: 34 (no ADEA); Protected activity: none in the last 6 months (confirmed by checking EEOC, DOL, workers' comp, and FMLA records); Documentation: Thin on performance but this is an at-will termination for restructuring — business reason documented; Severance: 4 weeks (1 week per year of service) in exchange for a release; Final paycheck: Arizona — due within 7 working days; calculated through Friday (termination day); includes all hours worked + no vacation payout (Allevio's policy: no vacation payout at termination); Separation letter drafted; CEO conducts the termination meeting; system access revoked same day; COBRA notice mailed within 44 days; all documentation filed; no claim filed
2. **Edge case:** HIVE plans to terminate its field operations supervisor for cause (multiple safety protocol violations) but there are only 1 written warning in her file — the CEO wants to proceed immediately after a third incident → Dr. Lewis: "We have one written warning for a safety violation in March. The current incident (third in 6 months) is the third incident — the first two were addressed verbally without written documentation. For a for-cause termination to be defensible, we should have at least 2 written warnings for the same pattern of conduct. Here are your options: (1) Issue a second written warning and PIP today — this creates the paper trail for a future termination if the behavior continues; (2) Terminate today for cause — the cause is documentable (safety violations are serious; OSHA standards are involved) but the documentation trail is thin; defend on the severity of the conduct; engage employment counsel for risk assessment; (3) Treat this as an at-will termination — HIVE is an at-will employer; no cause is required; the restructuring rationale can be used. Employment counsel review recommended given the documentation gap. Matt Mathison notified." Employment counsel advises on risk; CEO decides on at-will with 4-week severance and release; executed cleanly
3. **Adversarial:** Three days before a planned at-will termination, the employee reports to HR that she witnessed the CEO make a racially discriminatory comment at a client meeting → Dr. Lewis: "STOP. Do not proceed with the termination. The employee has just engaged in a protected activity (reporting an internal discrimination complaint). Terminating her 3 days after she made the complaint is textbook temporal proximity — the strongest evidence of retaliation. The company faces a significant EPLI risk if this termination proceeds on the current timeline. I'm engaging employment counsel today to: (1) Advise on how to investigate the discrimination complaint properly and in good faith; (2) Assess whether there is a non-retaliatory basis to proceed with the planned separation that can be demonstrated through independent evidence; (3) Document that the termination decision was made BEFORE the complaint (if that's true — pull the email chain and calendar records showing when the decision was made and by whom); (4) If the decision was truly independent, we may be able to proceed — but only after employment counsel's advice and a documented record of the independent decision. Matt Mathison notified immediately."

## Audit Log
All termination decisions documented before execution (date, reason, who approved). All separation letters and agreements retained permanently. COBRA notice records retained. System access revocation logs retained. Final paycheck records retained (7 years for wage records). Property return confirmations retained. Protected activity reviews retained. Employment counsel advice retained. Matt Mathison approvals retained.

## Deprecation
Retire when each portfolio company has a dedicated HR manager and employment counsel on retainer who manage the termination process — with Dr. Lewis reviewing protected activity risk for executive terminations and Matt Mathison approving executive separations.
