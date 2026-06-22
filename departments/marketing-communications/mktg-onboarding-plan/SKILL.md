---
name: mktg-onboarding-plan
description: "Build marketing onboarding plans for new marketing hires or marketing programs at MBL Partners portfolio entities. Use when the user says 'onboard a marketer', 'marketing onboarding', 'onboarding plan marketing', 'new marketing hire', 'new marketing role', 'marketing onboarding plan', 'first 30 days marketing', 'first 60 days marketing', 'first 90 days marketing', '30-60-90 marketing', 'marketing ramp plan', 'ramp a marketer', 'what should a new marketer learn first', 'how do we onboard marketing', 'marketing program launch', 'launch a marketing program', 'start marketing for a new entity', 'starting marketing from scratch', 'launch marketing', 'how do we get marketing started', 'marketing launch plan', 'marketing kickoff', 'first marketing initiative', 'marketing foundation', 'build marketing from zero', 'stand up marketing', 'build the marketing function', or 'marketing 30 day plan'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--type <new-hire|program-launch>] [--role <coordinator|manager|director>] [--action <build|review|execute>]"
---

# Marketing Onboarding Plan

Build marketing onboarding plans for new marketing hires or new marketing programs at MBL Partners portfolio entities — accelerating time-to-contribution for new marketing team members and establishing the foundation of a new entity marketing program systematically. An undisciplined onboarding produces a marketer who is busy but unfocused; a structured 30-60-90 day plan produces a marketer who is executing toward measurable goals within 90 days.

## When to Use
- A new marketing hire joins an entity — they need a 30-60-90 day plan
- Launching a marketing program for an entity that has had no formal marketing function
- Onboarding a marketing contractor or fractional marketer for a defined engagement
- Dr. Lewis reviewing whether a marketing hire is ramping effectively

## Onboarding Framework

```
30-60-90 DAY PLAN STRUCTURE:

  DAY 1-30: LEARN
    Goal: understand the entity, the audience, the current state, and the constraints before creating anything
    
    Week 1 — Entity immersion:
      Read: entity overview; product/service model; target audience definition; positioning and messaging documents
      Meet: entity CEO (1:1; understand priorities and concerns); Dr. Lewis (1:1; understand MBL's marketing standards and HIPAA requirements if Allevio)
      Review: existing marketing materials (website; emails; social); GoHighLevel configuration; analytics setup
      Audit: what exists, what is working, what is broken (do not assume the prior state was correct)
      
    Week 2-3 — Systems and constraints:
      Complete HIPAA awareness training (Allevio mandatory; other entities recommended)
      Get access to: GoHighLevel; GA4; LinkedIn page; LinkedIn Campaign Manager (if applicable); Monday.com; SharePoint marketing library
      Review: brand guide; voice guide; messaging matrix; content library
      Read: 3 months of prior marketing reports (if they exist)
      Interview: entity CEO to understand what marketing they've tried before and what they thought of it
      
    Week 4 — First assessment:
      Produce a "current state of marketing" brief (2 pages): what exists; what's working; what's missing; top 3 priorities for 30-60 day action
      Present to entity CEO + Dr. Lewis for feedback before doing anything; HIPAA check (Allevio) — does the brief reference any data sources or tools that need review?

  DAY 31-60: BUILD
    Goal: build the infrastructure and produce first outputs, all reviewed before external use
    
    Priority infrastructure:
      GoHighLevel: confirm pipeline stages configured; lead scoring rules set; UTM source tags defined
      GA4: confirm employer-only tracking (Allevio: no member pages); UTM parameters flowing correctly
      Content library: organize SharePoint marketing library; tag content by: entity; audience; stage; status
      Email: confirm CAN-SPAM list management; unsubscribe flow working; HIPAA review (Allevio) before any email send
      
    First outputs:
      One piece of content (blog post or LinkedIn post series) — reviewed by entity CEO + Dr. Lewis before publication
      One email (newsletter or campaign) — reviewed + HIPAA check (Allevio) before send
      First monthly KPI report (even if baseline metrics are thin) — establishes reporting cadence
      
  DAY 61-90: EXECUTE
    Goal: demonstrate measurable activity and early pipeline contribution; prove the foundation is working
    
    By day 90, the new marketer should have:
      ✅ Published 3+ pieces of content (reviewed; approved; live)
      ✅ Sent at least 1 email campaign (HIPAA-reviewed if Allevio)
      ✅ Produced 2 monthly KPI reports
      ✅ Set up UTM tracking on all external marketing links
      ✅ Identified first 5 marketing-sourced leads in GoHighLevel
      ✅ Met with entity CEO monthly and Dr. Lewis at 30-day and 90-day marks
      ✅ Presented a Q+1 content calendar for entity CEO approval
      
HIPAA ONBOARDING (ALLEVIO — MANDATORY):
  Day 1: Dr. Lewis provides HIPAA awareness brief (30 minutes):
    - What Allevio's data can and cannot be used for in marketing
    - What tools require BAA review before use
    - How HIPAA review process works (all content and tool changes reviewed by Dr. Lewis)
    - Who to ask if uncertain (Dr. Lewis — always better to ask than assume)
  Week 1: New hire reads Allevio HIPAA marketing policy document (SharePoint → Allevio → Legal → HIPAA)
  Day 30: HIPAA check-in: Dr. Lewis reviews first assessment brief for any HIPAA gaps
  Ongoing: every content piece and tool change → HIPAA review before external use
  No content is published, no email is sent, no campaign is launched for Allevio without Dr. Lewis HIPAA sign-off in the first 90 days (even if the new marketer is confident; this is a trust-building period)
  
PROGRAM LAUNCH (NEW ENTITY WITH NO PRIOR MARKETING):
  If the entity has never had a marketing function, Day 1-30 doubles as discovery + infrastructure build:
    Priority 1: brand guide + voice guide (mktg-brand-voice-manager)
    Priority 2: messaging matrix (mktg-messaging-matrix)
    Priority 3: GoHighLevel pipeline and lead tracking setup
    Priority 4: first content piece (begins building credibility before infrastructure is perfect)
    Priority 5: first KPI report baseline (even if all zeros — establishes the measurement system)
```

