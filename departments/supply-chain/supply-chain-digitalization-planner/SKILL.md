---
name: supply-chain-digitalization-planner
description: "Plan the digitalization and automation of supply chain processes. Use when the user says 'digitalize supply chain', 'automate procurement', 'supply chain technology', 'supply chain systems', 'replace manual supply chain processes', 'supply chain automation', 'supply chain digital transformation', 'ERP for supply chain', 'procurement software', or 'supply chain technology roadmap'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE>] [--focus <procurement|inventory|logistics|all>] [--horizon <90days|1year|3years>]"
---

# Supply Chain Digitalization Planner

Plan the digitalization and automation of supply chain processes — from manual spreadsheet-driven purchasing to integrated, automated systems. Supply chain digitalization is not about buying the biggest ERP; it's about eliminating the manual work that creates errors, delays, and blindspots. For MBL, digitalization should be staged: solve the highest-value manual processes first, build on what works, and scale to ERP only when the volume justifies it.

## When to Use
- Supply chain is heavily manual (spreadsheets, email orders, no PO system)
- Matt Mathison wants a supply chain technology roadmap
- Portfolio company acquisition — assess digitalization maturity and gap
- Current tools are creating bottlenecks (QuickBooks PO process is too manual at scale)
- Planning a 12-24 month supply chain improvement initiative

## Digitalization Maturity Model

```
Level 1 — Manual / Ad Hoc (most early-stage portfolio companies):
  Purchasing: Email and phone; no PO system
  Inventory: Physical count; spreadsheets
  Supplier data: Contact list (no contract system)
  Analytics: None or manual reports
  Typical signs: "We just know" inventory; late deliveries not tracked; no spend analysis

Level 2 — Basic Digital (early process discipline):
  Purchasing: QuickBooks POs; basic approval workflow
  Inventory: QuickBooks inventory module or basic system
  Supplier data: Shared spreadsheet or simple registry
  Analytics: QuickBooks reports; occasional Excel analysis

Level 3 — Managed Digital (MBL target for portfolio companies):
  Purchasing: Automated PO creation; 3-way match; approval routing
  Inventory: Real-time tracking; automated reorder alerts; cycle count workflow
  Supplier data: Contract repository; performance scorecard; renewal calendar
  Analytics: Connected dashboard (Metabase on BigQuery); weekly KPI review

Level 4 — Integrated Digital (growth stage):
  Purchasing: Procurement platform (Coupa, Ariba) with supplier portal
  Inventory: ERP-integrated; demand sensing; AI-assisted forecasting
  Supplier data: SRM platform; automated performance scoring
  Analytics: Real-time BI; predictive analytics

Level 5 — Optimized / AI-Driven:
  Fully automated procurement recommendations
  AI demand sensing and dynamic safety stock
  Real-time supply network visibility
```

## Output Format

