---
name: sales-deal-desk
description: "Manage non-standard deal structures and approvals for MBL portfolio company sales teams. Use when the user says 'deal desk', 'non-standard deal', 'custom deal', 'deal exception', 'deal approval', 'deal structure', 'deal review', 'deal sign-off', 'approve this deal', 'deal terms', 'non-standard terms', 'custom terms', 'custom contract', 'contract exception', 'special pricing', 'custom pricing', 'exception pricing', 'pricing exception', 'deal desk review', 'deal desk approval', 'non-standard IO', 'custom IO', 'IO exception', 'contract deviation', 'off-standard contract', 'non-standard PMPM', 'PMPM exception', 'deal outside policy', 'deal outside guidelines', 'deal outside authority', 'deal escalation', 'escalate this deal', 'escalate deal', 'deal needs approval', 'Matt Mathison deal', 'Dr. Lewis deal approval', 'entity CEO deal', 'deal committee', 'deal review committee', 'large deal', 'strategic deal', 'anchor client', 'flagship deal', or 'enterprise deal'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--deal <name>] [--issue <pricing|terms|scope|structure>]"
---

# Sales Deal Desk

Manage non-standard deal structures and approvals for MBL portfolio company sales teams — providing a structured review process for deals that fall outside standard pricing, terms, or authority limits. The deal desk exists because the standard authority matrix covers 90% of deals; the remaining 10% are either large enough, complex enough, or different enough to require deliberate review before the rep commits the entity to terms they don't have authority to approve.

## When to Use
- A deal requires pricing, terms, or structure outside standard authority
- A rep is unsure whether a deal needs escalation before the prospect is given a commitment
- Reviewing a large or strategically important deal before close
- Documenting a deal exception for audit purposes

## Deal Desk Framework

```
WHEN A DEAL GOES TO THE DEAL DESK:
  Pricing deviation: any concession that requires entity CEO + Dr. Lewis (5-15%) or + Matt Mathison (>15%)
  Non-standard terms: payment terms >net 60; custom SLA; non-standard cancellation; exclusivity clause
  Contract structure: multi-year with unusual renewal terms; performance guarantees beyond standard; IP provisions
  Authority threshold: deal ACV or IO value that triggers escalation based on HITL authorization matrix
  Strategic deal: anchor client; first deal in a new market; pilot program with unusual terms
  HIVE: all LOIs → Matt Mathison regardless of amount
  
DEAL DESK PROCESS (3 steps):
  Step 1 — AE submission (before committing to the prospect):
    AE submits deal desk request with:
      Deal name; entity; prospect; current stage
      Standard terms (what the contract template says)
      What the prospect is asking for (deviation from standard)
      Why the AE believes the deviation is warranted
      Proposed alternative or trade (what we'd ask for in return)
      ACV or IO value; timeline
    Submitted to: entity CEO; Dr. Lewis notified
    
  Step 2 — Deal desk review (entity CEO + Dr. Lewis; 24-48 hours):
    Evaluate: does the deviation create margin, legal, or operational risk?
    Evaluate: is there a precedent (have we granted this exception before? What happened?)
    Evaluate: is there a trade that recovers value (longer term; larger volume; faster close)?
    Decision: approve / approve with conditions / deny / escalate to Matt Mathison
    Matt Mathison escalation: >15% pricing concession; structural change; HIVE LOI; any deal >$250K (entity CEO judgment)
    
  Step 3 — AE response to prospect (post-approval):
    AE communicates the approved terms to the prospect
    If approved with conditions: AE communicates the trade (e.g., "We can do $X PMPM with a 24-month commitment")
    If denied: AE communicates the best available offer within standard terms
    If escalated: AE waits for Matt Mathison decision before communicating to prospect
    
NON-STANDARD DEAL TYPES AND GUIDANCE:

  Allevio — multi-year deal (>12 months):
    Standard: 12-month contract
    Multi-year ask: employer wants 2 or 3-year deal with price lock
    Deal desk evaluation: is the PMPM locked at current rate or indexed? Is the employer financially stable?
    Entity CEO + Dr. Lewis decision: approve with conditions (rate can be locked with 3% annual increase clause)
    
  Allevio — PMPM below standard:
    Standard floor: [X] PMPM (entity CEO maintains this; below floor requires deal desk)
    Deal desk evaluation: why is the employer asking for a lower rate? Volume (more enrolled)? Market (competitive pressure)?
    Response: volume-based rate is acceptable (more enrolled employees → lower per-employee rate); competitive pressure → defend on value first
    
  Column6 — IO with gross margin <35%:
    Standard: ≥35% gross margin on every IO
    Below-floor ask: agency requests CPM that produces <35% margin
    Deal desk evaluation: is this a strategic relationship (Tier 1 agency; long-term value)? Is there a volume trade?
    Entity CEO + Dr. Lewis: approve only if strategic justification is strong AND there's a path to margin improvement
    Dr. Lewis documents: "This IO was approved below margin floor for [reason]. Next IO with this agency must be at or above 35%."
    
  Column6 — IO with non-standard payment terms (net >60):
    Deal desk evaluation: credit risk of the agency; receivables history; DSO impact
    Entity CEO + Dr. Lewis: approve if agency is creditworthy; deny if DSO risk is high
    
  HIVE — all LOIs:
    All HIVE LOIs → Matt Mathison deal desk regardless of amount (this is unconditional)
    Deal desk for HIVE = Matt Mathison briefing + LOI price and structure review
    WTI check required before LOI goes to Matt Mathison for approval
    
DEAL DESK DOCUMENTATION:
  Every deal desk decision is documented:
    Deal name; entity; issue; AE submission; decision; rationale; approver(s); date
    Filed in SharePoint → [Entity] → Sales → Deal-Desk → [Deal Name] → [Date]
    GHL: deal notes updated with "Deal desk approved [date]; entity CEO + Dr. Lewis"
    Precedent log: unusual approvals logged by type (e.g., "net 60 payment terms approved for agency of [tier]")
    
HITL AUTHORIZATION MATRIX (reminder):
  <5% concession: entity CEO only
  5-15% concession: entity CEO + Dr. Lewis
  >15% concession: entity CEO + Dr. Lewis + Matt Mathison
  Non-standard terms: entity CEO + Dr. Lewis
  Structural change: entity CEO + Dr. Lewis + Matt Mathison
  HIVE LOI: Matt Mathison (unconditional)
  All Allevio contracts: entity CEO countersigns
  All Column6 IOs: entity CEO authorized signatory
```

