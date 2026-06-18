---
name: sales-contract-negotiator
description: "Negotiate commercial contracts and deal terms for MBL portfolio company sales. Use when the user says 'negotiate the contract', 'contract negotiation', 'the customer wants to change the terms', 'redline', 'contract markup', 'MSA negotiation', 'SOW negotiation', 'IO negotiation', 'terms negotiation', 'pricing negotiation', 'payment terms negotiation', 'they want net 60', 'liability cap', 'indemnification', 'contract terms', 'commercial terms', 'negotiate a deal', 'the customer pushed back on terms', 'they want to add a clause', 'removing a clause', 'warranty', 'SLA negotiation', 'contract dispute', or 'deal terms'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--deal <deal name>] [--issue <payment-terms|liability|term-length|pricing|other>] [--action <prepare|respond|escalate>]"
---

# Sales Contract Negotiator

Navigate commercial contract negotiations for MBL portfolio company sales — managing redlines, protecting key terms, and knowing when to escalate to legal counsel. Commercial negotiation is where deals are won, lost, or structured poorly for years; a rep who gives away payment terms in the first redline round creates a cash flow problem; a rep who panics at a liability cap redline escalates what should be a standard counter.

## When to Use
- A prospect returns a redlined MSA or SOW
- A prospect requests non-standard payment terms
- A prospect wants to change the term length or auto-renewal clause
- A deal has stalled in the contract review stage

## Contract Negotiation Framework

```
COMMERCIAL TERM HIERARCHY — HOW HARD TO HOLD:

  HOLD FIRM (never concede without CEO + Dr. Lewis + outside counsel):
    Payment terms: Allevio standard = Net 15 PMPM; Column6 = Net 30 post-IO signing
      Why: Cash flow is essential; Net 60+ creates AR risk and working capital strain
      Counter: "Our standard terms are Net 15. We can discuss Net 30 for the first 3 months
        as a transition, but not beyond that."
    Termination for convenience: Standard = 60 days written notice minimum
      Why: Without a minimum notice period, a customer can leave immediately after implementation
      Counter: If they want 30 days: "We can do 30 days notice but we'll need to prorate the
        implementation cost and remove it from the contract discount structure."
    Governing law: Arizona law (Allevio) or Delaware/New York (Column6)
      Why: We litigate in familiar jurisdictions
    Auto-renewal clause: Standard = renews unless notice given 60 days before term end
      Why: Protects recurring revenue; matches the customer's open enrollment process
      Counter: "The 60-day notice window matches your open enrollment process. Removing it
        means you'd need to actively renew each year — which increases your administrative burden."
      
  STANDARD NEGOTIATION SPACE (Dr. Lewis + CEO review, can move):
    Term length: Standard 12 months; can extend to 24-36 months with a discount incentive
      Benefit of longer term: Locks in revenue; customer can't churn mid-term
      How to incentivize: "If you commit to 24 months, I can offer you a 3% discount on the PMPM"
    Indemnification scope: Standard = each party indemnifies for their own negligence
      Can negotiate: Cap the mutual indemnification at total contract value (standard PE practice)
      Cannot do: Unlimited indemnification or one-sided indemnification favoring the customer
    Limitation of liability cap: Standard = 12 months of fees paid
      Can negotiate: Up to 24 months of fees for a large, strategic account
      Cannot do: Uncapped liability without CEO + outside counsel review
    HIPAA BAA (Allevio): Standard = attached as Exhibit to the MSA
      No negotiation on HIPAA BAA content — use the standard form; significant changes require
      outside healthcare counsel review
      
  FREELY NEGOTIABLE (rep can decide without escalation):
    Invoice frequency: Monthly (standard); quarterly (if customer requests and has good credit)
    Electronic vs. paper invoicing: Accommodate the customer's preference
    Minor SLA language (response times for non-critical issues): Can adjust within reason
    Minor notice provision formats: Physical address; email address; specific contact name

NEGOTIATION PROCESS:
  Step 1: Rep receives the redline → Rep reviews against this framework immediately
  Step 2: Rep classifies each redlined term: Hold Firm / Negotiation Space / Freely Negotiable
  Step 3: Rep sends hold firm items to Dr. Lewis for review before responding
  Step 4: Dr. Lewis reviews; approves the counter; legal counsel consulted for complex redlines
  Step 5: Rep sends the counter-redline with the approved response
  Step 6: Any term in "Hold Firm" that the customer won't concede → CEO decision
  
  Timeline target: Respond to any redline within 3 business days
  Customer's legal review: Expect 10-25 business days for the customer's legal team to review
    Do not panic or discount if they take 3 weeks — it's normal; set the expectation upfront
  
  KEY NEGOTIATION PRINCIPLE:
    Trade, don't concede: Never give something without getting something
    "We can move to Net 30 if you commit to a 24-month term."
    "We can extend the termination notice to 30 days if we remove the termination for convenience
      clause entirely." (Only if you're confident in the relationship)
    "We can lower the liability cap if you'll sign this week instead of after the holiday."
```

