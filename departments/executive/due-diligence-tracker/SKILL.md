---
name: due-diligence-tracker
description: "Track M&A due diligence workstreams, open items, and red flags. Use when the user says 'diligence tracker', 'due diligence status', 'DD checklist', 'diligence update', 'what's open in diligence', 'diligence red flags', or 'where are we in DD'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<deal-name> [--workstream <financial|legal|operational|technical>] [--stage <early|mid|late>]"
---

# Due Diligence Tracker

Track all due diligence workstreams for an M&A transaction, surface open items, escalate red flags, and produce the weekly DD status report for Matt Mathison.

## When to Use
- From LOI signing through closing (full diligence period)
- Weekly DD status update for Matt or IC
- Before a management presentation (what's outstanding)
- At the close of diligence (final issue list for reps & warranties)

## Standard Diligence Workstreams

### Financial Diligence
- Quality of earnings analysis
- Revenue recognition review
- Working capital normalization
- Customer concentration analysis
- Off-balance-sheet liabilities
- AR quality / collectability
- Historical financial statements (3 years)

### Legal / Structural Diligence
- Corporate formation documents
- Cap table / ownership verification
- Material contracts review
- IP ownership and assignments
- Pending or threatened litigation
- Employment agreements (key people)
- Government contracts / licenses

### Tax Diligence
- Tax returns (federal and state, 3 years)
- Open tax years / audits
- Tax attributes (NOLs, credits)
- State nexus assessment
- Transaction tax structure review (stock vs. asset)

### Operational Diligence
- Management team assessment
- Key employee retention risk
- Customer retention and satisfaction
- Supplier / vendor concentration
- Systems and technology assessment
- Facility and lease review

### IT / Technical Diligence (if tech-enabled)
- System architecture review
- Data security posture
- Cybersecurity vulnerabilities
- Tech debt assessment
- Integration feasibility with MBL systems

## Item Status Taxonomy
| Status | Meaning |
|--------|---------|
| ✅ Complete | Reviewed, no issues |
| ⚠️ Complete – Issue Found | Reviewed, red flag identified |
| 🔄 In Progress | Under review |
| ❌ Not Started | Not yet begun |
| 🚫 Blocked | Waiting on seller to provide |

## Output Format

```markdown
# Due Diligence Tracker — <Deal Name>
**Stage:** <stage> | **Exclusivity Expires:** <date> | **Target Close:** <date>
**Updated:** <date>

## Overall Progress
| Workstream | Complete | In Progress | Open | Flags |
|-----------|----------|-------------|------|-------|
| Financial | 8 | 3 | 2 | 1 |
| Legal | 5 | 4 | 6 | 2 |
| Tax | 3 | 1 | 1 | 0 |
| Operational | 4 | 2 | 3 | 1 |
| **Total** | 20 | 10 | 12 | 4 |

## Red Flags — Require Escalation
1. **Revenue concentration:** Top customer = 42% of revenue — above threshold for this deal size. Recommend: representation + key customer retention escrow.
2. **Pending litigation:** $350K claim filed Q1 2026 — not disclosed in data room. Require: full disclosure, legal opinion on merits.

## Blocked Items (Seller Not Providing)
| Item | Requested | Reminded | Escalate? |
|------|-----------|----------|-----------|
| Signed employment agreements | Jun 1 | Jun 8 | ⚠️ Yes |

## Open Items (This Week)
| # | Workstream | Item | Owner | Due |
|---|-----------|------|-------|-----|

## Decision Gate
Proceed to closing? ✅ Yes / ⚠️ Conditional (resolve flags first) / ❌ No (deal-breaker found)
```

## Output Contract
- Every red flag includes a specific recommended resolution (not just identification)
- Blocked items escalated after 5 business days without response
- "Proceed to close" gate is explicitly stated in every weekly update
- HITL required before any red flag response is sent to seller or IC

## System Dependencies
- **Reads from:** Diligence tracking log (provided), data room document tracker, red flag log
- **Writes to:** Nothing (outputs status and escalation recommendations)
- **HITL Required:** Matt Mathison + transaction counsel review before any closing decision

## Test Cases
1. **Golden path:** DD 80% complete, no red flags → clean progress report with open items and estimated close path
2. **Edge case:** Seller refuses to provide tax returns → flags as critical blocker, escalates with specific language to request via counsel
3. **Adversarial:** Hidden litigation discovered late in DD → immediately surfaces as potential deal-breaker, pauses close recommendation pending legal review

## Audit Log
DD tracker versioned weekly with open item counts and red flag history. Final closing diligence checklist retained as deal documentation.

## Deprecation
Retire when deal management platform (DealCloud, Ansarada) handles diligence tracking natively.
