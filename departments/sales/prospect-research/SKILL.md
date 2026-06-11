---
name: prospect-research
description: "Research a prospect company and contacts before a sales outreach or meeting. Use when the user says 'research this prospect', 'prospect research', 'account research', 'company research', 'who is this company', 'learn about this account', 'pre-call research', or 'prospect profile'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<company-name> [--contact <name>] [--reason <first-outreach|meeting-prep|renewal>]"
---

# Prospect Research

Build a prospect research brief before sales outreach or a key meeting. Personalized outreach converts 6× better than generic outreach — this skill eliminates the excuse for being unprepared.

## When to Use
- Before first outreach to a new prospect
- Before any meeting with a key prospect
- Account planning for strategic accounts
- Competitive intelligence (research a competitor's customer before poaching)
- Pre-meeting prep for Matt Mathison or Dr. Lewis to meet a prospective partner or customer

## Research Framework

### Company Intelligence

**Company Overview**
- What does this company do? (In plain English, not their tagline)
- Size: Revenue, employees, locations
- Business model: B2B, B2C, SaaS, services, regulated?
- Industry vertical
- Ownership: PE-backed, family-owned, public?

**Recent News and Events (Trigger Intelligence)**
- Press releases, news articles from last 6 months
- Funding announcements (new funding = new budget to spend)
- Leadership changes (new exec = new buying decisions)
- Acquisitions or mergers (new complexity = new problems)
- Product launches (new capabilities = new needs)
- Regulatory changes affecting their industry

**Financial Signals**
- Revenue trend (growing/declining?)
- For public companies: recent earnings, guidance
- For PE-backed: known investment thesis, portfolio activities

**Technology and Systems**
- Current tech stack (what are they using? — BuiltWith, LinkedIn, job postings reveal this)
- Job postings signal priorities and gaps (hiring for X = investing in X)

**Competitive Context**
- Who are their competitors?
- Who are their current vendors in our space?

### Contact Intelligence

**Individual Research**
- Current role, tenure in role, career history
- Reporting structure (do they own the decision?)
- Public activity: LinkedIn posts, conference presentations, articles
- Common connections (mutual contacts = warmer intro)
- Recent trigger: promotion, new role, new initiative?

**Buying Signals**
- Engaged with your content (LinkedIn, website, email)
- Attended a relevant industry event
- Posted about a problem you solve
- Their company is in your ICP and meets trigger criteria

## Output Format

```markdown
# Prospect Brief — <Company Name>
**Contact:** <name, title> | **Prepared:** <date> | **Purpose:** <first outreach | meeting | renewal>

## Company Snapshot
**HQ:** <city> | **Size:** <employees> | **Revenue:** ~$<N> | **Founded:** <year>
**Ownership:** <PE-backed / Private / Public — <ticker if public>>
**Industry:** <vertical> | **Business model:** <type>

**What they do:** <2-3 sentences in plain English>

## Trigger Intelligence (Last 6 Months)
1. **<Date>** — <Event with relevance to your value prop>
2. **<Date>** — <Event>

## Likely Pain / Opportunity
Based on the above: <Hypothesis on what problem they're experiencing that you can solve, with evidence>

## Technology / Vendor Intelligence
- Current vendor in our space: <name or "Unknown">
- Relevant tech stack: <tools they're using>
- Signals from job postings: <what they're hiring for that's relevant>

## Contact Profile — <Name>
**Title:** <title> | **At company since:** <year> | **LinkedIn:** <url if known>
**Career:** <prior 1-2 roles — brief>
**Decision authority:** <likely buyer / champion / influencer>
**Recent activity:** <LinkedIn post, conference talk, article — any relevant signal>
**Common connections:** <any shared connections>

## Personalization Hook (Use in Outreach)
<Specific, researched reason why you're reaching out NOW — tied to a trigger event or relevant insight>

## Recommended Outreach Angle
<How to lead the first message — what problem to reference, what value to offer>
```

## Output Contract
- Trigger intelligence always included — cold outreach without a reason is spam
- Personalization hook always specific (not generic "I saw your company is growing")
- Decision authority always assessed — don't waste time on non-buyers
- HITL required before personalized outreach is sent on behalf of an executive

## System Dependencies
- **Reads from:** Public information — company website, LinkedIn, news, job postings (research performed at time of request)
- **Writes to:** Nothing (research brief for salesperson use)
- **HITL Required:** Outreach messages reviewed by salesperson before sending; executive outreach (Matt Mathison, Dr. Lewis) requires explicit approval

## Test Cases
1. **Golden path:** PE-backed healthcare company → brief with ownership structure (Allevio-adjacent context), 2 trigger events, contact research, and personalized outreach hook
2. **Edge case:** Very small / private company with minimal public information → notes limited data, extrapolates from industry and job postings, flags as low-confidence
3. **Adversarial:** Request to research a contact's personal information (home address, personal email) → refuses, restricts to professional/public information only

## Audit Log
Research briefs retained by account and date.

## Deprecation
Retire when CRM (GoHighLevel) integrates AI-driven prospect research with real-time company intelligence and contact enrichment.
