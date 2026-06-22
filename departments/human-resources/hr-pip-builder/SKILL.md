---
name: hr-pip-builder
description: "Build and manage Performance Improvement Plans for MBL Partners portfolio company employees. Use when the user says 'PIP', 'performance improvement plan', 'performance plan', 'formal warning', 'written warning', 'document performance', 'underperforming employee', 'performance documentation', 'managing out', 'manage out', 'progressive discipline', 'performance counseling', 'last chance', 'final warning', 'not meeting expectations', 'performance concern', 'performance issue', 'someone is not performing', 'need to document performance', 'performance problem', 'formal performance process', 'how do we put someone on a PIP', 'PIP conversation', 'PIP meeting', 'PIP extension', 'PIP outcome', 'failed PIP', 'successful PIP', or 'performance follow-up'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--employee <name>] [--entity <mbl|allevio|hive|column6>] [--action <build|review|check-in|outcome>] [--duration <30|60|90-days>]"
---

# HR PIP Builder

Build and manage Performance Improvement Plans (PIPs) — documenting the performance gap, defining measurable improvement targets, establishing a timeline, and determining the outcome. A PIP is not primarily a firing mechanism; it is a structured, documented attempt to help an employee succeed; if the employee meets the PIP criteria, the performance concern is resolved; if they do not, the entity has documentation to support an involuntary separation. Either outcome is acceptable — both are better than vague informal feedback that resolves nothing.

## When to Use
- An employee has been rated "Developing" or "Not Meeting" for one or more consecutive review cycles
- A manager has had informal coaching conversations without improvement
- Documentation is needed before any involuntary separation can proceed
- An employee's performance has declined sharply and requires urgent formalization

## PIP Framework

```
PIP PREREQUISITES (before writing the PIP):
  1. Informal coaching conversations must have occurred and be documented
     At least 2 documented coaching conversations (dates; content; manager signatures)
     "We've talked about this before" is not documentation — written record is required
     If no prior documentation: Dr. Lewis issues a first formal written warning, not a PIP
     
  2. Protected activity review:
     Has the employee recently filed an HR complaint, EEOC charge, or accommodation request?
     Has the employee recently taken protected leave (FMLA, medical, AZ Sick Time)?
     If yes: Dr. Lewis + legal counsel review timing before PIP is issued
     A PIP issued within 90 days of protected activity = potential retaliation claim
     
  3. Entity CEO + Dr. Lewis authorization:
     All PIPs require entity CEO + Dr. Lewis approval before issuance
     The CEO needs to be aware that this employee's employment is at risk

PIP COMPONENTS:

  PERFORMANCE GAPS (specific; behavioral; measurable):
    Document exactly what is not meeting expectations, with specific examples:
    Not: "lacks attention to detail"
    Yes: "Claim ratio reports submitted to Allevio employer clients contained errors on 4 of 6 reports
      in Q3 (attached). Error rate is 67%; expected rate per role profile is <5%."
    
  IMPROVEMENT REQUIREMENTS (specific; measurable; time-bound):
    Define what "meeting expectations" looks like in this PIP period:
    Not: "improve attention to detail on reports"
    Yes: "Submit 3 consecutive monthly claim ratio reports with zero material errors 
      (defined as variance >2% from verified AdvancedMD data) within the 60-day PIP period"
    
  TIMELINE:
    Standard: 60 days (most common)
    Short (30 days): used for severe performance decline or policy violation
    Extended (90 days): used for roles with longer cycle times (sales; complex ops)
    Check-in cadence: weekly 30-min check-ins between manager and employee during PIP
    
  SUPPORT OFFERED:
    What the employer will provide: additional training; mentoring; tools
    "Unsupported PIP" is a legal vulnerability — must document what the entity is doing to help
    
  OUTCOMES:
    Success: employee meets all improvement requirements → PIP closed; performance concern resolved;
      noted in HR record; no lingering penalty if behavior sustains
    Partial improvement: Dr. Lewis decision — extend PIP (30 days) OR proceed to involuntary separation
    Failure: employee does not meet requirements → involuntary separation (hr-termination-manager)
    Voluntary resignation during PIP: standard offboarding (resignation is not a PIP outcome)
    
PIP DELIVERY:
  Meeting: entity CEO or manager + Dr. Lewis (or HR representative)
  Employee may not bring an attorney to an internal HR meeting (no legal right to representation
    in at-will employment states, unless CBA exists — MBL entities are non-union)
  Tone: professional, direct, supportive — not punitive
  Employee signs acknowledgment: "I have received this PIP. My signature does not mean I agree."
  Copy to employee; copy in HR file
  
CONFIDENTIALITY:
  PIP contents are strictly confidential
  Manager does not discuss PIP with the employee's peers
  Dr. Lewis does not discuss PIP specifics outside of entity CEO + legal (if applicable)
```

## Output Format

