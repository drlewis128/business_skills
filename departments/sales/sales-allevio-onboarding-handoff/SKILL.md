---
name: sales-allevio-onboarding-handoff
description: "Manage the Allevio employer onboarding handoff from sales to implementation. Use when the user says 'Allevio onboarding', 'onboarding handoff', 'onboarding process', 'onboarding checklist', 'new employer onboarding', 'employer onboarding', 'implementation handoff', 'Allevio implementation', 'go-live', 'go live date', 'Allevio go-live', 'employer go-live', 'onboarding kickoff', 'kickoff call', 'Allevio kickoff', 'census collection', 'census process', 'employee census', 'enrollment start', 'open enrollment', 'employee communication', 'benefits communication', 'Allevio launch', 'employer launch', 'onboarding timeline', 'implementation timeline', 'onboarding checklist', '30-60-90', '30 60 90 check-in', 'onboarding check-in', 'new customer handoff', 'new employer handoff', 'sales to CS', 'sales to implementation', 'AE handoff', 'rep handoff', or 'welcome call'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--employer <name>] [--go-live <date>] [--stage <kickoff|census|enrollment|live|30day|60day|90day>]"
---

# Sales Allevio Onboarding Handoff

Manage the Allevio employer onboarding handoff from sales to implementation — ensuring every newly signed Allevio employer transitions to the implementation team with complete information, correct HIPAA-compliant census handling, and a clear timeline to go-live. The 45-day onboarding window between contract signature and go-live is the highest-risk period in the employer relationship: if onboarding is sloppy, the employer doubts the purchase before the first employee walks through the door.

## When to Use
- Contract is signed and implementation begins (day 1 post-signature)
- Scheduling and running the kickoff call with the employer
- Managing the census collection and enrollment process
- Checking in at 30/60/90 days post-go-live

## Allevio Onboarding Framework

```
ONBOARDING TIMELINE (standard: 45 days contract-to-go-live):
  Day 0: Contract signed (both parties); entity CEO countersigned
  Day 1: AE sends census request email to HR Director; notifies implementation team
  Day 1-3: Implementation lead assigned; AE completes handoff document
  Day 5: Kickoff call (AE + implementation lead + HR Director; CFO optional)
  Day 5-10: Census returned by HR Director; implementation team receives and processes
  Day 10-15: Employee enrollment communication plan drafted (employer reviews + approves)
  Day 20: Enrollment portal opens for employees
  Day 20-35: Open enrollment period for employees
  Day 35: Enrollment closes; final enrolled headcount confirmed
  Day 40: First billing: PMPM × enrolled count
  Day 45: Go-live (employees have clinical access)
  
CENSUS HANDLING — HIPAA COMPLIANCE:
  Census content: employee name; date of birth; ZIP code; gender (minimum required by Allevio clinical system)
  Census = PHI from the moment it's associated with Allevio's clinical program
  
  CENSUS MUST NOT:
    Be stored in GHL (GHL is sales CRM; not PHI-compliant for clinical data)
    Be emailed to the AE's inbox without immediate transfer to implementation team
    Be accessed by the AE beyond confirming receipt and forwarding
    Be opened and reviewed by the AE for "completeness"
    
  CENSUS MUST:
    Be received by the implementation team's secure intake process (entity CEO specifies the method)
    Be handled under the BAA that was signed as part of the MSO agreement
    Be processed in Allevio's clinical system — not in GHL, SharePoint (unless approved PHI-compliant folder), or email
    
  If AE receives census via email:
    1. Do not open the attachment
    2. Forward to implementation team immediately using secure transfer method (entity CEO specifies)
    3. Notify Dr. Lewis and entity CEO that census was received by AE (near-miss HIPAA event)
    4. Log near-miss
    5. Delete from AE email after confirmed handoff
    
KICKOFF CALL STRUCTURE (30 minutes; Day 5):
  Attendees: AE; implementation lead; HR Director; CFO optional
  
  Agenda:
    1. Introductions (5 min): AE introduces implementation lead; transition ownership explained
    2. Timeline confirmation (5 min): walk through 45-day timeline; confirm go-live date
    3. Census and enrollment (5 min): confirm census status; explain enrollment communication plan
    4. Employee communication (5 min): review the communication package Allevio provides;
       employer customizes with their branding/voice; employer sends to employees
    5. Questions and next steps (10 min): open Q&A; confirm HR Director's day-to-day contact at Allevio
       
  Key message: AE is transitioning to support role; implementation lead is new primary contact
  AE role post-kickoff: relationship touchpoints (month 3, month 6, month 10 renewal conversation)
  
EMPLOYEE COMMUNICATION PACKAGE (implementation team provides; AE reviews for tone):
  Launch email: Allevio provides template; employer customizes; employer sends to all employees
  FAQ document: common employee questions answered
  Enrollment instructions: how to sign up; how to schedule first appointment
  HIPAA note in all communications: employees have control over their own health information; Allevio is an employer benefit, not an employer surveillance tool
  AE reviews for tone alignment with the employer's communication style (learned in discovery)
  
30/60/90 CHECK-INS (AE-led; brief relationship touchpoints):
  Day 30 check-in: email to HR Director
    "How's the first month going? Any employee questions we can help address?"
    Review: enrollment rate (implementation team provides aggregate count; no individual data)
    Flag any issues to implementation team for resolution
    
  Day 60 check-in: 15-minute call with HR Director
    "We're about halfway through year 1 — how is the benefit landing with employees?"
    Begin preparing the CFO conversation at month 10 (how to frame Year 1 aggregate outcomes)
    
  Day 90 check-in (3-month milestone): 20-minute call with HR Director + entity CEO awareness
    Implementation team provides aggregate outcomes report (utilization; access metrics; employer-level cost trend if available)
    HIPAA: aggregate outcomes only (no individual employee data)
    AE prepares CFO summary: what Year 1 outcomes will look like if trend continues
    
RENEWAL PREPARATION (month 10 — 2 months before auto-renewal):
  AE initiates renewal conversation (not the implementation team)
  Meeting: HR Director + CFO (CFO for renewal decision)
  Content: Year 1 aggregate outcomes; cost trend vs. status quo trend; Year 2 forecast
  Goal: auto-renew (12-month minimum) or negotiate multi-year agreement
  Non-renewal: if employer signals intent not to renew, entity CEO informed immediately; 90-day notice clause applies
```

