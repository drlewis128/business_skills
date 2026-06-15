---
name: media-relations-manager
description: "Manage ongoing media relationships and journalist contacts. Use when the user says 'media relations', 'journalist contacts', 'build press relationships', 'media contact list', 'reporter relationships', 'who covers our industry', 'media contact database', 'press list', 'track journalist relationships', or 'which reporters should we know'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--beat <healthcare|energy|finance|adtech>]"
---

# Media Relations Manager

Build and maintain strategic relationships with journalists, editors, and media contacts relevant to MBL Partners and its portfolio companies. Strong media relationships mean coverage when you want it, fair treatment when news is hard, and access to a journalist before they publish a story about you. Weak or nonexistent media relationships mean you're always reactive.

## When to Use
- Building a media contact list for a new portfolio company
- Preparing to pitch a story and need to identify the right journalist
- Tracking relationship status after pitch campaigns
- Identifying which beat reporters cover MBL's sector
- Quarterly media relationship review

## Beat Coverage Map for MBL Portfolio

```
MBL Partners (PE/Fund Level):
  - Private equity / M&A: PE Hub, Buyouts, The Deal, PitchBook News
  - Arizona business press: Arizona Republic Business, Phoenix Business Journal
  - National business: WSJ (deals reporter), Bloomberg (PE/buyout desk)

Allevio (Healthcare MSO):
  - Healthcare: Modern Healthcare, Becker's Hospital Review, Healthcare Finance News
  - Health tech: STAT News, Healthcare IT News, MedCity News
  - Arizona local: Arizona Republic health reporter

HIVE Partners (Oil & Gas):
  - Energy: Oil & Gas Journal, Hart Energy, S&P Global Platts (formerly)
  - Utah/Western US: Salt Lake Tribune, Deseret News business
  - Upstream focus: Upstream Online, Rigzone

Column6 / Siprocal (CTV/Media):
  - Ad tech: Ad Age, Adweek, Digiday, The Trade Desk
  - CTV/streaming: Variety, The Hollywood Reporter, Deadline (business side)
  - Mobile/gaming: Pocket Gamer, GamesBeat (for gaming context)
```

## Output Format

```markdown
# Media Contact List — <Entity Name>
**Entity:** <MBL Partners / Allevio / HIVE / Column6>
**Beat:** <Industry>
**Last updated:** <date> | **Owner:** Dr. John Lewis

---

## Priority Media Contacts

| Name | Publication | Beat | Contact | Relationship status | Last contact | Notes |
|------|------------|------|---------|--------------------|-----------|-|
| [Journalist name] | [Publication] | [Beat] | [Email/LinkedIn] | ❄️ Cold / 🌡️ Warm / 🔥 Active | [Date] | [Context] |
| [Name] | [Publication] | [Beat] | [Contact] | [Status] | [Date] | [Context] |

Relationship status definitions:
  ❄️ Cold: No relationship; have not connected; pitching cold
  🌡️ Warm: Have exchanged emails; they know who we are; responsive
  🔥 Active: Ongoing relationship; they take our calls; trust established

---

## Relationship Building Plan

### Quarter's target: Move [N] Cold contacts to Warm

| Contact | Current status | Target status | Action plan | Timeline |
|---------|---------------|--------------|-------------|---------|
| [Name] | ❄️ Cold | 🌡️ Warm | Send a relevant tip or data point before pitching; no ask | Q[N] |
| [Name] | 🌡️ Warm | 🔥 Active | Schedule a no-agenda call; share exclusive briefing on Q[N] announcement | Q[N] |

### Relationship maintenance (for Active contacts):
- Check in quarterly even with no news — share an interesting industry data point
- Respond to their stories with genuine, specific feedback (not "great story!")
- Offer as an expert source when they're writing stories you don't have news for
- Never pitch them only when you want something

---

## Coverage Tracker

| Date | Publication | Journalist | Story | Type | Tone | Initiated by |
|------|------------|-----------|-------|------|------|-------------|
| [Date] | [Pub] | [Name] | [Headline/link] | Feature / News / Brief | ✅ Positive / ➖ Neutral / ❌ Negative | MBL pitch / Organic / Reactive |

---

## Pitch Outcome Tracker

| Date | Pitch | Journalist | Response | Coverage resulted? | Notes |
|------|-------|-----------|---------|-------------------|-------|
| [Date] | [Angle] | [Name, pub] | Interested / Pass / No response | ✅ Yes / ❌ No | [Notes] |

Pitch acceptance rate: [N pitches / N placements = X%]

---

## Matt Mathison Relationship Summary

**Active press relationships:** [N] contacts at [N] publications
**Coverage this quarter:** [N] pieces — [tone summary]
**Priority relationships to activate:** [2-3 specific journalists and why]
**Any concerns:** [Journalist working on a story about us? Flag here]
```

## Output Contract
- Relationship status always current — a media contact list with stale statuses is worse than no list (you'll pitch "warm" contacts who are actually cold); update after every interaction
- Coverage tracker always maintained — the coverage log is the proof of media program ROI; every piece of coverage gets logged within 24 hours of publication
- Pitch outcome tracker drives strategy — if the acceptance rate is below 20%, the pitches are wrong, the targets are wrong, or both; track to improve
- No quid pro quo language — media relationships are advisory and informational; never imply favorable coverage in exchange for access or advertising; this is an ethical line
- HITL required: Dr. Lewis manages all media relationships; Matt Mathison involved for any journalist requesting comment on fund-level topics (fund performance, LP relations, deals); no comment to press on any topic without specific approval

## System Dependencies
- **Reads from:** Contact list, pitch history, coverage tracker, company news calendar
- **Writes to:** Media contact list (SharePoint/Comms/Media Relations); coverage log; pitch tracker
- **HITL Required:** Dr. Lewis manages; Matt Mathison approves any fund-level media engagement; legal clears sensitive topic conversations

## Test Cases
1. **Golden path:** Building Allevio media contact list → identify 8 healthcare reporters at relevant outlets; research each one's recent coverage to find angle fit; 3 at Becker's, 2 at Modern Healthcare, 2 at local Arizona outlets, 1 at STAT; all marked ❄️ Cold; plan: send each a relevant industry data point (no pitch) this quarter to warm the relationship; pitch next quarter when the new clinic announcement is ready
2. **Edge case:** A journalist reaches out proactively asking about HIVE Partners → this is an inbound; don't respond immediately and enthusiastically without knowing their angle; ask what they're working on before agreeing to an interview; if it's a positive story, great; if it's an investigative piece, escalate to Matt Mathison and legal before any response; always know the story before agreeing to participate
3. **Adversarial:** A journalist publishes a negative story about a portfolio company without ever calling for comment → document the lapse (they should have called); reach out to correct factual errors immediately with a written statement; build a relationship with that journalist going forward so you're always in the loop before their next story; do not attack the journalist publicly — that makes it worse

## Audit Log
All media interactions logged. All pitches tracked. Coverage log maintained. Any inbound inquiries from press documented. Matt Mathison notifications for sensitive media contact logged.

## Deprecation
Retire when MBL or portfolio companies engage PR agencies with dedicated media relations staff and CRM tools (Cision, Meltwater) for contact management.
