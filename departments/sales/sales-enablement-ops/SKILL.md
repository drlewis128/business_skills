---
name: sales-enablement-ops
description: "Run sales enablement operations for MBL portfolio company sales teams. Use when the user says 'sales enablement', 'enablement', 'sales training', 'rep training', 'AE training', 'onboarding training', 'sales onboarding', 'new rep onboarding', 'sales playbook', 'playbook', 'sales content', 'sales materials', 'sales collateral', 'sales resources', 'rep resources', 'sales tools', 'product training', 'Allevio training', 'Column6 training', 'HIVE training', 'sales process training', 'MEDDPICCC training', 'discovery training', 'demo training', 'close training', 'negotiation training', 'rep coaching', 'sales coaching', 'coaching session', 'call review', 'call coaching', 'sales call review', 'recorded call', 'rep performance', 'skills gap', 'what are reps weak at', 'improve close rate', 'improve win rate', 'improve discovery', 'sales effectiveness', 'ramp faster', 'new hire ramp', 'skills assessment', 'skills gap analysis', 'sales skills', or 'rep skills'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|all>] [--action <onboard|coach|content|assess|playbook>] [--rep <name|all>]"
---

# Sales Enablement Ops

Run sales enablement operations for MBL portfolio company sales teams — ensuring reps have the training, content, coaching, and tools they need to run a high-quality sales process from first contact to close. Enablement is not a one-time onboarding activity; it is a continuous operational function that refreshes content, closes skills gaps, and improves the team's sales motion over time.

## When to Use
- Onboarding a new AE (structured 30/60/90 day ramp plan)
- Coaching a rep on a specific skill gap identified in pipeline review or QBR
- Refreshing sales content (pitch deck; proposal template; one-pager)
- Running a skills assessment to identify team-wide gaps

## Sales Enablement Framework

```
NEW REP ONBOARDING (30/60/90 day plan):

  Day 1-30 (Learn):
    Week 1: MBL orientation; entity introduction; THRIVE values; CLAUDE.md review
    Week 1: systems access (GHL; SharePoint; Teams); ICP definitions; entity ICP review
    Week 2: product immersion — Allevio clinical model; Column6 inventory types; HIVE acquisition model
    Week 2: sales process walkthrough (all 8 MEDDPICCC dimensions; stage definitions)
    Week 3: shadow 3 discovery calls (listen only; take notes on MEDDPICCC fields)
    Week 3: shadow 1 demo (Allevio) or 1 agency pitch (Column6)
    Week 4: HIPAA training for Allevio reps (mandatory; documented completion)
    Week 4: run 1 role-play discovery (entity CEO or Dr. Lewis as prospect)
    
    Month 1 milestone: rep can describe the entity ICP; sales stages; and MEDDPICCC framework without notes
    
  Day 31-60 (Practice):
    Begin outreach on assigned territory (supervised; entity CEO reviews first 5 emails)
    Run 3 live discovery calls (entity CEO or Dr. Lewis available for debrief)
    Run 1 live demo (Allevio) or 1 live agency pitch (Column6) — entity CEO or AE peer on call
    First GHL hygiene check: rep's records are complete and compliant
    Month 2 milestone: rep has run 5+ discovery calls; completed first proposal (draft reviewed by entity CEO)
    
  Day 61-90 (Execute):
    Full quota begins (100%)
    Rep runs sales cycle independently; weekly coaching check-in with entity CEO
    Competitive playbook review: rep can articulate "when we win vs. when we lose" for entity
    Month 3 milestone: rep has progressed at least 2 deals to Stage 5+; or closed first deal
    
SKILLS ASSESSMENT (conducted by Dr. Lewis or entity CEO; quarterly):
  Assessment dimensions:
    Discovery: does the rep ask open questions? Do they reach all 8 MEDDPICCC dimensions?
    Proposal: is the proposal tailored? Does it lead with their pain in their words?
    Objection handling: do they acknowledge before reframing? Do they advance after every objection?
    Demo: do they start with their pain? Do they ask for CFO engagement?
    Negotiation: do they defend on value before conceding? Do they trade rather than give?
    Pipeline discipline: is their GHL up to date? Do they activity-log within 24 hours?
    HIPAA awareness (Allevio): can they identify HIPAA-prohibited content in an email or proposal?
    
  Assessment method: live call review or role-play; 30 minutes; scored 1-5 per dimension
  Outcome: coaching plan for any dimension scored <3; recognition for 4-5
  
SALES CONTENT LIBRARY (maintained by Dr. Lewis; entity CEO reviews):
  Pitch decks: by entity; current version in SharePoint; entity CEO approves before use
  One-pagers: by entity; summarizes value prop + performance claims; entity CEO approves
  Proposal templates: by entity; standard sections; entity CEO approves
  ROI model: Allevio (sales-allevio-roi-calculator); entity CEO reviews benchmark data quarterly
  Demo environments: Allevio (synthetic aggregate data — ops maintains); Column6 (rate card + IO template)
  Competitive battlecards: by entity (sales-competitive-playbook); entity CEO reviews before publishing
  Objection library: entity-specific responses; updated when new patterns emerge
  HIPAA quick reference: Allevio reps — 1-page card: what's permitted vs. prohibited in GHL/email/proposal
  
CONTENT REFRESH TRIGGERS:
  Quarterly: performance claims (Column6 IVT/VCR); Allevio aggregate outcomes benchmarks
  Event-based: ICP change; pricing change; new competitor entering market; win/loss pattern shift
  Annual: full content library review; entity CEO + Dr. Lewis audit
  
COACHING MODEL:
  Weekly 1:1 (entity CEO + AE): 20 minutes; pipeline update + one coaching focus
  Monthly skills review (Dr. Lewis + entity CEO): any rep with attainment concerns; coaching plan update
  Call review: entity CEO or Dr. Lewis reviews 1 recorded call per rep per month (or live shadow)
  Call review rubric: discovery (MEDDPICCC coverage); positioning (pain-first); advancement (clear next step)
  
HIPAA TRAINING (Allevio reps — mandatory):
  Completion required before rep contacts any employer prospect
  Content: what is PHI; what is prohibited in GHL; what is prohibited in Allevio outreach/proposals/demos
  Documentation: completion logged with date; Dr. Lewis + entity CEO confirm before first rep outreach
  Refresher: annually or when HHS guidance changes
  GHL: HIPAA training completion date logged in rep's GHL user record
```

