---
name: sales-sales-playbook
description: "Build and maintain the sales playbook for MBL portfolio companies. Use when the user says 'sales playbook', 'playbook', 'build a playbook', 'sales process', 'how to sell', 'our sales methodology', 'sales training', 'rep training', 'onboarding playbook', 'how we sell', 'document the sales process', 'sales methodology', 'sales approach', 'what is our sales motion', 'sales guide', 'selling guide', 'standard sales process', 'sales SOP', 'define the sales process', 'sales operating procedure', 'sales handbook', or 'sales process documentation'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <build|update|review|train>] [--section <all|prospecting|discovery|proposal|close|retention>]"
---

# Sales Playbook

Build and maintain the sales playbook for MBL portfolio companies — documenting the proven sales process, methodology, tools, and best practices in a single reference document for the sales team. A sales playbook ensures that every rep uses the best-known approach, not the approach they independently developed; it makes onboarding faster, makes coaching more specific, and makes performance more predictable. Dr. Lewis builds and maintains the playbook as the foundational sales operations document.

## When to Use
- Building the initial sales playbook for a portfolio company
- Onboarding a new sales rep (the playbook is their primary reference)
- A pattern of sales underperformance suggests a process gap
- After a major product or market change that invalidates the prior approach
- Annual sales operations review

## Sales Playbook Framework

```
PLAYBOOK STRUCTURE (full playbook = 20-30 pages; distribute as a PDF + digital reference):

  CHAPTER 1: WHO WE ARE AND WHO WE SERVE
    Mission: [Allevio: Reduce healthcare costs for AZ employers while improving care quality]
    Entity overview: Products; services; delivery model; financial model
    ICP (Ideal Customer Profile): Who we sell to; who we don't (see sales-ideal-customer-profile)
    Value proposition: Why customers choose us; what we do that competitors don't
    Competitive landscape: Battle cards for primary competitors (see sales-competitive-intel)
    
  CHAPTER 2: THE SALES PROCESS
    Sales stages (with entry and exit criteria for each stage)
    Stage 1 — Prospect → Qualified Lead:
      Entry criteria: Contact made with a person who meets ICP criteria
      Exit criteria: Confirmed decision-maker engaged; pain confirmed; scheduled for discovery
      Expected time in stage: 3-7 days
    Stage 2 — Discovery:
      Entry criteria: Meeting booked with decision-maker
      Exit criteria: MEDDPICCC documented; qualification decision made; proposal approved to build
      Expected time in stage: 7-14 days
    Stage 3 — Proposal:
      Entry criteria: Qualified deal; Dr. Lewis has reviewed the proposal (>$50K)
      Exit criteria: Proposal submitted and reviewed with the prospect
      Expected time in stage: 5-10 days
    [Continue through all stages to Closed Won / Closed Lost]
    
  CHAPTER 3: PROSPECTING AND OUTREACH
    Target account list: How to build; what sources to use
    Outbound sequence: Full sequence templates by persona (see sales-outbound-sequencer)
    Inbound lead handling: How to respond; timeline standards (call within 1 hour of inbound)
    Referral program: How to generate and track referrals (see sales-referral-program)
    CRM standard: What to log; when to log it; activity logging standards
    
  CHAPTER 4: DISCOVERY
    Discovery call structure (MEDDPICCC framework — see sales-discovery-framework)
    Key questions by persona (HR Director; CFO; Media Buyer)
    Red flags to watch for (disqualification criteria)
    Post-call debrief: What to log; qualification decision process
    
  CHAPTER 5: PROPOSALS AND PRESENTATIONS
    Proposal template: Standard structure; required sections
    Pricing guidelines: Approved rates; discount authority; floor prices
    Approval process: Which proposals need Dr. Lewis review (>$50K)
    Presentation tips: How to deliver the proposal (in person; by deck; by email)
    
  CHAPTER 6: NEGOTIATION AND CLOSING
    Common objections and how to respond (see sales-objection-handler)
    Closing framework: Trial close; timing close; concession close
    Contract process: Who handles the contract; what legal review is required
    Pricing exception process: How to request a discount approval
    
  CHAPTER 7: ACCOUNT MANAGEMENT AND RETENTION
    Onboarding: What happens after signing (Days 1-30)
    QBR cadence: When; who; what to include (see sales-qbr-framework)
    Renewal playbook: Timeline; conversation approach (see sales-renewal-manager)
    Upsell triggers: When and how to introduce expansion opportunities
    At-risk protocol: What to do when a customer shows churn signals
    
  CHAPTER 8: TOOLS AND SYSTEMS
    CRM: GoHighLevel; what to use it for; how to log activities
    Communication: Email standards; response time expectations
    Document storage: SharePoint file structure for proposals; contracts; QBRs
    Commission plan: How commissions are calculated; payment timeline
    
  PLAYBOOK GOVERNANCE:
    The playbook is maintained by Dr. Lewis
    Updates require CEO approval
    All reps sign the playbook acknowledgment on onboarding (they've read it)
    Quarterly check: Does the playbook reflect current process? Update if not
```

