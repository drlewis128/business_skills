---
name: pe-investment-strategy
description: "Define and update MBL Partners investment strategy and thesis. Use when the user says 'investment strategy', 'investment thesis', 'fund strategy', 'fund thesis', 'fund mandate', 'investment mandate', 'sector focus', 'sector strategy', 'what does MBL invest in', 'MBL thesis', 'MBL strategy', 'portfolio construction', 'portfolio construction strategy', 'deal criteria', 'investment criteria', 'target criteria', 'target companies', 'what companies do we target', 'size criteria', 'revenue criteria', 'EBITDA criteria', 'sector criteria', 'geography criteria', 'target geography', 'deal sourcing strategy', 'sourcing strategy', 'thesis update', 'strategy update', 'market outlook', 'sector outlook', 'healthcare outlook', 'healthcare thesis', 'energy thesis', 'oil and gas thesis', 'CTV thesis', 'media thesis', 'ad-tech thesis', 'portfolio concentration', 'diversification strategy', 'concentration limits', 'single investment limit', 'fund diversification', 'LP investment strategy presentation', 'strategy for LPs', 'fund strategy presentation', 'next fund strategy', 'Fund II strategy', 'co-investment strategy', 'add-on strategy', 'build and build strategy', 'buy and build', or 'roll-up strategy'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--scope <fund|sector|portfolio-construction>] [--sector <healthcare|energy|ctv|all>] [--action <review|update|present|develop>] [--audience <internal|lp|new-lp>]"
---

# PE Investment Strategy

