---
name: stakeholder-mapping-cs
description: "Map the stakeholders at a customer account from a CS perspective. Use when the user says 'who are the stakeholders', 'map the account contacts', 'stakeholder map', 'who do we know at this account', 'relationship map', 'who is the champion', or 'CS contact mapping'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--depth <basic|full>]"
---

# Stakeholder Mapping (CS)

Map the key stakeholders at a customer account from a Customer Success perspective. Most CS teams know their champion and forget everyone else. The champion leaves, and the relationship collapses. Stakeholder mapping builds relationship redundancy before it's needed.

## When to Use
- At-risk account where the champion is the only relationship
- New CSM taking over an account
- Champion departure — who else do we know?
- Account plan update (quarterly)
- Before an executive sponsor call — who is on the customer side?

## Stakeholder Roles in CS

| Role | Description | CS Relationship Priority |
|------|-------------|------------------------|
| **Economic Buyer** | Controls budget; approves renewal | Required for renewals; exec sponsor contact |
| **Champion** | Our internal advocate; drives adoption | Primary relationship — most important |
| **Day-to-Day User** | Uses the product most; provides product feedback | Regular check-ins; training; adoption |
| **Technical Contact** | IT/integration; handles implementation | Implementation and support escalations |
| **Potential Detractor** | Could block renewal or expansion | Understand their concerns; address proactively |
| **New Stakeholder** | Recently joined; not yet aligned | Onboard quickly; don't let them become a risk |

## Relationship Strength Ratings

| Rating | Meaning |
|--------|---------|
| 🟢 Strong | Active, positive, engaged — advocates for us |
| 🟡 Neutral | Engaged but no strong opinion; could go either way |
| 🟠 Lukewarm | Disengaged or passively dissatisfied |
| 🔴 Risk | Actively dissatisfied or against the relationship |
| ⬜ Unknown | No relationship established yet |

## Output Format

```markdown
# Stakeholder Map — <Account>
**Entity:** <MBL entity> | **CSM:** <name> | **Date:** <date>

---

## Stakeholder Overview

| Name | Title | Role | Relationship | How We Engage | Last Contact |
|------|-------|------|-------------|--------------|-------------|
| <Name> | CTO | Champion | 🟢 Strong | Monthly calls, QBR | <date> |
| <Name> | CFO | Economic Buyer | 🟡 Neutral | Annual exec review | <date> |
| <Name> | Director of Ops | Day-to-Day User | 🟢 Strong | Weekly check-in | <date> |
| <Name> | VP IT | Technical Contact | 🟠 Lukewarm | Support tickets only | <date> |
| <Name> | New: Head of Finance | Unknown — recently promoted | ⬜ Unknown | Not yet contacted | — |

---

## Relationship Depth Assessment

**Strongest relationship:** <Name (Champion)> — Active advocate; the account is champion-dependent.
**Weakest link:** <Name> — Never engaged directly; only know through support tickets.
**Missing relationships:** Economic buyer not engaged in 9 months — renewal risk.
**New stakeholder risk:** <Name> joined 30 days ago and doesn't know us — engage within 2 weeks.

---

## Relationship Redundancy

**Is this account champion-dependent?** Yes / No
**If the champion left tomorrow, who else knows us?** <Name(s) or "No one — critical gap">
**Recovery plan if champion departs:** [Specific — immediate outreach to economic buyer + introduce to day-to-day user]

---

## Engagement Actions

| Stakeholder | Action | Reason | Owner | Due |
|------------|--------|--------|-------|-----|
| CFO (Economic Buyer) | Executive sponsor call | Not engaged in 9 months; renewal in 4 months | Dr. Lewis | <date> |
| New Head of Finance | Introduction call | New stakeholder; unknown relationship | CSM | <date> |
| VP IT | Technical check-in | Low engagement; only appears in support | CSM | <date> |

---

## Internal Contact Details

| Name | Email | Phone | Preferred Contact | Notes |
|------|-------|-------|-----------------|-------|
| <Name> | <email> | <phone> | Email | Best to CC their EA for meeting scheduling |
```

## Output Contract
- Champion-dependency always assessed — single-relationship accounts are a churn risk
- New stakeholders always flagged within 30 days of joining
- Missing relationships always identified with engagement action
- HITL required: Dr. Lewis reviews stakeholder maps for strategic accounts quarterly; exec sponsor updates required after any key stakeholder change

## System Dependencies
- **Reads from:** CRM contact records, CSM notes, LinkedIn (provided)
- **Writes to:** Nothing (map for HITL review and CSM relationship planning)
- **HITL Required:** CS Manager reviews stakeholder maps for at-risk accounts; Dr. Lewis reviews for strategic accounts > $100K

## Test Cases
1. **Golden path:** 5-person stakeholder map for a $90K ACV account → champion (strong), economic buyer (neutral, 9 months no contact), 2 day-to-day users (strong), 1 new stakeholder (unknown), 3 specific engagement actions
2. **Edge case:** CSM only knows one contact at the account → flags critical relationship gap, creates specific plan to map additional stakeholders within 30 days, recommends champion asks for intro to economic buyer
3. **Adversarial:** Request to skip stakeholder mapping because "the champion handles everything" → builds the map anyway, flags single-point-of-failure risk, demonstrates that champion departure without a map is a churn-risk scenario

## Audit Log
Stakeholder maps retained by account and date. Contact changes tracked in CRM.

## Deprecation
Retire when CRM provides integrated stakeholder mapping with relationship strength scoring and automated alerts for new or departing contacts.
