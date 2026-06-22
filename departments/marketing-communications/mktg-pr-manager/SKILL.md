---
name: mktg-pr-manager
description: "Manage public relations and media strategy for MBL Partners portfolio entities. Use when the user says 'PR', 'public relations', 'press release', 'media relations', 'media outreach', 'journalist', 'reporter', 'press coverage', 'media coverage', 'news announcement', 'press inquiry', 'media inquiry', 'media pitch', 'pitch a reporter', 'get press coverage', 'earned media', 'press strategy', 'brand PR', 'media strategy', 'news distribution', 'wire service', 'PR wire', 'BusinessWire', 'PR Newswire', 'announcements', 'new hire announcement', 'partnership announcement', 'funding announcement', 'acquisition announcement', 'media list', 'press kit', 'press room', 'PR calendar', 'PR report', 'media coverage report', or 'handle a media inquiry'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--type <press-release|pitch|inquiry-response|announcement>] [--action <draft|plan|send|manage>]"
---

# Marketing PR Manager

Manage public relations and media strategy for MBL Partners portfolio entities — building earned media relationships, managing press inquiries, and producing announcements that build market credibility. At portfolio company scale, PR is selective: quality announcements in the right publications outperform volume; and a mishandled press inquiry can damage relationships that took years to build. Every external statement is a brand statement.

## When to Use
- An entity has a significant announcement (acquisition; new product; leadership; award; funding)
- A reporter or journalist makes an inquiry about an entity or MBL Partners
- Building a media list and proactive PR program for an entity
- Reviewing what PR activity is appropriate given the current business situation

## PR Management Framework

```
PR PRIORITY BY ENTITY AND SITUATION:

  STANDARD PR TRIGGERS (by entity):
    MBL Partners: acquisition announcements; portfolio exits; Matt Mathison speaking placement
    Allevio: employer partnership announcements; key hire announcements; award recognition; care coordination thought leadership placements
    Column6: programmatic performance reports; IAB certifications; key agency partnership announcements; industry award placements
    HIVE Partners: minimal active PR; Basin operations updates through direct landowner communication (not press); major production milestones only
    
  PR THAT REQUIRES CAUTION:
    Any announcement about pending deals (M&A; fundraising) — only after closing
    Any Allevio announcement referencing member health outcomes — HIPAA review by Dr. Lewis required
    Any HIVE announcement about production data — confirm no commercially sensitive information
    Any announcement involving specific client or employer names — confirm written permission
    
  MEDIA OUTLETS BY ENTITY:
    MBL Partners: ACG; private equity trade publications; local Arizona business press; Bloomberg (if deal size warrants)
    Allevio: MGMA publications; Healthcare Dive; Fierce Healthcare; Arizona business press; SHRM publications
    Column6: AdExchanger (tier 1 for programmatic); Digiday; Campaign US; MediaPost; TV Tech (CTV)
    HIVE: Oil and Gas Journal; Hart Energy; Utah Business; local Utah energy press

PRESS RELEASE STRUCTURE:
  Headline: [Entity] [verb] [specific news] — [benefit/outcome if relevant]
  Subheadline: optional; elaborates on headline
  Dateline: City, State, Date —
  Lede (first paragraph): who; what; when; where; why — in 2-3 sentences
  Body: supporting details; quote from Matt Mathison / entity CEO; proof points
  Boilerplate: standard "About [Entity]" paragraph; approved by entity CEO
  Contact: media contact name; email; phone
  
  Quote standards:
    CEO quote: entity CEO provides; Dr. Lewis drafts and CEO approves
    Matt Mathison quote (MBL Partners): Matt provides or approves; Dr. Lewis drafts
    Quotes are specific, not generic: "We're excited to announce..." is not a Matt Mathison quote
    Matt quote should reflect THRIVE values and MBL operational philosophy
    
PRESS INQUIRY PROTOCOL:
  Any press inquiry to any entity employee → routed to Dr. Lewis within 2 hours
  Dr. Lewis + entity CEO assess: what is the reporter asking? What is the publication? What's the angle?
  Response options: (1) grant interview; (2) provide statement only; (3) decline with brief explanation; (4) refer to MBL Partners
  Matt Mathison notified before any MBL Partners or significant entity interview is granted
  Allevio: any press inquiry about patient care, member health, or clinical outcomes → Dr. Lewis + Allevio CEO assess HIPAA implications before any response; legal involved if PHI is alleged or requested
  No entity employee speaks to press without authorization from entity CEO + Dr. Lewis

HIPAA AND PRESS:
  Allevio press: no member health information in any press release or media interview
  If a reporter asks for patient stories or member outcomes: Dr. Lewis + legal assess
  Aggregate employer data (non-member): may be shareable with entity CEO approval
  Member testimonials: require explicit HIPAA-compliant written consent; reviewed by legal before use
```

## Output Format

```markdown
# Press Release — [Entity] — [Announcement]
**Distribution:** [Wire service / Direct / Internal only]
**Date:** [Embargo date / Release date] | **Approved by:** [Entity CEO] + [Matt Mathison if MBL]

---

FOR IMMEDIATE RELEASE
[Date]

**[HEADLINE — Entity verbs news]**
*[Optional subheadline]*

[City, State] — [Lede: who, what, when, where, why in 2-3 sentences]

[Supporting paragraph: details; proof; context]

"[Quote from entity CEO — specific, reflects personality and THRIVE values]" said [Name], [Title].

[Additional paragraph if needed]

###

**About [Entity]:**
[Approved boilerplate — 3-4 sentences]

**Media Contact:**
[Name] | [Title] | [Email] | [Phone]

---

**INTERNAL NOTES (not for distribution):**
HIPAA review: [Dr. Lewis — date] / [N/A]
Sensitive items: [any data, client names, or claims that need fact-check before distribution]
Embargo: [until what date/time]
Distribution list: [wire service; journalists directly; internal only]
```

