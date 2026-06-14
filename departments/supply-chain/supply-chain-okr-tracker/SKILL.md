---
name: supply-chain-okr-tracker
description: "Build and track OKRs for the supply chain and procurement function. Use when the user says 'supply chain OKRs', 'procurement OKRs', 'logistics OKRs', 'supply chain goals', 'supply chain objectives', 'procurement quarterly goals', 'OKRs for supply chain', 'supply chain team objectives', or 'supply chain roadmap'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1|Q2|Q3|Q4>] [--year <2026>] [--entity <MBL|Allevio|HIVE|all>]"
---

# Supply Chain OKR Tracker

Build and track OKRs for the supply chain and procurement function that connect operational improvements to business outcomes. Supply chain OKRs should be outcome-focused (cost saved, stockout rate reduced, contract coverage increased) — not activity-focused (number of RFQs run, number of suppliers reviewed). For MBL, supply chain OKRs are set by Dr. Lewis and reviewed quarterly with Matt Mathison.

## When to Use
- Quarterly OKR planning for supply chain
- Mid-quarter check-in on supply chain progress
- Annual supply chain strategy planning
- Matt Mathison asks how supply chain is performing against goals
- A portfolio company is building a supply chain function for the first time

## OKR Format

```
Objective: Ambitious, qualitative direction — "what does excellent look like?"
Key Results (KR): 3-5 measurable outcomes per objective
  Target: The grade of 0.7 = good; 1.0 = exceeded
  Mid-quarter check: Directional signal; not a final grade
  
MBL supply chain OKR principles:
  Cost savings always tied to % or $ — not "reduce costs"
  Supplier performance KRs based on measured SLAs — not "improve supplier relationships"
  Inventory KRs based on service level and turnover — not "better inventory management"
  Compliance KRs always included — HIPAA, contract coverage, OSHA where applicable
```

## Output Format

```markdown
# Supply Chain OKRs — Q<N> <Year>
**Period:** <Q1/Q2/Q3/Q4> <Year> | **Owner:** Dr. John Lewis
**Review date:** <End of quarter> | **Matt Mathison review:** Monthly check-in

---

## Objective 1: Reduce procurement cost and improve spend control

| Key Result | Baseline | Target | Mid-quarter | Final | Grade |
|-----------|---------|--------|------------|-------|-------|
| KR1.1: Achieve $X in procurement savings vs. prior year pricing | $0 | $X savings | $X | | |
| KR1.2: Increase contract coverage from X% to 80% of total spend | X% | 80% | | | |
| KR1.3: Reduce maverick spend (outside approved suppliers) from X% to <5% | X% | <5% | | | |
| KR1.4: Complete annual RFQ for top 3 categories by budget value | 0/3 | 3/3 | | | |

**Objective grade:** — (mid-quarter) / — (final)

---

## Objective 2: Achieve 95%+ supplier performance across portfolio

| Key Result | Baseline | Target | Mid-quarter | Final | Grade |
|-----------|---------|--------|------------|-------|-------|
| KR2.1: Increase portfolio on-time delivery rate to ≥95% | X% | 95% | | | |
| KR2.2: Reduce supplier quality defect rate to <2% | X% | <2% | | | |
| KR2.3: Complete quarterly performance reviews for all Tier A/B suppliers | 0 | 100% | | | |
| KR2.4: Qualify backup supplier for each critical single-source category | 0/<N> | 100% | | | |

---

## Objective 3: Eliminate stockouts for critical items across portfolio

| Key Result | Baseline | Target | Mid-quarter | Final | Grade |
|-----------|---------|--------|------------|-------|-------|
| KR3.1: Reduce stockout rate from X% to <2% portfolio-wide | X% | <2% | | | |
| KR3.2: Achieve ≥98% fill rate for Allevio clinical A-items | X% | ≥98% | | | |
| KR3.3: Reduce emergency/air freight to <2% of shipments | X% | <2% | | | |
| KR3.4: Implement demand forecasting for all A-items at Allevio and HIVE | 0 items | 100% of A-items | | | |

---

## Objective 4: Build a compliant, controlled supply chain foundation

| Key Result | Baseline | Target | Mid-quarter | Final | Grade |
|-----------|---------|--------|------------|-------|-------|
| KR4.1: Achieve 100% HIPAA BAA coverage for all Allevio clinical vendors | X% | 100% | | | |
| KR4.2: Implement supplier onboarding checklist for all new vendors | No process | 100% of new vendors | | | |
| KR4.3: Complete supplier diversity assessment (% diverse supplier spend) | Unknown | Baseline established | | | |
| KR4.4: Reduce open PO overdue rate to <5% | X% | <5% | | | |

---

## Mid-Quarter Check-In (Week 6)

| Objective | Status | Confidence (0-1.0) | Action if off-track |
|----------|--------|-------------------|-------------------|
| Objective 1: Cost reduction | 🟡 On track | 0.7 | None needed |
| Objective 2: Supplier performance | 🔴 Behind | 0.5 | Activate PIP for underperforming supplier |
| Objective 3: Stockout elimination | 🟡 On track | 0.6 | Accelerate demand forecasting implementation |
| Objective 4: Compliance | ✅ Ahead | 0.8 | None needed |

**Escalation to Matt Mathison:** Objective 2 behind — 2 suppliers below 90% OTDR; PIP activated; 60-day improvement plan; may miss KR2.1 target; no business impact yet

---

## Quarter-End Grading

| Key Result | Final value | Target | Grade |
|-----------|------------|--------|-------|
| KR1.1: Savings | $X | $X | X.X |
| KR1.2: Contract coverage | X% | 80% | X.X |
| ... | | | |

| Objective | KR avg grade | Assessment |
|----------|------------|-----------|
| Objective 1: Cost | X.X | On target / Behind / Exceeded |
| Objective 2: Suppliers | X.X | |
| Objective 3: Stockouts | X.X | |
| Objective 4: Compliance | X.X | |

**Quarter commentary:** <2-3 sentences: what went well, what was missed, what carries into next quarter>

**Next quarter priorities (from misses):** <List items that didn't close and need to be OKRs next quarter>
```

