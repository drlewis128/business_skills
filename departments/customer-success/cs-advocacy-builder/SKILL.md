---
name: cs-advocacy-builder
description: "Build the customer advocacy and reference program for MBL portfolio companies. Use when the user says 'advocacy', 'customer advocacy', 'reference program', 'customer reference', 'reference customer', 'case study', 'customer case study', 'build a case study', 'customer testimonial', 'testimonial', 'customer story', 'success story', 'customer logo', 'use customer as reference', 'reference call', 'advocate program', 'champions program', 'customer champions', 'peer reference', 'identify references', 'customer speakers', 'voice of customer content', 'promotional customer content', or 'customer proof'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--type <case-study|reference-call|testimonial|logo>] [--action <identify|build|activate|manage>]"
---

# CS Advocacy Builder

Build the customer advocacy and reference program for MBL portfolio companies — identifying which customers are ready to be advocates, building case studies and testimonials that tell the story of their results, and creating a structured reference program that supports new business development. Customer advocacy is the most credible form of marketing; a peer reference from a satisfied customer closes deals that no amount of sales collateral can close.

## When to Use
- NPS Promoters willing to be references (cs-nps-program — Promoter route)
- A customer has an exceptional result that deserves a case study
- A prospect is in the evaluation process and requests a reference call
- Building the annual advocacy program for a portfolio company

## Advocacy Building Framework

```
ADVOCACY PIPELINE:

  Stage 1 — Identify (find the right customers for advocacy):
    Source: NPS Promoters who answered yes to "would you be a reference?" (cs-nps-program)
    Criteria for advocacy:
      □ Relationship strength ≥4/5 (cs-stakeholder-mapper — strong champion; responsive)
      □ Results achieved: at least one quantifiable success metric at or above target
      □ Stable relationship: no escalations in the last 6 months; no active issues
      □ Permission: customer has not said they prefer to keep the relationship private
    Who NOT to ask:
      □ Any account with Yellow or Red health (cs-health-score-tracker)
      □ Any account in the renewal window (within 60 days of renewal date)
      □ Any account with an unresolved escalation
      □ Any account that has explicitly requested confidentiality
      
  Stage 2 — Approach (ask correctly):
    Timing: Approach after a strong QBR or after a positive result is delivered
    Ask Dr. Lewis (or the CEO for >$150K ACV accounts) to make the first ask — not the CS rep
    Opening: "I'm glad things have been going so well. I have a request that I think would
      be valuable for both of us — we have prospects who ask to speak with customers who've
      been through what they're considering. Would you be willing to take an occasional
      reference call from a peer who is evaluating Allevio/Column6/HIVE? We'd always check
      with you first before giving out your name — you would have veto power over every request."
    If yes: enroll in the reference program (Stage 3)
    If "not now": note the reason; revisit in 6 months; do not ask again for 12 months
    
  Stage 3 — Reference Program (manage the relationship):
    Reference call protocol:
      □ CS rep or Dr. Lewis always asks for permission before providing the customer's name
      □ Reference calls are not sales calls — give the reference contact the prospect's questions
        so they can prepare; do NOT coach the reference on what to say
      □ After every reference call: thank the reference customer personally
      □ Reciprocity: keep references healthy — if they're a reference, they get extra attention
        (first to hear new capabilities; invited to pilot programs; Dr. Lewis checks in quarterly)
    Reference fatigue limit: No more than 3 reference calls per customer per year
    Reference rotation: Maintain at least 3 active references per entity — don't exhaust one customer
    
  Stage 4 — Case Study Development (build the story):
    Case study structure:
      □ Customer background (1 paragraph): Who is the customer? What do they do? What was the situation?
      □ The challenge (1 paragraph): What problem were they trying to solve? Why was it urgent?
      □ The solution (1 paragraph): What did Allevio/Column6/HIVE specifically do?
      □ The results (the most important section): Specific, quantified outcomes
          Allevio: "Claim ratio improved from 87% to 76% in 12 months; PMPM savings of $62/member/month;
            annualized cost savings of $89,280 for a 120-member employer group"
          Column6: "VCR 94% across 8 campaigns (vs. 62% industry benchmark for linear); $28 CPM
            vs. $35 market rate; 412 incremental conversions at $47 CPA vs. $68 blended channel CPA"
          HIVE: "Lease bonus of $1,850/acre (22% above county average); monthly royalty payments
            averaging $3,200 since Q3 2025; total compensation to date: $47,400"
      □ Quote (1-2 sentences from the customer in their own words — not ghostwritten)
      □ Next steps (optional): "Building on Year 1 results, [Customer] is expanding their group..."
    Approval process:
      □ Draft written by Dr. Lewis or the CS rep
      □ Customer reviews and approves every word — no publication without explicit written approval
      □ CEO of the portfolio company approves before publication
      □ Use in: website; sales decks; investor materials (with customer approval for each use)
      
  Stage 5 — Activation (use the advocacy effectively):
    Sales process: Give the AE (or Dr. Lewis in sales mode) the reference list — they request
      reference calls from prospects when the prospect is in late-stage evaluation
    Marketing: Case studies published on the entity website; used in sales decks; LinkedIn
    Investor materials: Case studies included in board decks and LP updates (with customer approval)
    Events: Invite strong references to co-present at industry events (SHRM; IAB; etc.)

ENTITY-SPECIFIC ADVOCACY CONTEXT:

  ALLEVIO:
    Primary reference audience: HR Directors and CFOs at companies considering Allevio
    Most compelling story: Claim ratio improvement with dollar savings quantified
    Challenge: HIPAA — any case study must not include member-level health information;
      employer-level aggregate data only; Dr. Lewis reviews all Allevio case studies for HIPAA compliance
    Best reference moment: After 12-month plan anniversary with demonstrated cost savings
    
  COLUMN6:
    Primary reference audience: Agency media buyers and brand marketing directors
    Most compelling story: VCR performance vs. linear; CPA efficiency; attribution methodology
    No HIPAA constraint — CTV advertising data is not PHI
    Best reference moment: After 2+ successful IOs with strong VCR and attribution data
    
  HIVE:
    Primary reference audience: Other mineral rights landowners in the Uinta Basin
    Most compelling story: Per-acre bonus vs. county average; royalty reliability; communication quality
    Constraint: Many landowners prefer privacy (especially regarding financial terms);
      never publish a HIVE case study without explicit landowner permission;
      oral reference (phone call, not written) is more common in the mineral rights world
    Best reference moment: After 6+ months of royalty payments flowing cleanly
```