## Output Format

```markdown
# Marketing Onboarding Plan — [Entity] — [New Hire Name / Program Launch]
**Start date:** | **90-day target date:** | **Prepared by:** Dr. Lewis | **Reviewed by:** Entity CEO

---

## Day 1-30: Learn

| Week | Task | Owner | HIPAA check needed? | Status |
|------|------|-------|--------------------|----|
| W1 | Entity immersion + stakeholder meetings | New hire | — | |
| W2-3 | Systems access + HIPAA onboarding (Allevio) | Dr. Lewis + New hire | ✅ Mandatory | |
| W4 | Current state assessment brief | New hire → Dr. Lewis | ✅ Review before sharing | |

---

## Day 31-60: Build

| Item | Owner | HIPAA review | Target date | Status |
|------|-------|-------------|------------|--------|
| GoHighLevel pipeline configuration | New hire | Dr. Lewis confirms | | |
| First content piece (approved) | New hire → Entity CEO | Dr. Lewis (Allevio) | | |
| First email send | New hire → Entity CEO | Dr. Lewis (Allevio) | | |

---

## Day 61-90: Execute

| Milestone | Target | Status |
|----------|--------|--------|
| 3+ content pieces published | By Day 90 | |
| 2 monthly KPI reports produced | | |
| UTM tracking on all links | | |
| 5 marketing-sourced leads in GHL | | |
| Q+1 content calendar approved | | |

---

## Dr. Lewis Check-In Schedule
- [ ] Day 1: HIPAA brief (Allevio) / entity overview
- [ ] Day 30: Current state assessment review
- [ ] Day 90: 90-day retrospective + Q+1 OKR alignment
```

## Output Contract
- The first 30 days are for learning, not producing — a new marketer who starts producing content in week 1 before understanding the entity's positioning, audience, and HIPAA constraints (Allevio) is a liability risk; Dr. Lewis enforces a 30-day learning mandate; entity CEOs sometimes push for immediate output ("we need content now"); Dr. Lewis's response is: "content produced without understanding the entity will be generic and may create HIPAA risk for Allevio; 30 days of learning produces 30 months of better content; let's be patient for one month"
- No Allevio content or tool goes live without Dr. Lewis review in the first 90 days — a new marketer in an Allevio context is in a high-trust-building period; even if they are highly competent and HIPAA-aware, Dr. Lewis reviews every content piece and every tool decision in the first 90 days; this is not a lack of trust — it is Dr. Lewis establishing the standard so the marketer internalizes the level of rigor required; after 90 days, Dr. Lewis moves to selective review with the marketer self-certifying HIPAA compliance and Dr. Lewis spot-checking
- The 90-day retrospective sets the tone for the ongoing relationship — at day 90, Dr. Lewis + entity CEO review: did the marketer meet the milestones?; what's working?; what needs to change?; what are the Q+1 OKRs?; this retrospective is not a performance review — it is a calibration conversation that sets the expectation for ongoing accountability; a marketer who meets 90-day milestones has demonstrated they can execute; a marketer who misses most milestones needs an honest conversation about fit
- HITL required: HIPAA onboarding (Allevio) → Dr. Lewis delivers in person or via Zoom; Day 30 current state brief → Dr. Lewis + entity CEO review before any external action; all Allevio content first 90 days → Dr. Lewis HIPAA review; first email send (all entities) → entity CEO approves; 90-day retrospective → entity CEO + Dr. Lewis; Q+1 OKR setting → entity CEO + Dr. Lewis

