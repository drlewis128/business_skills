---
name: executive-email-drafter
description: "Draft executive-quality emails on behalf of Matt Mathison or Dr. Lewis. Use when the user says 'draft an email', 'write an email for Matt', 'email to LP', 'draft follow-up email', 'write this email', 'email to board member', or 'professional email'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<email-context> [--from <matt|drlewis>] [--to <name>] [--tone <formal|professional|warm>] [--length <short|medium>]"
---

# Executive Email Drafter

Draft polished, BLUF-first executive emails for Matt Mathison or Dr. John Lewis. Right tone, right length, no fluff.

## When to Use
- Outbound to LPs, board members, counterparts, potential acquisition targets
- Follow-up emails after meetings
- Decision or action request emails
- Sensitive relationship communications that require careful tone

## Email Standards

### Tone Calibration

| Tone | When to Use | Style |
|------|------------|-------|
| **Formal** | Legal matters, new LP relationships, board resolutions | Full salutation, measured language, no contractions |
| **Professional** | Standard business correspondence, vendor / banker | Business-casual, direct, efficient |
| **Warm** | Existing LP relationships, long-term partners, key talent | First names, personal touches, relationship-forward |

### Length Standards
- **Short (< 100 words):** Simple follow-up, meeting confirmation, quick update
- **Medium (100-250 words):** Action request, deal update, relationship touch
- **Long (250+ words):** Only when complexity demands it — ask first

### Structure
1. Subject line (clear and specific — no "Following up...")
2. Opening (1 sentence context — BLUF)
3. Body (the point — no throat-clearing)
4. Ask or next step (explicit — every email should have one)
5. Closing (appropriate to tone)

## Common Email Types

### Follow-Up After Meeting
Subject: `[Deal Name / Topic] — Next Steps from [Date] Call`
Open: "Following our call [yesterday], I wanted to confirm..."
Body: Summary of what was decided + action items
Close: Ask for confirmation or schedule next meeting

### LP Relationship Touch
Subject: `[Relevant Topic] — Quick Note from Matt`
Personal tone. Short. No hard ask. Relationship maintenance.

### Deal Introduction / First Outreach
Subject: Clear value proposition in subject
BLUF open: Who Matt is and why he's writing
Short body: Context for why this is worth their time
Ask: 15-minute call

### Action Request
Clear subject: "Request: [Specific Item] by [Date]"
One clear ask. One deadline. No ambiguity.

## Output Format

```markdown
**Subject:** <subject line>

<Salutation>,

<Email body>

<Closing>,
<Name>
<Title>
MBL Partners
<phone if formal>
```

## Output Contract
- Subject line always included — never "Subject: [subject]" placeholder
- Every email ends with an explicit ask or next step
- No "I hope this email finds you well" — ever
- Tone matches the relationship level with the recipient
- HITL required before sending any external email

## System Dependencies
- **Reads from:** Context provided, prior meeting summaries (`meeting-intelligence-summarizer`), relationship notes
- **Writes to:** Nothing (draft for sender review)
- **HITL Required:** Sender reviews and approves before sending any external email

## Test Cases
1. **Golden path:** Follow-up to LP after a positive meeting → warm, first-name, concise, ends with scheduling ask
2. **Edge case:** Email to potential acquisition target (cold outreach) → professional tone, leads with relevance, clear ask
3. **Adversarial:** Request to write aggressive/demanding tone to a key LP relationship → produces professional version and flags that aggressive tone risks relationship

## Audit Log
Drafted emails logged with recipient relationship type and tone. External emails approved by sender before sending.

## Deprecation
Retire when AI-assisted email drafting is integrated directly into Outlook (Microsoft Copilot) with sufficient quality.
