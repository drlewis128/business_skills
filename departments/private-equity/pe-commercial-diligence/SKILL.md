---
name: pe-commercial-diligence
description: "Execute commercial due diligence for MBL Partners acquisitions. Use when the user says 'commercial due diligence', 'commercial diligence', 'commercial DD', 'market diligence', 'market validation', 'market analysis diligence', 'customer diligence', 'customer calls', 'customer interviews', 'customer references', 'reference calls', 'customer satisfaction diligence', 'competitive diligence', 'competitive analysis DD', 'competitive landscape DD', 'revenue pipeline DD', 'sales pipeline diligence', 'go-to-market diligence', 'business model validation', 'retention analysis DD', 'churn analysis DD', 'NRR diligence', 'customer NRR', 'customer concentration DD', 'key account risk', 'market size validation', 'TAM validation', 'addressable market', 'pricing diligence', 'win rate analysis', 'sales cycle analysis', 'channel diligence', 'distribution diligence', or 'customer reference check'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <company-name>] [--action <customer-calls|market-analysis|competitive-map|pipeline-review|report>] [--sector <healthcare|energy|ctv|general>] [--deadline <date>]"
---

# PE Commercial Diligence

Execute commercial due diligence for MBL Partners acquisitions — validating the market opportunity, conducting customer reference interviews, assessing competitive dynamics, evaluating the revenue pipeline, and forming a view on whether the company's growth thesis is achievable. Commercial diligence answers the question that financial diligence cannot: are the revenues real, sustainable, and growable? A company with clean financials and strong historical EBITDA can still be a bad investment if its best customers are about to leave, the market is declining, or a better-funded competitor is about to disrupt the model. Commercial diligence is MBL's window into the future of the business — not just its past.

## When to Use
- LOI signed and DD initiated
- Customer calls need to be scheduled and conducted
- A specific revenue risk (customer concentration; pipeline reliability) needs deep analysis
- Matt Mathison asks for a market or competitive assessment before the LOI

## Commercial Diligence Framework

```
COMMERCIAL DD WORK PLAN:

  1. CUSTOMER ANALYSIS (most critical workstream):
  
    CUSTOMER LIST REVIEW:
      Full customer roster with revenue by customer (last 3 years)
      Concentration: any customer >20% of revenue? Top 5 = what % of total?
      Retention: what % of customers renewed from year to year?
      Churn: which customers left? Why? (seller will explain — verify independently)
      Revenue per customer trend: growing or declining with existing base?
      
    CUSTOMER REFERENCE CALLS (5-10 interviews):
      Selection: mix of current customers (long-tenure; new; at-risk) + 1-2 former customers
      Avoid: letting the seller select all references (they'll cherry-pick happy customers)
      Protocol: structured interview; not a reference call
      Key questions:
        Why did you choose this company?
        How would you describe the quality of what they deliver?
        What are the top 2-3 weaknesses?
        Have you considered switching? Why/why not?
        Do you expect to renew/expand your relationship?
        Would you recommend them to a peer?
      
    CUSTOMER CONCENTRATION RISK THRESHOLDS:
      Any customer >30% of revenue: HIGH risk; requires specific rep and escrow
      Top 3 customers >60%: MEDIUM-HIGH risk; investigate each relationship
      Diverse (top customer <15%): LOW risk; positive for thesis
      
  2. MARKET VALIDATION:
  
    MARKET SIZE AND GROWTH:
      What is the total addressable market (TAM)?
      Is the market growing, stable, or declining?
      External validation: industry reports; trade associations; comparable company disclosures
      
    MARKET DYNAMICS:
      Is this market fragmented (many small players) or consolidated (few large players)?
      Fragmented = more M&A opportunity; acquisition-driven growth
      Concentrated = limited pricing power for small players; potential acquisition target for large
      
    REGULATORY TAILWINDS/HEADWINDS:
      Healthcare: value-based care trends; employer health benefit trends
      Energy: WTI price environment; EPA regulatory trends; state production rules
      CTV: ad market trends; connected TV growth; streaming growth
      
  3. COMPETITIVE LANDSCAPE:
  
    COMPETITOR MAPPING:
      Who are the direct competitors?
      How do customers choose between competitors?
      What is this company's sustainable competitive advantage? (is it real or temporary?)
      
    COMPETITIVE POSITIONING:
      Price: are they premium; market-rate; or discount?
      Quality: how do they compare on key quality metrics (customer satisfaction; outcomes)?
      Geographic niche: is their competitive advantage regional? What happens if a national player enters?
      
  4. REVENUE PIPELINE AND GROWTH SUSTAINABILITY:
  
    SALES PIPELINE REVIEW:
      List of open opportunities (from CRM or sales team)
      Pipeline quality: weighted for close probability
      Sales cycle: average length from lead to close
      Win rate: what % of opportunities does the company convert?
      
    GROWTH THESIS VALIDATION:
      Company projects [X%] revenue growth next year — is this achievable?
      Sources of growth: existing customer expansion vs. new customer acquisition
      Sales team capacity: can the current team execute the growth plan?
      
  SECTOR-SPECIFIC COMMERCIAL DILIGENCE:
  
    HEALTHCARE / ALLEVIO ADD-ON:
      Employer group relationships: are the key employer decision-makers strong advocates?
      Clinical satisfaction: member satisfaction data (NPS; complaint rate)
      PCP panel fill rate and appointment availability (are employers getting what they're paying for?)
      Payer relationship quality: any issues with payer contracts that affect employer pricing?
      
    CTV / COLUMN6 ADD-ON:
      Agency relationship strength: would key agency contacts follow this company post-close?
      Campaign delivery track record: has the company hit VCR targets consistently?
      DSP relationship quality: exclusive or preferred relationships add value
      Traffic quality: IVT audit (third-party verification of ad quality)
```

