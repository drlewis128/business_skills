---
name: sales-allevio-demo-guide
description: "Run the Allevio employer demo for prospects. Use when the user says 'Allevio demo', 'demo Allevio', 'run the demo', 'demo flow', 'demo script', 'demo agenda', 'demo preparation', 'demo prep', 'demo meeting', 'demo call', 'product demo', 'how does Allevio work', 'show me how Allevio works', 'walk through Allevio', 'Allevio walkthrough', 'employer demo', 'HR Director demo', 'CFO demo', 'demo for the CFO', 'benefits demo', 'healthcare demo', 'primary care demo', 'MSO demo', 'demo employer', 'Allevio presentation', 'Allevio deck', 'demo deck', 'product tour', 'platform tour', 'employee experience demo', 'employer dashboard demo', 'Allevio dashboard', 'Allevio portal', 'demo questions', 'demo objections', 'post-demo follow-up', 'demo follow-up', or 'demo to proposal'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--audience <hr-director|cfo|both>] [--duration <20|30|45>] [--stage <prep|run|follow-up>]"
---

# Sales Allevio Demo Guide

Run the Allevio employer demo for prospects — preparing for, executing, and following up on demos that convert employer prospects into proposal conversations. The Allevio demo is not a product tour; it is a tailored presentation of how Allevio solves the specific problems the employer identified in discovery. A demo that starts with "let me show you everything Allevio can do" loses attention by slide 3. A demo that starts with "here's the problem you described — and here's exactly how Allevio solves it" closes for a proposal.

## When to Use
- Preparing for an Allevio employer demo
- Running a live Allevio demo (with HR Director; CFO; or both)
- Writing the post-demo follow-up email
- Coaching a rep on demo effectiveness

## Allevio Demo Framework

```
DEMO PREREQUISITES (must be true before scheduling demo):
  Discovery complete: rep knows the employer's pain (claims trend; cost; access problem)
  Champion identified: HR Director is confirmed champion (or CFO if they're driving cost reduction)
  Economic buyer awareness: rep knows whether CFO is engaged or if HR Director will carry to CFO
  Demo attendees confirmed: HR Director attendance minimum; CFO attendance strongly preferred for demos where ACV >$80K
  
DEMO SETUP:
  Length: 25-30 minutes (not 45; not 60; employers are busy; respect their time)
  Platform: Zoom or Teams (confirm in invite); share screen with AE's Allevio demo environment
  Pre-demo prep: populate demo with employer-relevant data (industry; approximate employee count; claims trend if known)
  Day-before confirmation: email HR Director day before; include Zoom link; 1-line agenda reminder
  
DEMO FLOW (25 minutes):
  Section 1 — Problem restatement (3-4 minutes):
    Start with their words: "In our last conversation you mentioned [exact pain from discovery notes]"
    Do NOT start with company overview or history
    Ask: "Before I show you anything, is that still the primary concern? Has anything changed?"
    Purpose: re-establish relevance; show you listened; catch anything that's changed
    
  Section 2 — How Allevio works (5-6 minutes):
    2-3 slides max; clinical model overview
    Employer perspective: how they enroll, what they pay, how employees access care
    Employee perspective: what the employee experience looks like (scheduling; same-day access; continuity)
    Do NOT go deep into clinical operations; that's for implementation
    
  Section 3 — Employer dashboard (4-5 minutes):
    Show the employer-facing dashboard: aggregate utilization; enrollment; access metrics
    HIPAA: demo dashboard uses synthetic aggregate data — never real individual employees
    Call out: "As the employer, you see aggregate data only — utilization rates, access patterns, cost trend tracking"
    Ask: "Is this the kind of reporting your CFO would find useful?"
    
  Section 4 — ROI model (5-6 minutes):
    Show the ROI model populated with their numbers (from discovery)
    Conservative case first (see sales-allevio-roi-calculator)
    "At [N] enrolled employees and $[X] PMPM, here's what the cost trend looks like in Year 1 and Year 2"
    Ask: "Does this math track with what your CFO is thinking about?"
    
  Section 5 — Employee experience (2-3 minutes):
    Brief: what does it look like for an employee to enroll and book their first appointment?
    Focus: simplicity of access (not clinical detail; not individual cases; no PHI)
    Frame: "The value to the employer is aggregate — but the employee experience is what drives utilization"
    
  Section 6 — Q&A and next step (4-5 minutes):
    Open Q&A
    Close the demo: "Based on what you've seen, does this feel like a direction worth exploring further?"
    If yes: "Let's schedule a proposal review — I'll have a formal proposal ready by [date]. Who should be in that meeting?"
    If CFO wasn't in the demo: "Would it make sense to include [CFO name] in the proposal review so we can address any financial questions directly?"
    
DEMO HIPAA REQUIREMENTS:
  Demo environment: synthetic aggregate data ONLY — never real employer or employee data
  Do NOT use: real employee names; real diagnoses; real claims history; individual access events
  Employer ROI model: use employer's own estimates from discovery (headcount; cost trend) — not their actual claims data
  Demo deck: no individual case studies with named employees; aggregate employer outcomes only
  
DEMO DOs AND DON'Ts:
  DO: start with their pain; use their numbers; ask questions throughout; confirm CFO engagement post-demo
  DO NOT: lead with company slides; show everything; run long; use jargon like "clinical integration protocol"
  DO NOT: share PHI or imply you know individual employee health status
  
POST-DEMO FOLLOW-UP EMAIL (send within 2 hours):
  Subject: "Allevio | Next steps for [Company]"
  Content:
    Confirm what you showed (3 bullet points — problem addressed; solution shown; ROI model result)
    Confirm next step (proposal review date and attendees)
    Attach: ROI model summary (employer-aggregate; entity CEO reviewed)
    CTA: "Confirm we're good for [date] — let me know if [CFO name] can join"
```

