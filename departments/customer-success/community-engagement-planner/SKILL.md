---
name: community-engagement-planner
description: "Plan and manage a customer community engagement program. Use when the user says 'customer community', 'user community', 'community engagement', 'community program', 'user group', 'customer forum', 'peer community', or 'build a customer community'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--stage <launch|grow|mature>] [--format <brief|full>]"
---

# Community Engagement Planner

Plan and manage a customer community engagement program. A healthy customer community reduces support load, improves retention, creates advocates, and generates product feedback — without the cost of CSM time for every interaction. This skill designs the community strategy and engagement calendar.

## When to Use
- Launching a new customer community
- Existing community has low engagement
- Planning community content and engagement for the next quarter
- Evaluating whether a community investment is worth making
- Integrating community into the broader CS motion

## Community ROI Framework

| Metric | Community Impact |
|--------|----------------|
| **Support deflection** | Peer answers reduce ticket volume by 15-30% (industry benchmark) |
| **Onboarding** | Community members onboard faster — peer tips + real examples |
| **Adoption** | Seeing peers use advanced features drives adoption of those features |
| **Retention** | Community members churn at lower rates — they have social investment in the product |
| **Advocacy** | Community is the top source of reference customers and case studies |

## Community Formats

| Format | Best For | Investment |
|--------|---------|-----------|
| **Online forum** (Slack, Discord, community platform) | Always-on peer support, product discussions | Medium — needs moderation |
| **User group** (virtual or in-person) | Networking, peer learning, deeper engagement | High — needs event management |
| **Customer advisory board (CAB)** | Strategic co-creation, product roadmap input | High — needs exec access |
| **Email newsletter** | Light-touch community for customers who won't join a forum | Low — needs content |
| **In-app tips / peer stories** | Adoption nudges; no separate platform needed | Low — needs content curation |

## Output Format

```markdown
# Community Engagement Plan — <Entity>
**Stage:** Launch / Grow / Mature | **Format:** <Forum / User Group / CAB / Newsletter>
**Owner:** CS Manager | **Quarter:** <Q>

---

## Community North Star

**Why we're investing:** <1-2 sentences on the business rationale — support deflection, retention, advocacy>
**Success metric in 90 days:** <Specific: active members, engagement rate, tickets deflected, or advocates identified>

---

## Community Segmentation

| Segment | Description | Community Role | Engagement Approach |
|---------|------------|---------------|-------------------|
| Champions | Power users, product-invested | Moderators, super-users | Feature previews, advisory input |
| Engaged users | Regular users who participate | Active contributors | Respond to threads, share best practices |
| Lurkers | Read but don't post | Potential contributors | Low-friction content; trigger posts |
| Dormant | Registered but inactive | Re-engagement target | Re-activation campaign |

---

## Content and Engagement Calendar (90 days)

| Week | Activity | Format | Owner | Goal |
|------|---------|--------|-------|------|
| 1 | Welcome post + community guidelines | Post | CS Manager | Set the tone |
| 2 | Feature spotlight: [Top feature] | Tutorial post | CSM or Product | Drive adoption |
| 3 | Ask the Community: [Topic] | Discussion thread | CS Manager | Peer engagement |
| 4 | Customer spotlight: [Account name's use case] | Story | CS Manager | Peer learning |
| 5 | Product Q&A: New feature / upcoming release | Live session | Product | Adoption + feedback |
| 6 | "How do you handle X?" thread | Discussion | CS Manager | Support deflection |
| ... | [continue for 13 weeks] | | | |

**Posting cadence:** 2-3 posts per week minimum to sustain engagement
**Moderation:** Daily check for unanswered questions; response SLA 24 hours

---

## Community Health Metrics

| Metric | Baseline | 30-day Target | 90-day Target |
|--------|---------|-------------|-------------|
| Active members (posted in last 30 days) | 0 (launch) | <N> | <N> |
| New members per month | — | <N> | <N> |
| Questions answered by peers (not CS) | 0% | 20% | 40% |
| Average response time | — | < 4 hrs | < 2 hrs |
| Monthly active users / total members | — | 20% | 35% |

---

## Community Activation Plan (Days 1–30)

**Pre-launch:**
- [ ] Platform configured (Slack workspace / forum created / community tool set up)
- [ ] Welcome content drafted (intro post, community guidelines, FAQ)
- [ ] First 10-15 members personally invited (start with champions, not the full customer base)
- [ ] Seed content: 3-5 posts ready for Day 1 so it doesn't feel empty

**Day 1-7:**
- [ ] Personal invitation sent to all Tier 1 account champions
- [ ] Welcome post published
- [ ] First discussion thread started (don't wait for members to start it)

**Day 8-30:**
- [ ] Broader invitation to Tier 2 accounts
- [ ] First peer-answered question documented (milestone worth celebrating)
- [ ] First community content piece shared by a customer (not just CS)
```

## Output Contract
- Community launch never "build it and they'll come" — activation plan always specific
- Content calendar always pre-built for first 90 days before launch
- Health metrics always tracked against baseline — engagement without measurement is activity theater
- HITL required: CS Manager owns community operations; Dr. Lewis reviews the community strategy before launch for any entity with > 50 customers

## System Dependencies
- **Reads from:** Customer account list, tier segmentation, champion contact list (provided)
- **Writes to:** Nothing (community plan for HITL review and CS implementation)
- **HITL Required:** CS Manager approves community design before launch; Dr. Lewis reviews launch plan for any strategic community initiative

## Test Cases
1. **Golden path:** 35-customer entity, launch phase → Slack community, personal invitations to 10 Tier 1 champions first, 13-week content calendar seeded before launch, 3 platform roles (Super User / Member / Lurker), health metrics defined, 40% peer-answer rate target by Day 90
2. **Edge case:** Community forum launches but engagement drops after week 3 → diagnoses root cause (content irrelevance, wrong format, low active user base), recommends shifting to newsletter format if forum is undersized, never sustains a ghost town
3. **Adversarial:** Customer uses community forum to air product complaints publicly → immediate response within 2 hours acknowledging the issue, moves to private resolution, flags for product feedback loop, uses the response as a demonstration of CS responsiveness to other community members

## Audit Log
Community plans retained by entity and launch date. Quarterly community health reports archived. Significant engagement events (viral posts, escalations, advocacy outcomes) documented.

## Deprecation
Retire when CS platform or a dedicated community tool (Gainsight Digital Hub, Higher Logic, etc.) provides community management, content scheduling, and analytics natively.
