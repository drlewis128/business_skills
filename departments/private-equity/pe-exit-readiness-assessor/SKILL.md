---
name: pe-exit-readiness-assessor
description: "Assess and build exit readiness for MBL Partners portfolio companies. Use when the user says 'exit readiness', 'ready to exit', 'exit preparation', 'exit prep', 'ready to sell', 'preparing to sell', 'sale readiness', 'sale prep', 'sell-side readiness', 'sell-side preparation', 'buyer readiness', 'M&A readiness', 'exit checklist', 'exit audit', 'exit assessment', 'exit score', 'is the company ready to sell', 'when should we exit', 'exit timing', 'exit now vs hold', 'pre-sale preparation', 'pre-exit planning', 'management presentation readiness', 'CIM readiness', 'confidential information memorandum', 'data room readiness', 'VDR readiness', 'management team presentation', 'EBITDA quality for exit', 'clean EBITDA', 'exit EBITDA', 'financial audit readiness', 'buyer due diligence readiness', 'buy-side due diligence prep', 'defensible financials', 'financial story for exit', 'narrative for exit', 'investment banker selection', 'banker selection', 'RFP banker', 'sell-side banker', 'M&A advisor', or 'exit process timeline'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--action <assess|score|build|timeline>] [--horizon <immediate|6-12mo|12-24mo>] [--focus <financial|operational|management|narrative|process>]"
---

# PE Exit Readiness Assessor

Assess and build exit readiness for MBL Partners portfolio companies — scoring each dimension of exit readiness, identifying gaps that reduce the exit price or buyer confidence, and creating a systematic preparation plan to maximize exit value. Exit readiness is the translation of the investment thesis into a buyer's thesis: what will the buyer see in this company that justifies their acquisition price? How defensible are the financials? How well-prepared is the management team to present and survive buy-side due diligence? Are there known issues (legal; financial; operational) that should be resolved before going to market? Matt Mathison owns the exit decision; Dr. Lewis owns the exit preparation.

## When to Use
- 12-24 months before a planned exit
- Matt Mathison asks "are we ready to exit [entity]?"
- Assessing whether to hold or exit in the current market
- Preparing for a banker selection process

## Exit Readiness Framework

