---
name: ops-hive-landowner-relations
description: "Manage HIVE Partners landowner relationships and GRR in the Uinta Basin. Use when the user says 'landowner relations', 'landowner relationship', 'landowner management', 'landowner GRR', 'landowner retention', 'landowner communication', 'landowner outreach', 'landowner engagement', 'landowner satisfaction', 'landowner complaint', 'landowner dispute', 'landowner issue', 'landowner update', 'landowner report', 'landowner newsletter', 'landowner meeting', 'surface owner', 'surface owner relations', 'mineral owner', 'mineral owner relations', 'royalty owner', 'royalty owner relations', 'royalty payment communication', 'royalty statement', 'royalty dispute', 'royalty question', 'HIVE landowner', 'Utah landowner', 'Uinta Basin landowner', 'landowner GRR target', 'landowner retention rate', or 'landowner program'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--action <communicate|track|report|dispute|renew|analyze>] [--metric <grr|satisfaction|complaint|retention>] [--segment <all|surface-owners|mineral-owners|active|at-risk>] [--period <monthly|quarterly|annual>]"
---

# Ops HIVE Landowner Relations

Manage HIVE Partners' landowner relationships — maintaining the communication cadence that keeps landowners informed, satisfied, and renewing leases; tracking the Landowner GRR (the North Star metric for HIVE); managing royalty payment questions and disputes; and identifying at-risk landowners before they become departures. HIVE's business model depends on sustained landowner relationships: HIVE holds mineral leases from landowners; landowners choose to renew those leases at the end of the primary term; the GRR for HIVE is fundamentally about whether landowners trust HIVE enough to renew — and whether HIVE's royalty payments are competitive and accurate enough to make renewal the obvious choice. Dr. Lewis monitors landowner GRR as a portfolio health metric and flags deterioration to the HIVE CEO before it becomes a retention problem.

## When to Use
- Quarterly landowner communications
- A landowner has a royalty payment question or dispute
- Lease renewal is approaching (the landowner relationship is the deciding factor)
- Landowner GRR is below target
- Annual landowner review / GRR analysis

## Landowner Relations Framework

```
HIVE LANDOWNER GRR:

  TARGET: ≥85% landowner GRR (retain 85%+ of leased acreage at renewal)
  NORTH STAR METRIC FOR HIVE (per CLAUDE.md)
  
  GRR CALCULATION:
    Landowner GRR = (Acreage renewed at end of primary term / Total acreage up for renewal) × 100
    Example: 250 acres renewed out of 300 acres due for renewal = 83.3% GRR
    
  GRR DRIVERS (controllable):
    Royalty payment accuracy: is the landowner paid correctly and on time?
    Communication quality: do landowners understand what they're receiving and why?
    Royalty rate competitiveness: is HIVE's royalty rate competitive with market alternatives?
    Relationship warmth: does the landowner feel valued by HIVE?
    
  GRR DRIVERS (less controllable):
    WTI price environment: low WTI = lower royalty income = landowner considers alternatives
    Competitor outreach: other companies offering better terms
    Production decline: lower royalties from natural decline in aging wells

LANDOWNER COMMUNICATION PROGRAM:

  MONTHLY (passive communication):
    Royalty statement (via Covercy): clear; accurate; on time
    Statement format: production volume | price | deductions | net royalty
    If statement is unclear to the landowner: the relationship suffers before the lease
    
  QUARTERLY (proactive communication):
    Landowner update letter / email: portfolio-level update
    Content: production summary (aggregate); WTI environment context; HIVE's development plans
    "You have [N] acres under lease with HIVE. This quarter your acreage generated [N BOE] of production, resulting in royalty payments of $[X]."
    Format: plain language; no industry jargon; table with the landowner's specific production and royalty
    Reviewed by HIVE CEO before distribution
    
  ANNUAL (relationship investment):
    Landowner call or visit: HIVE CEO (or operations lead) calls each significant landowner (>50 acres)
    Annual summary letter: prior year production; total royalties paid; plans for the year
    Renewal outlook letter: for landowners with leases expiring in 1-2 years
    
  RESPONSE PROTOCOL (for landowner inquiries):
    Royalty questions: 48-hour response target
    Complaints or disputes: 24-hour acknowledgment; 5-day resolution target
    Legal correspondence: Dr. Lewis + legal involved immediately

AT-RISK LANDOWNER IDENTIFICATION:

  WARNING SIGNALS:
    Royalty statement returned or bounced (contact info outdated)
    Landowner sent a complaint or question that wasn't resolved quickly
    Landowner's acreage lease is expiring in 12-18 months
    Production on landowner's acreage has declined significantly (lower royalties)
    Competitor approach (landowner mentioned receiving another offer)
    
  AT-RISK LANDOWNER PROTOCOL:
    Flag to HIVE CEO
    HIVE CEO initiates personal outreach (call; visit if significant acreage)
    Assess: is the risk about royalty amount? Rate competitiveness? Relationship quality?
    Develop response: can HIVE address the underlying concern?
    
  RENEWAL CONVERSATION (12-18 months before primary term expiration):
    Don't wait until 30 days before — that feels transactional
    HIVE CEO initiates: "We're 18 months from your lease renewal and I want to talk about how our relationship has been and what you need"
    This is a relationship conversation, not a negotiation opener
    Negotiation terms come later; trust comes first

ROYALTY DISPUTE MANAGEMENT:

  DISPUTE TYPES:
    Calculation error: royalty formula misapplied (most common)
    Pricing dispute: realized price is too far below WTI
    Deduction dispute: landowner contests the deductions from gross
    Timing dispute: payment is late
    
  DISPUTE PROCESS:
    Step 1: Acknowledge in writing within 24 hours
    Step 2: Review the royalty statement calculation independently
    Step 3: If HIVE is wrong → correct and pay within 5 business days; apologize in writing
    Step 4: If HIVE is right → explain the calculation clearly; offer a call to walk through
    Step 5: If disputed >$500 and >30 days unresolved → HIVE CEO direct involvement
    Step 6: Legal → if >$5,000 disputed or landowner threatens legal action
```

