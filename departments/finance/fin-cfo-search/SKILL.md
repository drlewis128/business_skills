---
name: fin-cfo-search
description: "Build a scorecard for hiring a CFO or Controller at a portfolio entity. Use when the user says 'hire a CFO', 'find a CFO', 'CFO search', 'CFO hire', 'Controller hire', 'Controller search', 'finance hire', 'head of finance', 'VP finance', 'VP of finance', 'finance director', 'Director of Finance', 'finance leader', 'finance team hire', 'accounting hire', 'bookkeeper hire', 'hire a controller', 'recruit a CFO', 'need a CFO', 'we need finance help', 'Allevio CFO', 'HIVE controller', 'Column6 controller', 'portfolio company finance', 'build the finance team', 'finance team', 'fractional CFO', 'part-time CFO', 'interim CFO', 'what kind of finance person do we need', 'finance headcount', or 'who should we hire for finance'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--role <cfo|controller|bookkeeper|fp-and-a|all>] [--type <full-time|fractional|interim>] [--action <scorecard|job-description|evaluate|recommend>]"
---

# Fin CFO Search

Build a scorecard for hiring a CFO, Controller, or finance team member at a portfolio entity — defining the right role for the entity's current maturity, structuring the evaluation criteria, and ensuring the hire supports MBL's financial controls framework and Dr. Lewis's oversight model. Hiring finance leadership at a portfolio company is a high-leverage decision: the right finance leader accelerates the entity's growth trajectory and reduces Dr. Lewis's operational load; the wrong hire creates financial control failures, audit findings, and Dr. Lewis spending time cleaning up problems rather than creating value.

## When to Use
- An entity has grown to the point where in-house finance leadership is needed
- The current bookkeeper is hitting their capacity limit
- Matt Mathison asks whether an entity needs a financial hire
- A portfolio company's finance function is a constraint on its growth
- Post-acquisition: assessing whether inherited finance leadership is adequate

## CFO/Controller Hiring Framework

```
ROLE DETERMINATION BY ENTITY MATURITY:

  STAGE 1 — STARTUP / EARLY (<$1M revenue):
    Need: Bookkeeper (part-time or fractional; 10-20 hours/month)
    Dr. Lewis role: monthly close; financial oversight; all financial decisions
    Cost: $40-80K/year (part-time bookkeeper)
    
  STAGE 2 — GROWTH ($1M-$5M revenue):
    Need: Full-time Bookkeeper / Sr. Bookkeeper + fractional Controller oversight
    Dr. Lewis role: monthly close review; financial oversight; material decisions
    Cost: $55-85K/year bookkeeper; $2-4K/month fractional controller
    
  STAGE 3 — SCALING ($5M-$15M revenue):
    Need: Controller (full-time; owns close; financial controls; payroll)
    Dr. Lewis role: CFO oversight (monthly review; material decisions; LP reporting)
    Cost: $90-130K fully-loaded Controller
    
  STAGE 4 — ENTERPRISE ($15M+ revenue or exit readiness):
    Need: CFO (strategic finance; business partner; investor-facing)
    Dr. Lewis role: Portfolio CFO oversight; exits; LP reporting
    Cost: $180-280K fully-loaded CFO
    
  MBL ENTITY ASSESSMENTS (as of current date):
    Allevio: Stage 2-3 (Revenue $5M+; needs Controller with healthcare billing expertise)
    HIVE: Stage 1-2 (Revenue driven by royalties; needs Sr. Bookkeeper with oil & gas familiarity)
    Column6: Stage 2-3 (Revenue $4M+; needs Controller with digital media expertise)

CONTROLLER/CFO SCORECARD (by entity):

  ALLEVIO CONTROLLER SCORECARD:
    REQUIRED SKILLS (must-have):
      □ Healthcare accounting experience (MSO; insurance billing; PMPM revenue models)
      □ HIPAA/PHI awareness (understands how to handle billing data compliantly)
      □ AdvancedMD or similar healthcare billing system experience
      □ Bill.com and QuickBooks proficiency
      □ Monthly close experience: can own close from D0 to D15
      
    PREFERRED SKILLS (value-add):
      □ Revenue cycle management familiarity (clinical billing metrics; denial rates)
      □ Employer group billing experience
      □ Healthcare audit experience (OIG; CMS audit types)
      
    COMPENSATION RANGE:
      Controller: $90-120K base + 10-15% bonus; fully-loaded $110-145K
      
    REPORTING: Entity CEO day-to-day; Dr. Lewis dotted-line (financial oversight)
    
  HIVE SENIOR BOOKKEEPER SCORECARD:
    REQUIRED SKILLS:
      □ QuickBooks proficiency (QBO or Desktop)
      □ Bank reconciliation and month-end close experience
      □ Royalty income accounting familiarity (or willingness to learn)
      □ Utah state tax familiarity (or willingness to work with tax advisor)
      □ Bill.com experience for AP workflow
      
    PREFERRED:
      □ Oil and gas accounting experience (royalty income; severance tax)
      □ Covercy or royalty payment platform experience
      
    COMPENSATION RANGE: $55-75K base
    
  COLUMN6 CONTROLLER SCORECARD:
    REQUIRED SKILLS:
      □ Digital media or adtech accounting experience (IO billing; media COGS)
      □ Revenue recognition for campaign-based revenue
      □ QuickBooks and Bill.com proficiency
      □ Monthly close experience
      □ DSP cost reconciliation (or willingness to learn)
      
    PREFERRED:
      □ CTV or programmatic advertising industry familiarity
      □ Agency-facing financial reporting experience (client finance reporting)
      □ SaaS/digital advertising contract review experience
      
    COMPENSATION RANGE: $90-120K base

INTERVIEW PROCESS:

  DR. LEWIS'S ROLE: Co-interviewer for all financial hires
  Not the hiring manager (that's the entity CEO) but must approve finance hires
  
  Interview rounds:
    1. Entity CEO screen (culture fit; communication style; basic qualifications)
    2. Dr. Lewis technical interview (30-45 min — financial depth; controls knowledge)
    3. Skills test: case study (present a set of QuickBooks reports with errors; ask candidate to find and explain the issues)
    4. Reference checks: prior employer's Finance or Accounting leadership
    
  DR. LEWIS TECHNICAL INTERVIEW QUESTIONS (examples):
    "Walk me through a month-end close. What does your checklist look like?"
    "Describe a time you found a financial error. How did you handle it?"
    "What controls would you put in place if you were starting fresh at a company with no finance team?"
    "How do you handle an AP vendor who keeps calling about unpaid invoices?"
    "Have you ever discovered a potential fraud? What did you do?"

FRACTIONAL/INTERIM OPTIONS:

  When full-time hire isn't justified yet:
    Fractional CFO: 1-2 days/week; $8-15K/month (for strategic oversight on top of bookkeeper)
    Interim Controller: project-based (audit; acquisition integration; exit prep)
    
  Pros: faster to start; lower cost; bring specific expertise
  Cons: not fully embedded; relationship continuity risk; bandwidth limits
  
  Dr. Lewis recommendation: use fractional when the entity is between stages; move to full-time when the fractional's load consistently exceeds 2 days/week
```

