---
name: pe-entity-ceo-monitor
description: "Monitor and manage entity CEO performance and accountability for MBL Partners portfolio companies. Use when the user says 'CEO performance', 'CEO accountability', 'CEO review', 'CEO assessment', 'CEO scorecard', 'CEO evaluation', 'management accountability', 'leadership performance', 'entity CEO', 'CEO monitoring', 'CEO metrics', 'CEO goals', 'CEO targets', 'CEO KPIs', 'CEO dashboard', 'Allevio CEO', 'HIVE CEO', 'Column6 CEO', 'entity leadership', 'CEO check-in', 'CEO cadence', '1 on 1', 'one on one', 'executive cadence', 'performance review CEO', 'annual review CEO', 'CEO compensation', 'CEO incentive', 'management incentive plan', 'MIP', 'CEO bonus', 'CEO equity', 'CEO concern', 'CEO underperforming', 'CEO replacement', 'CEO transition', 'CEO succession', 'CEO search', 'management team concern', 'management quality concern', 'leadership gap', 'leadership concern', or 'CEO firing'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--action <assess|review|compensation|escalate|transition>] [--focus <performance|accountability|compensation|succession>] [--period <monthly|quarterly|annual>]"
---

# PE Entity CEO Monitor

Monitor and manage entity CEO performance and accountability for MBL Partners portfolio companies — maintaining a clear-eyed assessment of CEO performance against the value creation plan, managing the operational relationship between Dr. Lewis and entity CEOs, escalating performance concerns to Matt Mathison, and supporting CEO transitions when necessary. CEO quality is the single most important determinant of whether a PE investment thesis succeeds: a strong CEO aligned with the investment thesis executes the value creation plan and creates outsized LP returns; a weak CEO who is misaligned, underpowered for the stage of the business, or disengaged creates the most common form of PE value destruction. Dr. Lewis monitors CEO performance continuously and brings Matt Mathison an honest assessment — not a diplomatic one.

## When to Use
- Monthly CEO accountability review
- CEO is underperforming against the VCP
- CEO compensation review (annual)
- Matt Mathison asks for a leadership assessment
- CEO resignation, departure, or performance issue

## CEO Monitoring Framework

```
CEO PERFORMANCE SCORECARD (monthly and quarterly):

  DIMENSION 1 — FINANCIAL EXECUTION (40% weight):
    Entity EBITDA vs. budget
    Entity revenue vs. budget
    Entity North Star metric vs. target
    VCP initiative progress (pe-value-creation-tracker)
    
  DIMENSION 2 — OPERATIONAL LEADERSHIP (30% weight):
    Management team stability (key employee retention)
    Operational process improvement (are systems and processes improving?)
    Customer/stakeholder satisfaction (aggregate data only for Allevio — no PHI)
    
  DIMENSION 3 — THRIVE ALIGNMENT (20% weight):
    Truth: does the CEO provide accurate information or manage the narrative?
    Hustle: is the CEO's pace of execution appropriate for the stage of the business?
    Respect: how does the CEO treat their team, customers, and partners?
    Integrity: is the CEO operating with full ethical integrity? (Kill criterion)
    Value: is the CEO creating measurable value for LPs?
    Enjoy: is the CEO energized or burned out?
    
  DIMENSION 4 — MBL RELATIONSHIP (10% weight):
    Responsiveness to Dr. Lewis and Matt Mathison
    Transparency (proactively shares bad news; doesn't manage the narrative)
    Board meeting quality (prepared; honest; collaborative)
    
  OVERALL ASSESSMENT:
    Outstanding: exceeds on financial execution AND THRIVE alignment
    On track: meets financial plan; THRIVE aligned; no material concerns
    Watch: financial shortfall or THRIVE concern; management required
    Underperforming: material financial miss or THRIVE misalignment; intervention required
    Critical: leadership failure; replacement process initiated

CEO CADENCE (Dr. Lewis with entity CEO):

  WEEKLY (for high-priority periods):
    Status on top 3 initiatives
    Any emerging issues or blockers
    Request for specific data
    
  MONTHLY (standard):
    VCP initiative review
    Financial performance discussion
    THRIVE alignment temperature check
    
  QUARTERLY (QBR):
    Full performance review against scorecard
    Prior quarter final assessment
    Next quarter plan and commitments
    Compensation and incentive alignment
    Matt Mathison participates in quarterly review

CEO COMPENSATION AND INCENTIVE ALIGNMENT:

  BASE SALARY: Set at the time of acquisition; benchmarked to market rate
  MANAGEMENT INCENTIVE PLAN (MIP):
    Annual performance bonus: tied to entity EBITDA vs. target (typically 20-40% of base)
    Long-term incentive: equity or phantom equity (typically 2-5% of entity equity value at exit)
    Vesting: 4-year vesting with 1-year cliff; accelerated at change of control
    
  INCENTIVE PLAN TRIGGERS:
    MIP bonus paid: ≥80% of EBITDA target achieved
    MIP bonus maximum: ≥120% of EBITDA target achieved (cap at 150% of target bonus)
    Equity vesting accelerated: acquisition of entity at exit
    
  INCENTIVE PLAN CHANGES:
    Annual MIP target recalibration: Dr. Lewis + Matt Mathison define new EBITDA target
    Equity adjustments: only with Matt Mathison approval + legal counsel involvement
    
CEO PERFORMANCE INTERVENTION:

  WATCH RATING:
    Dr. Lewis: direct conversation with CEO about specific gaps
    Performance improvement plan: documented; specific; time-bound
    Frequency: monthly reviews during Watch period
    Matt Mathison: briefed; may attend next QBR
    
  UNDERPERFORMING RATING:
    Formal PIP: written; specific metrics; 60-90 day improvement timeline
    Dr. Lewis: weekly touch points
    Matt Mathison: leads the next QBR; makes decision on path forward
    Legal counsel: engaged to advise on separation options if needed
    
  CEO TRANSITION:
    Decision maker: Matt Mathison (not Dr. Lewis alone)
    Process: interim CEO identified before announcement; announcement drafted (ops-communication-manager)
    Search: Dr. Lewis leads CEO search or engages executive search firm (with Matt Mathison approval)
    New CEO: Matt Mathison approves final hire; Dr. Lewis manages integration into role
```