## Output Format

```markdown
# Allevio Onboarding Tracker — [Employer Name] | [Date]
**Contract signed:** [Date] | **Go-live target:** [Date] | **Enrolled employees:** [TBD/N]
**Implementation lead:** [Name] | **HR Director:** [Name, email] | **Entity CEO aware:** ✅

---

## Onboarding Checklist
| Step | Due date | Status | Owner |
|------|---------|--------|-------|
| Census request sent | [Day 1] | ✅/⏳/❌ | AE |
| Handoff document completed | [Day 1-3] | ✅/⏳/❌ | AE |
| Census received by impl. team | [Day 5-10] | ✅/⏳/❌ | Impl. team |
| Kickoff call completed | [Day 5] | ✅/⏳/❌ | AE + Impl. team |
| Employee comm. approved | [Day 10-15] | ✅/⏳/❌ | HR Director |
| Enrollment opens | [Day 20] | ✅/⏳/❌ | Impl. team |
| Go-live | [Day 45] | ✅/⏳/❌ | Impl. team |

---

## HIPAA Status
- Census received by: [Impl. team / AE (near-miss)] | Date: [Date]
- BAA confirmed: ✅/❌ (required before go-live)
- GHL HIPAA check: ✅ No PHI in GHL records

---

## Post-Go-Live Check-In Schedule
| Check-in | Type | Target date | Status |
|---------|------|------------|--------|
| Day 30 | Email | [Date] | Scheduled/Pending |
| Day 60 | Call | [Date] | Scheduled/Pending |
| Day 90 | Call + outcomes report | [Date] | Scheduled/Pending |
| Month 10 | Renewal meeting | [Date] | Scheduled/Pending |
```