## Output Format

```markdown
# Sales Enablement Status — [Entity] | [Rep Name] | [Date]
**Ramp status:** [Day N of 90 / Fully ramped] | **Entity CEO reviewed:** [Date]

---

## Onboarding Checklist (new reps)
| Milestone | Due date | Status |
|-----------|---------|--------|
| ICP + entity orientation complete | [Day 7] | ✅/⏳/❌ |
| HIPAA training complete (Allevio) | [Day 30] | ✅/⏳/❌ |
| 3 discovery call shadows | [Day 21] | ✅/⏳/❌ |
| Role-play discovery passed | [Day 28] | ✅/⏳/❌ |
| First live discovery (5+) | [Day 60] | ✅/⏳/❌ |
| First proposal drafted | [Day 60] | ✅/⏳/❌ |
| 100% quota begins | [Day 91] | ✅/⏳/❌ |

---

## Skills Assessment (current quarter)
| Skill | Score (1-5) | Status | Coaching action |
|-------|------------|--------|----------------|
| Discovery (MEDDPICCC) | [N] | ✅/⚠️/❌ | [Action if <3] |
| Proposal quality | [N] | ✅/⚠️/❌ | [Action if <3] |
| HIPAA awareness (Allevio) | [N] | ✅/⚠️/❌ | [Action if <3] |
| Pipeline discipline | [N] | ✅/⚠️/❌ | [Action if <3] |

---

## Content Library Status
| Content | Last updated | Approved by | Version |
|---------|-------------|-------------|---------|
| Pitch deck | [Date] | [Entity CEO] | v[N] |
| One-pager | [Date] | [Entity CEO] | v[N] |
| ROI model benchmarks | [Date] | [Entity CEO] | [Quarter] |
```

