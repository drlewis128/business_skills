---
name: mktg-crisis-communicator
description: "Manage crisis communications for MBL Partners portfolio entities. Use when the user says 'crisis', 'crisis communication', 'crisis response', 'reputation management', 'negative press', 'bad press', 'media crisis', 'PR crisis', 'reputational risk', 'PR fire', 'emergency communication', 'negative review', 'negative social media', 'social media crisis', 'company crisis', 'employee crisis', 'data breach communication', 'breach notification', 'HIPAA breach', 'HIPAA notification', 'client complaint goes public', 'class action', 'lawsuit announcement', 'employee misconduct', 'executive misconduct', 'hostile media inquiry', 'aggressive reporter', 'hold statement', 'holding statement', 'no comment', 'crisis press release', 'crisis message', 'what do we say', 'company controversy', 'entity controversy', or 'something is about to blow up'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--crisis-type <hipaa-breach|data-incident|employee-misconduct|media-attack|social-media|legal|operational>] [--urgency <immediate|4-hours|24-hours>]"
---

# Marketing Crisis Communicator

Manage communications response to crises affecting MBL Partners portfolio entities — providing rapid assessment, holding statement issuance, stakeholder communication, and media response coordination. Crisis communications is not PR — it is damage containment. Speed, accuracy, and consistency of message are the three variables that determine whether a crisis becomes a major event or a manageable incident.

## When to Use
- A media inquiry arrives on a sensitive topic (legal; employee; operations; financial)
- A HIPAA breach notification obligation is triggered
- Negative press, social media, or client complaint reaches public visibility
- An employee or executive incident creates reputational risk
- An operational failure creates stakeholder communication obligations

## Crisis Communication Framework

```
CRISIS TRIAGE (first 15 minutes):

  ASSESSMENT:
    1. What happened? (factual summary — what do we actually know?)
    2. Who is affected? (customers; employees; LPs; landowners; regulators)
    3. Is it public yet? (press; social media; regulator notification already triggered?)
    4. What is the legal and regulatory exposure? (HIPAA; SEC; employment law; contract)
    5. Who needs to know RIGHT NOW?
    
  SEVERITY CLASSIFICATION:
    Level 1 — IMMEDIATE (Dr. Lewis + entity CEO + legal within 1 hour):
      Active HIPAA breach with PHI exposure
      Active data breach affecting client or employee data
      Criminal allegation against executive or entity
      Active litigation going public
      Operational failure with safety implications
      
    Level 2 — URGENT (Dr. Lewis + entity CEO within 4 hours):
      Negative press story breaking or imminent
      Public social media complaint from employer/agency client going viral
      Employee misconduct claim with media interest
      Regulatory inquiry (DOGM; CMS; FTC) that may become public
      
    Level 3 — MANAGED (Dr. Lewis + entity CEO within 24 hours):
      Negative online review or social post (single; not viral)
      Employee complaint not yet in public channels
      Competitor disinformation (false claims about entity)

HIPAA BREACH PROTOCOL (ALLEVIO — LEVEL 1):
  Triggered by: unauthorized access to PHI; accidental PHI disclosure; PHI theft
  Dr. Lewis notified IMMEDIATELY (same as awareness)
  Allevio CEO notified IMMEDIATELY (same call)
  Matt Mathison notified within 1 hour
  Legal engaged within 2 hours
  Internal investigation begins: scope; affected individuals; breach cause
  Notification timeline (HIPAA requirement):
    HHS notification: within 60 days of discovery (if ≥500 individuals: media notice required in addition)
    Individual notification: without unreasonable delay; within 60 days
    Business Associate involved: BA notifies Covered Entity (Allevio) without unreasonable delay
  Dr. Lewis does NOT draft public HIPAA breach notification without legal review
  No external communication about the breach without legal sign-off

HOLDING STATEMENT PROTOCOL:
  When: before full facts are known; before response is approved; to buy time without appearing evasive
  Template: "We are aware of [situation/inquiry]. We take [topic] seriously and are investigating to understand the facts. We will share more information as it becomes available. In the meantime, our commitment to [relevant value] remains unchanged. [Contact for press: name; email]"
  Holding statement does NOT: admit fault; make promises that may be false; give specific facts not yet confirmed
  Holding statement IS NOT: "no comment" (creates impression of hiding)
  Distribution: Dr. Lewis + entity CEO approve holding statement text before any send; Matt Mathison notified before MBL Partners holding statement is issued

CRISIS RESPONSE PRINCIPLES:
  1. Speed: first public response within 2 hours of public exposure; even if it's only a holding statement
  2. Accuracy: never speculate; only state confirmed facts; say "we're investigating" not "it wasn't us"
  3. Consistency: one spokesperson; one message; no contradictions between channels
  4. Accountability (if warranted): when entity is at fault, acknowledge clearly; add corrective action commitment; no hedging
  5. Never speculate, never lie, never hide: all three create worse crises when discovered
  6. THRIVE Integrity: if the entity did something wrong, say so. THRIVE Integrity is the crisis communication standard — Truth first.

SPOKESPERSON BY ENTITY:
  MBL Partners: Matt Mathison (primary); Dr. Lewis (if technical/AI topic); no other spokesperson
  Allevio: Allevio CEO (primary); Dr. Lewis (if HIPAA/AI topic); no clinical staff as spokesperson
  Column6: Column6 CEO (primary); no commercial staff as spokesperson
  HIVE Partners: HIVE CEO (primary); no operational staff as spokesperson
  ALL: employees are NOT authorized spokespersons; media inquiries from employees → route to entity CEO + Dr. Lewis
```

