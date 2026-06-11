---
name: sales-playbook-builder
description: "Build or update a sales playbook for a product, segment, or entity. Use when the user says 'sales playbook', 'build a playbook', 'create a sales process', 'document our sales approach', 'sales methodology', 'playbook for selling X', or 'how do we sell this'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--product <name>] [--segment <smb|mid-market|enterprise>]"
---

# Sales Playbook Builder

Build a structured sales playbook for a product, segment, or entity. A playbook is the codified answer to "how do we sell this?" — it makes best practices replicable, onboarding faster, and performance more consistent across reps.

## When to Use
- Launching a new product or service that needs a defined go-to-market approach
- Onboarding a new sales rep (playbook = their training guide)
- Win rate is inconsistent across reps (playbook codifies what top reps do)
- Entering a new market or segment
- Annual sales kickoff (refresh and align on updated playbook)

## Playbook Sections

### 1. Our Business Context
- Entity overview (1-2 paragraphs on who we are and what we sell)
- What problem we solve (and for whom)
- Core value proposition (why we win)
- Differentiation (why us vs. alternatives)

### 2. Ideal Customer Profile (ICP)
Link to `icp-builder` output or summarize:
- Target industries
- Company size (employees, revenue)
- Key personas (economic buyer, champion, influencer, blocker)
- Trigger events that create buying urgency

### 3. Sales Process (Stage by Stage)
For each stage: goal, activities, exit criteria, common mistakes
Link to `deal-stage-reviewer` criteria

### 4. Discovery Framework
- Top 10 discovery questions (use `discovery-question-bank`)
- Qualification criteria (MEDDIC or similar)
- Disqualification triggers (when to walk away)

### 5. Demo and Pitch Framework
- Demo structure (opening, challenge, solution, proof, next steps)
- Standard pitch deck flow
- Customization points (what to tailor vs. what stays standard)
- Common objections and responses (use `objection-handler`)

### 6. Proposal and Close Process
- When to send a proposal (not too early!)
- Proposal structure (use `proposal-builder`)
- Negotiation guardrails
- Discount authority (use `pricing-calculator`)
- Close techniques and timing

### 7. Competitive Positioning
- Top 3-5 competitors and how we beat them
- Battlecards (use `competitive-battlecard`)
- Competitive discovery questions

### 8. Tools and Systems
- CRM (GoHighLevel): fields to fill at each stage
- Communication: outreach templates (use `outbound-sequence-builder` and `sales-email-writer`)
- Required reading: what reps must know before their first call

### 9. Metrics and Expectations
- Activity expectations (calls, emails, meetings per week)
- Pipeline coverage requirement (minimum 3x)
- Quota and attainment expectations
- Ramp timeline for new reps

## Output Format

```markdown
# Sales Playbook — <Entity/Product>
**Version:** <N> | **Owner:** <name> | **Last Updated:** <date>

---

## 1. Our Business — The Short Version

**What we do:** <1 sentence>
**Who we serve:** <ICP summary>
**Why we win:** <top 3 differentiators>
**Why we lose:** <top 2 weaknesses to be honest about>

---

## 2. Ideal Customer Profile

**Industries:** <list>
**Company size:** <range>
**Trigger events:** <list of buying catalysts>

### Key Personas

| Persona | Title Examples | What They Care About | How to Engage |
|---------|--------------|---------------------|---------------|
| Economic Buyer | CFO, COO, CEO | ROI, budget, risk | Lead with business case |
| Champion | Director, Manager | Making their team's life better | Make them a hero |
| Influencer | IT, Legal | Risk, compliance | Address concerns early |

---

## 3. Sales Process

| Stage | Goal | Key Activities | Exit Gate |
|-------|------|----------------|-----------|
| 1. Prospect | Identify fit | Research, ICP match | Contact made |
| 2. Qualify | Confirm pain + budget + authority | Discovery call | MEDDIC 4/6 complete |
| 3. Demo | Show solution fit | Demo + tailoring | "This solves our problem" |
| 4. Propose | Get to decision | Proposal + pricing | Economic buyer reviewing |
| 5. Negotiate | Reach agreement | Legal + terms | Verbal commit |
| 6. Close | Book the deal | Contract signed | Closed-Won in CRM |

---

## 4. Discovery — The Questions That Unlock Deals

**Pain Questions:**
1. <Question>
2. <Question>

**Qualification Questions:**
1. <Question about budget>
2. <Question about decision process>
3. <Question about timeline>

**Disqualify if:**
- No budget and no path to create it within 90 days
- No decision-maker access in the first 3 touches
- Timeline is > 12 months out with no urgency driver

---

## 5. Objection Responses (Top 5)

| Objection | Response |
|-----------|---------|
| "Too expensive" | [Response] |
| "We're happy with what we have" | [Response] |
| "We need to think about it" | [Response] |
| "We'll do it next quarter" | [Response] |
| "We're also looking at [Competitor]" | [Response — see battlecard] |

---

## 6. Activity Expectations

| Metric | Weekly Expectation |
|--------|-------------------|
| New prospects researched | <N> |
| Outbound touches (email + phone) | <N> |
| First meetings booked | <N> |
| Pipeline coverage maintained | ≥ 3× quota |

---

## 7. Tools Quick Reference

| Tool | Used For | When to Update |
|------|---------|---------------|
| GoHighLevel CRM | All deal tracking | After every interaction |
| <Email tool> | Outreach sequences | Launch Day 1 on new prospects |
| <Proposal tool> | Proposals | Stage 4 entry |

```

## Output Contract
- All 7+ playbook sections included — no partial playbook delivered
- ICP, discovery questions, and objection handlers cross-referenced to source skills
- Metrics always specific and measurable, not vague ("make X calls per day" not "be active")
- HITL required: Matt Mathison approves playbook before it becomes the team standard

## System Dependencies
- **Reads from:** ICP definition, win/loss data, product positioning (provided or from linked skills)
- **Writes to:** Nothing (playbook for HITL review and team distribution)
- **HITL Required:** Dr. Lewis and Matt Mathison review and approve before team rollout; updates to playbook require Tier 1 sign-off

## Test Cases
1. **Golden path:** Sales playbook for MBL AI services product, mid-market segment → 7 sections, ICP for 50-500 person companies, MEDDIC-based qualification, 5 objection responses, activity expectations for 3-rep team
2. **Edge case:** No existing win/loss data → builds playbook from ICP and product positioning, flags that win/loss analysis should run after 10+ deals to validate assumptions
3. **Adversarial:** Request to set unrealistic activity metrics to pressure underperforming reps → recommends data-backed metrics from industry benchmarks, flags that unrealistic metrics drive burnout and attrition

## Audit Log
Playbook versions retained by entity and version. Changes tracked with date and approver.

## Deprecation
Retire when sales enablement platform (Highspot, Seismic) manages playbook versioning, distribution, and usage tracking automatically.