## Output Format

```markdown
# Entity CEO Performance Review — [Entity] — [Quarter Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison | **CEO:** [Name]

---

## Performance Scorecard

| Dimension | Weight | Score (1-5) | Weighted | Notes |
|-----------|--------|------------|---------|-------|
| Financial execution | 40% | [X] | [X] | EBITDA [X%] of target |
| Operational leadership | 30% | [X] | [X] | Team stable; 1 key departure |
| THRIVE alignment | 20% | [X] | [X] | Strong; Hustle concern noted |
| MBL relationship | 10% | [X] | [X] | Responsive; proactive |
| **Overall** | | | **[X.X]** | **[On Track / Watch / Underperforming]** |

---

## THRIVE Assessment

| Value | Assessment | Evidence |
|-------|-----------|---------|
| T — Truth | ✅ Strong | Revenue miss disclosed proactively in Week 2 |
| H — Hustle | ⚠️ Watch | 2 initiatives stalled 60+ days without escalation |
| R — Respect | ✅ Strong | Employee survey results (aggregate) positive |
| I — Integrity | ✅ Strong | No integrity concerns |
| V — Value | ✅ On track | EBITDA 96% of target; employer GRR improving |
| E — Enjoy | ⚠️ Watch | CEO expressed burnout concern in 1:1 |

---

## Action Items

1. [CEO] Hustle concern: schedule conversation about the 2 stalled initiatives within 7 days (Dr. Lewis).
2. [CEO] Burnout: assess whether CEO needs additional operational support or resource allocation (Dr. Lewis; Matt Mathison awareness).
```

## Output Contract
- CEO assessments are honest, not diplomatic — the purpose of the CEO monitoring framework is to give Matt Mathison an accurate picture of leadership quality so he can make good decisions about capital and resource allocation; a CEO review that says "the CEO is doing well overall" when the entity EBITDA is 25% below plan and two key employees have quit is not a review — it is a disservice to Matt and to LPs; Dr. Lewis documents what is actually happening, with specific evidence, and makes a specific recommendation; Matt Mathison has the right to disagree with the assessment, but the assessment must be honest
- THRIVE Integrity is an absolute kill criterion — if Dr. Lewis identifies a Integrity violation by an entity CEO (misrepresentation of financials; fraud; ethical violation), the escalation to Matt Mathison is immediate (same day); the entity CEO is not confronted before Matt Mathison is briefed; Matt Mathison decides the next step (with legal counsel involvement); Dr. Lewis does not give a CEO with a confirmed Integrity violation a performance improvement plan — Integrity violations are not improvable; they are terminal
- CEO compensation decisions require Matt Mathison approval — base salary changes; MIP target revisions; equity adjustments; severance — all require Matt Mathison's explicit approval; Dr. Lewis brings the recommendation and the data (market benchmarks; performance record; legal counsel input); Matt makes the decision; Dr. Lewis never commits to a CEO compensation change without Matt's approval, even if the conversation happens in an informal context
- HITL required: Underperforming rating → Matt Mathison leads next QBR; Integrity violation → Matt same day (before confronting CEO); CEO transition decision → Matt Mathison (not Dr. Lewis alone); CEO compensation changes → Matt approval; CEO hire for replacement → Matt Mathison final approval; executive search firm engagement → Matt approval; interim CEO appointment → Matt Mathison and Dr. Lewis together; severance terms → Matt + legal counsel

