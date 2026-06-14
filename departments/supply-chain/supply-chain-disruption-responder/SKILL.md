---
name: supply-chain-disruption-responder
description: "Respond to supply chain disruptions and outages. Use when the user says 'supply chain disruption', 'supplier failure', 'supply shortage', 'we can't get materials', 'supplier went out of business', 'supply chain emergency', 'logistics disruption', 'port delays', 'supply chain crisis', or 'disruption response'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--severity <P0|P1|P2>] [--type <supplier|logistics|material|geopolitical>]"
---

# Supply Chain Disruption Responder

Respond to supply chain disruptions with a structured framework that contains the immediate impact, establishes alternate supply, communicates to affected stakeholders, and prevents recurrence. Supply chain disruptions are inevitable — the question is how quickly and effectively they're contained. For MBL's portfolio, disruptions at Allevio can affect patient care (highest urgency); disruptions at HIVE can halt well production (high urgency and financial impact).

## Disruption Severity Classification

```
P0 — Critical (respond within 1 hour):
  Allevio: Patient care directly at risk due to supply shortage
  HIVE: Well production halted due to equipment/materials shortage
  MBL: Core business systems unavailable due to vendor failure

P1 — High (respond within 4 hours):
  Allevio: Supply <3 days from depletion; patient care risk within 72h
  HIVE: Production rate reduction >20% due to supply constraint
  MBL: Major operational disruption; revenue impact beginning

P2 — Medium (respond within 24 hours):
  Supply shortage identified; >7 days safety stock remaining
  Logistics delay without immediate operational impact
  Single supplier failure with backup supplier available

P3 — Low (respond within 72 hours):
  Supplier communication disruption (unresponsive, not supplier failure)
  Pricing disruption (cost increase, no supply impact)
  Secondary supplier capacity reduction
```

## Output Format

```markdown
# Supply Chain Disruption Response — <Disruption>
**Date/time detected:** <date time> | **Responder:** Dr. John Lewis
**Entity affected:** <Allevio / HIVE / MBL / Column6>
**Severity:** P0 / P1 / P2 / P3
**Disruption type:** Supplier failure / Logistics / Material shortage / Geopolitical / Natural disaster

---

## Immediate Assessment (complete within 1 hour for P0/P1)

**What happened:**
<One paragraph: what is the disruption, when was it detected, who reported it>

**Impact assessment:**

| Dimension | Impact | Timeframe |
|----------|--------|---------|
| Supply coverage (current stock) | <N> days | Before depletion |
| Patient care / production impact (if P0/P1) | <Description> | Begins <date> |
| Financial impact | $X/day or $X total | Over <N> days |
| Affected operations | <List> | — |

**Root cause (preliminary):**
<Known or suspected cause: supplier bankruptcy, carrier strike, natural disaster, port delay, etc.>

---

## Immediate Containment Actions (first 24 hours)

| Action | Owner | Status | Due by |
|--------|-------|--------|--------|
| Audit current inventory of affected item(s) | Dr. Lewis | ⏳ In progress | +1h |
| Contact disrupted supplier for status | Dr. Lewis | ⏳ | +2h |
| Identify backup / alternative suppliers | Dr. Lewis | ⏳ | +4h |
| Place emergency order with backup supplier (if P0/P1) | Dr. Lewis | ⏳ | +4h |
| Activate conservation protocol (Allevio: reduce non-critical usage) | Allevio ops | ⏳ | +4h |
| Notify Matt Mathison (P0/P1 mandatory; P2 as soon as contained) | Dr. Lewis | ⏳ | +1h |
| Notify affected entity leadership | Dr. Lewis | ⏳ | +2h |

---

## Alternative Supply Options

| Supplier | Item | Available qty | Lead time | Cost premium | Selected? |
|---------|------|--------------|----------|-------------|---------|
| [Backup Supplier A] | [Item] | <N> units | <N> days | +X% | ✅ Selected |
| [Backup Supplier B] | [Item] | <N> units | <N> days | +X% | Standby |
| [Broker / spot market] | [Item] | Available | 24-48h | +30-50% | Emergency only |

**Emergency source selected:** [Backup Supplier A]
**Emergency PO issued:** PO-[entity]-[year]-[number] | **Cost premium:** $X above normal pricing

---

## Stakeholder Communication

### Matt Mathison Notification (P0/P1 — within 1h):
> Subject: [URGENT] Supply Chain P[N] — [Brief description] — [Entity]
>
> Matt,
>
> **Situation:** [1-sentence description of disruption]
> **Impact:** [Patient care / production impact; financial impact per day]
> **Days of supply remaining:** [N] days before depletion
> **Actions taken:** [Emergency order placed with Backup Supplier; ETA N days]
> **Needs from you:** [Decision required / No action needed / Awareness only]
>
> Will provide next update in [2/4/8] hours.
>
> — Dr. Lewis

### Affected Entity Update (P0/P1 — within 2h):
> [Entity leadership]: Supply disruption for [item]. Current stock: [N] days. Emergency order placed; ETA [date]. [Conservation protocol if applicable]. Will update daily. Contact Dr. Lewis with questions.

---

## Recovery Plan

| Milestone | Target date | Owner | Status |
|----------|-----------|-------|--------|
| Emergency supply received | <date> | Dr. Lewis | ⏳ |
| Primary supplier restored OR alternative qualified | <date> | Dr. Lewis | ⏳ |
| Safety stock replenished to standard levels | <date> | Dr. Lewis | ⏳ |
| Disruption fully resolved | <date> | Dr. Lewis | ⏳ |

**Total financial impact:** $X (emergency premium + operational impact)

---

## Post-Disruption Review (within 7 days of resolution)

**Root cause confirmed:** <Final determination>
**What failed:**
- Safety stock was insufficient for the disruption duration
- No qualified backup supplier pre-identified for this category
- Supplier financial distress signals missed (early warning failure)

**Improvements required:**
| Improvement | Owner | Due date |
|-----------|-------|---------|
| Qualify backup supplier for [category] | Dr. Lewis | 30 days |
| Increase safety stock for [item] from X to Y days | Dr. Lewis | Next replenishment cycle |
| Add [supplier] to financial monitoring (early warning) | Dr. Lewis | 14 days |
| Add disruption scenario to supply-chain-risk-monitor | Dr. Lewis | 14 days |

**Supply Chain Risk Register updated:** ✅ / ❌ Pending
```

