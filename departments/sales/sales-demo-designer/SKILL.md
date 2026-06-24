---
name: sales-demo-designer
description: "Design and customize sales demos for MBL portfolio company sales teams. Use when the user says 'demo design', 'design a demo', 'demo flow', 'demo structure', 'demo script', 'demo run', 'build a demo', 'create a demo', 'customize a demo', 'demo prep', 'prepare a demo', 'demo preparation', 'demo walkthrough', 'product demo', 'solution demo', 'capabilities demo', 'overview demo', 'client demo', 'prospect demo', 'demo for client', 'demo for prospect', 'demo for employer', 'demo for agency', 'demo for acquisition', 'Allevio demo', 'Column6 demo', 'HIVE demo', 'benefits platform demo', 'CTV demo', 'advertising demo', 'platform demo', 'demo environment', 'demo data', 'demo account', 'demo environment setup', 'demo guide', 'demo playbook', 'demo best practices', 'demo coaching', 'demo practice', 'run through demo', 'dry run', 'demo run through', 'customize demo for client', 'tailor demo', 'personalize demo', or 'demo talking points'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--audience <cfo|hr|buyer|vp|seller>] [--duration <15|30|45>]"
---

# Sales Demo Designer

Design and customize sales demos for MBL portfolio company sales teams — producing a structured, personalized demo flow for each prospect that leads with their specific pain and shows the solution in their context. A demo is not a tour of features — it is a story about the prospect's problem and how it gets solved. The rep who runs a feature walkthrough loses to the rep who shows the CFO their claims trend solved.

## When to Use
- Preparing a demo for a prospect meeting
- Designing the demo flow for a specific entity and audience
- Coaching a rep on demo structure and technique
- Creating a repeatable demo guide for a new entity

## Demo Design Framework

```
DEMO DESIGN PRINCIPLES:
  1. Lead with their pain (from discovery notes; in their words)
  2. Show, don't tell — every feature in the demo is connected to a specific pain they mentioned
  3. Confirm CFO engagement early — if the CFO is in the room, qualify their involvement; if not, identify the path
  4. Leave time for the prospect to talk — 60% demo, 40% conversation
  5. End with a next step — demo without a next step is a presentation, not a sales call
  
DEMO DATA REQUIREMENTS:
  Allevio:
    Demo environment: uses synthetic/aggregate data (fictional employer; fictional employee population)
    No real employee data in demo — ever; no real employer health data
    HIPAA: demo environment must never contain PHI; synthetic data approved by entity CEO
    CFO-facing metrics: show aggregate cost trend reduction; enrollment rate; utilization rate
    HR-facing metrics: show access convenience; time-to-appointment; employee satisfaction proxy
    
  Column6:
    Demo environment: current campaign performance data (real; but not client-specific to other agencies)
    Client confidentiality: demo never references another agency's campaign data by name or client
    Performance data: use Column6's aggregate or anonymized benchmark data (entity CEO approves)
    Show: IVT rate; delivery guarantee; viewability dashboard; campaign pacing
    
  HIVE:
    No formal software demo — HIVE demo = the LOI model walkthrough + DD process overview
    Seller meeting: Matt Mathison or Dr. Lewis walks seller through the acquisition process
    Materials: deal sheet; prior acquisition examples (anonymized); Covercy LP overview if LP context
    
ALLEVIO DEMO FLOW (30 minutes standard):
  
  Minutes 0-3: Agenda + Pain confirmation
    "Before I start — you mentioned [exact pain words from discovery]. I want to make sure everything we show today is directly relevant to that. Does that still represent your biggest challenge heading into this renewal?"
    Confirm who's in the room; confirm CFO engagement plan if CFO is not present
    
  Minutes 3-12: The problem (their situation, not Allevio's pitch)
    Show: industry benchmark for claims trend (employer's industry)
    Show: access gap data (average time to PCP appointment nationally vs. in their area)
    Show: total cost of delayed care (urgent care vs. primary care cost differential)
    Rep: "This is the environment most of our employer partners are operating in. Does this reflect what you're seeing?"
    
  Minutes 12-22: The solution (Allevio)
    Show: enrollment experience (employee perspective; same-day appointment availability)
    Show: care delivery (primary care; chronic condition management; navigation)
    Show: employer dashboard (aggregate data — claims trend; enrollment rate; utilization; HIPAA-compliant)
    Rep: "This is what your HR team would see. What's most important for you to track?"
    Connect every feature to a pain they mentioned in discovery
    
  Minutes 22-27: ROI illustration
    Show: ROI model output (Conservative scenario using their employee count and industry benchmark trend)
    Frame: "Based on your employee count and the industry average claims trend, conservative modeling shows..."
    HIPAA: never use their actual claims data in the model unless they've shared it as aggregate employer-level data
    CFO consideration: "When we get to the CFO conversation — this is the model we walk through with them"
    
  Minutes 27-30: Next step
    "Does this address the challenge you're working on?"
    Confirm: is CFO meeting warranted? Who needs to be in the room?
    Propose specific next step: CFO briefing; proposal review; reference call with a similar employer
    Get calendar confirmation before leaving the call
    
COLUMN6 DEMO FLOW (30 minutes standard):
  
  Minutes 0-3: Agenda + Objective confirmation
    "You mentioned [pain from discovery — IVT; delivery; efficiency]. Is that still the core issue you want us to address today?"
    
  Minutes 3-8: The problem (their performance gap)
    Show: open exchange IVT benchmarks (industry data; not from any client's campaign)
    Show: delivery "best-effort" vs. guarantee comparison (conceptual illustration)
    Rep: "This is why agencies are losing confidence in some CTV supply — does this match what you've been experiencing?"
    
  Minutes 8-22: Column6 solution
    Show: IVT measurement dashboard (Column6's own campaign data; no client-specific data)
    Show: delivery guarantee mechanics (how 100% delivery is tracked and made good)
    Show: viewability measurement (MRC-accredited; campaign-level view)
    Show: campaign reporting (pacing; performance; end-of-campaign summary)
    Connect each feature to the pain they mentioned
    
  Minutes 22-27: Test IO proposal
    Introduce the concept of a test IO ($25K minimum)
    "The best way to see the difference is to run a campaign alongside your current supply — compare IVT, delivery, and viewability side by side"
    Propose: test IO flight dates; budget; targeting
    
  Minutes 27-30: Next step
    Propose IO draft or proposal follow-up within 24 hours
    Get agency media buyer and VP media aligned on next step
    
DEMO QUALITY CHECKLIST:
  ☐ Demo data is synthetic/aggregate (Allevio); anonymized (Column6); no PHI; no client-specific data
  ☐ Demo opens with prospect's specific pain (from their discovery words)
  ☐ Every feature shown connects to a pain they mentioned
  ☐ ROI illustration uses conservative assumptions (entity CEO confirms benchmark data)
  ☐ Demo environment is current and accurate (entity CEO confirms before demo)
  ☐ CFO engagement plan confirmed (Allevio)
  ☐ Next step proposed and confirmed by end of demo
  ☐ Demo duration managed (don't run over; leave time for conversation)
  ☐ Confidentiality: no other client/employer/agency data referenced by name
```