## System Dependencies
- **Reads from:** pe-value-creation-tracker (VCP initiative progress); pe-portfolio-kpi-dashboard (entity financial and operational KPIs); pe-portfolio-health-monitor (entity health status); entity employee satisfaction data (aggregate — no PHI for Allevio); THRIVE filter (management interview assessment); QuickBooks (entity financials for performance measurement)
- **Writes to:** CEO performance reviews (SharePoint → Portfolio → CEOReviews → [Entity] → [YYYY-Q]); Matt Mathison briefings (Watch/Underperforming ratings; Integrity flags; compensation recommendations); CEO PIPs (when Underperforming); executive search briefs (when transition required); compensation review memos (Matt Mathison approval)
- **HITL Required:** Underperforming → Matt leads next QBR; Integrity → Matt same day; CEO transition → Matt decision; compensation changes → Matt approval; CEO hire → Matt final approval; search firm → Matt approval; interim CEO → Matt + Dr. Lewis together; severance → Matt + legal

## Test Cases
1. **Golden path:** Quarterly review — Allevio CEO. Financial execution: EBITDA 96% of target (4); revenue 102% (strong). Operational: management team stable; one medical director departure was anticipated and replacement is in process. THRIVE: strong across all 6 values. MBL relationship: CEO proactively disclosed the medical director departure 3 weeks before the announcement, gave Dr. Lewis the candidate search brief, and asked for input on the compensation package. Overall score: 4.3/5 — On Track. Recommendation: no changes needed; prepare MIP payment authorization for Matt Mathison (EBITDA ≥80% of target).
2. **Edge case:** CEO of HIVE has been in the role for 18 months and Dr. Lewis observes that the CEO is increasingly disengaged — responses are slow, QBR preparation is minimal, and two value creation initiatives have stalled without explanation → Dr. Lewis: "Flagging HIVE CEO to Watch. The pattern over the last 2 months: 48-hour response times (vs. same-day expected); QBR prepared the morning of the meeting; two initiatives stalled with no proactive escalation. This is a Hustle and MBL Relationship concern. I've scheduled a direct 1:1 conversation with the CEO for [date] to address this directly. If the pattern continues after the conversation, I'm recommending a formal Watch status with a 60-day improvement plan. Matt: awareness only for now — I'll brief you after my 1:1 with the CEO."
3. **Adversarial:** Matt Mathison asks Dr. Lewis to soften the CEO assessment before sharing it with the CEO ("I don't want to demoralize them — they've worked really hard") → Dr. Lewis: "I understand the instinct, but I think we need to distinguish between tone and substance. I can absolutely adjust the tone to be constructive and respectful — that's the right way to deliver feedback. But the substance — the specific gaps and the specific evidence — needs to stay in the assessment. If we soften the substance, the CEO won't understand what specifically needs to change. And if we're in a situation in 6 months where we need to make a leadership change, the lack of documented performance feedback creates legal and practical problems. My recommendation: I'll revise the delivery to be more constructive in tone while keeping the specific findings. Want me to share the revised version with you before I give it to the CEO?"

## Audit Log
All CEO performance reviews retained (quarterly; with scoring and evidence). THRIVE assessments retained. PIP documentation retained. CEO compensation decisions retained (with Matt Mathison approval date). CEO transition records retained. Matt Mathison briefings retained (with dates and findings).

## Deprecation
CEO monitoring is active for the hold period of each portfolio investment. The monitoring program for each entity is retired at exit. CEO assessment criteria are reviewed annually with Matt Mathison for calibration.
