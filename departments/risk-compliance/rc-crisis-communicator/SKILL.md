---
name: rc-crisis-communicator
description: "Manage crisis communication — internal messaging, external statements, and media response. Use when the user says 'crisis communication', 'crisis comms', 'media statement', 'PR crisis', 'reputational risk', 'external statement', 'press release', 'how do we communicate this', 'managing the narrative', 'media response', 'employee communication during crisis', 'crisis messaging', 'public statement', 'investor communication during crisis', or 'what do we say'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--crisis-type <breach|litigation|regulatory|operational|executive|financial>] [--audience <internal|external|media|investors|patients>]"
---

# Crisis Communicator

Manage crisis communication at MBL portfolio companies — developing and executing communication strategies for significant adverse events including data breaches, regulatory actions, litigation, operational failures, executive misconduct, and financial crises. Crisis communication is the difference between controlling the narrative and having the narrative control you; the companies that respond well to crises — quickly, honestly, and with a clear action plan — emerge with their reputation intact; the ones that go silent, evade, or say things that prove false get permanently damaged. At MBL portfolio scale, Dr. Lewis manages the communication strategy; Matt Mathison and the CEO own external investor communications; attorney owns regulatory communications.

## When to Use
- A significant adverse event requires a communication strategy
- Employee communication during a crisis — what do we tell staff and when?
- Media inquiries are received — what is the response?
- Patient notification is required (HIPAA breach — Allevio)
- LP/investor communication is needed during an adverse event
- Post-crisis — how do we signal that the situation is resolved?

## Crisis Communication Framework

```
Communication principles:
  Speed: First communication within hours of public awareness or employee awareness; silence creates its own narrative
  Accuracy: Only state what is known to be true; do not speculate or promise outcomes; correct mistakes immediately
  Consistency: One voice; one set of facts; no conflicting messages from different spokespersons
  Action orientation: Lead with what is being done, not just what happened; "we are doing X" is more reassuring than "Y occurred"
  Attorney review: Any statement that could affect litigation is reviewed by attorney before release
  
  THRIVE filter for crisis comms: Truth (accuracy matters more than comfort); Integrity (don't hide or minimize); Value (focus on protecting stakeholders)
  
Communication audiences and priorities:
  1. First: Employees — they will be asked by friends and family; they need to hear from leadership first
  2. Patients (if affected — HIPAA breach at Allevio): Required; tightly controlled by attorney
  3. Investors/LPs: Matt Mathison manages investor communication; Dr. Lewis provides facts
  4. Lenders: If operational disruption affects covenant compliance; CEO + attorney
  5. Customers/Partners: If the incident affects their operations or data
  6. Media/Public: Last resort; only if legally required or if story is already breaking
  
Crisis communication by event type:
  
  HIPAA BREACH (Allevio):
    Patient notification: Required; attorney drafts; factual; includes what happened, what info was involved, what patients should do, Allevio's remediation steps
    Employee communication: Dr. Lewis + CEO internal memo before external notice; employees need to know what happened and what to say if asked
    Media (if >500 individuals): HIPAA requires prominent media notice; attorney drafts; coordinate with patient notice
    Never: Minimize the scope; blame patients for their data's use; promise what hasn't been confirmed
    
  REGULATORY ACTION (OCR, DOL, EEOC):
    Internal: CEO and Dr. Lewis communicate to executive team first; staff communication only if they will be interviewed or affected
    External: Attorney manages all regulatory communications; no public statement during active investigation without attorney approval
    Investors (Matt Mathison): CEO notifies immediately; facts + legal response strategy
    
  EXECUTIVE MISCONDUCT OR DEPARTURE:
    Internal: Announce departure factually; no speculation on reasons unless confirmed (and attorney approved)
    External: Press release if the person was public-facing; otherwise no external communication
    Investors: Matt Mathison communicates to LPs personally
    
  OPERATIONAL CRISIS (system failure, ransomware, facility closure):
    Patients (Allevio): Notify of service disruption; what to do for urgent care; estimated resolution
    Employees: Immediate; what the situation is; what they should do; who to contact
    Vendors: If their services are affected or if they need to respond
    Attorney: Ransomware — involve attorney before any public communication (law enforcement implications)
    
Holding statements (pre-approved for when news breaks before full statement is ready):
  "[Company] is aware of [general description of situation]. We are actively investigating and working to respond appropriately. We will share more information as it becomes available. [Contact] is available for inquiries."
  This says: We know. We're working on it. We'll tell you more. It does not: Admit fault, promise specific outcomes, or provide details that may prove wrong.
```