## Output Format

```markdown
# Finance Hire Recommendation — [Entity Name]
**Prepared by:** Dr. Lewis | **For:** Entity CEO + Matt Mathison

---

## Hire Recommendation

| | Assessment |
|-|------------|
| Entity stage | Stage [N]: [Description] |
| Recommended role | Controller / CFO / Bookkeeper |
| Full-time or fractional | Full-time / Fractional |
| Timeline to hire | [Quarter] |

---

## Scorecard — [Role Title]

| Criterion | Weight | Must-have? | Evaluation notes |
|-----------|--------|-----------|-----------------|
| [Healthcare accounting exp.] | High | ✅ Yes | |
| [HIPAA awareness] | High | ✅ Yes | |
| [QB + Bill.com proficiency] | Medium | ✅ Yes | |
| [Revenue cycle familiarity] | Medium | ⚡ Preferred | |

---

## Compensation Range

| Component | Range |
|-----------|-------|
| Base salary | $[X]-$[X] |
| Target bonus | [%] |
| Fully-loaded cost | $[X]-$[X] |

---

## Dr. Lewis Interview Assessment (post-interview)

**Candidate:** [Name]
**Technical score:** [1-5]
**Controls awareness:** [Strong / Adequate / Weak]
**MBL controls fit:** [Yes / Conditional / No]
**Recommendation:** ✅ Proceed / ❌ Do not hire / ⚠️ Conditional
```

## Output Contract
- Dr. Lewis approves all financial hires — financial team members at portfolio entities are not hired without Dr. Lewis's approval because they become part of the financial control environment; a Controller who is technically weak, lacks controls awareness, or is a poor fit for MBL's financial oversight model will cause problems that Dr. Lewis will then have to clean up; Dr. Lewis co-interviews every financial hire above bookkeeper level and has veto authority on the hire
- Entity-specific expertise matters — a great Controller from a manufacturing company is not automatically a great Controller for Allevio (healthcare billing; HIPAA) or Column6 (IO billing; media COGS); the scorecard is entity-specific; Dr. Lewis probes for entity-relevant experience in the technical interview; a candidate who doesn't know what PMPM revenue is and isn't curious about it is probably not the right hire for Allevio
- The hire must fit the Dr. Lewis oversight model — Dr. Lewis's oversight model works when the entity financial leader is capable of running day-to-day operations independently; if Dr. Lewis has to review every journal entry and micro-manage every close, the hire is wrong for the role; the right hire gives Dr. Lewis confidence that the entity's books are clean without requiring Dr. Lewis's constant involvement; Dr. Lewis tests for this in the interview: a candidate who asks good questions about the controls framework and the oversight model is a better fit than one who needs constant direction
- HITL required: Dr. Lewis approves all financial hires above bookkeeper level; Matt Mathison is notified of all financial leadership hires (CFO; Controller) before offer is extended; compensation packages for financial leadership hires reviewed by Dr. Lewis (against market benchmarks) before offer; reference checks conducted by Dr. Lewis for Controller/CFO candidates; entity CEO makes the final hire decision but Dr. Lewis has veto authority on fit-for-controls-model concerns

