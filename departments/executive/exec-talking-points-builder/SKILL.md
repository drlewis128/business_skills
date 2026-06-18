---
name: exec-talking-points-builder
description: "Build executive talking points for any MBL Partners context. Use when the user says 'talking points', 'build talking points', 'write talking points', 'what should I say', 'what should Matt say', 'key messages', 'message framework', 'speaking points', 'prepared remarks', 'key points', 'what to say in the meeting', 'brief talking points', 'quick talking points', 'how should we frame this', 'what is the narrative', 'executive narrative', 'message house', 'communication framework', 'what are the 3 key points', 'position on this issue', 'how do we communicate this', 'draft the talking points', 'media talking points', 'investor talking points', 'board talking points', 'partner talking points', 'how do we explain this to', or 'help me articulate'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--topic <description>] [--audience <LP|board|media|partner|team|regulator>] [--format <brief|full|3-point|message-house>] [--tone <confident|empathetic|defensive|proactive>]"
---

# Exec Talking Points Builder

Build executive talking points for any MBL Partners context — translating complex business situations, portfolio events, and strategic decisions into clear, confident, audience-specific messages that Matt Mathison and entity CEOs can use with conviction. Talking points fail when they're generic, when they hedge, or when they don't answer the question the audience actually has. Good talking points are specific, defensible, and end with a forward look that gives the audience something to hold onto.

## When to Use
- Matt needs talking points for an LP call, board meeting, or partner conversation
- A portfolio event requires a prepared communication position (good news or bad)
- Entity CEO needs to communicate a difficult decision to their team
- Media, regulatory, or external relations context requires a vetted position
- A recurring message needs to be consistent across multiple conversations (investor narrative; M&A rationale)

## Talking Points Framework

```
TALKING POINTS ARCHITECTURE:

  Level 1 — The Message House (for major communications):
    ROOF: The one headline. If the audience remembers one thing, it's this.
    PILLAR 1: The business case / evidence
    PILLAR 2: The leadership/people case / credibility
    PILLAR 3: The forward commitment / what happens next
    FOUNDATION: The "why we" statement — why MBL / this entity is positioned for this
    
  Level 2 — The 3-Point Brief (for most meetings):
    Point 1: Context / situation (what's true right now)
    Point 2: Position / action (what we're doing and why)
    Point 3: Forward look / commitment (what the audience can expect)
    
  Level 3 — The BLUF Bridge (for quick exchanges):
    One sentence answer to the most likely question
    One sentence supporting evidence
    One sentence forward commitment
    Done.

AUDIENCE-SPECIFIC FRAMING:

  LP / Investor audience:
    Primary question they have: "Is my capital safe? Is MBL creating value?"
    Frame everything through: performance, risk management, and capital stewardship
    Language: IRR, LP returns, NRR, GRR, portfolio health, LP alignment
    Tone: confident transparency — own the bad and explain the plan
    What they DON'T want to hear: spin, hedging, or "we're still figuring it out"
    
  Board audience:
    Primary question: "Are we making the right decisions? What do we need to decide?"
    Frame everything through: governance, accountability, and forward decisions
    Language: policy, approval thresholds, risk tolerance, governance frameworks
    Tone: direct, data-backed, with a clear recommendation on every issue
    What they DON'T want to hear: ambiguity without a recommendation
    
  Team / All-hands audience:
    Primary question: "Does leadership know what's happening? Do they care about us?"
    Frame everything through: what it means for them specifically
    Language: accessible, no jargon, specific names and stories
    Tone: honest and optimistic — own the challenges, commit to the path forward
    What they DON'T want to hear: corporate speak, vague reassurances
    
  Partner / Customer audience:
    Primary question: "Can I trust these people? Will they deliver?"
    Frame everything through: reliability, performance, and relationship
    Language: specific results, specific commitments, named accountability
    Tone: confident with specifics — don't oversell, don't undersell
    What they DON'T want to hear: promises without specifics or history
    
  Media / External audience:
    Primary question: "What's the story here?"
    Frame everything through: the public narrative MBL wants to establish
    Language: plain English, no jargon, no internal acronyms
    Tone: composed, factual, no emotional escalation
    What they DON'T want to hear: "no comment" without a redirect
    Clearance: any media communication must be pre-approved by Matt Mathison

DIFFICULT SITUATION PROTOCOLS:

  When the news is bad:
    Lead with the fact, not the explanation: "We missed our Q2 target by 8%." THEN explain.
    Own the execution piece before citing external factors.
    Never lead with a caveat or excuse.
    Always include the plan: "Here's what we're doing about it."
    End with a specific forward commitment, not "we'll try to do better."
    
  When facing a hostile question:
    Bridge technique: "That's a fair question. What I can tell you is [positive message]."
    Don't repeat the negative: "We didn't fail — " repeats the word fail.
    Don't fill silence: state the position, stop talking.
    Know the one line you will not cross: any confidential deal information; any LP
      data not authorized for sharing; any HIPAA-adjacent healthcare data.
    
  When you don't know the answer:
    "I don't have that data in front of me — I'll get it to you by [date]."
    Never guess. Never estimate with false precision. Never say "I think."
```

## Output Format

