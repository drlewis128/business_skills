---
name: cs-handoff-receiver
description: "Receive and process the sales-to-CS handoff for new MBL portfolio company customers. Use when the user says 'handoff', 'sales handoff', 'sales to CS handoff', 'customer handoff', 'account handoff', 'hand off the account', 'CS handoff', 'transition to CS', 'transfer to CS', 'sales is handing off', 'new account from sales', 'just closed a deal', 'deal just closed', 'new customer just signed', 'new deal signed', 'contract signed', 'new contract', 'just signed a customer', 'deal closed', 'account transition', 'post-close handoff', 'post-sales handoff', or 'CS is receiving a new account'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--ae <account executive name>] [--action <receive|validate|initiate|report>]"
---

# CS Handoff Receiver

Receive and process the sales-to-CS handoff for new MBL portfolio company customers — ensuring that everything the sales team learned about the customer during the discovery and close process is transferred to the CS team before the first kickoff call, so the CS team arrives with context rather than starting from scratch. The handoff is the seam between the sales experience and the CS experience; a clean handoff makes the customer feel known; a broken handoff makes them feel they have to re-explain themselves, which erodes the trust built during the sale.

## When to Use
- Immediately when a new deal is signed (trigger: contract countersigned)
- A deal is about to close (pre-close: CS receives the handoff brief before the ink is dry)
- Reviewing whether a handoff was complete (post-onboarding audit)

## Handoff Framework

```
HANDOFF TRIGGER:
  When: Within 24 hours of contract signature (not when onboarding starts — when the deal closes)
  Who initiates: Sales rep (or Dr. Lewis, who owns sales for MBL portfolio companies)
  Who receives: CS rep assigned to the account (or Dr. Lewis for >$100K ACV)
  How: Handoff brief document (see Output Format) + 30-minute internal handoff call
  
  The 30-minute handoff call is mandatory for accounts >$50K ACV:
    Sales rep walks the CS rep through the handoff brief
    CS rep asks questions: "What does success look like for this customer in their own words?"
    No handoff by email only — verbal transfer ensures understanding

HANDOFF BRIEF CONTENT (sales rep provides; CS rep validates):

  1. CUSTOMER PROFILE:
     Company name; legal entity name; address (for HIPAA BAA and contract records)
     Industry; size (employee count for Allevio; agency revenue for Column6; acreage for HIVE)
     Primary contact: name; title; email; direct phone
     Secondary contact (backup if primary is unavailable): name; title
     Executive sponsor (if known): name; title
     How they heard about us: referral (from whom?); event; inbound; outreach
     
  2. WHY THEY SIGNED:
     What was the primary pain? (in the customer's own words — direct quote if possible)
     What alternatives did they evaluate? (did they consider a competitor? which one? why us?)
     What was the deciding factor? (price? trust? referral? capability?)
     What risks did they express during the sale? (any hesitation? any "we're worried about..."?)
     
  3. CONTRACT TERMS:
     ACV: $[X]
     Contract start date and go-live target date
     Contract length: 1-year / 2-year / 3-year
     Renewal date: [Date] — flag in renewal calendar (cs-renewal-coordinator)
     Payment terms: Net 30 / Net 15 / Upfront
     Special terms or commitments made during the sale (anything verbal or written beyond the standard contract)
     PMPM rate (Allevio); IO CPM and targeting parameters (Column6); bonus per acre and royalty % (HIVE)
     
  4. RELATIONSHIP DYNAMICS:
     Relationship quality at close: Warm / Neutral / Transactional
     Champion strength: Strong (they fought for us internally) / Moderate / Weak (we convinced them; internal skeptics remain)
     Internal champion's manager: Name; title; relationship to the buyer
     Known internal skeptics: Anyone in the customer's organization who was against the purchase?
     Any promises made by sales rep beyond the contract terms?
     
  5. ENTITY-SPECIFIC CONTEXT:
     Allevio:
       Group census file timing: When can the HR Director deliver the employee census?
       Current benefits carrier/broker: Switching from? Transition timeline?
       Open enrollment date: When do employees enroll? (drives the go-live deadline)
       Number of members expected: initial enrollment count
       Any high-cost known claims? (if disclosed during the sale — flag for clinical team)
     Column6:
       First IO details: Which brand? Which campaign? Target DMA? Start date?
       Creative assets: When will they be ready? (drives the go-live timeline)
       Attribution setup: Is pixel tracking needed? (requires technical setup before campaign)
       Reporting cadence: Weekly pacing? Monthly performance? What format does the buyer prefer?
     HIVE:
       Parcel details: APN (Assessor Parcel Number); county; acreage; mineral rights description
       Landowner's legal entity: Trust? LLC? Individual? (affects how the lease is executed)
       Title status: Any known title issues? Heirs? Co-owners?
       Preferred contact method: Phone or email? (landowners vary significantly)
       
  6. RED FLAGS FROM THE SALE:
     Any negotiation issues that created friction? (they pushed hard on price; they wanted a different term)
     Any unrealistic expectations set during the sale that CS needs to actively manage?
     Any commitments the sales rep made that exceeded standard terms? (CS needs to know immediately)
     
HANDOFF VALIDATION CHECKLIST (CS rep confirms receipt):
  □ Handoff brief received and complete (all 6 sections filled in)
  □ 30-minute handoff call completed (>$50K ACV)
  □ Renewal date added to renewal calendar (cs-renewal-coordinator)
  □ Account created in GoHighLevel CRM with all contact fields populated
  □ Success plan building initiated (cs-success-plan-builder — schedule within 30 days of go-live)
  □ Onboarding plan initiated (cs-onboarding-coordinator — kickoff call within 5 business days)
  □ Health score initialized (cs-health-score-tracker — new account starts at Green until signals emerge)
  □ HIPAA BAA template prepared (Allevio — sent to HR Director as first action after kickoff)
  □ Any red flags from the sale flagged to Dr. Lewis

INCOMPLETE HANDOFF PROTOCOL:
  If sales rep provides an incomplete handoff brief (missing 2+ sections):
    CS rep notifies Dr. Lewis immediately
    Dr. Lewis follows up with the sales rep within 4 hours
    Onboarding kickoff is delayed until handoff is complete
    Rationale: an incomplete handoff causes a poor customer experience when CS asks questions
      the customer already answered during the sale — "didn't sales tell you that?" is a trust-eroding moment
```

