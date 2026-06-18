---
name: exec-ceo-hiring
description: "Run the CEO and C-suite hiring process for MBL portfolio companies. Use when the user says 'hire a CEO', 'CEO search', 'C-suite hiring', 'executive search', 'find a CEO', 'hire the COO', 'hire the CFO', 'hire a VP', 'executive hiring', 'build the interview process', 'C-suite search', 'run the executive search', 'CEO interview process', 'executive candidate evaluation', 'portfolio company CEO search', 'who should we hire', 'evaluate the CEO candidates', 'executive scorecard', 'build the hiring rubric', 'executive interview rubric', 'assess CEO candidates', 'evaluate executive candidates', 'hiring framework', 'executive onboarding', or 'CEO onboarding plan'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--role <CEO|COO|CFO|VP|Director>] [--entity <Allevio|HIVE|Column6|MBL>] [--action <job-spec|scorecard|process|debrief|offer|onboarding>] [--priority <urgent|planned>]"
---

# Exec CEO Hiring

Run the CEO and C-suite hiring process for MBL portfolio companies — from defining the role through to onboarding the new executive. Hiring at the CEO and C-suite level is one of the highest-stakes decisions in PE portfolio operations: a great hire compounds over years; a misfire costs 12-18 months of operational momentum. The MBL approach is rigorous, THRIVE-filtered, and personally led — Matt Mathison is personally involved in every CEO hire; Dr. Lewis designs the process and manages the candidate experience.

## When to Use
- A portfolio company CEO role is vacant or transitioning
- A portfolio company needs a new C-suite member (COO, CFO, VP Sales)
- MBL needs to add a leadership role at the holding company level
- An acquisition closes and the inherited leadership team needs to be evaluated and potentially supplemented
- A succession plan gap requires an external search pipeline

## CEO Hiring Framework

```
ROLE DEFINITION PHASE (before sourcing begins):

  Define the job through the entity's strategy, not just the role description:
  
    Context for this hire:
      □ What is the entity's current phase? (Turnaround / Growth / Scaling / Stability)
      □ What is the entity's critical challenge in the next 18 months?
      □ What did the prior leader do well? What gap is this hire closing?
      
    Non-negotiable criteria (THRIVE filter):
      □ TRUTH: Does this person have a demonstrated track record of surfacing hard data
        proactively, not just when pressured?
      □ HUSTLE: Does this person create organizational execution velocity?
      □ RESPECT: Does this person build psychologically safe, high-trust teams?
      □ INTEGRITY: Is there any gap between what this person says and what they do?
        (One confirmed integrity failure = immediate disqualification — no exceptions)
      □ VALUE: Can this person articulate and deliver measurable business outcomes?
      □ ENJOY: Is this person genuinely energized by this type of work at this scale?
      
    Role-specific criteria (entity-specific):
      For Allevio CEO: Healthcare operations experience; HIPAA literacy; employer group
        relationship experience; clinical/operational integration competency
      For HIVE CEO: Natural resources or asset management experience; landowner relationship
        orientation; financial discipline; ability to work in a small, high-autonomy environment
      For Column6 CEO: Ad-tech/media industry experience; agency relationship management;
        data-driven revenue operations; programmatic advertising understanding

INTERVIEW PROCESS (6-stage; 6-8 weeks total):

  Stage 1 — Resume/LinkedIn Screen (Dr. Lewis):
    Does the candidate have the minimum experience requirements?
    Are there any obvious integrity signals in their history? (Short tenures with no explanation;
    gaps; discrepancy between resume and LinkedIn)
    
  Stage 2 — 30-Minute Phone Screen (Dr. Lewis):
    Purpose: validate the basics; assess communication quality; gauge THRIVE fit
    3 core questions: (1) Why are you interested in this specific opportunity?
      (2) What's the hardest decision you've made in a leadership role?
      (3) Walk me through a time you had to deliver bad news to stakeholders.
      
  Stage 3 — 90-Minute Deep Dive (Dr. Lewis + entity leadership):
    THRIVE behavioral interview: 2 questions per THRIVE dimension
    Entity-specific case: 20 minutes — "here's a real situation we're facing; how would you approach it?"
    Operating model discussion: how do they work? What systems do they create?
    
  Stage 4 — 2-Hour Case Presentation (candidate preparation; Matt Mathison + Dr. Lewis):
    Candidate receives a briefing document (entity background; key metrics; strategic context)
    Candidate presents a 90-day plan for the role (how they would approach the first 90 days)
    Assessment: Do they see the right problems? Is the plan credible? Can they present to a board?
    
  Stage 5 — Reference Checks (Dr. Lewis — 4 references minimum):
    Dr. Lewis calls directly — does not accept written references.
    References must include: direct supervisor; board member or peer; subordinate; optional: customer or partner
    Reference protocol: "Tell me about a time [candidate] had to make a difficult decision under pressure."
      "What would [candidate] tell you are their biggest development areas?"
      "Would you hire them again if you could? Why or why not?"
    Any reference who says "I can't speak to that" on an integrity question = flag for Matt Mathison
    
  Stage 6 — Matt Mathison Final Interview (60 minutes):
    Purpose: Matt's direct assessment of THRIVE alignment and personal fit
    Matt asks his own questions — Dr. Lewis does not script this conversation
    Dr. Lewis provides Matt a 1-page brief on the candidate before the conversation (exec-meeting-prep)

COMPENSATION AND OFFER:

  CEO compensation framework:
    Base: market-competitive for entity scale (not MBL-wide; entity-specific comp benchmarks)
    Bonus: performance-based (tied to entity GRR / NRR / specific THRIVE metrics — not subjective)
    Equity/LTIP: defined vesting schedule; cliff at 12 months; full vest at 36 months
    Clawback: INTEGRITY failure (Matt Mathison determines) = clawback on unvested equity
  
  Offer process:
    Matt Mathison makes the verbal offer (not Dr. Lewis)
    Dr. Lewis prepares the offer letter for Matt's review
    Negotiation window: Matt Mathison authorized to negotiate within a pre-defined band
    Any negotiation outside the band requires Dr. Lewis + Matt review before counter

ONBOARDING (90-day plan):

  Week 1: Orientation (systems access; team introductions; read the key documents)
  Weeks 2-4: Listening tour (30-minute conversations with every direct report)
  Day 30: First report to Matt Mathison (what I've learned; what I'm watching; my first 60-day plan)
  Days 31-60: Take ownership of one key operational area (not everything — one thing first)
  Day 60: Second report to Matt Mathison (how the 60-day plan is going; what I'm adjusting)
  Day 90: Full operating model established; team 1-on-1 cadences set; first board interaction
```

