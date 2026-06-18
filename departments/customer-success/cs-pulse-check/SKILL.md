---
name: cs-pulse-check
description: "Run a quick customer pulse check for MBL portfolio company accounts. Use when the user says 'pulse check', 'quick check-in', 'customer check-in', 'how is the customer doing', 'quick customer update', 'how are we doing with this customer', 'account pulse', 'account health check', 'quick account review', 'customer temperature check', 'account temperature', 'check in on this account', 'are we good with this customer', 'quick relationship check', 'customer status check', 'account status', 'how is the relationship', 'quick account pulse', 'account sentiment', 'mid-quarter check-in', 'relationship temperature', or 'customer sentiment check'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--type <phone|email|quick-review>]"
---

# CS Pulse Check

Run a quick customer pulse check for MBL portfolio company accounts — a structured 10-15 minute touchpoint (call or email) between formal QBRs that keeps the relationship warm, catches emerging issues before they become escalations, and gives the customer a chance to share what's on their mind. The pulse check is the most underused CS tool; it costs 15 minutes and prevents 3-hour escalation calls.

## When to Use
- Between QBRs (Priority A: monthly pulse; Priority B: quarterly pulse)
- After a significant event (claim ratio spike; campaign underdelivery; royalty question)
- When a contact has gone quiet (no response to the last 2 communications)
- When a health score drops even slightly (don't wait for Yellow — a 1-2 point drop is worth a call)
- Before the renewal window opens (warm the relationship before the renewal conversation)

## Pulse Check Framework

```
PULSE CHECK FORMAT:

  METHOD SELECTION:
    Phone call: 10-15 minutes; for any account where the health score changed or there's
      a specific topic to address; for Priority A accounts quarterly minimum; warm relationships first
    Email: For Priority B and C accounts; for routine check-ins where health is stable
    Avoid: Only doing pulse checks via email for Priority A accounts — email is not a relationship

  CALL STRUCTURE (10-15 minutes):
  
    Opening (2 min):
      "Hi [Name], this is [Rep] at [Allevio/Column6/HIVE]. I'm doing a quick check-in —
       I have about 10 minutes set aside and I wanted to make sure things are going well
       on your end before we get to [upcoming QBR/open enrollment/next IO]."
      Do NOT ask "do you have a minute?" — assume they have time; they can redirect if not
      
    Three questions (6-8 min):
      1. "How are things going from your perspective?" (open — let them talk)
      2. "Is there anything that's been on your mind that we haven't addressed?"
         (this is the question that catches the issue before it becomes a complaint)
      3. [Entity-specific check]:
           Allevio: "Are your employees using the plan? Any specific questions coming through HR?"
           Column6: "How are things looking for [next campaign/quarter]? Anything in the pipeline
             we should be thinking about?"
           HIVE: "Any questions about your statement or the activity on the property?"
      
    Close (2-3 min):
      "Is there anything I can do before our next [QBR/regular call]?"
      "My commitment: [one specific action, even if small — shows we're listening]"
      
  EMAIL PULSE STRUCTURE:
    Subject: "Checking in — [Company]"
    Body:
      "Hi [Name], quick check-in — I want to make sure things are going well from your end
       before [upcoming event].
       
       Two things I wanted to flag:
       1. [One specific positive — something we noticed that's working well for them]
       2. [One question that invites them to share something on their mind]
       
       Let me know if there's anything you want to cover — happy to jump on a call if easier.
       [Rep name]"
    
PULSE CHECK TRIAGE:
  After every pulse check, update the health score if warranted:
    Positive signals heard: note in CRM; health score may increase slightly
    Concerns heard: note in CRM; flag to Dr. Lewis if health score should change
    Unresponsive (no reply to email; no answer to 2 calls): log in CRM; escalate to Dr. Lewis
      if Priority A account goes silent for 3+ business days
      
ENTITY-SPECIFIC PULSE CADENCES:

  ALLEVIO:
    Priority A: Monthly pulse between QBRs (typically a call)
    Pre-open enrollment (60-90 days before): Mandatory pulse — "Are you thinking about any
      changes to your plan for next year?" — this surfaces renewal signals early
    Post-claim-ratio-report: Always a pulse if ratio was above target — "Did you have a chance
      to review the report? Any questions?"
      
  COLUMN6:
    During active campaigns: Weekly pacing report serves as the pulse; no additional touchpoint needed
    Between IOs (IO gap): Pulse check every 30 days to keep the relationship warm and surface
      next IO timing; an agency that hasn't heard from us in 45 days may be talking to a competitor
    Post-IO wrap: Pulse within 5 business days: "Did you get a chance to share the wrap report
      with your client? I'd love to hear what they thought of the results."
      
  HIVE:
    After royalty statements: Monthly pulse accompaniment (cs-landowner-communicator)
    Development activity updates: Pulse whenever a new well is spud or production changes
    Quiet periods (no development activity): Pulse every 60 days minimum — landowners who don't
      hear from HIVE during quiet periods start to feel forgotten
```

## Output Format

```markdown
# Pulse Check Log — [Account Name] | [Entity]
**Date:** [Date] | **Method:** Call / Email | **Duration:** [N] min
**Contact:** [Name, Title]

---

## What We Heard

**Sentiment:** Positive / Neutral / Concerned / Negative
**Key themes:** [What the customer said — in their words, not our interpretation]
**Specific concern or request (if any):** [Quote or paraphrase]

---

## Action Taken / Commitment Made

[What the rep committed to do; due date]

---

## Health Score Update

**Change needed:** Yes → [from X to Y] / No
**CRM logged:** Yes
**Dr. Lewis flagged:** Yes (reason) / No
```

## Output Contract
- One action per pulse — every pulse check ends with one specific commitment from the CS rep; "I'll follow up if anything comes up" is not a commitment; "I'll send you the October claim data by Friday" is a commitment; a pulse check without a next action is a call that leaves the customer wondering why we called; Dr. Lewis trains the CS team to end every customer call — including a 10-minute pulse — with a specific next action from the rep
- Log immediately — the pulse check log in CRM is written within 1 hour of the call; a log that isn't written until the end of the day is a log that's missing half the detail; Dr. Lewis spot-checks 3 CRM logs per CSM per month to confirm they are current and detailed enough to be useful
- A silent Priority A account is an emergency — if a Priority A account doesn't respond to email within 3 business days, the CS rep escalates to Dr. Lewis; "they're probably just busy" is not an acceptable response to silence from a Priority A account; Dr. Lewis calls directly within 24 hours of the escalation; radio silence is a churn signal until proven otherwise
- HITL required: Any pulse check that surfaces a concern (score of "Concerned" or "Negative") is flagged to Dr. Lewis within 24 hours; Dr. Lewis reviews the concern and determines whether a cs-at-risk-responder or cs-escalation-manager protocol should be initiated; Priority A accounts that are silent for 3+ business days are escalated to Dr. Lewis immediately; Dr. Lewis personally runs pulse checks for accounts where the prior interaction involved an escalation

## System Dependencies
- **Reads from:** cs-health-score-tracker (current health score — starting point for the pulse; sets the context); GoHighLevel CRM (last contact date; last pulse; contact name; any open items from the last interaction); cs-qbr-preparer (what was covered at the last QBR? — the pulse should not repeat QBR content verbatim); cs-claim-ratio-reporter (Allevio — what was the last report? any concerns flagged?); cs-campaign-performance-reporter (Column6 — what was the last IO result? any follow-up needed?)
- **Writes to:** Pulse check log (GoHighLevel CRM — date; method; sentiment; key themes; action committed; health score change if any); cs-health-score-tracker (update relationship depth and contact frequency dimensions after each pulse); cs-at-risk-responder (if concern surfaced — initiate the at-risk protocol); Dr. Lewis notification (if Concerned/Negative sentiment or Priority A silence >3 business days)
- **HITL Required:** Dr. Lewis notified within 24 hours of any pulse returning Concerned or Negative sentiment; Priority A silence >3 business days escalated to Dr. Lewis immediately; Dr. Lewis personally runs pulse checks post-escalation; Dr. Lewis spot-checks 3 CRM pulse logs per CSM per month

## Test Cases
1. **Golden path:** Monthly Allevio Priority A pulse — HR Director; 12-minute call; rep opens: "Hi Sarah, this is [Rep] at Allevio — just a quick check-in before your September open enrollment. I have about 10 minutes. How are things going?" HR Director: "Good timing — I was actually going to reach out. I've had a couple employees asking about the telehealth coverage — can we make it clearer in the materials?" Rep: "Absolutely — I'll send you updated language for the enrollment guide by Thursday. Any other questions coming up from employees?" HR Director: "No, that's the main one. Appreciate the call." Rep: "Perfect. I'll have the telehealth language to you Thursday, and we'll see you for the QBR in October." Log written within 30 minutes: "Sentiment: Positive. Specific request: clearer telehealth language in enrollment materials. Action: Rep sends updated language by Thursday." Health score unchanged (Green); no Dr. Lewis flag
2. **Edge case:** A Column6 media buyer hasn't responded to 2 emails in the last week (no active campaign; IO gap month 2) → Rep escalates to Dr. Lewis: "Priority B account has gone quiet — 2 unanswered emails in 7 days." Dr. Lewis: "This is not an emergency for a Priority B account — 7 days is a business trip or a project crunch. But let's not wait another week. Send one more email, different approach — instead of a check-in, send something with value: 'I was looking at the Q4 CTV trends for your category and there's an interesting audience shift — would love to walk you through it. 15 minutes this week?' If no response in 3 business days, I'll call directly." New email sent; buyer responds same day ("Sorry — been heads down on a pitch. Let's talk Thursday"); IO discussion begins
3. **Adversarial:** A CSM reports completing all pulse checks by sending mass template emails: "Hi [Customer], just checking in — hope all is well. Let me know if you need anything!" → Dr. Lewis: "That's not a pulse check — that's spam with our logo on it. A pulse check is a specific question or observation tailored to that customer's situation. 'Hope all is well' tells the customer we don't know what's happening in their account. For this week: go back to the last 3 CRM records for each of these accounts. What do we know about them? Build a specific question for each one based on what we know. Then send the emails. Going forward: I'm reviewing 5 pulse logs per month — if I see template language, it's a coaching session."

## Audit Log
All pulse check logs retained in CRM by account and date. Dr. Lewis notification records retained for Concerned/Negative sentiments. Priority A silence escalation records retained. Dr. Lewis spot-check records retained (which accounts reviewed; assessment).

## Deprecation
Retire when each portfolio company has a CS platform with automated pulse check scheduling and sentiment logging — with Dr. Lewis reviewing Priority A pulse results and the CEO notified of any account that goes 30+ days without a documented touchpoint.