## Output Format

```markdown
# Sales Playbook — [Entity]
**Version:** [X.X] | **Owner:** Dr. Lewis | **Last updated:** [Date] | **Approved by:** [CEO Name]

---

## Quick Reference

| Stage | Entry criteria | Exit criteria | Tools | Target days |
|-------|--------------|--------------|-------|------------|
| Prospecting | ICP-fit contact identified | Discovery call scheduled | Outbound sequence; GoHighLevel | 3-7 days |
| Discovery | Discovery call held | MEDDPICCC documented | Discovery framework; CRM debrief | 7-14 days |
| Proposal | Qualified deal | Proposal submitted | Proposal template; pricing model | 5-10 days |
| Negotiation | Prospect reviewing proposal | Contract sent | Legal-contract-reviewer; pricing exception | 7-21 days |
| Closed Won | Contract signed | Implementation starts | Onboarding plan | Day 0 |

---

## Key Resources

| Resource | Location | Owner |
|---------|---------|-------|
| Outbound email templates | SharePoint/Sales/Sequences/ | Dr. Lewis |
| Proposal template | SharePoint/Sales/Proposals/ | Dr. Lewis |
| Battle cards | SharePoint/Sales/CompetitiveIntel/ | Dr. Lewis |
| Commission calculator | SharePoint/Sales/Compensation/ | Dr. Lewis |
| QBR template | SharePoint/Sales/QBRs/ | Dr. Lewis |
| Pricing guidelines | SharePoint/Sales/Pricing/ | Dr. Lewis |
```

## Output Contract
- The playbook must reflect what actually works, not what theoretically should work — a playbook built from best practices research without validation from actual wins is a hypothesis document; Dr. Lewis builds the initial playbook from the best available information and updates it quarterly based on win/loss patterns; if the playbook says "send the proposal within 24 hours of discovery" but every winning deal had a 5-day proposal preparation period, update the playbook to reflect reality
- Every new rep starts with the playbook — the playbook is the primary onboarding tool for new sales reps; a rep who doesn't know the playbook is improvising on every call; Dr. Lewis gives every new rep the playbook on Day 1, schedules a playbook review session in Week 1, and quizzes the rep on key sections in Week 2; the sales-onboarding-plan references the playbook as the core learning resource
- The playbook is not a bureaucratic document — a 100-page playbook that no one reads is worse than no playbook; Dr. Lewis targets a 20-30 page playbook that reps can use as a daily reference; every section has a "quick reference" card that summarizes the key points in bullet form; the full detail is in the appendix for reps who want to go deeper
- HITL required: Dr. Lewis builds and maintains; CEO reviews and approves quarterly updates; all reps sign the acknowledgment on hire; Dr. Lewis does not publish the playbook externally (it contains competitive intelligence and pricing information); quarterly playbook review is scheduled at the same time as the quarterly win/loss analysis; Matt Mathison receives the annual playbook summary as part of the sales operations review