## Output Format

```markdown
# CEO Hiring Plan — [Role] — [Entity] — [Date]
**Initiated by:** Dr. Lewis | **Approved by:** Matt Mathison

---

## Role Definition

**Why we're hiring:** [Context — what changed; what gap this fills]
**Entity phase:** [Turnaround / Growth / Scaling / Stability]
**Critical challenge this hire must address:** [Specific challenge — one sentence]

---

## Hiring Criteria (THRIVE-Filtered)

| THRIVE Dimension | Non-negotiable | Evidence we'll look for |
|-----------------|---------------|------------------------|
| T — Truth | [Yes/No] | [How we'll test for it] |
| H — Hustle | [Yes/No] | [Evidence we'll look for] |
| R — Respect | [Yes/No] | [Evidence] |
| I — Integrity | YES (always) | [What we'll check in references] |
| V — Value | [Yes/No] | [Measurable outcomes from prior roles] |
| E — Enjoy | [Yes/No] | [How we'll assess genuine fit] |

---

## Stage Tracker

| Stage | Owner | Status | Notes |
|-------|-------|--------|-------|
| 1. Resume screen | Dr. Lewis | [Not started / In progress / Complete] | [N] candidates |
| 2. Phone screen | Dr. Lewis | | |
| 3. Deep dive | Dr. Lewis + entity | | |
| 4. Case presentation | Matt + Dr. Lewis | | |
| 5. References | Dr. Lewis | | |
| 6. Matt final | Matt Mathison | | |

---

## Candidate Pipeline

| Candidate | Stage | Status | THRIVE flag | Dr. Lewis assessment |
|-----------|-------|--------|------------|---------------------|
| [Name] | [Stage] | [Active/Hold/Pass] | [Any flag] | [1-sentence] |

---

## 90-Day Onboarding Plan (upon hire)

[Per the framework above — customized for the specific entity and role]
```

