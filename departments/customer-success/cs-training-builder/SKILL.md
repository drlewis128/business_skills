---
name: cs-training-builder
description: "Build customer training and enablement programs for MBL portfolio company customers. Use when the user says 'customer training', 'train the customer', 'enablement', 'customer enablement', 'user training', 'product training', 'service training', 'training program', 'training materials', 'how to use our service', 'customer education', 'build a training', 'training guide', 'training session', 'customer webinar', 'training webinar', 'on-demand training', 'help content', 'user guide', 'how-to guide', 'knowledge base', 'admin training', 'train the HR Director', 'train the media buyer', 'train the landowner', 'enable the customer', or 'customer learning'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--audience <HR-Director|CFO|media-buyer|landowner|employee>] [--format <live|recorded|guide|reference>] [--action <build|deliver|update|measure>]"
---

# CS Training Builder

Build customer training and enablement programs for MBL portfolio company customers — designing and delivering training that makes customers more capable of using what they've bought, reduces support volume, and deepens the relationship. Well-trained customers adopt more, escalate less, and renew more reliably; a customer who understands how the service works becomes a customer who defends it internally when budget pressure comes.

## When to Use
- Account onboarding (initial training for each new customer)
- A customer is underusing a feature or service capability (adoption gap — cs-adoption-monitor)
- A specific question keeps coming up (build a training to answer it at scale)
- Open enrollment season (Allevio — employees need benefits education)
- New capability launch (train customers on what's new before they discover it themselves)

## Training Builder Framework

```
TRAINING PROGRAM DESIGN:

  STEP 1 — Identify the training need:
    Who is the audience? (HR Director; CFO; media buyer; agency trafficker; landowner; employee)
    What do they need to be able to DO after the training?
      HR Director training goal: "Submit the monthly census accurately without CSM involvement"
      Media buyer training goal: "Pull campaign performance data from the Column6 dashboard without asking the CS rep"
      Landowner training goal: "Access and understand their Covercy royalty statement without calling the CS rep"
    What is the measurable adoption indicator that shows training worked?
    
  STEP 2 — Choose the format:
    Live session (virtual or in-person):
      Best for: Onboarding; complex workflows; high-stakes processes (open enrollment)
      Duration: 20-45 minutes; never longer without a break
      Requires: CS rep (or clinical team for Allevio clinical content) + customer availability
      
    Recorded walkthrough (video or screen recording):
      Best for: Reference material; processes the customer will do quarterly or annually
      Duration: 3-8 minutes per topic; never longer than 10 minutes per video
      Storage: SharePoint/CustomerSuccess/<Company>/Training/ + link sent to customer
      
    Reference guide (PDF or one-pager):
      Best for: Step-by-step processes; checklists; quick-reference data
      Duration: 1-2 pages maximum; more than that and it won't be read
      
    FAQ document:
      Best for: High-frequency questions; onboarding supplement
      Updated: Quarterly, based on cs-feedback-loop-builder themes

  STEP 3 — Build the training:
    All training starts with the audience's outcome, not the product's feature list
    Bad: "Here's how to navigate the AdvancedMD admin portal" (feature-first)
    Good: "Here's how to confirm that your employee census is up to date in 3 minutes" (outcome-first)
    Every training ends with a "what to do if..." — a simple decision tree for the most common issues
    
  STEP 4 — Deliver and measure:
    Live session: CS rep leads; record with customer permission; send recording link afterward
    Post-training survey (optional for Priority A; recommended for new features):
      "Did this training cover what you needed?" (1-5 scale)
      "What question do you still have?" (open text)
    Adoption check: 30 days after training, check the adoption metric to confirm the training worked

ENTITY-SPECIFIC TRAINING PROGRAMS:

  ALLEVIO:
  
    HR Director training tracks:
      1. Platform onboarding (Day 15-30): AdvancedMD basics; how to access claim data; how to submit
         the monthly census; how to process new employee enrollments mid-year
         Format: 45-minute live session; recorded for reference
         
      2. Benefits communication (before open enrollment): How to communicate the plan to employees;
         how to answer the 10 most common employee questions; how to use the enrollment guide
         Format: 30-minute live session; OE materials package as reference
         
      3. Claims question handling (on demand): What to do when an employee says "my claim was denied"
         Format: 1-page reference guide + 5-minute recorded walkthrough
         
    Employee training (deployed by HR Director):
      "What does my Allevio plan cover?" — benefits overview handout
      "How to find a doctor in-network" — reference guide
      "How to use telehealth" — 3-minute recorded walkthrough or QR code to video
      
  COLUMN6:
  
    Media buyer training tracks:
      1. Platform and reporting onboarding (Week 1-2 of first IO): How to access the Column6
         client dashboard; how to read the pacing report; how to pull impressions and VCR data
         Format: 20-minute live walkthrough
         
      2. Attribution setup (when agency activates attribution): How to set up a Nielsen OneCount
         measurement study; how to place the attribution pixel; how to read the attribution report
         Format: 30-minute technical live session with Column6 ad ops team
         
      3. Campaign optimization guide (on demand): How to adjust targeting mid-flight; how to
         request a creative swap; what to do if pacing is behind
         Format: 1-page reference guide + email to the CS rep
         
    Agency trafficker training:
      Ad specs and creative requirements — technical reference; updated quarterly
      Campaign activation checklist — what the trafficker needs to do before campaign goes live
      
  HIVE:
  
    Landowner training tracks:
      1. Covercy portal orientation (first royalty payment): How to register; how to access
         statements; how to download a PDF; how to update bank information
         Format: CS rep walkthrough by phone (screen sharing optional for tech-comfortable landowners)
         Reference: 1-page "Getting Started with Covercy" guide (mailed if needed)
         
      2. Understanding your royalty statement (if needed): How to read the royalty statement;
         what the production volumes mean; how the royalty rate is applied
         Format: Personalized explanation on a call; send the guide afterward
         Reference: "How to Read Your Royalty Statement" — 1-page with annotated example
         
      3. Lease terms overview (at signing): What the lease terms mean for you; when to expect
         the lease bonus payment; what happens after the lease is signed
         Format: Post-signing call; 15 minutes; CS rep led

TRAINING METRICS:
  Adoption rate: Did the adoption metric improve after training? (cs-adoption-monitor)
  Support volume: Did the training reduce repetitive questions on that topic? (cs-escalation-manager)
  Post-training survey: Did the customer feel prepared?
  Training utilization: Did the customer access the reference materials? (if trackable)
```

## Output Format

```markdown
# Training Plan — [Account Name] | [Entity]
**Audience:** [HR Director / Media Buyer / Landowner / Employee]
**Training need:** [What the customer will be able to DO after training]
**Format:** Live / Recorded / Guide / FAQ
**Date:** [Delivery date] | **Owner:** CS Rep / Dr. Lewis / Clinical Team

---

## Training Content Outline

1. [Topic 1] — [Outcome]: What the customer will be able to do
2. [Topic 2]
3. What to do if... [most common issues and resolution steps]

---

## Materials

| Material | Format | Location |
|---------|--------|---------|
| Training recording | Video | SharePoint/CustomerSuccess/[Company]/Training/[File.mp4] |
| Reference guide | PDF | SharePoint/CustomerSuccess/[Company]/Training/[File.pdf] |

---

## Adoption Check (30 Days Post-Training)

**Metric:** [Claim ratio submitted by HR Director independently / Dashboard accessed weekly / Covercy logged in]
**Target:** [X]% adoption or [N] self-service actions
**Status (30 days):** ✅ Met / ⚠️ Partial / ❌ Not met
```

## Output Contract
- Training is measured, not assumed — a training session that happens but doesn't produce a behavior change is not training; it is a presentation; Dr. Lewis requires a 30-day adoption check for every significant training delivery: did the customer actually do the thing they were trained on?; if they didn't, a second intervention is required (is the training unclear? is there a workflow barrier? is there a motivation issue?); the adoption check closes the training loop
- Outcome-first design — training content is built backward from "what should the customer be able to DO?" not forward from "what should I show them about our product?"; a customer who can access their Covercy statement independently is a customer who doesn't call the CS rep every month; that is the outcome; the training is the path to the outcome, not the outcome itself
- HIPAA applies to all Allevio training materials — any training material that includes an example claim, an example member record, or a scenario involving a specific health condition must use fictional data; Dr. Lewis reviews all Allevio training materials for HIPAA compliance before they are used with customers; a training video that uses a real member record to demonstrate the AdvancedMD portal is a HIPAA violation
- HITL required: Dr. Lewis reviews all Allevio training materials for HIPAA compliance; clinical content in Allevio training is reviewed by the Allevio clinical team before use; training materials that will be distributed to employees (not just HR Directors) are reviewed by Dr. Lewis before distribution; post-training adoption checks below target trigger a Dr. Lewis notification and a follow-up intervention plan

## System Dependencies
- **Reads from:** cs-adoption-monitor (adoption gaps — the trigger for most training needs); cs-feedback-loop-builder (recurring questions from customers — training topics); cs-onboarding-coordinator (onboarding training schedule — when to deliver which training); cs-escalation-manager (escalation root causes that reveal training gaps — if customers keep calling about the same issue, it's a training issue); cs-nps-program (Passive scores with training-related comments — what would make this a 10?)
- **Writes to:** Training materials (SharePoint/CustomerSuccess/<Company>/Training/[Audience]/[File]); training delivery log (GoHighLevel CRM — date; format; attendees; adoption check due date); post-training survey results (CRM); adoption check results (cs-adoption-monitor — did training improve the metric?); Dr. Lewis HIPAA review confirmation (all Allevio training materials); FAQ document updates (SharePoint/CustomerSuccess/<Company>/Training/FAQs/)
- **HITL Required:** Dr. Lewis reviews all Allevio training materials for HIPAA compliance; clinical team reviews clinical content; employee-distributed materials reviewed by Dr. Lewis; post-training adoption checks below target trigger Dr. Lewis notification; any new training format or program requires Dr. Lewis approval before first use

## Test Cases
1. **Golden path:** Allevio HR Director training — new employer group; Day 20 of onboarding; 45-minute live session (CS rep led; recorded with permission); topics: AdvancedMD login; how to access monthly claims report; how to submit census updates; what to do when an employee has a claim question; 15 participants (HR Director; backup HR manager; payroll manager); post-training survey: avg 4.6/5; "What question do you still have?" → 3 people asked about telehealth billing; CS rep adds telehealth FAQ to the follow-up email; 30-day adoption check: HR Director independently accessed the claims report 3 times and submitted 1 census update without contacting the CS rep ✅ — training worked; Dr. Lewis: "Perfect — that's exactly the outcome we wanted. Log the adoption check result and set a 60-day reminder to confirm the pattern is consistent."
2. **Edge case:** 3 months after initial Column6 onboarding, the media buyer emails asking how to pull the weekly pacing data — something covered in the onboarding training → CS rep answers the question; then: "I also realized we have a reference guide that covers this — let me send it to you. It's a 1-pager with the steps. I'll also link you to the 5-minute recording from your onboarding." Media buyer: "Oh, I didn't realize I had access to a recording. That would have saved me an email!" CS rep logs the interaction in cs-feedback-loop-builder: "Reference guide not being accessed — may need a more prominent delivery mechanism at onboarding. Consider sending the training links as a reminder at Day 30 of the relationship." Onboarding process updated: "Day 30 email — training resource reminder" added to cs-onboarding-coordinator Column6 track
3. **Adversarial:** A CS rep proposes showing actual Allevio member data in a training video for HR Directors — "it'll make it more realistic" → Dr. Lewis: "Stop. Using real member data in training materials is a HIPAA violation — full stop. Even if the member consented, the training video gets distributed to multiple HR Directors and is stored in SharePoint. We use fictional data: fictional member names; fictional claim amounts; fictional diagnosis codes (and not real ones — we use 'Sample Diagnosis' in the category field). The training scenario should be realistic, not the data. Build the training with fictional data that reflects the real workflow, and I'll review it before it's distributed." Training rebuilt with fictional data; Dr. Lewis reviews; approved for distribution

## Audit Log
All training materials retained by entity and audience type with version and date. Dr. Lewis HIPAA review records retained for all Allevio materials. Clinical team review records retained. Training delivery logs retained (date; attendees; format). Post-training survey results retained. 30-day adoption check results retained. Customer FAQ update records retained.

## Deprecation
Retire when each portfolio company has a dedicated customer education function or a learning management system (LMS) that manages training content delivery and adoption tracking — with Dr. Lewis reviewing all training materials annually for HIPAA compliance and the CEO approving any new training programs deployed to customers.
