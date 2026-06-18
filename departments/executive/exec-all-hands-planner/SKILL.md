---
name: exec-all-hands-planner
description: "Plan and script MBL Partners and portfolio company all-hands meetings. Use when the user says 'all-hands', 'all-hands meeting', 'plan the all-hands', 'company meeting', 'full team meeting', 'all-company meeting', 'build the all-hands agenda', 'staff meeting agenda', 'town hall', 'portfolio all-hands', 'write the all-hands script', 'what should we cover in the all-hands', 'prepare the all-hands', 'all-hands prep', 'leadership all-hands', 'team all-hands', 'company update meeting', 'quarterly all-hands', 'annual all-hands', 'company-wide meeting', or 'prepare the company meeting'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--cadence <quarterly|annual|ad-hoc>] [--format <in-person|virtual|hybrid>] [--duration <60|90|120>]"
---

# Exec All-Hands Planner

Plan and script all-hands meetings for MBL Partners and portfolio company leadership — turning a company-wide meeting from a routine status update into a culture-building, momentum-generating event that reinforces THRIVE values and leaves the team knowing where they stand, where they're going, and why it matters. An all-hands meeting that is just a PowerPoint walkthrough is a missed opportunity. An all-hands that is specific, honest, and personally connected to the audience is one of the highest-leverage leadership tools available.

## When to Use
- Quarterly all-hands planning (portfolio company or MBL level)
- Annual company meeting (year-in-review + next year priorities)
- Major company event requires all-staff communication (M&A close; significant restructuring; major win)
- Entity CEO needs to build team culture or re-align after a difficult period

## All-Hands Framework

```
ALL-HANDS DESIGN PRINCIPLES:
  □ Specificity beats inspiration: "We grew GRR from 88% to 93%" beats "We had a great year"
  □ Honesty builds trust: Every all-hands must include at least one honest challenge or miss
  □ Connection before content: Open with something personal before going to business metrics
  □ Q&A is not optional: Reserve 20-30% of the time for questions — enforce this
  □ End with energy: The last 5 minutes determine how people feel walking out
  □ THRIVE filter: Every all-hands should leave the team feeling the THRIVE values are real

STANDARD ALL-HANDS STRUCTURE (90 minutes recommended):

  0:00-0:10 — OPENING (CEO / Managing Partner):
    Personal open: one story from the last quarter that illustrates what the company is about
    Not a status update — a story. Humanizes leadership.
    Transition: "Here's the state of where we are..."
    
  0:10-0:25 — PERFORMANCE RESULTS (CEO + CFO/Controller if applicable):
    3-5 key metrics — only the ones that the whole company can understand and influence
    Use a scoreboard format (Green / Yellow / Red — not RAG without explanation)
    Celebrate specific wins with specific people's names
    Own the misses — do NOT blame external factors first; own the execution piece
    
  0:25-0:40 — PRIORITIES FOR NEXT QUARTER:
    3 priorities maximum (THRIVE-filtered, exec-strategic-planning)
    Each priority: one sentence on what it is, one sentence on why it matters to this room
    Assign visible ownership: "Sarah owns this. She'll be updating the team monthly."
    
  0:40-0:55 — DEPARTMENT SPOTLIGHTS (rotating; 1-2 departments max):
    Each spotlight: 5 minutes maximum; one team; one win + one thing they're working on
    The CEO does NOT present this — the department lead does
    Prepare department leads 2 weeks in advance (outline + coaching)
    
  0:55-1:15 — OPEN Q&A:
    CEO-led; no question is off-limits (within reason)
    If the CEO doesn't know the answer: "I don't know — I'll find out and post the answer
      in [Slack/Teams] by Friday." Then actually do it.
    Seed 2-3 questions in advance if the audience is likely to be quiet
    
  1:15-1:25 — RECOGNITION:
    3-5 individual callouts — people who exemplify THRIVE values
    Specific: "Marcus spent 3 hours on Saturday helping a landowner understand their royalty
      statement — that's Respect." Not generic "good work."
    Nominations can come from anyone; curated by Dr. Lewis / CEO with team input
    
  1:25-1:30 — CLOSE (CEO):
    One sentence on what comes next
    One sentence of personal commitment from the CEO
    Energy close: something that sends them back to work feeling like they're part of something

ENTITY-SPECIFIC CONSIDERATIONS:

  MBL Partners (staff + portfolio company CEOs):
    Performance frame: portfolio-level NRR; each entity's GRR status; forward capital deployment
    THRIVE filter: explicitly apply the filter to the past quarter's performance
    Q&A: entity CEOs should feel comfortable raising real concerns in front of Matt
    
  Allevio (clinical + operations + admin staff):
    Metric language: GRR (employer retention), claim ratio, clinical program enrollment
    HIPAA: do not use aggregate member numbers in all-company settings unless aggregate-only
    Connect metrics to clinical mission: "When our claim ratio stays below target, that means
      our members are getting care they needed — that's why this work matters"
    
  HIVE Partners (field operations + admin):
    Metric language: acreage under management, royalties distributed, production trends
    Personal connection: acknowledge the landowner relationships directly
    Field team visibility: field staff should be in the all-hands, not just office staff
    
  Column6 (ad-tech + sales + client success):
    Metric language: VCR (≥92%), agency NRR, Priority A relationship count
    Sales energy: celebrate specific agency wins with revenue context
    Product: include a 5-minute forward look from the product/tech team
```