## Output Contract
- INTEGRITY failure = immediate disqualification, no exceptions — one confirmed integrity failure in references, background check, or the interview process is a hard stop; Dr. Lewis does not bring an integrity-flagged candidate to Matt Mathison as a finalist; if Dr. Lewis discovers an integrity issue late in the process, he stops the process immediately and briefs Matt directly; a great resume does not offset an integrity failure; the THRIVE filter's I is a kill criterion, always
- Matt Mathison is personally involved in every CEO hire — Dr. Lewis manages the process through Stage 5; Matt Mathison always conducts the Stage 6 final interview and makes the verbal offer; no CEO is hired without Matt's direct assessment of THRIVE alignment; this is non-negotiable regardless of time pressure or schedule constraints
- References are called directly — written references, LinkedIn endorsements, and candidate-provided testimonials are not references; Dr. Lewis calls 4 references for every CEO finalist; the questions are specific and behavioral; any reference that hedges on an integrity question is escalated to Matt Mathison before proceeding; "I can only confirm dates of employment" from a prior supervisor is a flag, not a formality
- HITL required: Matt Mathison approves the job definition and THRIVE criteria before sourcing begins; Matt conducts the Stage 6 final interview; Matt makes the verbal offer (Dr. Lewis prepares the offer letter); all reference call notes retained; Matt reviews and approves the onboarding plan before Day 1; any candidate who passes Stage 3 is reviewed with Matt before advancing to the case presentation

## System Dependencies
- **Reads from:** exec-strategic-planning (entity strategy — informs role definition); exec-succession-planning (what kind of successor is needed; what the development gaps are in internal candidates); exec-leadership-coaching (internal candidates' development readiness); exec-board-governance (board approval requirements for CEO hires); exec-portfolio-review (entity performance context — shapes what skills the hire must have)
- **Writes to:** Hiring plans (SharePoint → ExecutiveSupport → Hiring → [Entity] → [Role] → [YYYY]); offer letters (Matt Mathison signature; Dr. Lewis prepares); onboarding plans (per entity CEO onboarding track); exec-succession-planning (hired executive becomes part of the succession landscape); exec-leadership-coaching (new executive immediately enters the coaching program)
- **HITL Required:** Matt Mathison approves job definition before sourcing; Matt conducts Stage 6 final interview; Matt makes verbal offer; all reference notes retained and reviewed; Matt approves onboarding plan; INTEGRITY failure = immediate stop and Matt notification; no CEO hired without Matt's direct involvement in Stage 6

## Test Cases
1. **Golden path:** Allevio COO role opens; Dr. Lewis builds the job spec (entity phase: Growth; critical challenge: scaling from 12 to 25 employer groups without operational breakdown); 6 weeks, 6 stages; Stage 5 reference check on finalist reveals one strong reference, one hedged reference ("great talent, strong personality — needed a lot of independence"); Dr. Lewis flags: "The hedged reference is worth asking Matt about — 'needed a lot of independence' in a PE-backed environment where transparency to MBL is required could be an Integrity signal. I recommend we explore this directly with the candidate before Stage 6." Matt: "Agree — add one question in Stage 6 about a time they had to work within constraints they disagreed with." Stage 6 goes well; candidate is direct about the prior situation; Matt: "I'm satisfied — let's make the offer." Offer made; candidate accepts. 90-day onboarding plan activated.
2. **Edge case:** Stage 3 deep dive reveals a HIVE CEO candidate who is technically excellent but shows a pattern of avoiding conflict with their team ("I prefer to let the team work things out") → Dr. Lewis flag: "This is a RESPECT + TRUTH gap — in a natural resource environment where landowner disputes and operator conflicts require direct leadership intervention, a conflict-avoidant CEO will let problems fester until they become crises. I recommend we pass on this candidate and note the assessment in the pipeline tracker. If Matt wants to explore further, we could ask the candidate for a specific example of a time they intervened in a conflict — but I'm skeptical the answer will change my assessment." Matt: "Pass. Keep looking."
3. **Adversarial:** Time pressure — a portfolio company CEO departs unexpectedly and a board member pushes Matt to hire quickly, proposing a candidate they know personally → Dr. Lewis: "I understand the urgency. My recommendation: we can run an accelerated process (4 weeks vs. 8) but we cannot skip the THRIVE filter or Matt's Stage 6 interview. If this board member's candidate is right, they'll pass the process — and we'll have the evidence to support the hire. If they don't pass, we'll know why and we can have a fact-based conversation with the board member. Shortcuts on CEO hiring have a track record of being costly. Here's the 4-week plan." Matt: "Agreed. Run it."

## Audit Log
All hiring plans retained by role, entity, and date. Candidate pipeline and assessment notes retained. Reference call notes retained (all 4 per finalist). Offer letter and compensation records retained. Matt Mathison involvement records retained (Stage 6 interview notes; verbal offer record). Onboarding plan records retained. INTEGRITY flags and decisions retained.

## Deprecation
Retire when MBL has an HR leader or retained executive search firm managing the process — with Dr. Lewis providing the THRIVE framework, entity strategy context, and Matt Mathison remaining personally involved in Stage 6 and the verbal offer regardless of HR infrastructure.
