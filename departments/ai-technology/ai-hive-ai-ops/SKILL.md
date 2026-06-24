---
name: ai-hive-ai-ops
description: "Manage AI operations specifically for HIVE Partners oil and gas portfolio company. Use when the user says 'HIVE AI', 'AI for HIVE', 'HIVE automation', 'HIVE AI operations', 'HIVE AI workflow', 'HIVE production AI', 'HIVE reporting AI', 'HIVE LP communication AI', 'HIVE acquisition AI', 'WTI AI', 'WTI monitoring AI', 'WTI alert', 'WTI trigger alert', 'oil and gas AI', 'O&G AI', 'production report AI', 'production synthesis', 'Covercy AI', 'HIVE Covercy', 'LP distribution AI', 'LP report AI', 'HIVE royalty AI', 'LOE AI', 'HIVE LOE analysis', 'HIVE financial AI', 'HIVE acquisition model AI', 'HIVE due diligence AI', 'PV10 AI', 'WTI sensitivity AI', 'HIVE partner communications', 'HIVE board AI', 'HIVE operations AI', or 'Uinta Basin AI'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--workflow <name>] [--action <assess|build|deploy|monitor|report>]"
---

# AI HIVE AI Ops

Manage AI operations specifically for HIVE Partners — MBL's oil and gas portfolio company in Utah's Uinta Basin — building production report automation, LP communication drafts, WTI price monitoring, and acquisition model support. All HIVE AI workflows honor the WTI $58/bbl trigger constraint; acquisition recommendations always route to Matt Mathison.

## When to Use
- Building or deploying an AI workflow for HIVE operations
- Synthesizing monthly Covercy production reports with AI
- Drafting LP communications or quarterly LP reports with AI assistance
- Running WTI monitoring and trigger alert workflows

## HIVE AI Operations Framework

```
HIVE AI OPERATING PRINCIPLES:
  1. WTI TRIGGER: WTI <$58/bbl for 2+ consecutive weeks → acquisition pause; Matt Mathison immediate notification
  2. ACQUISITION DECISIONS: AI provides analysis ONLY; Matt Mathison decides; no exceptions
  3. LP COMMUNICATIONS: all LP-facing content reviewed by Matt Mathison before distribution
  4. COVERCY DATA: production and financial data from Covercy is the system of record; AI synthesizes, doesn't alter
  5. HIVE ENTITY CEO REVIEW: all HIVE-specific AI outputs reviewed by HIVE entity CEO before distribution
  
APPROVED HIVE AI USE CASES:

  Production Report Synthesis:
    Input: Covercy monthly production report (BOE; WTI realized; NRI%; royalty; LOE — aggregate by property)
    AI action: synthesize production narrative; calculate key metrics; flag anomalies
    Output: HIVE monthly operations summary (BOE × WTI × NRI%; LOE per BOE vs. $18 benchmark; WTI trigger status)
    Key metrics: LOE per BOE (alert if >$18; escalate if >$22); WTI vs. trigger; distributable cash
    Distribution: Dr. Lewis → HIVE entity CEO review → Matt Mathison
    
  LP Communication Drafting:
    Input: Quarterly financials (aggregate); production metrics; distribution calculation; WTI context
    AI action: draft quarterly LP report sections (production summary; distribution; outlook)
    Output: Draft LP report (BLUF first; WTI trigger status always included; distribution math shown)
    Review: HIVE entity CEO reviews draft → Dr. Lewis reviews → Matt Mathison approves before distribution
    WTI trigger note: included in every LP communication regardless of current WTI level
    
  WTI Price Monitoring:
    Input: Daily/weekly WTI spot price (from public market data)
    AI action: track WTI vs. $58 trigger; calculate consecutive weeks below threshold
    Output: Weekly WTI status alert to Dr. Lewis; immediate notification if trigger fires
    Trigger logic: WTI <$58 for Week 1 → "monitoring" alert; WTI <$58 for Week 2 → trigger notification to Matt Mathison
    
  Acquisition Model Support:
    Input: target property data (production history; BOE estimates; LOE; asking price)
    AI action: populate acquisition model framework; run 5-scenario WTI sensitivity ($48/$55/$62/$70/$78)
    Output: acquisition model draft (IRR; payback; PV10/ask) for Dr. Lewis and Matt Mathison review
    Authorization: ALL acquisition decisions → Matt Mathison approves; Dr. Lewis is analyst only
    WTI trigger: during trigger pause — AI can still model acquisitions; Matt Mathison decides whether to proceed
    
  LOE Analysis:
    Input: Monthly LOE data from Covercy by property
    AI action: LOE per BOE calculation; benchmark comparison; trend analysis
    Output: LOE alert if >$18/BOE; escalation report if >$22/BOE for Matt Mathison
    Automation: if >$22 → automatic alert to Dr. Lewis; Dr. Lewis escalates to Matt Mathison same day

WTI TRIGGER MONITORING LOGIC:
  Week 1 below $58: "HIVE WTI Watch — WTI at $[price]/bbl for Week 1 of 2; monitoring"
  Week 2 below $58: "HIVE WTI TRIGGER FIRED — WTI at $[price]/bbl for 2 consecutive weeks.
    Per HIVE acquisition policy: all new acquisitions PAUSED. Matt Mathison notification required immediately."
  Above $58 after trigger: "HIVE WTI Trigger Clear — WTI returned to $[price]/bbl.
    Acquisition pause lifted per Matt Mathison review. Confirm current acquisition pipeline status."
```

