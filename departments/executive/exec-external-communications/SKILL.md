---
name: exec-external-communications
description: "Draft and manage MBL Partners external communications — press releases, public statements, regulatory responses, and partner announcements. Use when the user says 'press release', 'external communication', 'public statement', 'announcement', 'regulatory response', 'write a press release', 'draft an announcement', 'external announcement', 'partner announcement', 'acquisition announcement', 'portfolio company announcement', 'media statement', 'official statement', 'external letter', 'communication to the market', 'response to press inquiry', 'regulatory filing communication', 'public-facing communication', 'news release', 'investor announcement', 'LP announcement', or 'announce the deal'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--type <press-release|statement|announcement|letter|regulatory-response>] [--entity <MBL|Allevio|HIVE|Column6>] [--audience <media|LP|regulator|partner|public>] [--clearance <Matt-required|entity-CEO>]"
---

# Exec External Communications

Draft and manage external communications for MBL Partners and its portfolio companies — creating press releases, public statements, regulatory responses, and partner announcements that represent the MBL voice accurately, protect brand reputation, and communicate only what is authorized for external use. External communications carry permanent risk: once sent, they cannot be unsent. Every external communication requires explicit clearance before delivery.

## When to Use
- An M&A close needs a deal announcement (to partners, market, or press)
- A portfolio company has a significant event requiring public acknowledgment
- A regulatory inquiry or filing requires written response
- Matt Mathison wants to make a public statement about MBL strategy or direction
- A partner or vendor relationship event needs a formal communication

## External Communications Framework

```
EXTERNAL COMMUNICATION TYPES AND CLEARANCE LEVELS:

  Type 1 — Press Release (media distribution):
    Clearance: Matt Mathison final approval; legal review if deal-related
    Format: AP style; inverted pyramid; boilerplate at end
    Lead paragraph: the most important fact (not "MBL Partners is pleased to announce...")
    Distribution: PR wire, direct media, or limited-distribution (LP-only) depending on purpose
    
  Type 2 — Partner/Stakeholder Announcement:
    Clearance: Matt Mathison + entity CEO for portfolio company events
    Format: letter-style; professional but not stiff; signed by the appropriate leader
    Distribution: targeted (specific partner list; specific stakeholder group)
    
  Type 3 — Regulatory Response:
    Clearance: Matt Mathison + legal counsel (mandatory — never respond to regulatory inquiry
      without legal review)
    Format: formal letter; response-specific format as required by the agency
    Distribution: directly to the regulating body; copy to legal file
    
  Type 4 — LP / Investor Communication (special event — not quarterly report):
    Clearance: Matt Mathison (all LP communications)
    Format: professional letter; Matt Mathison signature; MBL letterhead
    See exec-investor-relations and exec-lp-reporting for the routine variants

PRE-CLEARANCE CHECKLIST (before any external communication is drafted):

  □ What is the purpose of this communication? (What action do we want the audience to take?)
  □ Who is the audience? (Be specific — not "partners" but which partners)
  □ What is authorized for disclosure? (Any deal information, financial data, personnel information)
  □ What is NOT authorized? (Pending regulatory matters; unconfirmed deal terms; LP-confidential data)
  □ Is legal counsel review required? (Required for: regulatory; deal announcements; anything that
    makes factual claims about a third party; anything that could affect stock/equity valuation)
  □ Who signs this communication?
  □ What is the authorization chain? (Dr. Lewis drafts → entity CEO reviews → Matt Mathison approves)

PRESS RELEASE STRUCTURE:

  Headline: [Company Name] [verb] [what happened] — specific, no buzzwords
  Subheadline (optional): One sentence of additional context
  
  Paragraph 1 (lead): City, Date — The most important fact in one sentence.
    What happened? Who? What does it mean?
    Bad: "MBL Partners is excited to announce the acquisition of..."
    Good: "MBL Partners has acquired Allevio Health, an Arizona-based managed service organization
      serving 12 employer groups across the Phoenix metropolitan area."
    
  Paragraph 2: Context and significance
    Why does this matter? What problem does it solve? What does it enable?
    
  Paragraph 3: Quote from Matt Mathison or entity CEO
    Quotes in press releases must be approved verbatim by the person quoted.
    One sentence max. No corporate speak.
    Good: "Allevio's clinical infrastructure gives us a platform to deliver measurable health
      outcomes for employer groups who have been underserved by traditional insurance models."
    
  Paragraph 4 (if applicable): Quote from the other party (if joint announcement)
  
  Paragraph 5: Additional context / metrics if relevant
  
  Boilerplate: About MBL Partners (standard; updated quarterly)
  Contact: Media contact information (Dr. Lewis unless Matt Mathison has designated someone else)

RESPONSE TO MEDIA INQUIRY:
  MBL does NOT have a standing media engagement policy.
  Default: direct all media inquiries to Dr. Lewis → Dr. Lewis routes to Matt Mathison.
  Matt Mathison makes the decision to engage or decline.
  If declining: "MBL Partners doesn't comment on [topic]. If you'd like to discuss
    our portfolio strategy generally, I'm happy to help set up a conversation."
  NO employee or entity CEO speaks to media without Matt Mathison explicit authorization.
```

## Output Format