```markdown
# Talking Points — [Topic] — [Audience] — [Date]

## Headline (one sentence — the message house roof)

[The one thing this audience should take away from this conversation]

---

## 3-Point Brief

**Point 1 — Context:**
[One sentence — the current situation, stated as fact]

**Point 2 — Position:**
[One sentence — what we're doing and why]

**Point 3 — Forward:**
[One sentence — what the audience can expect; specific commitment or timeline]

---

## Supporting Evidence (if needed)

- [Specific data point or example — pillar 1]
- [Credibility point — pillar 2]
- [Track record or precedent — foundation]

---

## Likely Questions and Prepared Responses

**Q: [Question they're likely to ask]**
A: [One-sentence response — direct, specific, uses the bridge if needed]

**Q: [Question 2]**
A: [Response]

---

## What We Will NOT Say

- [Off-limits topic — with reason]
- [Confidential information — designation]
```

## Output Contract
- 3 points maximum for any brief — a message with 7 points has no primary point; it means everything is equally important, which means nothing is actionable; Dr. Lewis delivers 3 talking points for any audience and context; if the situation requires more depth, the additional detail goes into supporting evidence (which the audience may or may not ask for), not into the primary talking points
- Every talking point is a complete sentence — "Strong performance" is not a talking point; "Allevio GRR held at 93% in Q2, above our 90% target, for the third consecutive quarter" is a talking point; complete sentences with specific data force precision; bullet fragments invite vagueness
- Audience-specific framing, always — the same business event requires different talking points for an LP, a board member, a team, and a partner; Dr. Lewis does not deliver generic talking points and expect the communicator to adapt them; the adaptation is the work; one set of talking points used for all audiences is a communication failure waiting to happen
- HITL required: Matt Mathison reviews and approves all talking points for LP communications, board communications, and any external/media context; entity CEO reviews their own talking points before use; Dr. Lewis flags any talking points that involve sensitive deal information, LP data, or regulatory context for Matt Mathison explicit clearance before the conversation

## System Dependencies
- **Reads from:** exec-strategic-planning (portfolio priorities — talking points for strategy conversations); exec-portfolio-review (performance data — talking points for investor and board conversations); exec-kpi-dashboard (current metrics — supporting evidence); exec-investor-relations (LP relationship context — audience-specific framing); exec-board-communication (board communication context); exec-meeting-prep (talking points for specific meetings are a subset of meeting prep)
- **Writes to:** exec-meeting-prep (talking points flow directly into the Meeting Prep Brief's Talking Points section); exec-board-communication (board communication talking points); exec-investor-relations (LP call talking points and prepared Q&A)
- **HITL Required:** Matt Mathison reviews LP, board, and external/media talking points; entity CEO reviews entity-specific talking points; any talking points involving deal information, LP data, or regulatory context require Matt Mathison explicit clearance before use

## Test Cases
1. **Golden path:** Matt has an LP call in 2 days; the Allevio Q2 claim ratio came in slightly worse than expected (89% vs. 87% target, but the LP doesn't know the target); Dr. Lewis builds talking points: Headline: "Allevio delivered Q2 with GRR at 93% and claim ratio at 89% — both within plan, with a clear clinical intervention in place for Q3." Point 1: "Allevio retained all major employer groups in Q2 — zero churn events in a historically volatile OE season." Point 2: "Claim ratio came in at 89% against our 87% target — a 2-point gap we've isolated to two high-utilization employer groups; the clinical team launched intervention protocols in June." Point 3: "We expect the claim ratio to recover to 86-87% by Q4 as the interventions take hold; I'll update you with Q3 actuals in our October call." Matt: "Perfect — the claim ratio positioning is exactly right. I'll use it."
2. **Edge case:** HIVE is dealing with a competing operator encroaching on a key parcel; a landowner calls Matt directly and asks "Are you going to lose this parcel?" → Dr. Lewis: "Here's the BLUF Bridge for this call: 'We're actively managing the competing operator situation — we've been through this before and we know how to protect your interest. The lease terms we have in place give us strong standing. I'll have a specific update for you by [date].' Do NOT speculate on legal outcomes or give a 'yes/no' on the parcel — we don't have that answer yet and guessing loses credibility. Commit to the follow-up date and deliver."
3. **Adversarial:** Media outlet contacts Matt asking for comment on a rumor that MBL is acquiring a struggling healthcare company → Dr. Lewis: "This needs Matt's clearance before any response. My initial recommendation: no confirmation or denial; the redirect talking point is: 'MBL is always evaluating opportunities that fit our portfolio strategy and THRIVE values. We don't comment on specific deal speculation.' That's it. Do not elaborate. If they push: 'That's all I can offer at this stage.' Matt, does that framing work or do you want to adjust before I consider it cleared?" Matt: "That works. Use that line." Dr. Lewis provides the cleared talking point. Media call handled.

## Audit Log
All talking points retained by topic, audience, and date. Matt Mathison clearance records retained (what was reviewed; when; by what method). Media and external communication talking points retained separately (higher sensitivity). Talking point use records retained (which conversations used which talking points; what follow-up was required).

## Deprecation
Retire when MBL has a Communications Director or Chief of Staff who manages message development — with Dr. Lewis providing the AI strategy and portfolio data inputs for technology-related communications.