## Output Format

```markdown
# HIVE Monthly AI Operations Summary — [Month Year]
**Prepared by:** Dr. Lewis (AI-assisted) | **For:** HIVE Entity CEO + Matt Mathison

---

## WTI Status: 🟢 [Current: $XX/bbl — above $58 trigger] / 🔴 [TRIGGER FIRED]

## Production Summary
| Metric | This Month | Last Month | Benchmark | Status |
|--------|-----------|-----------|-----------|--------|
| Total BOE | X | X | — | |
| Realized WTI | $X | $X | — | |
| LOE per BOE | $X | $X | <$18 | ✅/⚠️/🔴 |
| Distributable cash | $X | $X | >$20K | ✅/🔴 |

---

## WTI Trigger Status
[Current status + consecutive weeks below/above threshold]

## LOE Alert
[If >$18: explanation; if >$22: Matt Mathison escalation initiated]

## Action Items
[Month-specific HIVE operational action items]
```

## Output Contract
- WTI trigger is an operational control, not a talking point — when WTI fires below $58/bbl for 2 consecutive weeks, Dr. Lewis sends the trigger notification to Matt Mathison immediately and halts all AI acquisition modeling outputs; the AI system does not wait for Dr. Lewis to notice the monitoring summary — the trigger fires automatically and the notification goes out; Dr. Lewis does not need to be awake or reviewing a dashboard for the trigger to be honored; the automation checks WTI weekly and fires the notification on the second consecutive below-$58 week; the only way the trigger is overridden is if Matt Mathison explicitly decides to proceed ("I acknowledge the trigger; we're evaluating this distressed asset as an exception — continue modeling")
- LP communications go out only after Matt Mathison has reviewed and approved — no exception, no workaround; Dr. Lewis prepares the LP communication draft with AI assistance; HIVE entity CEO reviews for operational accuracy; Dr. Lewis reviews for financial accuracy; Matt Mathison approves the final version before distribution; if Matt Mathison is traveling or unavailable, the LP communication waits; there is no mechanism to auto-distribute an LP communication at HIVE; the LP relationship is too important and the communications are too consequential for any version of "auto-send if not reviewed in 48 hours"
- HITL required: production report → Dr. Lewis + HIVE entity CEO review; LP communication → HIVE entity CEO + Dr. Lewis + Matt Mathison approve; WTI trigger notification → automatic to Dr. Lewis; immediate escalation to Matt Mathison; acquisition model → Dr. Lewis + Matt Mathison see (Matt decides); LOE >$22 → Dr. Lewis escalates to Matt Mathison same day; distributable cash calculation → Dr. Lewis reviews before Matt Mathison Covercy approval