## Output Format

```markdown
# Commercial Diligence Report — [Company Name] — [Date]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Customer Analysis

| | Finding | Thesis assumption | Risk level |
|-|---------|------------------|-----------|
| Top customer % | [X%] of revenue | <20% | 🔴 HIGH |
| 3-year customer retention | [X%] | >90% | ✅ LOW |
| NRR (existing customers) | [X%] | >100% | ✅ GREEN |

**Customer call summary ([N] calls completed):**

| Customer | Tenure | Renewal intent | Key positive | Key concern |
|---------|--------|---------------|-------------|------------|
| [Customer A] | 4 years | Definite | Clinical quality | Response time |
| [Customer B] (former) | Left 18 months ago | N/A | — | Price; no NPS program |

---

## Market Assessment

**Market size:** $[X]B | **Growth rate:** [X%] CAGR | **Market structure:** [Fragmented/Concentrated]
**Regulatory environment:** [Tailwind / Neutral / Headwind]

---

## Revenue Pipeline Assessment

| Pipeline quality | Weighted pipeline | Sales cycle | Win rate | Growth achievable? |
|-----------------|-----------------|-------------|---------|------------------|
| [Good/Fair/Poor] | $[X] | [N] days | [X%] | [Yes/Questionable/No] |
```

## Output Contract
- Customer calls include at least 2 former customers — current customers have every incentive to be positive (they're still doing business with the seller); former customers have left and are more willing to share honest feedback about why; Dr. Lewis negotiates with the seller to get contact information for former customers in addition to current customers; if the seller refuses to provide former customer contacts, that refusal itself is a signal and is noted in the DD report; a commercial DD that is based entirely on seller-selected current customer references has limited diagnostic value
- Revenue concentration risk is quantified with specific scenarios — "top customer is 35% of revenue" is not actionable on its own; "if the top customer (35% of revenue) cancels its contract, EBITDA falls from $1.2M to $0.6M, reducing the exit value by approximately $3M at the same multiple" IS actionable; Dr. Lewis quantifies the financial impact of customer concentration risk so Matt Mathison can decide whether to price it in (price reduction), contract for it (specific rep and indemnification), or kill the deal
- Market size claims are validated independently — a seller who claims "our TAM is $50B and we have 0.001% market share" is using a market size that may be technically accurate but practically irrelevant; Dr. Lewis validates TAM using external sources (industry associations; market research; comparable public company disclosures) and forms an independent view of the serviceable addressable market (the part of the TAM MBL can actually reach); an overstated TAM is not a deal-killer, but it does affect the growth thesis
- HITL required: any customer concentration >30% → Matt Mathison immediately (deal risk); customer calls indicating a churn risk for a major customer → Matt immediately; pipeline assessment suggesting growth thesis is not achievable → Matt with a recommended response (price adjustment; kill); any customer disclosure of a planned contract non-renewal → Matt immediately; market validation finding that contradicts the thesis (declining market; new competitor) → Matt with full context

## System Dependencies
- **Reads from:** Customer list (from data room); CRM/pipeline data (from data room); pe-diligence-coordinator (DD tracker and timeline); pe-deal-thesis-builder (commercial assumptions to validate); market research sources (industry reports; trade associations; Pitchbook)
- **Writes to:** Commercial DD report (SharePoint → Deals → [Company] → DD → Commercial); customer call notes; Matt Mathison briefings (concentration risk; churn risk; market findings); pe-diligence-coordinator (commercial DD status); pe-deal-thesis-builder (thesis updates based on commercial findings)
- **HITL Required:** Customer concentration >30% → Matt immediately; churn risk for major customer → Matt immediately; growth thesis not achievable → Matt with recommendation; market validation contradicts thesis → Matt; former customer disclosures of systemic problems → Matt immediately

## Test Cases
1. **Golden path:** 5 customer calls completed. Average tenure: 3.2 years. All 5 current customers expressed strong intent to renew. 1 former customer (left 2 years ago): left due to a specific clinical staffing issue that has since been resolved. Customer concentration: top customer is 18% of revenue — acceptable. Market: fragmented; TAM validated at $2.1B with 8% CAGR. Sales pipeline: $3.2M weighted; 60-day average sales cycle; 35% win rate. Commercial DD: thesis intact. No material commercial risks beyond general customer concentration (managed via rep in PA).
2. **Edge case:** During a customer call, a major customer (25% of revenue) indicates they're evaluating a competitor and will make a decision in 3 months → Dr. Lewis: "Immediate Matt Mathison briefing required. [Customer X], representing 25% of revenue, indicated during our reference call that they're in an active evaluation of [Competitor] with a decision expected in 3 months — before our projected closing date. This changes the commercial risk significantly. Options: (1) Price the deal on the assumption [Customer X] churns (reduces normalized revenue by 25% — thesis materially changes); (2) Make retention of [Customer X] a condition precedent to closing; (3) Negotiate a specific revenue guarantee from the seller for [Customer X]; (4) Kill the deal. Matt: this is a day-1 escalation. I'll have the full financial impact modeled within 24 hours."
3. **Adversarial:** Seller refuses to provide the customer list at the detailed (customer-by-customer) level, offering only aggregate revenue breakdown by "tier" → Dr. Lewis: "Customer-level revenue data is standard and required for commercial DD. Without it, we cannot validate customer concentration, retention, or revenue quality. The offer to provide only tier-level data is insufficient. I'll make a formal request through fund counsel for the specific data as a material condition of continuing diligence. If the seller still refuses, that refusal is material enough to brief Matt Mathison on whether to proceed under this information limitation or kill the deal. In my experience, sellers who protect customer-level revenue data usually have a concentration problem they're hiding."

## Audit Log
All customer call notes retained (with contact; date; interviewer; key themes). Market research sources retained. Customer concentration analysis retained. Pipeline analysis retained. Growth thesis validation records retained. Matt Mathison briefings retained (with dates; findings).

## Deprecation
Commercial diligence is active during the fund's investment period. Customer call questionnaire and market validation methodology are reviewed after each deal for lessons learned.
