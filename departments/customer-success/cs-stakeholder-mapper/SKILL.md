---
name: cs-stakeholder-mapper
description: "Map and manage customer stakeholder relationships for MBL portfolio company accounts. Use when the user says 'stakeholder map', 'stakeholder mapping', 'relationship map', 'who are the key contacts', 'account contacts', 'contact map', 'customer contacts', 'who do we know at this account', 'relationship depth', 'build relationships at this account', 'executive relationship', 'expand the relationship', 'multi-thread the account', 'multi-threading', 'account coverage', 'who do we need to know', 'key stakeholders', 'relationship coverage', 'account relationship plan', 'executive sponsor', 'identify champions', 'champion mapping', 'contact strategy', or 'who do we know'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--action <map|update|plan|report>]"
---

# CS Stakeholder Mapper

Map and manage customer stakeholder relationships for MBL portfolio company accounts — identifying who the key decision-makers and influencers are, how strong each relationship is, and where there are dangerous single points of failure (accounts where we know only one person). Relationship depth is one of the primary predictors of retention; accounts where we are known at only one level churn when that person leaves; accounts where we have relationships at multiple levels survive champion changes.

## When to Use
- Onboarding a new account (initial stakeholder mapping — build before kickoff call)
- A champion departs (urgent: identify the next relationship target immediately)
- Quarterly relationship audit (are we building depth at every Priority A and B account?)
- Renewal preparation (who will be in the renewal conversation, and are we known to them?)

## Stakeholder Mapping Framework

```
STAKEHOLDER CATEGORIES:

  CHAMPION: The person who bought us and advocates for us internally
    □ For Allevio: HR Director (signed the contract; manages the relationship daily)
    □ For Column6: Media buyer or Director of Media (runs the campaigns; talks to us weekly)
    □ For HIVE: The landowner or the landowner's representative (trust; LP; estate contact)
    Risk: If the champion leaves with no depth, the account is at risk immediately
    
  ECONOMIC BUYER: The person who controls the budget and ultimately says yes to renewal
    □ For Allevio: CFO or Controller (approves PMPM spend; signs off on renewal)
    □ For Column6: Agency leadership or brand marketing VP (owns the media budget)
    □ For HIVE: Same as champion for individual landowners; legal/estate for complex ownership
    Risk: If we're not known to the economic buyer, renewal can be blocked at the budget level
    
  EXECUTIVE SPONSOR: Senior-most ally — helps when there's a problem or an opportunity
    □ For Allevio: CEO or CFO (above the HR Director; valuable during escalations and renewals)
    □ For Column6: Agency president/CEO or brand CMO (for large accounts)
    □ For HIVE: N/A unless the landowner has an attorney or financial advisor who influences decisions
    Risk: Executive sponsors aren't required for every account — only Priority A and very large B
    
  INFLUENCER / END USER: People who use the service and form opinions about it
    □ For Allevio: Payroll team (processes payroll deductions — needs to be briefed); employees (members)
    □ For Column6: Agency traffickers and ad ops team (execute the campaigns; know our platform)
    □ For HIVE: Other family members or co-heirs who may have a stake in the lease decision
    Risk: An influential end user who has a negative experience can undermine the champion

RELATIONSHIP STRENGTH SCORING (1-5 for each contact):
  5: Warm; responsive; proactively reaches out; says positive things about us to others
  4: Good relationship; responds within 24-48 hours; positive attitude
  3: Neutral; responds but doesn't initiate; minimal emotional connection to the relationship
  2: Weak; slow to respond; relationship not yet established; new contact we haven't fully engaged
  1: Unknown or hostile; never engaged; or previously had a negative experience with us

RELATIONSHIP COVERAGE MODEL:
  Every Priority A account (>$150K ACV or strategic) must have:
    □ Champion: relationship strength ≥4
    □ Economic buyer: relationship strength ≥3
    □ Depth: ≥3 named contacts known to the CS team (across categories)
    
  Every Priority B account ($50-150K ACV) must have:
    □ Champion: relationship strength ≥4
    □ Economic buyer: at minimum known (relationship strength ≥2)
    □ Depth: ≥2 named contacts
    
  Priority C and D accounts:
    □ Champion: relationship strength ≥3
    □ One contact minimum

RELATIONSHIP BUILDING ACTIONS (when depth is insufficient):
  □ Champion only, no economic buyer known: Ask the champion at the next QBR:
      "I'd love to introduce myself to your CFO/Controller — would you be willing to
       make a brief introduction? I think it would be valuable for them to know who we are."
  □ New champion (prior one departed): Treat as a new account; build from scratch;
      immediate intro call; deliver the Year-to-date value story personally
  □ Competitor mentioned by an influencer (not the champion): Investigate;
      schedule a touchpoint with the influencer specifically
  □ Unknown executive sponsor: Use the QBR or a positive business moment to introduce Dr. Lewis or CEO
      as a "senior touchpoint" — not a sales call, a relationship call
```

