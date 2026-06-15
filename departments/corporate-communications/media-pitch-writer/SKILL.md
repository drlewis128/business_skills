---
name: media-pitch-writer
description: "Write a media pitch to secure earned media coverage. Use when the user says 'pitch a journalist', 'write a media pitch', 'get press coverage', 'pitch a story', 'earned media', 'reach out to a reporter', 'pitch the press', 'news pitch', 'story pitch for media', or 'how do we get coverage for this'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--story <story angle>] [--outlet <target outlet>] [--journalist <name>]"
---

# Media Pitch Writer

Write concise, compelling pitches to journalists and editors to secure earned media coverage for MBL Partners or its portfolio companies. A media pitch is not a press release — it is a one-to-one message designed to make a specific journalist care about a specific story. The pitch must answer the journalist's primary question within 3 seconds: "Why should my readers care?"

## When to Use
- Announcing a portfolio company milestone, acquisition, or expansion
- Pitching an executive for thought leadership (op-ed placement, expert commentary)
- Launching a new product, service, or initiative at a portfolio company
- Responding to a trending news story with a relevant company angle (newsjacking)
- Seeking profile coverage of Matt Mathison or Dr. Lewis in trade/business press

## Pitch Framework

```
Effective media pitches follow this structure:

1. Subject line (the make-or-break): 6-10 words, specific, creates curiosity
   ❌ Bad: "Exciting news about Allevio Health"
   ✅ Good: "Rural healthcare AI cuts no-show rates by 34% — case study"

2. Hook paragraph (2-3 sentences): 
   - Tie to something the journalist already covers or a trending topic
   - Lead with the reader benefit, not the company name
   - Include one concrete number or specific detail

3. Story angle (3-4 sentences):
   - What happened / what's new
   - Why this matters NOW (timeliness)
   - Who is affected (audience connection)

4. Access offer (1-2 sentences):
   - Exclusive? Embargo? Data to share?
   - Who can they interview (executive name, title)

5. CTA (1 sentence):
   - Specific ask — a 15-minute call, a byline opportunity, a comment on a story

Target length: 150-200 words maximum. If it's longer, cut it.
```

## Output Format

```markdown
# Media Pitch — <Story Angle>
**Target outlet:** <Publication name>
**Target journalist:** <Name, beat>
**Story type:** Exclusive / Contributed / Comment / Data story
**Embargo (if any):** Until <date>

---

## Subject Line Options (test 2-3):
1. <Option 1>
2. <Option 2>
3. <Option 3>

---

## Pitch Body:

Hi <First name>,

<Hook — tie to journalist's beat or a recent story they wrote>

<Story angle — what happened, why it matters now, who cares>

<Access offer — exclusive, embargo, interview availability>

<Clear CTA — specific ask in one sentence>

<Name>
<Title> | <Company>
<Phone> | <Email>

---

## Supporting Assets Available:
- [ ] Press release (embargoed until <date>)
- [ ] Executive bio and headshot
- [ ] Data/statistics for the story
- [ ] Customer quote (approved)
- [ ] Product/service imagery

## Follow-Up Plan:
- Follow-up 1: [Date] — brief follow-up if no response
- Follow-up 2: [Date] — final try, offer different angle
- If no response after 2 follow-ups: pitch different journalist or outlet
```

## Output Contract
- Pitch body is 150-200 words maximum — journalists delete long pitches; the length limit is not a suggestion
- Subject line options always plural (minimum 2) — subject line is the most important line; test options before sending
- Journalist name and beat always personalized — a pitch that begins "Dear Editor" is destined for the trash; research the specific journalist first
- Story angle always reader-first — the company comes second; what matters is why the journalist's audience should care
- HITL required: Dr. Lewis drafts; Matt Mathison approves any pitch involving MBL fund-level strategy or investor relations content; portfolio company pitches require CEO approval before send; all outbound media pitches are logged

## System Dependencies
- **Reads from:** Company announcement details, press release (if exists), executive bios, media contact list
- **Writes to:** Pitch draft (SharePoint/Comms/Media/Pitches); media log; sent pitches tracker
- **HITL Required:** Dr. Lewis drafts; Matt Mathison approves fund-level pitches; portfolio CEO approves portfolio company pitches; all sends logged

## Test Cases
1. **Golden path:** Allevio opens a new rural clinic in Arizona — pitch local Arizona Republic business editor → Subject: "Tempe startup brings AI scheduling to rural AZ — 34% drop in no-shows"; Hook: references editor's recent story on rural healthcare access; Angle: new clinic, how the AI system works, patient access angle; Access: embargo to Monday, CEO interview available; CTA: "15 minutes with CEO this week?"; 175 words; sent after Allevio CEO approval
2. **Edge case:** No concrete news hook — executive wants coverage "just because" → redirect: earned media requires a news hook; identify the nearest hook: an industry trend they can comment on, a recent data point about the industry, an anniversary milestone; if nothing works, suggest a contributed article (op-ed/byline) instead of a pitch, which doesn't require news
3. **Adversarial:** Journalist responds asking for exclusive but Matt Mathison hasn't approved the announcement yet → do not confirm the exclusive without Matt Mathison's approval; tell the journalist the announcement is "in final confirmation" and you'll have a definitive answer within 24 hours; never make a commitment about timing, exclusivity, or content without internal approval

## Audit Log
All outbound pitches logged with date, journalist, outlet, angle, and outcome (response / no response / coverage). Media relationship log maintained.

## Deprecation
Retire when MBL or portfolio companies engage a PR agency with dedicated media relations capability and in-house pitch function.
