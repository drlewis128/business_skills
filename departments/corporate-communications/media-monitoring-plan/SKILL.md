---
name: media-monitoring-plan
description: "Set up a brand and competitor media monitoring system. Use when the user says 'monitor our brand', 'track press coverage', 'media monitoring', 'brand monitoring', 'track what people say about us', 'set up Google alerts', 'news monitoring plan', 'watch competitor coverage', 'track media mentions', or 'reputation monitoring'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scope <brand|competitor|industry>]"
---

# Media Monitoring Plan

Design a media monitoring system for MBL Partners and its portfolio companies — tracking brand mentions, competitor coverage, and industry news in real time. Without a monitoring system, reputational threats arrive without warning; with one, MBL can respond to crises early, capitalize on coverage opportunities, and track competitor positioning continuously.

## When to Use
- Setting up monitoring for a new portfolio company acquisition
- A reputational event has occurred and Dr. Lewis needs to track the coverage
- Matt Mathison asks "what are people saying about us?"
- A competitor announces something significant and MBL needs to track their momentum
- Launching a new brand campaign and need to measure media response

## Monitoring Stack (MBL-Scale)

```
Free / Low-cost tier (appropriate for MBL's current scale):
  - Google Alerts: brand name, CEO names, competitors, key topics
  - LinkedIn notifications: company page + executive mentions
  - Twitter/X search: saved searches for brand + portfolio company names
  - Google News: search agents for portfolio company names

Paid tools (when volume warrants):
  - Mention.com or Brand24: real-time web + social monitoring ($29-99/mo)
  - Meltwater or Cision: full PR monitoring suite (enterprise — defer)

Portfolio company level: Google Alerts is sufficient until company has PR agency
MBL fund level: Google Alerts + LinkedIn sufficient; add Mention.com if needed
```

## Output Format

```markdown
# Media Monitoring Plan — <Entity Name>
**Entity:** <MBL Partners / Allevio / HIVE / Column6>
**Scope:** Brand / Competitor / Industry / All three
**Date:** <date> | **Owner:** Dr. John Lewis

---

## Monitoring Targets

### Brand Terms (set as Google Alerts)
| Term | Alert type | Frequency | Destination |
|------|-----------|-----------|------------|
| "<Company name>" | Web | Daily digest | jlewis@mblpartners.com |
| "<CEO name>" | Web + News | Daily digest | jlewis@mblpartners.com |
| "<Key product or service>" | News | Weekly | jlewis@mblpartners.com |
| "<Company name> + acquisition" | Web | As-it-happens | jlewis@mblpartners.com |

### Competitor Terms
| Competitor | Terms to monitor | Rationale |
|-----------|-----------------|-----------|
| [Comp 1] | "<Name>", "<Name> + expansion/acquisition" | Watch for moves into our market |
| [Comp 2] | "<Name>", "<Name> + funding/raise" | Watch for funding events |

### Industry Terms
| Topic | Term | Rationale |
|-------|------|-----------|
| [Key industry trend] | "<Trend keyword>" | Identify thought leadership opportunity |
| [Regulatory topic] | "<Regulation acronym/name>" | Early warning on regulatory shifts |

---

## Alert Configuration

### Google Alerts Setup
1. Go to google.com/alerts
2. Create alert for each Brand Term above
3. Set: Results type = "All" | Language = English | Region = US | How often = [As-it-happens / Daily / Weekly] | Volume = "All results"
4. Deliver to: jlewis@mblpartners.com

### LinkedIn Monitoring
- Follow all competitor company pages
- Set LinkedIn notifications for company page mentions
- Save LinkedIn searches: "<Company name>" updated weekly

### Manual Weekly Scan (15 minutes)
- Google News: search [Company name] — review last 7 days
- LinkedIn: review company page mentions
- Review any Google Alert digests for anything requiring action

---

## Response Protocol

| Alert type | Response time | Who responds | Action |
|-----------|--------------|-------------|--------|
| Positive coverage | 24 hours | Dr. Lewis | Amplify via LinkedIn; share with portfolio company |
| Negative coverage | 4 hours | Dr. Lewis | Assess; flag to Matt Mathison if material |
| Competitor major announcement | 24 hours | Dr. Lewis | Brief Matt Mathison; assess competitive impact |
| Crisis-level mention | 1 hour | Dr. Lewis + Matt Mathison | Activate crisis-response-playbook |
| Industry news (for thought leadership) | Weekly | Dr. Lewis | Tag for potential pitch or op-ed angle |

---

## Weekly Media Report (5 minutes to compile)

Each Monday, scan all alerts from prior week and compile:

```
Week of [Date] — Media Monitoring Summary
Brand mentions: [N total] — [N positive / N neutral / N negative]
Notable: [Any specific item requiring attention]
Competitor moves: [Any significant competitor news]
Industry: [Key trend to watch]
Action items: [List — or "None this week"]
```

## Output Contract
- Alert setup is the mandatory first output — monitoring that isn't set up doesn't exist; the plan must specify exact search terms and alert delivery configuration
- Response time protocol always defined — "we monitor" without a response protocol is theater; each alert type has a defined response time and owner
- Weekly scan is manual and minimal — at MBL's current scale, a 15-minute weekly manual scan plus Google Alerts is the right investment; don't over-engineer
- HITL required: Dr. Lewis sets up and manages monitoring; any negative coverage requiring public response is escalated to Matt Mathison before any public statement; crisis-level items activate crisis-response-playbook immediately

## System Dependencies
- **Reads from:** Google Alerts (email), LinkedIn notifications, manual news searches
- **Writes to:** Weekly media report (SharePoint/Comms/Media Monitoring); crisis flag (to Matt Mathison if needed)
- **HITL Required:** Dr. Lewis manages monitoring; Matt Mathison involved for any material negative coverage or required response

## Test Cases
1. **Golden path:** Allevio acquisition monitoring setup → 6 brand terms, 3 competitor terms, 4 industry terms; all Google Alerts configured; LinkedIn follow + notification setup; response protocol documented; weekly 15-min scan scheduled Monday mornings; first weekly report produced following Monday
2. **Edge case:** A Google Alert fires on a negative news story about a different company with a similar name → verify the mention is actually about the target company before escalating; false positives are common in brand monitoring; confirm by clicking through to the actual article before taking any action
3. **Adversarial:** A negative story about a portfolio company is published but no Google Alert fired (the journalist used a variation of the company name) → this is why manual weekly scans supplement automated alerts; alerts catch maybe 70-80% of coverage; the weekly scan catches the rest; when a crisis occurs, expand the search terms immediately to capture variations

## Audit Log
Alert configuration documented by date. All material mentions logged. Response actions documented. Alert updates tracked when company name or key terms change.

## Deprecation
Retire and replace with Meltwater or Cision when MBL or a portfolio company hires a VP Marketing/Communications who warrants a full media monitoring budget.
