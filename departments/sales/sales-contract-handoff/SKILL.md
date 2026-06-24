---
name: sales-contract-handoff
description: "Manage the sales-to-legal and sales-to-ops handoff for MBL portfolio company deals. Use when the user says 'contract handoff', 'sales handoff', 'handoff', 'sales to ops', 'sales to legal', 'handoff to legal', 'legal review', 'send to legal', 'contract review', 'contract process', 'post-close handoff', 'implementation handoff', 'onboarding handoff', 'account transition', 'deal transition', 'transfer account', 'new customer onboarding', 'kickoff', 'implementation kickoff', 'kickoff call', 'deal closed handoff', 'closed won handoff', 'closed won process', 'after we close', 'next steps after close', 'after the contract is signed', 'what happens after close', 'customer success handoff', 'CS handoff', 'implementation start', 'onboarding start', 'Allevio onboarding', 'Column6 campaign start', 'HIVE close process', 'LOI to close', 'IO to campaign', 'contract countersignature', 'entity CEO sign', or 'contract signature'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--stage <legal-review|signed|kickoff|ops-handoff>]"
---

# Sales Contract Handoff

Manage the sales-to-legal and sales-to-ops handoff for MBL portfolio company deals — ensuring every closed deal transitions cleanly to the implementation or delivery team without information loss, without HIPAA violations, and with clear timelines and accountability. The handoff is where most post-sale churn risk is created: a sloppy handoff leaves the customer feeling like a different company showed up after they signed.

## When to Use
- A deal reaches close and contract execution needs to begin
- Preparing the handoff document for the ops or implementation team
- Managing the legal review process before entity CEO countersignature
- Ensuring all compliance steps are completed before implementation begins

## Contract Handoff Framework

```
HANDOFF PIPELINE — ALL ENTITIES:
  Verbal yes → contract draft → legal review → entity CEO countersign → implementation kickoff
  
  Steps that CANNOT be skipped:
    Entity CEO countersignature on all contracts (Allevio + Column6)
    Matt Mathison signature on all HIVE LOIs (no exceptions)
    Legal review before any non-standard contract terms take effect
    
ALLEVIO CONTRACT HANDOFF:
  Step 1 — Verbal yes:
    Rep confirms with HR Director: "You're ready to move forward — correct?"
    AE sends contract draft within 2 business days of verbal yes
    Contract template: standard Allevio MSO agreement (entity CEO maintains master template)
    
  Step 2 — Legal review (standard: 5-10 business days):
    Prospect's legal or HR-legal reviews the MSO agreement
    Common asks: liability cap; exit clause; data handling (BAA); auto-renewal terms
    AE monitors review; follows up every 3 business days
    Non-standard terms: AE flags to entity CEO + Dr. Lewis; entity CEO decides whether to accept
    
  Step 3 — Entity CEO countersignature:
    Allevio entity CEO countersigns all employer agreements (no exceptions)
    Contract executed (both parties signed): AE notifies entity CEO and Dr. Lewis same day
    Contract filed: SharePoint → Allevio → Contracts → [Employer Name] → [Date]
    
  Step 4 — HIPAA compliance handoff:
    Census collection begins ONLY after contract is signed
    Census request: AE sends standard census request template to HR Director
    Census data received: AE sends to Allevio implementation team ONLY — not stored in GHL
    BAA confirmation: legal confirms BAA is signed as part of MSO agreement before any clinical data flows
    HIPAA warning: census data is PHI once received; handle with clinical data protocols; NOT email forwarding
    
  Step 5 — Implementation kickoff:
    Kickoff call scheduled within 5 business days of contract execution
    Attendees: AE; implementation lead; HR Director; CFO (optional)
    Kickoff agenda: implementation timeline; employee communication plan; go-live date; 30/60/90 check-in schedule
    AE role post-kickoff: relationship retention; expansion opportunities; renewal at month 10 (2 months before auto-renewal)
    
COLUMN6 CONTRACT HANDOFF:
  Step 1 — IO execution:
    IO is both proposal and contract for Column6
    Both parties sign: agency + entity CEO (authorized signatory)
    IO filed: SharePoint → Column6 → IOs → [Agency] → [Campaign] → [Date]
    
  Step 2 — Creative assets:
    AE requests creative assets within 24 hours of IO execution
    Specs: format; dimensions; VAST/VPAID (if applicable); click URL; impression pixel
    Creative deadline: assets due 3 business days before campaign start date
    Column6 QA: ops team reviews creative; confirms spec compliance
    Campaign does NOT go live without both parties' signed IO AND QA-passed creative
    
  Step 3 — Campaign launch confirmation:
    AE sends launch confirmation to agency within 24 hours of campaign start
    Confirmation includes: campaign live confirmation; flight dates; dashboard access (if applicable)
    AE checks day 3 delivery: confirm campaign is delivering as expected; flag any pacing issues immediately
    
  Step 4 — Campaign delivery monitoring:
    AE monitors delivery weekly; flags any underdelivery >10% to ops within 24 hours
    Make-good policy: underdelivery >10% → ops proposes make-good on next IO or credit
    Campaign complete: AE sends performance report to agency within 5 business days of campaign end
    90-day repeat IO check: AE initiates re-engagement conversation 30 days before the 90-day window closes
    
HIVE LOI-TO-CLOSE HANDOFF:
  Step 1 — Matt Mathison LOI approval:
    All HIVE LOIs: Matt Mathison approves price and structure before AE sends
    WTI check: confirm WTI above $58/bbl before LOI is sent
    
  Step 2 — LOI signed (both parties):
    Seller signs LOI; Dr. Lewis + Matt Mathison notified same day
    Due diligence begins: operator statement verification; deed review; NRI% verification
    
  Step 3 — Due diligence (30-45 days):
    Legal: deed review; title search (Uinta Basin title standards)
    Finance: production verification; LOE review (if WI); NRI% calculation
    Matt Mathison: final go/no-go on acquisition after DD findings
    WTI re-check: confirm WTI still above $58/bbl at DD completion
    
  Step 4 — Closing:
    Formal purchase agreement: Matt Mathison + legal execute
    Payment: per agreement terms
    Asset entered in Covercy: NRI%; operator; production history; acquisition price
    Dr. Lewis coordinates Covercy entry post-close
    
HANDOFF DOCUMENT REQUIREMENTS:
  For every completed handoff: AE prepares a handoff summary
  Required content:
    Deal summary: entity; buyer name; ACV or IO value; close date
    MEDDPICCC summary: key pain; champion; economic buyer; decision made
    Key commitments made: anything promised beyond the standard contract/IO
    Relationship notes: tone; communication preferences; key contacts
    Open items: anything not yet resolved (pending legal; pending creative; pending census)
    For Allevio: HIPAA reminder — census collection process and compliance requirements
```

