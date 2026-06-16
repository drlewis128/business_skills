---
name: ops-org-design-advisor
description: "Design or evaluate organizational structure. Use when the user says 'org design', 'organizational design', 'org chart', 'how should we structure', 'reporting structure', 'organization structure', 'span of control', 'team structure', 'who reports to whom', 'restructure the team', 'how should we organize', 'org model', 'reporting lines', 'reorganization', 'how to scale the org', or 'team design'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--headcount <current N>] [--context <growth|reorganization|new-function|assessment>]"
---

# Ops Org Design Advisor

Design and evaluate organizational structures at MBL portfolio companies — advising on reporting lines, spans of control, functional alignment, and how the org structure should evolve as the business grows. Org design is not about boxes and lines — it's about how work gets done, decisions get made, and accountability flows. A well-designed org structure accelerates execution; a poorly designed one creates confusion, bottlenecks, and political friction. At portfolio scale, the design often needs to match the current stage of the business, not the aspirational version of it.

## When to Use
- A company is growing past a key inflection point (5→10, 10→25, 25→50 employees)
- A new function needs to be created (first HR hire, first dedicated ops person)
- The current structure is creating confusion about who owns what
- A key leader departed and the reporting structure needs to be rethought
- Matt Mathison is asking about the organizational model at a portfolio company

## Org Design Framework

```
Org design principles for portfolio companies:
  Match structure to stage:
    1-10 employees: Flat — everyone reports to the CEO; functional silos are premature
    10-25: First-level management emerges; 1-2 team leads; CEO delegates a function
    25-50: Functional structure (heads of Finance, Operations, Sales, etc.); CEO manages leaders
    50+: Cross-functional coordination needed; consider matrix or divisional elements
    
  Span of control:
    Operational managers (similar, routine work): 7-10 direct reports
    Professional/knowledge workers: 5-7 direct reports
    Sr. leaders managing managers: 3-5 direct reports
    CEO: 3-7 direct reports (varies by business model and CEO capacity)
    
    Warning: <3 direct reports = potential overhead; >10 = attention deficit risk
    
  Decision rights matter more than reporting lines:
    Who can approve spending up to $X?
    Who can hire and terminate?
    Who can commit the company to a contract?
    If two people think they own a decision, neither does
    
  Functional vs. market-oriented:
    Functional: Marketing, Sales, Ops, Finance each has a leader
      Best for: Companies with a single product/service; leverages specialization
    Market/Customer-oriented: Organized by customer type, geography, or product line
      Best for: Companies with distinct customer segments that require different approaches
    Matrix: Combination — specialists have a functional home, also serve business units
      Risk: Unclear accountability; requires strong coordination discipline
      Avoid at portfolio scale — complexity rarely justified

Healthcare org design (Allevio):
  Clinical and administrative must be clearly separated — Clinical Director manages clinical staff;
  COO/Dr. Lewis manages administrative and operational staff
  The CEO bridges both — cannot have operational staff reporting to clinical leadership
  Provider compensation and performance conversations require HR + legal involvement
  OSHA/HIPAA accountability must have a named owner in the org chart

Oil & gas (HIVE):
  Field operations vs. back office are distinct tracks
  Field supervisor reports to operations; back office (finance, admin) reports to COO/Dr. Lewis
  Safety culture — safety roles often report to a dedicated Safety Officer, not operations
```

## Output Format

```markdown
# Org Design Assessment — <Company Name>
**Date:** [Date] | **Current headcount:** [N] | **Context:** [Growth / Reorganization / New function]
**Prepared by:** Dr. John Lewis | **For:** [CEO / Matt Mathison]

---

## Current State

**Current org structure:**
```
CEO
├── [Function 1] — [N direct reports]
│   ├── [Role]
│   └── [Role]
├── [Function 2] — [N direct reports]
└── [Dr. Lewis / COO]
    ├── [Role]
    └── [Role]
```

**Span of control assessment:**
| Manager | Direct reports | Assessment |
|---------|--------------|-----------|
| CEO | [N] | 🟢 Optimal / 🟡 Wide / 🔴 Too many |
| [Other manager] | [N] | |

**Current structure issues:**
- [Issue 1: e.g., "2 roles report to CEO that could report to operations — creating CEO bottleneck"]
- [Issue 2]

---

## Recommended Structure

**Recommended org chart:**
```
CEO (3-5 direct reports)
├── Dr. Lewis / COO (Operations, Finance, IT, HR)
│   ├── Controller
│   ├── [HR lead if applicable]
│   └── [Ops staff]
├── [VP/Head of Sales or Revenue]
│   └── [Sales team]
└── [Clinical Director — Allevio only]
    └── [Providers, clinical staff]
