---
name: customer-journey-mapper
description: "Map the end-to-end customer journey from prospect to advocate. Use when the user says 'customer journey', 'map the journey', 'customer experience', 'journey map', 'what happens after they buy', 'customer lifecycle', or 'map the touchpoints'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--segment <smb|mid-market|enterprise>] [--focus <full|post-sale>]"
---

# Customer Journey Mapper

Map the end-to-end customer journey from first awareness through advocacy. Journey maps reveal where customers get confused, frustrated, or drop off — and where you're delivering exceptional moments that drive referrals. The map is the diagnosis; the fix comes from what it reveals.

## When to Use
- Designing or rebuilding the CS onboarding experience
- NPS scores are inconsistent — diagnose where experience breaks down
- Churn is spiking in a specific time period (early churn vs. year 2+ churn tells you different things)
- New CS hire orientation — here's the customer experience we deliver
- Portfolio company assessment — what does their customer journey look like?

## Journey Phases

| Phase | Definition | CS Team Role |
|-------|-----------|-------------|
| **Awareness** | Prospect becomes aware of our solution | None (Marketing/Sales) |
| **Evaluation** | Prospect evaluates options | Sales / CS (handoff prep) |
| **Purchase** | Contract signed | Sales → CS handoff |
| **Onboarding** | Customer activates and learns | CS — Kickoff + implementation |
| **Adoption** | Customer builds habits | CS — Driving value realization |
| **Value Realization** | Customer achieves their goals | CS — QBR, success plan |
| **Growth** | Customer expands or deepens engagement | CS + Sales — Expansion |
| **Renewal** | Contract renewal decision | CS + Sales — Renewal play |
| **Advocacy** | Customer refers, reviews, speaks at events | CS — Advocacy program |

## Journey Map Elements (Per Phase)

For each phase:
1. **Customer steps** — What is the customer doing?
2. **Customer emotions** — What are they feeling? (excited, confused, frustrated, satisfied)
3. **Touchpoints** — What interactions occur? (emails, calls, product, support)
4. **Pain points** — Where do things go wrong?
5. **Moments of delight** — Where do we create positive surprise?
6. **Metrics** — What do we measure at this stage?

## Output Format

```markdown
# Customer Journey Map — <Entity>
**Segment:** <SMB / Mid-Market / Enterprise> | **Date:** <date>

---

## Journey Map

### Phase 1: Purchase → Onboarding (Days 0–10)

**Customer actions:**
- Receives welcome email
- Introduced to CSM
- Attends kickoff meeting
- Receives login credentials

**Customer emotions:**
- Excited (just made a decision)
- Anxious (did I make the right choice?)
- Overwhelmed (new system to learn)

**Touchpoints:**
- Welcome email (automated) — Day 0
- CSM introductory call — Day 1–3
- Kickoff meeting — Day 5–10
- Getting started guide / training materials

**Pain points (most common):**
- Delayed access provisioning (frustration: "I paid for this, why can't I use it?")
- Kickoff meeting is generic (doesn't reflect their specific goals)
- First tasks are unclear after kickoff

**Moments of delight:**
- CSM references something specific from the sales process — shows continuity
- Customer achieves first small win within 48 hours of kickoff

**Key metric:** Time to first login; % completing kickoff within 10 days

---

### Phase 2: Adoption (Days 10–60)

**Customer actions:**
- Using core features
- Attending training
- Integrating into daily workflow

**Customer emotions:**
- Building confidence (if things are going well)
- Frustrated (if training was insufficient or product is complex)

**Touchpoints:**
- Weekly check-in calls
- In-product guidance / tooltips
- Support tickets (reactive)
- Training sessions

**Pain points:**
- Training moves too fast for some users
- No clear "what to do next" after basic training
- Support tickets take too long to resolve

**Moments of delight:**
- CSM proactively shares a "tip of the week" relevant to their use case
- Product sends a "you've saved X hours" usage milestone notification

**Key metric:** Seat activation %; weekly login frequency per user

---

### Phase 3: Value Realization (Days 60–180)

[Same structure]

### Phase 4: Renewal (90 days before expiration)

[Same structure]

### Phase 5: Advocacy (Post-Renewal)

[Same structure]

---

## Journey Health Assessment

| Phase | Status | Primary Pain Point | Priority Fix |
|-------|--------|-------------------|-------------|
| Onboarding | 🟡 | Delayed access | Provisioning SLA |
| Adoption | 🟡 | No "next step" after training | Guided next-action in product |
| Value Realization | 🟢 | — | Maintain |
| Renewal | 🟢 | — | Maintain |
| Advocacy | 🔴 | No formal ask | Launch referral program |

---

## Top 3 Priority Improvements

1. **[Priority 1]** — Phase: <N> | Pain point: <description> | Fix: <action>
2. **[Priority 2]** — Phase: <N> | Fix: <action>
3. **[Priority 3]** — Phase: <N> | Fix: <action>
```

## Output Contract
- Every phase includes emotions — journey maps without emotional context miss the experience picture
- Pain points always evidence-based (from NPS, support tickets, interviews) — not hypothetical
- Priority improvements always ranked and actionable
- HITL required before journey map is used to redesign CS processes — changes must be reviewed with CS Manager and implemented carefully

## System Dependencies
- **Reads from:** NPS/CSAT feedback, support ticket data, CSM observations, churn interview data (provided)
- **Writes to:** Nothing (journey map for HITL review and CS process improvement)
- **HITL Required:** CS Manager reviews before any process changes driven by journey map; Dr. Lewis reviews the full map annually for strategic accounts

## Test Cases
1. **Golden path:** Mid-market journey map for MBL entity → 5 phases, pain points at onboarding (delayed access) and advocacy (no formal program), 3 priority improvements, moment of delight identified at each phase
2. **Edge case:** No customer feedback data available → builds map from CSM qualitative observations, explicitly flags where data is anecdotal, recommends running NPS and support ticket analysis to validate
3. **Adversarial:** Request to design a journey map that omits the renewal phase → includes all phases including renewal, explains that renewal is a critical phase in the customer lifecycle and omitting it creates a blind spot in the experience design

## Audit Log
Journey maps retained by entity and date. Priority improvements tracked against implementation timeline.

## Deprecation
Retire when CS platform provides integrated customer journey analytics with real-time phase tracking, emotional sentiment scoring, and automated improvement recommendations.
