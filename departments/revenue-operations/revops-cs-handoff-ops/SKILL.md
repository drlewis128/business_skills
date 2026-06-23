---
name: revops-cs-handoff-ops
description: "Manage the sales-to-customer success handoff process for MBL Partners portfolio entities. Use when the user says 'sales to CS handoff', 'account handoff', 'post-sale handoff', 'handoff to CS', 'transition to customer success', 'onboarding handoff', 'AE to CS', 'rep to CS', 'sales CS transition', 'handoff SLA', 'handoff quality', 'handoff process', 'handoff template', 'internal handoff', 'knowledge transfer', 'deal context transfer', 'onboarding kickoff', 'implementation handoff', 'welcome call', 'CS kickoff', 'post-close onboarding', 'how do we hand off a closed deal', 'what happens after the deal closes', 'deal transition', 'new client onboarding start', 'handoff checklist', 'handoff document', or 'passing the account to CS'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6>] [--deal <name>] [--action <execute|audit|review|template>]"
---

# RevOps CS Handoff Ops

Manage the AE-to-CS handoff process for MBL Partners portfolio entities — ensuring every closed deal transitions to customer success with complete context, appropriate urgency, and a structured onboarding kickoff that sets the client relationship up for long-term retention. A handoff done badly destroys the goodwill built during the sale and seeds early churn.

## When to Use
- A deal closes and needs to be handed off to CS
- Auditing handoff quality and SLA compliance
- Building or updating the handoff template for an entity
- Diagnosing early churn linked to poor handoffs

## CS Handoff Framework

```
HANDOFF PRINCIPLES:
  The CS team receives the account, not the deal — the AE knows why the employer signed; the CS lead needs to know who the employer is, what they care about, and what success looks like for them, not just the contract terms
  The CS lead should know the account before the kickoff call — reading the handoff document is not optional; the kickoff call is not the first time CS learns about the client
  The handoff is complete when CS confirms it — AE is not "done" after sending the document; they are done after CS lead confirms receipt, reads the document, and is ready to run the kickoff call
  
HANDOFF DOCUMENT (REQUIRED FOR EVERY CLOSED DEAL):
  Template: SharePoint → [Entity] → CS → Handoff Templates → [Entity]-Handoff-Template.docx
  
  REQUIRED SECTIONS:
    1. Account Overview:
       Employer / Agency name; ACV; contract start date; contract length
       Primary contacts: name / title / email / phone (HR director; CFO; any other decision-maker)
       
    2. Why They Bought (Pain Statement):
       What specific problem did the employer articulate during discovery and proposal?
       What did they expect Allevio to solve in the first 6 months?
       Quote from discovery call if available (captures their voice, not ours)
       
    3. What Was Promised:
       Specific commitments made during the sales process (implementation timeline; features included; support level)
       Anything outside the standard contract or offering → flagged explicitly
       
    4. Stakeholder Context:
       Who is the economic buyer? What do they care about most?
       Who is the day-to-day HR contact? What are their concerns?
       Any internal politics or relationships to be aware of?
       
    5. Risks and Watch Items:
       Anything about this deal that the AE is concerned about
       "They almost churned before signing" or "the CFO was skeptical" or "they have a short internal approval window"
       HIPAA context (Allevio): any sensitivity in how we discuss benefit data with this employer?
       
    6. What Success Looks Like (Client-Defined):
       "The HR director said success is X employees actively using the benefit by month 6"
       This becomes the CS team's first 90-day objective
       
  ALLEVIO-SPECIFIC ADDITIONS:
    Employee headcount at signing
    Benefit effective date (first day employees can access care)
    Whether HIPAA acknowledgment was part of employer contract (should be standard)
    Broker name if broker-referred (broker should be looped into onboarding kickoff)
    
HANDOFF SLA:
  AE completes handoff document: within 48 hours of contract signature
  CS lead acknowledges and reviews document: within 24 hours of receipt
  CS lead schedules kickoff call with employer: within 5 business days of contract signature
  Kickoff call delivered: within 10 business days of contract signature
  
HANDOFF QUALITY SCORING (CS LEAD RATES EACH HANDOFF):
  1 (Poor): key sections missing; CS lead had to call AE for basic account info
  2 (Fair): document complete but shallow; pain statement unclear; contact info incomplete
  3 (Good): complete; good context; CS lead felt prepared for kickoff
  4 (Excellent): comprehensive; included quote from discovery; risks flagged; success defined
  Target: average handoff quality score ≥3.0; any score of 1 → AE rework required
```

## Output Format

```markdown
# CS Handoff Document — [Entity] — [Employer / Agency Name]
**AE:** [Name] | **CS Lead:** [Name] | **Contract date:** [Date] | **Handoff date:** [Date]

---

## 1. Account Overview
[Employer name | ACV | Contract start/end | Contacts]

---

## 2. Why They Bought
[Pain statement in client's words; what they're hoping to solve]

---

## 3. What Was Promised
[Specific commitments; any non-standard terms]

---

## 4. Stakeholder Context
[Economic buyer; day-to-day contact; internal dynamics]

---

## 5. Risks and Watch Items
[Anything CS should know that the contract doesn't capture; HIPAA sensitivities (Allevio)]

---

## 6. Client-Defined Success
[What the client said success looks like at 90 days; 6 months; 1 year]

---

## CS Lead Acknowledgment
- [ ] Document received
- [ ] Document reviewed (prior to kickoff call)
- [ ] Kickoff call scheduled for: [Date/Time]
- [ ] Quality score: [1-4] | Notes: [Optional]
```