## Output Contract
- The AE is not in the clinical data path — ever; this is restated in onboarding because the onboarding moment is when the AE is most tempted to "just take a quick look at the census to make sure it's complete" before handing off; the AE's job in onboarding is to initiate the census request and confirm that the implementation team received it; the AE is not a HIPAA-trained clinical data handler; their email is not a BAA-covered system; if the AE touches the census beyond confirming receipt and forwarding, they have handled PHI outside the BAA — a HIPAA violation; Dr. Lewis enforces this as an absolute rule with no exceptions; the implementation team owns census data from the moment it's received; any AE who receives and opens census data is counseled immediately and the event is logged
- The 30/60/90 check-in schedule is the AE's tool to catch onboarding issues before they become churn — a newly onboarded employer who hasn't been contacted in 60 days is a silent churn risk; the 30-day check-in catches early enrollment issues (employees confused about how to sign up; HR Director overwhelmed with questions); the 60-day check-in catches mid-year drift (benefit isn't being used; HR Director starting to wonder if it was worth it); the 90-day check-in is the first opportunity to show the CFO aggregate outcomes data and reinforce the cost trend story; reps who skip these check-ins lose renewal conversations because the employer doesn't feel like a partner — they feel like a contract that was signed and forgotten; Dr. Lewis tracks check-in completion in GHL monthly
- HITL required: census received by AE (near-miss) → Dr. Lewis + entity CEO notified immediately; BAA confirmation → entity CEO confirms before go-live (no clinical data flows without signed BAA); kickoff call → AE + implementation lead both on call (AE cannot handoff solo); 30/60/90 outcomes reports → implementation team provides aggregate data only (no individual employee data); renewal meeting → entity CEO may attend for employers >$100K ACV or multi-year renewal; non-renewal signal at month 10 → entity CEO notified immediately; onboarding delay >2 weeks → entity CEO + Dr. Lewis review

## System Dependencies
- **Reads from:** Signed contract (SharePoint → Allevio → Contracts → [Employer]); GHL (employer record; champion; economic buyer; commitments made in sale); implementation team assignment (entity CEO designates lead); census request template (implementation team); employee communication templates (implementation team provides; AE reviews); 30/60/90 outcomes reports (implementation team provides aggregate employer data)
- **Writes to:** Onboarding tracker (SharePoint → Allevio → Onboarding → [Employer] → [Date]); GHL (onboarding milestones; kickoff date; go-live date; check-in dates; renewal month 10 date); entity CEO implementation notification (contract signed; go-live date; implementation lead); HIPAA near-miss log (if AE receives census); 30/60/90 check-in records; renewal preparation records (month 10)
- **HITL Required:** AE receives census (near-miss) → Dr. Lewis + entity CEO immediate; BAA confirmation before go-live → entity CEO; kickoff call → AE + implementation lead; outcomes reports → implementation team aggregate only; renewal meeting >$100K ACV → entity CEO may attend; non-renewal → entity CEO immediate; onboarding delay >2 weeks → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Contract signed June 15 (140 employees; ACV $108,000/year). Day 1: AE sends census request to Amanda HR Director; notifies implementation lead (Maria). Day 3: handoff document completed. Day 5: Kickoff call — AE, Maria, Amanda. Timeline confirmed; go-live July 30. Day 8: Amanda sends census (140-record spreadsheet). Amanda emails attachment to AE → AE does NOT open attachment; immediately forwards to Maria at implementation intake email; notifies Dr. Lewis ("Census received via AE email; forwarded to Maria without opening; near-miss logged"). Dr. Lewis confirms: near-miss logged; implementation team handling correctly; reminder sent to Amanda: "For future census updates, please send directly to [implementation intake email]." Day 10: Maria processes census. Day 20: enrollment portal opens. Day 35: 97 employees enrolled (69%). Day 45: go-live ✅. Day 75: 30-day check-in — Amanda: "Employees love same-day access. Two were confused about booking; Maria helped." Day 90 (Month 3): call — 91% utilization rate in month 2; positive. AE prepares CFO summary for month 10.
2. **Edge case:** Implementation is delayed — HR Director hasn't returned the census by Day 10 (promised by Day 5-10). Go-live timeline at risk → Dr. Lewis coaching: "(1) AE reaches out to Amanda: 'Hi Amanda — we need the census by [date] to stay on track for [go-live date]. Can I help remove any barriers?' (2) If delay is >2 weeks: entity CEO + Dr. Lewis informed; potential go-live date adjustment; entity CEO may reach out to the employer to underscore the timeline importance; (3) If delay is due to HR Director needing to compile data: implementation team can guide Amanda on the minimum required fields (name; DOB; ZIP; gender) vs. optional enhanced fields; (4) Go-live date adjusted in GHL; billing start date adjusted accordingly. First billing is always based on confirmed enrolled count — not the census count."
3. **Adversarial:** HR Director asks "Can I share the census with just you [AE] first for a quick review, and then you pass it on?" → Dr. Lewis coaching for AE response: "Amanda, I appreciate the thought — but for your employees' privacy, I need to keep the census out of my hands entirely. The right process is to send it directly to our implementation team's secure intake [provide email/method]. They're the HIPAA-trained team that handles this data. If you'd like to do a quick review of the format before sending, I can share the census template with you so you can confirm your file matches our requirements — but the actual employee data goes directly to the implementation team. This protects you and your employees. Can I send you the template and the direct submission instructions right now?"

## Audit Log
Onboarding tracker records (all employers; all milestones; SharePoint → Allevio → Onboarding). Census handling records (how received; by whom; forwarding date; near-miss log). BAA confirmation records (entity CEO; go-live date). Kickoff call records (date; attendees; timeline confirmed). Go-live records (actual go-live date vs. planned). 30/60/90 check-in records (date; outcome; GHL). Renewal preparation records (month 10; attendees; outcome). Non-renewal records (employer; notice date; entity CEO notification; 90-day notice clock).

## Deprecation
Onboarding timeline reviewed annually against go-live speed benchmarks. Census handling process reviewed when HIPAA guidance changes or Allevio's clinical data intake changes. Employee communication templates reviewed when Allevio's service offering changes. 30/60/90 check-in content reviewed when Year 1 outcome benchmarks change. Renewal process reviewed when Allevio's contract terms or auto-renewal policy changes.