```

**What changes:**
| Role | Current reports to | Recommended reports to | Rationale |
|------|-------------------|----------------------|-----------|
| [Controller] | CEO | Dr. Lewis | Finance should be under operational leadership, not CEO |
| [Billing staff] | CEO | Controller | Operational reporting chain |

**What doesn't change:**
[Existing reporting lines that are working well and should be preserved]

---

## New Function Design (if applicable)

**Function being created:** [e.g., Human Resources]
**Why now:** [Business trigger — headcount threshold, compliance risk, process failure]

**Recommended structure:**
- **Hire:** [Title] at [level — e.g., HR Generalist, not HR Director yet]
- **Reports to:** Dr. Lewis (initially) / [CEO] (if function-critical)
- **Scope:** [What this role owns — specific]
- **Out of scope (for now):** [What will come later — right-size for stage]
- **Hiring timeline:** [When is this hire needed?]

---

## Decision Rights Map

| Decision | Owner | Can delegate to | Approval required from |
|---------|-------|----------------|----------------------|
| Hiring (below director) | Dr. Lewis | Department head | Matt Mathison for Director+ |
| Spend approval (<$5K) | Dept head | — | — |
| Spend approval ($5K-$24,999) | Dr. Lewis | — | — |
| Spend approval ($25K+) | Matt Mathison | — | — |
| Client/payer contract | CEO | — | Dr. Lewis reviews |
| Staff termination | Dr. Lewis | — | CEO alignment |

---

## Growth Path

**At current headcount ([N]):** [Current structure is right / needs modification A]
**At [N+10] employees:** [What changes — first hire into what function, how reporting shifts]
**At [N+25] employees:** [When does the CEO need to delegate more aggressively?]
**Triggers for next redesign:** [Headcount threshold or event that signals structural change needed]

---

## Matt Mathison Brief

[Company] org design: current structure is [assessment]. [One specific change recommended — what and why]. [No hiring needed / First hire recommendation: [role] by [date]].
```

## Output Contract
- Structure follows strategy — before drawing the org chart, understand what the business needs to accomplish in the next 12-18 months; a structure optimized for operations is different from one optimized for sales-led growth; the wrong structure for the strategy creates the right people in the wrong seats and the wrong people in the wrong roles; Dr. Lewis asks "what does this structure need to make easier?" before recommending any change
- Decision rights are more important than reporting lines — many org design problems are really decision rights problems; two people think they own the same decision; neither person knows who to ask for approval; the CEO is the bottleneck because everything escalates; the decision rights map is as important as the org chart, and at portfolio scale it's often more useful
- Don't over-design for current headcount — a 15-person company doesn't need a VP of each function; over-structuring creates overhead and political complexity without adding capability; the org design should match the current stage and have a visible growth path; "we'll add a head of X when we reach Y employees" is a more useful framework than pre-building for future scale
- HITL required: Dr. Lewis recommends; CEO approves all structural changes; Matt Mathison is informed when the structure changes at a portfolio company; Director+ hires require Matt Mathison awareness; clinical structure changes at Allevio require Clinical Director + Dr. Lewis alignment; any change to Dr. Lewis's own reporting relationship requires Matt Mathison decision

## System Dependencies
- **Reads from:** Current org chart, headcount data (HR system), job descriptions, decision authority matrix, strategy and growth plan, CEO capacity and preferences
- **Writes to:** Org chart (SharePoint/Ops/<Company>/People/OrgDesign/); decision rights document; growth path plan; Matt Mathison brief
- **HITL Required:** Dr. Lewis advises; CEO decides; Matt Mathison informed; Director+ changes require Matt Mathison awareness; Clinical structure (Allevio) requires Clinical Director + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio at 22 employees, CEO has 7 direct reports → Assessment: CEO span is too wide; 4 of the 7 roles should report through Dr. Lewis; recommended change: Controller, billing manager, front desk supervisor, and IT support all move under Dr. Lewis; CEO retains: Dr. Lewis (COO), Clinical Director, Head of Sales (new hire planned), and 1 direct clinical relationship; span goes from 7 to 4 — sustainable; decision rights map drafted; no new hires required; change implemented in conversation with each affected employee (no reorganization anxiety); Matt Mathison brief: "Allevio structure rationalized — 4 roles now under Dr. Lewis. CEO span reduced from 7 to 4. No new hires required."
2. **Edge case:** A senior employee resists the org change (prefers to report to the CEO) → Address directly and honestly; explain the rationale; the CEO's time is the bottleneck, not a status signal; if the resistance is about compensation, clarify that reporting line changes don't affect compensation; if the resistance is about access to the CEO, ensure a standing 1:1 is maintained regardless of reporting structure; if the resistance persists and the change is necessary for the business, implement it and monitor engagement; Dr. Lewis facilitates the conversation with the CEO
3. **Adversarial:** "Structure doesn't matter — good people will figure it out" → Good people can overcome bad structure, but they do so at a cost — confusion, duplicated work, decision delays, and eventually political friction; respond: "I agree that good people matter more than org charts. But even great people need clarity on who owns what decision. The two most common things that slow down growing companies are: (1) the CEO as a bottleneck for everything, and (2) ambiguity about who owns a decision. Both are structural problems that good people can't solve on their own."

## Audit Log
Org design assessments retained by company and date. Org charts versioned with effective dates. Decision rights documents retained. Matt Mathison notifications retained. Structural changes documented with rationale.

## Deprecation
Retire when portfolio companies have COOs or HR leaders who own org design, conduct annual assessments, and present recommendations to the CEO — with Dr. Lewis providing input as a strategic advisor rather than the primary designer.
