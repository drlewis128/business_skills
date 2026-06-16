---
name: hr-recognition-program
description: "Design or run employee recognition programs. Use when the user says 'employee recognition', 'recognize an employee', 'employee appreciation', 'reward an employee', 'recognition program', 'employee of the month', 'team recognition', 'spot bonus', 'recognize good work', 'employee awards', 'acknowledge performance', 'thank an employee', or 'celebrate a team win'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <design-program|recognize-employee|spot-bonus>] [--employee <name>] [--reason <reason>]"
---

# HR Recognition Program

Design and run employee recognition programs for MBL portfolio companies — structured ways to acknowledge and reward performance, effort, and THRIVE-aligned behavior. Recognition is one of the most cost-effective retention and engagement tools available: employees who feel recognized are more likely to stay, perform at higher levels, and advocate for the company to future candidates. Recognition that is genuine, specific, and timely works; generic, delayed, or formulaic recognition backfires.

## When to Use
- Designing a recognition program for a portfolio company from scratch
- Recognizing a specific employee for significant performance or THRIVE-aligned behavior
- Recommending a spot bonus for exceptional work
- Implementing a team celebration for a significant achievement
- Matt Mathison wants to acknowledge a specific employee or team
- A company has high engagement in some areas but employees report feeling unrecognized

## Recognition Framework

```
Recognition hierarchy — different mechanisms for different moments:

1. INFORMAL RECOGNITION (daily/weekly — free):
   - Manager verbal acknowledgment in 1:1: specific, behavioral ("You caught that billing error
     before it became a client issue — that's the attention to detail I'm looking for")
   - Team shout-out in team meeting: brief, specific, public
   - Written note from Dr. Lewis or CEO: 5 minutes to write; significant impact

2. FORMAL RECOGNITION (monthly/quarterly — low cost):
   - Monthly "THRIVE Spotlight": one employee per month recognized for a specific THRIVE-aligned
     behavior with a brief written description of what they did and why it matters
   - All-hands acknowledgment: public recognition in front of the full team
   - Quarterly "HUSTLE Award" (or other THRIVE value-named award): peer-nominated, CEO-presented

3. FINANCIAL RECOGNITION (as warranted — requires approval):
   - Spot bonus: $100-$500 for exceptional single contribution (Dr. Lewis approval)
   - Discretionary bonus: $500-$2,500 for sustained exceptional performance (Matt Mathison approval)
   - Merit increase: significant performance consistently above standard (annual review cycle)

4. MILESTONE RECOGNITION:
   - Work anniversaries: 1, 3, 5, 10 years — always acknowledged
   - Project completion: team celebration for major milestone
   - Personal milestones: work-appropriate acknowledgment (certification earned, etc.)

Recognition quality rules:
   - Specific, not generic: "You stayed late to catch the close error on Monday, which prevented 
     a client issue — that's Hustle." Not: "Great work this month."
   - Timely: within 48 hours of the behavior where possible
   - Proportionate: don't over-recognize routine work (dilutes impact); 
     don't under-recognize exceptional work (missed opportunity)
   - Consistent: not just for certain roles or personalities
```

## Output Format

### Recognition Program Design

```markdown
# Employee Recognition Program — <Company Name>
**Approved by:** Matt Mathison | **Effective:** [Date]
**Program owner:** Dr. John Lewis

---

## Recognition Tiers

| Tier | Name | Frequency | Value | Approver | Audience |
|------|------|----------|-------|---------|---------|
| 1 | Manager Verbal / Written | Daily / Weekly | $0 | Manager | Private / Team |
| 2 | THRIVE Spotlight | Monthly | $0 + company communication | Dr. Lewis | All-company |
| 3 | [HUSTLE Award / THRIVE Values Award] | Quarterly | [Gift card $50 / Experience] | CEO / Matt Mathison | All-hands |
| 4 | Spot Bonus | As warranted | $100-$500 | Dr. Lewis | Private + team note |
| 5 | Discretionary Bonus | As warranted | $500-$2,500 | Matt Mathison | Private |
| 6 | Work Anniversary | Annual | [Certificate + gift at 5/10yr] | CEO | All-company |

---

## THRIVE Spotlight (Monthly)

**Nomination:** Any employee can nominate; Dr. Lewis selects
**Criteria:** Specific behavior that exemplifies a THRIVE value in a meaningful way — not just "did their job"
**Format:** Written 3-5 sentence description of what the employee did and why it matters, named to the value
**Distribution:** Company all-hands, company email/chat, posted in [SharePoint / Slack / Teams]

**Example Spotlight:**
"[Name] — INTEGRITY: When [Name] discovered a billing discrepancy in our monthly close, she didn't move on and hope no one noticed. She stopped the close, traced the error back to its source, corrected it, and documented what happened to prevent it in the future. This is what integrity looks like in practice — doing the right thing when it would have been easier not to."

---

## Spot Bonus Process

1. Manager identifies exceptional contribution
2. Manager or Dr. Lewis documents: what happened, why it was exceptional, recommended amount
3. Dr. Lewis approves ($100-$500) or routes to Matt Mathison ($500+)
4. Delivered in next payroll or as a separate check
5. Brief team acknowledgment (with employee's permission) at team meeting

**Spot bonus budget:** [Per company: $[X]/year — tracked against HR budget]
**YTD spot bonuses:** $[X] / $[X] budget

---

## Work Anniversary Recognition

| Milestone | Recognition |
|---------|------------|
| 1 year | Personal note from CEO or manager; team acknowledgment |
| 3 years | Personal note; [small token gift] |
| 5 years | Personal note from Matt Mathison; [meaningful gift $[X]]; all-hands acknowledgment |
| 10 years | Personal note from Matt Mathison; [significant gift / experience $[X]]; company celebration |
```