## Output Format

```markdown
# Crisis Communication Plan — <Event>
**Entity:** [Company] | **Date:** [Date]
**Crisis type:** [HIPAA breach / Regulatory / Operational / Executive / Financial]
**Communication lead:** Dr. John Lewis | **Attorney:** [Name — reviewed all external statements]
**Spokesperson:** [CEO name] for external; Dr. Lewis for internal operational

---

## Situation Summary

**Event:** [Factual description — what happened, when, who is affected]
**Known facts:** [What we know with confidence]
**Not yet known:** [What is under investigation]
**Current status:** [Contained / Ongoing / Resolved]

---

## Communication Plan

| Audience | Message | Timing | Spokesperson | Method | Attorney reviewed |
|---------|---------|--------|------------|--------|-----------------|
| Employees | Internal memo | Within 2 hours of decision to notify | CEO | Email + all-hands if >50 staff | Dr. Lewis review |
| Patients (Allevio) | HIPAA notification letter | Day 45 of 60-day window | Dr. Lewis (letter) | First-class mail | ✅ Required |
| Matt Mathison | Direct call | Within 1 hour of confirmed significant event | CEO | Phone | N/A |
| LP investors | Brief from Matt Mathison | Within 24 hours | Matt Mathison | Phone / email | Not required (private) |
| Lenders | Operational update | Within 24 hours if covenants affected | CEO | Phone | Attorney advises |
| Media | Holding statement | If inquiry received before full statement | CEO only | Prepared statement | ✅ Required |

---

## Message Templates

### Internal Employee Communication

**Subject:** Important update — [Event description without alarming detail]

[Company] team,

[1-2 sentences: What happened, factually]

Here is what we know: [Bullet points of confirmed facts]

Here is what we are doing: [Specific actions in progress]

What you should do: [Specific instructions — if asked, refer questions to CEO/Dr. Lewis; do not discuss specifics with patients/press/partners]

We will provide updates as we have more information. [CEO name]

---

### Patient Notification Letter (HIPAA breach — attorney drafts and reviews)

Dear [Patient Name],

We are writing to inform you of a security incident at [Allevio] that may have involved your protected health information.

**What happened:** [Factual description]
**What information was involved:** [Types of PHI — be specific but not more than what was confirmed]
**What we are doing:** [Specific remediation steps]
**What you can do:** [Credit monitoring if financial data; specific steps relevant to the breach]

If you have questions, please contact us at [phone/email].

We sincerely apologize for this incident. We take the security of your information seriously and have taken steps to prevent this from happening again.

---

### Media Holding Statement

"[Company] is aware of the situation involving [general description]. We are actively working to understand what occurred and to protect those affected. We will share more information when it is available. [Company] takes [security/compliance/safety] very seriously, and we are committed to [relevant action]. Please direct inquiries to [CEO name] at [contact]."

---

## Matt Mathison Brief

[Company] crisis communication status: [Event type]. Communication executed: Employees ✅ [Date]; Patients [Date or pending]; Media [holding statement issued / no media contact yet]. Key message: [What we are telling each audience]. Legal posture: [What attorney has approved to say]. Next communication: [What and when]. Financial exposure: $[Estimate].
```