```
EXIT READINESS SCORECARD (5 dimensions; score 1-5 each):

  DIMENSION 1 — FINANCIAL QUALITY (weight: 30%):
    Clean, audited financials (3 years minimum): ✅/⚠️/🔴
    Normalized EBITDA is defensible (minimal add-backs): ✅/⚠️/🔴
    Revenue quality (recurring; contract-based; diverse): ✅/⚠️/🔴
    Working capital normalized: ✅/⚠️/🔴
    No material undisclosed liabilities: ✅/⚠️/🔴
    Score: [1-5]
    
  DIMENSION 2 — OPERATIONAL METRICS (weight: 25%):
    North Star metrics trending positively (GRR; VCR; etc.): ✅/⚠️/🔴
    DSO within target range: ✅/⚠️/🔴
    EBITDA margin at or above thesis target: ✅/⚠️/🔴
    Revenue growth on a strong trajectory: ✅/⚠️/🔴
    Score: [1-5]
    
  DIMENSION 3 — LEGAL AND COMPLIANCE CLEAN-UP (weight: 20%):
    No material pending litigation: ✅/⚠️/🔴
    Regulatory compliance current (HIPAA; DOGM; etc.): ✅/⚠️/🔴
    IP ownership clean (no contractor assignment gaps): ✅/⚠️/🔴
    Customer contracts: change-of-control provisions resolved: ✅/⚠️/🔴
    Corporate governance documents in order: ✅/⚠️/🔴
    Score: [1-5]
    
  DIMENSION 4 — MANAGEMENT AND ORGANIZATIONAL READINESS (weight: 15%):
    Management team can present independently (not all through Dr. Lewis): ✅/⚠️/🔴
    CFO can present financial story with confidence: ✅/⚠️/🔴
    Key employee retention secured (no flight risk post-announcement): ✅/⚠️/🔴
    Succession planning clear (business doesn't die with the CEO): ✅/⚠️/🔴
    Score: [1-5]
    
  DIMENSION 5 — NARRATIVE AND MARKET TIMING (weight: 10%):
    Investment thesis is proven (actual results confirm entry thesis): ✅/⚠️/🔴
    Growth story is forward-looking (buyers pay for future; not past): ✅/⚠️/🔴
    Market timing: PE M&A activity at current valuations: ✅/⚠️/🔴
    Buyer universe: 3+ credible strategic or PE acquirers identified: ✅/⚠️/🔴
    Score: [1-5]
    
  OVERALL READINESS SCORE:
    4.5-5.0: Exit-ready now — run a process
    3.5-4.4: Nearly ready — 6-12 months of targeted preparation
    2.5-3.4: 12-18 months needed — material gaps to address
    <2.5: Not ready — significant work required before marketing

EXIT PREPARATION PRIORITIES (by readiness gap):

  FINANCIAL QUALITY GAPS:
    No audited financials: engage audit firm immediately; audits take 3-6 months
    Aggressive add-backs: clean up the EBITDA story; eliminate questionable add-backs that 
    a buy-side QoE will reverse
    Revenue quality: terminate month-to-month or transactional revenue; convert to contracts
    Working capital: normalize WC before exit (remove seasonal distortions)
    
  LEGAL CLEANUP:
    Resolve pending litigation: settle if economics are reasonable
    Healthcare: refresh OIG/LEIE check; update HIPAA program; renew BAAs
    IP: obtain any missing contractor IP assignment agreements
    Customer contracts: negotiate out change-of-control termination rights with key customers
    
  MANAGEMENT READINESS:
    CEO presentation coaching: management presentations are buyer's first impression
    CFO financial story training: CFO must own the EBITDA bridge narrative
    Data room: build the data room 3 months before go-to-market (never "just-in-time")
    
  NARRATIVE DEVELOPMENT:
    Growth story: identify the top 3 things a buyer gets that the current owner can't provide
    Strategic buyers: identify who benefits most from owning this company
    PE buyers: identify which PE firms have the thesis and portfolio to make this an add-on

BANKER SELECTION (when exit-ready):
  Run an RFP process with 2-4 investment banking firms
  Selection criteria: sector expertise; buyer relationships; prior deal execution; fee structure
  Matt Mathison interviews finalist bankers before selection
  Retainer and success fee: negotiated at selection
```

## Output Format

```markdown
# Exit Readiness Assessment — [Entity] — [Date]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Overall Readiness Score

| Dimension | Weight | Score (1-5) | Weighted | Key gaps |
|-----------|--------|------------|---------|---------|
| Financial quality | 30% | [X] | [X] | [Gap 1] |
| Operational metrics | 25% | [X] | [X] | — |
| Legal & compliance | 20% | [X] | [X] | [Gap 2] |
| Mgmt readiness | 15% | [X] | [X] | [Gap 3] |
| Narrative & timing | 10% | [X] | [X] | — |
| **Overall** | | | **[X.X]** | **[Readiness level]** |

---

## Preparation Roadmap

| Action | Owner | Cost | Timeline | Impact |
|--------|-------|------|---------|--------|
| Engage audit firm (Year 1 audit) | Dr. Lewis | $[X] | 4 months | 🔴 Critical |
| Resolve [pending litigation] | Legal counsel | $[X] | 2 months | ⚠️ Important |
| Management presentation coaching | Dr. Lewis + CEO | $[X] | 1 month | ⚠️ Important |
| Build data room | Dr. Lewis | $[X] | 3 months | ⚠️ Important |

---

## Recommended Exit Timeline

**Target go-to-market date:** [Date]
**Target close date:** [Date]
**Rationale:** [Why this timeline; current market conditions; readiness status]
```

