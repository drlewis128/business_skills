---
name: sales-hiring-scorecard
description: "Build an interview scorecard for a sales role. Use when the user says 'hiring a sales rep', 'sales interview', 'interview scorecard', 'how do we evaluate sales candidates', 'sales hire', 'hiring an AE', 'hiring an SDR', or 'evaluate this sales candidate'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<role-title> [--entity <name>] [--level <entry|mid|senior|manager>] [--style <hunter|farmer|full-cycle>]"
---

# Sales Hiring Scorecard

Build a structured interview scorecard for a sales role. A sales hire is a high-stakes, high-cost decision — bad hires cost 6-12 months of ramp time, damaged customer relationships, and missed quota. This skill structures the evaluation so the team is scoring the same things consistently.

## When to Use
- Opening a new sales role (build the scorecard before you talk to candidates)
- When the team is interviewing without alignment on what they're evaluating
- Post-hire post-mortem (why did the last hire not work? — trace to scorecard gaps)
- Quarterly hiring pipeline review for Matt Mathison

## Sales Role Archetypes

| Archetype | Description | Key Traits to Score |
|-----------|------------|-------------------|
| **Hunter / New Logo** | Prospecting-driven, outbound, new customer acquisition | Resilience, outbound discipline, competitive drive |
| **Farmer / Account Manager** | Retention and expansion of existing accounts | Relationship depth, listening, upsell instinct |
| **Full-Cycle AE** | Runs the full process from prospect to close | All of the above + process discipline |
| **SDR / BDR** | Top-of-funnel — books meetings, qualifies leads | Activity volume, tone, curiosity, coachability |
| **Sales Manager** | Leads a team of reps | Coaching, accountability, forecasting, leadership |

## Interview Dimensions (Score 1–5 Per Dimension)

### 1. Coachability (All Roles — Highest Weighted)
- Do they ask good questions in the interview?
- When given feedback or a reframe, do they adapt?
- Can they describe a time they changed their approach based on feedback?
- Behavioral tell: Reps who can't be coached can't improve; managers who can't be coached can't lead

### 2. Process Discipline
- Can they walk you through their exact sales process step by step?
- Do they use a consistent qualification methodology (MEDDIC, BANT, or equivalent)?
- Can they describe their CRM usage and pipeline management approach?

### 3. Resilience and Drive
- How do they respond to a tough question in the interview? (Simulate rejection)
- What is their peak performance story? (Evidence of real results)
- What do they do when a deal falls apart at the close?

### 4. Business Acumen
- Do they understand how a business makes money?
- Can they speak to the business impact (not just product features) of what they've sold?
- Can they translate customer problems into business value?

### 5. Communication and Presence
- Is their written communication clear and professional? (Check the email they sent to confirm the interview)
- Do they listen and adjust, or steamroll?
- Would you be comfortable having them in front of your best customer?

### 6. Role-Specific: Hunter
- What is their average weekly outbound activity (calls, emails, LinkedIn)?
- What is their top-of-funnel pipeline build methodology?
- How do they get past gatekeepers?

### 6. Role-Specific: Manager
- Can they describe how they coach a struggling rep?
- What is their approach to running a pipeline review?
- Have they ever let someone go? What was their process?

## Output Format

```markdown
# Sales Hiring Scorecard — <Role Title>
**Entity:** <name> | **Level:** <entry/mid/senior/manager> | **Archetype:** <hunter/farmer/full-cycle/SDR/manager>

---

## Scoring Guide
1 = Below standard | 2 = Emerging | 3 = Meets standard | 4 = Above standard | 5 = Exceptional
**Hire threshold:** Average ≥ 3.5; no dimension < 2

---

## Interview Scorecard

| Dimension | Weight | Score (1–5) | Notes |
|-----------|--------|------------|-------|
| Coachability | 25% | | |
| Process discipline | 20% | | |
| Resilience and drive | 20% | | |
| Business acumen | 15% | | |
| Communication and presence | 10% | | |
| Role-specific: [Hunter/Farmer/Manager] | 10% | | |

**Weighted score:** <X.X> / 5.0

---

## Interview Questions

**Coachability:**
- "Tell me about a time you changed how you sold based on feedback from a manager or a lost deal."
- "If I told you your discovery questions are too surface-level, how would you respond?"

**Process Discipline:**
- "Walk me through exactly what you do in the first 24 hours after getting a new lead."
- "How do you run your pipeline review? What does your CRM look like right now?"

**Resilience:**
- "What's the toughest deal you've ever lost? What happened?"
- [In the interview, give a pushback/objection and see how they respond]

**Business Acumen:**
- "How does your current company make money? How does what you sell impact that?"
- "Tell me about a time you helped a customer justify the purchase internally."

**Role-Specific (Hunter):**
- "What does your outbound week look like? Walk me through a typical Tuesday."
- "How do you get in front of someone who isn't responding?"

---

## Red Flags (Auto-Disqualify)

- [ ] Can't articulate their own sales process
- [ ] Blames market / product / management for all missed quota
- [ ] No evidence of consistent quota attainment over 2+ years
- [ ] Doesn't ask a single question about the role, team, or company
- [ ] References that won't speak to quota performance

---

## Reference Check Questions (For Final Candidates)

1. "How would you describe their performance vs. quota?"
2. "Did they take coaching well? Can you give an example?"
3. "What would make this person a poor fit for a role?"
4. "Would you rehire them? Why or why not?"

---

## Hiring Decision

**Recommended decision:** Hire / No hire / Continue to next round
**Reasoning:** <Brief rationale — which dimensions drove the decision>
**Concerns to address before offer:** <Any gaps to probe in additional round>
```

## Output Contract
- Weighted score always calculated — gut feel without data leads to bad hires
- Red flags always checked explicitly — any auto-disqualify is a hard stop
- Reference check questions always included for final round
- HITL required: Dr. Lewis and hiring manager jointly make final offer decision; HR reviews comp offer

## System Dependencies
- **Reads from:** Job description, candidate resume/background (provided)
- **Writes to:** Nothing (scorecard for interview panel use)
- **HITL Required:** Hiring manager and Dr. Lewis review scorecard before offer; HR validates comp offer; reference checks completed before final decision

## Test Cases
1. **Golden path:** Mid-market Hunter AE scorecard → 6 dimensions with weights, hunter-specific questions on outbound activity, red flag checklist, 4 reference check questions
2. **Edge case:** Evaluating an internal candidate for promotion → same scorecard, note for internal candidate that references should include current manager and peers (360-style)
3. **Adversarial:** Request to lower the hire threshold because "the pipeline is empty and we need someone fast" → flags that a bad hire is more expensive than an open role, recommends maintaining standard, offers to help accelerate sourcing or use a contract rep as a bridge

## Audit Log
Scorecards retained by role, candidate, and decision. Hire/no-hire outcomes tracked against performance data after 12 months for calibration.

## Deprecation
Retire when ATS (Applicant Tracking System) integrates structured scorecards with built-in interview guides and panel calibration tools.