## Output Format

```markdown
# Advocacy Profile — [Account Name] | [Entity]
**Advocacy type:** Reference call / Case study / Testimonial / Logo use
**Advocacy status:** Identified / Approached / Active / Inactive
**Last contact:** [Date] | **Reference calls this year:** [N] / 3 max

---

## Customer Results (for case study)

| Metric | Before | After | Change |
|--------|--------|-------|--------|
| Claim ratio | 87% | 76% | -11 points |
| PMPM | $680 | $618 | -$62 savings |
| Annual savings | — | $89,280 | — |

---

## Case Study Draft
[Full case study following the 5-section structure above]

---

## Reference Program Status
**Available for reference calls:** Yes / No
**Topics they can speak to:** [Claim ratio improvement; onboarding experience; etc.]
**Restrictions:** [None / No pricing discussion / Preferred contact method: email only]
```

## Output Contract
- Always ask permission before every reference call — even enrolled reference customers must be asked before their name is shared with a prospect; "we have a reference program" does not mean the customer has agreed to every specific call; Dr. Lewis requires the CS rep to email or call the reference customer before providing their contact information: "We have a prospect who is evaluating Allevio — they'd like to talk to a peer who's been through implementation. Would you be willing to take a 20-minute call this week? Totally your call — I'll let them know either way." If no response within 24 hours, do not give out the name
- Case studies are co-owned — the customer must approve every word; Dr. Lewis does not publish a case study with a company name, contact name, or specific data point without written approval from the customer; a draft that looks good to us may contain a data point the customer considers confidential (their PMPM; their claim ratio; their employee count); approval is obtained for each use case (website; deck; investor; press) — approval for one use does not extend to all uses
- Reciprocity is mandatory — a customer who serves as a reference is doing us a favor; Dr. Lewis requires the CS team to acknowledge every reference call with a personal thank-you; references who take 2+ calls per year receive a priority response from Dr. Lewis and are the first to hear about new capabilities or improvements; reference customers should feel that being an advocate is rewarding, not just transactional
- HITL required: Dr. Lewis makes the initial advocacy ask for >$100K ACV accounts; CEO of the portfolio company approves all published case studies; Dr. Lewis reviews all Allevio case studies for HIPAA compliance before they are sent to the customer for approval; Matt Mathison approves use of case studies in investor materials; any reference call involving a prospect >$200K ACV requires Dr. Lewis to brief the reference customer on the prospect's specific questions before the call