## Output Format

```markdown
# Demo Guide — [Prospect Name] | [Entity] | [Date]
**AE:** [Name] | **Duration:** [N] min | **Audience:** [Titles in the room]

---

## Pain Opening (use their exact words)
"[Exact quote from discovery notes — the pain statement you'll open with]"

---

## Demo Agenda
| Section | Minutes | What to show | Pain connection |
|---------|---------|-------------|-----------------|
| Pain confirmation | 0-3 | Industry benchmark | [Their pain] |
| Problem context | 3-12 | [Relevant data] | [Their pain] |
| Solution | 12-22 | [Feature 1, 2, 3] | [Pain 1, 2, 3] |
| ROI illustration | 22-27 | ROI model (conservative) | [CFO pain] |
| Next step | 27-30 | — | — |

---

## Next Step Target
[What you'll propose at the end of the demo; specific and calendar-ready]

---

## Demo Data Check
- [ ] Synthetic/aggregate data confirmed (no PHI; no client-specific data)
- [ ] Demo environment current and accurate (entity CEO confirmed)
- [ ] ROI benchmark data approved
```

## Output Contract
- The demo is personalized to the prospect's stated pain before the meeting — a rep who shows a generic demo is showing the prospect that they didn't listen in discovery; a rep who opens with the prospect's exact words from the discovery call is showing them that every minute of the call was heard; Dr. Lewis coaches reps to open every demo with: "You told us [their words]. I want to make sure everything we show today is directly relevant to that" — this sets the frame for the entire 30 minutes; all features shown in the demo must be linked back to something the prospect mentioned; if a feature isn't connected to their pain, it doesn't go in the demo
- Demo data discipline is non-negotiable — Allevio: demo environment uses synthetic/aggregate data only; no real employer data; no PHI; the demo never shows what looks like real employee-level health information even if it is "just an example"; entity CEO confirms the demo environment before the first use and after any update to the demo script or data; Column6: no other agency's client campaigns referenced by name or results; demo uses Column6's own aggregate or anonymized performance data approved by entity CEO; if an AE is ever uncertain whether data in the demo is appropriate, they ask entity CEO before the demo, not after the prospect asks "is that real campaign data?"
- HITL required: Allevio demo environment → entity CEO confirms synthetic/aggregate data before any demo use; HIPAA check on any ROI data — employer-level only; no individual employee data even in illustrations; Column6 demo → entity CEO confirms performance data is current and anonymized; both entities → entity CEO briefed on any demo that involves a >$100K prospect or a strategic account; demo next step → AE confirms CFO engagement path before leaving the meeting (Allevio); entity CEO notified if demo results in same-day LOI request (HIVE context); demo that contains client-specific data (error) → AE notifies entity CEO + Dr. Lewis immediately