## System Dependencies
- **Reads from:** Sales process best practices (win/loss analysis — sales-win-loss-analyzer); ICP document (sales-ideal-customer-profile); outbound sequences (sales-outbound-sequencer); discovery framework (sales-discovery-framework); proposal templates (sales-proposal-builder); battle cards (sales-competitive-intel); pricing policy (sales-pricing-strategist); commission plan (sales-commission-modeler); QBR framework (sales-qbr-framework); renewal playbook (sales-renewal-manager)
- **Writes to:** Playbook document (SharePoint/Sales/<Company>/Playbook/SalesPlaybook_v[X]_[Date].pdf); playbook acknowledgment form (HR file for each rep); quarterly update change log; onboarding plan reference (sales-onboarding-plan links to the playbook as the primary reference)
- **HITL Required:** Dr. Lewis builds and updates; CEO approves and signs off; all reps acknowledge receipt; Dr. Lewis does not publish without CEO approval; playbook sections with pricing information are particularly sensitive — CEO confirms pricing before distribution; any playbook change that affects commission or pricing requires formal 30-day advance notice to reps if it changes their compensation expectations

## Test Cases
1. **Golden path:** Building the initial Allevio sales playbook → Dr. Lewis spends 2 weeks compiling: Chapter 1 (ICP; value proposition); Chapter 2 (sales process — 7 stages with criteria); Chapter 3 (outbound sequences from sales-outbound-sequencer); Chapter 4 (MEDDPICCC discovery); Chapter 5 (proposal template and pricing); Chapter 6 (objection handler and closing); Chapter 7 (QBR and renewal); Chapter 8 (GoHighLevel; SharePoint structure); CEO reviews and adds 2 items: (1) "Add the broker referral process — 60% of our best deals come through brokers and reps need to know how to work with them"; (2) "Add the implementation handoff process — I've seen deals fall apart in implementation and I want the rep to stay involved for 30 days post-signing"; Both sections added; CEO approves; playbook distributed to the existing rep and stored for new hire onboarding
2. **Edge case:** 6 months after the playbook is published, the win/loss analysis shows that deals closed in the "Negotiation" stage are taking 35 days on average instead of the 7-21 days in the playbook → Dr. Lewis investigates: The delay is at the legal review step (employer groups take 15-25 business days for legal review of the MSA + SOW); playbook update: "Legal review stage: allow 15-25 business days for employer groups; set this expectation at proposal submission; Dr. Lewis provides a redline-ready contract to minimize the review duration"; CEO approves the update; all reps are notified of the change; playbook version 1.1 published
3. **Adversarial:** A new sales rep says they don't use the playbook because "it doesn't apply to how I sell" → Dr. Lewis escalates to the CEO: "This rep has deviated from the playbook process. In the 3 months they've been selling, their win rate is 18% (below the 30% target) and their average discovery call is not being debriefed in CRM. The playbook is not a suggestion — it's our best-known approach. The rep is welcome to suggest improvements; I'll incorporate good ideas. But deviation from the core process without a better outcome to show for it is a performance issue. I'd recommend a coaching conversation: (1) Review the specific process steps the rep is skipping; (2) Ask them to follow the playbook for the next 30 days and track their win rate; (3) If their win rate improves on the playbook process, great; if their deviation produces a higher win rate, update the playbook." CEO delivers the coaching conversation; rep follows the playbook for 30 days; win rate improves to 29%

## Audit Log
All playbook versions retained by entity and date. CEO approval records retained. Rep acknowledgment records retained (who acknowledged; date). Quarterly update records retained (what changed; why). Win/loss data that informed playbook updates retained.

## Deprecation
Retire when each portfolio company has a VP of Sales who owns the playbook — with Dr. Lewis reviewing the playbook annually and Matt Mathison receiving the annual sales operations summary.
