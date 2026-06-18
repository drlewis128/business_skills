---
name: sales-coaching-framework
description: "Coach and develop sales reps for MBL portfolio companies. Use when the user says 'sales coaching', 'coach this rep', 'rep performance', 'sales rep struggling', 'rep underperforming', 'how to develop a rep', 'rep development', 'coaching session', 'sales performance improvement', 'pip', 'performance improvement plan', 'sales training', 'develop the team', 'rep feedback', 'sales feedback session', 'rep coaching', '1:1 with rep', 'sales 1-on-1', 'call review', 'deal review', 'rep calibration', 'sales skills gap', 'how to improve win rate', or 'sales team development'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--rep <name>] [--focus <pipeline|discovery|closing|activity|attitude|specific-skill>] [--action <coach|assess|pip|review>]"
---

# Sales Coaching Framework

Coach and develop sales reps for MBL portfolio companies — identifying performance gaps, delivering specific and actionable feedback, and building reps into more effective sellers. Sales coaching is the highest-ROI management activity available to a sales leader: a 1% improvement in win rate from coaching a single rep produces significantly more value than the same time spent on administrative tasks. Dr. Lewis coaches reps from specific behavioral observations, not from opinions about character.

## When to Use
- Weekly or bi-weekly 1:1 with a rep (pipeline review and coaching rolled together)
- After a specific call or deal to debrief (deal review; call review)
- When a rep's metrics fall below target for 2+ consecutive months
- Before placing a rep on a performance improvement plan
- When a new rep completes onboarding (first 90-day assessment)

## Sales Coaching Framework

```
COACHING PRINCIPLES:
  Behavior-based, not character-based:
    NOT: "You're not hungry enough." (character judgment — rep cannot act on it)
    YES: "In your last 5 discovery calls, you moved to the proposal without confirming
         the decision-maker. Here's what to do differently..." (behavior — rep can act on it)
  
  Observation before conclusion:
    Coach from what you observed (call recording; CRM notes; pipeline data)
    Not from what you assume (don't guess; look at the data first)
  
  Specific + actionable:
    Every coaching conversation ends with 1-2 specific things the rep will do differently
    Vague coaching ("be more confident!") produces no behavioral change
  
  Positive feedback counts too:
    When a rep does something well that you want to see repeated, call it out specifically
    "In that discovery call, you asked about the decision process before jumping to the pain
     — that was the right sequence and it opened the CFO conversation. Do that every time."

COACHING CADENCE:
  Weekly: 30-minute pipeline review (embedded coaching — discuss specific deals)
  Monthly: 45-minute 1:1 (broader performance review; skill development focus)
  Quarterly: 60-minute formal review (YTD attainment; skills assessment; development plan)
  Ad hoc: After a significant deal win or loss (debrief within 48 hours)
  
PERFORMANCE ASSESSMENT — 5 SKILL DIMENSIONS:
  1. Activity and Pipeline Management:
     Are they generating enough top-of-funnel? (meetings set; outreach volume)
     Is their pipeline accurate and current? (CRM hygiene; stale deals)
     Are they managing their time effectively? (Priority A leads first; playbook adherence)
     Measure against: Weekly outreach targets; CRM hygiene score; pipeline coverage ratio
     
  2. Discovery Quality:
     Are they documenting MEDDPICCC fully?
     Are they uncovering the real economic buyer?
     Are they asking the pain questions before the solution questions?
     Measure against: Discovery debrief quality in CRM; qualification decisions (are they disqualifying non-ICP deals?)
     
  3. Proposal and Presentation Quality:
     Are proposals tailored to the specific discovery findings?
     Are they following the 6-section proposal structure?
     Are they walking through the proposal with the prospect or just emailing it?
     Measure against: Proposal-to-close rate; average time in proposal stage
     
  4. Objection Handling and Closing:
     Are they exploring before responding to objections (Acknowledge → Explore → Respond → Confirm)?
     Are they trial-closing before asking for the contract?
     Are they getting specific next steps with dates, or vague "follow up next week" outcomes?
     Measure against: Win rate; average deal cycle length; objection pattern in lost deals
     
  5. Account Management and Retention:
     Are they logging QBR dates and renewal conversations?
     Are they catching at-risk signals before they become churn?
     Are they introducing expansion conversations at the right time (after a positive QBR)?
     Measure against: GRR; renewal win rate; expansion pipeline
     
PERFORMANCE IMPROVEMENT PLAN (PIP):
  A PIP is not a firing formality — it is a structured attempt to save a rep who is underperforming
  Pre-PIP steps (required before formal PIP):
    Step 1: Two months of documented coaching with specific behavioral targets
    Step 2: CEO awareness ("I'm coaching [Rep] on [specific issues] and monitoring closely")
    Step 3: If no improvement after 2 months: formal PIP discussion
  PIP structure:
    Duration: 30-60 days
    Specific targets: Measurable (not "improve your win rate" but "close 2 deals in 30 days")
    Weekly check-ins: Dr. Lewis + CEO + rep
    Outcome: Improvement leads to continued employment; failure leads to separation discussion
    CEO must approve before a PIP is initiated; HR must be informed
    Matt Mathison informed if the rep's departure would materially affect revenue
```

