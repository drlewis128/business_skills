---
name: entity-structure-advisor
description: "Analyze or recommend legal entity structure. Use when the user says 'entity structure', 'what entity should we use', 'LLC vs S-Corp', 'C-Corp vs S-Corp', 'partnership structure', 'holding company structure', 'set up a new entity', 'entity choice', 'legal structure', 'corporate structure', 'should we change the entity', or 'entity tax analysis'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <new or existing company>] [--situation <new-business|acquisition|restructure|deal>] [--owners <number and type>]"
---

# Entity Structure Advisor

Analyze and recommend legal entity structure for MBL portfolio companies, new ventures, and acquisitions. Entity choice is one of the highest-impact financial and legal decisions in business — it affects tax treatment, liability protection, ownership transferability, investor structure, and compliance burden. The right entity at formation is far cheaper than restructuring later. The wrong entity can cost hundreds of thousands in taxes or create legal exposure that a different structure would have prevented.

## When to Use
- Forming a new entity for a business or deal
- Evaluating an acquisition — what entity should the target be in?
- An existing entity may be mis-structured relative to its current activity
- Matt Mathison asks "what should the entity structure be for [Company/Deal]?"
- A portfolio company is considering an S-Corp election to reduce payroll taxes
- Planning a holding company or subsidiary structure for portfolio management

## Entity Structure Framework

```
Key entity types and MBL use cases:

LLC (Limited Liability Company):
  Default tax treatment: Disregarded (single-member) or partnership (multi-member)
  Pros: Flexible; pass-through; no double tax; easy to change tax elections
  Cons: Self-employment tax on active income (for operating members)
  MBL use: Default for portfolio operating companies; most flexible structure

S-Corporation (or LLC electing S-Corp):
  Tax: Pass-through; no double tax; but must pay "reasonable salary" to owner-employees
  Advantage: Distributions above reasonable salary avoid self-employment tax
  Cons: One class of stock only; limited shareholders (<100); no non-citizen owners
  MBL use: Consider when owner is actively working in the business and income
           is >$80K/year — self-employment tax savings meaningful at this level

C-Corporation:
  Tax: Corporate level + individual level (double tax on dividends)
  Pros: Preferred by VC/institutional investors (can have multiple stock classes);
        QSBS exclusion available for qualifying stock
  Cons: Double taxation on distributions; no pass-through
  MBL use: Rarely preferred for operating companies unless raising institutional equity

LP (Limited Partnership):
  Pros: Pass-through; limited partners have liability protection; no self-employment
        tax for limited partners
  MBL use: Standard for HIVE Partners (oil & gas) and fund structures; LPs
           contribute capital and don't manage

Holding company:
  Structure: Parent entity (LLC or Corp) owns subsidiary entities
  MBL use: MBL Partners as holding company over portfolio companies;
           allows portfolio management, centralized services, and inter-entity
           transactions; may offer charging order protection

For oil & gas (HIVE):
  LP structure is standard — allows pass-through of IDCs and depletion;
  LP interests easily transferred; MBL as GP provides management control
```

## Output Format

```markdown
# Entity Structure Analysis — <Company / Situation>
**Situation:** [New entity / Acquisition / Restructuring / Holding company]
**Owners:** [Names, roles, and expected ownership %]
**Business activity:** [Operating / Investment / Real estate / Oil & gas]
**State of formation:** [Preferred state + operating states]
**Prepared by:** Dr. John Lewis | **CPA and legal review required before action**

---

## Situation Analysis

| Factor | Current / Proposed | Implication |
|--------|------------------|------------|
| Business type | [Active operating / Investment / Oil & gas / Real estate] | [Determines self-employment tax exposure] |
| Number of owners | [N] | [Disregarded / Partnership / Corp] |
| Investor structure | [Institutional / LP / None] | [Affects which entities are viable] |
| Expected income level | $[X]/year | [Drives value of S-Corp election calculation] |
| Exit strategy | [IPO / Strategic sale / Long-term hold] | [Affects preference for C-Corp QSBS vs. pass-through] |
| State(s) of operation | [List] | [Multi-state filing obligations] |

---

## Entity Comparison

| Entity type | Tax treatment | Self-employment | Liability protection | Investor friendly | Complexity | Recommended? |
|------------|--------------|----------------|---------------------|-----------------|-----------|-------------|
| Sole Prop | Pass-through | Full on all income | None | ❌ | Very low | ❌ Never |
| LLC (default) | Pass-through | Full on active income | ✅ | Limited | Low | [Situational] |
| LLC → S-Corp | Pass-through | Only on salary | ✅ | Limited | Medium | [Often best for small ops] |
| LLC → C-Corp | Double tax | N/A | ✅ | ✅ Best | High | [For VC-backed; rarely MBL] |
| LP | Pass-through | Not for LPs | ✅ for LPs | ✅ for fund | Medium | [Oil & gas / fund structures] |

---

## Recommended Structure

**Recommendation:** [Entity type and election]
**Formation state:** [State — Delaware preferred for multi-state businesses; home state for local operations]
**Tax election:** [Default / S-Corp election / C-Corp / LP]

**Rationale:**
[3-5 specific reasons why this structure is best for this situation, including:
- Tax savings estimated ($ amount)
- Liability protection provided
- Investor compatibility
- Exit flexibility]

---

## S-Corp Election Analysis (if applicable)

**Self-employment tax savings calculation:**

| | LLC (no election) | S-Corp election | Savings |
|---|---|---|---|
| Net business income | $[X] | $[X] | |
| Reasonable salary | N/A | $[X] | |
| SE tax on salary (15.3%) | $[X] (on all) | $[X] (on salary only) | |
| Distribution (above salary) | N/A | $[X] | |
| SE tax on distribution | $[X] | $0 | |
| **Annual SE tax savings** | | | **$[X]** |
| S-Corp additional complexity cost | | ($[X])/year | (payroll, extra filing) |
| **Net annual benefit** | | | **$[X]** |

**Break-even:** S-Corp makes sense when net business income > ~$80K and SE tax savings exceed the $[X-$3K] annual additional cost

---

## Holding Company Structure (if applicable)

```
Proposed structure:

MBL Partners, LLC (Managing Member / GP)
├── Allevio Holdings, LLC → Allevio Operating, LLC
├── HIVE Partners, LP (GP: HIVE GP, LLC) → Production operations
├── Column6 Holdings, LLC → Column6/Siprocal Operating
└── [Future portfolio companies]

Benefits:
- Liability isolation: each portfolio company's liabilities stay in that entity
- Management control: MBL as GP/managing member retains control
- Centralized services: management fees from portfolio companies to MBL HoldCo
- Tax efficiency: management fees deductible to portfolio companies
```

---

## Implementation Steps

| Step | Description | Owner | Timeline |
|------|------------|-------|---------|
| 1 | [File Articles of Organization/Incorporation] | Dr. Lewis / Attorney | [1-2 weeks] |
| 2 | [Obtain EIN from IRS] | Dr. Lewis | [Same day online] |
| 3 | [Draft operating agreement / LP agreement] | Attorney | [2-4 weeks] |
| 4 | [File S-Corp election (if applicable) — IRS Form 2553] | CPA | [Within 75 days of formation] |
| 5 | [Open bank account in entity name] | Dr. Lewis | [After EIN obtained] |
| 6 | [Set up payroll (if S-Corp) — establish reasonable salary] | CPA / Payroll service | [Before first distribution] |
| 7 | [Register in all operating states (if multi-state)] | Attorney | [Before operations begin] |
```

## Output Contract
- CPA and legal review always required before implementation — entity structure is a legal and tax decision; this skill provides analysis and options; implementation requires an attorney to draft the formation documents and a CPA to handle tax elections and confirm the analysis; Dr. Lewis does not file formation documents or tax elections without legal and CPA coordination
- S-Corp election analysis always quantified — recommending an S-Corp election without running the self-employment tax savings calculation is unhelpful; the calculation must be specific to the owner's income level; at low income levels the complexity cost exceeds the savings
- Exit strategy always considered — a structure that's optimal for a company that will be sold to a PE firm is different from one that's optimal for a company that will be sold to strategic acquirer or taken public; the exit plan affects whether C-Corp QSBS, S-Corp, or LLC is better
- Holding company structure recommendation always evaluates liability isolation — the primary benefit of holding company structure for MBL is liability isolation; a portfolio company's liabilities should never be able to reach MBL Partners or other portfolio companies
- HITL required: Dr. Lewis prepares analysis; attorney drafts formation documents; CPA handles S-Corp election and tax structuring; Matt Mathison approves any new entity formation or restructuring of existing entities; entity changes affecting LP investors require LP agreement review by legal counsel

## System Dependencies
- **Reads from:** Existing entity documents (operating agreements, LP agreements), prior year tax returns, owner income projections
- **Writes to:** Entity structure memo (SharePoint/Finance/Legal/Entity Structure/); CPA and attorney task lists
- **HITL Required:** Dr. Lewis analyzes; attorney forms entity; CPA handles elections; Matt Mathison approves all new formations and restructurings; LP-affecting changes require legal review

## Test Cases
1. **Golden path:** New portfolio company acquisition — healthcare company, $1.2M revenue, single owner-operator staying on → Structure recommendation: LLC electing S-Corp; Rationale: active operator income → SE tax savings significant; single class of ownership — S-Corp eligible; owner plans 5-year hold then strategic sale — C-Corp not needed (strategic buyers usually prefer asset deals); S-Corp election saves $[X]/year in SE tax; Implementation: file LLC in AZ (home state, operating locally); obtain EIN; file S-Corp election within 75 days; establish reasonable salary for owner ($[X] — CPA to confirm "reasonable"); payroll setup; Matt Mathison approved structure; attorney engaged for operating agreement; CPA handling S-Corp election
2. **Edge case:** A company with an S-Corp that wants to raise VC funding → S-Corps are incompatible with institutional VC investors (S-Corps cannot have more than 100 shareholders, cannot have non-citizen shareholders, and cannot have more than one class of stock); response: "S-Corp status is not compatible with VC investment. If this company raises institutional capital, the S-Corp election must be terminated, and the company will likely need to convert to a C-Corp (or the investors will require it). This also means losing the S-Corp tax benefits going forward. Consider whether the amount of capital being raised and its implications are worth the tax structure change before pursuing institutional VC."
3. **Adversarial:** An owner wants to create multiple LLCs for the "asset protection" benefit and house all operations of one business across them → multiple LLCs for a single integrated business is a form of complexity theater — it adds cost and complexity without proportional protection; courts can "pierce the veil" between related LLCs under alter ego theory if they're not truly separate businesses; respond: "Multiple LLCs for one business activity adds compliance complexity ($[X]/year in additional filing and accounting costs) without meaningful additional protection. The right structure for this business is [X]. If you want to protect different business lines from each other, that's a valid reason for separate entities — but they must operate as genuinely separate businesses with separate accounting, separate bank accounts, and no commingling of funds."

## Audit Log
Entity structure analyses retained by entity and date. Formation documents retained permanently. S-Corp elections (Form 2553) retained. Matt Mathison approvals retained. Entity changes documented with before/after structure diagrams.

## Deprecation
Retire when MBL has standing relationships with a business attorney and CPA who proactively advise on entity structure for all new formations and restructurings, and when Dr. Lewis's role shifts to approver/reviewer rather than analyst.