## System Dependencies
- **Reads from:** cs-nps-program (Promoters who answered yes to reference willingness); cs-health-score-tracker (account must be Green before advocacy approach); cs-stakeholder-mapper (relationship strength — who is the right person to approach for advocacy?); cs-value-realization (quantified results — the raw material for case studies); cs-qbr-preparer (customer quotes from QBR — potential case study material with permission)
- **Writes to:** Advocacy program roster (SharePoint/CustomerSuccess/<Company>/Advocacy/[Entity]_AdvocacyRoster.pdf); case study documents (SharePoint/Marketing/<Company>/CaseStudies/[Account]_[Year]_CaseStudy.pdf); reference program database (GoHighLevel CRM — advocacy status; reference call count; restrictions); thank-you communications (email to reference customer after each call); cs-kpi-dashboard (number of active references; case studies published; reference calls facilitated)
- **HITL Required:** Dr. Lewis makes the initial ask for >$100K ACV; Dr. Lewis reviews all Allevio case studies for HIPAA compliance; CEO approves all published case studies; Matt Mathison approves investor material use; permission confirmed before every reference call; written customer approval before any case study is published

## Test Cases
1. **Golden path:** Allevio — NPS survey returns a 10 from the HR Director at a 120-member group (Year 1 claim ratio: 87%→76%; savings $89K); HR Director checked "yes" to reference willingness → Dr. Lewis calls: "Thank you for your score — it means a lot to our team. I have a request: we occasionally have HR Directors at other companies who are evaluating Allevio and want to speak to a peer who's been through the process. Would you be willing to take an occasional reference call? Probably 2-3 per year, and we'd always ask you first before sharing your name." HR Director: "Absolutely — I'd be glad to." Dr. Lewis: "Wonderful. I'd also love to write a brief case study about the cost savings you've achieved — just a paragraph or two, no member information, and you'd approve every word before it goes anywhere. Would that be okay?" HR Director agrees; case study drafted; HR Director approves in 3 days (only changes one number for accuracy); published on Allevio website; used in 4 sales decks in Q3; contributes to 2 new customer closes
2. **Edge case:** A CS rep wants to submit a reference customer for a reference call with a $450K ACV prospect — the reference customer is a $42K ACV account that's been a reference 2 times this year → Dr. Lewis: "We're at 2 of 3 max reference calls for this customer. Before we ask a third time, let's check: (1) Is this the right reference for a $450K prospect? A $42K account's experience may not resonate with a much larger buyer. (2) Do we have a better match? Let me look at our reference roster — I want a reference whose profile is closer to the prospect." Dr. Lewis identifies a 180-member group ($165K ACV) with comparable savings story; checks in with that reference customer; reference customer agrees; reference call scheduled; prospect closes
3. **Adversarial:** Sales wants to use a Column6 case study in a board presentation without asking the customer for permission ("they won't mind — they've been great") → Dr. Lewis: "We don't guess on permission — especially for board presentations, which may be shown to investors and LPs we don't control. I'm calling the media buyer today to ask: 'We're preparing a board presentation and we'd like to include your campaign results as a success story. We'd show [specific data points] with your agency name. Would you be comfortable with that?' This takes 5 minutes. If they say yes, we're covered. If they say no or want changes, we've protected the relationship. We never publish customer information without asking — in any context." Call made; customer approves with one modification (prefers "confidential agency" instead of their name); board deck uses the approved version

## Audit Log
All advocacy program records retained by customer, entity, and date. Case study approval records retained (customer and CEO sign-off). Reference call records retained (prospect; date; outcome; thank-you sent). HIPAA compliance review records retained for all Allevio case studies. Investor material approval records retained.

## Deprecation
Retire when each portfolio company has a dedicated marketing function that manages the advocacy program — with Dr. Lewis reviewing the advocacy roster quarterly and the CEO approving all case study publications.
