---
name: hr-new-hire-orientation
description: "Run Day 1 new hire orientation for MBL Partners portfolio company employees. Use when the user says 'Day 1 orientation', 'new hire orientation', 'first day orientation', 'orientation agenda', 'welcome new hire', 'Day 1 agenda', 'first day plan', 'orientation program', 'new employee orientation', 'what happens on Day 1', 'Day 1 checklist', 'welcome program', 'orientation meeting', 'first day meeting', 'THRIVE orientation', 'culture orientation', 'company introduction', 'team introduction', 'Day 1 welcome', 'onboarding Day 1', 'employee welcome', 'new hire welcome', or 'start day agenda'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--name <employee-name>] [--role <role-title>] [--start-date <YYYY-MM-DD>] [--format <in-person|remote|hybrid>]"
---

# HR New Hire Orientation

Design and run Day 1 orientation for a new hire at any MBL Partners portfolio company — covering THRIVE culture introduction, company/entity mission, systems setup, team introductions, and logistical readiness. Day 1 is the most important day in an employee's tenure: the impression it makes is disproportionately sticky; a disorganized Day 1 signals that the company is disorganized; a thoughtful, energetic Day 1 communicates that MBL invests in its people.

## When to Use
- A new hire's start date is within 2 business days
- Day 1 agenda needs to be finalized
- Remote orientation needs to be structured

## Day 1 Orientation Framework

```
PRE-DAY 1 CONFIRMATION (Day before):
  Confirm with new hire: start time; parking/access (on-site); Zoom link (remote)
  Confirm with IT: all equipment and access ready
  Confirm with hiring manager: available for Day 1 role clarity meeting
  Confirm with buddy: intro meeting scheduled
  Dr. Lewis: sends personal welcome email the evening before start date

DAY 1 AGENDA (5-6 hours of structured time; not a full day of meetings):

  MORNING — WELCOME (2 hours):
    08:30 - Entity CEO or Dr. Lewis: 30-45 min welcome meeting
      Cover: why this entity exists; what we're building; why this role matters
      THRIVE introduction: what each value means in practice (not aspiration — behavior)
      Questions from new hire: open floor
      
    09:15 - Admin and logistics (30 min):
      ID badge / parking / building access
      Benefits enrollment overview (window reminder: usually 30 days from start date)
      I-9 completion (required by Day 3 per law)
      Direct deposit setup
      Emergency contact form
      
    09:45 - IT and systems walkthrough (45 min):
      Email setup and communication norms (response time; calendar etiquette)
      Monday.com intro (team boards; how we track work)
      SharePoint / Teams structure overview
      Entity-specific systems:
        Allevio: AdvancedMD basics overview (if PHI role — after HIPAA training Day 5)
        HIVE: Covercy overview (royalty roles); DOGM access confirmation
        Column6: campaign dashboard intro; IO management system

  MIDDAY — TEAM AND CULTURE (2 hours):
    11:00 - Team lunch or virtual lunch (hiring manager + buddy + new hire):
      Informal; no agenda; conversation
      Goal: human connection before anything else
    
    12:30 - Buddy 1:1 (30 min):
      Buddy shares: "Here's what they didn't tell you in the interview that's true about working here"
      Buddy answers: what tools do people actually use? what's the culture of meetings here?
      
  AFTERNOON — ROLE CLARITY (1.5 hours):
    13:00 - Hiring manager role clarity meeting (60 min):
      Review 30-60-90 day plan (from hr-onboarding-planner)
      Define: first week objectives (learning, not deliverables)
      Answer: who are the 5 people I need to know in my first 2 weeks?
      
    14:00 - Self-directed time (30 min):
      New hire: review onboarding plan; set up inbox; explore systems
      
  END OF DAY 1:
    Hiring manager: 10-min debrief with new hire
    Questions: "What was surprising? What do you need that you don't have?"
    Dr. Lewis follow-up note sent by end of day: "Day 1 done. You're part of the team."

ENTITY-SPECIFIC ADDITIONS:

  Allevio Day 1:
    HIPAA training module assigned (must complete by Day 5)
    PHI system access NOT provided until HIPAA training certified
    Brief: "At Allevio, member privacy is a core value and a legal obligation. Here's why it matters."
    
  HIVE Day 1:
    Overview of the Uinta Basin royalty model (why HIVE exists; what royalty ownership means to landowners)
    Landowner relationship culture: "These families have owned this land for generations."
    
  Column6 Day 1:
    CTV/programmatic landscape overview: why programmatic advertising; what makes Column6 different
    Agency relationship philosophy: "Every agency is a long-term relationship, not a transaction."

REMOTE ORIENTATION ADJUSTMENTS:
  Pre-ship: equipment arrives 2 days before start (not morning of)
  Day 1 Zoom: always video-on; introduction to full team via team meeting
  Buddy: same-day Slack/Teams introduction; scheduled video call Day 1 afternoon
  Welcome package shipped to home (entity swag + welcome note from CEO)
```

## Output Format