## System Dependencies
- **Reads from:** Discovery notes (GHL — pain statements; audience; objections; priorities); demo environment (entity-specific — synthetic/aggregate data approved by entity CEO); ROI model (sales-allevio-roi-calculator; entity CEO-approved benchmarks); Column6 performance data (entity CEO confirmed; anonymized); IVT benchmarks (Column6 ops team); HIVE deal sheet (Matt Mathison review)
- **Writes to:** GHL (demo completed; date; attendees; next step; outcome notes); demo guide document (SharePoint → [Entity] → Sales → Demos → [Prospect] → [Date]); entity CEO notification (demos with >$100K prospects); next step calendar invite or follow-up email; pipeline stage advance (post-demo)
- **HITL Required:** Allevio demo environment → entity CEO confirms synthetic data; HIPAA: no PHI; no individual employee data in demo or ROI illustration; Column6 demo → entity CEO confirms performance data is current and anonymized; >$100K prospect → entity CEO briefed; demo environment error (real data found) → AE notifies entity CEO + Dr. Lewis immediately; demo next step → CFO engagement plan confirmed (Allevio)

## Test Cases
1. **Golden path:** Allevio demo for 200-employee self-insured employer. Discovery: HR Director said "Our claims have been up 12% two years in a row and the CFO is not happy." Demo guide: Open — "You mentioned your claims have gone up 12% for two years and your CFO is watching this closely. Everything we show today is about solving that." Section 2: industry benchmark shows 10-14% trend is typical; Allevio reduces it to 4-6%. Section 3: Show synthetic employer dashboard (aggregate claims trend before/after Allevio; enrollment rate; access improvement). Section 4: ROI model — 200 employees; 12% trend; Conservative 30% reduction → $180K savings Year 1. CFO confirmation: "Based on what we've seen, does it make sense to schedule time with your CFO to walk through the financial model? I can have a 1-page summary ready for that conversation." Outcome: CFO meeting scheduled for 2 weeks out. Demo guide filed in SharePoint. GHL updated: Stage 5.
2. **Edge case:** Demo request for Allevio employer who hasn't had a full discovery call ("Can you just show me what Allevio does?"). Pre-demo discovery mini-call: AE calls 10 minutes before the demo: "Before we get started — I want to make sure we show you what's relevant. Can you tell me what's driving your interest in looking at benefits solutions right now? And when is your benefits renewal?" If employer shares pain: proceed with demo customized to their words. If no pain identified: "It sounds like you're in a good benefits situation right now — let me show you a high-level overview and focus on the parts that might be relevant when you're next evaluating." Proceed with a 15-minute overview demo. Don't spend 30 minutes on a prospect with no identified pain.
3. **Adversarial:** AE asks to use a real employer's claims data they received (unsolicited; employer shared their Aetna report during discovery) in the ROI model for the demo → Dr. Lewis: "Do not use that data in the demo. The employer shared their claims report during a pre-contract discovery call — that is employer health data that contains or is derived from individual employee health information. Using it in a demo environment violates HIPAA's minimum-necessary standard and your organization's obligation as a business associate candidate. Delete the file; do not include it in any demo or proposal. For the ROI model, use the industry benchmark (employer's industry; employee count; 12% trend is what they told you verbally — that's appropriate as their stated situation). Log this as a near-miss. Entity CEO notified."

## Audit Log
Demo guide records (all demos; prospect; entity; date; audience; next step; outcome; SharePoint). Demo environment validation records (entity CEO confirmed; date; synthetic/aggregate data; current performance data). PHI near-miss records in demo (data error; Dr. Lewis + entity CEO notification; resolution). Demo outcome records (next step achieved; pipeline advance; GHL). >$100K prospect demo records (entity CEO briefed; date). Column6 performance data validation records (entity CEO confirmed; anonymized; date).

## Deprecation
Demo flow reviewed when entity's product or value proposition changes. Demo data reviewed when entity CEO updates approved benchmark data. HIPAA guidance in demo reviewed when HHS guidance changes. Column6 performance benchmarks in demo reviewed when ops team provides updated data. Demo guide reviewed semi-annually for accuracy and alignment with current ICP and pain catalog.