## Output Format

```markdown
# Handoff Document — [Entity] | [Account Name] | [Date]
**AE:** [Name] | **Implementation/Ops lead:** [Name] | **ACV/IO value:** $[X]

---

## Deal Summary
| Item | Detail |
|------|--------|
| Contract type | [Allevio MSO / Column6 IO / HIVE LOI] |
| Contract signed date | [Date] |
| Entity CEO signed | [Date] / Matt Mathison signed [Date] |
| Go-live / Campaign start | [Date] |
| Contract filed | [SharePoint path] |

---

## Account Profile (for implementation team)
- **Key champion:** [Name, title, direct contact]
- **Economic buyer:** [Name, title — for executive escalations]
- **Communication preference:** [Email / Phone / Frequency]
- **Key pain that was sold:** [1 sentence — what they bought Allevio/Column6 to solve]

---

## Commitments Made During Sale (implementation must honor)
| Commitment | Detail | Confirmed by |
|-----------|--------|-------------|
| [Specific promise] | [Detail] | [AE / Entity CEO] |

---

## Compliance Checklist
- [ ] Entity CEO countersignature ✅/❌
- [ ] BAA in place (Allevio) ✅/❌/N/A
- [ ] Census not collected pre-contract (Allevio) ✅/❌/N/A
- [ ] WTI check at LOI (HIVE) ✅/❌/N/A
- [ ] Creative spec QA (Column6) ✅/❌/N/A

---

## Open Items
[Anything still pending — with owner and due date]
```

## Output Contract
- The handoff document is mandatory on every closed deal — implementation teams that receive deals without context deliver implementations without context; the consequences range from customer frustration ("we already told you all of this") to genuine service failures ("they didn't know about the commitment we made to the CFO"); the handoff document bridges the gap between the sale and the service; Dr. Lewis requires a handoff document to be created within 2 business days of contract execution; for Allevio, the handoff document triggers the census collection process; for Column6, it triggers the creative asset request; for HIVE, it triggers the due diligence checklist
- Census collection starts on the day after contract execution, not before — this is restated here because the handoff is the moment when census collection is formally triggered; the AE sends the census request template to the HR Director on the day after contract execution; the census data that comes back is PHI and is handled by the implementation team's clinical data protocols, not by the AE; the AE's job in the handoff is to initiate the collection and then get out of the data path; the implementation team owns census data handling from the moment of receipt; any AE who receives census data directly (via email) must: (1) not open or import it; (2) forward immediately to the implementation team; (3) notify Dr. Lewis and entity CEO; (4) log as a near-miss HIPAA event
- HITL required: entity CEO countersignature on all Allevio contracts (before any implementation begins); Matt Mathison signature on all HIVE LOIs; non-standard contract terms → entity CEO + Dr. Lewis review before acceptance; Allevio: census collection → AE initiates; implementation team handles (AE out of data path); BAA confirmation → entity CEO confirms before clinical data flows; Column6: creative QA → ops team (not AE) before campaign goes live; campaign underdelivery >10% → ops + entity CEO + Dr. Lewis; HIVE DD: Matt Mathison final go/no-go after due diligence findings