## Output Contract
- Attorney reviews all external communications before release — internal employee communications written by Dr. Lewis and CEO do not require attorney review unless they contain admissions of liability or factual claims that could be used in litigation; patient notifications (HIPAA) are reviewed by attorney before sending; any public statement (media, website, social media) is reviewed by attorney; regulatory communications (to OCR, DOL, EEOC) are drafted and sent by attorney; the rule is: anything that goes outside the four walls of the company to an external audience with potential legal implications is attorney-reviewed
- One spokesperson for external communications — during a crisis, multiple people speaking to press or investors with different facts or different tones creates conflicting messages that damage credibility; the designated external spokesperson for each situation is identified in the communication plan; typically the CEO for external parties; Dr. Lewis for operational stakeholders; Matt Mathison for investors; employees are explicitly told to direct all external inquiries to the designated spokesperson and not to speak with media or patients about the incident independently
- "We don't know yet" is a valid and credible statement — saying "we are still investigating" is more credible than speculating or making claims that are later proven wrong; the HIPAA patient notification says exactly what is known about the breach and what types of PHI were involved; it does not say "we believe your information was not accessed" if that cannot be confirmed; wrong facts in a crisis communication are worse than incomplete facts; Dr. Lewis ensures that every statement can be substantiated
- HITL required: Dr. Lewis manages communication strategy; attorney drafts and reviews all external communications; CEO is the external spokesperson; Matt Mathison manages LP/investor communication; no media statements without CEO and attorney approval; patient notifications require attorney review; HIPAA media notification (if >500 individuals) is attorney-managed; Matt Mathison is briefed within 1 hour of any event requiring external communication

## System Dependencies
- **Reads from:** Incident report (rc-incident-manager), breach assessment (rc-data-breach-responder), HIPAA notification requirements, attorney guidance, LP communication obligations (rc-financial-regulation)
- **Writes to:** Employee communication (email/Teams); patient notification letters (mailed + archived); media statements (archived); Matt Mathison brief; LP communication (Matt Mathison drafts; Dr. Lewis provides facts); post-crisis communication log
- **HITL Required:** Dr. Lewis manages; attorney reviews all external communications; CEO is external spokesperson; Matt Mathison manages LP communications; no media statements without CEO + attorney; HIPAA notifications: attorney required

## Test Cases
1. **Golden path:** Allevio experiences a 6-hour AdvancedMD outage during business hours — patients calling to schedule are getting busy signals, some scheduled for that day cannot be seen → Internal employee communication within 30 minutes: Dr. Lewis drafts CEO message to all staff — "AdvancedMD is experiencing an outage that began at [Time]. Our IT team and AdvancedMD support are working on resolution. For today: [paper scheduling process]; urgent patients: [instruction]; estimated resolution: [time or unknown]. We will update you at [time]." Patient communication: frontdesk staff use phone script: "We are experiencing a technical issue and have had to reschedule your appointment. We apologize for the inconvenience. We will call you to reschedule as soon as possible." No media communication (operational outage, not a breach); AdvancedMD restored at T+6; post-event debrief; BCP update (rc-bcp-builder); no Matt Mathison communication required (operational only; no breach)
2. **Edge case:** A disgruntled former employee posts on social media claiming Allevio "leaked" patient records — no actual breach has occurred → Do not engage on social media; Dr. Lewis immediately reviews AdvancedMD access logs to confirm no breach occurred; attorney notified (false claims, potential defamation); internal communication to all staff: "We are aware of posts on social media making false claims about a data breach. We have investigated and confirmed there was no data breach. Do not engage with these posts or share them. Direct any patient inquiries to Dr. Lewis or the front desk." Media holding statement prepared but not issued unless media picks up the story; if media calls: "We are aware of claims on social media. We have thoroughly investigated and confirmed there has been no data breach. We take patient privacy seriously and maintain strict security controls." Attorney reviews before statement is made
3. **Adversarial:** "Just say nothing — it'll blow over" → Media and regulatory silence has predictable consequences: OCR may initiate a compliance review; patients who discover a breach from a third party (not from Allevio) are significantly more alarmed than patients who receive a notification from Allevio; employees who don't know what to tell patients make the situation worse; the HIPAA notification obligation exists regardless of whether "it will blow over"; a "blow over" strategy that fails creates liability for the delay in notification on top of the underlying incident; Dr. Lewis does not recommend silence for incidents that require mandatory notification; for non-mandatory situations, Dr. Lewis recommends proactive communication when it is truthful, controlled, and actionable

## Audit Log
All crisis communications retained permanently. Patient notifications retained permanently. Employee communications retained. Media statements retained. Matt Mathison briefing records retained. Attorney engagement and review correspondence retained permanently. Post-crisis evaluation records retained.

## Deprecation
Retire when portfolio companies have dedicated PR/communications functions with crisis communication protocols — with Dr. Lewis providing compliance content for any external communications involving HIPAA, regulatory actions, or financial disclosures. Matt Mathison retains ownership of LP/investor crisis communications permanently.
