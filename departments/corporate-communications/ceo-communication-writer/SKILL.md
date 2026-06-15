---
name: ceo-communication-writer
description: "Write CEO communications to employees or stakeholders. Use when the user says 'write a CEO message', 'CEO email to employees', 'CEO letter', 'CEO memo', 'write from the CEO', 'draft a CEO update', 'CEO communication to the team', 'CEO statement', 'message from leadership', or 'write an executive message to staff'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--exec <CEO name>] [--entity <company>] [--audience <employees|all-staff|leadership>] [--topic <subject>]"
---

# CEO Communication Writer

Draft CEO communications to employees — messages, letters, and updates that carry the weight of the CEO's name and voice. CEO communications are the most-read internal content; they set the cultural and strategic tone for the entire organization. A strong CEO message builds trust, establishes direction, and humanizes leadership. A weak one is deleted without being read.

## When to Use
- CEO needs to communicate a major company update, milestone, or challenge to the team
- Following a significant event (crisis, acquisition, major win or loss)
- Quarterly or annual CEO message to all staff
- CEO wants to address a specific concern the team has raised
- Portfolio company CEO asks for help drafting a team communication

## CEO Voice Capture

```
Before writing the first CEO message for a new company or executive, 
collect the following input:

1. Communication style: Formal / Conversational / Direct / Storytelling
2. First person comfort: Does the CEO use "I" freely or prefer "we"?
3. Length preference: Short and punchy or thorough and detailed?
4. Examples of past communications they liked (if any exist)
5. Things they would never say (language, tone, or topics that feel off-brand for them)

The CEO message must sound like the CEO — not like a template.
If it reads like it was written by a communications team, it fails.
```

## Output Format

```markdown
# CEO Communication Draft — <Company Name>
**From:** <CEO name>, <Title>
**To:** All team / [Specific audience]
**Subject:** <Email subject line>
**Occasion:** [What prompted this message]
**Tone target:** Warm / Direct / Urgent / Celebratory / Reflective

---

## Draft Message

Subject: [Clear, specific subject line — no vague "Important Update"]

[Team name / "Team," / First names if culture warrants],

[Opening — do NOT start with "I am writing to..."; do NOT start with the company name; 
start with the human moment, the news, or the direct statement]:

> "[Lead with the most important thing. If it's good news, lead with the good news. 
> If it's hard news, lead with honest acknowledgment, not a preamble.]"

[Context paragraph — the why behind the news]:

> "[1-2 sentences explaining the context. Not corporate justification — genuine reasoning 
> that respects the team's intelligence. 'We did this because...' not 'In order to 
> position the company for strategic growth...']"

[Impact paragraph — what this means for the team]:

> "[What does this mean for day-to-day work? For job security? For the team's future? 
> Address the thing people are actually wondering about, not what you wish they were 
> wondering about.]"

[What's next — clear, specific, time-bound]:

> "[What happens next? Who is doing what? When will there be more information? 
> If there's uncertainty, say so: 'I expect to have more clarity by [specific date] 
> and will share it then.']"

[Closing — personal, genuine, not formulaic]:

> "[Don't close with 'Please don't hesitate to reach out' — it's filler. Close with 
> something that is true: what you're grateful for, what you believe about the team, 
> what you're confident about going forward. 1-3 sentences. Then sign with first name 
> only — it's warmer.]"

[CEO first name]

---

## Voice Review Checklist

Before sending, verify:
- [ ] Could an AI have written this? (If yes — rewrite; it's too generic)
- [ ] Is there at least one specific fact, number, or named person? ✅ / ❌
- [ ] Does the opening word "I" sound natural for this CEO? ✅ / ❌
- [ ] Is the subject line specific (not "An important update")? ✅ / ❌
- [ ] Does it address what the team is actually worried about? ✅ / ❌
- [ ] Is the closing genuine (not a formulaic sign-off)? ✅ / ❌
- [ ] Reading time: under 90 seconds? ✅ / ❌ (If no — cut)
- [ ] CEO reviewed and it sounds like them? ✅ / Pending

---

## Alternate Subject Line Options (test 2):
1. [Option 1]
2. [Option 2]
```

## Output Contract
- CEO voice is the primary quality test — a message that reads as generic or template-written has failed regardless of content accuracy; it must sound like the specific CEO, not like a corporate communicator
- Under 90 seconds to read — CEO messages that take longer are skimmed or deleted; this is not negotiable; if the content requires more space, break it into a meeting or a series of shorter messages
- Subject line is always specific — "An important update from [CEO]" is not a subject line; it creates anxiety without information; specific is better: "What we accomplished in Q2 — and where we're headed"
- Voice review checklist is always completed — the draft must pass the checklist before going to the CEO for review; don't send a draft that hasn't passed the "could an AI have written this?" test
- HITL required: Dr. Lewis drafts; CEO must personally review and edit to their voice before sending; any communication addressing sensitive topics (compensation, layoffs, legal matters) requires legal review; CEO sends from their own account — never ghostsent without CEO knowledge and approval

## System Dependencies
- **Reads from:** Company context, CEO voice notes, company performance data, the specific news being communicated
- **Writes to:** CEO message draft (SharePoint/Comms/CEO Communications); email distribution
- **HITL Required:** CEO reviews and edits all drafts; legal reviews sensitive communications; CEO sends from their own account

## Test Cases
1. **Golden path:** Allevio CEO quarterly message, Q2 close → Subject: "Our best revenue quarter ever — and what it took"; Opens with specific: "This quarter, we crossed $X in revenue for the first time."; explains the drivers (3 specific things the team did); thanks by name the billing team for the denial rate improvement; acknowledges the CFO search delay honestly; closes: "I'm proud of what you're building here. More next quarter. — [First name]"; reading time: 75 seconds; voice check: passes; CEO reviews, adjusts two phrases to match their natural voice; sends Monday morning; 82% open rate
2. **Edge case:** CEO is not a natural writer and provides almost no input on their voice → start by asking 3 questions: "What do you most want the team to feel after reading this?" / "Tell me about one thing that happened this quarter that made you proud" / "What's the honest thing you want to say about the challenge we're facing?"; use their verbal answers as the raw material; the message will be more genuine than anything written without input
3. **Adversarial:** The communications team writes a polished CEO message that the CEO signs off on without reading carefully, and it contains a factual error about company performance → this is why the CEO must personally review, not just approve by default; if an error is caught after sending, issue a correction immediately via follow-up email; do not pretend the error didn't happen; address it directly

## Audit Log
All CEO communication drafts retained with version history. CEO approval documented. Sensitive communications legal review documented. Distribution confirmed.

## Deprecation
Retire when portfolio companies have Chief Communications Officers or executive assistants who manage CEO communications as a standard function.
