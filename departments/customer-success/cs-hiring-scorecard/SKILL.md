---
name: cs-hiring-scorecard
description: "Build an interview scorecard for a Customer Success role. Use when the user says 'hiring a CSM', 'CS interview', 'customer success interview', 'interview scorecard for CS', 'how to hire a CSM', 'evaluate a CS candidate', or 'CS hiring criteria'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<role-title> [--entity <name>] [--level <entry|mid|senior|manager>] [--segment <smb|mid-market|enterprise>]"
---

# CS Hiring Scorecard

Build a structured interview scorecard for a Customer Success role. CS is one of the highest-leverage hires in a post-sale motion — a great CSM retains and expands accounts; a poor one loses them. This scorecard ensures consistent evaluation across the interview panel.

## When to Use
- Opening a new CSM or CS Manager role
- When the team is interviewing without alignment on criteria
- After a poor CS hire — what did the scorecard miss?
- Annual CS team capacity planning (pre-hire alignment)

## CS Role Archetypes

| Archetype | Description | Key Traits |
|-----------|------------|-----------|
| **Onboarding CSM** | Drives new customer activation and time-to-value | Project management, patience, technical aptitude |
| **Strategic CSM** | Manages Tier 1 accounts, executive relationships | Relationship depth, business acumen, commercial instinct |
| **Scaled CSM** | Manages large number of Tier 2-3 accounts | Process efficiency, automation mindset, high EQ at scale |
| **CS Manager** | Leads a team of CSMs | Coaching, operational excellence, data fluency |

## Interview Dimensions (Score 1–5)

### 1. Customer Empathy and Communication
- Can they explain a complex issue simply and without condescension?
- Do they listen actively or rush to solutions?
- Can they describe a time they navigated a difficult customer conversation?

### 2. Problem Solving and Resourcefulness
- When they didn't have an answer, what did they do?
- Can they describe a time they uncovered a root cause others had missed?
- How do they handle ambiguity? (CS rarely has a perfect playbook)

### 3. Business Acumen
- Do they understand how the customer's business makes money?
- Can they connect product usage to business outcomes?
- Can they quantify the value they've delivered in previous roles?

### 4. Ownership and Accountability
- Do they take ownership of customer outcomes or attribute problems externally?
- Have they ever done more than the job description required to keep a customer?
- How do they handle a customer who is unhappy, even if the cause wasn't their fault?

### 5. Organizational and Process Skills
- How do they manage a large book of accounts? (Show me their system)
- How do they prioritize competing demands from multiple customers?
- What does their CRM discipline look like?

### 6. Commercial Instinct (For Strategic/Manager Roles)
- Have they ever identified and closed an expansion or upsell opportunity?
- Can they describe how they approach a renewal conversation?
- How do they know when to involve sales in an expansion discussion?

## Output Format

```markdown
# CS Hiring Scorecard — <Role Title>
**Entity:** <name> | **Level:** <entry/mid/senior/manager> | **Segment:** <SMB/Mid/Enterprise>

---

## Scoring Guide
1 = Below standard | 2 = Emerging | 3 = Meets standard | 4 = Above standard | 5 = Exceptional
**Hire threshold:** Average ≥ 3.5; no dimension below 2

---

## Interview Scorecard

| Dimension | Weight | Score (1–5) | Notes |
|-----------|--------|------------|-------|
| Customer empathy and communication | 25% | | |
| Problem solving and resourcefulness | 20% | | |
| Business acumen | 20% | | |
| Ownership and accountability | 20% | | |
| Organizational and process skills | 10% | | |
| Commercial instinct (senior/manager) | 5% | | |

**Weighted score:** <X.X> / 5.0

---

## Interview Questions

**Customer Empathy:**
- "Tell me about a time you had a difficult customer conversation. How did you handle it?"
- "A customer is frustrated but technically they're wrong — how do you approach that?"

**Problem Solving:**
- "Walk me through a situation where a customer wasn't getting value. What did you do?"
- "How did you figure out the root cause of a customer issue that wasn't obvious?"

**Business Acumen:**
- "Tell me about a time you connected product usage to a specific business outcome for a customer."
- "How have you quantified the value you delivered in a past role?"

**Ownership:**
- "Tell me about a customer you lost. What happened and what was your role in it?"
- "Have you ever gone significantly beyond your job description to help a customer succeed?"

**Commercial (Senior/Manager):**
- "Tell me about a time you identified and closed an expansion or upsell."
- "How do you approach a renewal with a customer who is satisfied but not obviously willing to expand?"

---

## Red Flags (Auto-Disqualify)

- [ ] Blames customers for churn or failures ("the customer was unreasonable")
- [ ] Cannot articulate the business value of their past work
- [ ] No examples of retaining or expanding a relationship
- [ ] Doesn't ask any questions about the customers they'll serve or the company
- [ ] References will not speak to their relationship management ability

---

## Reference Check Questions

1. "Describe their relationship quality with their customer accounts."
2. "Were there customers they struggled with? How did they handle those relationships?"
3. "How did they handle a situation where a customer was unhappy and it wasn't their fault?"
4. "Would you rehire them as a CSM? Why or why not?"

---

## Hiring Decision

**Recommended:** Hire / No hire / Continue to next round
**Key deciding factor:** <What made the difference>
**Concerns:** <Any gaps to explore in an additional round>
```

## Output Contract
- Weighted score always calculated — gut feel alone leads to inconsistent CS hiring
- Red flags always explicitly checked
- Reference questions always focused on customer relationship quality
- HITL required: CS Manager and Dr. Lewis jointly approve final hiring decision; HR validates comp offer

## System Dependencies
- **Reads from:** Job description, candidate resume/background (provided)
- **Writes to:** Nothing (scorecard for interview panel use)
- **HITL Required:** CS Manager and Dr. Lewis jointly approve final decision; HR processes offer; reference checks required before final decision

## Test Cases
1. **Golden path:** Mid-market Strategic CSM scorecard → 6 dimensions weighted, 8 interview questions with behavior-based framing, red flag checklist, 4 reference questions
2. **Edge case:** Candidate from a non-CS background (sales or support) → adjusts questions to probe for transferable skills, flags that domain knowledge can be trained but empathy and ownership cannot
3. **Adversarial:** Hiring manager wants to skip references because "the candidate seems great" → requires reference checks before final decision, explains that reference checks for CS roles specifically validate the customer relationship dimension which interviews can't fully assess

## Audit Log
Scorecards retained by role, candidate, and decision. Hire/no-hire outcomes tracked against 12-month retention performance.

## Deprecation
Retire when ATS integrates structured CS scorecards with calibration tracking and hire quality feedback loops.