## Output Format

```markdown
# All-Hands Meeting Plan — [Entity] — [Quarter/Date]
**Format:** [In-person / Virtual / Hybrid] | **Duration:** [X minutes]
**Facilitator:** [CEO name] | **Audience:** [N people; departments represented]

---

## Agenda at a Glance

| Time | Segment | Owner | Format |
|------|---------|-------|--------|
| 0:00-0:10 | Opening — [Story theme] | [CEO] | Story + transition |
| 0:10-0:25 | Performance Results | [CEO + Controller] | Scoreboard |
| 0:25-0:40 | Next Quarter Priorities | [CEO] | 3 priorities |
| 0:40-0:55 | Department Spotlight — [Dept] | [Dept lead] | 5-min presentation |
| 0:55-1:15 | Open Q&A | [CEO] | Open mic |
| 1:15-1:25 | Recognition | [CEO] | Specific callouts |
| 1:25-1:30 | Close | [CEO] | Energy close |

---

## Opening Story Draft

[2-3 paragraph story draft — specific, personal, connects to what the company is doing]

---

## Performance Scoreboard

| Metric | Target | Actual | Status |
|--------|--------|--------|--------|
| [Metric] | [Target] | [Actual] | 🟢 / 🟡 / 🔴 |

**Wins to celebrate (specific):** [List]
**Misses to own (honest):** [List]

---

## Q3/Q4 Priorities (3 max)

1. **[Priority 1]:** [What it is] / [Why it matters to this room]
   Owner: [Name]
2. **[Priority 2]:** ...
3. **[Priority 3]:** ...

---

## Recognition Nominees

| Person | What they did | Which THRIVE value |
|--------|-------------|-------------------|
| [Name] | [Specific action] | [T/H/R/I/V/E] |

---

## CEO Closing Lines Draft

[2-3 sentences — forward look + personal commitment + energy close]
```

## Output Contract
- Stories, not slides — the all-hands framework is built around human stories and specific numbers, not presentation decks; Dr. Lewis drafts the story framework and CEO lines; the CEO uses these as a starting point, not a script to read verbatim; a CEO reading from slides is a CEO who hasn't prepared; Dr. Lewis's job is to make preparation easy enough that the CEO doesn't need to read
- Q&A is mandatory, time-protected — 20 minutes of Q&A (in a 90-minute format) is not optional; if the performance section runs long, the CEO cuts performance, not Q&A; a company that doesn't get to ask questions is a company that doesn't trust its leaders; Dr. Lewis builds the clock into the agenda and enforces it in prep
- Recognition must be specific — a generic "great job" recognition at an all-hands is worse than no recognition at all; it signals that leadership doesn't know what people do; Dr. Lewis collects specific recognition nominations 2 weeks before each all-hands and curates the callouts with the CEO; specificity is the signal that leadership is paying attention
- HITL required: Dr. Lewis builds the all-hands plan and prepares the CEO; CEO reviews and rehearses the opening story and Q&A seed questions 48 hours before; Dr. Lewis attends (virtually or in person) to track Q&A questions and follow-up commitments; all follow-up commitments from Q&A are logged in exec-action-tracker within 24 hours; recognition nominations reviewed and approved by CEO before the all-hands

