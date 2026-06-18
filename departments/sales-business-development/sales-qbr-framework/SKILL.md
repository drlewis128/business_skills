---
name: sales-qbr-framework
description: "Build and run Quarterly Business Reviews for MBL portfolio company customers. Use when the user says 'QBR', 'quarterly business review', 'client QBR', 'customer QBR', 'account review', 'quarterly review', 'business review meeting', 'QBR agenda', 'QBR presentation', 'customer review', 'client performance review', 'annual review', 'annual business review', 'ABR', 'QBR prep', 'prepare a QBR', 'QBR deck', 'QBR template', 'customer success review', 'account health review', or 'value delivery review'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--customer <name>] [--quarter <Q1|Q2|Q3|Q4>] [--action <prepare|run|debrief>]"
---

# QBR Framework

Build and run Quarterly Business Reviews for MBL portfolio company customers — delivering structured reviews that demonstrate value, surface issues before they become churn risks, and advance the relationship into renewal and expansion conversations. The QBR is the highest-leverage account management activity: it's where the customer sees the ROI of the relationship, surfaces dissatisfaction in a structured way, and decides whether to renew and expand. A QBR with no data is a sales call; a QBR with data and outcomes is a business conversation.

## When to Use
- Planning a quarterly review for a material customer (Allevio: >$100K ACV; Column6: >$200K ACV)
- 3-4 weeks before the scheduled QBR (preparation)
- Immediately after the QBR (debrief and follow-up)
- Annual review for all customers (even smaller accounts get an annual review)

## QBR Framework

```
QBR STRUCTURE (60-90 minutes):

  PRE-WORK (1-2 weeks before the QBR):
    □ Pull performance data from all relevant systems:
      Allevio: Member count trend; claim ratio trend; PMPM cost history; service utilization
      Column6: Impressions delivered; completion rate (VCR); reach; frequency; CPM performance
      All: Account activity log from CRM; any open issues or outstanding items
    □ Build the QBR deck (template below)
    □ Set the agenda and distribute to the customer contact 1 week before the meeting
    □ Confirm the right stakeholders are in the room (DR. LEWIS + CEO attend for accounts >$250K ACV)
    
  QBR AGENDA:
    Section 1: Performance Review (25-30 min)
      "Here's what we delivered for you this quarter"
      Metrics: Show actual vs. agreed baseline (what the customer was paying/experiencing before)
      Trend: Is performance improving, stable, or declining?
      Highlights: 1-2 specific wins or moments that demonstrated value
      
    Section 2: Issues Review (10-15 min)
      "Here's where we fell short and what we're doing about it"
      Open issues: Any unresolved complaints or service misses; status; resolution date
      This section is where the customer trust is built — transparency about failures is more trust-building
        than silence about them; if the delivery rate on Column6 was 92% (below 95% target), say it;
        show what caused it; show the fix
        
    Section 3: Strategic Discussion (15-20 min)
      "What's changing in your business and how should we adapt?"
      Questions:
        "What are your goals for the next 6 months?"
        "Are there any changes in your team, budget, or priorities we should know about?"
        "What's working well for you? What could work better?"
      This section is for listening, not presenting
      
    Section 4: Looking Ahead (10-15 min)
      "Here's what we're planning for the next quarter"
      Upcoming changes: New features; pricing; service updates (if any)
      Recommendations: Based on what we discussed, here's what we recommend for next quarter
      Renewal / expansion: If the renewal is within 6 months, introduce it here
        "Your contract renews in [Month] — I want to make sure we get ahead of that well in advance"
        
    Section 5: Next Steps (5 min)
      Specific actions with owners and dates (both sides)
      
ENTITY-SPECIFIC QBR CONTENT:
  
  ALLEVIO — Employer Group QBR:
    Key metrics to include:
      □ Member count: Current vs. start of contract; trend
      □ PMPM cost: Allevio PMPM vs. the market/prior carrier PMPM
      □ Claim ratio: Current vs. prior carrier; trend by quarter
      □ Cost savings delivered: (Prior PMPM − Allevio PMPM) × member count × 3 months
      □ Utilization: What services are members using most? Any high-cost trends?
      □ Satisfaction: Any member feedback or HR Director feedback?
    Renewal conversation timing: Introduce at Q3 QBR (6 months before typical January 1 renewal)
    
  COLUMN6 — Agency/Brand QBR:
    Key metrics to include:
      □ Impressions contracted vs. delivered (delivery rate; target >95%)
      □ Completion rate (VCR): Actual vs. industry benchmark
      □ Reach and frequency: Unique households; average exposure
      □ CPM efficiency: CPM paid vs. market benchmark
      □ Campaign performance vs. client's KPIs (if brand lift study or performance attribution exists)
    Repeat business conversation: "What's coming up in the next quarter? Are you planning more CTV?"
    
QBR DEBRIEF — AFTER EVERY QBR:
  Log in CRM within 24 hours:
    □ What did the customer say about performance? (positive / negative)
    □ What open issues were raised?
    □ What were the next steps agreed to?
    □ Renewal signal: Strong / Neutral / At-risk (with reason)
    □ Expansion opportunity: Any signals of wanting more?
```

