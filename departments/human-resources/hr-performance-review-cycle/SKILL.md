---
name: hr-performance-review-cycle
description: "Run the annual and mid-year performance review cycle for MBL Partners portfolio companies. Use when the user says 'performance review', 'performance cycle', 'annual review', 'mid-year review', 'performance evaluation', 'performance appraisal', 'review cycle', 'employee evaluation', 'rate performance', 'performance rating', 'how did they do', 'performance assessment', 'year-end review', 'performance calibration', 'calibration meeting', 'review calibration', 'rating distribution', 'forced ranking', 'performance conversation', 'manager feedback', 'feedback conversation', '360 review', 'peer feedback', 'self-assessment', 'self-review', 'performance documentation', 'documenting performance', or 'review conversation'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--cycle <annual|mid-year>] [--action <design|facilitate|calibrate|communicate>] [--year <YYYY>]"
---

# HR Performance Review Cycle

Run annual and mid-year performance reviews — designing the review format, facilitating calibration, producing documented ratings, and ensuring managers deliver meaningful, criteria-based feedback. Performance reviews serve two functions: documentation (for compensation, promotion, and PIP decisions) and development (a structured conversation about what the employee should do differently going forward). A review that produces only documentation without a development conversation fails the employee; a review that produces only development without documentation fails the entity when difficult decisions need to be made.

## When to Use
- Annual performance cycle (typically November-December rating, January-February delivery)
- Mid-year review (typically June-July check-in cycle)
- Calibration meeting needs to be facilitated
- A manager needs to be coached on how to deliver a difficult performance conversation

## Performance Review Framework

```
CYCLE DESIGN:

  ANNUAL CYCLE TIMELINE:
    October: Dr. Lewis distributes self-assessment template; communicates review timeline to managers
    November: Self-assessments submitted (employee); manager draft ratings prepared
    November-December: Calibration meeting (entity CEO + Dr. Lewis + managers)
    December: Final ratings confirmed; merit inputs linked (hr-merit-review-manager)
    January: Manager delivers performance conversation to each direct report
    
  MID-YEAR CYCLE (lighter):
    June: Managers complete a 15-point mid-year check (not a full review)
    Purpose: course correct before year-end; surface PIP candidates early
    Output: documented conversation notes; any coaching plan updates
    
RATING SCALE (4-level):
  Exceeds Expectations: performance is measurably above the role's outcomes; this employee 
    makes others better; a top-quintile performer
  Meets Expectations: solid, reliable performance; role outcomes delivered; 
    this person is doing what they were hired to do
  Developing: performance is below expectations in some dimensions; 
    coaching plan in place or needed; specific gaps documented
  Not Meeting Expectations: performance is significantly below expectations; 
    formal PIP is or should be in place; continued employment at risk

CALIBRATION:
  Purpose: ensure rating standards are consistent across managers and teams
  Process: each manager presents their direct reports' proposed ratings
  Dr. Lewis facilitates; entity CEO makes final calls on rating disputes
  Challenge: managers who rate everyone "Exceeds" → calibrate down; 
    managers who rate everyone "Meets" → discuss whether there are hidden Exceeds performers
  Target distribution (guideline, not forced):
    Exceeds: 15-25% of team
    Meets: 60-70% of team
    Developing: 10-15% of team
    Not Meeting: 0-5% of team (if 0%, ask: is everyone truly performing well?)
    
SELF-ASSESSMENT (employee submits before manager draft):
  3 questions:
    1. "What are your top 3 accomplishments this year? What was the specific impact?"
    2. "What is one area where you fell short of expectations? What did you learn?"
    3. "What do you want to accomplish or develop in the next 12 months?"
  Manager reads self-assessment before drafting rating
  If self-assessment is significantly more positive than manager's rating: flag for conversation

PERFORMANCE CONVERSATION (manager delivers):
  Structure:
    1. Acknowledge achievements (specific; not generic)
    2. Deliver the rating (direct; no suspense-building)
    3. Development focus (what to do differently next year)
    4. Career path (if applicable)
    5. Questions from employee
  Duration: 45-60 minutes (not 10 minutes)
  Timing: January (after merit is confirmed; deliver rating and merit together)
  Dr. Lewis coaches managers before they deliver difficult (Developing / Not Meeting) conversations
  
DOCUMENTATION:
  Every employee has a written review form completed by manager and retained
  Developing / Not Meeting: written documentation is essential (feeds hr-pip-builder if needed)
  "Didn't document a performance concern = it didn't exist" is the standard in employment law
  
RECENCY BIAS PREVENTION:
  Review covers the full year (Jan-Dec), not just Q4
  Ask managers: "What are 3 things this employee did in Q1 or Q2 that were noteworthy?"
  Dr. Lewis prompts recency bias awareness in calibration meeting
```

## Output Format

