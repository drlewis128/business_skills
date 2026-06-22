---
name: mktg-creative-brief-writer
description: "Write creative briefs for marketing projects across MBL Partners portfolio entities. Use when the user says 'creative brief', 'write a brief', 'project brief', 'design brief', 'content brief', 'campaign brief', 'ad brief', 'video brief', 'creative direction', 'briefing the designer', 'briefing the agency', 'briefing the writer', 'brief for this project', 'brief for the creative team', 'what should the designer know', 'scope for this design', 'spec for this content', 'brief for the landing page', 'brief for the email', 'brief for the event materials', 'brief for the brochure', 'brief for the one-pager', 'brief for the pitch deck', 'brief for the social campaign', 'brief for the video', 'give the creative team direction', or 'what are we making and why'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|north-vista>] [--deliverable <landing-page|email|video|one-pager|social|event|pitch-deck>] [--audience <employers|agencies|landowners|lps|market>]"
---

# Marketing Creative Brief Writer

Produce clear, complete creative briefs that give designers, writers, agencies, and internal contributors everything they need to execute marketing projects for MBL Partners portfolio entities — without a discovery meeting. A bad brief produces multiple revisions, wrong creative direction, wasted vendor time, and missed deadlines. A good brief is the most leveraged document in any marketing project.

## When to Use
- Beginning any new marketing creative project (design, copy, video, campaign asset)
- Briefing an external agency or freelancer
- Briefing an internal designer, writer, or ops team member
- Aligning stakeholders on scope and creative direction before execution

## Creative Brief Framework

```
BRIEF COMPONENTS (all required):

  1. CONTEXT (what and why):
     Project name; entity; due date; budget (if applicable)
     Business objective this project serves (not the creative objective — the business one)
     Why now? What changes without this asset?
     
  2. AUDIENCE (who):
     Primary audience: who is this for? (one person described specifically)
     Example: "HR Director at a 150-person Arizona-based manufacturing company; $3M payroll;
               benefits costs rising; currently using an EAP that employees rarely use"
     Secondary audience: who else might see it?
     What does the audience currently believe? (starting mental state)
     What should they believe after seeing this? (desired mental state shift)
     
  3. SINGLE COMPELLING MESSAGE (the one thing):
     If the audience remembers one thing from this creative, what must it be?
     Forces clarity — if you can't write this in one sentence, the brief isn't ready
     
  4. MANDATORY INCLUSIONS:
     Brand elements: logo; color palette; font; legal disclaimers
     Compliance requirements: HIPAA (Allevio); legal review (HIVE mineral rights); brand approvals
     Contact/CTA: what should the audience do next?
     
  5. MANDATORY EXCLUSIONS:
     What must NOT be included (competitor names; claims we can't support; sensitive information)
     For Allevio: no member health data; no PHI; no clinical outcomes for individuals
     For HIVE: no specific well production data that is commercially sensitive
     For Column6: no advertiser campaign data without client permission
     
  6. FORMAT AND DELIVERABLES:
     What format(s) are needed? (PDF; JPEG; HTML; MP4; PPTX)
     Dimensions (for visual assets): exact pixel or inch specifications
     Length (for copy): word count; minutes for video
     Versions needed: (1 primary + how many variations?)
     
  7. TIMELINE AND MILESTONES:
     Due date (hard or soft)
     Review milestone (when does Dr. Lewis / entity CEO review before final?)
     HIPAA review milestone (Allevio — required before publication)
     
  8. APPROVAL CHAIN:
     Who must approve before publication?
     Allevio: Dr. Lewis HIPAA review → entity CEO → publication
     Column6: marketing lead → entity CEO → publication
     HIVE: entity CEO → publication
     MBL Partners: Dr. Lewis → Matt Mathison → publication
     
  9. EXAMPLES AND INSPIRATION:
     2-3 examples of creative the stakeholder thinks is on-brand (with brief note on WHY)
     What NOT to look like (equally useful)
     
  10. SUCCESS METRICS:
      How will we know this asset performed?
      Example: "Landing page: >3% form completion rate in first 30 days"

ENTITY-SPECIFIC BRIEF RULES:

  ALLEVIO:
    Must include HIPAA check in timeline before any publication
    No PHI in any creative — brief must explicitly state this constraint to the creative team
    Member-facing: plain language (8th grade); empathetic; actionable
    Employer-facing: data-forward; ROI-first; professional
    Clinical claims: medical review required before publication
    
  COLUMN6:
    Agency-facing: precision; data; no jargon
    Campaign reports: actual client data requires client permission to use externally
    Brand safety language: standard on all B2B materials
    
  HIVE:
    Landowner materials: relationship tone; local feel; not corporate
    LP materials: financial-first; no promotional language
    Environmental claims: factual only; DOGM reference for compliance claims
    
  MBL PARTNERS:
    LP/investor materials: Dr. Lewis + Matt Mathison review before publication
    Deal sourcing materials: no portfolio company names unless explicitly approved
```

## Output Format