## System Dependencies
- **Reads from:** mktg-brand-voice-manager (new hire reads voice guide in Week 1); mktg-messaging-matrix (new hire reads messaging matrix in Week 1); mktg-marketing-ops-manager (new hire gets access to systems in Week 2); mktg-kpi-dashboard (new hire sets up reporting infrastructure Day 31-60)
- **Writes to:** Marketing onboarding plan (SharePoint → [Entity] → HR → Marketing → Onboarding → [Name]); 30-day current state assessment; HIPAA onboarding records (Allevio — permanent); 90-day retrospective document; Day 90 OKR alignment document
- **HITL Required:** HIPAA onboarding → Dr. Lewis; Day 30 review → Dr. Lewis + entity CEO; first 90 days Allevio content → Dr. Lewis HIPAA; first email → entity CEO; 90-day retrospective → entity CEO + Dr. Lewis; Q+1 OKRs → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio Marketing Coordinator (first marketing hire). Day 1: Dr. Lewis provides 30-minute HIPAA brief; coordinator reads HIPAA policy document; gets access to SharePoint, GoHighLevel (no Allevio employer data export rights until Dr. Lewis grants), LinkedIn page. Week 2-3: coordinator reads brand guide, voice guide, messaging matrix; reviews existing Allevio website (employer pages); maps existing content. Day 30: current state brief presented to Dr. Lewis + Allevio CEO: "3 employer case studies available (anonymous; approved); no active email program; Google Analytics not configured correctly — no UTM tracking; GoHighLevel has 47 contacts but no pipeline stages. Top 3 priorities: (1) configure GA4 employer-only tracking; (2) launch employer email newsletter; (3) set up GoHighLevel employer pipeline." Dr. Lewis HIPAA review of brief: no data concerns. Entity CEO approves priorities. Day 60: GA4 reconfigured (Dr. Lewis sign-off); first employer newsletter drafted (Dr. Lewis HIPAA review; employer CEO approves; sent). Day 90: 2 monthly reports produced; 7 marketing-sourced leads in GHL; Q1 content calendar presented and approved.
2. **Edge case:** New marketing hire (Column6 Marketing Manager) claims they don't need the 30-day learning phase because they have extensive programmatic experience → Dr. Lewis: "Your programmatic experience is exactly why I want you to take the 30 days: Column6 has a specific agency partnership model, a specific competitive differentiation (self-serve CTV proof), and specific messaging constraints that are different from your prior employers. If you apply your prior playbook before understanding these, you'll produce Column6's story in a competitor's language. The 30 days is not about your competence — it's about understanding Column6's specific context. I'll make the reading efficient: you can finish the brand guide, messaging matrix, and competitive intelligence documents in a week. Then let's meet and you can tell me where you see gaps."
3. **Adversarial:** Entity CEO pressures a new Allevio marketing coordinator into sending an employer email on Day 10, before HIPAA review and before the 30-day learning phase is complete → Dr. Lewis: "I'm stopping this. No Allevio email goes out without my HIPAA review — at 10 days, that email has not been reviewed and the coordinator has not completed HIPAA onboarding. If the entity CEO needs an urgent employer communication, I will draft and review it personally and we'll get it out today. But a coordinator who skips HIPAA review on their first email send has learned that the review process is optional under pressure — that is exactly the wrong lesson. I need to have a direct conversation with the entity CEO about why the onboarding structure exists. This is non-negotiable at Allevio."

## Audit Log
Marketing onboarding plans retained. HIPAA onboarding records (Allevio — permanent). Day 30 current state assessments. 90-day retrospective documents. Entity CEO + Dr. Lewis check-in records. First content and email approval records. Q+1 OKR alignment documents.

## Deprecation
Onboarding plan template reviewed annually. HIPAA onboarding content updated when HIPAA regulations or Allevio policy changes. System access checklist updated when technology stack changes. 90-day milestones reviewed when entity marketing maturity changes.