```markdown
# Performance Improvement Plan — [Employee Name] | [Entity] — [Date]
**Duration:** [30 / 60 / 90] days | **PIP period:** [Start date] to [End date]
**Authorized by:** Entity CEO + Dr. Lewis | **Issued by:** [Manager name]

---

## Performance Gaps

| Gap area | Specific examples | Expected standard |
|----------|-----------------|------------------|
| [Gap 1] | [Specific incidents with dates] | [Measurable standard from role profile] |
| [Gap 2] | | |

---

## Improvement Requirements

| Requirement | Measurement | Due by |
|------------|------------|--------|
| [Specific, measurable requirement 1] | [How it will be measured] | [Date within PIP period] |
| [Specific, measurable requirement 2] | | |

---

## Support Offered
- [Training; mentoring; tools provided]

---

## Check-In Schedule
Weekly: [Day] at [Time] with [Manager name] | First check-in: [Date]

---

## Outcome
☐ **Success** — Requirements met; PIP closed [Date]
☐ **Partial** — Dr. Lewis decision: [extend / proceed to separation]
☐ **Failure** — Requirements not met; involuntary separation per hr-termination-manager

---

**Employee acknowledgment:** ☐ Received [Date] (signature does not indicate agreement)
**Issued by:** [Manager] | **HR Authorization:** Dr. Lewis | **CEO Authorization:** [Name]
```

## Output Contract
- Every gap is documented with specific examples and dates — a PIP that says "performance has been below expectations" without specific examples is not documentation; it is an opinion; the PIP must cite specific incidents (report errors with specific dates; missed targets with specific numbers; customer complaints with specific examples) that a third party could review and understand without needing to speak with the manager
- Protected activity review happens before every PIP — Dr. Lewis reviews the 90-day history of any HR complaints, leave requests, or EEOC activity before signing off on a PIP; this is a 5-minute check that prevents a significant retaliation exposure; a PIP issued 2 weeks after an employee filed an HR complaint about their manager will be viewed as retaliatory regardless of the performance justification; timing matters
- Support offered is genuine — a PIP that lists "additional training will be provided" when no training is actually planned is bad faith; the support listed in the PIP must actually be provided; if the entity cannot or will not provide support, do not list it; Dr. Lewis confirms that support commitments are real before the PIP is issued
- HITL required: PIP initiation → entity CEO + Dr. Lewis authorize; protected activity review → Dr. Lewis confirms before issuance; PIP document → Dr. Lewis reviews specificity of examples before issuance; weekly check-ins → manager + Dr. Lewis monitors; PIP outcome decision → Dr. Lewis + entity CEO; separation after failed PIP → hr-termination-manager process (CEO + Dr. Lewis)

## System Dependencies
- **Reads from:** hr-performance-review-cycle (performance history; ratings); hr-coaching-guide (prior informal coaching documentation); hr-job-profiler (expected performance standards); legal-employment-law-tracker (AZ/UT at-will; protected activity rules); hr-termination-manager (outcome if PIP fails)
- **Writes to:** PIP document (SharePoint → HR → PIPs → [Entity] → [Employee] → [Date]); check-in records; outcome record; hr-performance-review-cycle (resolved/unresolved flag); entity CEO authorization record; legal hold notification if litigation risk elevated
- **HITL Required:** PIP initiation → CEO + Dr. Lewis; protected activity review → Dr. Lewis confirms; PIP content → Dr. Lewis reviews; weekly check-in monitoring → Dr. Lewis reviews; outcome decision → CEO + Dr. Lewis; separation → hr-termination-manager

## Test Cases
1. **Golden path:** Allevio Care Coordinator has submitted 4 of 6 monthly reports with material errors (Q3). Two prior documented coaching conversations (August 5 and September 12). 60-day PIP issued October 1. Requirement: 3 consecutive error-free reports (Oct, Nov, Dec). Support: Dr. Lewis schedules AdvancedMD report training session Week 1. Weekly check-ins every Friday. Nov and Dec reports: error-free. Dec 30: PIP success — closed. Performance concern resolved. Merit consideration at annual cycle.
2. **Edge case:** Manager wants to issue a PIP but has zero written documentation of prior coaching conversations → Dr. Lewis: "A PIP without prior documentation is a legal risk. If this employee challenges the termination after a failed PIP, the absence of documented prior coaching will look like we escalated to PIP too quickly. I'm issuing a formal first written warning today instead — this starts the documentation clock. If performance doesn't improve in 30 days, we move to PIP. I'll help you write the warning."
3. **Adversarial:** Manager wants to issue a PIP to an employee who filed an HR complaint 3 weeks ago → Dr. Lewis: "We need to pause. The employee filed an HR complaint on [date] — that was 3 weeks ago. The PIP timing creates a retaliation exposure that is difficult to defend, even if the performance concerns are legitimate and entirely separate. I need us to wait until the complaint investigation is resolved and to document clearly that the performance concerns predated the complaint. I'm also consulting with legal counsel before we proceed. I'm not saying we can never PIP this employee — I'm saying we need to be deliberate about timing and documentation."

## Audit Log
All PIPs retained permanently (employment law; potential litigation). Prior coaching conversation documentation retained permanently. Protected activity review records retained permanently. Weekly check-in records retained. PIP outcome records retained permanently. CEO + Dr. Lewis authorization records retained permanently.

## Deprecation
PIP template reviewed annually. Protected activity review scope updated when employment laws change (AZ, UT). Support commitment standards reviewed when training resources change.
