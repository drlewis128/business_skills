---
name: ops-allevio-member-experience
description: "Track and improve Allevio member experience and satisfaction. Use when the user says 'member experience', 'member satisfaction', 'member NPS', 'member feedback', 'member complaints', 'member issues', 'member complaints', 'member retention', 'member churn', 'member dis-enrollment', 'member services', 'member support', 'member communication', 'member engagement', 'member engagement score', 'member portal', 'member app', 'member onboarding experience', 'member experience score', 'patient experience', 'patient satisfaction', 'patient complaints', 'patient feedback', 'patient retention', 'patient churn', 'employer retention', 'why did a member leave', 'why did an employer leave', 'GRR driver', 'retention driver', 'member experience data', 'member survey', 'satisfaction survey', 'net promoter score', or 'what are members saying'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--metric <nps|satisfaction|complaints|engagement|retention>] [--segment <all-members|specific-group|leavers>] [--action <measure|analyze|respond|improve>] [--period <monthly|quarterly|annual>]"
---

# Ops Allevio Member Experience

Track and improve Allevio member experience — measuring satisfaction through NPS and complaint data, identifying the experience gaps that drive member dis-enrollment and employer GRR deterioration, and designing improvement initiatives that turn member experience into a competitive advantage. Member experience is the leading indicator for employer group GRR: an employer group whose members are complaining about access, billing, or care quality is an employer group that is at renewal risk; an employer group whose members are actively recommending Allevio to colleagues is an employer group that is likely to renew and refer. Dr. Lewis tracks member experience data as a GRR risk signal — not to manage member experience day-to-day (that's the Allevio CEO's domain), but to ensure Matt Mathison has early warning when member experience trends are moving the wrong direction.

## When to Use
- Quarterly member experience review
- An employer group's NPS or satisfaction score drops materially
- Member complaint volume spikes
- A member or employer threatens to dis-enroll
- Pre-QBR preparation (member experience KPIs)

## Member Experience Framework

```
MEMBER EXPERIENCE KPIs (tracked monthly; reported quarterly):

  NET PROMOTER SCORE (NPS):
    Target: ≥45 (healthcare SMO benchmark: 30-40; above is excellent)
    Measurement: quarterly survey to all enrolled members
    Survey: "On a scale of 0-10, how likely are you to recommend Allevio to a friend or colleague?"
    NPS = % Promoters (9-10) - % Detractors (0-6)
    Action: NPS <30 → Allevio CEO root cause analysis within 30 days
    
  MEMBER COMPLAINT RATE:
    Target: <2% of enrolled members generate a formal complaint per quarter
    Tracking: complaints logged in AdvancedMD support module or ticketing system
    Categories: billing disputes; access/scheduling; care quality; communication; coverage confusion
    Complaint resolution target: 80% resolved within 5 business days
    
  MEMBER RETENTION RATE:
    Individual member retention ≠ employer group GRR
    Members leave within a group for legitimate reasons (job changes; life events)
    Track: voluntary dis-enrollment rate (members who leave without an employer-side reason)
    Target: voluntary dis-enrollment <5%/quarter
    
  ACCESS METRICS:
    PCP appointment availability: members can schedule within 5 business days
    Urgent care access: same-day or next-day availability
    Telehealth availability: within 24 hours
    
  MEMBER COMMUNICATION QUALITY:
    Survey prompt: "Do you understand your benefits?"
    Target: ≥85% of members report understanding their benefits
    Action: benefits confusion → updated communication materials + employer partner webinar

COMPLAINT MANAGEMENT:

  COMPLAINT TRIAGE (within 24 hours of receipt):
    P1 (safety/clinical quality concern): Allevio CEO + Dr. Lewis same day
    P2 (billing dispute; access denial; coverage confusion): Allevio operations within 48 hours
    P3 (general feedback; suggestions): acknowledge within 5 days; address in next improvement cycle
    
  COMPLAINT ESCALATION TRIGGERS:
    Same complaint type >3 times in 30 days → systemic issue; Dr. Lewis to Allevio CEO
    Complaint involving PHI violation allegation → Dr. Lewis + legal immediately
    Complaint from an employer group HR director → P2 minimum (employer relationship at risk)
    Complaint involving threat of legal action → legal immediately; Matt Mathison same day

GRR CONNECTION:

  Member experience is the leading indicator for employer group GRR:
  
  Signals of GRR risk (watch list):
    NPS declining quarter-over-quarter for a specific employer group
    Complaint rate >5% for a specific employer group
    HR director has escalated a complaint directly to the Allevio CEO
    Member services team reports elevated contact volume from a specific group
    
  When a group is on the watch list:
    Dr. Lewis flags to Allevio CEO: "Employer group [Name] is showing early GRR risk signals"
    Allevio CEO schedules a relationship call with the employer HR contact
    Dr. Lewis monitors the group's NPS and complaint rate monthly (not quarterly)
    
  GRR target: ≥91% employer group retention
  North Star metric for Allevio: GRR × claim ratio performance

MEMBER EXPERIENCE IMPROVEMENT CYCLE:

  QUARTERLY CYCLE:
    Week 1: collect NPS survey data + complaint data for the quarter
    Week 2: analyze by employer group; category; trend
    Week 3: identify top 3 experience gaps with root cause
    Week 4: propose improvement initiatives to Allevio CEO; prioritize
    
  IMPROVEMENT INITIATIVE EXAMPLES:
    Benefits understanding gap → create member benefits video (2-min explainer)
    Scheduling access gap → add PCP slots; audit availability by location
    Billing dispute volume → audit invoice accuracy; improve statement clarity
    Employer HR director communication gap → quarterly employer partner call
```