## Output Contract
- Immediate assessment always within the first hour for P0/P1 — not having an assessment doesn't mean the impact isn't real; act on best available information
- Backup supplier always identified before the first order is placed — if no backup supplier exists, the root cause is inadequate supply chain design (single-source risk)
- Matt Mathison always notified for P0/P1 within 1 hour — never let him hear about a major supply disruption from someone else
- Post-disruption review always required within 7 days — a disruption without a post-mortem repeats
- HITL required: Dr. Lewis leads response; Matt Mathison notified P0/P1 within 1 hour; emergency purchases >$5K require Dr. Lewis approval; Allevio conservation protocol activated by Allevio clinical lead + Dr. Lewis jointly; HIVE production decisions by HIVE GP; financial write-offs from disruption costs require Matt Mathison approval

## System Dependencies
- **Reads from:** Inventory system (current stock levels), supplier registry (backup suppliers), risk register
- **Writes to:** Disruption log (SharePoint/Operations/Supply Chain/Disruptions); risk register update; post-mortem
- **HITL Required:** Dr. Lewis leads; Matt Mathison P0/P1 alert; Allevio clinical lead for conservation protocol; HIVE GP for production decisions; emergency spend >$5K by Dr. Lewis

## Test Cases
1. **Golden path:** P1 disruption — Cardinal Health logistics strike; Allevio has 6 days of supply → Assessed within 1h: 6 days of clinical consumables; strike expected to last 2 weeks; backup supplier McKesson contacted; emergency order placed (6-day lead time; $3,200 premium); conservation protocol activated (reduce elective procedure consumption by 20%); Matt Mathison notified within 45 minutes; Allevio clinical lead updated; emergency supply received day 6 (just in time); full stock restored day 10; post-disruption: qualify additional backup supplier; increase safety stock from 7 to 14 days for critical items
2. **Edge case:** Disruption affects only a non-critical supply item (P3) — plenty of time → treat as P3; no emergency procurement needed; notify affected team; source an alternative at standard process speed; add to risk register if single-sourced; no Matt Mathison notification needed (P3 = awareness in next ops review)
3. **Adversarial:** The disrupted supplier is a sole-source for a critical Allevio item with no alternative → this is a P0 single-source failure; immediate actions: contact any qualified competitor or distributor (even if more expensive); check group purchasing organizations (GPOs) for healthcare that Allevio may be eligible for; in parallel, escalate to Matt Mathison immediately; as a last resort for clinical items, contact the state health department for emergency supply assistance; single-source supply is a design flaw, not an unavoidable situation — post-disruption: mandatory backup supplier qualification

## Audit Log
Disruption log with timeline retained. Emergency purchases documented. Matt Mathison notification timestamp logged. Post-disruption review retained. Risk register updates documented.

## Deprecation
Retire when MBL has a formal supply chain resilience program with automated risk monitoring, pre-qualified backup suppliers for all critical categories, and an emergency response playbook that doesn't require Dr. Lewis to lead every response.
