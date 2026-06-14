---
name: supplier-performance-tracker
description: "Track and review supplier performance against SLAs and KPIs. Use when the user says 'supplier performance', 'vendor performance review', 'how is our supplier doing', 'supplier scorecard', 'vendor scorecard', 'supplier KPIs', 'rate a supplier', 'quarterly business review', 'supplier QBR', or 'supplier metrics'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--supplier <name>] [--period <quarterly|annual>] [--mode <review|scorecard|qbr>]"
---

# Supplier Performance Tracker

Track and review supplier performance to ensure they're delivering against contracted SLAs, quality standards, and relationship expectations. Most companies pay suppliers on time but never systematically measure supplier performance — which means poor performance is invisible until there's a crisis. For MBL, supplier performance tracking is most critical for Tier A strategic suppliers and any supplier where failure creates operational or patient care risk.

## When to Use
- Quarterly performance review for Tier A/B suppliers
- Annual supplier assessment for contract renewal
- Supplier is underperforming — need a formal record before escalation
- Dispute with a supplier over quality or delivery — need documented evidence
- Preparing for a supplier QBR (Quarterly Business Review)

## Performance Dimensions

```
Delivery performance:
  On-time delivery rate: % of orders delivered on or before promised date
  Target: ≥95% (Tier A); ≥90% (Tier B); ≥85% (Tier C)
  Critical: <80% = performance improvement plan (PIP) required

Quality:
  Defect rate: % of units/deliveries with defects or non-conformances
  Target: <2% defect rate
  Critical: >5% = escalate immediately; >10% = consider replacement

Responsiveness:
  Quote turnaround: Hours from request to quote received
  Issue resolution: Hours/days from issue reported to resolved
  Target: <24h for critical issues; <72h for standard

Financial compliance:
  Invoice accuracy: % of invoices matching PO amount and terms
  Target: >98% accuracy
  Critical: <95% = process improvement required

Relationship quality:
  Proactive communication: Do they inform us before problems occur?
  Strategic engagement: QBR participation; roadmap sharing
  THRIVE alignment: Do they operate with integrity and transparency?
```

## Output Format

```markdown
# Supplier Performance Review — <Supplier Name>
**Period:** <Q1 / Q2 / Q3 / Q4> <Year> | **Reviewer:** Dr. John Lewis
**Supplier:** <name> | **Entity:** <MBL / Allevio / HIVE / Column6>
**Supplier tier:** A / B / C | **Contract value:** $X/year
**Review type:** Quarterly / Annual / Performance Improvement Plan

---

## Performance Summary

| Dimension | Target | Actual | Score (1-5) | Trend |
|----------|--------|--------|------------|-------|
| On-time delivery | ≥95% | <N>% | <score> | ↑/↓/→ |
| Quality / defect rate | <2% | <N>% | <score> | ↑/↓/→ |
| Quote turnaround | <24h | <N>h avg | <score> | ↑/↓/→ |
| Issue resolution | <72h | <N>h avg | <score> | ↑/↓/→ |
| Invoice accuracy | ≥98% | <N>% | <score> | ↑/↓/→ |
| Relationship quality | — | Rated | <score> | ↑/↓/→ |
| **Overall score** | | | **<avg>/5.00** | |

**Performance grade:** 
- 4.5-5.0: Excellent — preferred status confirmed; consider expansion
- 3.5-4.4: Good — maintain relationship; address specific gaps
- 2.5-3.4: Acceptable — formal improvement plan required
- <2.5: Poor — consider replacement; PIP + 90-day review

---

## Detailed Performance Evidence

### Delivery Performance

| Month | Orders | On-time | Late | Reason for late | Recovery time |
|-------|--------|---------|------|----------------|-------------|
| Month 1 | <N> | <N> | <N> | [Reason] | <N> days |
| Month 2 | <N> | <N> | <N> | — | — |
| Month 3 | <N> | <N> | <N> | [Reason] | <N> days |
| **Quarter** | **<N>** | **<N> (X%)** | **<N> (X%)** | | |

**Notable delivery issues:** <List any significant failures or patterns>

---

### Quality Performance

| Month | Units received | Defective | Defect rate | Issues |
|-------|-------------|---------|-----------|--------|
| Month 1 | <N> | <N> | X% | [Description] |
| **Quarter** | **<N>** | **<N>** | **X%** | |

**Quality improvement trend:** <Improving / Stable / Declining>

---

### Issue Log (quarter)

| Issue | Date | Severity | Resolution | Days to resolve |
|-------|------|---------|-----------|----------------|
| [Description] | <date> | High/Med/Low | <Resolution> | <N> days |

---

## Improvement Required

| Gap | Current | Target | Action required | Owner | Due date |
|-----|---------|--------|----------------|-------|---------|
| On-time delivery | 87% | 95% | Root cause analysis + improvement plan | [Supplier] | 30 days |
| Invoice accuracy | 94% | 98% | Process audit at supplier billing dept | [Supplier] | 14 days |

**Escalation:** If targets not met within timeline → performance improvement plan → contract review

---

## QBR Agenda (Tier A suppliers — quarterly)

```
Quarterly Business Review — <Supplier> + Dr. Lewis + [Matt Mathison if Tier A+]
Duration: 60 minutes
Attendees: Supplier executive sponsor + account manager; Dr. Lewis; Matt Mathison (Tier A strategic)