## Output Format

```markdown
# Deal Desk Request — [Deal Name] | [Entity] | [Date]
**AE:** [Name] | **Stage:** [N] | **ACV / IO Value:** $[X] | **Expected close:** [Date]

---

## Standard vs. Requested Terms
| Item | Standard | Requested | Deviation |
|------|---------|-----------|----------|
| [PMPM / CPM / Contract length / etc.] | [Standard] | [Requested] | [X% or description] |

---

## AE Justification
[Why the deviation is warranted; what the prospect's stated reason is; what trade the AE proposes]

---

## Deal Desk Decision
**Decision:** [Approved / Approved with conditions / Denied / Escalate to Matt Mathison]
**Approvers:** Entity CEO ☐ | Dr. Lewis ☐ | Matt Mathison ☐
**Conditions (if approved with conditions):** [Specific trade required]
**Rationale:** [1-2 sentences]
**Precedent flag:** [Does this set a precedent? How should future similar requests be handled?]

---

## AE Next Steps
[What the AE is authorized to communicate to the prospect]
```

## Output Contract
- The deal desk submission must happen before the rep commits to the prospect — a rep who says "I think we can do net 45" in a call with the agency before submitting a deal desk request has made a commitment the entity hasn't approved; the deal desk exists for exactly this reason; if the agency hears "yes" from the rep and then the entity CEO says "we won't do net 45," the rep has to walk back a commitment, which damages credibility and the relationship more than never having offered it; Dr. Lewis enforces: no prospect commitment on non-standard terms without deal desk approval; if the rep is unsure whether something requires deal desk, the default is to submit and find out — the deal desk process takes 24-48 hours; the prospect can wait
- Deal desk decisions are documented and create a precedent log — if entity CEO approves a net 60 payment term for a Tier 1 Column6 agency, that decision is logged with the rationale; the next time a different agency asks for net 60, the precedent is available; if the new agency is Tier 2 and the original approval was for Tier 1, the deal desk can say "we've approved net 60 for Tier 1 agencies; at your current spend level, our standard is net 45; if you reach Tier 1 spend, we can revisit"; the precedent log prevents the entity from being surprised by a rep who says "you approved this before" when the circumstances were materially different
- HITL required: all deal desk submissions → entity CEO reviews within 24-48 hours; any deal with concession ≥5% → Dr. Lewis involved in decision; >15% or structural change → Matt Mathison decision; HIVE LOI → Matt Mathison (unconditional); below-margin Column6 IO → entity CEO + Dr. Lewis (document as exception; next IO must recover); AE communicates terms to prospect → only after written deal desk approval; approved terms filed in SharePoint before rep delivers to prospect; all Allevio contracts → entity CEO countersigns; all Column6 IOs → entity CEO authorized signatory