```markdown
# Performance Review — [Employee Name] | [Entity] — [Year]
**Rating:** Exceeds / Meets / Developing / Not Meeting | **Reviewed by:** [Manager] | **Calibrated:** [Date]

---

## Accomplishments (3)
1. [Specific accomplishment — impact stated]
2. [Specific accomplishment]
3. [Specific accomplishment]

---

## Development Areas (2)
1. [Specific area — behavioral, not personality]
2. [Specific area]

---

## Overall Rating Rationale
[3-4 sentences: why this rating; specific evidence; not generic]

---

## 2025 Development Focus
1. [Specific thing to do differently — tied to role outcomes]
2. [Specific thing to develop]

---

## Career Path Discussion
[If applicable: level progression timeline; next role; skills to build]

---

**Manager signature:** [Name] | [Date]
**Employee acknowledgment:** [Name] | [Date] | ☐ Agrees with rating / ☐ Notes disagreement
```

## Output Contract
- Ratings are calibrated before delivery — an uncalibrated performance review process creates inconsistent standards across teams; a "Meets" in one team may mean "excellent" while a "Meets" in another means "barely keeping up"; Dr. Lewis runs a calibration meeting before any ratings are communicated to ensure consistent standards; no manager communicates a rating to their direct report before calibration is complete
- Developing and Not Meeting ratings are documented specifically — "performance issues" is not documentation; "missed Q2 and Q3 care coordinator enrollment targets by 35% and 28% respectively; coaching conversations documented on [dates]; no improvement in methodology" is documentation; Dr. Lewis reviews all Developing and Not Meeting reviews before they are delivered to ensure the documentation is specific enough to support a future PIP or involuntary termination if needed
- The employee's rating is never revealed before the performance conversation — a manager who tells an employee their rating via Slack or email before the conversation removes the opportunity for a meaningful dialogue; ratings are revealed in the performance conversation, accompanied by explanation and evidence; the written review is shared during or after the conversation, not before
- HITL required: review cycle design → Dr. Lewis designs and manages timeline; calibration → Dr. Lewis facilitates; entity CEO makes final rating disputes; Developing / Not Meeting reviews → Dr. Lewis reviews written documentation before delivery; difficult conversation coaching → Dr. Lewis coaches manager; employee rating disagreement → Dr. Lewis reviews; rating used in PIP or termination → Dr. Lewis confirms documentation sufficiency

## System Dependencies
- **Reads from:** hr-job-profiler (original role outcomes — basis for performance evaluation); hr-merit-review-manager (merit cycle timing; rating → merit allocation link); hr-okr-facilitator (OKR scores as performance inputs); hr-pip-builder (Developing/Not Meeting feeds PIP if needed); entity KPI dashboards (actual performance data for calibration)
- **Writes to:** Performance review forms (SharePoint → HR → Performance Reviews → [Entity] → [Year]); calibration record; hr-merit-review-manager (rating input); hr-pip-builder (Developing/Not Meeting trigger); promotion eligibility list (Exceeds → hr-promotion-framework)
- **HITL Required:** Calibration → Dr. Lewis facilitates + CEO decides disputes; Developing/Not Meeting → Dr. Lewis reviews docs; difficult conversation coaching → Dr. Lewis coaches; employee disagreement → Dr. Lewis reviews; PIP/termination documentation → Dr. Lewis confirms sufficiency

## Test Cases
1. **Golden path:** Annual review, Column6, 6 employees. Self-assessments submitted November 1. Calibration meeting November 15 (Dr. Lewis + CEO): 1 Exceeds; 4 Meets; 1 Developing (campaign delivery below plan for 3 consecutive quarters). Calibration complete. Merit inputs linked. Managers deliver conversations January 10-15. Developing employee conversation: Dr. Lewis coaches manager on specifics. Written review delivered. Developing employee acknowledges with noted disagreement → Dr. Lewis schedules a review conversation to address.
2. **Edge case:** HIVE has only 4 full-time employees — calibration is straightforward but CEO is also the manager → Dr. Lewis: "In this case, I'll conduct the calibration directly with you as both manager and CEO. I'll review all 4 employee drafts and we'll discuss together. I'll also do a secondary review of your own self-assessment against what I've observed from the monthly reporting — you're not exempt from the performance review process, though the format will be Dr. Lewis → Matt Mathison for CEO review."
3. **Adversarial:** Manager gives a high performer a "Meets" because "she doesn't need the recognition — she already knows she's great" → Dr. Lewis: "I hear you, but the rating has implications beyond recognition. A 'Meets' when someone's performance is 'Exceeds' puts her at a disadvantage in the merit cycle, delays her promotion timeline, and sets an inaccurate documentation record. If she ever asks to see her reviews, this one will be inconsistent with her actual performance. I'd recommend re-evaluating the rating based on the evidence. Let's go through her accomplishments in the calibration."

## Audit Log
All performance review forms retained for 3 years (EEOC compliance). Calibration records retained. Manager coaching notes retained (Developing/Not Meeting). Employee disagreement records retained. PIP trigger documentation retained. Merit cycle rating inputs retained.

## Deprecation
Review cycle timeline reviewed annually. Rating scale reviewed if THRIVE framework changes. Calibration distribution guidelines reviewed every 3 years.