Agenda:
  0:00 — Relationship health check (5 min): Overall sentiment + any relationship issues
  0:05 — Performance review (20 min): Scorecard review; highlight wins + gaps
  0:25 — Issues and resolutions (15 min): Open issues; action items from last QBR
  0:40 — Roadmap / future plans (10 min): Supplier roadmap; MBL upcoming needs
  0:50 — Action items and next steps (10 min): Document; assign owners; next QBR date
```

---

## Performance Rating for Renewal Decision

**Contract renewal recommendation:** ✅ Renew / ⚠️ Renew with conditions / ❌ Consider replacement

If renewing: Negotiation priorities for renewal: [list]
If with conditions: Specific performance improvements required by [date] before renewal
If replacement: Begin re-sourcing using vendor-sourcing-plan; maintain current supplier through transition
```

## Output Contract
- Performance data always evidence-based — ratings without data are opinions; data-backed performance reviews are defensible in disputes
- Trend always shown — a single quarter of poor performance is different from a consistent decline
- Action items always assigned with owners and due dates — a performance review with no required actions doesn't improve anything
- Renewal recommendation always explicit — performance tracking feeds directly into the contract renewal decision
- HITL required: Dr. Lewis conducts reviews; Matt Mathison participates in Tier A QBRs; performance improvement plans approved by Dr. Lewis; supplier termination decision requires Matt Mathison approval; contract renewal >$25K requires Matt Mathison sign-off

## System Dependencies
- **Reads from:** PO/delivery records (QuickBooks), issue log, invoice accuracy data (Bill.com), supplier contracts (SLAs)
- **Writes to:** Performance scorecard (SharePoint/Operations/Procurement/Suppliers); supplier registry rating
- **HITL Required:** Dr. Lewis conducts; Matt Mathison joins Tier A QBRs; termination decision requires Matt Mathison; renewal sign-off per purchase authority matrix

## Test Cases
1. **Golden path:** Q2 performance review for Cardinal Health (Allevio Tier B supplier) → Delivery: 93% on-time (below 95% target; 3 late orders; 2 due to carrier delays — documented); Quality: 1.2% defect rate (within target); Invoice accuracy: 99% (excellent); Relationship: good responsiveness; Overall: 3.8/5 — Good; Action: discuss delivery improvement plan with supplier; not a PIP level issue; renewal recommended; no price increase accepted
2. **Edge case:** Supplier's QBR contact leaves the company mid-quarter and the supplier goes unresponsive → escalate within supplier organization using the escalation path established at onboarding; if unresponsive for >5 business days, send formal written notice; document the gap; this responsiveness issue counts against the quarterly relationship score; for Tier A suppliers, this level of relationship degradation warrants a conversation with their executive sponsor
3. **Adversarial:** Supplier argues that our performance data is wrong ("we delivered on time — check your receiving records") → this is exactly why receiving confirmation must be documented at time of delivery (PO receipt log); if our records show late delivery and the supplier claims otherwise, review the carrier tracking data; the paper trail determines the outcome; if our records are incomplete, we lose the dispute; this is why the 3-way match and delivery confirmation process matters

## Audit Log
Performance reviews retained quarterly. QBR notes and action items retained. Issue log retained. Renewal decisions documented with performance rationale.

## Deprecation
Retire when MBL has a supplier relationship management (SRM) platform with automated performance tracking, scoring, and QBR workflows.