## Output Format

```markdown
# Contract Negotiation Summary — [Deal Name] | [Entity]
**Prepared by:** Dr. Lewis | **Date:** [Date] | **Deal value:** $[X]K ACV
**Customer counsel:** [Firm name / In-house] | **Governing document:** [MSA v[X] / IO / SOW]

---

## Redline Analysis

| Term | Customer's position | Our position | Classification | Dr. Lewis recommendation |
|------|-------------------|-------------|---------------|------------------------|
| Payment terms | Net 45 | Net 15 | Hold Firm | Counter at Net 30 first 90 days; Net 15 thereafter |
| Term length | 12 months; no auto-renewal | 12 months with 60-day auto-renewal | Negotiation Space | Offer 24-month term with 3% discount to get auto-renewal |
| Liability cap | Uncapped | 12 months of fees | Hold Firm | Escalate to CEO; outside counsel review if customer insists |

---

## Counter-Offer Package

**Recommended counter:** [Summarize the full counter-offer as a package]
**Rationale:** [Why this counter protects the company while giving the customer something]
**Approval required:** [Dr. Lewis only / CEO + Dr. Lewis / CEO + Dr. Lewis + outside counsel]

---

## Escalation Status

**Terms requiring CEO decision:** [List if any]
**Outside counsel needed:** [Yes / No — specific issue]
**Timeline to respond:** [Target: within 3 business days of receiving the redline]
```

## Output Contract
- Protect payment terms as a cash flow imperative — Net 15 (Allevio) and Net 30 (Column6) are not arbitrary preferences; they are the cash flow requirements of the business at each entity's scale; a customer on Net 60 creates a 45-day working capital gap; Dr. Lewis holds Net 15 for Allevio firmly; the only approved modification is "Net 30 for the first 90 days as a customer transitions from their prior system"; this must be approved by the CEO and Dr. Lewis before it is offered in a negotiation
- Trade every concession for something of value — the goal is not to minimize concessions but to ensure that every concession gets something in return; a customer who asks for Net 30 and gets Net 30 with no counter has learned that negotiating works; a customer who gets Net 30 in exchange for a 24-month term has given the company something valuable (term protection) in exchange; Dr. Lewis trains reps that "yes, and..." is the negotiating framework ("Yes, we can do that, and what we need in return is...")
- Classify before responding — a rep who immediately concedes on a Hold Firm term creates a problem that is hard to walk back; a rep who escalates a Freely Negotiable term wastes Dr. Lewis's and the CEO's time; Dr. Lewis requires that every redline be classified against the hierarchy before the rep responds to anything; the classification takes 15-30 minutes and prevents both under- and over-escalation
- HITL required: Rep receives the redline and classifies it; Dr. Lewis reviews Hold Firm items before any response; CEO makes the final call on any Hold Firm item that the customer won't accept; outside counsel (legal-contract-reviewer) is consulted for any term that is outside these parameters or involves unusual risk (uncapped liability; IP ownership; exclusivity); Matt Mathison informed if a contract negotiation is blocking a deal >$250K; Dr. Lewis does not authorize below-Hold Firm concessions; the CEO is the final authority on all Hold Firm terms