```markdown
# Supply Chain Digitalization Plan — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis
**Entity:** <Allevio / HIVE / MBL>
**Current maturity level:** Level <N> | **Target:** Level <N>
**Horizon:** <90 days / 12 months / 3 years>

---

## Current State Assessment

| Process area | Current method | Pain points | Maturity |
|------------|--------------|-----------|---------|
| Purchase orders | Email to supplier | No audit trail; no 3-way match | Level 1 |
| Inventory tracking | Paper log + weekly spreadsheet | Stockouts not detected until empty | Level 1 |
| Supplier contracts | PDF files in shared drive | No renewal alerts; uncontrolled | Level 2 |
| Freight tracking | Email notifications | Can't proactively see delays | Level 1 |
| Spend analysis | QuickBooks + manual | Slow; incomplete; no category view | Level 2 |

**Current maturity score:** Level 1-2 (heavily manual)
**Highest-value digitalization opportunities:** PO + 3-way match; inventory reorder alerts; contract renewal calendar

---

## Digitalization Roadmap

### Phase 1 (0-90 days): Foundation — Quick wins with existing tools

**Goal:** Eliminate the biggest manual pain points using tools already available (QuickBooks, Metabase, SharePoint)

| Initiative | Tool | Manual work eliminated | Effort | Impact |
|-----------|------|----------------------|--------|--------|
| PO creation and 3-way match | QuickBooks | Manual PO tracking; invoice reconciliation | 2 weeks | High |
| Inventory reorder alerts | QuickBooks inventory module | "We ran out" discovery | 1 week setup | High |
| Contract renewal calendar | SharePoint / Outlook calendar | Missed auto-renewals | 1 day | High |
| Supplier registry (structured) | SharePoint list | Unstructured contacts; no compliance tracking | 1 week | Medium |
| Freight invoice auto-logging | Bill.com | Manual freight invoice entry | 2 days setup | Medium |

**Phase 1 target state:** Level 2 across all areas | **Investment:** Dr. Lewis time only (~40h)

---

### Phase 2 (3-12 months): Automation — Connect and automate

**Goal:** Connect the data systems and automate repetitive processes

| Initiative | Tool | What it automates | Investment | Payback |
|-----------|------|-----------------|-----------|---------|
| Supply chain dashboard | Metabase on BigQuery | Manual KPI reporting; weekly status emails | $0 (existing tools) + 20h | Immediate |
| Automated reorder emails | QuickBooks + email | Manual reorder checking; phone orders | 10h + $0 | Week 1 |
| Contract renewal Slack/email alerts | SharePoint automation | Manual calendar checking | 5h + $0 | Immediate |
| Demand forecasting model | BigQuery + dbt | Manual demand estimation | 20h + $0 | Month 1 |
| Supplier performance auto-scoring | Metabase | Manual scorecard calculation | 15h + $0 | Month 1 |
| Invoice audit automation | Python script + Bill.com API | Manual invoice review | 30h + $0 (Dr. Lewis builds) | Month 2 |

**Phase 2 target state:** Level 3 — Managed Digital | **Investment:** ~100h Dr. Lewis time

---

### Phase 3 (12-36 months): Platform — Purpose-built tools at scale

**Goal:** Implement purpose-built tools when volume justifies the investment

| Initiative | Tool options | Trigger for adoption | Est. cost | Benefit |
|-----------|------------|---------------------|----------|---------|
| Procurement platform | Coupa (mid-market), Ariba (enterprise) | >$2M annual procurement spend; >3 buyers | $X/year | Full workflow automation; supplier portal |
| Inventory management | Cin7, Fishbowl, NetSuite | >500 SKUs; >5 locations | $X/year | Real-time inventory; automated reorder |
| 3PL / WMS integration | 3PL API integration | 3PL engaged (HIVE or Allevio) | Custom dev | Real-time shipment visibility |
| ERP | NetSuite, SAP Business One | >$5M revenue; >20 users; multi-entity | $X/year | Full integration across finance, supply chain, ops |

**Phase 3 triggers:** Assess at 12-month mark; implement only when volume justifies

---

## AI / OpenFang Integration Opportunities

Specific AI use cases for MBL supply chain (Dr. Lewis builds on OpenFang):

| Use case | What it does | Data needed | Timeline |
|---------|------------|------------|---------|
| Supply chain anomaly detection | Alert on unusual spend, delivery delays, demand spikes | BigQuery supply chain data | Phase 2 |
| Demand forecast assistant | AI assistant for demand questions ("how much should we order next quarter?") | Historical demand + driver data | Phase 2 |
| Contract review assistant | AI review of supplier contracts for non-standard clauses | Contract text | Phase 2 |
| Supplier risk scoring | Auto-score supplier risk using performance + financial data | Supplier registry + financial data | Phase 3 |
| Procurement recommendation engine | Suggest when and how much to reorder | Real-time inventory + demand | Phase 3 |

---

## Technology Investment Roadmap

| Phase | Investment | Cost | Payback |
|-------|-----------|------|---------|
| Phase 1 (0-90 days) | QuickBooks + SharePoint (existing) | Dr. Lewis time only | Month 1 |
| Phase 2 (3-12 months) | BigQuery + Metabase + custom scripts | Dr. Lewis time only | Month 3 |
| Phase 3 (12-36 months) | Procurement platform or inventory software | $X/year | Year 2 |

**Total Phase 1+2 investment:** ~140h Dr. Lewis time = $0 in software
**Estimated savings from Phase 1+2:** $X/year (manual work eliminated + errors caught)
```

## Output Contract
- Phased approach always recommended — Level 5 ERP when you're at Level 1 is the most common and expensive supply chain technology mistake
- Phase 1 always uses existing tools — QuickBooks, SharePoint, Metabase can solve most Level 1 pain points without new software investment
- AI/OpenFang integration always identified separately — Dr. Lewis builds AI on the data foundation; the foundation must come first
- ROI always quantified — technology investment without a payback calculation is speculation
- HITL required: Dr. Lewis designs and implements Phases 1 and 2; Matt Mathison approves Phase 3 platform investments (>$10K/year); entity operations leads co-approve process changes that affect their teams; OpenFang AI integrations reviewed by Dr. Lewis before production deployment

## System Dependencies
- **Reads from:** Current tools audit (QuickBooks, SharePoint, Bill.com), entity supply chain process documentation
- **Writes to:** Digitalization roadmap (SharePoint/Strategy); implementation plans; OpenFang integration specs
- **HITL Required:** Dr. Lewis designs and leads; Matt Mathison approves platform investments; entity ops co-approves process changes; OpenFang AI: Dr. Lewis owns

## Test Cases
1. **Golden path:** Allevio supply chain digitalization → Current: Level 1; Phase 1: QuickBooks PO system + 3-way match configured; inventory reorder alerts set for 50 A-items; contract calendar in SharePoint; completed in 6 weeks; Phase 2: supply chain dashboard in Metabase; demand forecast model in BigQuery; automated supplier scoring; completed in 4 months; Allevio at Level 3 — Managed Digital; Phase 3 trigger assessment at 12 months: volume not yet at ERP threshold; continue on current platform
2. **Edge case:** Portfolio company acquisition already has a sophisticated ERP (NetSuite) → don't rip out what works; assess fit with MBL's data architecture; connect NetSuite to BigQuery via Fivetran for analytics; focus on process improvement (are they using the ERP's procurement module? are inventory parameters correct?); technology is rarely the problem — process and data quality are
3. **Adversarial:** Matt Mathison wants to implement a full ERP immediately for a company that is at Level 1 → an ERP implementation at Level 1 fails 70%+ of the time; the organization needs process discipline first; an ERP codifies existing processes; if the processes are broken, the ERP breaks expensively; recommend Phase 1 (get to Level 2) in 90 days; prove the process discipline; then evaluate whether an ERP is the right next step at 12 months

## Audit Log
Digitalization plan versioned. Phase 1 implementation results documented. Technology investment decisions documented. ROI tracking vs. projections.

## Deprecation
Retire when MBL has a dedicated supply chain technology manager or IT leader who owns the supply chain systems roadmap and vendor relationships.