## System Dependencies
- **Reads from:** exec-strategic-planning (current portfolio priorities — feed directly to the priorities section); exec-kpi-dashboard (performance metrics for the scoreboard); exec-portfolio-review (quarterly performance data); Krista meeting transcripts (any commitments made in prior all-hands Q&A that need to be followed up); exec-action-tracker (open items from prior all-hands commitments); entity CEO inputs (recognition nominations; department spotlight selection)
- **Writes to:** All-hands agenda and CEO talking points (SharePoint → ExecutiveSupport → AllHands → [Entity] → [Quarter]); exec-action-tracker (Q&A follow-up commitments logged); exec-culture-builder (recognition data feeds into culture tracking)
- **HITL Required:** CEO prepares and presents; Dr. Lewis builds the framework and coaches; CEO reviews and rehearses 48 hours before; recognition nominations reviewed and approved by CEO; Q&A follow-up commitments logged by Dr. Lewis within 24 hours of the meeting

## Test Cases
1. **Golden path:** Allevio Q3 all-hands; 45 people; 90 minutes; hybrid (in-person + remote); Dr. Lewis builds the plan 3 weeks out; CEO rehearsal 48 hours before; opening story: "Marcus, one of our field reps, spent 3 hours explaining a claim to a member who didn't speak English as a first language — that's why we do this"; scoreboard: GRR 93% 🟢, claim ratio 87% 🟢, clinical enrollment 28% 🟡; Q3 priorities: (1) employer group expansion in the Phoenix market (2) clinical program enrollment to 35% (3) AdvancedMD workflow optimization; Q&A: 8 questions, 2 follow-up commitments logged; recognition: Marcus (Respect), Sarah (Hustle). All-hands rated positively by the team; Q&A follow-up delivered within the week.
2. **Edge case:** Entity CEO says "I don't like giving speeches — can we just do slides?" → Dr. Lewis: "I understand. Let's make it easier than speeches. The opening story can be 2 minutes and conversational — I'll give you 3 bullet points and you talk around them. You don't need to memorize anything. The slides handle the scoreboard and priorities sections — I'll build those. All I'm asking is the story at the front and the personal close at the end. Everything else is structured and on-screen. Do you want to do a 15-minute run-through together before the all-hands?" CEO: "If it's 15 minutes, yes." Dr. Lewis builds the prep session; CEO is comfortable going in.
3. **Adversarial:** The performance quarter was genuinely bad — HIVE missed production targets by 18%; landowner retention dropped → Dr. Lewis: "This all-hands needs to lead with honesty, not spin. The team knows the numbers. What they don't know is: (1) what the root cause was, (2) what we're doing about it, and (3) what management's confidence level is going forward. The all-hands should lead with Matt owning the miss explicitly — 'We targeted X and got Y. Here's why, and here's what changes.' If we don't do this, we lose the team's trust and the all-hands makes things worse. I'll draft the honest version — you decide if it's the right level of candor."

## Audit Log
All all-hands plans retained by entity and quarter. CEO rehearsal sessions logged. Q&A questions and follow-up commitments retained (tracked through exec-action-tracker). Recognition nominees and callout content retained. Post-all-hands feedback (if collected) retained.

## Deprecation
Retire when each entity has a Chief of Staff or People function who manages all-hands planning — with Dr. Lewis providing the THRIVE framework inputs and portfolio-level performance context.