## Output Format

```markdown
# Stakeholder Map — [Account Name] | [Entity]
**Account tier:** Priority A / B / C | **ACV:** $[X]K | **Last updated:** [Date]
**Coverage status:** Sufficient / At risk — [single point of failure / missing economic buyer / etc.]

---

## Contact Map

| Name | Title | Category | Relationship strength | Last contact | Notes |
|------|-------|---------|---------------------|-------------|-------|
| [Name] | HR Director | Champion | 4/5 | [Date] | Primary contact; strong advocate |
| [Name] | CFO | Economic buyer | 2/5 | Never | Need to establish — ask HR Director for intro |
| [Name] | Payroll Manager | Influencer | 3/5 | [Date] | Handles payroll deductions; satisfied |

---

## Relationship Risk Assessment

**Single point of failure:** Yes (Champion only) / No (≥2 relationships ≥3 strength)
**Economic buyer known:** Yes / No — [action to establish]
**Champion departure risk:** Low (stable) / Medium (new in role) / High (departure signals present)
**Coverage sufficient for renewal:** Yes / No — [gap and action]

---

## Action Plan

| Action | Target contact | Owner | Due date |
|--------|---------------|-------|---------|
| Intro to CFO at next QBR | CFO — [Name] | Dr. Lewis | [Date] |
```

## Output Contract
- Stakeholder maps are updated when relationships change — a stakeholder map that was built at onboarding and never updated is not a stakeholder map; it is a historical document; Dr. Lewis requires the CS rep to update the stakeholder map in CRM within 24 hours of learning of any contact change (champion departed; new contact identified; relationship strength changed); the stakeholder map is a live document, not a filing exercise
- Single points of failure are unacceptable in Priority A accounts — an account where we know only one person is one resignation away from being at risk; Dr. Lewis reviews Priority A stakeholder maps quarterly and requires multi-threading (≥3 named contacts) for every Priority A account; a CS rep who has been working a Priority A account for 6 months with only one contact is not doing complete CS
- Champion departures trigger an immediate response — when a champion departs, the clock starts: who is their replacement? Who owns the relationship until a new champion is identified? Dr. Lewis contacts every account where a champion departs within 24 hours to offer a re-introduction; the first call after a champion departure is the most important call of the year for that account
- HITL required: Dr. Lewis reviews stakeholder maps for all Priority A accounts quarterly; champion departure triggers an immediate Dr. Lewis notification; any new contact at an executive level (CFO; VP; CEO) is introduced to Dr. Lewis before the CS rep manages that relationship alone; stakeholder maps are used in renewal preparation — Dr. Lewis confirms that the renewal decision-maker is known before the renewal conversation begins

