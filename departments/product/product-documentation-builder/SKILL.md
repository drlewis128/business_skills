---
name: product-documentation-builder
description: "Build user-facing product documentation. Use when the user says 'product documentation', 'user docs', 'help center', 'write documentation', 'product guide', 'how-to guide', 'user manual', 'knowledge base', 'release notes', 'changelog for users', or 'document this feature'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--type <guide|reference|release-notes|faq>] [--audience <user|admin|developer>]"
---

# Product Documentation Builder

Write clear, useful product documentation that users actually read and use. Bad documentation is one of the most invisible sources of user friction — users who can't figure out how to use the product don't complain, they just churn. For MBL's AI products, documentation is especially important because the AI's behavior isn't always predictable from the UI — users need to understand what it does, what it doesn't do, and what to expect.

## When to Use
- New product or feature launch — document it before users ask
- Support tickets reveal the same question repeatedly — write the FAQ entry
- Beta users ask "how does this work?" — that's a documentation gap
- Onboarding new users — build the guide they need for first week
- Portfolio company rollout — build the documentation for their team

## Documentation Types

```
Getting started guide:
  For: new users in their first session
  Goal: get them through the first successful use of the core feature
  Format: step-by-step, numbered, screenshots or short video

How-to guide:
  For: users who know the product but need help with a specific task
  Goal: task completion
  Format: specific task → specific steps → specific outcome

Reference documentation:
  For: users who want to understand all capabilities
  Goal: complete picture of what the product does
  Format: structured, searchable, comprehensive

FAQ:
  For: users with specific questions — often pulled from support tickets
  Goal: self-serve answer to common questions
  Format: question → direct answer → relevant link

Release notes:
  For: existing users notified of changes
  Goal: understand what changed and why
  Format: version, date, what changed, what to do differently

Troubleshooting guide:
  For: users encountering errors
  Goal: self-diagnose and resolve
  Format: symptom → likely cause → resolution → escalation path
```

## Writing Principles

```
1. Lead with the outcome, not the feature
   Bad: "The action item extraction feature uses Claude to analyze meeting transcripts"
   Good: "Meeting Intelligence automatically pulls action items from your meeting so you don't have to"

2. Write for the user's task, not the product's capability
   Bad: "You can configure the summary format settings in Preferences"
   Good: "To change how summaries look: Settings → Summary format → choose your style"

3. One task per page
   Don't write a page that covers 5 things — write 5 pages, one per task
   Users arrive with a specific task in mind; match the doc to the task

4. Screenshots and examples over prose
   Show the screen they'll see; show the example output they'll get
   "Like this: [example]" beats two paragraphs of explanation

5. Write the error states
   What happens when it fails? What should the user do?
   "If you see [error message], it means [reason]. To fix it: [steps]"
```

## Output Format

```markdown
# <Product> — <Guide Title>
**Type:** Getting started / How-to / Reference / FAQ / Release notes
**Audience:** User / Admin / Developer
**Version:** <product version> | **Updated:** <date>

---

## Overview

**What this covers:** <one sentence>
**Time to complete:** <N> minutes

---

## Getting Started Guide Template

### Step 1: <Action verb + what>

[Screenshot or example here]

<2-3 sentences maximum — what they do and why>

**Tip:** <optional — a helpful shortcut or common mistake>

---

### Step 2: <Action verb + what>

[Screenshot or example here]

<2-3 sentences>

---

### You did it!

[Screenshot of success state]

You've completed your first [core job]. Here's what just happened:
- [What the product did, in user terms]
- [Where to find the result]

**Next step:** [Link to next guide]

---

## FAQ Template

### Why did [AI output] say [X] when I expected [Y]?

[AI products need specific FAQ entries explaining why the output varies]

Meeting Intelligence extracts action items from meeting transcripts. If an action item you expected isn't in the list, it's likely because:
1. It wasn't explicitly stated in the meeting (it was implied)
2. The transcript didn't capture it clearly
3. The meeting was below the minimum length

**To add a missed action item:** [specific steps]

---

## Release Notes Template

# Meeting Intelligence — v1.2.0
**Released:** <date>

### What's new

**Action item tagging** — Action items now show the name of the person responsible when mentioned in the meeting.
> *Before:* "Follow up on the proposal"
> *Now:* "Follow up on the proposal — Matt Mathison"

### Improved

- Summary generation is now 40% faster
- Monday.com sync works even when the board has custom column types

### Fixed

- Fixed: summaries occasionally showed action items from a different meeting (rare)
- Fixed: summary email was sent twice when Krista.ai reconnected mid-meeting

### Known issues

- Action items from meetings longer than 3 hours may be truncated. We're working on a fix.
```

## Output Contract
- Every piece of documentation written from the user's task perspective — not the feature's capability perspective
- All AI products always have a "Why did the AI...?" FAQ section — this is the most common AI product support question
- Release notes always include a "Known issues" section if any exist — hiding known issues destroys trust
- Error states always documented — users who hit errors and find no documentation churn immediately
- HITL required: Dr. Lewis reviews all user-facing documentation before publication; portfolio company documentation reviewed by portfolio lead before distribution; release notes reviewed by Dr. Lewis before sending

## System Dependencies
- **Reads from:** Feature specs, HITL review logs, support ticket questions, beta feedback
- **Writes to:** Help center / SharePoint / product wiki; release notes email
- **HITL Required:** Dr. Lewis reviews before publication; portfolio-facing docs reviewed by portfolio lead

## Test Cases
1. **Golden path:** Meeting Intelligence getting started guide → Audience: MBL team member; Steps: (1) Your first meeting (Krista.ai records automatically); (2) After the meeting (where to find the summary); (3) Your action items (how to see them in Monday.com); (4) Editing the summary (what to do if something's wrong); Success state: screenshot of the Monday.com board with action items populated; FAQ: "Why is an action item missing?"; Release notes for v1.0: what's included, what's coming in v1.1
2. **Edge case:** Product behavior is non-deterministic (AI output varies) → document the expected behavior range, not just the happy path; "Meeting Intelligence will extract action items in most cases; for short informal conversations it may not find any"; don't promise determinism you can't deliver; set accurate expectations
3. **Adversarial:** Engineering wants to publish technical documentation (API references, config options) as the user docs → technical docs serve developers, not end users; end users need task-oriented guides; keep them separate; if users end up reading technical docs, it means user docs don't exist yet — fix that

## Audit Log
Documentation versions retained. Support ticket reduction tracked after documentation is published. User documentation feedback collected.

## Deprecation
Retire when product team has a dedicated technical writer and a documentation platform (Notion, Gitbook, Intercom) with an established publishing process.