## System Dependencies
- **Reads from:** Deal desk request (AE submission — GHL or SharePoint form); HITL authorization matrix (this skill); standard contract terms (entity CEO template); precedent log (SharePoint → [Entity] → Sales → Deal-Desk → Precedent-Log); concession authority matrix (sales-negotiation-guide); Column6 gross margin calculator; HIVE WTI status
- **Writes to:** Deal desk decision record (SharePoint → [Entity] → Sales → Deal-Desk → [Deal Name] → [Date]); GHL (deal notes — deal desk approved; date; approvers); precedent log (new exceptions; type; rationale; approver; date); Matt Mathison deal desk briefing (for escalations); commission records (if deal desk affects commission calculation)
- **HITL Required:** All deal desk submissions → entity CEO 24-48 hours; ≥5% concession → Dr. Lewis; >15% or structural → Matt Mathison; HIVE LOI → Matt Mathison unconditional; below-margin Column6 IO → entity CEO + Dr. Lewis + documented exception; AE communication → only after written approval; all contracts → entity CEO or authorized signatory

## Test Cases
1. **Golden path:** Allevio employer asks for 18-month contract at $68 PMPM (standard is $75 PMPM; 12-month). Deviation: 9.3% PMPM reduction + 6-month extension. AE submits deal desk. Deal desk review: entity CEO + Dr. Lewis. Analysis: employer is 200 employees; ICP Tier 1; benefits renewal in 2 months (high compelling event); $68 PMPM is 9.3% below standard (entity CEO + Dr. Lewis authority). Trade: 24-month commitment instead of 18 months locks in 2 renewals. Decision: "Approved with conditions — $68 PMPM at 24-month contract; auto-renew at current PMPM + 3%/year. Entity CEO must countersign. AE authorized to offer: '$68 PMPM with a 24-month commitment — this gives you price stability through your next 2 renewals.' Do not offer $68 on a shorter term." GHL updated; deal desk record filed. AE communicates approved terms. Deal closes.
2. **Edge case:** Column6 AE submits a deal desk for an IO at $14 CPM that produces 24% gross margin (below 35% floor). Justification: "This is our largest potential client — $500K+/year; they need to test at $14 CPM to get started." Deal desk review: entity CEO + Dr. Lewis. Analysis: Tier 1 potential; but setting a $14 CPM precedent on the test IO means the agency will expect $14 CPM on future IOs; 24% margin isn't sustainable as a recurring rate. Decision: "Approved as a one-time test IO under these conditions: (1) IO is explicitly labeled 'test IO — introductory rate'; (2) Post-test IO will be priced at standard margin (≥35%); (3) Entity CEO communicates this to the agency VP (not just the media buyer) so the expectation is set at the right level; (4) Exception is documented; next IO below 35% from this agency is not approved without a new deal desk review. Dr. Lewis logs this as a precedent: 'Tier 1 agencies may receive a single below-margin test IO with entity CEO approval and VP-level acknowledgment of standard pricing going forward.'"
3. **Adversarial:** AE says "I already told them we could do net 60 — I just need you to approve it now" → Dr. Lewis: "This is exactly the situation the deal desk process prevents. The rep committed to terms before getting approval — and now the question isn't 'should we approve net 60?' it's 'how do we handle a commitment that was made without authorization?' Options: (1) If net 60 is within entity CEO + Dr. Lewis authority and we'd approve it anyway: approve it, document the deal desk, but have a coaching conversation with the rep about process; (2) If net 60 is not approvable: the rep will need to walk it back — I'll help them with the language ('I spoke with our team and for a new agency relationship, we're at net 45; I can commit to reviewing net 60 terms after your first campaign completes and we've established payment history'). Either way: this is a coaching event. Deal desk exists to prevent this. Future deals: the rep submits before committing."

## Audit Log
Deal desk submission records (all requests; AE; date; issue; SharePoint). Deal desk decision records (decision; approvers; rationale; conditions; date; SharePoint). Precedent log (exception type; rationale; approver; date; future guidance). GHL deal notes (deal desk approved; date; approvers). Matt Mathison escalation records (deal; decision; date). Below-margin IO records (Column6 — exception; conditions; next IO recovery requirement; entity CEO + Dr. Lewis). Unauthorized commitment records (rep committed without approval; coaching event; corrective action).

## Deprecation
Deal desk thresholds reviewed annually with HITL matrix. Gross margin floor reviewed when Column6's cost structure changes. Allevio PMPM floor reviewed when pricing changes. HIVE LOI deal desk reviewed when Matt Mathison updates acquisition decision framework. Payment terms guidance reviewed when entity DSO targets change.