## Output Contract
- HIPAA training is a prerequisite for Allevio rep first contact — not something that happens after a rep is already in discovery conversations; an Allevio rep who contacts employers without HIPAA training knows the outreach rules (no individual health references; no PHI in GHL notes) only from memory or intuition, not from documented training; Dr. Lewis requires HIPAA training completion documented before the rep sends their first outreach email; the training record is logged in GHL (rep's user record); entity CEO confirms before approving the rep's first outreach; if a rep contacts employers before HIPAA training is complete, it's treated as a near-miss compliance event and entity CEO + Dr. Lewis are notified
- Coaching is documented and continuous, not sporadic — a rep who gets feedback in their 90-day onboarding but no structured coaching after that will drift toward whatever behaviors feel comfortable, not toward the behaviors that win deals; the weekly 1:1 is the minimum coaching cadence; the monthly call review creates a structured opportunity to give specific behavioral feedback (not just pipeline updates); Dr. Lewis ensures that coaching is documented in GHL or SharePoint so there's a record of what was discussed, what commitment the rep made, and whether it changed their behavior; if a rep's attainment drops and the entity CEO says "we've been coaching them," the documentation proves whether that's true
- HITL required: new rep territory assignment → entity CEO finalizes before rep starts outreach; HIPAA training completion → entity CEO confirms before first Allevio outreach; content library updates (pitch deck; ROI benchmarks; competitive battlecards) → entity CEO reviews before publishing to rep; <50% attainment at Month 3 (ramp) → entity CEO + Dr. Lewis formal review; new content claim (performance data) → Dr. Lewis validates before content goes live; call review → entity CEO or Dr. Lewis conducts (not self-assessed); HIPAA near-miss during onboarding → entity CEO + Dr. Lewis immediate

## System Dependencies
- **Reads from:** GHL (rep records; HIPAA training date; activity logs; pipeline quality; call logs); skills assessment scores (Dr. Lewis / entity CEO); content library (SharePoint → [Entity] → Sales → Content → [Version]); HIPAA training documentation; quota/ramp status (sales-quota-builder); pipeline quality (sales-pipeline-review); competitive battlecards (sales-competitive-playbook)
- **Writes to:** GHL (rep records — HIPAA training date; onboarding milestones; skills scores; coaching plan); onboarding tracker (SharePoint → [Entity] → Sales → Enablement → New-Hires → [Rep]); skills assessment records (quarterly; SharePoint); content library updates (entity CEO approval); coaching records (weekly 1:1 notes; call review notes; commitment made); HIPAA near-miss records (onboarding phase)
- **HITL Required:** Territory → entity CEO; HIPAA training → entity CEO confirms; content updates → entity CEO; <50% ramp attainment at Month 3 → entity CEO + Dr. Lewis; performance data validation → Dr. Lewis; call review → entity CEO or Dr. Lewis; HIPAA near-miss → entity CEO + Dr. Lewis immediate

## Test Cases
1. **Golden path:** New Allevio AE (Maria) starts June 23. Week 1: ICP orientation; GHL access; entity CEO intro. Week 2: Allevio clinical model training with implementation lead. Week 3: shadows 3 discovery calls; notes MEDDPICCC patterns. Week 4: HIPAA training completed June 30 (documented in GHL); role-play discovery with entity CEO — passes (5/5 MEDDPICCC dimensions reached; no HIPAA-prohibited language). Day 31: Maria begins outreach on assigned territory (entity CEO reviews first 5 emails — all clear). Day 45: first live discovery call; entity CEO debrief. Day 60: 7 discovery calls completed; 2 advanced to Stage 4; first proposal drafted and reviewed by entity CEO. Day 91: 100% quota begins. Month 3 milestone: 1 deal at Stage 6 (Negotiation); 2 at Stage 4; on track.
2. **Edge case:** New Column6 AE sends first agency pitch email without entity CEO reviewing it. Email contains: "Our IVT rate is 2% — the lowest in the market" without cited data → Dr. Lewis: "Three issues: (1) 'Lowest in the market' is a superlative claim we haven't verified — if an agency tests it and finds another supply partner with a lower rate, we've damaged credibility in the first contact; (2) The entity CEO review of first 5 outreach emails is a standard that exists to catch exactly this; (3) The email went out before review — this is a process violation during onboarding. Actions: (1) If the email hasn't been sent yet: hold it; entity CEO reviews; correct the claim (use our measured rate with data source, not a superlative); (2) If sent: note which agency received it; if they follow up and test the claim, be prepared to back it with data. Coaching: the content library has approved pitch language for a reason — use it, especially during the first 90 days."
3. **Adversarial:** A rep argues that the monthly call review is "micromanagement" and declines to have their calls reviewed → Dr. Lewis: "Call review is not micromanagement — it's the standard by which every professional athlete, surgeon, and pilot gets better; they review their own performance with a coach. What you do in discovery calls directly affects your quota attainment and the company's revenue; that makes it a legitimate area for entity CEO and Dr. Lewis oversight. The review is not punitive — if your call is strong, we say so and the feedback is reinforcement. If there's a pattern that's hurting your close rate (skipping the paper process; not confirming the economic buyer; using prohibited language on Allevio calls), finding it in a call review is far better than finding it in a lost deal at Stage 6. The call review stands. If you'd prefer to propose an alternative (recording review at your own pace + written self-assessment), bring that to the entity CEO — but some form of structured coaching review is non-negotiable."

## Audit Log
Onboarding records (all reps; milestones; completion dates; entity CEO confirmation; SharePoint). HIPAA training records (rep; completion date; logged in GHL; entity CEO confirmation before first outreach). Skills assessment records (quarterly; by rep; scores; coaching plans; SharePoint). Content library records (all versions; entity CEO approval; effective dates). Call review records (date; rep; reviewer; feedback; rep commitment). HIPAA near-miss records (onboarding phase; event; response). Performance data validation records (claims; Dr. Lewis review; approval date).

## Deprecation
Onboarding plan reviewed annually. HIPAA training reviewed when HHS guidance changes. Content library reviewed quarterly (performance benchmarks) and annually (full audit). Skills assessment rubric reviewed when sales motion or product changes. Coaching model reviewed when team size changes significantly.
