---
name: growth-loop-designer
description: "Design growth loops that create compounding product growth. Use when the user says 'growth loop', 'viral loop', 'product-led growth', 'how do we grow without marketing', 'compounding growth', 'referral loop', 'organic growth mechanism', 'growth flywheel', 'how do users get more users', or 'network effect'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--loop-type <viral|content|paid|data>]"
---

# Growth Loop Designer

Design growth loops that create compounding, sustainable product growth. A growth loop is a self-reinforcing cycle where users taking value-creating actions brings in more users. Unlike a funnel (which is linear and requires constant re-filling), a loop compounds — each cycle makes the next cycle bigger. For MBL's AI products, growth loops often involve the AI getting better as more users use it, or workflow tools becoming stickier as teams adopt them together.

## When to Use
- Product has PMF and you're thinking about scaling
- Growth is linear but should be compounding
- Acquisition requires too much active marketing — looking for organic mechanisms
- Building an AI product that can improve with usage data
- Portfolio company assessment — do they have or can they build a growth loop?

## Growth Loop Types

```
Viral loop:
  User gets value → User shares with colleague → Colleague signs up → Gets value → Shares
  Examples: Slack (team invites), Figma (share design), Loom (send video)
  Applicable for MBL: Meeting Intelligence (share summaries with team)

Content loop:
  User creates content → Content attracts new users → New users create content → Loop
  Examples: LinkedIn posts, GitHub repos, Notion templates
  Applicable for MBL: Agent skill library (share skills publicly)

Data loop (AI specific):
  Users use product → Usage generates training/feedback data → AI gets better → More users want it
  Examples: Google Maps (traffic reports make routing better), Grammarly
  Applicable for MBL: Claude prompt quality improves with HITL feedback data

Workflow/integration loop:
  Product embeds in workflow → Workflow outputs invite collaborators → Collaborators join → Loop
  Examples: Monday.com (boards shared with team), Salesforce (CRM shared across org)
  Applicable for MBL: Monday.com action item sync (team joins to see/act on items)

Paid loop:
  Acquisition spend → Users who monetize → Revenue funds more acquisition
  Not a true organic loop but important to understand unit economics
```

## Output Format

```markdown
# Growth Loop Design — <Product>
**Date:** <date> | **Designer:** Dr. John Lewis
**Product:** <name> | **Current growth type:** Linear / Compounding
**Loop type designed:** Viral / Content / Data / Workflow

---

## Growth Loop Diagram

```
[User Entry] → [Value Action] → [Output that reaches new users] → [New user sees output] → [New user joins] → [Gets value] → [Loop]
```

**Specific loop for <Product>:**
1. [Existing user] receives a meeting summary with action items in Monday.com
2. [Action item] is assigned to a colleague who doesn't yet use the product
3. [Colleague] sees assigned action item in Monday.com → clicks link
4. [Link] shows a clean summary of the meeting and the action item
5. [Colleague] wants their meetings summarized too → signs up / requests access
6. [Repeat from step 1]

---

## Loop Metrics

| Loop stage | Metric | Current | Target | Gap |
|-----------|--------|---------|--------|-----|
| Value action | Meeting summaries produced per week | <N> | <N> | <N> |
| Output reach | Action items assigned to non-users per week | <N> | <N> | <N> |
| Conversion | % of non-users who see output and request access | <N>% | <N>% | <N>pp |
| **Loop coefficient K** | Average new users each current user brings in | <K> | >0.5 | <gap> |

**K = 1.0:** Viral; product grows on its own
**K = 0.5:** Significant organic contribution; marketing amplifies
**K < 0.2:** Not really looping; mostly linear

---

## Loop Constraints (what's breaking the loop)

| Stage | Constraint | Fix |
|-------|-----------|-----|
| Output reach | Action items rarely assigned to non-users | Expand integration to more team members |
| Conversion | Non-users see item but don't know what created the summary | Add product branding to summary view |
| Access friction | Non-user can't easily request access | One-click access request → Dr. Lewis approves |

**Biggest constraint:** <the single biggest thing limiting loop velocity>
**Highest-leverage fix:** <the one change that will most improve K>

---

## Data Loop (if AI product)

```
Usage generates:
  - HITL feedback (approved vs. rejected summaries)
  - Action item quality signal (items completed vs. ignored)
  - User preferences (edit patterns)

This data improves:
  - Summary quality (better prompts based on what users approve)
  - Action item extraction (learn which items get acted on)
  - Personalization (learn each user's style preferences)

Better AI → more adoption → more data → better AI [data flywheel]
```

**Data collection point:** <Where in the workflow we capture feedback>
**How it feeds back:** <Mechanism for using this data to improve AI outputs>

---

## Growth Model

| Quarter | New users from marketing | New users from loop | Total users | Loop % of growth |
|---------|------------------------|-------------------|------------|----------------|
| Q1 | 10 | 2 | 12 | 14% |
| Q2 | 10 | 4 | 26 | 29% |
| Q3 | 10 | 8 | 44 | 44% |
| Q4 | 10 | 14 | 68 | 58% |

**Goal:** Loop-driven growth exceeds marketing-driven growth by Q4
```

## Output Contract
- Loop always diagrammed as a specific sequence of steps — "viral loop" without steps is a concept, not a design
- K coefficient always calculated or estimated — growth loops without metrics are storytelling
- Constraints always identified — a loop diagram without identifying bottlenecks creates false confidence
- Data loop always assessed for AI products — this is the most durable moat for AI products
- HITL required: Dr. Lewis approves growth loop design; Matt Mathison aligned if loop involves portfolio company expansion; Dr. Lewis approves any changes to how user data is captured or used

## System Dependencies
- **Reads from:** Product analytics (user referrals, sharing data), Monday.com integration data
- **Writes to:** Growth loop design document (SharePoint/Product); loop K metrics in Monday.com dashboard
- **HITL Required:** Dr. Lewis approves; Matt Mathison aligned on loop strategy; any data feedback mechanism requires Dr. Lewis review

## Test Cases
1. **Golden path:** Meeting Intelligence growth loop design → Workflow loop: summary with action items → assigned to non-users → non-user sees output → requests access; K=0.3 today (mainly because action items rarely assigned cross-user); Fix: promote cross-user assignment in the product; add "share summary" button; target K=0.6 by Q3; data loop: HITL approval/rejection data feeds prompt improvement pipeline; monthly prompt review by Dr. Lewis
2. **Edge case:** Product is an internal tool with no natural sharing mechanism → internal tools can still have loops: sharing a useful output creates pull; "show Matt this dashboard" is a viral moment; design the loop around the moment when someone outside the core users sees value and wants it too
3. **Adversarial:** Team wants to build a referral incentive program to force a loop → incentivized referrals are not organic loops; they're paid acquisition with a different payment method; a product with weak inherent virality won't be fixed by incentives; fix the product's natural value-sharing first; incentives can amplify a weak loop but can't create one from nothing

## Audit Log
Growth loop designs versioned. K coefficient tracked monthly. Loop improvements and their impact on K documented.

## Deprecation
Retire when product team has a dedicated growth function with an established loop measurement system and iterative improvement process.