## System Dependencies
- **Reads from:** CRM contact records (GoHighLevel — all contacts associated with each account; last activity date; relationship notes); cs-health-score-tracker (relationship depth dimension — feeds back into the health score); onboarding notes (cs-onboarding-coordinator — who was on the kickoff call?); QBR attendance records (cs-qbr-preparer — who attended the last QBR?); sales discovery notes (cs-handoff-receiver — who did sales meet with during the close?)
- **Writes to:** Contact map (GoHighLevel CRM — contact records with category labels and relationship strength scores); stakeholder map document (SharePoint/CustomerSuccess/<Company>/StakeholderMaps/[Account]_StakeholderMap.pdf — updated quarterly); cs-health-score-tracker (relationship depth dimension score); cs-at-risk-responder (champion departure triggers at-risk protocol); renewal briefing (cs-renewal-coordinator — stakeholder coverage confirmed for renewal)
- **HITL Required:** Dr. Lewis reviews Priority A stakeholder maps quarterly; champion departure triggers immediate Dr. Lewis notification; Dr. Lewis introduces himself to new executive-level contacts at Priority A accounts; Dr. Lewis confirms renewal decision-maker is known before renewal conversation begins

## Test Cases
1. **Golden path:** Quarterly Priority A stakeholder map review — Allevio; 8 Priority A accounts; Dr. Lewis reviews each: 6 have ≥3 contacts and economic buyer relationship ≥3 (sufficient ✅); 1 has champion + payroll contact but CFO is unknown — coverage at risk; 1 has champion departed 2 months ago and new HR Director relationship is only 2/5 (at risk) → Dr. Lewis: "Account B: ask the HR Director at the next QBR for a CFO introduction. Account H: the new HR Director has been in place 2 months and we're at a 2/5 relationship — I'm calling her personally this week and running a dedicated value review. A champion change 2 months in with no relationship investment is a churn risk." Two actions assigned; both completed within 3 weeks; stakeholder maps updated
2. **Edge case:** Column6 — media buyer has been a strong champion (relationship 5/5) for 2 years; Dr. Lewis notices in her LinkedIn that she changed companies last week → Dr. Lewis (same day): "Our champion at [Agency] just left. This is an immediate action — not a next-week action. Who is covering for her? Is there a Director of Media we've spoken to? Pull the stakeholder map — if we only know her, we have a single point of failure situation and we need to fix it today. CS rep: call the agency main line today; ask for the Director of Media or whoever is covering [Name]'s accounts; introduce yourself; schedule a meeting this week. I'll call their agency president if we need to escalate." Agency contact identified within 2 hours; meeting scheduled; relationship with new buyer established within 2 weeks; no IO gap
3. **Adversarial:** A CS rep resists stakeholder mapping for a 3-year $95K account: "This account runs itself — I don't need a stakeholder map; the HR Director and I have been working together for 3 years" → Dr. Lewis: "I understand the relationship feels solid — and I'm sure it is. But 3 years of a single relationship is exactly when you need a stakeholder map. If the HR Director retires next year (not uncommon after 3 years in an HR Director role), who picks up the relationship? Does the CFO know us? Does the new HR Director (if that happens) know what we've built? A stakeholder map isn't about doubting the relationship — it's about building depth so the relationship doesn't depend entirely on one person's continued tenure. Pull the map; fill in what you know; identify one contact we don't have but should. One new contact per quarter is the standard." Rep builds the map; discovers the CFO has never been introduced; Dr. Lewis requests an intro at the next QBR; CFO relationship established; 12 months later, the HR Director transitions to part-time and the CFO becomes the primary contact — no disruption

## Audit Log
All stakeholder maps retained by account, entity, and update date. Champion departure alert records retained. Quarterly review records retained. Dr. Lewis executive-level introduction records retained. Renewal decision-maker confirmation records retained.

## Deprecation
Retire when each portfolio company has a CS platform that automatically tracks relationship strength from contact activity data — with Dr. Lewis reviewing the relationship coverage model quarterly and the CEO joining strategic relationship introductions for Priority A accounts.