## Output Format

```markdown
# QBR Deck — [Customer] | [Entity] | Q[X] [YYYY]
**Account Manager:** [Name] | **Customer contact:** [Name, Title] | **Date:** [Date]

---

## Section 1: Performance This Quarter

| Metric | Baseline (before) | Q[X] actual | Trend |
|--------|-----------------|------------|-------|
| Member count | [X] | [X] | ↑ / → / ↓ |
| PMPM (current vs. prior carrier) | $[X] | $[X] | $[X] savings |
| Claim ratio | [X]% | [X]% | ↓ (improving) |
| Cost savings delivered this quarter | — | $[X]K | — |

**Highlight:** [One specific win from this quarter with a number]

---

## Section 2: Issues and Resolution

| Issue | Occurred | Status | Resolution date |
|-------|---------|--------|----------------|
| [Service response delay] | [Month] | Resolved | [Date] |
| [No open issues] | — | — | — |

---

## Section 3: Your Goals — What We Heard

[3-5 bullet points capturing what the customer said their goals and concerns are for the next 6 months]

---

## Section 4: Looking Ahead — Q[X+1] Recommendations

[2-3 specific recommendations based on the performance data and what we heard in Section 3]

**Renewal / expansion:** [If applicable: "Your contract renews in [Month] — let's plan now"]

---

## Next Steps

| Action | Owner | Due |
|--------|-------|-----|
| [Send updated PMPM analysis] | Dr. Lewis | [Date] |
| [Renewal conversation] | CEO + Dr. Lewis | [Date] |
| [Resolve open billing question] | Account manager | [Date] |

---

## QBR Debrief (internal)

**Renewal signal:** Strong / Neutral / At-risk | **Reason:** [Detail]
**Expansion signal:** Yes / No | **Detail:** [If yes, what expansion is the customer considering?]
```

## Output Contract
- Data drives the QBR — a QBR without performance data is a sales call wearing a different name; the customer already knows their experience; the QBR's job is to show the customer their experience in numbers, compare it to the baseline, and make the value of the relationship visible; Dr. Lewis requires that every QBR deck includes the customer's baseline (what they were experiencing before Allevio or before Column6) and the current performance, so the value delivered can be quantified
- The issues section builds more trust than the wins section — a QBR that only talks about wins feels like a sales pitch; a QBR that acknowledges performance gaps, explains what caused them, and shows a specific fix builds more confidence than a perfect performance summary; customers who know that problems will be surfaced and addressed proactively trust the vendor more than customers who only hear good news
- The QBR is where the renewal starts — for Allevio, renewal conversations should begin at the Q3 QBR (September) for contracts renewing January 1; if the renewal is introduced for the first time in October when the contract expires in January, the customer has had no time to evaluate, compare, or negotiate; Dr. Lewis embeds a renewal timeline into the QBR cadence so renewals are never a surprise or a last-minute push
- HITL required: Account manager prepares and leads the QBR; Dr. Lewis attends for accounts >$100K ACV (Allevio) or >$200K ACV (Column6); CEO attends for accounts >$250K ACV; Dr. Lewis debriefs with the CEO after every QBR and updates the renewal/at-risk status in CRM; Matt Mathison is informed of any customer flagged as at-risk after a QBR; Dr. Lewis does not commit the company to new services or pricing changes in a QBR without CEO approval