```markdown
# Day 1 Orientation Plan — [Name] | [Role] | [Entity] — [Date]
**Format:** In-person / Remote / Hybrid | **Start time:** [Time]

---

## Day 1 Schedule

| Time | Activity | With |
|------|---------|------|
| 08:30 | Welcome meeting — THRIVE + entity mission | CEO / Dr. Lewis |
| 09:15 | Admin, benefits, I-9, direct deposit | HR / Dr. Lewis |
| 09:45 | Systems walkthrough | IT + hiring manager |
| 11:00 | Team lunch | Hiring manager + buddy |
| 12:30 | Buddy 1:1 — "what they didn't tell you" | Buddy |
| 13:00 | Role clarity + 30-60-90 day plan | Hiring manager |
| 14:00 | Self-directed: systems setup | — |
| 14:30 | End-of-day check-in | Hiring manager |

---

## Day 1 Completion Checklist
- [ ] Welcome meeting held
- [ ] I-9 completed (required by Day 3)
- [ ] Benefits enrollment window communicated
- [ ] HIPAA training assigned (Allevio only)
- [ ] Buddy introduced
- [ ] 30-60-90 day plan reviewed
- [ ] End-of-day check-in held
```

## Output Contract
- I-9 is completed by Day 3 — the I-9 must be completed within 3 business days of the hire's start date (USCIS requirement); completing it on Day 1 is best practice; Dr. Lewis or HR designee conducts the I-9 in person (for on-site) or via remote I-9 process (authorized representative); an I-9 that is not completed by Day 3 is an immigration compliance violation; Dr. Lewis tracks I-9 completion as a Day 1 mandatory item
- THRIVE orientation is delivered by Dr. Lewis or entity CEO — not delegated to an HR coordinator; the message that THRIVE values are non-negotiable behavioral standards (not aspirational posters) must come from a senior leader; a new hire who hears THRIVE explained by someone with authority understands it differently than one who reads it in an onboarding deck; Dr. Lewis or the entity CEO delivers THRIVE on Day 1 for every hire
- Remote Day 1 equipment arrives before Day 1 — equipment shipped to arrive the morning of start day creates a high likelihood of equipment issues derailing the day; Dr. Lewis builds "equipment arrives 2 days before start" into every remote onboarding plan; if a shipping delay puts equipment at risk: Dr. Lewis is notified 3 days before the start date so an interim solution can be arranged
- HITL required: Day 1 orientation plan finalized → Dr. Lewis confirms 2 days before start; I-9 completion → Dr. Lewis or authorized designee conducts; HIPAA training assignment (Allevio) → Dr. Lewis confirms assigned before Day 1; THRIVE orientation → Dr. Lewis or entity CEO delivers; remote equipment shipping → Dr. Lewis confirms 3 days before start

## System Dependencies
- **Reads from:** hr-onboarding-planner (30-60-90 day plan; role context); hr-offer-builder (confirmed start date; role; entity); hr-i9-manager (I-9 process); hr-background-check (confirmed clear before start)
- **Writes to:** Day 1 orientation plan (SharePoint → HR → Onboarding → [Entity] → [Name]); I-9 record (hr-i9-manager); HIPAA training assignment (Allevio; LMS); benefits enrollment notification; HRIS start date activated; payroll first pay period setup
- **HITL Required:** Orientation plan → Dr. Lewis confirms 2 days before; I-9 → Dr. Lewis/designee conducts; HIPAA training (Allevio) → Dr. Lewis assigns; THRIVE orientation → Dr. Lewis or CEO delivers; remote equipment → Dr. Lewis confirms arrival 3 days before

## Test Cases
1. **Golden path:** In-person start for HIVE Lease Manager. Equipment ready Day 1. CEO meets at 8:30 (THRIVE + Uinta Basin royalty mission). I-9 completed at 9:20 with Dr. Lewis. Buddy lunch at 11. Hiring manager role clarity at 1:00. End-of-day: "What surprised you?" → "How much you value the landowner relationships. I didn't fully understand that until today." Dr. Lewis follow-up note sent 5:00 PM.
2. **Edge case:** Remote start for Column6 Account Manager — equipment delivered same morning (shipping delay) and isn't working → Dr. Lewis: "I flagged this 3 days ago when tracking showed a delay, so I already arranged a backup: they can use their personal laptop today with temporary credentials. I'm having IT on standby at 8:15 to set up remote access. The laptop arrives tomorrow confirmed. Day 1 agenda proceeds as planned — the tech hiccup doesn't derail the culture orientation."
3. **Adversarial:** Hiring manager wants to skip the team lunch and have the new hire shadow a client call instead on Day 1 → Dr. Lewis: "I'd recommend moving the client call to Day 3 or later. Day 1 lunch builds the human connection that makes someone want to perform for their team. A client call on Day 1 puts a brand-new person in front of our customers before they understand who we are. Let's protect the Day 1 investment."

## Audit Log
I-9 completion records retained (3 years after termination or 1 year after hire — whichever is longer). HIPAA training assignment records retained (Allevio; compliance audit). Day 1 completion checklists retained. Benefits enrollment notification records retained.

## Deprecation
Orientation agenda reviewed annually. Allevio HIPAA orientation content updated when HIPAA regulations change. THRIVE orientation content updated only by Dr. Lewis/Matt Mathison. Remote onboarding equipment checklist updated when IT standards change.
