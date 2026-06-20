---
name: pe-lp-communications
description: "Manage ongoing LP communications for MBL Partners. Use when the user says 'LP communication', 'LP communications', 'investor communication', 'investor communications', 'LP notice', 'LP notices', 'LP email', 'LP letter', 'LP memo', 'investor letter', 'investor notice', 'LP notification', 'notify LPs', 'inform LPs', 'LP response', 'LP question', 'LP inquiry', 'LP call', 'LP meeting', 'one-on-one LP', '1-on-1 LP', 'LP relationship', 'LP relationship management', 'LP request', 'LP data request', 'LP information request', 'LP consent', 'LP consent request', 'fund amendment consent', 'material event notice', 'material event LP', 'conflict of interest notice', 'conflict notice LP', 'MNPI LP', 'LP confidential', 'LP advisory committee', 'LPAC', 'LPAC request', 'LPAC meeting', 'LPAC consent', 'LP issue', 'LP complaint', 'LP concern', 'LP unhappy', 'LP escalation', 'LP dispute', 'secondary sale', 'LP secondary', 'LP transfer', 'LP withdrawal', 'LP redemption', or 'LP side letter'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--lp <lp-name>] [--type <notice|response|consent|report|call|one-on-one>] [--urgency <routine|urgent|immediate>] [--action <draft|review|send|track>]"
---

# PE LP Communications

Manage ongoing LP communications for MBL Partners — drafting notices, responding to LP inquiries, managing LPAC requests and consents, and handling material event notifications that keep LPs informed between quarterly reports. LP communications are the moment-to-moment fabric of the LP relationship: a notice that is late, unclear, or inaccurate erodes trust; a notice that is prompt, clear, and complete builds confidence that MBL is a professional, organized GP; the LPA specifies timing requirements for most notices — those deadlines are hard; MNPI discipline applies to all LP communications — no material non-public information flows to LPs unless it is disclosed equally to all LPs simultaneously.

## When to Use
- An LP asks a question that requires a formal response
- A material event requires LP notification
- An LPAC consent is needed
- An LP requests a one-on-one meeting

## LP Communications Framework

```
TYPES OF LP COMMUNICATIONS:

  1. ROUTINE QUARTERLY COMMUNICATIONS:
     Quarterly reports (pe-lp-quarterly-report handles)
     Capital account statements (pe-fund-accounting handles)
     Distribution notices (pe-distribution-manager handles; 5 business day minimum)
     Capital call notices (pe-capital-call-manager handles; 10 business day minimum)
     
  2. MATERIAL EVENT NOTICES (ad-hoc):
     Definition: any event that would be material to an LP's view of the fund
     Trigger events requiring notice:
       - Portfolio company FMV reduction >15% from prior period
       - CEO or CFO departure at a portfolio company
       - Material litigation initiated against a portfolio company
       - Regulatory action (HIPAA enforcement; environmental citation; SEC inquiry)
       - Covenant breach at a portfolio company with debt
       - New investment closed
       - Exit closed (portfolio company sold)
       - THRIVE Integrity violation by entity management
       
  3. CONSENT SOLICITATIONS (formal; per LPA):
     Material fund amendments (LPA change)
     Conflict of interest approval
     Key man event (Matt Mathison departure — hypothetical; LPA governs)
     Waiver of a fund restriction
     Process: notice → 20-business-day comment period → LP vote → record result
     
  4. LPAC COMMUNICATIONS:
     LPAC meets quarterly (typically in conjunction with LP advisory committee rights per LPA)
     Agenda items: conflicts of interest; any consent items; GP update
     LPAC members: defined in LPA; typically 2-3 largest LPs
     Dr. Lewis prepares LPAC materials; Matt Mathison presents
     
  5. ONE-ON-ONE LP MEETINGS:
     Triggered by: LP request; annual re-up conversation; LP concern; portfolio question
     Preparation: Dr. Lewis prepares briefing for Matt Mathison (LP history; capital committed; 
     prior questions; any open items)
     Matt Mathison leads; Dr. Lewis attends for operational/financial questions
     Post-meeting: Dr. Lewis sends action item summary within 48 hours

MNPI AND INFORMATION DISCIPLINE:

  MNPI POLICY:
    Any information that could affect a publicly-traded company's stock price is MNPI
    No MNPI is communicated to LPs (or anyone outside MBL) through any channel
    Allevio/HIVE/Column6 are private — material events about them are disclosed
    simultaneously to all LPs via the formal notice process (not bilaterally)
    
  EQUAL TREATMENT:
    If one LP asks a question that requires material information to answer fully,
    the answer goes to ALL LPs simultaneously (not just the one who asked)
    Side letters with information rights exceptions are reviewed by legal counsel
    before any preferential disclosure

LP COMMUNICATION PROTOCOLS:

  URGENCY LEVELS:
    ROUTINE: respond within 5 business days
    URGENT: respond within 24 hours (LP has a specific time-sensitive need)
    IMMEDIATE: within 4 hours (material event; LP threatening to exercise rights)
    
  ESCALATION:
    Any LP communication that involves: threat of legal action; allegation of GP misconduct;
    request for fund audit; consent refusal; secondary sale inquiry → immediately to Matt Mathison
    Legal counsel: engaged for any LP communication involving formal consent; LPA interpretation; or dispute
```

## Output Format