## Output Format

```markdown
# Member Experience Report — Q[N] [Year]
**Prepared by:** Allevio Operations | **Reviewed by:** Dr. Lewis | **For:** QBR / Matt Mathison

---

## Overall NPS: [Score] (target: ≥45) | [Trend vs. prior quarter]

## Member Complaint Rate: [%] (target: <2%) | [N] total complaints

## Voluntary Dis-enrollment Rate: [%] (target: <5%)

---

## Employer Group Experience Analysis

| Employer Group | NPS | Complaints | Dis-enrollment | Status | Action |
|---------------|-----|-----------|---------------|--------|--------|
| [Company A] | [Score] | [N] ([%]) | [%] | 🟢 Healthy | None |
| [Company B] | [Score] | [N] ([%]) | [%] | 🟡 Watch | CEO outreach scheduled |
| [Company C] | [Score] | [N] ([%]) | [%] | 🔴 GRR risk | Weekly monitoring |

---

## Top Complaint Categories

| Category | Count | % of total | Trend | Action |
|----------|-------|-----------|-------|--------|
| Billing disputes | [N] | [%] | ↑ / ↓ | [Improvement initiative] |
| Access/scheduling | [N] | [%] | ↑ / ↓ | [Improvement initiative] |

---

## Q+1 Improvement Priorities
1. [Initiative] — owner: [Allevio team]; target: [KPI improvement]
```

## Output Contract
- NPS is collected and reported, not performed — Allevio does not cherry-pick which members receive the NPS survey; the survey goes to a statistically representative sample (or all members); the NPS calculation follows the standard formula (% Promoters minus % Detractors); a manufactured NPS that misrepresents member sentiment is worse than a low but accurate NPS; Dr. Lewis validates the NPS methodology annually; Matt Mathison sees the real score; if the real score is bad, that's the business problem to solve — not the data to manipulate
- GRR risk signals get proactive outreach, not reactive scrambling — employer groups on the watch list get a relationship call from the Allevio CEO before the renewal conversation; an employer HR director should not feel ignored until 30 days before renewal and then suddenly receive attention; the watch list is for groups where early signals suggest the relationship needs investment now; the relationship call is not a "please renew" call — it's a genuine "how is your experience and what can we do better?" call; the difference between proactive and reactive is the difference between a GRR of 93% and a GRR of 87%
- P1 complaints go to Dr. Lewis same day regardless of the time — a safety or clinical quality complaint is not filtered through the operations team and resolved in the ticket queue; Dr. Lewis receives notification within hours; his assessment determines the escalation path; if legal or regulatory exposure is possible, the Allevio CEO and Matt Mathison are informed immediately; the reputational and financial stakes of a safety complaint handled poorly far exceed the operational cost of over-escalating
- HITL required: P1 complaints (safety; clinical quality) → Dr. Lewis same day; complaint involving PHI violation allegation → legal immediately + Matt Mathison same day; complaint that is a threat of legal action → legal immediately; employer group HR director escalation → Allevio CEO relationship call within 5 days; GRR risk watch list → reviewed with Allevio CEO monthly; improvement initiatives that require capital (new staff; technology) require Dr. Lewis budget approval; NPS survey methodology changes require Dr. Lewis approval (to maintain data integrity)

