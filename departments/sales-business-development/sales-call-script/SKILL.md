---
name: sales-call-script
description: "Build cold call scripts and warm call frameworks for MBL portfolio company sales. Use when the user says 'call script', 'cold call script', 'warm call', 'phone script', 'call framework', 'how to cold call', 'cold calling', 'outbound calling', 'call opener', 'call opening', 'phone outreach', 'calling prospects', 'what to say on the phone', 'what to say when they answer', 'voicemail script', 'voicemail message', 'call structure', 'discovery call opener', 'intro call', 'prospecting call', 'sales call preparation', 'how to start a sales call', 'call guide', or 'phone sales'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--call-type <cold|warm|referral|follow-up>] [--persona <HR-director|CFO|media-buyer|landowner>] [--action <build|review|coach>]"
---

# Call Script

Build cold call scripts and warm call frameworks for MBL portfolio company sales — giving reps a tested, conversational opener that earns 20-30 more seconds at a time until a meeting is booked. A script is not a thing you read to a prospect; it is a framework that structures your thinking so you don't improvise the most critical 30 seconds of a conversation.

## When to Use
- Building or updating the prospecting call script for a portfolio company
- A rep is struggling with phone outreach (low connect-to-meeting conversion)
- Onboarding a new rep (Day 1 of calling requires a script)
- Before a high-stakes follow-up call on an active deal

## Call Script Framework

```
CALL STRUCTURE — THE 5-PART OPENER (applies to cold and warm calls):

  Part 1: Identify and permission (5 seconds)
    "[First name], this is [Rep] from [Allevio / Column6 / HIVE]. Do you have 30 seconds?"
    NOT: "Is this a good time?" (they'll always say no)
    YES: "Do you have 30 seconds?" (small commitment; nearly always yes)
    
  Part 2: Pattern interrupt or hook (10 seconds)
    A sentence designed to earn 30 more seconds of attention
    Allevio: "I work with Arizona employers who are tired of watching their health insurance
      costs go up 10-15% every year without being able to do anything about it."
    Column6: "I work with media buyers who need CTV supply they can actually trust —
      sellers.json compliant; no co-mingled inventory."
    HIVE: "I acquire mineral rights in the Uinta Basin — I'm looking for landowners who
      want to monetize their rights without waiting on production timelines."
    
  Part 3: Credibility signal (5 seconds)
    One brief social proof or specific claim — makes them believe you're real
    Allevio: "We're working with 40+ Arizona employer groups and our clients average
      $25-30 in PMPM savings vs. their prior carrier."
    Column6: "We're IAB members; our completion rates are typically 85-90% vs.
      industry average of around 65-70% for co-mingled CTV."
    HIVE: "We've closed leases across [N] acres in the Uinta Basin in the last 12 months."
    
  Part 4: Ask for permission to continue or book (10 seconds)
    NOT: A long pitch (they didn't agree to a pitch — they agreed to 30 seconds)
    YES: "I'd love to ask you two quick questions to see if there's a fit — would you
      have 2 minutes?"
    OR: "I know I caught you cold — can I email you something specific to your situation
      and follow up with a 15-minute call this week?"
    
  Part 5: Handle the first objection gracefully then book
    Most common first objection: "We're already covered" / "Send me an email" / "Not interested"
    See objection handler (sales-objection-handler) for entity-specific responses

WARM CALL STRUCTURE (for a referral or follow-up to an email):
  Part 1: Identify and name-drop (5 seconds)
    "[First name], this is [Rep] from [Allevio]. [Referrer name] suggested I reach out to you."
    Or: "[First name], this is [Rep] from [Allevio]. I sent you an email last week about
      your benefits renewal — I wanted to follow up directly."
    
  Part 2: One sentence hook (10 seconds)
    Same hook as cold call; the warm opener earns you more time — use it
    
  Part 3: Ask one question (not a pitch)
    "Quick question — when does your benefits contract come up for renewal?"
    "Are you currently evaluating any alternatives for your CTV buy?"
    The question earns information and demonstrates you're not just pitching

VOICEMAIL SCRIPT (for when they don't answer — keep it under 30 seconds):
  "[First name] — this is [Rep] from [Allevio]. I'm calling because we work with Arizona
  employer groups in [their industry] who are tired of watching health insurance costs go up
  every year. I'll send you a quick email with specifics. If you're curious, my number is
  [number] — [Rep] from [Allevio]. Have a good day."
  
  Never say: "Call me back when you get a chance" (they won't)
  Always say: "I'll send you an email" (creates a multi-touch moment from one voicemail)

CALL METRICS — WHAT TO TRACK:
  Dials per hour: Target 10-15 live dials per hour (not including admin time)
  Connect rate: 5-15% of dials reach a live person (varies by list quality)
  Connect-to-meeting rate: 10-20% of live connects book a meeting
    (Translated: For every 100 dials, expect 8-20 connects; 1-4 meetings booked)
  Meeting quality: What % of booked meetings actually happen? (Cancel rate)
    Target: >70% show rate on booked calls
```

## Output Format

```markdown
# Call Script — [Entity] | [Persona]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Approved by:** CEO

---

## Cold Call Script

**Part 1 — Identify and permission:**
"[First name], this is [Rep] from [Allevio]. Do you have 30 seconds?"

**Part 2 — Hook:**
"I work with Arizona employers who are tired of watching their health insurance costs go up
10-15% every year without being able to do anything about it."

**Part 3 — Credibility:**
"We're working with 40+ Arizona employer groups and our clients average $25-30 in PMPM savings."

**Part 4 — Ask:**
"Can I ask you two quick questions to see if there's a fit — do you have 2 minutes?"

**Part 5 — First objection handler:**
[See sales-objection-handler for entity-specific responses]

---

## Voicemail Script

"[First name] — this is [Rep] from [Allevio]. [Hook sentence in 10 words or less].
I'll send you a quick email with specifics. [Number] — [Rep] from [Allevio]. Have a good day."

---

## Call Metrics Target

| Metric | Target | Actual (monthly) |
|--------|--------|-----------------|
| Dials per day | [X] | [X] |
| Connect rate | [X]% | [X]% |
| Connect-to-meeting | [X]% | [X]% |
| Meeting show rate | >70% | [X]% |
```

