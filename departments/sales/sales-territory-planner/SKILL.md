---
name: sales-territory-planner
description: "Design and manage sales territory assignments for MBL portfolio company sales teams. Use when the user says 'territory', 'territory plan', 'territory design', 'territory assignment', 'sales territory', 'territory map', 'assign territory', 'territory coverage', 'territory split', 'territory carve', 'rep territory', 'AE territory', 'who owns this account', 'account assignment', 'account ownership', 'patch', 'geographic territory', 'AZ territory', 'Allevio territory', 'Column6 territory', 'agency territory', 'territory quota', 'territory accounts', 'territory management', 'territory review', 'territory conflict', 'territory dispute', 'whitespace territory', 'whitespace accounts', 'underserved territory', 'greenfield', 'new territory', 'territory expansion', 'coverage model', or 'rep coverage'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--action <design|assign|review|rebalance>] [--rep <name>]"
---

# Sales Territory Planner

Design and manage territory assignments for MBL portfolio company sales teams — ensuring full coverage of the ICP universe, preventing territorial conflicts, and balancing rep workloads against quota capacity. Territory design is set annually; reviewed semi-annually; and adjusted only when headcount changes, ICP evolves, or coverage gaps are identified in pipeline data.

## When to Use
- Initial territory design when a new AE is hired
- Semi-annual territory review against pipeline and quota data
- Resolving a territorial conflict between two reps
- Identifying whitespace (ICP accounts with no active owner)

## Territory Design Framework

```
TERRITORY DESIGN PRINCIPLES:
  Coverage first: every ICP-qualified account must have a named owner
  Balance: territory value (potential ACV) should be within 20% across reps at same quota
  No overlap: two reps cannot own the same account; conflicts resolved by entity CEO within 5 days
  Quarterly review: check whitespace accounts; reassign inactive-rep accounts
  
ALLEVIO TERRITORY MODEL (geography + firmographic):
  Universe: Arizona employers (ICP: 75-500 employees; self-insured preferred; AZ-based)
  Territory dimensions:
    Geographic: county-based (Maricopa; Pinal; Pima; Yavapai; Mohave) or zip-code clusters
    Industry vertical: construction; manufacturing; professional services; distribution; healthcare admin
    Employer size band: 75-149 (small-mid); 150-300 (mid); 300-500 (large-mid)
    
  Territory assignment options:
    Option A (geographic): each rep owns 1-2 counties
    Option B (industry vertical): each rep owns 1-2 verticals statewide
    Option C (hybrid): primary by geography; secondary by vertical for large employers
    
  MBL current approach: determine with entity CEO based on headcount
  Capacity per AE: 75-100 active accounts; 30-40 in active pipeline; 15 meetings/week
  
  Whitespace identification:
    Monthly: export GHL Allevio employer contacts
    Accounts with no AE assigned + ICP Tier 1 or 2 → entity CEO assigns within 1 week
    
COLUMN6 TERRITORY MODEL (national; agency-based):
  Universe: media agencies with $500K+ annual CTV spend; any US geography
  Territory dimensions:
    Agency size: Tier 1 ($250K+ Column6 IO); Tier 2 ($50K-$250K); Tier 3 (new or <$50K)
    Geographic clustering: agencies concentrated in NY; LA; Chicago; Austin; Boston; Seattle
    
  Territory assignment:
    Geographic clustering option: NY/Boston (AE 1); LA/Chicago (AE 2); other markets (AE 3)
    OR: named-account model at Tier 1 (specific agencies named to each rep); Tier 2 and 3 by geography
    
  Named-account management:
    Tier 1 agencies: entity CEO and AE co-own the relationship; Dr. Lewis monitors quarterly
    Reassignment: if an AE leaves, entity CEO reassigns Tier 1 accounts immediately (not to backfill headcount)
    
HIVE TERRITORY MODEL (basin-based; not rep-based):
  HIVE acquisition is not a rep-coverage model; all deal sourcing goes through Dr. Lewis + Matt Mathison
  "Territory" = Uinta Basin (Duchesne County + Uinta County, UT)
  No rep territory assignments for HIVE; Dr. Lewis manages the acquisition pipeline
  
TERRITORY CONFLICT RESOLUTION:
  Definition: two reps claim the same account or lead
  Process: entity CEO reviews within 5 business days; decides based on:
    1. Which rep had first documented contact (GHL timestamp)
    2. Which rep has the stronger existing relationship
    3. Which rep's territory the account falls in by primary dimension
  Decision is final; GHL updated within 24 hours of decision
  
TERRITORY REBALANCING TRIGGERS:
  Rep attrition: departing rep's accounts → entity CEO assigns within 1 week
  New hire: new AE → pull 30-40 unowned ICP accounts from whitespace + adjust existing reps
  ICP expansion: new geography or size band → entity CEO distributes new accounts
  Imbalance >20% in territory value: semi-annual review triggers rebalance
  
TERRITORY DOCUMENTATION:
  Each rep's territory is documented in GHL as a filter set (saved view)
  Territory doc: SharePoint → [Entity] → Sales → Territories → [Rep Name] → [Year]
  Updated whenever territory changes (includes assigned accounts; geographic/vertical scope; quota)
```

## Output Format

