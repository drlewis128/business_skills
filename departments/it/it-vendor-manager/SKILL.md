---
name: it-vendor-manager
description: "Manage IT vendor relationships, contracts, and performance. Use when the user says 'IT vendor', 'vendor management', 'technology vendor', 'vendor performance', 'vendor contract', 'vendor renewal', 'vendor scorecard', or 'managing our tech vendors'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--vendor <name>] [--action <review|scorecard|renewal|audit>]"
---

# IT Vendor Manager

Manage IT vendor relationships, contracts, and performance. Vendors that aren't actively managed deliver less and charge more over time. This skill tracks contracts, enforces SLAs, runs performance reviews, and prepares for renewals before they auto-renew at last year's price.

## When to Use
- Quarterly vendor performance review
- Contract renewal approaching (> 90 days out)
- Vendor failing to meet SLAs
- Adding or evaluating a new vendor
- Annual IT vendor audit (who are we paying and why?)

## Vendor Categories

| Category | Examples |
|---------|---------|
| **Cloud infrastructure** | AWS, Azure, GCP |
| **SaaS productivity** | Microsoft 365, Monday.com, Slack |
| **Security** | CrowdStrike, Palo Alto, KnowBe4 |
| **AI / Automation** | Krista.ai, OpenAI, Anthropic |
| **Managed services** | MSP, helpdesk, network monitoring |
| **Telecom / Connectivity** | ISP, phone system, cellular |
| **Hardware** | Dell, Apple, HP (for enterprise agreements) |

## Vendor Scorecard Dimensions

| Dimension | Weight | Measure |
|---------|--------|---------|
| **SLA compliance** | 30% | Uptime, response time, resolution time vs. contracted |
| **Support quality** | 20% | Issue resolution quality, support rep responsiveness |
| **Product quality** | 20% | Reliability, bugs, feature delivery against roadmap |
| **Relationship** | 15% | Account management responsiveness, escalation paths |
| **Value for cost** | 15% | Cost vs. alternatives; cost per user vs. benchmark |

## Output Format

```markdown
# IT Vendor Management Report — <Entity>
**Date:** <date> | **Vendors tracked:** <N>

---

## Vendor Register

| Vendor | Category | Annual Cost | Contract End | Auto-Renew? | Primary Contact | IT Owner |
|--------|---------|------------|------------|-----------|----------------|---------|
| Microsoft | SaaS - M365 | $<N> | <date> | Yes | <name> | IT Manager |
| Krista.ai | AI Orchestration | $<N> | <date> | No | <name> | Dr. Lewis |
| AWS | Cloud | $<N>/mo | Month-to-month | N/A | Enterprise support | IT Engineer |
| [MSP name] | Managed Services | $<N>/mo | <date> | Yes | <name> | IT Manager |

---

## Vendor Scorecard — Q<N> <Year>

### [Vendor Name] — Score: <N>/100

| Dimension | Score (1-5) | Weight | Weighted Score | Notes |
|---------|-----------|--------|--------------|-------|
| SLA compliance | 4 | 30% | 1.2 | 99.2% uptime vs. 99.9% SLA — 2 incidents |
| Support quality | 3 | 20% | 0.6 | Avg 6-hour response vs. 4-hour SLA |
| Product quality | 4 | 20% | 0.8 | 2 bugs resolved in quarter |
| Relationship | 5 | 15% | 0.75 | QBR conducted; account manager responsive |
| Value for cost | 3 | 15% | 0.45 | 15% above market benchmark |
| **Total** | | 100% | **3.8/5** | Rating: Satisfactory |

### Overall Vendor Health

| Vendor | Score | Trend | Status |
|--------|-------|-------|--------|
| Microsoft | 4.2/5 | ↑ | Strong |
| Krista.ai | 4.5/5 | ↑ | Strong |
| [MSP] | 3.1/5 | ↓ | Watch — SLA breaches |

---

## Renewal Calendar

| Vendor | Annual Cost | Renewal Date | Days Out | Action |
|--------|-----------|------------|---------|--------|
| [Vendor] | $<N> | <date> | 30 days | Negotiate NOW — no auto-renew |
| [Vendor] | $<N> | <date> | 60 days | Prepare alternatives before renewal |
| [Vendor] | $<N> | <date> | 90 days | Initiate vendor review |

---

## Vendor Issues / Escalations

| Vendor | Issue | Date | Status | Resolution |
|--------|-------|------|--------|-----------|
| [Vendor] | SLA breach — 4-hour outage | <date> | Resolved | Root cause provided; credit issued |
| [Vendor] | 3 support tickets unresolved > 5 days | <date> | Open | Escalated to account manager |

---

## Recommendations

| Action | Vendor | Priority | Reason |
|--------|--------|---------|--------|
| Renegotiate before auto-renewal | [Vendor] | High | 15% above market; leverage is departure threat |
| Consider replacing | [MSP] | Medium | SLA compliance 78% — below 90% threshold |
| Lock in multi-year discount | [Vendor] | Medium | Strong performance + 20% multi-year discount available |
```

## Output Contract
- Contracts with auto-renewal always flagged at 90-day mark — no blind auto-renewals
- Vendor scorecard always completed before any renewal negotiation
- Vendors consistently below 80% weighted score must be reviewed for replacement
- HITL required: IT Manager owns vendor performance; Dr. Lewis approves any vendor contract > $25K/year; Matt Mathison reviewed for portfolio-wide vendor agreements

## System Dependencies
- **Reads from:** Vendor contract register, SLA reports, support ticket data, invoice history (provided)
- **Writes to:** Nothing (vendor report for HITL review and IT action)
- **HITL Required:** IT Manager approves vendor scorecard actions; Dr. Lewis approves new vendor contracts > $25K or termination of a critical vendor; Finance approves multi-year commitments

## Test Cases
1. **Golden path:** Q2 vendor review, 8 vendors tracked → Microsoft 4.2/5 (strong), MSP 3.1/5 (SLA concern), 2 renewals in 60 days identified, renegotiation prep for one, replacement evaluation for MSP
2. **Edge case:** Vendor has no SLA data available → scores conservatively (3/5 for SLA dimension), adds tracking requirement to next contract renewal, proactively requests SLA reporting from vendor
3. **Adversarial:** Vendor auto-renewed at 15% higher price without notice → documents breach of notification requirement in contract, requests contract adjustment back to prior-year pricing, treats as a vendor relationship issue to resolve before next cycle

## Audit Log
Vendor scorecards retained by entity and quarter. Contract renewals, negotiations, and outcomes documented. Vendor changes (added, terminated) recorded.

## Deprecation
Retire when entity uses a vendor management platform or procurement system with contract tracking, SLA monitoring, and renewal alerts.