## System Dependencies
- **Reads from:** QuickBooks (revenue and PMPM history by customer); Allevio AdvancedMD (member count; utilization data); Column6 campaign delivery reports (impressions; VCR; CPM); CRM (GoHighLevel — account activity log; open issues; prior QBR notes); sales-renewal-manager (renewal date and at-risk status); prior QBR notes (SharePoint — what was discussed and agreed to last quarter)
- **Writes to:** QBR deck (SharePoint/Sales/<Company>/QBRs/[Customer]_[Quarter]_[Year]_QBR.pdf); CRM QBR debrief note (within 24 hours — renewal signal; expansion signal; next steps); renewal pipeline update (sales-renewal-manager — is this customer at risk based on the QBR?); Matt Mathison at-risk alert (if applicable); next steps task assignments
- **HITL Required:** Account manager prepares and leads; Dr. Lewis attends for large accounts; CEO attends for accounts >$250K ACV; any commitments made in the QBR (pricing change; service addition; new feature timeline) must be approved by CEO before the QBR; Dr. Lewis does not commit to changes in the QBR meeting; commitments are "I'll look into this and follow up by [date]"; Matt Mathison informed of at-risk signals within 24 hours of the QBR

## Test Cases
1. **Golden path:** Allevio Q3 QBR for Group A (145 employees; $147,900 ACV; renewing January 1) → Dr. Lewis prepares the data: Member count: 145 (stable); PMPM cost: $85 (vs. prior carrier $112 — $27 savings/member); claim ratio: 74% (vs. 86% at contract start — 12% improvement); cost savings delivered this quarter: $27 × 145 × 3 months = $11,745; YTD savings: $35,235; QBR held; HR Director pleased: "Our CFO noticed the savings in the last budget review — this is one of the first benefits decisions that has genuinely paid off"; Issues: 1 (a billing delay in August — resolved); Looking ahead: HR Director mentions the company is hiring 25 employees next quarter; expansion opportunity identified; renewal discussion initiated: "Your contract renews January 1 — let's talk about the renewal terms for 2028 in October"; QBR debrief: renewal signal Strong; expansion signal Yes (+25 members); next step: renewal proposal in early October
2. **Edge case:** Column6 Q2 QBR with Agency B — the campaign delivered 88% of contracted impressions (below 95% target) → Dr. Lewis prepares the QBR and leads with the issue: "Let's start with where we fell short this quarter. Our delivery rate was 88% against a contracted 95% target. The cause: our available inventory in the [specific content category] was tighter than projected in April and May. What we're doing: we've expanded our publisher relationships in that category; I'm committing to 96% delivery for the Q3 campaign. We're also offering a make-good on the 7% shortfall — additional impressions at no charge on the next campaign. I don't want to gloss over this." Agency buyer: "I appreciate you leading with this — that's not what I always hear from vendors." QBR debrief: issue resolved; agency remains; no at-risk flag; Q3 IO confirmed at the same budget
3. **Adversarial:** An Allevio employer group uses the Q4 QBR to announce they're considering switching to a competitor for their January renewal → Dr. Lewis (in the QBR): "I appreciate you telling me directly. Can I ask — is this about price, coverage, performance, or something else? I want to make sure we're addressing the actual issue before you make this decision." Customer: "We got a proposal from [competitor] at $78/PMPM." Dr. Lewis: "I understand. Our $85/PMPM reflects the care management and the data transparency we've delivered — you've seen a $27/PMPM savings vs. your prior carrier and a 12-point claim ratio improvement. I'd like to ask for one week to put together a renewal comparison that shows the full value picture versus $78 with a carrier that may not manage costs as actively. Can we have a follow-up call in 7 days before you make the decision?" Customer agrees. Dr. Lewis alerts the CEO immediately after the QBR; retention strategy developed; follow-up call held; customer renews

## Audit Log
All QBR decks retained by customer, entity, and quarter. CRM debrief notes retained. Renewal and expansion signals tracked quarterly. At-risk escalation records retained. Matt Mathison notifications retained. Commitment and next-step records retained. Any pricing discussions in QBRs retained with follow-up actions.

## Deprecation
Retire when each portfolio company has a dedicated Customer Success Manager who owns QBR preparation and execution — with Dr. Lewis attending for large strategic accounts and Matt Mathison receiving a quarterly portfolio customer health summary.
