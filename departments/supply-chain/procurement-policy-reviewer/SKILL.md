---
name: procurement-policy-reviewer
description: "Review and update procurement policies and procedures. Use when the user says 'procurement policy', 'purchasing policy', 'update the procurement policy', 'do we have a procurement policy', 'review our purchasing procedures', 'procurement controls', 'approval policy for purchasing', 'buying policy', 'spend policy', or 'procurement governance'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|all>] [--mode <review|create|update>]"
---

# Procurement Policy Reviewer

Review, create, or update procurement policies and procedures to ensure purchasing is controlled, auditable, and compliant. Procurement without policy is ad hoc — people buy from whoever they know, at whatever price is offered, without documentation. For MBL, the procurement policy is the operating manual for how money is spent — it defines who can buy what, how much, from whom, and with what documentation. It's also the first line of defense against fraud and compliance failures.

## When to Use
- No procurement policy exists — creating from scratch
- Existing policy hasn't been reviewed in >12 months — refresh
- New employee joining who needs to understand purchasing rules
- Audit or compliance review requires documented procurement controls
- Portfolio company acquisition — assess and align their procurement policy to MBL standards

## Policy Framework

```
Core procurement policy components:
  1. Purpose and scope — who does this apply to? what does it cover?
  2. Purchase authority matrix — who can approve what amounts?
  3. Competitive bidding requirements — when are quotes/RFQs required?
  4. Preferred supplier requirements — when must we use approved suppliers?
  5. Purchase order requirements — when is a PO required?
  6. Contract requirements — when is a formal contract required?
  7. Payment terms and approval — how do invoices get approved?
  8. Conflicts of interest — vendor relationships, gifts, personal relationships
  9. Compliance requirements — HIPAA, OSHA, entity-specific rules
  10. Exception process — how to deviate from policy with authorization
```

## Output Format

```markdown
# Procurement Policy — <Entity>
**Version:** <1.0> | **Effective date:** <date>
**Owner:** Dr. John Lewis | **Review cycle:** Annual
**Approved by:** Matt Mathison | **Scope:** All employees of <Entity>

---

## 1. Purpose and Scope

This policy governs all procurement of goods and services on behalf of <Entity>. It applies to all employees, contractors, and agents who have purchasing authority or who initiate purchases. The goal is to ensure that purchases represent the best value for the company, are properly authorized, and comply with applicable laws and regulations.

**What this policy covers:** All purchases of goods, services, software, and professional services.
**What it does not cover:** Payroll, employee benefits (separate HR policy), real estate transactions.

---

## 2. Purchase Authority Matrix

| Purchase amount | Who can approve | Additional requirements |
|----------------|----------------|------------------------|
| <$1,000 | Department budget holder | Expense report; no PO required |
| $1,000-$5,000 | Department head | PO required; receipt required |
| $5,001-$25,000 | Dr. John Lewis | PO required; 3 competitive quotes required |
| $25,001-$100,000 | Matt Mathison | PO required; formal RFQ required |
| >$100,000 | Matt Mathison + Board notification | PO required; full RFP required |

**Emergency exceptions:**
- Any emergency purchase must be documented with reason for emergency
- Formal approval obtained within 48 hours of purchase
- Emergency purchases logged and reviewed monthly by Dr. Lewis

**Recurring contracts:**
- Approved annual contracts: Purchases within contract scope require PO only, no re-approval
- Renewal with >10% price increase: Requires new approval at the same authority level

---

## 3. Competitive Bidding Requirements

| Purchase type | Requirement |
|-------------|------------|
| New category purchase >$5,000 | Minimum 3 competitive quotes |
| New category purchase >$10,000 | Formal RFQ or RFP required |
| Contract renewal >$25,000 | RFQ or negotiation documentation required |
| Strategic supplier selection (Tier A) | Full RFP required |
| Emergency purchase | Single-source acceptable; competitive process within 30 days |

**Exceptions to competitive bidding:**
- Sole-source purchase: Must be documented with justification (no alternatives exist)
- Preferred supplier program: Categories with an approved preferred supplier list do not require competitive bids for purchases within the approved supplier group

---

## 4. Preferred Supplier Program

A preferred supplier list is maintained by Dr. Lewis for high-spend categories. Where a preferred supplier list exists:
- Purchases within the category must use an approved preferred supplier
- Deviation requires written exception approved by Dr. Lewis
- Preferred supplier lists are reviewed and updated annually

**Categories with preferred supplier lists:** [Updated per category management]

---

## 5. Purchase Order Requirements

| Purchase amount | PO required? |
|----------------|------------|
| <$1,000 | No (expense report) |
| ≥$1,000 | Yes — PO required before goods/services received |

**PO process:**
1. Requestor initiates PO in QuickBooks
2. Budget holder approves (if not the same person)
3. Dr. Lewis approves ($5K-$25K); Matt Mathison approves (>$25K)
4. Approved PO issued to supplier
5. Goods/services received — receiving confirmation logged
6. Invoice matched to PO (3-way match: PO = receipt = invoice)
7. Invoice approved for payment in Bill.com

**Retroactive POs:** POs issued after goods/services received are a policy violation. Employees who create retroactive POs will be subject to disciplinary action for repeat violations.

---

## 6. Contract Requirements

| Situation | Contract required? |
|---------|-----------------|
| One-time purchase < $5,000 | No contract; PO + standard T&Cs |
| Recurring purchase > $5,000/year | Yes — MSA or annual agreement |
| Any purchase involving PHI (Allevio) | Yes — HIPAA BAA required |
| Any purchase involving IP or confidential data | Yes — NDA + IP agreement |
| Software/SaaS | Yes — license agreement with data portability |

**Contract review:** All contracts >$25,000 or involving HIPAA/IP require Dr. Lewis review before signing. Contracts >$50,000 or involving significant IP require legal counsel review.

---

## 7. Conflicts of Interest and Ethics

**Gifts and entertainment:**
- Gifts from suppliers: Maximum $50 per year per supplier
- Meals: Acceptable if reasonable and business-related; not to influence purchasing decisions
- Gifts >$50 must be reported to Dr. Lewis and declined or returned

**Personal relationships:**
- Employees must disclose any personal relationship with a supplier or supplier employee
- Disclosed relationships: Must recuse from that supplier evaluation and decisions
- Failure to disclose: Grounds for disciplinary action

**No split purchasing:**
- Splitting a purchase into multiple transactions to avoid the approval threshold is prohibited
- Pattern of near-threshold purchases may be reviewed and subject to enforcement

---

## 8. Compliance Requirements by Entity

| Entity | Additional requirements |
|--------|------------------------|
| Allevio | HIPAA BAA required for all vendors handling PHI; FDA registered vendors for medical devices |
| HIVE | OSHA compliance certification required for field service contractors; hazmat carrier certification |
| MBL | SOC 2 vendor assessment for technology vendors handling client data |

---

## 9. Exception Process

To deviate from this policy:
1. Document the exception and business justification in writing
2. Submit to Dr. Lewis (exceptions up to $25K) or Matt Mathison (>$25K)
3. Get written approval before proceeding
4. Log exception in the procurement exception register
5. Exception register reviewed monthly by Dr. Lewis; quarterly by Matt Mathison

---

## Policy Compliance

Failure to comply with this policy may result in:
- Disallowance of the expense
- Disciplinary action
- Personal financial liability for unauthorized commitments

Policy questions: Contact Dr. John Lewis (jlewis@mblpartners.com)
```