```markdown
# External Communication Draft — [Type] — [Entity] — [Date]
**Purpose:** [One sentence — what this communication is intended to accomplish]
**Audience:** [Specific audience]
**Clearance required:** [Matt Mathison / Entity CEO / Legal / All]
**Authorization status:** [DRAFT — pending clearance / CLEARED — ready to send / SENT]

---

## Draft

[HEADLINE / SUBJECT LINE]

[Body of the communication — formatted per type above]

---

## Pre-Clearance Checklist

- [x] Purpose clear: [Yes / No]
- [x] Audience specific: [Who exactly]
- [ ] Legal review required: [Yes → pending / No]
- [ ] Matt Mathison approved: [Yes / Pending / N/A]
- [ ] Entity CEO approved: [Yes / Pending / N/A]
- [ ] Boilerplate current: [Verified date]
- [ ] Confidential information excluded: [Verified]

---

## Clearance Log

| Reviewer | Date | Status | Notes |
|---------|------|--------|-------|
| Dr. Lewis (draft) | [Date] | DRAFTED | Initial draft |
| [Entity CEO] | [Pending] | PENDING | — |
| Matt Mathison | [Pending] | PENDING | Final approval |
```

## Output Contract
- No external communication sends without Matt Mathison explicit approval — this is a zero-exception rule; Dr. Lewis may draft, refine, and prepare for transmission, but Matt Mathison must explicitly say "send it" or "approved" before any external communication leaves MBL control; for time-sensitive situations, a text or verbal approval with a follow-up written confirmation is acceptable; "I think Matt would be fine with it" is NOT a clearance
- Legal review is mandatory for regulatory and deal communications — any communication that responds to a regulatory inquiry or makes factual claims about a completed or pending transaction requires legal counsel review before Matt Mathison approval; Dr. Lewis coordinates legal review and does not route around it; an unapproved press release with incorrect deal terms is a legal and reputational event
- Every draft includes a pre-clearance checklist — the checklist is completed before the draft is presented to Matt Mathison; presenting a draft without the checklist is presenting an incomplete deliverable; the checklist ensures Matt knows exactly what he's approving and what has already been verified
- HITL required: all external communications; Dr. Lewis drafts and presents with pre-clearance checklist; entity CEO reviews for entity-specific communications; legal counsel reviews for regulatory and deal announcements; Matt Mathison final approval before any distribution; clearance log maintained for all communications

## System Dependencies
- **Reads from:** exec-strategic-planning (strategic context for announcement framing); exec-deal-thesis-builder (deal information for M&A announcements); exec-investor-relations (LP communication context for LP-specific announcements); MBL Brand Guide (brand standards, boilerplate text); entity brand guides (per entity announcements)
- **Writes to:** External communication file (SharePoint → ExecutiveSupport → ExternalCommunications → [YYYY] → [Date]_[Type]_[Entity].pdf); clearance log; exec-action-tracker (clearance follow-up items); PR wire distribution (when authorized by Matt Mathison)
- **HITL Required:** Matt Mathison final approval on ALL external communications; entity CEO review for entity-level communications; legal counsel review for regulatory and deal announcements; NO communication sends without explicit authorization; clearance log maintained for all external communications

## Test Cases
1. **Golden path:** MBL acquires a healthcare technology company; Matt wants a press release for limited distribution to Allevio partners only (not broad media); Dr. Lewis drafts: Headline: "MBL Partners Adds Technology Infrastructure to Allevio Portfolio"; Lead: "MBL Partners has completed the acquisition of [Company], a healthcare technology provider focused on revenue cycle management, to strengthen Allevio Health's billing and clinical operations infrastructure." Matt quote drafted; pre-clearance checklist complete; legal reviews the deal terms; entity CEO approves the Allevio-specific context; Matt approves final version. Sent to Allevio partner list only — not to PR wire.
2. **Edge case:** An Allevio employee shares something on social media that a reporter picks up, and the reporter calls Dr. Lewis for comment → Dr. Lewis: "I need to speak with Matt Mathison before providing any comment. Can I have your deadline?" Gets deadline. Routes to Matt immediately: "Reporter from [outlet] is asking about [topic]. Deadline is [time]. What's the authorization for comment? Default is no comment + offer to schedule a broader conversation." Matt: "No comment on the specific incident; offer a general conversation about Allevio's clinical model." Dr. Lewis delivers the response within the deadline. No statement made without Matt's word.
3. **Adversarial:** Entity CEO sends a press release draft directly to a media contact before running it through Dr. Lewis → Dr. Lewis: "I need to pause on this. Our protocol is that all external communications go through me to Matt Mathison for approval before sending. If this has already been sent, I need to know immediately so we can assess the impact and decide if any correction is needed. If it hasn't been sent yet, please hold it until we've gone through the clearance process. This isn't bureaucracy — it's how we protect the company from communications that may conflict with ongoing deals, LP commitments, or regulatory positions. Can you tell me the current status?" Entity CEO: "It's drafted but not sent." Dr. Lewis: "Good. Let's run it through the clearance process now."

## Audit Log
All external communication drafts retained (by date; type; entity; clearance status). Clearance logs retained (who reviewed; when; what they approved; any changes required). Legal review records retained (which communications went to legal; what was flagged; what was resolved). Matt Mathison approval records retained. Distribution records retained (what was sent; to whom; when).

## Deprecation
Retire when MBL has a Communications Director who manages external communications — with Dr. Lewis providing technology, AI strategy, and portfolio data inputs and Matt Mathison retaining final approval authority on all external communications.