```markdown
# Creative Brief — [Project Name] — [Entity]
**Date:** [Date] | **Due:** [Due date] | **Prepared by:** [Name]

---

## Context
**Project:** [Name and 1-sentence description]
**Business objective:** [The business result this drives — not "make a good design"]
**Budget:** $[X] (or "internal — no external spend")

---

## Audience
**Primary:** [Specific person description — job title, company context, pain point]
**Starting belief:** [What they think NOW, before seeing this]
**Desired shift:** [What they should believe AFTER seeing this]

---

## The One Thing
> [Single sentence — if they remember nothing else, this is it]

---

## Mandatory Inclusions
- [ ] Logo version: [primary / reverse / horizontal]
- [ ] Color palette: [entity palette]
- [ ] CTA: [Exact CTA text and destination]
- [ ] Legal/compliance: [list any required disclosures]
- [ ] Contact info: [if applicable]

---

## Mandatory Exclusions
- [What must NOT appear]
- [HIPAA: no PHI / no member-specific health data] (Allevio only)

---

## Deliverables
**Format:** [File type(s)]
**Dimensions/length:** [Exact specs]
**Versions:** [Primary + any variations]

---

## Timeline
- [ ] First draft due: [Date]
- [ ] Dr. Lewis / stakeholder review: [Date]
- [ ] HIPAA review (if Allevio): [Date — before final]
- [ ] Entity CEO approval: [Date]
- [ ] Final delivery: [Date]

---

## Approval Chain
[Entity-specific approval chain from framework]

---

## Examples and Inspiration
1. [Link or description + what to take from it]
2.
3.
**NOT like:** [Description of what to avoid]

---

## Success Metric
[How we'll know this worked — specific and measurable]
```

## Output Contract
- The "one thing" is not optional — a brief without a single most important message produces creative that tries to say everything and communicates nothing; if a stakeholder can't identify the one thing they need the audience to walk away with, the brief meeting is not over; Dr. Lewis will ask "if they only see three words, which three words must they see?" until the stakeholder can answer clearly; for Allevio employer briefs the one thing is almost always financial ("reduced claim cost"); for Column6 agency briefs it is almost always measurement accountability
- The approval chain is written into the brief before creative starts — the most common cause of last-minute revision rounds is a stakeholder who wasn't identified in the brief showing up with feedback after the creative is 95% done; Dr. Lewis ensures every brief names every approver, in order, with dates; Allevio adds a HIPAA review step that cannot be removed even under deadline pressure; a brief that skips the HIPAA step is not a valid brief for Allevio
- Mandatory exclusions are as important as mandatory inclusions — telling a designer or writer what NOT to do is as valuable as what to do; for Allevio, "no PHI, no member health outcomes, no clinical claims" in the exclusions section protects the entity from HIPAA violations in creative work; for Column6, "no competitor references by name" in exclusions avoids competitive legal risk; for HIVE, "no specific well production data" in exclusions protects commercial sensitivity; exclusions without enforcement are theater — Dr. Lewis reviews all final creative against the exclusions list before approval
- HITL required: brief sign-off before creative starts → Dr. Lewis for all Allevio projects (HIPAA review); entity CEO briefs for all external-facing materials; creative before publication → approval chain executed in full; Dr. Lewis spot-review on HIVE LP materials; Matt Mathison on MBL Partners external materials

## System Dependencies
- **Reads from:** mktg-brand-strategist (brand positioning inputs — brief must reflect brand strategy); mktg-messaging-matrix (the one thing must come from the L2/L3 message hierarchy); mktg-brand-voice-manager (tone direction for the creative team); entity CEO strategic priorities (business objective must align)
- **Writes to:** Creative brief (SharePoint → Marketing → Briefs → [Entity] → [Project]); creative team or agency brief delivery; approval chain calendar invitations
- **HITL Required:** Brief approval → Dr. Lewis (Allevio) / entity CEO (all external); HIPAA review → Dr. Lewis before publication (Allevio); entity CEO final approval; MBL Partners → Dr. Lewis + Matt Mathison; creative against exclusions list → Dr. Lewis

## Test Cases
1. **Golden path:** Allevio needs a landing page for employer lead generation. Brief: One thing: "Allevio reduces your claim ratio." Audience: HR Director, 100-500 employee Arizona company, rising benefits costs. Mandatory exclusion: no PHI; no member health data; no clinical outcomes. Deliverables: 1 HTML page; desktop + mobile. Timeline: draft in 7 days; Dr. Lewis HIPAA review in 10 days; Allevio CEO approval in 12 days; launch in 14 days. Success metric: >3% form completion (name + company + email) in first 30 days.
2. **Edge case:** Stakeholder provides 12 "must have" messages for a single email → Dr. Lewis: "An email with 12 messages communicates nothing. I'm going to help you identify the one that moves the needle most for this audience. The other 11 go into the drip sequence — message 2, message 3, etc. Which single message would make this reader forward the email to their CFO?"
3. **Adversarial:** Agency comes back with creative that uses a patient testimonial about a specific health condition for Allevio materials → Dr. Lewis: "Stop. This fails the mandatory exclusions immediately. No patient health information — this is HIPAA. The creative is pulled. We go back to brief stage: the brief clearly stated no PHI, no member health outcomes, no clinical specifics. I need to understand how this got into the creative draft and fix the brief review process so it doesn't happen again. No version of this creative gets published."

## Audit Log
All creative briefs retained with version history. HIPAA mandatory exclusions compliance records (Allevio). Approval chain execution records. Creative-against-exclusions review records. Brief revision records (what changed and why). Matt Mathison approval records (MBL Partners).

## Deprecation
Brief template reviewed annually. HIPAA exclusion language updated when HIPAA regulations change. Approval chain updated when entity leadership changes. Template deprecated with marketing ops approval.