Define and update MBL Partners investment strategy and thesis — articulating MBL's sector focus, investment criteria, portfolio construction approach, and the differentiated sourcing and value creation strategy that underpins MBL's returns. Investment strategy is not just a document — it is the organizing framework for every investment decision, capital allocation choice, and LP communication; a clear strategy explains why MBL does (and doesn't do) specific deals; when deal flow deviates from the thesis, the strategy document is the anchor that keeps MBL disciplined; Matt Mathison owns the strategy; Dr. Lewis operationalizes it.

## When to Use
- Preparing the fund strategy section of the annual LP meeting
- Reviewing a deal that may not fit the current investment criteria
- Evaluating whether to develop a new sector thesis
- Preparing materials for a new LP who wants to understand MBL's strategy

## Investment Strategy Framework

```
MBL PARTNERS INVESTMENT THESIS:

  CORE STRATEGY:
    Sector: lower middle market companies in healthcare services; energy royalties; digital media
    Geography: United States (primary); no offshore investment without Matt Mathison's explicit approval
    Stage: established businesses with demonstrated revenue and EBITDA (no startups; no pre-revenue)
    Ownership: control or significant minority with board seats and governance rights
    
  TARGET COMPANY PROFILE:
    Revenue: $3M - $25M ARR (or equivalent)
    EBITDA: $500K - $5M (normalized)
    Revenue quality: recurring; contract-based; or royalty-based (MBL does not buy transactional businesses)
    Ownership: founder-owned or family-owned (preferred); or PE-backed (add-on)
    Management: credible management team; willing to remain post-close; THRIVE-aligned
    
  SECTOR THESES:

    HEALTHCARE SERVICES (Allevio model):
      Thesis: employer-sponsored healthcare is under pressure to improve outcomes while reducing costs;
      MSOs that manage employer group health programs with strong claims management and employer GRR
      have defensible, recurring revenue and multiple expansion as the sector consolidates
      Entry criteria: employer GRR >88%; claim ratio <90%; no Medicaid (payer concentration risk)
      Deal-breaker: any OIG/LEIE exclusion; HIPAA non-compliance
      
    OIL AND GAS ROYALTIES (HIVE model):
      Thesis: oil and gas royalty interests provide commodity price-linked cash flow without operational
      risk; Uinta Basin has long-term development inventory; royalty ownership aligns with long-term
      energy supply needs
      Entry criteria: WTI >$58/bbl (PAUSE if below for 2+ weeks); Uinta Basin focus; confirmed production
      Deal-breaker: environmental liability; title defect; WTI structural decline
      
    CTV AND DIGITAL MEDIA (Column6 model):
      Thesis: programmatic CTV advertising is growing as linear TV viewership declines;
      ad-tech intermediaries with verified inventory quality (low IVT; high VCR) and direct
      agency relationships have defensible, growing revenue
      Entry criteria: agency NRR >90%; VCR >90%; IVT <2%; no single agency >30% of revenue
      Deal-breaker: IVT >5%; major agency concentration >40%; DSO >70 days
      
  PORTFOLIO CONSTRUCTION:
    Target portfolio: 4-6 companies per fund (concentrated; high conviction)
    Concentration limit: no single investment >30% of total committed capital (at cost)
    Sector mix: at least 2 different sectors (not all healthcare; not all energy)
    Target hold period: 3-5 years from close to exit
    Target returns: gross MOIC 3.0x; net IRR 15-20%
    
  WHAT MBL DOES NOT INVEST IN (exclusion list):
    Startups (pre-revenue)
    Medicaid-dependent healthcare (payer risk)
    Cryptocurrency / digital assets
    Real estate (outside royalty structures)
    Companies with THRIVE Integrity violations in their history
    Companies with OIG/LEIE exclusions
    Public companies (except take-private; requires Matt Mathison explicit approval)

STRATEGY REVIEW CADENCE:
    Annual thesis review: concurrent with annual LP meeting
    Trigger review: sector market change that materially affects an existing thesis
    New sector evaluation: Matt Mathison initiates; Dr. Lewis builds the research case
    Thesis deviation review: any deal that doesn't fit the criteria → Matt Mathison explicit approval
```

## Output Format

```markdown
# MBL Partners Investment Strategy — [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison

---

## Core Thesis Statement

[2-3 sentences: who we are; what we invest in; why we win]

---

## Target Company Profile

| Criterion | Target | Floor | Kill |
|-----------|--------|-------|------|
| Revenue | $5-$15M | $3M | <$3M |
| EBITDA | $750K-$3M | $500K | <$500K |
| Revenue type | Recurring/royalty | >70% recurring | <50% recurring |
| Sector | Healthcare / Energy / CTV | — | Medicaid; crypto; RE |

---

## Sector Theses

| Sector | Thesis | Key metrics | Entry criteria | Kill criteria |
|--------|--------|------------|---------------|--------------|
| Healthcare MSO | [2 sentences] | GRR; claim ratio | GRR >88%; CR <90% | OIG/LEIE; HIPAA violation |
| Oil & Gas Royalties | [2 sentences] | WTI; GRR landowner | WTI >$58; Uinta Basin | Environmental; title defect |
| CTV/Media | [2 sentences] | Agency NRR; VCR; IVT | NRR >90%; VCR >90% | IVT >5%; agency >40% |

---

## Portfolio Construction

- **Target portfolio:** [N] investments per fund
- **Concentration limit:** No single investment >30% of committed capital
- **Hold period:** 3-5 years
- **Target returns:** [X.Xx]x gross MOIC; [X%] net IRR
```

## Output Contract
- The investment thesis is the deal decision filter — when a deal does not meet the stated criteria, the default is to decline it; a deal outside the criteria can proceed only with Matt Mathison's explicit approval and a written rationale for the deviation; "this is a great deal and we shouldn't let criteria get in the way" is not a rationale — if the criteria are wrong they should be updated; if the deal is right the criteria exception should be documented; thesis creep (gradually accepting deals that would not have passed the original criteria) is how PE funds destroy LP confidence and returns; Dr. Lewis flags any deviation from the criteria before the deal advances past the initial screen
- Sector theses are updated when market conditions change materially — a thesis written when WTI was at $75/bbl may not be appropriate when WTI is at $55/bbl; a CTV thesis written before a major ad-tech regulatory change may not reflect the current market; Dr. Lewis reviews each sector thesis at the annual strategy review and flags any market change that may require a thesis update before the annual review; Matt Mathison approves all thesis updates; LPs are informed of material thesis changes at the next quarterly report or by ad-hoc notice if the change is material
- Portfolio construction limits protect LP capital — a single investment at 35% of committed capital may look like a great deal, but concentration limits exist because no individual investment is certain; a 30% concentration limit means the fund can sustain a complete loss on one investment and still return LP capital with the remainder; Dr. Lewis calculates the concentration percentage for each new investment before the LOI is signed; any investment that would cause concentration to exceed 30% is flagged to Matt Mathison with a concentration waiver request; the waiver is documented and disclosed in the next LP quarterly report
- HITL required: any deal that deviates from the investment criteria → Matt Mathison explicit approval with written rationale; any sector thesis update → Matt Mathison approves; any concentration limit waiver → Matt Mathison approves and documents; investment strategy presented to LPs → Matt Mathison approves the presentation; new sector evaluation → Matt Mathison initiates; portfolio construction approach change → Matt Mathison approves

## System Dependencies
- **Reads from:** pe-deal-screener (deal pipeline vs. criteria); pe-deal-thesis-builder (individual deal theses aligned to strategy); pe-portfolio-kpi-dashboard (portfolio performance vs. strategy assumptions); pe-benchmark-comparator (market context); pe-fund-performance-review (actual returns vs. strategy targets); sector research (healthcare MSO M&A data; energy royalty market data; CTV/ad-tech data); LPA (investment mandate; permitted investments)
- **Writes to:** Investment strategy document (SharePoint → Strategy → [YYYY]); annual LP meeting section 3; new LP materials; pe-deal-screener criteria (updated when thesis changes); pe-deal-pipeline-manager criteria; Matt Mathison strategy briefings
- **HITL Required:** Criteria deviation → Matt explicit approval; thesis update → Matt approves; concentration waiver → Matt approves + documents; LP strategy presentation → Matt approves; new sector evaluation → Matt initiates; portfolio construction change → Matt approves

## Test Cases
1. **Golden path:** Annual strategy review. Dr. Lewis compiles: (1) Portfolio performance vs. thesis — Allevio meeting targets; HIVE WTI-sensitive but stable; Column6 VCR softness; (2) Market update — healthcare MSO sector multiples up 15% YoY (good for exit; higher entry prices for new deals); Uinta Basin WTI production outlook stable; CTV ad spend projected up 18% next 2 years (strong); (3) Deal pipeline vs. criteria — 3 healthcare deals in screen; 1 energy royalty; 0 CTV. Strategy update recommendation: maintain all three sector theses; update healthcare MSO EBITDA floor from $500K to $600K (market valuations have risen; lower EBITDA deals produce weaker returns at current entry multiples). Matt Mathison reviews and approves. Disclosed to LPs at annual meeting.
2. **Edge case:** A deal in the pipeline is a SaaS company ($8M ARR; $1.2M EBITDA) — clearly outside the three stated sectors → Dr. Lewis: "This deal doesn't fit our stated investment mandate. Our LPA defines permitted investments as [healthcare services; energy royalties; digital media]. A SaaS company may or may not qualify as 'digital media' — legal counsel would need to advise. Beyond the LPA question, the investment thesis (why MBL is the right owner; how we create value) doesn't exist for SaaS — we don't have operating expertise or sourcing relationships in this sector. My recommendation: pass on this deal unless Matt Mathison sees a specific strategic rationale and is willing to engage legal counsel on the LPA question. Matt: this one needs your call."
3. **Adversarial:** An intermediary pushes Dr. Lewis to evaluate a deal quickly before the deadline, arguing "this is exactly your thesis" — but the company has 45% Medicaid revenue → Dr. Lewis: "Our healthcare thesis explicitly excludes Medicaid-dependent businesses — this company at 45% Medicaid revenue fails that criterion. The intermediary is correct that the employer GRR and claim ratio are strong, but Medicaid revenue exposes MBL to state budget cycles, regulatory reimbursement risk, and value-based care contract uncertainty that is specifically outside our sector thesis. We pass on this deal. I'm notifying the intermediary today and maintaining the relationship for future deals — but we won't bend the Medicaid exclusion on deadline pressure."

## Audit Log
All strategy documents retained permanently (with Matt Mathison approval; date). Sector thesis updates retained (with rationale; market data; date). Criteria deviation approvals retained. Concentration waiver records retained. LP strategy presentations retained. Deal declinations citing strategy mismatch retained.

## Deprecation
Investment strategy is a permanent fund-level document reviewed annually and updated when market conditions require. The strategy document is archived at fund wind-down and retained for LP records.
