---
name: award-submission-writer
description: "Write a business award submission or nomination. Use when the user says 'award submission', 'write an award nomination', 'apply for a business award', 'award application', 'nominate for best place to work', 'fastest growing company award', 'business of the year nomination', 'award entry', 'industry award submission', or 'nominate a company for an award'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--award <award name>] [--category <category>] [--deadline <date>]"
---

# Award Submission Writer

Write compelling business award submissions and nominations for MBL Partners or its portfolio companies. Award recognition generates earned media, validates positioning, builds team morale, and creates third-party credibility that self-promotion cannot. The submission itself must tell a story — judges read hundreds of applications; the ones that win are the ones that make the judge feel something.

## When to Use
- A portfolio company qualifies for a regional or industry award
- MBL Partners is eligible for an investor or PE award
- A company milestone (revenue milestone, culture achievement, innovation) creates an award opportunity
- Dr. Lewis or Matt Mathison want to build portfolio company credibility with recognized awards
- An award deadline is approaching and the application hasn't been started

## Award Categories for MBL Portfolio

```
MBL Partners (fund level):
  - Inc. 5000 (private company growth — Allevio/Column6 if eligible)
  - Phoenix Business Journal Fast 100
  - Phoenix Business Journal Best Places to Work
  - PE Hub's "Best PE Firms" (if fund has enough track record)

Allevio (healthcare):
  - Modern Healthcare Best Places to Work in Healthcare
  - Becker's Healthcare Innovation Awards
  - MGMA Innovation Award
  - Phoenix Business Journal Health Care Heroes

HIVE Partners (oil & gas):
  - Utah Business Fast 50
  - Energy sector safety/environmental awards (OSHA VPP)

Column6 / Siprocal (CTV/Media):
  - Digiday Awards
  - AdAge Awards
  - Shorty Awards (if social/digital component)
```

## Output Format

```markdown
# Award Submission — <Company Name>
**Award:** <Award name>
**Category:** <Category>
**Deadline:** <date> | **Submission date:** <date>
**Entity:** <Company> | **Prepared by:** Dr. John Lewis
**Approved by:** <CEO / Matt Mathison>

---

## Award Brief

**What the award rewards:** [What judges are looking for based on the criteria]
**Submission format:** [Online form / Narrative essay / Data submission / All three]
**Word/page limit:** [N words per section]
**Eligibility confirmed:** ✅ Yes — [basis] / ❌ No — do not submit

---

## Submission Draft

### Company Overview (if required)

> "[Company name] is [category description] that [primary value proposition]. Founded in [year], [Company] is headquartered in [City, State] and [key fact: number of employees, locations, patients served, etc.]. [1-sentence differentiation — what makes this company stand out in its category.]"

---

### Primary Narrative (core submission section)

*[This is the judge-facing story. Write it as a narrative, not a list of facts. Lead with the most compelling element.]*

> "[Opening — the most compelling thing about this company's story. Not a generic company description — the specific achievement, transformation, or impact that makes this award-worthy.

> Context — where the company was [N years ago] and what the challenge was. The contrast between 'then' and 'now' makes progress real.

> What was done — specific actions, decisions, innovations. Not vague ("we improved our culture") — specific ("we implemented bi-weekly one-on-ones for all managers and saw voluntary turnover drop from 34% to 11% in 18 months").

> The numbers — quantified results. Revenue growth, patient outcomes, employee satisfaction scores, environmental milestones. Judges need specifics.

> The people — who made it happen. Names and titles when appropriate. Award submissions that recognize real humans are more compelling than those that describe the company abstractly.

> Why this matters beyond the company — community impact, market influence, what this company's success means for its customers, employees, or industry."]"

---

### Question-by-Question Responses (for form-based submissions)

**Q: [Award question 1 — e.g., "Describe your company's most significant achievement in the past 12 months"]**

> "[Answer — specific, evidence-based, 200-300 words. Lead with the achievement in one sentence. Then the context, the action, the result. One achievement only — focus beats quantity.]"

---

**Q: [Award question 2 — e.g., "How has your company impacted the community or industry?"]**

> "[Answer — specific stories over statistics. A named person whose life changed because of the company's work is more powerful than 'we served 10,000 customers.']"

---

**Q: [Award question 3 — if applicable]**

> "[Answer]"

---

### Supporting Data

| Metric | Value | Time period | Context |
|--------|-------|------------|---------|
| [Key growth metric] | [Value] | [Period] | [Why this is significant] |
| [Key employee metric] | [Value] | [Period] | [Context] |
| [Key customer/patient metric] | [Value] | [Period] | [Context] |

*All submitted data is verified and can be supported with documentation if requested.*

---

## PR Plan (if selected as finalist or winner)

- [ ] Press release drafted (for winner announcement)
- [ ] LinkedIn posts drafted (finalist + winner versions)
- [ ] Award logo/badge obtained for use in marketing materials
- [ ] Media pitch drafted for local business press (if award warrants)
- [ ] Website "Awards" section updated
```