## Output Format

```markdown
# Sales-to-CS Handoff Brief — [Account Name] | [Entity]
**Contract signed:** [Date] | **ACV:** $[X]K | **Go-live target:** [Date]
**Sales rep:** [Name] | **CS owner:** Dr. Lewis / [Name] | **Handoff call completed:** Yes / No

---

## Customer Profile
**Primary contact:** [Name, Title, Email, Phone]
**Secondary contact:** [Name, Title]
**Executive sponsor:** [Name, Title]
**How they found us:** [Referral (from: [name]) / Event / Inbound / Outreach]

---

## Why They Signed
**Primary pain (their words):** "[Quote]"
**Decision factor:** [What pushed them to us vs. alternatives]
**Alternatives evaluated:** [Competitor or status quo]
**Expressed risks:** [Any hesitation or worry they voiced during the sale]

---

## Contract Terms
**ACV:** $[X]K | **Start:** [Date] | **Length:** [1/2/3-year] | **Renewal:** [Date — flagged in calendar]
**Special commitments:** [Any verbal or written commitments beyond standard terms — or None]

---

## Relationship Dynamics
**Champion strength:** Strong / Moderate / Weak
**Internal skeptics:** [Names/roles — or None known]
**Red flags from the sale:** [Or None]

---

## Entity-Specific Context
[Allevio: census timeline; current carrier; open enrollment date; expected member count]
[Column6: first IO details; creative timing; attribution needs; reporting preferences]
[HIVE: parcel details; legal entity; title status; contact preferences]

---

## CS Handoff Checklist
- [ ] Renewal date in calendar
- [ ] CRM record created
- [ ] Onboarding kickoff scheduled
- [ ] Health score initialized (Green)
- [ ] Success plan scheduled (within 30 days of go-live)
- [ ] HIPAA BAA prepared (Allevio)
- [ ] Red flags flagged to Dr. Lewis
```

## Output Contract
- The handoff brief must be complete before the kickoff call — a CS rep who conducts a kickoff call without a completed handoff brief will ask the customer questions they already answered during the sale; this is the most predictable cause of a poor post-sale experience; Dr. Lewis requires the handoff brief to be complete and reviewed before the CS rep schedules the kickoff call
- Verbal commitments from sales are CS liabilities — anything a sales rep promised beyond the standard contract terms becomes a CS delivery commitment; Dr. Lewis reviews the "special commitments" field on every handoff brief; if a commitment is found that cannot be delivered, Dr. Lewis addresses it with both the sales rep and the customer before the kickoff call — not after onboarding when the customer expects it; surprises at onboarding are credibility killers
- Red flags must travel — if the sale was difficult (price negotiation; champion hesitation; internal skeptics), CS needs to know; these dynamics don't disappear at contract signing; Dr. Lewis uses red flag information to calibrate the onboarding approach (weekly contact vs. bi-weekly; Dr. Lewis runs the kickoff vs. the CS rep; success plan built with extra conservatism on targets)
- HITL required: Dr. Lewis reviews all handoff briefs for >$100K ACV within 24 hours of receipt; any red flags from the sale are escalated to Dr. Lewis immediately; incomplete handoffs (2+ missing sections) are escalated to Dr. Lewis; any special commitment beyond standard contract terms requires Dr. Lewis review and CEO awareness if it involves pricing, terms, or service level commitments not in the standard agreement