## Output Format

```markdown
# Crisis Communication Plan — [Entity] — [Incident Type] — [Date]
**Severity:** Level 1 / 2 / 3
**Status:** [Active investigation / Resolved / Monitoring]
**Spokesperson:** [Name]
**Dr. Lewis notified:** [Date/time] | **Entity CEO notified:** [Date/time]
**Legal engaged:** [Date/time — Level 1 mandatory]

---

## Situation Summary (factual; no speculation)
**What happened:** [Confirmed facts only]
**Who is affected:** [Stakeholder groups]
**Is it public:** [Yes/No/Imminent]
**Legal/regulatory triggers:** [HIPAA; SEC; other]

---

## Holding Statement
> [Approved holding statement text — entity CEO + Dr. Lewis approved]
**Issued:** [Date/time] | **To:** [Press / Internal / Social]

---

## Communication Stakeholders

| Stakeholder | Message | Channel | By when | Owner |
|------------|---------|---------|---------|-------|
| Employees | | Internal email | | Entity CEO |
| Clients/Employers | | Phone + email | | Entity CEO |
| Matt Mathison | | Phone | ASAP | Dr. Lewis |
| Legal | | Phone | ASAP | Dr. Lewis |
| Press | Holding statement | Email | <2hr | Dr. Lewis |
| LPs (if material) | | Phone | <24hr | Matt Mathison |

---

## HIPAA Breach Notification Plan (Allevio only)
- [ ] Scope confirmed: [# affected individuals / records]
- [ ] Legal review: [Date]
- [ ] HHS notification due: [60 days from discovery]
- [ ] Individual notification due: [60 days from discovery]
- [ ] Media notice required (≥500 individuals): [Yes/No]

---

## Resolution Timeline
**Investigation complete by:** [Date]
**Final communication by:** [Date]
**Post-crisis review:** [Date]
```

## Output Contract
- Dr. Lewis is the first call in any MBL portfolio crisis — Dr. Lewis's role is not to manage the crisis himself but to triage it, engage the right people immediately, and ensure communications are coordinated; entity CEOs are not expected to manage media relations alone; Dr. Lewis stands between the entity CEO and the press/regulators in the first hours of a crisis; entity CEO makes decisions; Dr. Lewis coordinates execution and communication; Matt Mathison is notified within 1 hour of any Level 1 or 2 crisis across any portfolio entity
- HIPAA breach communications have legal deadlines — unlike PR crises where the timeline is driven by media cycles, a HIPAA breach has federal notification requirements with specific deadlines (60 days; immediate notification if ≥500 individuals); Dr. Lewis knows these deadlines and tracks them from the moment of discovery; no HIPAA breach communication goes to regulators, affected individuals, or media without legal review; Dr. Lewis's job in a HIPAA breach is to coordinate the timeline and keep everyone honest about deadlines — not to draft the final legal notification himself
- The holding statement buys time and costs nothing in credibility — "we are aware and investigating" is not a capitulation; it is a professional signal that the entity is taking the situation seriously without speculating about facts it doesn't have yet; an entity that says nothing in the first 4 hours signals either incompetence or concealment; a holding statement signals responsiveness and control; Dr. Lewis has a holding statement template ready for each entity that can be adapted in under 15 minutes for any Level 1 or 2 crisis
- HITL required: all crisis communications → Dr. Lewis + entity CEO approve before any external send; HIPAA breach notification → legal reviews before any external send; holding statement → Dr. Lewis + entity CEO approve text; Matt Mathison notification (Level 1/2) → Dr. Lewis notifies within 1 hour; media interview → Dr. Lewis + entity CEO authorize; LP notification (material event) → Matt Mathison approves; final response (after investigation) → entity CEO + legal approve; MBL Partners → Matt Mathison final approval