## Output Contract
- Narrative first, data second — judges remember stories; they use data as proof; the narrative opens the judge's mind to why this matters; the data closes the argument; never lead with numbers
- Specific beats general — every claim must be specific: "employee satisfaction improved" is rejected; "employee satisfaction improved from 62% to 87% (eNPS) in 18 months" is compelling; every general claim in the draft will be flagged for a specific replacement
- Eligibility must be confirmed before drafting — submitting to an award for which the company isn't eligible wastes everyone's time and creates reputational awkwardness if discovered; confirm eligibility criteria before starting
- PR plan is always included — awards are only valuable if the company uses the recognition; a win with no PR follow-through is a missed opportunity; the PR plan is part of the submission package, not an afterthought
- HITL required: Dr. Lewis drafts; CEO or company president approves content and verifies all data points; Matt Mathison reviews for MBL-level awards; data submitted in awards may be cited publicly — all figures must be verified accurate before submission; no submission without executive approval

## System Dependencies
- **Reads from:** Company performance data, HR metrics, customer data, revenue figures, press releases
- **Writes to:** Award submission (SharePoint/Comms/Awards); PR plan; award tracker
- **HITL Required:** CEO approves all submissions; Matt Mathison reviews MBL-level award submissions; data accuracy confirmed by CFO or finance lead; no submission without approval

## Test Cases
1. **Golden path:** Allevio nomination for Becker's Healthcare Innovation Award → Category: Digital health innovation; core narrative: the AI scheduling implementation that reduced no-shows 34% and freed 8 hours/week per front desk staff member; data: 12 practices, 34% no-show reduction, 8hr/week saved per location, 95% physician satisfaction; story: named a specific practice manager and her experience before/after; CEO approved; submitted on time; selected as finalist; press release drafted; Becker's article published; LinkedIn post from CEO got 2,400 impressions; 3 inbound inquiries from other practices asking about the system
2. **Edge case:** Award asks for financial data that the company doesn't want to disclose publicly → check the award's confidentiality policy first; some awards keep submissions confidential; if the submission will be published and contains sensitive financial data, either omit that data and substitute with percentage growth rather than absolute figures, or decline to submit to this particular award
3. **Adversarial:** A company wins an award but the data submitted is later found to be inaccurate due to an internal accounting error → disclose proactively to the award organization; do not wait for them to discover it; if the award can be corrected (updated data), do that; if the award was given based on materially inaccurate data, consult with the organization; the THRIVE "Integrity" value requires proactive disclosure; a cover-up is worse than the mistake

## Audit Log
All award submissions retained with date, version, and approval records. Awards won/finalist status tracked. PR activities resulting from award documented.

## Deprecation
Retire when portfolio companies hire marketing managers who manage awards programs as a standard communications function.