## System Dependencies
- **Reads from:** Entity financial maturity assessment (current revenue; close quality; controls status — from fin-internal-controls and fin-entity-close); market compensation benchmarks (HR surveys; industry data); fin-integration-accounting (post-acquisition finance team assessment for newly acquired entities)
- **Writes to:** Role scorecards (SharePoint → Finance → [Entity] → HireScorecard → [Role] → [Year]); interview assessment notes; offer range recommendations; Matt Mathison hire notifications; fin-internal-controls (update after hire — new Controller is part of the control environment)
- **HITL Required:** Dr. Lewis co-interviews all financial hires above bookkeeper; Dr. Lewis approves all financial hires above bookkeeper; Matt Mathison notified before CFO/Controller offer; compensation benchmarked by Dr. Lewis before offer; entity CEO makes final decision; Dr. Lewis has veto on controls-fit concerns

## Test Cases
1. **Golden path:** Allevio has grown to $5.2M revenue; the bookkeeper is at capacity and missing deadlines; Dr. Lewis recommends a Controller hire. Role: Controller, full-time. Scorecard: must-haves = healthcare accounting (PMPM; clinical billing); HIPAA awareness; QuickBooks + Bill.com; close D0-D15 ownership. Preferred: AdvancedMD familiarity. Comp range: $95-115K base + 12% bonus target = fully-loaded $112-135K. Interview process: Entity CEO screen (2 candidates); Dr. Lewis technical interview (2 candidates; 40-min each); skills test (QuickBooks trial balance with 3 intentional errors + 2 HIPAA questions); reference checks (1 each). Dr. Lewis recommendation: Candidate A — strong healthcare billing background (3 years at a similar MSO); correctly identified all 3 QuickBooks errors; demonstrated HIPAA awareness without prompting; appropriate controls mindset. Candidate B — technically solid but no healthcare experience; would require 3-6 months ramp time. Recommendation: hire Candidate A at $105K base. Matt notified. Entity CEO extends offer.
2. **Edge case:** Entity CEO wants to hire a friend as Controller without going through the full interview process → Dr. Lewis: "I understand the appeal of hiring someone you trust — that matters in a finance role. But I can't approve a financial hire without completing the technical assessment, and here's why this is non-negotiable: the Controller for [Entity] is responsible for the books that Matt Mathison reviews and that LPs rely on for their investment decisions. I need to confirm that this person has the technical skills and controls awareness to do the job. If your friend is strong, the technical interview will confirm it and we'll proceed quickly. If the interview reveals gaps, I'd rather know before the hire than 3 months in when a close deadline is missed or an audit finding comes back. Can we schedule a 40-minute technical interview this week? If the candidate is as strong as you believe, this will be a fast process."
3. **Adversarial:** Matt asks if we can reduce costs by not hiring a Controller and having Dr. Lewis continue to oversee the bookkeeper indefinitely → Dr. Lewis: "I can do that, but I need you to understand the real cost of that choice. My time doing monthly close oversight for [Entity] is approximately 8-12 hours per month (close review; bank recs; variance analysis; financial summary). At my fully-loaded rate, that's $[X]/month for oversight time that a $100K Controller would spend 40-50 hours/month on. Additionally, the bookkeeper is at capacity — there are closes running late, AR is not being followed up consistently, and I'm catching errors that should be caught at the bookkeeper level. The cost of not hiring isn't 'Dr. Lewis keeps doing it for free.' The cost is: (1) Dr. Lewis's strategic time goes to operational execution; (2) financial quality declines; (3) the risk of a missed audit finding or a control failure increases. My recommendation: hire the Controller. The ROI is clear. But this is your call — if you want to delay the hire for budget reasons, I'll prioritize which oversight activities I de-prioritize first so you can make an informed trade-off."

## Audit Log
Hire scorecards retained for all financial hires. Interview assessment notes retained. Offer documentation retained. Reference check notes retained. Dr. Lewis approval records. Matt Mathison notification records. Compensation benchmark documentation retained.

## Deprecation
This skill evolves as MBL portfolio companies grow. Retire entity-specific hiring work when the entity has a full finance leadership team and Dr. Lewis's role shifts to portfolio oversight only. The skill itself remains active for future portfolio acquisitions and finance team expansion decisions.