## System Dependencies
- **Reads from:** Covercy (monthly production reports; BOE; WTI realized; LOE; royalty; distributable cash); public WTI market data (weekly price tracking); HIVE entity CEO input (operational context; property-level explanations); QuickBooks HIVE entity (financial records; P&L; cash); Dr. Lewis acquisition model templates
- **Writes to:** HIVE monthly operations summaries (SharePoint → HIVE → Operations → AI Reports → [Month]); WTI trigger alerts (email to Dr. Lewis + Matt Mathison); LP communication drafts (SharePoint → HIVE → LP Relations → Quarterly Reports → Draft); LOE alert reports; acquisition model drafts (SharePoint → HIVE → Acquisitions → [Target] → Model Draft)
- **HITL Required:** Production report → HIVE entity CEO review; LP communication → HIVE entity CEO + Dr. Lewis + Matt Mathison approve; WTI trigger → automatic notification + Matt Mathison; acquisition model → Matt Mathison decides; LOE >$22 → Dr. Lewis same-day escalation; distributable cash → Matt Mathison Covercy approval

## Test Cases
1. **Golden path:** HIVE June 2026 production synthesis. Covercy report received June 5. Claude synthesizes: Total BOE: 2,847; Realized WTI: $68.20/bbl (above trigger ✅); NRI%: 82%; Production revenue: $2,847 × $68.20 × 0.82 = $159,100. LOE: $46,800 total; per BOE: $16.44 (below $18 benchmark ✅). Distributable cash: $159,100 − $46,800 − G&A $8,200 − reserve $50,000 = $54,100 (above $20K threshold ✅). WTI trigger: $68.20 — clear ✅. Summary prepared. HIVE entity CEO reviews — confirms accuracy. Matt Mathison receives summary. Quarterly LP distribution calculation initiated.
2. **Edge case:** WTI drops to $56.80 in Week 1 (below $58 trigger level) → Dr. Lewis receives "HIVE WTI Watch — Week 1 of 2 alert" from monitoring workflow. HIVE entity CEO notified. No acquisition pause yet. AI notes WTI context in all HIVE outputs for the week. Week 2: WTI at $55.40 → "HIVE WTI TRIGGER FIRED — WTI at $55.40/bbl for 2 consecutive weeks. All new HIVE acquisitions PAUSED. Matt Mathison notification required." Matt Mathison receives notification immediately. Matt confirms: "Acknowledged. Pause acquisition outreach. Continue evaluating the [target] distressed acquisition we've already started — I'll make the call on that one next week." Dr. Lewis documents exception in acquisition log.
3. **Adversarial:** HIVE entity CEO asks Dr. Lewis to "just send the LP report" before Matt Mathison has reviewed it because "Matt is traveling and we're late" → Dr. Lewis: "I can't send the LP report without Matt Mathison's review — this is a standing requirement, not a preference. A few options: (1) I can send the draft to Matt now and ask for a review response within 24 hours even while traveling — I'll format it for easy mobile review; (2) If the report is genuinely time-sensitive (LP contractual distribution deadline), I'll call Matt directly to get verbal approval and document it; (3) If we have a recurring problem with timing, we can adjust the quarterly preparation timeline so Matt has 72 hours to review before the distribution deadline. What I won't do is distribute LP communications without his approval — that's a control we've set for the right reasons."

## Audit Log
Monthly production synthesis records (all; SharePoint). WTI monitoring log (weekly price records; trigger events). LP communication draft records (all versions; approval chain). Matt Mathison LP communication approval records. LOE alert records. Acquisition model draft records. Matt Mathison acquisition decision records. WTI trigger fire events and Matt Mathison responses.

## Deprecation
WTI trigger threshold reviewed when Matt Mathison updates HIVE acquisition policy. LP communication workflow reviewed after each quarterly distribution cycle. Production synthesis template reviewed when Covercy report format changes. Acquisition model template reviewed when deal market changes. LOE benchmarks reviewed annually.