```markdown
# LP Communication — [Type] — [Date]
**To:** [LP name(s) or "All LPs"]
**From:** Matt Mathison, Managing Partner, MBL Partners
**Re:** [Subject]
**Urgency:** Routine / Urgent / Immediate
**Draft prepared by:** Dr. Lewis | **Approved by:** Matt Mathison

---

[Communication body]

---

**Action required by LP (if any):** [None / Please confirm receipt / Please vote by [date]]
**Response deadline (if applicable):** [Date]
**Contact:** Dr. Lewis — jlewis@mblpartners.com | 602-880-6491

---

*This communication is confidential and intended solely for the LP named above. If received in error, please notify MBL Partners immediately.*
```

## Output Contract
- All LP communications from MBL come from Matt Mathison or under his approval — Dr. Lewis drafts; Matt Mathison reviews and approves before any communication goes to an LP; a communication sent by Dr. Lewis on his own authority that should have had Matt Mathison's approval is a governance failure; the only exception is routine operational confirmations (e.g., "your wire was received and your capital account has been credited") — these can be sent by Dr. Lewis directly because they contain no material fund information and are purely operational
- Material event notices are sent to all LPs simultaneously on the same day — not sequentially; not "we'll tell the big LPs first and the others later"; information asymmetry between LPs creates a legal and ethical problem; if the fund has a side letter with an LP who has enhanced information rights, those rights are reviewed with legal counsel before any notice goes out — but the standard is simultaneous disclosure to all LPs unless a court order or regulatory requirement prevents it
- LP responses contain honest information, not defensive information — when an LP raises a concern or complaint, the response addresses the substance of the concern directly; if the LP is right that something was not communicated well or that MBL made a mistake, the response acknowledges it; "I understand your concern" followed by a paragraph that doesn't actually address the concern is not a response — it is a defensive non-response that damages trust; Matt Mathison reviews all responses to LP concerns before they are sent
- HITL required: all LP communications → Matt Mathison reviews and approves; material event notice → Matt Mathison reviews and approves; LPAC consent solicitation → Matt Mathison approves and legal counsel reviews; one-on-one LP meeting → Matt Mathison leads; LP complaint or concern response → Matt Mathison approves; secondary sale inquiry → Matt Mathison decides response and process; MNPI-adjacent question → Matt Mathison and legal counsel review before responding; LPA interpretation question → legal counsel reviews

## System Dependencies
- **Reads from:** pe-lp-admin (LP register; contact information; side letters; capital accounts); pe-lp-quarterly-report (most recent quarterly report for context); pe-fund-accounting (capital account balances; distribution history); pe-portfolio-health-monitor (entity health status for material event triggers); pe-covenant-compliance (debt covenant status for disclosure triggers); LPA (all timing and consent requirements); legal counsel (LPAC consent; LPA interpretation; securities law questions)
- **Writes to:** LP communication log (SharePoint → Investor Relations → Communications → [YYYY]); LPAC meeting records; consent records (per LPA); one-on-one meeting notes (post-meeting action items); Matt Mathison LP relationship briefings
- **HITL Required:** All LP communications → Matt approves; material event notice → Matt approves; LPAC consent → Matt approves + legal reviews; LP complaint response → Matt approves; secondary sale → Matt decides; MNPI question → Matt + legal; LPA interpretation → legal counsel

## Test Cases
1. **Golden path:** Portfolio company exit closed. Dr. Lewis drafts exit notice to all LPs: "[Entity] exit closed on [date]. MBL Partners realized proceeds of $[X]M on an investment of $[X]M, generating a [X.X]x gross MOIC and [X%] gross IRR. After fund-level fees and expenses, your attributable share of net distributions will be $[X] per unit. A distribution notice with wire instructions will follow within 5 business days. Capital account statements will be updated and distributed within 15 business days. Please contact Dr. Lewis with any questions." Matt Mathison reviews and approves. Sent to all LPs simultaneously.
2. **Edge case:** One LP sends a long email to Matt Mathison with 12 detailed questions about the quarterly report — some routine; 2 questions that would require material information about an entity that has not been disclosed to other LPs → Dr. Lewis screens the questions: "Questions 1-10 and 12 are routine — I'll draft complete answers for Matt Mathison's review. Questions 5 and 11 ask about [specific entity operational detail] that we haven't disclosed in the quarterly reports to any LP. If we answer these questions fully, we need to decide: (1) Can we share this with all LPs simultaneously via an amended Q? (2) Is this within the LP's enhanced information rights under their side letter? (3) Is this information that should be disclosed to all LPs (if so, we need an ad-hoc notice)? I'm flagging questions 5 and 11 for Matt Mathison and legal counsel review before I draft any response."
3. **Adversarial:** An LP sends a formal letter threatening to bring a derivative action if MBL doesn't provide a full accounting of all management fees and expenses charged to the fund → Dr. Lewis: "This is an immediate escalation to Matt Mathison. I'm not responding to this LP until Matt and legal counsel have reviewed the letter and agreed on the response approach. The LP has the right to request a fund audit under [LPA Section X] — if they're invoking that right, we follow the LPA process. If they're threatening litigation beyond their LPA rights, we need legal counsel to advise on the appropriate response. Matt: I'll set up a call with [fund counsel] today."

## Audit Log
All LP communications retained permanently with Matt Mathison approval date and distribution record. Material event notices retained (with timing; recipient list). LPAC consent records retained per LPA requirements. One-on-one meeting notes retained. LP dispute records retained. Side letter information rights review records retained.

## Deprecation
LP communications management is an ongoing function for the life of each fund. Communication templates are reviewed annually for legal and regulatory updates.