## Output Contract
- Exit readiness is assessed honestly, not optimistically — an entity that is rated exit-ready when it has unanswered litigation, unaudited financials, and a CFO who can't explain the EBITDA bridge will create a buyer DD process full of surprises that reduce the exit price or kill the deal; Dr. Lewis rates each dimension accurately against the specific criteria; a score of 3 means something specific (some gaps) — it does not mean "generally pretty good"; gaps are named specifically with the estimated time and cost to close them
- Financial audit must be done before going to market — buy-side QoE firms will compare the company's financials to audited statements; a company going to market with only management accounts (unaudited) signals financial quality risk and gives buyers a justification to reduce the price; Dr. Lewis initiates the audit engagement at least 12 months before a planned exit; if the entity has never been audited, plan 18 months; first-time audits often reveal issues that need to be resolved
- Management presentations are rehearsed before buyer meetings — a CFO who stumbles over the EBITDA bridge in front of a strategic buyer's CFO reduces buyer confidence and negotiating leverage; Dr. Lewis rehearses management presentations at least 3 times before the first buyer meeting; the CEO and CFO should be able to present without notes, answer the 15 hardest questions without hesitation, and defend every add-back in the QoE with specific documentation; a polished presentation signals institutional management quality to buyers
- HITL required: exit decision (go/no-go) → Matt Mathison; exit timeline → Matt Mathison; banker selection → Matt Mathison interviews finalists and approves; exit announcement to management team → Matt Mathison approves timing and communication (ops-communication-manager); go-to-market timing → Matt Mathison; any exit price below the thesis target → Matt Mathison decision to proceed or hold; post-exit retention packages → Matt Mathison approves budget

## System Dependencies
- **Reads from:** pe-portfolio-health-monitor (entity health status); pe-portfolio-kpi-dashboard (operational metrics); pe-value-creation-tracker (VCP completion status); pe-fund-accounting (FMV; MOIC-to-date); pe-sensitivity-analyzer (exit timing scenarios); pe-legal-diligence (known legal gaps); pe-entity-ceo-monitor (management readiness)
- **Writes to:** Exit readiness scorecard (SharePoint → Portfolio → [Entity] → Exit → ReadinessAssessment); preparation roadmap; Matt Mathison exit briefings; pe-exit-process-manager (readiness score and preparation timeline); banker selection RFP (when ready)
- **HITL Required:** Exit decision → Matt Mathison; exit timeline → Matt; banker selection → Matt interviews + approves; announcement timing → Matt approves; exit price below thesis → Matt decision; retention packages → Matt approves

## Test Cases
1. **Golden path:** Allevio exit readiness assessment, 18 months before target exit. Financial quality: 3 years audited financials (✅); EBITDA $1.4M with 2 defensible add-backs (✅); revenue 91.8% recurring (✅). Operational: employer GRR 91.8% (✅); claim ratio 85.4% (✅); DSO 31 days (✅). Legal: no material litigation; HIPAA program current; all BAAs renewed; no customer change-of-control issues (✅). Management: CEO strong; CFO needs presentation coaching (⚠️); data room not yet built (⚠️). Narrative: healthcare MSO consolidation thesis compelling; strategic buyers identified (5+) (✅). Overall score: 4.1/5. Recommendation: 6-9 months of targeted preparation (CFO coaching; data room; management presentation rehearsal; IP assignment cleanup for 2 contractor modules). Go-to-market in 9 months.
2. **Edge case:** Assessment reveals a material finding — Allevio has one employer group (30% of revenue) whose contract has a change-of-control termination right → Dr. Lewis: "This is the most material exit readiness gap: a single customer at 30% of revenue with a change-of-control exit right will be discovered in buy-side DD and either kill the deal or significantly reduce the price. Our option before marketing: approach the employer group proactively to negotiate a contract extension that removes the change-of-control termination right in exchange for a multi-year rate lock or other benefit. This needs to happen before we go to market — buyers will find it and use it. I'm bringing this to Matt Mathison with a recommended resolution timeline."
3. **Adversarial:** An entity CEO argues that "we're ready to sell now" and resists the preparation timeline → Dr. Lewis: "I understand the CEO wants to move quickly — but readiness isn't a feeling, it's a score. The CFO has never presented the EBITDA bridge to outside investors; we don't have a data room; the IP assignment on the two software modules hasn't been fixed. A buyer's QoE team will find all of these in their first week of diligence, and each one gives them a reason to reduce the price or walk away. Six months of preparation won't delay a great exit — it will protect the price. I'm sharing this assessment directly with Matt Mathison, who makes the go-to-market decision. If Matt decides to go now, we execute as well as we can with the gaps we have."

## Audit Log
All exit readiness assessments retained (with scores; gap analysis; preparation roadmap). Matt Mathison briefings retained. Banker selection records retained (RFP responses; interview notes; selection rationale). Exit preparation progress records retained. Pre-market legal cleanup records retained.

## Deprecation
Exit readiness assessment is activated 12-24 months before a planned exit and runs through the closing date. The assessment framework is reviewed after each exit for lessons learned and updated before the next portfolio company exit process.
