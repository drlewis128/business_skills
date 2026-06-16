---
name: it-roadmap-builder
description: "Build IT strategic roadmap aligned to business goals. Use when the user says 'IT roadmap', 'IT strategy', 'IT plan', 'technology roadmap', 'IT priorities', 'IT strategic plan', 'IT planning', 'technology strategy', 'IT initiatives', 'what should IT focus on', 'IT 12-month plan', 'IT goals', or 'align IT to business'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--horizon <12mo|24mo|3yr>] [--action <build|update|review>]"
---

# IT Roadmap Builder

Build and maintain the IT strategic roadmap for MBL portfolio companies — translating business goals into IT initiatives, sequencing investments, and communicating IT direction to business leadership. The IT roadmap answers the question "what is IT working on, and why?" for the next 12-24 months. At portfolio scale, the roadmap is the tool that prevents IT from being a reactive firefighting function and positions it as a strategic asset that enables business growth.

## When to Use
- Annual IT planning cycle — building the next 12-month IT roadmap
- A portfolio company's business strategy is changing — IT roadmap needs to align
- A major IT initiative is being proposed — does it fit the roadmap?
- Communicating IT priorities to CEO or Matt Mathison
- IT roadmap review — are current initiatives on track? Should priorities shift?

## Roadmap Framework

```
IT roadmap structure:
  Horizon 1 (0-6 months): Immediate — in flight or committed
    → Security hardening, compliance gaps, system failures, urgent upgrades
    → High certainty; specific milestones; funded
    
  Horizon 2 (6-12 months): Near-term — planned and resourced
    → Strategic improvements, capability additions, planned replacements
    → Medium certainty; milestones defined; funding planned
    
  Horizon 3 (12-24 months): Strategic — directional
    → Long-term bets, major platform decisions, portfolio-level capabilities
    → Lower certainty; directional estimates; requires validation
    
IT initiative categories:
  Run (Keep the lights on): Security, patching, monitoring, break-fix — not on the roadmap as projects
    but allocated as capacity (30-40% of IT time)
  Grow: Capabilities that enable business growth — automation, reporting, AI integration
  Transform: Platform changes, major system replacements, new capabilities
  
Roadmap prioritization criteria:
  Business impact (40%): Does this directly enable revenue, compliance, or operational efficiency?
  Risk reduction (30%): Does this reduce security, compliance, or operational risk?
  Cost reduction (20%): Does this reduce IT or operational cost?
  User experience (10%): Does this improve the employee experience with technology?
  
Portfolio roadmap considerations:
  MBL HoldCo: AI orchestration (Krista.ai phases), meeting intelligence, reporting infrastructure
  Allevio: HIPAA compliance gaps, RCM tech stack, clinical IT reliability
  HIVE Partners: Covercy optimization, production reporting, operational IT
  North Vista / Column6: Marketing tech, CRM, content tools
  Portfolio-wide: M365 optimization, security baseline, endpoint management
  
Roadmap communication:
  CEO / business owner: Quarterly — what IT is working on and why
  Matt Mathison: Quarterly — portfolio-wide IT progress; major investments; strategic bets
  Dr. Lewis self: Monthly — progress vs. plan; resourcing adjustments
```

## Output Format

```markdown
# IT Strategic Roadmap — <Company Name>
**Planning period:** [Month YYYY — Month YYYY]
**Prepared:** [Date] | **By:** Dr. John Lewis
**Last reviewed:** [Date] | **Next review:** [Date + 3 months]

---

## Business Context

**Business priorities this period:**
1. [Priority 1 — e.g., Allevio RCM improvement — reduce denial rate to <5%]
2. [Priority 2 — e.g., HIVE Partners LP reporting automation]
3. [Priority 3 — e.g., MBL AI orchestration Phase 1 live]

**IT's role in these priorities:**
- [How IT enables each business priority]

---

## Roadmap Overview

| Initiative | Category | Priority | H1 (0-6mo) | H2 (6-12mo) | H3 (12-24mo) | Owner | Budget |
|-----------|---------|---------|-----------|-----------|------------|-------|--------|
| HIPAA compliance remediation | Compliance | 🔴 Critical | Design + implement | | Annual review | Dr. Lewis | $[X] |
| Endpoint MDM full coverage | Security | 🔴 High | 100% enrollment | Maintain | Maintain | Dr. Lewis | $[X] |
| Krista.ai Phase 1 (meeting intel) | Grow | 🟡 High | Deploy | Tune | Expand | Dr. Lewis | $[X] |
| RCM KPI dashboard | Grow | 🟡 Medium | | Build in Power BI | | Dr. Lewis | $0 |
| HIVE production reporting auto | Grow | 🟡 Medium | | Automate CSV | API if available | Dr. Lewis | $[X] |
| Security awareness training | Security | 🟡 Medium | Deploy | Monthly sims | Annual review | Dr. Lewis | $[X] |
| On-prem server → Azure migration | Transform | 🟢 Low | Plan | Migrate | | Dr. Lewis | $[X] |

---

## Horizon 1 Detail (0-6 months — committed)

| Initiative | Milestone | Target date | Status | Owner |
|-----------|----------|-----------|--------|-------|
| HIPAA compliance | Risk analysis documented | [Date] | In progress | Dr. Lewis |
| HIPAA compliance | BAA tracker complete | [Date] | | Dr. Lewis |
| Endpoint MDM | 100% Intune enrollment | [Date] | 85% complete | Dr. Lewis |
| Krista.ai Phase 1 | Meeting transcript pipeline live | [Date] | Testing | Dr. Lewis |
| Security training | All staff trained | [Date] | | Dr. Lewis |

**H1 initiative completion rate target:** 100% of milestones by [End of H1]

---

## IT Run Capacity (not on roadmap — always-on)

| Activity | Estimated time | Cadence |
|---------|-------------|---------|
| Security monitoring and incident response | 4 hrs/week | Ongoing |
| M365 admin (patching, licensing, security) | 2 hrs/week | Weekly/Monthly |
| Help desk support | 2-4 hrs/week | As needed |
| Backup verification and patch management | 2 hrs/week | Weekly/Monthly |
| **Total run capacity** | **~10-12 hrs/week** | |

**Available project capacity (Dr. Lewis):** Target ≤50 hrs/week total portfolio; ~25-30 hrs/week available for roadmap initiatives after run

---

## IT Budget (12-month)

| Category | Budget | Actuals YTD | Forecast |
|---------|--------|-----------|---------|
| M365 licenses | $[X] | $[X] | $[X] |
| Security tools | $[X] | | |
| Krista.ai | $[X] | | |
| Cloud infrastructure | $[X] | | |
| Other SaaS | $[X] | | |
| **Total IT spend** | **$[X]** | | |

---

## Matt Mathison Brief (quarterly)

IT roadmap [Quarter]: [N] H1 initiatives [X%] on track. Key delivery: [What shipped]. Key risk: [What's at risk]. Next quarter: [Top 2-3 priorities]. Investment: $[X]/month portfolio IT.
```