### Individual Recognition

```markdown
# Recognition — <Employee Name>
**Company:** <Entity> | **Date:** <Date>
**Recognized by:** [Manager / Dr. Lewis / Matt Mathison]
**Recognition type:** [Verbal / Written / THRIVE Spotlight / Spot Bonus]
**Amount (if financial):** $[X] — approved by [Dr. Lewis / Matt Mathison]

---

## What They Did
[Specific, behavioral description — what exactly happened, when, and what the impact was]

## Why It Matters
[Connection to THRIVE value, company goal, or team impact — why this rises above routine performance]

## Recognition Language (for delivery)
"[Specific, personal recognition statement — written for the manager or Dr. Lewis to read or send directly]"
```

## Output Contract
- Recognition is specific and behavioral — "great job" is not recognition; it's noise; every recognition produced by this skill names the specific behavior (what the person did), the specific impact (what changed because they did it), and the THRIVE value it demonstrates; generic recognition quickly becomes meaningless and stops motivating
- Recognition reaches the right audience — informal recognition in a 1:1 is private and builds the individual relationship; team recognition builds team culture; all-company recognition amplifies the behavior you want more of; the skill matches the recognition level to the appropriate audience; over-publicizing minor recognition feels hollow; under-publicizing significant recognition misses the culture impact
- Spot bonuses are timely — a spot bonus for work done 3 months ago has significantly lower impact than one for work done last week; spot bonuses are processed in the next payroll after approval; the approval process is fast (Dr. Lewis authorizes up to $500 same day)
- Recognition is consistent across demographics — if recognition consistently goes to one gender, one role type, or one personality style, it signals who the company values and damages everyone else's engagement; Dr. Lewis monitors recognition patterns quarterly for consistency
- HITL required: Dr. Lewis approves all financial recognition ($100-$500 spot bonuses); Matt Mathison approves spot bonuses >$500 and all discretionary bonuses; Dr. Lewis selects monthly THRIVE Spotlight; CEO delivers quarterly THRIVE Values Award; Matt Mathison signs work anniversary notes at 5 and 10 years

## System Dependencies
- **Reads from:** Performance review records, manager input, employee nominations, THRIVE values framework, spot bonus budget tracking
- **Writes to:** THRIVE Spotlight (company communication channels), spot bonus processing (payroll), recognition record (SharePoint/HR/<Company>/Recognition/), anniversary calendar
- **HITL Required:** Dr. Lewis selects monthly Spotlight and approves spot bonuses ≤$500; Matt Mathison approves >$500 spot bonuses and all discretionary bonuses; CEO delivers quarterly award; Matt Mathison signs 5/10-year anniversary communications

## Test Cases
1. **Golden path:** Allevio bookkeeper catches a $12,000 duplicate payment in Bill.com before it is processed → Manager notified immediately; Dr. Lewis writes THRIVE Spotlight: "When [Name] was reviewing the AP queue last Thursday, she noticed an invoice number that matched one already paid two weeks prior. Rather than move on, she paused, confirmed the duplicate, removed the payment from the queue, and notified [CEO] and Dr. Lewis. That 15-minute investigation saved Allevio $12,000 and prevented a vendor dispute. This is INTEGRITY: doing the thorough, right thing when it would have been easier to just click approve."; Spotlight distributed company-wide via Teams; manager delivers verbal recognition same day; Dr. Lewis recommends $300 spot bonus (exceptional single contribution); approved and processed in next payroll; employee is told about the spot bonus privately before any public acknowledgment
2. **Edge case:** A manager wants to recognize an employee publicly but the employee is introverted and dislikes public attention → always ask before public recognition: "Before I mention your work at the all-hands, I want to check — are you comfortable with that? Some people prefer to be recognized privately. Either is fine with me." If they prefer private recognition, honor it; the recognition still happens, just in the format that works for the individual; forcing public recognition on someone who doesn't want it is counterproductive
3. **Adversarial:** A CEO says "we can't afford to pay spot bonuses right now — just tell people they're doing a great job" → the cash investment in recognition is low but the impact is disproportionate; however, verbal recognition is free and always available; address: "Verbal and written recognition costs nothing and has a significant impact when it's specific. The issue with 'just tell people they're doing a great job' is that it has to be specific to work. I can help you write 3-sentence THRIVE Spotlights for the employees doing exceptional work — these go out company-wide, cost nothing, and have real impact. The spot bonus is for truly exceptional single contributions; we can defer that until cash is better. But the written recognition program, we should do now."

## Audit Log
THRIVE Spotlight records retained by employee and date. Spot bonus approvals and amounts retained. Discretionary bonus approvals retained. Work anniversary acknowledgments retained. Recognition pattern analysis retained quarterly.

## Deprecation
Retire when portfolio companies have dedicated HR managers who own recognition program design and execution with automated anniversary reminders, peer recognition platforms, and budget-tracked spot bonus programs that don't require Dr. Lewis to design and approve each recognition touchpoint.