## Output Format

```markdown
# Demo Prep Sheet — [Employer Name] | [Date]
**Audience:** [HR Director / CFO / Both] | **ACV:** $[X] | **Demo length:** 30 min

---

## Discovery Recap (Use in Section 1)
- **Pain stated by prospect (exact words):** [Quote from discovery notes]
- **Claims trend:** [X%/year or "unknown — use industry benchmark"]
- **Employee count:** [N] | **Enrolled estimate:** [~75% = N]
- **Renewal date:** [Date] | **Timeline pressure:** [Low/Medium/High]

---

## Demo Customization
| Section | Customization for this employer |
|---------|-------------------------------|
| Problem restatement | [Specific pain in their words] |
| Employer dashboard | [Which metrics to highlight] |
| ROI model | [Their numbers — PMPM $X; enrolled N; trend X%] |

---

## Post-Demo Goal
- Confirm CFO engagement: [Already engaged / Need introduction / Unknown]
- Next step target: [Proposal review date]
- Who should attend proposal: [Names + titles]

---

## HIPAA Checklist
- [ ] Demo uses synthetic aggregate data only
- [ ] No real employee names or individual health data in demo
- [ ] ROI model uses discovery-sourced estimates (not actual claims)
```

## Output Contract
- The demo is customized to their pain, not to Allevio's feature list — a rep who builds a demo prep sheet using discovery notes and opens with the exact problem the employer described is demonstrating that they listened and that Allevio was designed with this employer's problem in mind; a rep who opens with "Let me tell you about Allevio — we were founded in [year]..." is wasting the first 5 minutes on information the employer didn't ask for; Dr. Lewis coaches reps to have the demo prep sheet ready 24 hours before the demo; the prep sheet contains the exact quote from discovery notes that the rep will use in Section 1 — not a paraphrase, the actual words the employer used
- CFO engagement is confirmed or planned before the demo ends — a demo that closes with "let me know if you have questions" and no confirmed next step is a demonstration, not a sales meeting; the rep closes every Allevio demo by naming the next step (proposal review), proposing a date, and asking whether the CFO should attend; if the CFO wasn't in the demo, the answer is almost always yes; if the HR Director says "I'll talk to the CFO" without naming a date or confirming the CFO's involvement, the rep follows up: "Would it make sense for me to send the CFO a brief email with the ROI summary so he's not walking into the proposal meeting cold? Happy to draft something for you to forward"; this increases CFO attendance at proposal meetings from "whenever the champion gets around to it" to a specific date
- HITL required: demo uses synthetic aggregate data → ops team confirms demo environment is clean before rep uses it; ROI model included in post-demo follow-up → entity CEO or Dr. Lewis reviews before sending; CFO not in demo but attending proposal → entity CEO may join proposal meeting for employers >$100K ACV; demo deck updated or customized → entity CEO reviews new content for HIPAA compliance; any new Allevio aggregate proof points added to demo → entity CEO confirms data source before using; demo recording (if any) → HIPAA review before sharing or storing