## System Dependencies
- **Reads from:** Signed contract (SharePoint → [Entity] → Contracts/IOs); GHL deal record (MEDDPICCC; champion; commitments made; stage history); entity contract template (entity CEO maintains); census request template (Allevio implementation team); Column6 creative spec sheet (ops team); HIVE DD checklist (Dr. Lewis)
- **Writes to:** Handoff document (SharePoint → [Entity] → [Account] → Handoff → [Date]); GHL (stage = Closed Won; handoff date; kickoff scheduled; implementation lead assigned); Allevio: census request log; BAA confirmation record; Column6: creative asset request; campaign launch confirmation; HIVE: DD checklist; Covercy entry (post-close); entity CEO handoff notification
- **HITL Required:** Entity CEO countersignature → all Allevio contracts; Matt Mathison → all HIVE LOIs; non-standard terms → entity CEO + Dr. Lewis; Allevio BAA → entity CEO confirms; census handling → implementation team (AE out of data path); Column6 creative QA → ops; campaign underdelivery → ops + entity CEO + Dr. Lewis; HIVE DD go/no-go → Matt Mathison

## Test Cases
1. **Golden path:** Allevio employer contract signed (June 15). Entity CEO countersigns same day. AE files contract in SharePoint. AE creates handoff document: champion (Amanda Chen, HR Director, direct line); CFO (Bill Rodriguez — executive escalation only; prefers email); pain sold: claims trend reduction; key commitment: 90-day performance review call at month 3. AE sends census request to Amanda (June 16). Amanda returns census June 18. AE: does not open the census file; forwards immediately to implementation team with note "Census received — please handle per HIPAA protocols; I have not opened or imported this file." Dr. Lewis notified: PHI received correctly; no near-miss. Kickoff call scheduled June 23 (5 business days post-contract). Go-live: July 15 (45-day implementation timeline; 3 months before Allevio open enrollment window).
2. **Edge case:** Column6 campaign goes live but underdelivers 18% in first week (pacing issue) → Dr. Lewis: "(1) Column6 ops notified immediately; ops team diagnoses pacing issue (inventory allocation error). (2) Fix applied within 24 hours — pacing normalized. (3) AE notifies agency media buyer: 'We had a pacing issue in the first week; our ops team corrected it and the campaign is now delivering normally. Here's the updated delivery report.' (4) If underdelivery >10% persists through end of campaign: make-good triggered per IO terms (next IO credit or additional impressions). (5) Entity CEO + Dr. Lewis informed of the underdelivery and the resolution. (6) Post-campaign review: was this a trafficking error or inventory issue? Fix process before next IO for this agency."
3. **Adversarial:** An Allevio AE asks to personally handle the census data "to make sure it's complete" before forwarding to the implementation team → Dr. Lewis: "The AE cannot be in the census data path. Here's why: once census data (name; DOB; ZIP; gender) is associated with Allevio's clinical program, it is PHI under HIPAA; the AE is in sales, not in the clinical or implementation team, and does not have HIPAA-compliant data handling protocols in their workflow; their email client is not configured as a secure PHI transmission system; if the AE opens and reviews the census, they've touched PHI without authorization under our privacy practices. The implementation team has the tools and protocols to receive, validate, and import census data. The AE's job is to initiate the census request and confirm the timeline — then step back. If there's a completeness question, the implementation team asks the HR Director directly."

## Audit Log
Handoff document records (all entities; all closed deals; SharePoint). Contract execution records (signed date; entity CEO countersign date; Matt Mathison sign date for HIVE; filed location). Census request records (Allevio — date sent; date received; who received; PHI handling confirmation). BAA confirmation records (Allevio — entity CEO confirmation; date). Column6 creative asset records (request date; receipt date; QA result; campaign live date). HIVE DD records (DD start; findings; Matt Mathison go/no-go; close date; Covercy entry). Underdelivery records (Column6 — campaign; underdelivery %; resolution; make-good if applicable). Near-miss HIPAA records (census pre-contract or AE data handling issues).

## Deprecation
Handoff process reviewed annually. HIPAA census handling reviewed when HHS guidance changes. Column6 creative QA process reviewed when Column6's inventory or delivery technology changes. HIVE DD checklist reviewed when acquisition due diligence requirements change. Contract template reviewed when entity terms or legal requirements change.
