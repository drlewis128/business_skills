---
name: ops-hiring-scorecard
description: "Score and evaluate candidates for operations roles. Use when the user says 'hiring scorecard for operations', 'evaluate an ops candidate', 'operations hiring', 'ops interview scorecard', 'rate a candidate for operations', 'operations role candidate', 'who should we hire for operations', 'ops hiring decision', 'evaluate operations applicants', or 'operations interview guide'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--role <specific ops role>] [--entity <company name>] [--candidate <name>]"
---

# Ops Hiring Scorecard

Score and select candidates for operations roles at MBL portfolio companies — providing a structured, bias-resistant evaluation framework that ensures hiring decisions are made on evidence, not impression. Operations roles span a wide range at portfolio scale: from a billing specialist at Allevio to a field supervisor at HIVE to a project coordinator at MBL HoldCo. The scorecard is calibrated for each role's specific demands while maintaining consistent evaluation standards across hires.

## When to Use
- Evaluating candidates for an operations role at any portfolio company
- Structuring an interview process for an ops hire
- Making a final hiring decision between 2-3 finalists
- Dr. Lewis or the CEO needs a documented rationale for a hiring decision

## Ops Hiring Scorecard Framework

```
Operations role tiers and market rates (2026 AZ/UT/CO range):
  Operations Coordinator: $38K-$52K — scheduling, data entry, vendor support
  Operations Generalist: $52K-$70K — process coordination, project support, vendor management
  Operations Manager: $68K-$90K — team leadership, process ownership, KPI accountability
  Operations Director: $88K-$120K — functional ownership, strategic input, multi-entity scope
  COO/VP Operations: $120K-$180K+ — executive; board/investor-facing

Core evaluation dimensions (100 points):
  Process and Systems Thinking (30 pts): Can this person see how work flows, identify gaps, and build or improve processes? Do they understand cause and effect in operational systems?
  
  Execution and Accountability (25 pts): Do they deliver on commitments? Do they own outcomes, not just activities? Can they tell you about a time they hit a measurable target?
  
  Problem-Solving Under Ambiguity (20 pts): Operations rarely comes with perfect information. Can they make a decision with incomplete data, then course-correct?
  
  Communication and Stakeholder Management (15 pts): Operations touches every function. Can they communicate up (to Dr. Lewis, CEO) and across (to peers in other departments)?
  
  THRIVE Alignment / Integrity (10 pts): Does this person's behavior in interviews and references reflect Truth, Hustle, Respect, Integrity, Value, Enjoy?
  
  Auto-disqualifiers (regardless of score):
    Process and Systems Thinking ≤12/30: Cannot build or improve processes — core function
    THRIVE/Integrity ≤5/10: Values misalignment — no score compensates
    Cannot provide professional references for roles ≥Manager level
    False statements on application or in interview

Interview questions by dimension:
  Process and Systems Thinking:
    "Walk me through a process you built or significantly improved. What was broken, what did you change, and how do you know it worked?"
    "If you joined [Company] and discovered that a key process had no documented SOP, what would you do first?"
    
  Execution and Accountability:
    "Tell me about a commitment you made that you didn't keep. What happened, and what did you do about it?"
    "What's the most important thing you accomplished in your last role? How do you know it was important?"
    
  Problem-Solving:
    "Describe a situation where you had to make a significant decision without all the information you wanted. What did you decide, and what happened?"
    
  Communication:
    "Give me an example of a time you had to deliver bad news to a senior leader. How did you do it?"
    
  THRIVE:
    "Tell me about a time someone asked you to do something you felt was wrong. What did you do?"
    "What's your relationship with rules — are they guidelines or hard lines?"
```

## Output Format

```markdown
# Operations Hiring Scorecard — <Role> | <Company>
**Candidate:** [Name] | **Interview date:** [Date]
**Interviewers:** Dr. John Lewis, [CEO if applicable]
**Role:** [Title] | **Comp range:** $[X]-$[X]K

---

## Score Summary

| Dimension | Weight | Score | Weighted |
|-----------|--------|-------|---------|
| Process and Systems Thinking | 30 pts | [X/30] | [X pts] |
| Execution and Accountability | 25 pts | [X/25] | [X pts] |
| Problem-Solving Under Ambiguity | 20 pts | [X/20] | [X pts] |
| Communication / Stakeholder Mgmt | 15 pts | [X/15] | [X pts] |
| THRIVE Alignment / Integrity | 10 pts | [X/10] | [X pts] |
| **Total** | **100 pts** | | **[X/100]** |

**Auto-disqualifier check:**
- Process/Systems Thinking: [X/30] — [✅ Above threshold / 🔴 DISQUALIFY]
- THRIVE/Integrity: [X/10] — [✅ Above threshold / 🔴 DISQUALIFY]
- References available (Manager+): [✅ Yes / 🔴 No — DISQUALIFY]

---

## Dimension Detail

### Process and Systems Thinking ([X/30])

**Interview evidence:**
[What they said — specific quote or paraphrase. What did they build or improve? Did they demonstrate cause-and-effect thinking, or surface-level process awareness?]

**Score rationale:**
[Why this score. What impressed or concerned. Specific.]

### Execution and Accountability ([X/25])

**Interview evidence:**
[Did they speak about outcomes or activities? Did they own a result, or attribute it to the team?]

**Score rationale:**

### Problem-Solving Under Ambiguity ([X/20])

**Interview evidence:**
[Did they describe a real situation with a real outcome? Did they make a decision, or describe how they would decide? Action over theory.]

**Score rationale:**

### Communication / Stakeholder Mgmt ([X/15])

**Interview evidence:**
[How did they present themselves? Did they translate complex situations clearly? Did they show appropriate upward communication instincts?]

**Score rationale:**

### THRIVE / Integrity ([X/10])

**Interview evidence:**
[Did they demonstrate intellectual honesty? Did they acknowledge mistakes? Any red flags about truthfulness or values?]

**Score rationale:**

---

## Reference Check Summary (Manager+ required)

**Reference 1:** [Name, Title, Company, Relationship to candidate]
[Key findings: reliability, accountability, specific feedback on strengths/development areas, would they rehire?]

**Reference 2:** [Name, Title, Company]
[Key findings]

**Reference check conclusion:** [Green / Yellow — note specific concern / Red — do not hire]

---

## Hiring Recommendation

**Total score:** [X/100] | **Grade:** [A/B/C]
**Auto-disqualifiers triggered:** [None / Yes — [reason]]

**Recommendation:** ✅ Hire / 🔴 Do not hire / 🟡 Hire with conditions

**Offer range:** $[X] | **Start date target:** [Date]

**Rationale:** [Why hire or not hire — specific, tied to the evidence, not the impression]

**If not hiring:** [Why not — specific; what was the deciding factor]

**Approval required:**
- [ ] Dr. Lewis (all ops hires)
- [ ] CEO (Manager level+)
- [ ] Matt Mathison (Director+)
```