## System Dependencies
- **Reads from:** Discovery notes (GHL — employer pain; employee count; claims trend; renewal date; champion/CFO identity); Allevio demo environment (synthetic aggregate data — ops team maintains); ROI model (sales-allevio-roi-calculator — populated with discovery data); employer calendar (scheduling through champion); competitive intelligence (sales-competitive-playbook — for Q&A prep)
- **Writes to:** Demo prep sheet (SharePoint → Allevio → Sales → Demo-Prep → [Employer] → [Date]); GHL (demo scheduled; demo completed; attendees; next step; CFO engagement status; post-demo follow-up sent); post-demo follow-up email (employer → within 2 hours); entity CEO demo notification (ACV >$100K or CFO attending)
- **HITL Required:** Demo environment → ops confirms clean synthetic data; ROI model in follow-up → entity CEO or Dr. Lewis reviews; CFO attending proposal → entity CEO may join (>$100K ACV); new proof points → entity CEO confirms data source; demo deck changes → entity CEO HIPAA review; demo recording → HIPAA review before sharing

## Test Cases
1. **Golden path:** 210-employee Scottsdale manufacturing employer. Demo attendees: HR Director (Amanda) + CFO (Bill). Demo prep: pain = "claims trend 14%/year; CFO gave HR 2 renewal cycles to address it"; ROI model populated: 157 enrolled × $72 PMPM = $135K/year; Conservative case shows break-even 17 months. Demo runs 27 minutes. Section 1: "Amanda, last time you said claims have been running up 14% annually and Bill has asked for a solution in the next 2 renewals — is that still the primary concern?" Both nod. Section 3: CFO asks about dashboard export capability → AE: "Yes, monthly aggregate employer report exports to Excel or PDF." Section 4: CFO: "The Conservative case shows 17-month break-even — what drives the optimistic number?" AE walks through Base and Optimistic scenarios. Post-demo (Day of): "Both attendees are engaged; proposal review scheduled for next week; CFO asked 2 substantive financial questions — deal is advancing." GHL updated. Post-demo email sent within 2 hours.
2. **Edge case:** Rep forgets to populate the ROI model with employer-specific numbers before the demo — uses generic placeholders → Dr. Lewis coaching: "Stop the demo before Section 4 if possible: 'Let me pull up our model with your specific numbers — I want to make sure what I show you reflects your situation, not a generic example.' If you're already in Section 4 with placeholders: acknowledge it directly. 'This is built on industry benchmarks — I have your actual claims trend from our last call and I'd like to rebuild this with your numbers before our proposal meeting. That gives you a more accurate picture.' Post-demo: rebuild the model with their actual numbers; entity CEO reviews before it's included in the post-demo follow-up. Never send an ROI model with placeholder data to a CFO — it signals you didn't do the work."
3. **Adversarial:** CFO asks during the demo: "Can you show me a specific case study — I want to see data from a comparable employer, including the specific diagnoses and utilization patterns that drove the cost savings?" → Dr. Lewis immediate coaching: "That request, as stated, requires individual employee health data — that's PHI under HIPAA, and it's never shared in sales conversations, demos, or proposals. The appropriate response: 'What I can show you is employer-aggregate data from comparable Arizona manufacturers — without individual employee information. Across our employer portfolio, the average Year 1 claims trend reduction is [X%] with the specific breakdown between primary care access improvement and downstream specialist referral reduction. Would that aggregate comparison be useful?' If the CFO insists on individual data, the answer is: 'That level of clinical detail is PHI — we protect that data on behalf of our enrolled employees; I'm not able to share it in a sales context. I'm glad to connect you with our VP of Clinical Operations who can describe the care model in more clinical terms without sharing individual data.'"

## Audit Log
Demo prep sheet records (all demos; employer; date; attendees; prep sheet; SharePoint). Demo outcome records (demo completed; next step; CFO engagement status; GHL). Post-demo follow-up email records (sent within 2 hours; ROI model version; entity CEO review). ROI model review records (entity CEO/Dr. Lewis review before demo or follow-up). HIPAA demo compliance records (synthetic data environment verified; no PHI in demo). New proof point records (entity CEO confirmation before use). Demo recording records (if any — HIPAA review).

## Deprecation
Demo flow reviewed annually against demo-to-proposal conversion rate. ROI model benchmarks updated quarterly. HIPAA demo compliance reviewed when HHS guidance changes. Demo environment (synthetic data) reviewed when Allevio's platform or dashboard changes. CFO engagement criteria reviewed when average ACV changes.
