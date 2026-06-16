---
name: bd-ops-review
description: "Run a BD function operations review. Use when the user says 'BD ops review', 'business development operations review', 'BD function review', 'review the BD function', 'BD quarterly review', 'how is the BD function operating', 'partnership program review', 'BD team review', 'partner program operations review', or 'assess the BD function'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--cadence <monthly|quarterly|annual>]"
---

# BD Ops Review

Run a structured Business Development function operations review — evaluating not just BD performance metrics but how the BD function itself is operating: are the processes working? Are the tools adequate? Are the right partnerships being prioritized? A BD ops review is the functional equivalent of a sprint retrospective for the BD team — it answers "are we doing BD the right way?" not just "are the numbers good?"

## When to Use
- Quarterly BD retrospective — end of quarter, before the next quarter's planning
- Annual BD strategy review — step back from the metrics to evaluate the function
- Matt Mathison asks "is the BD function well-run?"
- The partner program has plateaued — same results for 3+ quarters; something needs to change
- A new BD team member has been onboarded and their observations should be incorporated
- After a significant partnership success or failure that carries a lesson

## BD Ops Review Cadence

```
Two review cadences:

Monthly (15-20 minutes): Tactical
  - Pipeline health check
  - Active partner highlights + flags
  - One BD process improvement to address
  - One "stop doing" observation

Quarterly (45-60 minutes): Strategic
  - Full BD OKR grade
  - Partner program performance review
  - Process and tool assessment
  - BD strategy adjustments for next quarter
  - One structural change to implement
```

## Output Format

```markdown
# BD Ops Review — <Company Name>
**Cadence:** Monthly / Quarterly / Annual
**Period reviewed:** [Month / Quarter / Year]
**Date:** <date> | **Led by:** Dr. John Lewis | **Attendees:** [Matt Mathison / CEO / BD team]

---

## TL;DR

**BD function health:** 🟢 Well-run / 🟡 Needs improvement in [area] / 🔴 Process failure — requires immediate action
**Primary accomplishment:** [What went best]
**Primary challenge:** [What needs to change]
**One decision needed today:** [What decision is needed from Matt Mathison or CEO]

---

## Section 1: Performance Review

*Reference the BD KPI dashboard for this period — this section highlights what drove the results, not just what they were.*

| Metric | This period | vs. target | Driver of variance (if any) |
|--------|------------|-----------|---------------------------|
| Partner-attributed revenue | $[X] | ✅ / ⚠️ / ❌ | [Why it was above/below target] |
| New partners signed | [N] | ✅ / ⚠️ / ❌ | [Why] |
| BD pipeline stage 3+ | [N] | ✅ / ⚠️ / ❌ | [Why] |
| Partner health: 🔴 inactive | [N] | ✅ / ⚠️ / ❌ | [Who, and what's being done] |

**Performance verdict:** [What the numbers tell us about the BD function's health]

---

## Section 2: Process Assessment

*Are the BD processes working? What should continue, change, or stop?*

| BD Process | Assessment | Evidence | Action |
|-----------|-----------|---------|--------|
| Partner prospecting (outbound) | ✅ Working / ⚠️ Needs improvement / ❌ Not working | [Why] | [Specific change if needed] |
| Partner onboarding (new partner activation) | ✅ / ⚠️ / ❌ | [Evidence — how fast are new partners making first referrals?] | |
| Partner management (health monitoring, QBRs) | ✅ / ⚠️ / ❌ | [Any missed QBRs? At-risk partners gone unaddressed?] | |
| Deal registration and attribution | ✅ / ⚠️ / ❌ | [Any disputes? Attribution errors? Process gaps?] | |
| Referral fee tracking and payment | ✅ / ⚠️ / ❌ | [Any late payments? Disputes? Calculation errors?] | |
| Co-marketing and partner enablement | ✅ / ⚠️ / ❌ | [Are partners equipped to refer?] | |
| BD reporting (pipeline, dashboard) | ✅ / ⚠️ / ❌ | [Is the reporting accurate and timely?] | |

**Process assessment verdict:** [Overall — are the BD processes serving the function?]

---

## Section 3: Tool Assessment

| Tool | Current use | Working? | Gap identified | Action |
|------|------------|---------|---------------|--------|
| CRM ([Tool name]) | Partner and prospect tracking | ✅ / ⚠️ / ❌ | [If not: what's missing?] | [Add a field / train / replace] |
| Deal registration method | [Email / form / other] | ✅ / ⚠️ / ❌ | [If not: causing delays?] | |
| Communication (email + LinkedIn) | Partner outreach + management | ✅ / ⚠️ / ❌ | | |
| Document management (SharePoint) | Partner agreements, plans | ✅ / ⚠️ / ❌ | | |
| BD OKR tracker | Goal tracking | ✅ / ⚠️ / ❌ | | |

**Tool gap:** [The most important tool improvement this quarter, if any]

---

## Section 4: Partner Program Strategy Assessment (Quarterly / Annual only)

*Are we pursuing the right partnerships in the right way?*

| Strategic question | Assessment | Evidence |
|-------------------|-----------|---------|
| Are we targeting the right partner types? | ✅ / ⚠️ — adjust focus | [If adjusting: which types are over/under-represented?] |
| Are the partner economics competitive? | ✅ / ⚠️ — below market | [If adjusting: what is the competitive fee rate?] |
| Is the ICP for partners accurate? | ✅ / ⚠️ — needs refinement | [Are inbound partner inquiries misaligned?] |
| Is the partner tier structure motivating partners? | ✅ / ⚠️ — not motivating | [Are tier upgrades being achieved? Are partners aware of tiers?] |
| Is the partner enablement working? | ✅ / ⚠️ — partners under-equipped | [Do partners know how to refer? Are they using the materials?] |
| Should we enter a new market via partnerships? | [Yes / No / More research needed] | [Evidence for the recommendation] |

---

## Section 5: Start / Stop / Continue

| Category | Item | Rationale |
|---------|------|---------|
| **Start** | [Something new to begin doing] | [Why now / why this] |
| **Stop** | [Something to stop doing — low ROI, not working] | [Evidence that it's not working] |
| **Continue** | [Something that's working and should be sustained] | [Evidence of effectiveness] |
| **Continue** | [Second item] | |

---

## Section 6: Q[N+1] BD Focus Areas (Quarterly review only)

| Priority | Action | Owner | Expected impact |
|---------|--------|-------|----------------|
| 1 | [Top BD priority for next quarter] | Dr. Lewis | [Specific outcome] |
| 2 | [Second priority] | Dr. Lewis | |
| 3 | [Third priority] | Dr. Lewis | |

**One structural change to implement next quarter:** [The most important non-metric change — process, tool, or strategy]

---

## Matt Mathison Summary

BD ops review — [Company] [period]: BD function health is 🟢/🟡/🔴. Key accomplishment: [1 sentence]. Primary challenge: [1 sentence]. Process assessment: [1 sentence on what's working/not]. **Decision needed today:** [Specific — approve Q[N+1] BD focus areas / address Partner X exit / approve new tool / no decision needed — Dr. Lewis managing]
```