## System Dependencies
- **Reads from:** Standard MSA / IO / SOW templates (SharePoint/Legal/<Company>/Templates/); legal-contract-reviewer (contract review framework — what are the legal risks of accepting specific terms?); sales-pricing-strategist (pricing terms — floor prices; discount authority); sales-commission-modeler (how does term length affect commission calculation?); CRM deal record (GoHighLevel — deal value; customer profile; prior negotiations)
- **Writes to:** Contract redline (SharePoint/Sales/<Company>/Contracts/[Deal]_Redline_v[X]_[Date].docx); CEO negotiation decision records (SharePoint/Legal/<Company>/ContractApprovals/); outside counsel engagement (legal-contract-reviewer — for complex or unusual terms); commission plan (if deal terms affect commission timing or amount); CRM contract stage (GoHighLevel — contract sent; under review; signed)
- **HITL Required:** Rep classifies and sends Hold Firm items to Dr. Lewis; Dr. Lewis reviews and approves the counter; CEO decides on items the customer won't accept; outside counsel engaged for unusual risk; Matt Mathison informed of negotiations blocking deals >$250K; Dr. Lewis does not modify a Hold Firm term without CEO approval; reps do not respond to contract redlines without Dr. Lewis review of the Hold Firm terms; Dr. Lewis does not engage outside counsel without CEO authorization (cost control)

## Test Cases
1. **Golden path:** Allevio MSA redline from a 175-employee employer group → Customer's redline includes: (1) Payment terms changed from Net 15 to Net 45; (2) Termination for convenience reduced from 60 days to 14 days notice; (3) HIPAA BAA — added a data breach notification requirement of 24 hours instead of 72 hours; Dr. Lewis classifies: (1) Net 45: Hold Firm — counter at "Net 30 for first 90 days; Net 15 thereafter, with the option to pay quarterly in advance at a 1% discount"; (2) 14-day termination: Hold Firm — counter at "60 days notice remains; if you need more flexibility we can discuss an early termination fee structure instead"; (3) HIPAA BAA 24-hour notification: Escalate to outside healthcare counsel — 24 hours is aggressive vs. the 72-hour HIPAA standard; counsel review required before we respond; CEO approves the counter framework; rep sends the counter within 3 business days; customer accepts (1) and (2); outside counsel reviews (3) and approves a compromise: 48-hour notification for major breaches; 72 hours for standard; deal closes

2. **Edge case:** Column6 receives an IO from a major agency with a clause requiring Column6 to guarantee "brand-safe" placements or face a 50% media credit → Dr. Lewis: "This 'brand-safe guarantee' clause is unusual and potentially significant. A 50% credit on a $300K IO is $150K of exposure that we didn't budget for. Our sellers.json and IAB compliance give us strong brand safety signals but we can't guarantee zero placement on every problematic page in a programmatic environment — that's not how programmatic works. I recommend: (1) Seek outside counsel on the legal exposure ($150K credit risk is material); (2) Counter with: 'We implement brand safety controls through IAS/DoubleVerify and can guarantee <1% brand safety incidents; for verified incidents above that threshold we'll provide make-good impressions rather than cash credits'; (3) CEO must approve any guarantee language before we sign. This is not a hold-firm/give-in situation — it's a risk-management situation." CEO + outside counsel consulted; counter proposed; agency accepts the make-good structure

3. **Adversarial:** A rep, under pressure to close before quarter end, verbally agrees to Net 60 payment terms on a $180K ACV Allevio deal without Dr. Lewis's approval → Dr. Lewis to CEO: "The rep verbally agreed to Net 60 without authorization. This is a Hold Firm term — Net 60 on a $180K deal means we could be carrying a $90K+ AR balance for months. The rep exceeded their authority. Immediate actions: (1) I'll contact the customer directly (with the rep present) to clarify that our standard terms are Net 15 and that the rep's verbal agreement was not authorized — this needs to be handled carefully so we don't lose the deal; (2) Coaching conversation with the rep: this is a serious policy violation; (3) If the customer insists on Net 60 and won't budge, CEO decides whether the deal is worth accepting on those terms. I recommend a counter of Net 30 as a compromise rather than honoring Net 60." CEO approves the approach; customer accepts Net 30; rep receives a formal coaching note; policy is reinforced

## Audit Log
All contract redlines retained by entity, deal, and version date. Dr. Lewis review records retained. CEO decision records retained for all Hold Firm escalations. Outside counsel engagement records retained. Commission impact records (if term length or payment terms affect commission calculation). Customer acknowledgment of final signed terms retained.

## Deprecation
Retire when each portfolio company has an in-house General Counsel or Commercial Counsel who manages contract negotiations — with Dr. Lewis reviewing material deal terms and outside counsel engaged for complex negotiations.