## Output Contract
- OKRs always outcome-based — "complete 3 RFQs" is not a KR; "achieve $X savings" is
- Grading always 0.0-1.0 with 0.7 as the target — 1.0 means the target was too easy
- Mid-quarter check-in always escalation-ready — if an objective is tracking below 0.5, Matt Mathison gets proactive communication
- Compliance KRs always included — HIPAA BAA coverage is a legal requirement, not an optional OKR
- HITL required: Dr. Lewis builds OKRs; Matt Mathison reviews and approves quarterly OKRs; mid-quarter check-in shared with Matt Mathison; end-of-quarter debrief with Matt Mathison; any objective red-tracking escalated proactively

## System Dependencies
- **Reads from:** Supply chain KPI dashboard, supplier performance tracker, inventory data, procurement spend data
- **Writes to:** Supply chain OKRs (SharePoint/Strategy/OKRs); monthly status updates to Matt Mathison
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves quarterly OKRs; escalate red/below-0.5 objectives to Matt Mathison proactively

## Test Cases
1. **Golden path:** Q3 supply chain OKRs → 4 objectives, 16 KRs; mid-quarter check-in: Obj 1 on track (0.7), Obj 2 behind (0.5 — 1 underperforming supplier), Obj 3 ahead (0.8 — demand forecasting completed early), Obj 4 on track (0.7); escalation to Matt: Obj 2 behind, PIP activated; end-of-quarter: Obj 1: 0.8 (exceeded savings target by 14%), Obj 2: 0.6 (supplier improved but didn't reach 95%); carry KR2.1 into Q4
2. **Edge case:** External factor (supply chain disruption) makes a target unachievable mid-quarter → acknowledge in mid-quarter check-in; adjust commentary to reflect external cause; don't artificially grade easier; carry the miss into the post-disruption review; the OKR grade reflects reality, not the explanation for reality
3. **Adversarial:** All OKRs are set at easily achievable levels to guarantee high grades → OKR grades above 0.9 consistently mean targets are too easy; push back on sandbagged targets; 0.7 is the target; set targets that are achievable with real effort but require improvement; Matt Mathison should challenge any OKR target that looks like the current state

## Audit Log
OKR records retained quarterly. Mid-quarter check-ins retained. Grade rationale documented. Portfolio company OKRs tracked separately by entity.

## Deprecation
Retire when MBL has a formal OKR platform (Lattice, Betterworks, or equivalent) with automated tracking, check-in workflows, and cross-functional OKR visibility.