## Output Contract
- Nothing goes to press without entity CEO approval — a press release, a response to a media inquiry, a social post tagged "press release" — all require entity CEO sign-off before any external communication; Dr. Lewis does not issue press communications on behalf of an entity without the entity CEO's explicit approval (and Matt Mathison's approval for MBL Partners announcements); this is not about bureaucracy — it is about ensuring the entity's leader controls their company's public narrative; a surprise press release creates internal trust problems even if the announcement is positive
- HIPAA review for Allevio press is non-negotiable — a reporter asking Allevio about patient outcomes or member health results is a HIPAA-sensitive interaction; Dr. Lewis responds to any such inquiry before the entity does; the default response to any press inquiry about Allevio member health is "we can discuss aggregate employer outcomes under appropriate disclosure" — not "let me connect you with a member success story"; patient stories are not used in press materials without explicit, HIPAA-compliant consent reviewed by legal
- Press inquiries are not ignored — even a "no comment" or a "we're not discussing this" is a response; an ignored press inquiry creates a gap that a reporter fills with whatever they can find; Dr. Lewis responds to all press inquiries within 4 business hours (even if just to say "I'll get back to you by [date]"); the actual response is assessed and approved with the entity CEO, but the acknowledgment is immediate; a reporter on a deadline who doesn't hear from you writes the story without you
- HITL required: press release → entity CEO approves; MBL Partners → Matt Mathison approves; Allevio health content → Dr. Lewis HIPAA review; press interviews → Dr. Lewis + entity CEO authorize; Matt Mathison interviews → Dr. Lewis + Matt agree; media inquiry response → entity CEO reviews before Dr. Lewis responds; legal involvement (Allevio PHI allegation) → entity CEO + legal notified same day

## System Dependencies
- **Reads from:** mktg-brand-voice-manager (press release voice matches entity brand voice); mktg-messaging-matrix (press release messaging carries L3 claims); mktg-thought-leadership-planner (PR pitches coordinated with speaking opportunities); mktg-crisis-communicator (if press inquiry is crisis-related — route immediately)
- **Writes to:** Press releases (SharePoint → Marketing → PR → [Entity] → [Year]); press media list (per entity); wire distribution (if applicable); media inquiry log (date; outlet; reporter; topic; response; outcome); entity CEO and Matt Mathison notification records
- **HITL Required:** Press release → entity CEO; MBL Partners → Matt Mathison; Allevio HIPAA → Dr. Lewis; press interviews → Dr. Lewis + entity CEO; Matt interviews → Matt + Dr. Lewis agree; media inquiry response → entity CEO reviews; legal (Allevio PHI) → entity CEO + legal

## Test Cases
1. **Golden path:** Column6 announces IAB certification for brand safety standards. Press release drafted: "Column6 Achieves IAB Brand Safety Certification — CTV and Programmatic Platform Validates Inventory Quality Standards." Column6 CEO provides quote: "This certification is external validation of what our agency partners experience every campaign — Column6's inventory meets the highest standards for brand safety and IVT compliance." Column6 CEO approves. Distributed to AdExchanger (direct pitch) + PR Newswire. AdExchanger publishes 3-paragraph mention. Outcome: 2 inbound agency inquiries citing the article.
2. **Edge case:** A healthcare industry reporter asks Allevio about their member health outcomes for a story on employer benefits ROI → Dr. Lewis response (same day): "Thank you for reaching out. Allevio works with employers to improve benefits outcomes — I'd be glad to discuss aggregate employer-level results under appropriate context. Patient-specific or member-level information is protected health information and we do not share it in any form. Let me set up a call with our CEO to discuss what we can share that would be useful for your story. What's your deadline?" [Then: Dr. Lewis + Allevio CEO assess; legal review if reporter presses for member data; no interview granted without this process.]
3. **Adversarial:** A local Arizona reporter publishes a story about a former Allevio employee's complaint without contacting Allevio first → Dr. Lewis: "First, do not respond publicly or emotionally. Second: read the article carefully — is there any PHI exposure? Any factual inaccuracy? Third: consult legal about whether a formal correction request is appropriate. Fourth: determine if the former employee complaint is factually grounded — if it has merit, it's an HR issue we address internally; if it's inaccurate, legal can assess our options. Fifth: prepare a factual, calm response for any media follow-up inquiries. I brief Allevio CEO and Matt Mathison within 24 hours. This is also a crisis comms situation — see mktg-crisis-communicator."

## Audit Log
Press releases retained permanently. Media inquiry log retained (date; outlet; reporter; topic; response; outcome). Entity CEO approval records. HIPAA review records (Allevio). Matt Mathison approval records (MBL Partners). Legal consultation records (Allevio PHI inquiries). Interview authorization records.

## Deprecation
Media list reviewed semi-annually. Boilerplate text reviewed annually or when entity description changes. PR protocol reviewed when entity leadership changes. HIPAA press protocol updated when HIPAA regulations change. Press release template updated when brand standards change.