## Output Format

```markdown
# Coaching Session — [Rep Name] | [Entity]
**Date:** [Date] | **Type:** Weekly 1:1 / Monthly / Quarterly / Deal debrief
**Conducted by:** Dr. Lewis | **CEO cc'd:** Yes/No

---

## Performance Snapshot

| Metric | Target | Actual (MTD/QTD) | Status |
|--------|--------|-----------------|--------|
| Pipeline coverage | >3× quota | [X]× | 🟢 / 🟡 / 🔴 |
| Win rate | >30% | [X]% | 🟢 / 🟡 / 🔴 |
| Discovery calls debriefed | 100% | [X]% | 🟢 / 🟡 / 🔴 |
| CRM activity currency | >90% | [X]% | 🟢 / 🟡 / 🔴 |

---

## Behavioral Observations

**What I observed:** [Specific — based on CRM data; call notes; deal outcomes]
**What worked well:** [Name 1-2 specific things; be precise]
**What to do differently:** [Name 1-2 specific changes; be actionable]

---

## Coaching Agreements (what the rep commits to doing differently)

1. [Specific action: e.g., "Ask 'Who else is involved in this decision?' in every discovery call before moving to pain questions — starting this week"]
2. [Specific action]

---

## Follow-up: Review at next session

[ ] Did the rep implement the agreed changes? (Dr. Lewis checks next session)
```

## Output Contract
- Coach the behavior, not the person — a rep who hears "you're not hungry enough" cannot change "hunger"; a rep who hears "in your last 5 calls, you didn't ask for the next step before ending the call — here's the specific question to add" can change their call behavior; Dr. Lewis writes coaching notes and delivers feedback in behavioral terms; generalizations about character, attitude, or motivation are not coaching
- The best coaching observation is a specific deal — the most effective coaching conversations use a specific deal: "Let's look at [Prospect A] — you've been in proposal stage for 24 days. Walk me through where this is"; the rep's answer reveals the skill gap better than any survey; Dr. Lewis uses the pipeline review to surface deal-specific coaching opportunities in every 1:1
- Document everything — a rep who is eventually placed on a PIP or separated needs documented coaching history; Dr. Lewis logs every coaching conversation with the specific observations and the agreements made; if a rep says "no one ever told me this," the coaching log shows otherwise; this protects Dr. Lewis and the company in an employment dispute; coaching logs are filed in SharePoint and accessible to HR and the CEO
- HITL required: Dr. Lewis conducts coaching sessions; CEO informed of performance concerns after 2 months of documented coaching; CEO must approve a PIP before it is initiated; Matt Mathison informed if a rep's departure would materially affect revenue projections; HR (hr-employment-agreement-manager) involved in any PIP or separation; Dr. Lewis does not initiate a separation without CEO and HR involvement; coaching is not disciplinary action — it is skill development; escalation to disciplinary action requires CEO decision

