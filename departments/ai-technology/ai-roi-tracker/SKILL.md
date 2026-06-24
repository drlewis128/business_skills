---
name: ai-roi-tracker
description: "Track and measure AI investment ROI for MBL Partners and portfolio companies. Use when the user says 'AI ROI', 'is AI paying off', 'AI value', 'AI return', 'AI investment return', 'AI savings', 'AI cost savings', 'AI time savings', 'AI productivity', 'AI efficiency', 'AI impact measurement', 'measure AI', 'AI metrics', 'AI KPIs', 'AI performance', 'AI dashboard', 'AI reporting', 'AI value report', 'AI value tracking', 'AI cost', 'how much is AI costing us', 'AI spend', 'AI budget', 'AI cost vs. benefit', 'AI payback period', 'what is our AI ROI', 'how is AI performing', 'AI usage', 'Claude API cost', 'Krista cost', 'AI vendor cost', 'AI investment summary', 'AI quarterly report', 'AI value scorecard', 'AI business case', 'justify AI investment', or 'show me the AI ROI'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6|all>] [--period <month|quarter|ytd>] [--action <track|report|project|justify>]"
---

# AI ROI Tracker

Track and measure AI investment ROI across MBL Partners and portfolio companies — quantifying time savings, cost avoidance, revenue impact, and quality improvements from AI deployments to produce a quarterly AI value report for Matt Mathison and to inform continued investment decisions.

## When to Use
- Quarterly AI value reporting to Matt Mathison
- Justifying AI investment to entity CEOs or LPs
- Evaluating whether to expand or contract an AI tool's deployment
- Monthly AI cost tracking (Claude API; Krista.ai; Microsoft Copilot; other vendors)

## AI ROI Tracking Framework

```
ROI CATEGORIES:

  1. TIME SAVINGS (quantified in hours/week → annualized FTE equivalent):
     Meeting Intelligence System: Dr. Lewis ~4h/week → $X/year equivalent
     Pre-meeting prep: Dr. Lewis ~2h/week → $X/year equivalent
     Monday.com push automation: ~30 min/week → $X/year equivalent
     Finance automation (reporting; reconciliation): entity-specific
     HR/recruiting process support: entity-specific
     Method: Survey Dr. Lewis + entity CEOs → estimate hours saved per workflow → × annual compensation rate → FTE equivalent
     
  2. COST AVOIDANCE:
     Skills replacing external consultants or tools: what would this have cost externally?
     Error prevention: documented cases where AI caught an error before it became costly
     Speed advantage: earlier insight → earlier decision → avoided cost (quantify case-by-case)
     
  3. REVENUE IMPACT (pipeline-linked AI deployments):
     Column6: AI-assisted IO pipeline management → revenue acceleration
     Allevio: AI-assisted employer outreach → employer pipeline impact
     MBL: AI-assisted deal sourcing → deal pipeline value contribution
     Attribution: conservative; tag AI-assisted activities in GHL/Monday.com → trace to close
     
  4. QUALITY IMPROVEMENTS (harder to quantify; document qualitatively):
     Meeting summaries → Matt Mathison has full action item visibility (vs. relying on memory)
     Pre-meeting prep → better meeting outcomes; stronger LP relationships
     Financial accuracy → fewer manual errors in QuickBooks reconciliation
     Compliance → PHI incidents prevented (zero tolerance baseline)
     
COST TRACKING:
  Claude API: monthly usage + cost (Dr. Lewis monitors Anthropic console)
  Krista.ai: monthly subscription + usage fees
  Microsoft 365 / Copilot: subscription costs (if Copilot is activated)
  Other AI tools: SaaS subscriptions tracked in Bill.com → tag AI category
  
ROI CALCULATION:
  AI ROI = (Total Benefit − Total Cost) / Total Cost × 100%
  Benefit = Time Savings Value + Cost Avoidance + Revenue Impact (conservative attribution)
  Cost = API costs + Subscriptions + Dr. Lewis implementation time
  
TARGET ROI (MBL AI portfolio):
  Year 1: ROI ≥ 100% (AI pays for itself in first year)
  Year 2+: ROI ≥ 300% (compounding as workflows scale)
  Any AI tool with negative 12-month ROI → Dr. Lewis reviews for discontinuation or replacement
  
ENTITY-SPECIFIC TRACKING:
  Allevio AI: HIPAA-compliant metrics only; no PHI in ROI reporting
  HIVE: AI supporting production reporting + LP communication → quantify time savings
  Column6: AI-assisted campaign reporting + IO management → quantify
  MBL: Meeting Intelligence + portfolio oversight → Matt Mathison time savings primary metric
```

## Output Format

```markdown
# AI ROI Report — Q[N] [Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison | **Date:** [Date]

---

## Executive Summary (BLUF)
• AI investment to date: $[X] | Value generated: $[X] | ROI: [X]%
• Top-performing workflow: [Meeting Intelligence / Finance automation / etc.]
• Recommendation: [Expand / maintain / discontinue specific tool]

---

## Investment Summary

| Tool / Workflow | Monthly Cost | Value Generated | ROI |
|----------------|-------------|----------------|-----|
| Meeting Intelligence (Krista + Claude) | $X | $X | X% |
| [Other workflow] | $X | $X | X% |
| **Total** | **$X** | **$X** | **X%** |

---

## Value by Category

| Category | Quantified Value | Methodology |
|----------|-----------------|-------------|
| Time savings (FTE equiv.) | $X/year | X hours/week × $Y/hour |
| Cost avoidance | $X | [Specific cases] |
| Revenue impact | $X (conservative) | [Attribution methodology] |

---

## Qualitative Wins
- [Meeting intelligence: Matt Mathison has full action item visibility every Monday]
- [Zero PHI incidents: AI applications at Allevio have maintained HIPAA compliance]

---

## Recommendations
1. [Expand Meeting Intelligence to include pre-meeting prep — estimated additional $X value]
2. [Discontinue [tool] — negative ROI after 12 months]
```

