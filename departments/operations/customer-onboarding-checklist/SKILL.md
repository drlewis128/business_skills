---
name: customer-onboarding-checklist
description: "Run the customer onboarding checklist for a new client engagement. Use when the user says 'customer onboarding', 'client onboarding', 'onboard this client', 'new client setup', 'client onboarding checklist', 'how do we onboard X', or 'new customer setup'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<customer-name> [--type <enterprise|smb|portfolio-company>] [--entity <name>]"
---

# Customer Onboarding Checklist

Structured customer onboarding checklist to ensure new clients are set up for success from day one. Poor onboarding is the top driver of early churn.

## When to Use
- Any time a new client or customer relationship is initiated
- After a contract is signed (move immediately to onboarding)
- Post-acquisition of a company with new customer relationships to absorb
- When reviewing onboarding effectiveness (audit against this checklist)

## Onboarding Phases

### Phase 1 — Day 1 (Contract Signed → Kickoff)

**Administrative Setup**
- [ ] Welcome email sent (within 24 hours of contract signing)
- [ ] Client record created in CRM (GoHighLevel)
- [ ] Point of contact confirmed (both sides)
- [ ] Billing setup complete (invoice terms, billing contact, payment method)
- [ ] Portal or system access granted (if applicable)
- [ ] NDA / confidentiality confirmed (if not already in main agreement)

**Internal Setup**
- [ ] Account team assigned (owner, CSM if applicable)
- [ ] Client folder created (SharePoint / file system)
- [ ] Contract filed and key terms noted (see `contract-value-extraction`)
- [ ] Revenue recognition schedule created (see `revenue-recognition-monitor`)

### Phase 2 — Kickoff Meeting (Within 5-7 Business Days)

Agenda:
1. Introductions (both teams)
2. Review of goals and success criteria (what does success look like for the client?)
3. Timeline and milestones
4. Communication cadence (who talks to who, how often)
5. Escalation path (if something goes wrong, who do they call?)
6. Next steps (specific actions and owners)

**Kickoff deliverable:** Written project plan / delivery timeline shared within 48 hours of kickoff.

### Phase 3 — First 30 Days

- [ ] First deliverable or milestone completed
- [ ] Check-in call conducted (2-3 weeks in)
- [ ] Any scope ambiguity resolved
- [ ] Early win identified and communicated to client
- [ ] Any friction points addressed immediately

### Phase 4 — 30-90 Day Stabilization

- [ ] Regular cadence (QBR or regular check-in) established
- [ ] Success metrics tracked and reported
- [ ] Expansion conversation identified (if applicable)
- [ ] Reference / testimonial potential assessed

## Success Criteria for Onboarding

Onboarding is complete when:
1. Client is actively using the product/service
2. Client has a named escalation contact
3. First invoice paid
4. 30-day satisfaction check shows ≥ 4/5 satisfaction

## Output Format

```markdown
# Customer Onboarding — <Customer Name>
**Contract Signed:** <date> | **Kickoff Target:** <date> | **Entity:** <entity>
**Account Owner:** <name> | **Client Contact:** <name>

## Onboarding Status: Phase <N> — <phase name>
Overall: <N>/<total> checklist items complete

## Phase 1 — Administrative Setup
- [x] Welcome email sent (Jun 9, 2026)
- [x] CRM record created
- [ ] Billing setup — PENDING (awaiting client payment method)

## Phase 2 — Kickoff
**Kickoff scheduled:** <date>
[pre-kickoff checklist]

## Blockers
1. Billing not set up — blocks first invoice. Action: Finance to contact <name> by <date>

## 30-Day Success Target
<Specific milestone that will confirm onboarding is on track>
```

## Output Contract
- Kickoff scheduled within first week — never left as "TBD"
- Every item has a status and owner
- Blockers always surfaced with specific action and deadline
- HITL required before any client communication is sent

## System Dependencies
- **Reads from:** Contract details, client contact information (provided)
- **Writes to:** CRM (GoHighLevel) client record and tasks (with HITL)
- **HITL Required:** Account owner reviews all client communications before sending

## Test Cases
1. **Golden path:** Enterprise client signed → complete onboarding plan with kickoff scheduled, admin setup done within 24 hours
2. **Edge case:** Client unresponsive after contract signing → flags as risk, recommends executive escalation if no response within 5 business days
3. **Adversarial:** Onboarding skipped in favor of "just delivering" → flags that skipping onboarding increases churn risk, documents risk acceptance if overridden

## Audit Log
Onboarding checklists retained by client and date. 30-day satisfaction scores documented.

## Deprecation
Retire when CRM (GoHighLevel) provides automated onboarding workflow with task assignment and tracking.