## System Dependencies
- **Reads from:** Signed contract (SharePoint/Legal/<Company>/Contracts/ — ACV; start date; payment terms; renewal date); CRM deal record (GoHighLevel — sales activity; contact information; deal notes from discovery); sales discovery notes (sales-discovery-framework — what pain was identified?); sales-close-playbook (what close technique was used? — signals the relationship dynamics); sales-pricing-model (were any discounts applied? — CS needs to know the actual ACV vs. list price)
- **Writes to:** Handoff brief (SharePoint/CustomerSuccess/<Company>/Handoffs/[Account]_[Date]_Handoff.pdf); CRM account record (GoHighLevel — all contact fields; renewal date; special terms; red flags); renewal calendar (cs-renewal-coordinator — renewal date added immediately); cs-onboarding-coordinator (kickoff call initiated); cs-health-score-tracker (account initialized at Green); cs-success-plan-builder (success plan scheduled for Month 1)
- **HITL Required:** Dr. Lewis reviews all >$100K ACV handoff briefs within 24 hours; red flags from the sale escalated to Dr. Lewis immediately; incomplete handoffs escalated to Dr. Lewis; special commitments beyond standard terms require Dr. Lewis review and CEO awareness; no kickoff call scheduled until handoff brief is complete and validated

## Test Cases
1. **Golden path:** Allevio — sales rep closes a 155-member employer group ($142K ACV, 2-year contract); within 4 hours of contract signature, sales rep completes the handoff brief: primary contact is the HR Director (name/email/phone provided); why they signed: "Our claim ratio was 89% last year and our CFO gave me a mandate — get it below 80% or we're cutting benefits"; decision factor: the ROI calculator showed $112K potential savings; champion strength: Strong (HR Director fought internally against the CFO who wanted to cut benefits entirely); red flag: The HR Director is skeptical of the 12-week onboarding timeline — she said "I hope it doesn't take that long"; special commitments: the sales rep told her the ID cards would be ready in 6 weeks (faster than the standard 8 weeks) → Dr. Lewis reviews: "The 6-week ID card commitment is a real constraint — I'm going to call our implementation team today to confirm we can hit it. If we can, I'll add it to the onboarding plan as a hard milestone. If we can't, I'm calling the sales rep to discuss how we handle the expectation correction with the HR Director before the kickoff." Implementation team confirms 6 weeks is achievable; added to onboarding plan; kickoff call scheduled within 5 business days
2. **Edge case:** Column6 — sales rep closes a new agency (first IO: $45K) and submits a handoff brief with only the company name, ACV, and start date — the "Why They Signed," "Relationship Dynamics," and "Entity-Specific Context" sections are blank → CS rep notifies Dr. Lewis immediately; Dr. Lewis calls the sales rep: "I need the full handoff brief before we schedule the kickoff. Specifically: (1) What did the media buyer say their goal for this campaign is? (2) What creative assets do they have ready and when? (3) Did they bring up any concerns about CTV attribution? I need this in the next 2 hours — the media buyer is expecting us to call this week." Sales rep fills in the brief; CS rep reviews; kickoff call scheduled 2 days later; CS rep arrives on the kickoff call already knowing the media buyer's goals and the creative asset timeline — media buyer notices: "It's great that you're already up to speed"
3. **Adversarial:** A sales rep argues that a handoff call is "too much overhead for a $35K deal — I'll just email the brief" → Dr. Lewis: "For a $35K deal, I'll accept an email handoff — but the brief still needs to be complete. Here's why: even a $35K deal is a $35K renewal risk in 12 months. The CS rep will be talking to this customer weekly during onboarding. If they don't know why the customer signed and what the customer expects, they'll be flying blind. Email the full brief today. CS rep: read it and call me if there are any gaps before you schedule the kickoff." Brief emailed; CS rep reviews; 2 sections are thin (one answer is "not sure"); CS rep flags to Dr. Lewis; Dr. Lewis calls the sales rep for the missing context; brief completed; kickoff scheduled

## Audit Log
All handoff briefs retained by account, entity, and contract date. Handoff brief completeness records retained (which sections were populated). Special commitments from sales records retained. Red flag records retained. Handoff validation checklist completion records retained. Any incomplete handoff escalation records retained.

## Deprecation
Retire when each portfolio company has a CRM workflow that automatically triggers a structured handoff brief from the deal stage and routes it to the CS owner upon deal close — with Dr. Lewis reviewing the handoff template annually and the CEO informed of any special commitments above standard contract terms.