## Output Contract
- The roadmap is updated quarterly, not built and ignored — the IT roadmap is a living document; as business priorities shift, IT priorities adjust; the quarterly review with Matt Mathison checks progress against the roadmap and adjusts based on what's changed; an IT roadmap that was built in January and not reviewed in October is a document, not a plan
- Run capacity is allocated first — before any roadmap initiative is added, Dr. Lewis's available capacity is calculated after accounting for run (monitoring, help desk, patching, M365 admin); an IT roadmap that is 100% project work and 0% run capacity produces missed patches, unresponded help desk tickets, and unmonitored security alerts; the run allocation is honest and explicit
- Every initiative has a business owner alongside the IT owner — "IT is building a dashboard" is a project that will fail if there is no business owner who defines requirements, validates outputs, and communicates to users; every roadmap initiative identifies both the IT owner (Dr. Lewis) and the business owner (CEO, controller, clinical director) who is accountable for the business outcome
- HITL required: Dr. Lewis builds and maintains IT roadmap; quarterly review with CEO for each portfolio company; Matt Mathison receives quarterly portfolio IT brief; budget decisions >$5K require CEO; >$25K require Matt Mathison; major platform decisions (EHR, cloud migration) require Matt Mathison review

## System Dependencies
- **Reads from:** Business strategy documents, current IT security posture (it-security-assessor), compliance gaps (it-compliance-auditor), existing IT initiatives in flight, ops-okr-tracker (company OKRs)
- **Writes to:** IT roadmap document (SharePoint/Ops/<Company>/IT/Strategy/Roadmap/); quarterly IT brief for Matt Mathison; H1 milestone tracking (Monday.com)
- **HITL Required:** Dr. Lewis builds roadmap; CEO review quarterly per company; Matt Mathison quarterly portfolio brief; budget changes by Dr. Lewis + CEO/Matt Mathison thresholds

## Test Cases
1. **Golden path:** Allevio annual IT roadmap build → Business priorities: (1) Improve RCM denial rate from 8% to <5%; (2) Maintain HIPAA compliance; (3) Support 2 new clinic openings in next 12 months; IT roadmap built: H1: Complete HIPAA risk analysis and BAA tracker; deploy MDM to 2 new clinics; H2: Build AdvancedMD RCM KPI dashboard; implement phishing simulation program; H3: Evaluate AI-assisted clinical documentation (with HIPAA governance); Run allocation: 12 hrs/week (monitoring, help desk, patching, M365); Project capacity: 18 hrs/week; 4 H1 initiatives fit within capacity ✅; Budget: $[X]/month — within approved envelope; CEO review in January; roadmap filed and linked in Monday.com
2. **Edge case:** A portfolio company CEO adds 6 new IT initiatives mid-year that weren't on the roadmap → Capacity analysis: current roadmap H1 is at 90% capacity; adding 6 new initiatives requires either: (1) deprioritizing 3-4 current initiatives (which ones and to when?); (2) adding external IT resources (contractor, MSP — $X cost); (3) phasing the new initiatives into H2/H3; present the tradeoff honestly: "Here are the current H1 commitments; here is what I can add and what would need to shift; which business priorities should take precedence?"; do not silently accept all 6 and then miss everything
3. **Adversarial:** "We don't need a roadmap — IT should just respond to what we need" → Reactive-only IT is the mode that produces: patches not applied (because there's always something more urgent), security monitoring not configured (because help desk tickets fill the day), and strategic projects never delivered (because they always yield to the next emergency); the roadmap is what allows IT to say "yes, I can do that — and here is when, and here is what it displaces"; without it, every request is equally urgent and nothing strategic ever gets done

## Audit Log
IT roadmap versions retained annually. Quarterly review notes retained. Matt Mathison quarterly briefs retained. H1 milestone completion records retained. Budget tracking retained. Major roadmap changes with rationale retained.

## Deprecation
Retire when portfolio companies have dedicated IT directors or CTOs who build and maintain IT roadmaps — with Dr. Lewis providing portfolio-level AI strategy input and Krista.ai integration leadership. Matt Mathison quarterly IT brief remains Dr. Lewis's responsibility for portfolio-wide AI and technology strategy.