```markdown
# Territory Plan — [Entity] | [Rep Name] | [Year]
**Entity CEO reviewed:** [Date] | **Quota:** $[X] | **Territory ACV potential:** $[X]

---

## Territory Scope
| Dimension | Assigned |
|-----------|---------|
| Geography | [Counties / Markets] |
| Industry vertical | [Verticals or "All"] |
| Size band | [Employee count range] |
| Named accounts (Tier 1) | [Names if applicable] |

---

## Account Universe
| Category | Count | Est. ACV |
|----------|-------|---------|
| ICP Tier 1 | [N] | $[X] |
| ICP Tier 2 | [N] | $[X] |
| Total territory potential | [N] | $[X] |

---

## Coverage Status
- Active in pipeline: [N] accounts
- Contacted in last 90 days: [N] accounts
- Not yet contacted: [N] accounts (whitespace)
- Recommended priority adds: [List top 3]
```

## Output Contract
- Every ICP Tier 1 account must have a named owner — the worst-case territory outcome is a Tier 1 account that could become a $100K ACV deal sitting in GHL unassigned; territory design's primary job is ensuring that doesn't happen; when a new Tier 1 account is discovered (inbound; referral; research), the entity CEO assigns it to a rep within 1 week; if no AE has capacity, the entity CEO temporarily owns the account until capacity is available; "unowned" is never an acceptable status for a Tier 1 account
- Territory value should be within 20% across peers — a rep carrying $2M in territory potential against a peer with $500K will either cherry-pick top accounts or burn out; territory design that is wildly unbalanced means quota assignment is also unbalanced; the 20% variance rule ensures that when the entity CEO sets consistent quotas, the territory can actually support them; Dr. Lewis reviews territory value balance at each semi-annual territory review and flags any rep who is more than 20% above or below the peer average
- HITL required: territory assignments → entity CEO approves before rep is given GHL access to their territory; territory conflict resolution → entity CEO decides; territory rebalance → entity CEO + Dr. Lewis review; new hire territory design → entity CEO final approval; Tier 1 account reassignment (rep departure) → entity CEO assigns immediately; territory value assessment → Dr. Lewis validates GHL data before presenting to entity CEO

## System Dependencies
- **Reads from:** GHL (Allevio employer contacts; Column6 agency contacts; account owner assignments; activity dates; territory filter sets); ICP universe (sales-icp-builder — Tier 1/2/3 account counts by territory); quota assignments (sales-quota-builder); pipeline data (sales-pipeline-review — active accounts by rep)
- **Writes to:** GHL (account owner field; territory filter saves); territory documentation (SharePoint → [Entity] → Sales → Territories → [Rep] → [Year]); entity CEO territory briefing (rebalance or conflict); conflict resolution records (decision + date)
- **HITL Required:** Territory assignments → entity CEO approves; conflict resolution → entity CEO decides; rebalance → entity CEO + Dr. Lewis review; new hire territory → entity CEO final approval; Tier 1 reassignment → entity CEO immediate; territory value review → Dr. Lewis validates data

## Test Cases
1. **Golden path:** New Allevio AE hired (AE 3). Territory design: entity CEO and Dr. Lewis review GHL whitespace. 340 Allevio ICP accounts in GHL with no owner. Tier 1 count (20-25 score): 42 accounts. Assign to AE 3: 15 Tier 1 accounts (Pinal County; Pima County; 150-300 employee band); 60 Tier 2 accounts (same geography). Territory potential: $1.8M ACV. Peer average: $1.6M and $2.0M → within 20% ✅. Entity CEO approves. GHL territory filter set created for AE 3. Territory doc written to SharePoint. AE 3 begins outreach.
2. **Edge case:** AE 1 and AE 2 both claim a 200-employee Scottsdale construction employer. AE 1: "I sent them an email 3 months ago." AE 2: "I had a phone call with their HR Director last week." → Entity CEO reviews: GHL shows AE 1 first contact (email; 3 months ago) but no activity for 45 days. AE 2 has a logged call with HR Director (last week). Decision: "AE 2 owns this account — AE 1 had first contact but no progress in 45 days; AE 2 has an active relationship. First contact doesn't preserve ownership indefinitely — if you don't work the account, you lose it." GHL ownership updated within 24 hours; both reps notified.
3. **Adversarial:** An AE asks to "own the entire 150-500 employee AZ employer market" without a filter → Dr. Lewis: "That territory is approximately 2,400 ICP accounts with $14M+ in potential ACV — that's 6-8 rep capacity at full quota. A single rep 'owning' that universe can never realistically contact it all, which creates whitespace that goes unworked while other reps have nothing to prospect. Territory ownership means active coverage, not a holding reservation. I'll work with the entity CEO to define a realistic territory for you — 75-100 accounts you can meaningfully cover at 15 contacts/week. The rest goes to your peers or the whitespace list for future headcount."

## Audit Log
Territory assignment records (all reps; scope; effective date; entity CEO approval; SharePoint). Conflict resolution records (incident; decision; GHL update; date). Rebalance records (trigger; old territory; new territory; entity CEO approval). Whitespace account records (unowned Tier 1/2 accounts; assignment date). Territory value assessment records (semi-annual; Dr. Lewis validation). New hire territory records.

## Deprecation
Territory model reviewed semi-annually and when headcount changes. ICP geography reviewed when Allevio's addressable market expands. Column6 agency territory reviewed when media agency landscape changes. HIVE territory reviewed when acquisition thesis changes.
