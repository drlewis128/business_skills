---
name: activation-flow-designer
description: "Design user activation flows to improve time-to-value. Use when the user says 'activation flow', 'onboarding flow', 'time to first value', 'get users to aha moment', 'improve onboarding', 'first session design', 'user setup flow', 'reduce time to value', 'activation rate', or 'first-run experience'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--aha-moment <description>] [--mode <design|audit|optimize>]"
---

# Activation Flow Designer

Design user activation flows that get users to first value as fast as possible. Activation is the moment a user first experiences the core value of a product. Get there fast and they're retained. Fail to get there and they churn within days. For MBL's AI products, activation is when the agent actually does something useful — not when it's configured, not when it's connected, but when it delivers value.

## When to Use
- New product or feature launch — design the first-run experience
- D1 retention is below target — users aren't coming back after first session
- Users are signing up but not completing key actions in first session
- A new user is lost or confused in the current onboarding
- Portfolio company product assessment — how fast does their product activate users?

## Activation Framework

```
Key concepts:
  Aha moment: The specific moment a user experiences core product value
    Example Meeting Intelligence: "I see my meeting summary with action items assigned"

  Time-to-value (TTV): Time from signup/access to aha moment
    Target: as short as possible; eliminate all unnecessary steps between access and aha

  Activation rate: % of new users who reach the aha moment
    If <50%: significant activation problem
    Target: >70% reach aha moment within first session

Activation flow design principles:
  1. Get to the aha moment with minimum steps
  2. Every step must be necessary — cut anything that doesn't enable aha
  3. Show progress — users need to know they're moving forward
  4. Set expectations — tell them what value is coming, not just what to click
  5. Don't ask for information you don't need yet
```

## Onboarding Anti-Patterns

```
Anti-pattern 1: Feature tour before value
  "Let me show you all the things you can do!" before they've experienced anything
  Fix: Get them to value first, then discover features

Anti-pattern 2: Form before value
  Long setup form, profile completion, preferences — before they've seen why it matters
  Fix: Minimum required info only; defer everything else

Anti-pattern 3: Empty state with no direction
  "You have no meetings yet" with no clear next step
  Fix: Guided action or sample data; tell them exactly what to do

Anti-pattern 4: Too many steps to value
  10+ clicks to get to the moment where the product is actually useful
  Fix: Ruthlessly cut; if a step can be deferred to later, defer it

Anti-pattern 5: Expecting the user to configure the AI
  "Set up your preferences" before they've seen what the AI does
  Fix: Run with smart defaults; let them experience it first, adjust later
```

## Output Format

```markdown
# Activation Flow Design — <Product/Feature>
**Date:** <date> | **Designer:** Dr. John Lewis
**Product:** <name> | **User type:** <who is being onboarded>

---

## Aha Moment Definition

**The aha moment:** "<Specific moment when the user first experiences core value>"
**What they see/feel:** <precise description of the aha moment experience>
**Current time to aha:** <N> minutes / steps (if known)
**Target time to aha:** <N> minutes / <N> steps

---

## Current State Audit (if redesigning)

| Step | Purpose | Required? | User friction | Cut/Keep |
|------|---------|---------|------------|---------|
| 1. <step> | <why> | Yes | Low | Keep |
| 2. <step> | <why> | No | Medium | Cut |
| 3. <step> | <why> | Maybe | High | Simplify |

**Current step count to aha:** <N>
**Biggest friction points:** <list>

---

## Proposed Activation Flow

### Step 1: <Action>
**Screen/state:** <what the user sees>
**User action:** <what they do>
**Copy:** "<Specific instructional text>"
**Why necessary:** <this step cannot be cut because...>

### Step 2: <Action>
[Same format]

[Continue through aha moment]

### AHA MOMENT: <Moment name>
**What the user sees:** <specific description>
**What makes this the aha:** <why this creates the value realization>
**Celebration:** <optional — how do we mark this moment?>

---

## Activation Funnel (expected)

| Step | Expected completion % | Drop prediction | Fix if below |
|------|---------------------|----------------|-------------|
| Step 1 | 95% | Low friction | Check copy clarity |
| Step 2 | 80% | Some friction | Simplify form |
| Aha moment | 70% | — | Target activation rate |

---

## Deferred Steps (will happen after aha moment)

| Step | When to ask | How to ask |
|------|-----------|-----------|
| [Profile completion] | After first aha; in-app prompt | "Personalize your experience" |
| [Integration setup] | When naturally needed | Contextual prompt at point of need |
| [Notification preferences] | Day 3 email | Optional; default to sensible values |

---

## Empty State Design

**If user reaches aha moment location before data exists:**
Empty state shows: <what to show — sample data / guided action / clear next step>
CTA: "<Specific action button text>"

---

## Experiment Plan

| Hypothesis | Test | Metric | Duration |
|-----------|------|--------|---------|
| Fewer steps → higher activation | Remove step 2; A/B test | Activation rate | 14 days |
| Sample data → faster aha | Show sample meeting summary | Time to first action item | 14 days |
```

## Output Contract
- Aha moment always precisely defined — "value" is not a definition
- Every step must justify inclusion — if it can't be justified, it should be cut
- Empty state always designed — users will encounter it; pretending they won't is common
- Experiment plan always included — activation improvements are testable
- HITL required: Dr. Lewis reviews and approves activation flow; significant onboarding changes require Dr. Lewis approval; Matt Mathison informed if onboarding affects portfolio company experience

## System Dependencies
- **Reads from:** Analytics (current activation funnel data), session recordings, user interviews
- **Writes to:** Activation flow design document (SharePoint/Product); engineering specs for implementation
- **HITL Required:** Dr. Lewis approves; engineering confirms feasibility; test plan approved by Dr. Lewis

## Test Cases
1. **Golden path:** Meeting Intelligence activation redesign → Current: 8 steps, 35% reach aha moment; Aha moment: "sees first meeting summary with action items"; Redesign: 3 steps (connect Krista → trigger test meeting → see summary); Defer: profile, preferences, notification setup; Empty state: sample meeting summary (with note "your real summaries will appear here"); target: 70% activation rate
2. **Edge case:** The product requires real data to work (can't show sample data) → Wizard approach: manually trigger the aha moment for the first user (Dr. Lewis creates the first summary manually); then automate; don't show an empty state if you can avoid it
3. **Adversarial:** Product manager wants to collect more user data during onboarding to "personalize the experience" → every extra form field in onboarding reduces activation; defer data collection until after aha moment; users will share more once they've experienced value; minimize first

## Audit Log
Activation flow designs retained. Funnel data before/after changes documented. Experiment results retained.

## Deprecation
Retire when product team has a dedicated growth team or UX designer managing the first-run experience as an ongoing priority.