## Output Contract
- The hook is the most important sentence in the script — the first sentence after "do you have 30 seconds?" determines whether the prospect continues the conversation or ends it; Dr. Lewis writes and tests the hook against real calls; a hook that references a specific, relatable pain ("tired of 10-15% rate increases every year") outperforms a generic positioning statement ("we help companies manage their healthcare") every time; the hook is refined quarterly based on connect-to-meeting conversion data
- A script is a starting point, not a straitjacket — the best callers use the script framework for the first 30 seconds and then adapt based on what the prospect says; a caller who reads the script verbatim sounds like a caller reading a script; Dr. Lewis trains reps to internalize the 5-part structure and then have a natural conversation; the script is practiced until it's natural, then it's released
- Measure the call, not just the outcome — a rep who makes 50 calls and books 5 meetings is measurably better than a rep who makes 20 calls and books 2 meetings (10% vs. 10% connect-to-meeting rate is the same, but 50 calls generates 2.5× more meetings); Dr. Lewis tracks dials; connect rate; and meeting booking rate separately; a rep with a low connect-to-meeting rate has a script or technique problem; a rep with a low dial count has an activity problem; they're different issues with different solutions
- HITL required: Dr. Lewis writes and approves the call script; CEO reviews the hook and credibility sections (they know what resonates in the market); script changes based on call performance require Dr. Lewis's approval; scripts are internal — never distributed outside the sales team; any competitive claim in the credibility section must be verified before the script is used (completion rates; savings amounts)

## System Dependencies
- **Reads from:** ICP profile (sales-ideal-customer-profile — who are we calling?); outbound sequences (sales-outbound-sequencer — the call is one touch in the sequence; the script should reference the email if the prospect received one); win/loss analysis (sales-win-loss-analyzer — what opening approaches have the highest connect-to-meeting rates?); competitive intelligence (sales-competitive-intel — what credibility claims can we make vs. competitors?); sales-kpi-dashboard (call metrics — connect rate; meeting rate; by rep)
- **Writes to:** Call script document (SharePoint/Sales/<Company>/Playbook/CallScript_[Date].pdf); sales playbook Chapter 3 (sales-sales-playbook — call script embedded in the prospecting section); rep training materials (call script is a Day 1 onboarding document); call metric tracking (sales-kpi-dashboard — connect rate; meeting booking rate measured monthly)
- **HITL Required:** Dr. Lewis writes and updates; CEO reviews hook and credibility sections; any credibility claim (savings amounts; completion rates) verified before use; script changes approved by Dr. Lewis before rep uses; Dr. Lewis does not approve scripts with unverified competitor claims or inflated performance statistics

## Test Cases
1. **Golden path:** Building the Allevio cold call script for HR Directors → Dr. Lewis writes the 5-part script; hook: "I work with Arizona employers who are tired of watching their health insurance costs go up 10-15% every year without being able to do anything about it"; credibility: "We're working with 40+ Arizona employer groups and our clients average $25-30/PMPM in savings vs. their prior carrier"; ask: "Can I ask you two quick questions to see if there's a fit — 2 minutes?"; CEO reviews; validates the hook ("That's exactly what they all say — that's the right hook"); script finalized; rep practices on 20 calls in first week; connect-to-meeting rate: 14% (strong); script approved as the team standard
2. **Edge case:** Rep's connect-to-meeting rate drops from 14% to 7% after 3 weeks of using the same script → Dr. Lewis investigates: "The script hasn't changed but the list quality changed. The rep is now calling a list of 2-year-old contacts who've been called by other vendors — the hook is less fresh to a burned list. Two adjustments: (1) Refresh the list (see sales-outbound-sequencer — use new ZoomInfo pulls); (2) Modify the hook slightly: 'I know you hear from a lot of vendors. I want to ask you one question before I pitch anything — when does your benefits contract come up for renewal?' This approach acknowledges they're getting called; asks a question instead of hooking with a claim; earns a different kind of response." Script adjusted; new list sourced; connect-to-meeting rate recovers to 11%
3. **Adversarial:** A rep adds their own "guaranteed savings" claim to the script without authorization — "We guarantee you'll save at least $20/PMPM or we'll refund your first month" → Dr. Lewis: "That guarantee is not authorized and doesn't reflect our contract terms. Allevio doesn't guarantee savings — we have strong historical performance, but guaranteeing $20/PMPM savings in a cold call creates an implied contractual commitment that our legal contracts don't include. This is a material misrepresentation risk. Remove this claim immediately. If this language has already been used on calls, I need to know — if a prospect holds us to that guarantee, we have a problem. Going forward: any change to the call script requires my approval before it's used." Script corrected; rep coached; no prospect has relied on the claim; matter resolved

## Audit Log
All call script versions retained by entity, persona, and date. CEO approval records retained. Credibility claim verification records retained. Connect-to-meeting metric records retained by script version (to evaluate which versions perform best). Any unauthorized script modifications documented.

## Deprecation
Retire when each portfolio company has a dedicated SDR team and SDR manager who owns the call script — with Dr. Lewis reviewing the hook and credibility sections annually and the CEO approving material claim changes.