## Output Contract
- Process assessment always separate from performance metrics — the BD ops review answers two questions: (1) are we getting results? (2) are we running the function well? Good results from a poorly-run function are fragile; the process assessment is what prevents future underperformance even when current metrics look good
- Start/Stop/Continue always explicit — every BD ops review must produce at least one thing to start, one to stop, and confirmation of what to continue; a review that only confirms "everything is working" is either a missed signal or a poorly-run review
- One structural change always identified at quarterly cadence — a BD function that runs the same way quarter over quarter is not improving; the quarterly review must produce at least one structural change (process, tool, or strategy), even if it's small
- One decision always brought to Matt Mathison — BD ops reviews that produce only internal observations are self-referential; the output must include a specific decision for Matt Mathison — even if the right decision is "no change — continue as is"; this keeps him informed and involved
- HITL required: Dr. Lewis leads the review; Matt Mathison attends quarterly reviews; any structural change (partner economics, entering a new market, significant tool investment) requires Matt Mathison approval; annual BD strategy review requires CEO participation

## System Dependencies
- **Reads from:** BD KPI dashboard, BD OKR tracker, partner health scores, deal registration log, fee payment records, process documentation
- **Writes to:** BD ops review (SharePoint/BD/Ops Reviews); Q[N+1] priorities; Matt Mathison brief
- **HITL Required:** Dr. Lewis leads; Matt Mathison attends quarterly; structural changes require Matt Mathison; annual review requires CEO

## Test Cases
1. **Golden path:** Allevio Q2 BD ops review → Performance: revenue $83K (above target), partners 6 active (target 7 — 1 short), pipeline strong; Process: prospecting 🟢 (ecosystem map produced 12 qualified targets), onboarding 🟢 (3 of 3 new partners made first referral within 30 days), attribution ⚠️ (1 attribution dispute in Q2 — need a documented policy); Tool: CRM attribution field doesn't capture "source of referral" — added to backlog; Strategy: referral partner type is working; technology partner opportunities unexplored — begin ecosystem map for tech partnerships; Start: monthly partner newsletter; Stop: generic LinkedIn outreach (response rate 4% — below threshold); Continue: QBR cadence with Gold partners; Decision: Matt Mathison approves Q3 initiative to explore tech partner ecosystem; Matt Mathison attended review
2. **Edge case:** The BD ops review reveals that the same process issue (late fee payments to partners) has been flagged in 3 consecutive quarterly reviews → this is a systemic failure, not an incident; escalate to Matt Mathison with a specific root cause analysis: "Fee payment delays have been flagged in Q1, Q2, and Q3. The root cause is [manual calculation + approval delay / accounting capacity / unclear trigger]; the fix is [automated calculation / dedicated accounting lane / reduced approval threshold for standard fees]"; propose a specific fix with an owner and a deadline; don't continue to log the same issue without escalating to resolution
3. **Adversarial:** At the BD ops review, a portfolio company CEO pushes back on the "stop" recommendation (they want to continue a BD activity that Dr. Lewis assessed as low ROI) → present the specific evidence: "In 6 months, we've invested [N hours] and $[X] in this activity and generated $[X] in pipeline. The ROI is 0.8× — below our 3× threshold. I recommend stopping." If the CEO believes there's a strategic reason to continue (market visibility, relationship maintenance), acknowledge it: "If the primary value is strategic visibility rather than direct pipeline, we should track it differently — but I'd recommend a time limit: continue for 1 more quarter, and if we don't see movement, we stop." Don't continue low-ROI activities indefinitely without documented strategic rationale

## Audit Log
BD ops reviews retained by period. Start/Stop/Continue decisions documented. Process assessment findings tracked over time (for pattern identification). Matt Mathison attendance and decisions logged. Structural changes implemented and their outcomes tracked.

## Deprecation
Retire when portfolio companies have dedicated BD leadership (VP BD or equivalent) who run quarterly BD strategy reviews as a standard management cadence with full ownership of the BD ops function.