## System Dependencies
- **Reads from:** AdvancedMD or CRM (complaint tickets; resolution status); member NPS survey platform (quarterly data); member engagement data (portal logins; telehealth usage); fin-allevio-pmpm (employer group membership data for GRR context); ops-allevio-care-coordination (access metrics feed into member experience)
- **Writes to:** Member experience reports (SharePoint → Allevio → Operations → MemberExperience → Q[N]-[YYYY]); Allevio CEO briefings (watch list groups; P1 complaints); Matt Mathison notifications (P1 complaints; legal threats; GRR risk groups); ops-action-tracker (improvement initiative actions); QBR deck (member experience section)
- **HITL Required:** P1 complaints → Dr. Lewis same day; PHI violation allegations → legal + Matt same day; legal threats → legal immediately; HR director escalations → Allevio CEO call within 5 days; NPS methodology changes → Dr. Lewis approval; improvement initiatives with budget → Dr. Lewis approval

## Test Cases
1. **Golden path:** Q2 member experience review. NPS survey (415 respondents of 520 enrolled): Promoters 54%, Passives 27%, Detractors 19% → NPS = 35. Below target (≥45) but improved from Q1 (28). Complaint rate: 1.7% — within target. Voluntary dis-enrollment: 3.2% — within target. By employer group: 4 groups healthy; 1 group (TechStart LLC, 38 members) NPS = 12, complaint rate 6.2% — GRR risk. Allevio CEO notified; relationship call with TechStart HR Director scheduled for next week. Root cause from complaint analysis: billing statements unclear for tech company employees who hadn't used healthcare benefits before. Q3 improvement initiative: plain-language billing statement redesign + new member welcome webinar. Dr. Lewis briefing to Matt: "Member experience improving: NPS 35 (up from 28). One watch-list group (TechStart) — Allevio CEO is on it. No legal threats; no P1 complaints."
2. **Edge case:** A member submits a complaint alleging that Allevio shared their health information with their employer without consent → Dr. Lewis: "This is a P1 complaint with HIPAA implications — alleged unauthorized disclosure of PHI to the employer. Immediate actions: (1) I've notified the Allevio CEO and legal counsel. (2) The complaint has been documented with timestamp. (3) No one at Allevio will communicate with the member about this complaint until legal has advised. (4) I am reviewing what communications were sent to this employer group in the past 30 days to determine if there was any disclosure of member-level PHI. The investigation will be complete within 48 hours. If a disclosure occurred: HHS breach notification requirements may apply; Matt Mathison is aware. If no disclosure occurred: we respond to the member with evidence and close the complaint. Matt: this is a sensitive item — I will update you within 24 hours."
3. **Adversarial:** Allevio CEO wants to exclude dissatisfied employer groups from the NPS survey to improve the score → Dr. Lewis: "I can't support that approach. An NPS that excludes dissatisfied members isn't an NPS — it's a vanity metric. If we present a 45 NPS to Matt Mathison and the real member sentiment is 25, we've misled him about the health of the business. That's an Integrity violation under our THRIVE filter, and it's also bad business — we need accurate data to know where to invest in improvement. The groups that would be excluded are exactly the groups we most need to understand. What I can do: present the NPS with a clear breakdown by employer group so Matt can see the full range — the healthy 55+ groups and the watch-list groups — and understand what's driving the overall number. The story is better with context than with a clean but dishonest average."

## Audit Log
Quarterly NPS data retained (methodology; sample; results by group). Complaint records retained (category; P level; resolution; days to close). P1 complaint investigation records retained (indefinitely). Watch-list group history retained. Improvement initiative results retained. PHI complaint records retained per HIPAA requirements.

## Deprecation
Review the NPS benchmarks annually as Allevio grows and as the healthcare MSO industry benchmarks evolve. The GRR connection and P1 escalation protocol are permanent features.