## Output Contract
- The handoff document is not a CRM export — a GoHighLevel deal export that contains contract terms and contact information but no pain statement, no context, no risks, and no client-defined success is not a handoff; it is a data dump; Dr. Lewis requires the handoff document to capture information that does not live in any system — the tone of the relationship, the moment of hesitation before signing, the specific fear the CFO expressed about cost — because that is what makes the difference between a CS lead who shows up to the kickoff call knowing the client and one who introduces themselves as if they've never heard of the employer; the handoff document is the institutional memory of the sale
- CS handoff quality is a sales accountability metric — an AE who consistently submits shallow handoff documents (quality score 1-2) is creating downstream churn risk; the CS team's ability to retain the account is directly constrained by the quality of the knowledge they receive; Dr. Lewis tracks handoff quality scores by AE and includes this in the quarterly sales performance review; it is not a separate "nice to have" — it is part of how the AE is evaluated; an AE who closes deals but leaves CS without context is not completing the job
- HITL required: any handoff with Allevio account (all handoffs include HIPAA context check) → CS lead confirms HIPAA training before receiving Allevio account; handoff quality score 1 → AE must rework within 24 hours (entity CEO notified); kickoff call for >$30K ACV → entity CEO attends or reviews recording; broker-referred Allevio accounts → broker included in kickoff loop (with employer permission)

## System Dependencies
- **Reads from:** GoHighLevel (deal record; contact information; deal notes; AE activity log); revops-sales-process-manager (what was the MEDDPICCC context? — AE should summarize in handoff); signed contract (SharePoint → [Entity] → Legal → Contracts → [Year])
- **Writes to:** Handoff document (SharePoint → [Entity] → CS → Handoffs → [Year] → [Employer/Agency]); GoHighLevel (CS lead assignment; kickoff call scheduled; handoff quality score); entity CEO kickoff alert for >$30K ACV; Dr. Lewis handoff quality tracking
- **HITL Required:** Allevio account → CS lead HIPAA training confirmed; quality score 1 → AE rework; >$30K ACV kickoff → entity CEO; broker-referred account → broker included; handoff SLA miss (>48hr) → entity CEO notified

## Test Cases
1. **Golden path:** Allevio AE closes employer at $32K ACV on June 30. Handoff document submitted July 1 (24 hours ✅ within 48hr SLA). Pain statement: "HR director said 'our employees don't go to the doctor because they can't afford the copay — we're losing 8% annual productivity to avoidable sick days.'" CS lead acknowledges July 2, rates document quality 4. Kickoff call scheduled July 8 (within 5 business days ✅). CS lead prepares: reviews Allevio implementation checklist; confirms employer's benefit effective date August 1; confirms broker (AZ Benefits Group) is included in kickoff invitation; entity CEO attends first 15 minutes of kickoff. Kickoff completed July 8; employer onboarding begins; benefit available August 1. First utilization check-in at 30 days (CS lead reviews aggregate utilization — no PHI).
2. **Edge case:** AE leaves the company before the handoff document is completed — contract just signed → Dr. Lewis: "Priority 1: account must not be orphaned. Entity CEO immediately takes personal ownership of this account for 30 days (no gap in relationship). Entity CEO calls the employer contact today to introduce the CS lead and assure continuity. Entity CEO reconstructs the handoff document from GHL notes, the contract, and their own knowledge of the deal (they were aware of it through the pipeline review). CS lead schedules kickoff for next week. If the AE took any notes outside GoHighLevel (personal files, email), entity CEO retrieves them before IT access is revoked. No new employer should feel their rep disappeared."
3. **Adversarial:** AE is annoyed by the handoff quality score system ("I don't have time for this; I just closed the deal") → Dr. Lewis: "I hear you — closing the deal is the achievement and I'm not trying to bury it in admin. The handoff document should take you 30-45 minutes because you know this account better than anyone. The reason the quality score matters: last quarter's average GRR was 89% — below our 91% target. When I traced back the 3 churned accounts, 2 of them had handoff quality scores of 1 or 2. I can't prove the handoff caused the churn, but I can see that CS went into those accounts without the context they needed to set up the relationship correctly. A 30-minute handoff document that saves a $28K annual contract is a good use of time."

## Audit Log
Handoff documents (permanent). Quality score tracking by AE (quarterly review). SLA compliance records. Entity CEO kickoff attendance records (>$30K accounts). CS lead acknowledgment records. Allevio HIPAA training confirmation records. Broker inclusion records for broker-referred accounts.

## Deprecation
Handoff template reviewed annually or when entity offering changes. Quality scoring criteria reviewed when CS team capabilities change. SLA thresholds reviewed when entity close rate or CS capacity changes. Broker loop process reviewed when broker referral program structure changes.