## System Dependencies
- **Reads from:** CRM activity log (GoHighLevel — is the rep logging activities? are their deals current?); sales-kpi-dashboard (rep-level attainment; win rate; pipeline coverage); discovery debriefs (CRM — is MEDDPICCC being documented?); CRM hygiene audit (sales-crm-hygiene-manager — is the rep maintaining data standards?); sales-win-loss-analyzer (what patterns appear in the rep's closed won and closed lost deals?); sales-pipeline-manager (is the rep's pipeline accurate? stale deals?); call recordings (if available — GoHighLevel or Zoom)
- **Writes to:** Coaching log (SharePoint/HR/<Company>/Coaching/[Rep]_CoachingLog.xlsx — all sessions documented with observations and agreements); CEO performance update (monthly or as needed — "I've been coaching [Rep] on [X]; here's where we are"); PIP document (if applicable — SharePoint/HR/<Company>/PIPs/[Rep]_PIP_[Date].pdf); separation documentation (in collaboration with HR — if PIP fails); sales-kpi-dashboard (rep performance trends tracked over time for coaching context)
- **HITL Required:** Dr. Lewis conducts coaching; CEO informed of concerns and approves PIPs; HR involved in PIPs and separations; Matt Mathison informed before any rep departure that would affect revenue; Dr. Lewis does not separate a rep without CEO and HR approval; Dr. Lewis does not place a rep on a PIP without 2 months of documented coaching first; coaching sessions are documented but not shared with the rep's team — they are confidential

## Test Cases
1. **Golden path:** Monthly coaching session with the Allevio rep who has a win rate of 22% (target: 30%) → Dr. Lewis pulls the data: 9 deals closed in 90 days; 2 won; 7 lost; reviews the 7 lost deals in CRM: 4 of 7 have the loss reason "Chose status quo" — the rep is proposing too early before establishing urgency; in the coaching session: "I looked at the 4 deals you lost to status quo. In your discovery notes, you documented the pain but I don't see a 'Compelling Event' in any of the MEDDPICCC debriefs. Without a compelling event (a specific reason they need to decide now), status quo always wins because doing nothing is always the lowest-risk option. Here's what to add to every discovery call: 'What happens if you don't change your benefits by January 1?' That question surfaces the cost of inaction. Can you commit to asking it in every discovery call this month?" Rep commits; follow-up session scheduled for next month; win rate review at 30 days
2. **Edge case:** A Column6 rep is consistently hitting activity targets (50 outbound contacts per week) but has a 12% win rate (target: 25%) — they're working hard but not effectively → Dr. Lewis analysis: "Activity is fine. The issue is somewhere in the quality of the conversations. Let me review: Their proposal-to-opportunity ratio is 40% (they're building proposals for almost everything that gets through discovery — this means they're not disqualifying effectively). Their average deal size is also $32K (below the $50K minimum for a full proposal — they're spending time on below-threshold deals). Coaching agenda: (1) Disqualification practice — in the next 10 discovery calls, they must make an explicit qualification/disqualification decision before building any proposal; (2) Budget qualification — before scheduling a proposal presentation, confirm the campaign budget is ≥$50K; deals below that get a brief email overview, not a full proposal presentation." Rep recalibrated; proposal efficiency improves; win rate moves to 19% (improving; coaching continues)
3. **Adversarial:** A rep claims that the 30% win rate target is "unrealistic for our market" and that Dr. Lewis's coaching is "micromanaging" → Dr. Lewis responds to the CEO: "The rep has pushed back on coaching. Two facts: (1) The 30% win rate is based on our best quarter's actual performance — it is achievable because we've achieved it; (2) If the rep believes the market can't support 30%, I want to understand why. Either (a) there's a real market condition change I haven't seen, or (b) the rep is rationalizing underperformance. I recommend a direct conversation: the CEO and I will both be in the next coaching session. I'll present the data; the rep can make their case; we'll determine together whether the target needs to change or whether the coaching approach needs to change. This shouldn't be a long conversation." CEO joins the next session; rep's market argument doesn't hold up to data review; coaching continues with the CEO's direct endorsement; rep's attitude improves

## Audit Log
All coaching session logs retained by rep, entity, and date. Performance metric snapshots retained with each session. Coaching agreements retained (what the rep committed to doing differently). Escalation records retained (when CEO was informed; why). PIP records retained (initiation; weekly check-ins; outcome). Any separation documentation retained in collaboration with HR.

## Deprecation
Retire when each portfolio company has a VP of Sales who owns the coaching program — with Dr. Lewis reviewing the coaching cadence quarterly and the CEO receiving monthly performance summaries for all reps.