## Output Contract
- Purchase authority matrix always the centerpiece — the most important element of any procurement policy
- Competitive bidding thresholds always clear and enforced — ambiguous thresholds lead to interpretation, not compliance
- HIPAA BAA requirement always explicit in compliance section — a procurement policy without HIPAA controls for Allevio is incomplete
- Exception process always defined — without an exception path, exceptions happen informally and invisibly
- HITL required: Dr. Lewis drafts policy; Matt Mathison reviews and approves; all deviations tracked in exception register; Matt Mathison reviews quarterly exceptions

## System Dependencies
- **Reads from:** Current procurement practices, entity compliance requirements, purchase authority decisions from Matt Mathison
- **Writes to:** Procurement policy (SharePoint/Legal/Policies); exception register (SharePoint/Operations/Procurement)
- **HITL Required:** Dr. Lewis drafts; Matt Mathison approves; exception register reviewed by Dr. Lewis monthly + Matt Mathison quarterly

## Test Cases
1. **Golden path:** Create procurement policy for Allevio → All 9 sections complete; purchase authority matrix includes HIPAA BAA requirement; preferred supplier program section references Allevio Tier A/B medical supply list; competitive bidding thresholds set; exception process defined; Dr. Lewis reviews; Allevio CEO reviews (entity-specific compliance); Matt Mathison approves; policy published to SharePoint; all Allevio staff notified; annual review scheduled
2. **Edge case:** Existing portfolio company has no procurement policy at all — they approve purchases verbally → start with the purchase authority matrix and the PO requirement as the two highest-value controls; implement these first; add the rest over 90 days; don't try to introduce a complete policy overnight to an organization without any process — adoption matters more than comprehensiveness
3. **Adversarial:** An employee argues that the policy is too bureaucratic and is slowing them down → procurement controls exist because unchecked spending is a real financial and compliance risk; understand the specific friction point; if the PO process for <$5K is slowing them down, consider raising the expense report threshold; but the controls for >$25K purchases are non-negotiable; "move fast" is never a justification for bypassing financial controls

## Audit Log
Policy versions retained. Exception register maintained. Annual review completion documented. Matt Mathison approval of policy and exceptions documented.

## Deprecation
Retire when MBL has a formal compliance and governance team that owns procurement policy as part of a broader corporate governance framework.
