---
name: board-minutes-drafter
description: "Draft board meeting minutes and member/manager resolutions. Use when the user says 'board minutes', 'meeting minutes', 'draft minutes', 'board resolution', 'manager consent', 'member consent', 'written consent in lieu of meeting', 'unanimous written consent', or 'document board decision'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <minutes|resolution|consent>] [--topic <acquisition|hire|contract|equity|financing>]"
---

# Board Minutes Drafter

Draft board meeting minutes and member/manager resolutions for MBL portfolio companies. Meeting minutes are the official record of corporate decisions — they establish who was present, what was discussed, what was decided, and who voted. A resolution or written consent documents authority for specific actions (contracts, hires, financing) without a meeting. Both are essential for corporate governance and M&A due diligence.

## When to Use
- After a board or member/manager meeting
- When a major business decision needs formal documentation
- Approving a significant contract (above threshold in operating agreement)
- Authorizing an executive hire or compensation package
- Approving financing, M&A, or equity issuance
- Written consent in lieu of meeting (most common for LLCs)

## Output Format — Board Meeting Minutes

```markdown
# Minutes of the Meeting of the Board of Managers
## <Entity Name>
**Date:** <date>
**Time:** <start time> — <end time>
**Location:** <physical address or "conducted via videoconference">
**Meeting called by:** <name, role>

---

## Managers Present

| Name | Title | Present? |
|------|-------|---------|
| Matt Mathison | Managing Partner | ✅ |
| Dr. John Lewis | Director | ✅ |
| [Name] | [Title] | ✅ |

**Quorum:** Quorum present — <N> of <N> managers.

**Also present:** [Outside counsel, guest speakers, etc.]

---

## Call to Order

The meeting was called to order at <time> by <presiding manager>.

---

## Agenda

1. [Item 1]
2. [Item 2]
3. [Action item / vote]

---

## Discussion and Actions

### 1. [Agenda Item]
<summary of discussion — factual, no attribution required for informal comments>

**Motion:** <description of motion>
**Vote:**
- For: <names or unanimous>
- Against: None
- Abstaining: None

**Resolution: APPROVED**

---

### 2. [Next Agenda Item]
...

---

## Adjournment

There being no further business, the meeting was adjourned at <time>.

---

**Minutes prepared by:** Dr. John Lewis / Outside Counsel
**Date prepared:** <date>

---

**ATTESTATION**

The undersigned, being the <Secretary / Managing Member> of <Entity Name>, hereby certifies that the foregoing minutes accurately reflect the proceedings of the above-referenced meeting.

_________________________________
<Name>
<Title>
<Entity Name>
**Date:** <date>
```

## Output Format — Written Consent / Resolution (No Meeting)

```markdown
# Written Consent of the Manager(s)/Member(s) of <Entity Name>
**Effective Date:** <date>

---

The undersigned, constituting all of the Manager(s)/Member(s) of <Entity Name>, an Arizona limited liability company (the "Company"), acting pursuant to the Company's Operating Agreement, hereby consent to, approve, and adopt the following resolutions without a meeting:

---

## Resolution 1 — [Subject]

**WHEREAS,** <recital — background and purpose>;

**WHEREAS,** <additional context if needed>;

**NOW, THEREFORE, BE IT RESOLVED,** that the Company hereby authorizes and approves <specific action — be precise: dollar amounts, party names, effective dates>;

**FURTHER RESOLVED,** that the Managing Member(s) of the Company are hereby authorized to take all necessary or appropriate actions to carry out and effectuate the foregoing resolution, including executing and delivering any and all agreements, instruments, or other documents as may be necessary or appropriate;

**FURTHER RESOLVED,** that any and all actions previously taken by the Managing Member(s) in connection with the matters set forth in the foregoing resolution are hereby ratified, confirmed, and approved.

---

**IN WITNESS WHEREOF,** the undersigned have executed this Written Consent as of the date first set forth above.

**MANAGERS / MEMBERS:**

_________________________________
<Name>
<Title>
<Entity Name>

_________________________________
<Name>
<Title>
<Entity Name>
```

## Resolution Templates by Topic

```
CONTRACT APPROVAL:
  RESOLVED, that the Company is authorized to enter into that certain
  [Agreement Name] dated [date], between the Company and [Counterparty],
  substantially in the form presented at this meeting, and that the
  Managing Member is authorized to execute and deliver such agreement
  on behalf of the Company.

EXECUTIVE HIRE:
  RESOLVED, that the Company is authorized to employ [Name] as [Title]
  effective [date], at an annual compensation of $[amount], plus [benefits],
  pursuant to the terms of the Employment Agreement, substantially in the
  form presented at this meeting.

FINANCING:
  RESOLVED, that the Company is authorized to borrow up to $[amount]
  from [Lender], pursuant to the terms of the [Loan Agreement] dated
  [date], and the Managing Member is authorized to execute all documents
  required in connection therewith, including but not limited to promissory
  notes, security agreements, and UCC financing statements.
```

## Output Contract
- Resolutions always drafted with specific dollar amounts, party names, and effective dates — vague resolutions create enforcement problems
- Written consents always include ratification language — retroactively documents prior action where resolution was done after the fact
- Minutes always include quorum confirmation — actions taken without quorum are void
- Sensitive personnel discussions in minutes kept factual and brief — minutes are discoverable; don't put attorney-client privileged analysis in minutes
- HITL required: Dr. Lewis reviews draft minutes/resolutions; Outside counsel provides legal form; Matt Mathison (or designated managing member) signs; signed originals retained in corporate records

## System Dependencies
- **Reads from:** Operating agreement (for authority and signature requirements), meeting notes or agenda (provided by Dr. Lewis or outside counsel)
- **Writes to:** Minutes and resolution documents (for signature by managing member, then to corporate records)
- **HITL Required:** Outside counsel reviews and finalizes; Matt Mathison signs; signed originals to SharePoint/legal drive

## Test Cases
1. **Golden path:** Board meeting minutes for Allevio manager approval of $250K IT services contract → minutes drafted with all 3 managers present (quorum), motion to approve vendor contract, unanimous approval, attestation signed by Managing Member; filed in Allevio corporate records
2. **Edge case:** Decision needs documentation but meeting already happened 30 days ago → written consent with retroactive effective date and ratification language; review with outside counsel for the specific jurisdiction
3. **Adversarial:** Manager wants minimal minutes that omit the fact that one manager abstained on a conflict-of-interest vote → minutes must accurately reflect the vote — accurate documentation protects the non-conflicted managers and the entity; omitting the abstention creates a governance record problem

## Audit Log
All minutes and resolutions retained in corporate records permanently (or per jurisdiction requirements). Copies stored in entity-specific SharePoint folder.

## Deprecation
Retire when entity deploys a board management platform with integrated minutes creation and e-signature workflow.