## Output Contract
- ROI is reported conservatively — Dr. Lewis does not inflate AI ROI to justify investment; time savings estimates are validated with the people doing the work (Dr. Lewis; entity CEOs) before being used in ROI calculations; revenue attribution for AI-assisted sales activities is tagged conservatively (AI-assisted, not AI-driven); an AI ROI report that exaggerates the value is the fastest way to lose Matt Mathison's trust in the AI program; conservative numbers that are consistently delivered build the case for continued investment; inflated numbers create skepticism when results don't match claims
- Every AI tool with negative ROI gets a discontinuation review — if any AI subscription or workflow is not paying for itself within 12 months, Dr. Lewis documents why, proposes a fix (scope change; workflow redesign; replacement tool), and brings the decision to Matt Mathison; the default for negative-ROI AI tools is discontinuation, not "give it more time"; MBL competes on execution speed and ROI discipline — AI investments that don't deliver are cut the same way any other non-performing investment is cut
- HITL required: quarterly ROI report → Dr. Lewis prepares; Matt Mathison reviews; tool discontinuation decisions → Matt Mathison approves; new AI tool ROI justification → Dr. Lewis + Matt Mathison; revenue attribution methodology → entity CEO confirms before inclusion; Allevio ROI reporting → HIPAA check (no PHI in any metric; employer-aggregate only)

## System Dependencies
- **Reads from:** Anthropic Console (Claude API usage + costs); Krista.ai billing (monthly subscription + usage); Bill.com (AI vendor invoices tagged as AI category); Microsoft 365 billing (Copilot if activated); Dr. Lewis time tracking (hours saved per workflow); entity CEO input (time savings by workflow); Monday.com (action item completion rates — meeting intelligence effectiveness proxy); GHL (AI-assisted activity tags in pipeline)
- **Writes to:** Quarterly AI ROI Reports (SharePoint → MBL → AI Strategy → ROI Reports → [Quarter]); Matt Mathison quarterly AI briefing; AI tool budget tracking (Bill.com AI category); AI investment justification documents (for LP visibility if requested)
- **HITL Required:** Quarterly report → Matt Mathison reviews; tool discontinuation → Matt Mathison approves; revenue attribution → entity CEO confirms; Allevio → HIPAA check; new tool ROI justification → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** Q2 2026 AI ROI Report. Investment: Krista.ai $800/month + Claude API $240/month = $1,040/month = $3,120 for Q2. Value: Meeting Intelligence time savings: Dr. Lewis 4h/week × 13 weeks × $120/hour equivalent = $6,240. Pre-meeting prep: 2h/week × 13 × $120 = $3,120. Monday.com push: 0.5h/week × 13 × $80 = $520. Finance reporting support: 3h/week × 13 × $120 = $4,680. Total value: $14,560. Q2 ROI: ($14,560 − $3,120) / $3,120 = 367%. Report delivered to Matt Mathison July 15. Recommendation: expand Meeting Intelligence to Allevio entity CEO in Q3.
2. **Edge case:** A Krista workflow is running but nobody can clearly quantify how much time it saves because the process is new and there's no baseline → Dr. Lewis: "For new workflows without a time-savings baseline, I'll establish a baseline over the next 30 days: I'll track how long the manual version would have taken for the same tasks. For the Meeting Intelligence workflow, I know the pre-AI baseline — meeting summaries took me 45-60 minutes per meeting manually; Krista + Claude produces a draft in under 5 minutes that I review in 3 minutes = 37-52 minutes saved per meeting. I'll apply this methodology to the new workflow and have a preliminary ROI estimate in 4 weeks."
3. **Adversarial:** Entity CEO questions the ROI methodology — "you're including your own time as a value generated, but you'd be paid the same whether AI exists or not" → Dr. Lewis: "Fair point on the framing — the value isn't that AI saves me payroll dollars, it's that AI frees capacity that would otherwise not exist. At MBL's current scale, I'm the primary person handling portfolio oversight, AI strategy, finance coordination, and integration management simultaneously. Without AI assistance, I would need to either hire additional capacity (direct cost) or triage and drop lower-priority items (opportunity cost). The ROI calculation captures the opportunity cost value of the freed capacity — what I can now do with those 4 hours per week that I couldn't before. I'll add a slide to the ROI report that explicitly explains this methodology so the framing is clear."

## Audit Log
Quarterly ROI reports (permanent; SharePoint). Cost tracking records (monthly; by tool). Time savings validation records (methodology; source). Revenue attribution records (entity CEO confirmations). Tool discontinuation decisions. Matt Mathison review records. HIPAA check records (Allevio metrics). New tool ROI justification records.

## Deprecation
ROI framework reviewed annually as AI cost structure changes. Revenue attribution methodology reviewed when sales process changes. Time savings benchmarks updated annually (Dr. Lewis + entity CEO input). Tool discontinuation criteria reviewed as AI market evolves. Quarterly cadence reviewed if MBL AI portfolio grows significantly.