## Output Format

```markdown
# HIVE Landowner Relations Report — Q[N] [Year]
**Prepared by:** HIVE Operations | **Reviewed by:** Dr. Lewis | **For:** HIVE CEO

---

## Landowner GRR Status

- **GRR (trailing 12 months):** [%] | Target: ≥85%
- **Acreage renewed this period:** [N] / [N] up for renewal
- **At-risk landowners (watch list):** [N]

---

## Communication Status

| Communication type | Completed | On time | Notes |
|-------------------|----------|---------|-------|
| Monthly royalty statements | [N] sent | ✅ Yes / ⚠️ Late | [Notes] |
| Quarterly update letter | Sent [Date] | ✅ / ⚠️ | [Notes] |
| Annual calls (>50 acres) | [N]/[N] complete | [Date] | In progress |

---

## At-Risk Landowner Watch List

| Landowner | Acres | Signal | Last contact | Action |
|-----------|-------|--------|-------------|--------|
| [Name] | [N] | Competitor approach | [Date] | CEO call scheduled |
| [Name] | [N] | Lease expires 14 months | [Date] | Renewal conversation initiated |

---

## Active Disputes

| Landowner | Issue | Amount | Age | Status |
|-----------|-------|--------|-----|--------|
| [Name] | Calculation question | $[X] | [N] days | HIVE ops resolving |
```

## Output Contract
- GRR is the outcome; relationship quality is the driver — HIVE's landowner GRR target of ≥85% is not achieved by lease negotiation alone; it is achieved by the cumulative quality of every interaction (payment accuracy; communication clarity; personal engagement) over the life of the lease; Dr. Lewis tracks GRR but does not manage individual relationships — that is the HIVE CEO's domain; what Dr. Lewis does is flag when GRR is at risk and ensure the HIVE CEO has a structured program, not just instinct, driving the relationship management
- Royalty payment accuracy is the foundation — no amount of relationship warmth compensates for royalty payment errors; a landowner who is underpaid and discovers it doesn't just have a billing dispute — they have evidence that HIVE is not managing their asset with integrity; Dr. Lewis's monthly reconciliation in fin-hive-royalty-accounting ensures that Covercy statements are accurate before they go to landowners; the first line of defense for landowner trust is a correct, on-time royalty statement
- At-risk identification is proactive, not reactive — the HIVE CEO should not discover an at-risk landowner when they receive a letter from the landowner's attorney; the at-risk identification protocol (warning signals; watch list; personal outreach) is designed to identify and address relationship problems 12-18 months before they become lease non-renewals; a landowner who is engaged proactively is a landowner who feels valued; a landowner who is contacted only at renewal time feels transactional
- HITL required: GRR below 85% → Dr. Lewis briefing to Matt Mathison with root cause and recovery plan; at-risk landowners representing >50 acres → HIVE CEO personal outreach (not delegated); royalty disputes >$5,000 → HIVE CEO direct involvement + Dr. Lewis awareness; legal threats from landowners → Dr. Lewis + legal immediately + Matt Mathison notification; competitor approach involving an offer to buy out HIVE's interest → Matt Mathison awareness (strategic decision)