## Output Contract
- Scores are evidence-based, not impression-based — the scorecard captures specific evidence from the interview for each dimension; "seemed sharp" is not evidence; "described building a claims reconciliation process that reduced errors from 8% to 1.5% in 90 days — and could explain exactly how" is evidence; the discipline of writing down the evidence before scoring prevents retrospective rationalization
- Auto-disqualifiers are hard stops — a candidate who scores below the threshold on Process/Systems Thinking or THRIVE doesn't advance, regardless of how impressive they are in other dimensions; operations roles require process thinking as a foundational capability; integrity issues disqualify regardless of score; Dr. Lewis enforces these without exception
- References are required for Manager+ — a reference-less Manager hire is a high-risk hire; the references Dr. Lewis takes are structured conversations with former supervisors, not character witnesses; the questions probe reliability, accountability, and specific performance — not general impressions
- Offer timing is coordinated — a hiring decision without a clear offer timing plan creates urgency that weakens negotiating leverage; Dr. Lewis sets the target start date, designs the offer, and presents it with a 48-hour decision window; back-and-forth negotiation is expected; the first offer is not the final offer unless accepted
- HITL required: Dr. Lewis leads all ops hiring processes; CEO interviews for Manager+ hires; Matt Mathison is informed and approves Director+ hires; reference checks conducted by Dr. Lewis for Manager+; offer presented by Dr. Lewis; compensation above the approved range requires Matt Mathison approval

## System Dependencies
- **Reads from:** Job description, candidate resume, interview notes, reference feedback, comp data (market surveys)
- **Writes to:** Scorecard (SharePoint/Ops/<Company>/People/Hiring/<Role>/); offer letter template; onboarding plan trigger (ops-onboarding-plan); HR record creation
- **HITL Required:** Dr. Lewis scores and recommends; CEO approves Manager+; Matt Mathison approves Director+; references checked by Dr. Lewis for Manager+; offer approved before presentation

## Test Cases
1. **Golden path:** Allevio billing specialist candidate → Interview: demonstrated experience managing a 500-claim/week billing queue; described correcting a payer-specific modifier error that reduced denials by 4%; references (2 former supervisors) confirm reliability and accuracy; Score: Process/Systems 22/30 (strong; some room to grow on SOP documentation); Execution 20/25; Problem-solving 16/20; Communication 12/15; THRIVE 9/10; Total: 79/100; No auto-disqualifiers; Recommendation: Hire at $48K (bottom of range — developing in 2/5 dimensions); Dr. Lewis presents offer; CEO informed; start date targeted for 2 weeks
2. **Edge case:** Candidate scores 90/100 but reference check reveals they were terminated for timecard falsification at a prior job → This is a THRIVE integrity failure that wasn't surfaced in the interview; the scorecard grade doesn't protect against this; do not hire; the reference check is the last line of defense; communicate clearly internally why this hire was declined; document the reference finding
3. **Adversarial:** CEO wants to hire a candidate Dr. Lewis scored 62/100 (below threshold) → Dr. Lewis presents the scorecard with specific evidence; explains the concern (Process/Systems Thinking at 15/30 — the candidate described activities, not outcomes; couldn't explain how a process improvement they led actually worked); if the CEO still wants to proceed, Dr. Lewis documents his recommendation and the CEO's override; proceeds under the CEO's authority; Dr. Lewis monitors performance closely in the first 90 days; if the concern materializes, it's addressed early

## Audit Log
All scorecards retained by candidate, role, and company. Reference check notes retained. Offer details and acceptance/rejection retained. Hiring decisions documented. Auto-disqualifier applications retained. Matt Mathison approvals for Director+ documented.

## Deprecation
Retire when portfolio companies have HR leaders who own the hiring process with a calibrated scorecard, conduct and score structured interviews, and bring final decisions to Dr. Lewis for review rather than having Dr. Lewis manage the full hiring workflow.