## System Dependencies
- **Reads from:** mktg-pr-manager (if crisis involves media inquiry — coordination with PR response); hr-investigation-manager (if crisis involves employee misconduct — HR and communications must coordinate; no public communication before HR investigation is scoped); hr-termination-manager (if executive termination is part of crisis response); pe-portfolio-monitor (if crisis has LP implications)
- **Writes to:** Crisis communication plan (SharePoint → [Entity] → Crisis Comms → [Date-Incident]); holding statement (email to press; entity website if needed); HIPAA breach notification log (SharePoint → Allevio → Legal → HIPAA Incidents); internal communication (entity all-staff email); Matt Mathison briefing record; legal consultation record
- **HITL Required:** All external comms → Dr. Lewis + entity CEO; HIPAA breach → legal reviews; holding statement → Dr. Lewis + entity CEO; Matt Mathison notification → Dr. Lewis (1 hour); LP notification → Matt Mathison; final response → entity CEO + legal; MBL Partners comms → Matt Mathison

## Test Cases
1. **Golden path:** Column6 receives an aggressive media inquiry from AdExchanger: "We've heard from sources that Column6's IVT rates are significantly worse than reported. Will you comment?" Dr. Lewis classification: Level 2 (negative press imminent). Dr. Lewis + Column6 CEO confer in 2 hours. Holding statement issued: "Column6 takes measurement accuracy seriously. We stand behind our IVT rates, which are validated by [third-party tool]. We'll respond with detailed data within 24 hours." Internal: Dr. Lewis requests full IVT audit from operations. At 24 hours: Column6 CEO provides on-record data comparison; Dr. Lewis reviews for accuracy before send. Outcome: story ran but included Column6 data response, tempering the negative framing.
2. **Edge case:** HIVE landowner calls a local news station claiming HIVE operations damaged their land without compensation → Dr. Lewis: "Level 2 crisis. I'll contact the HIVE CEO immediately — before the news station calls us. HIVE CEO calls the landowner within 2 hours; understand the complaint; document the interaction. I'll prepare a holding statement for the news station if they call: 'HIVE takes landowner relationships seriously. We're in direct contact with the landowner to understand their concern and will address it appropriately.' No public defense until we understand the facts. If the claim has merit, we address it — THRIVE Integrity."
3. **Adversarial:** A social media post claims an Allevio care coordinator disclosed a patient's health condition to a third party — post is gaining traction on LinkedIn → Dr. Lewis: "Level 1. HIPAA allegation. Immediate: (1) Dr. Lewis + Allevio CEO on the phone NOW; (2) legal engaged within 2 hours; (3) DO NOT respond to the social media post until legal has reviewed the allegation; (4) holding statement issued via Dr. Lewis if press inquiries come: 'We are aware of this matter and are investigating immediately. Patient privacy is our highest obligation and we take any allegation of PHI disclosure with the utmost seriousness.'; (5) internal HR investigation scoped; (6) Matt Mathison notified; (7) determine if HIPAA breach notification is triggered — if PHI was disclosed, the clock starts now."

## Audit Log
Crisis communication plans retained permanently. Holding statements retained. Media inquiry log retained. HIPAA breach notification records (Allevio — permanently retained per HIPAA requirements). Legal consultation records. Matt Mathison notification records. Post-crisis review records. All external communications during crisis period retained.

## Deprecation
Crisis communication protocol reviewed annually or after any Level 1 event. HIPAA breach protocol updated when HIPAA regulations change. Spokesperson designations updated when leadership changes. Holding statement templates updated when entity description or contact information changes.
