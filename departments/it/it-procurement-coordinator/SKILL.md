---
name: it-procurement-coordinator
description: "Coordinate IT hardware and software procurement. Use when the user says 'IT procurement', 'buy equipment', 'hardware purchase', 'laptop procurement', 'technology purchase', 'IT purchasing', 'procure software', or 'IT buying process'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <hardware|software|service>] [--budget <amount>] [--urgency <standard|urgent>]"
---

# IT Procurement Coordinator

Coordinate IT hardware and software procurement from requirements through delivery. Ad-hoc purchasing leads to redundant tools, non-standard hardware, and missed discounts. Structured procurement protects the budget and ensures what gets bought actually works in the environment.

## When to Use
- New employee starting (endpoint procurement)
- Annual hardware refresh cycle
- New software or SaaS evaluation and purchase
- Replacement of failed or end-of-life equipment
- Budget planning for next year's IT purchases

## Procurement Principles

1. **Standardize the stack** — 2-3 approved laptop models only; not a free-for-all
2. **Buy ahead of need** — laptops take 2-4 weeks; don't order the day a new hire starts
3. **Volume discounts compound** — consolidate purchases annually rather than buying one-off
4. **Test before deploying** — no production rollout without IT validation first
5. **Total cost of ownership** — include support contracts, renewal costs, and migration costs in the comparison

## Standard Hardware Catalog (MBL)

| Item | Approved Models | Tier | Price Range |
|------|---------------|------|------------|
| Laptop (standard) | MacBook Air M2/M3 (Mac users), Dell XPS 13 (Windows users) | All staff | $1,200-$1,800 |
| Laptop (power user) | MacBook Pro 14" M3 Pro, Dell XPS 15 | Engineering, design, exec | $2,000-$3,000 |
| Monitor | LG 27" 4K IPS or Dell 27" 4K | All staff | $400-$700 |
| Peripherals | Logitech MX Keys + MX Master 3 (keyboard/mouse) | Standard | $150-$200 |
| Headset | Jabra Evolve2 55 or Bose 700 | Remote staff | $200-$400 |

## Output Format

```markdown
# IT Procurement Request — <Description>
**Entity:** <MBL entity> | **Requestor:** <name> | **Date:** <date>
**Type:** Hardware / Software / Service | **Budget:** $<N>

---

## Request Details

| Item | Quantity | Specification | Estimated Cost | Urgency |
|------|---------|--------------|--------------|---------|
| MacBook Pro 14" M3 Pro (18GB RAM, 512GB) | 2 | New hire (Q3) × 2 | $3,800 total | Standard |
| LG 27" 4K monitors | 2 | Desk setup | $900 total | Standard |
| Jabra Evolve2 55 | 2 | Remote headset | $700 total | Standard |
| **Total** | | | **$5,400** | |

---

## Approval Status

| Approver | Amount Threshold | Status |
|---------|---------------|--------|
| IT Manager | < $5,000 | Pending |
| Dr. Lewis | $5,000 - $25,000 | Required — this request |
| Finance | > $25,000 | Not required |

---

## Vendor Selection

| Option | Vendor | Unit Cost | Total | Delivery | Support | Recommended? |
|--------|--------|---------|-------|---------|---------|------------|
| Apple Business (direct) | Apple | $1,899 | $3,798 | 5-7 days | AppleCare+ available | ✅ Recommended |
| Amazon Business | Amazon | $1,849 | $3,698 | 3-5 days | No business support | Secondary |
| CDW | CDW | $1,920 | $3,840 | 3-5 days | Business account + support | Also good |

**Recommendation:** Apple Business direct — same-day business support, volume pricing, AppleCare+ bundled for $249/device

---

## Procurement Timeline

| Step | Target Date | Status |
|------|------------|--------|
| Request submitted | <date> | ✅ |
| IT Manager approval | <date + 1 day> | Pending |
| Dr. Lewis approval | <date + 2 days> | Pending |
| Order placed | <date + 3 days> | — |
| Delivery expected | <date + 10-14 days> | — |
| Device imaged and ready | <date + 16 days> | — |
| Delivered to employee | <start date> | — |

---

## Receiving and Imaging Checklist

- [ ] Order delivered and verified against PO
- [ ] Serial numbers recorded in asset register
- [ ] Device imaged with standard build
- [ ] MDM enrolled (Jamf / Intune)
- [ ] Security configured (encryption, auto-lock, endpoint protection)
- [ ] Ready for employee — tested and verified
```

## Output Contract
- Every procurement request has a named approver and threshold — no purchases without approval path
- Vendor comparison always includes delivery timeline and support quality — lowest price is not always best value
- Timeline always planned end-to-end — "delivery in 2 weeks" means "order must be placed 2 weeks before the start date"
- HITL required: IT Manager approves < $5K; Dr. Lewis approves $5-25K; Finance approves > $25K

## System Dependencies
- **Reads from:** Asset inventory (what do we have?), headcount plan (what do we need?), vendor price lists (provided)
- **Writes to:** Asset inventory (new devices added after delivery)
- **HITL Required:** IT Manager approves all hardware purchases; Dr. Lewis approves purchases $5-25K; Finance approves > $25K; any software with ongoing cost > $10K/year requires IT Manager + Finance

## Test Cases
1. **Golden path:** 2 new sales hires starting in 4 weeks → standard laptop (MacBook Air M2) + monitor + peripherals, Apple Business direct, $4,200 total, IT Manager approval, ordered 3 weeks before start date, imaged and ready Day -2
2. **Edge case:** Urgent hire starting in 5 days with no available spare laptops → evaluate local pickup (Apple Store business account), expedited shipping from CDW, or temporary loaner laptop from IT stock; document as an exception to the lead time standard
3. **Adversarial:** Employee requests a non-standard laptop model not on the approved list ("I prefer [X brand]") → explains the standard catalog rationale (support, imaging, bulk pricing, MDM compatibility), offers the closest approved equivalent; escalates to IT Manager if employee insists

## Audit Log
Procurement requests retained with approver, vendor, cost, and delivery date. Asset register updated upon delivery.

## Deprecation
Retire when entity deploys a procurement platform or ITSM with integrated purchase order management, catalog, and approval workflows.