## System Dependencies
- **Reads from:** Covercy (royalty statements — data source for communication); fin-hive-royalty-accounting (royalty payment accuracy and timing); ops-hive-lease-manager (lease expiration dates — at-risk trigger); ops-hive-production-tracker (production data for landowner communications); landowner contact database (HIVE operations)
- **Writes to:** Quarterly landowner update letters; annual summary letters; dispute acknowledgment and resolution letters; at-risk watch list (HIVE CEO briefing); GRR tracking (SharePoint → HIVE → Operations → LandownerRelations); Matt Mathison notifications (GRR <85%; >$5K disputes); ops-action-tracker (landowner outreach actions; dispute resolutions)
- **HITL Required:** GRR <85% → Matt briefing; at-risk landowners >50 acres → HIVE CEO personal outreach; disputes >$5K → HIVE CEO + Dr. Lewis; legal threats → Dr. Lewis + legal + Matt; competitive buyout approaches → Matt awareness; annual landowner communication content → HIVE CEO review before distribution

## Test Cases
1. **Golden path:** Quarterly landowner communication. 28 active landowners. Quarterly update letter prepared: "Q2 production summary for [Landowner Name]: Your [N] acres produced [N BOE] this quarter. Royalty payment: $[X]. Total YTD: $[X]. WTI averaged $[X] for the quarter. HIVE's Uinta Basin portfolio is performing within plan." Letters reviewed by HIVE CEO; distributed by email and physical mail for landowners without email. 2 royalty questions received: (1) Landowner asks about a deduction for "transportation" — HIVE operations explains the processing and transportation deduction per the lease; landowner satisfied within 3 days. (2) Landowner asks if they're getting a fair royalty rate — HIVE CEO calls personally: "Our royalty rates are in line with current market for Uinta Basin leases; here's what comparable leases in the area are getting..." GRR for the quarter: 1 lease renewal (40 acres) — renewed at existing terms. GRR trailing 12 months: 91%.
2. **Edge case:** A landowner with 120 acres mentions (informally) that a competitor has offered to buy their mineral interest for $[X] → Dr. Lewis: "This is a strategic signal that HIVE CEO needs to be aware of immediately. The landowner has been approached to sell their mineral interest — if they sell, the new owner may not renew the lease with HIVE (or may demand different terms). Actions: (1) HIVE CEO is being notified today. (2) HIVE CEO will schedule a personal call with the landowner within 1 week — the goal is to understand what's driving the potential sale (cash need? Fair return question? Relationship issue?) and whether HIVE can address the underlying need. (3) If the landowner is seriously considering the sale, Matt Mathison should know — the acquirer of that mineral interest becomes HIVE's new landowner relationship; strategic implications depend on who the buyer is. Matt: I'm flagging this — not urgent, but worth knowing about."
3. **Adversarial:** HIVE's landowner GRR drops from 91% to 79% in a year (multiple lease non-renewals) → Dr. Lewis: "GRR has dropped from 91% to 79% — this is a material decline that requires root cause analysis before we can design a response. The 79% represents [N] acres not renewed across [N] landowners. I want to understand the pattern: Were these leases concentrated in one geological area? Were they concentrated with one operator whose production declined? Did any of these landowners tell us why they chose not to renew? I'm pulling the non-renewal records and scheduling a diagnostic call with the HIVE CEO. Preliminary hypothesis: WTI was below $58 for most of Q3 — lower royalties make landowners less inclined to renew. If that's the primary driver, the fix is WTI-driven (not much we can do) but we can shore up relationships proactively with remaining landowners whose leases expire in 12-18 months. Matt: presenting the root cause analysis within 2 weeks."

## Audit Log
Quarterly communication records retained (sent date; format; recipient list). Dispute records retained (acknowledgment; resolution; payment correction if applicable). At-risk watch list history retained. GRR calculation records retained (with supporting data). Legal correspondence retained indefinitely. Annual call logs retained. Lease renewal records retained.

## Deprecation
The landowner relations framework is maintained as long as HIVE holds active mineral leases. Review the GRR target (≥85%) annually with Matt Mathison as the portfolio acreage mix evolves.
