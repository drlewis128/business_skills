---
name: supply-chain-hiring-scorecard
description: "Evaluate supply chain and procurement candidates with a structured scorecard. Use when the user says 'hire a supply chain manager', 'procurement manager interview', 'supply chain hiring', 'evaluate supply chain candidate', 'logistics hiring', 'operations hiring scorecard', 'procurement analyst interview', or 'supply chain team hiring'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--role <manager|analyst|coordinator|director>] [--entity <MBL|Allevio|HIVE>]"
---

# Supply Chain Hiring Scorecard

Evaluate supply chain and procurement candidates using a structured 100-point scorecard. Supply chain hiring mistakes are expensive — a supply chain manager who can't negotiate, can't manage supplier relationships, or doesn't understand MBL's risk profile (HIPAA for Allevio, oil and gas for HIVE) creates compounding operational problems. The scorecard separates technical competency from business acumen from cultural fit.

## When to Use
- Interviewing candidates for supply chain, procurement, or logistics roles
- Evaluating whether a current portfolio company's supply chain team is adequate
- Screening resumes before scheduling interviews
- Comparing multiple candidates for the same role

## Scorecard Structure

```
100 points total:
  Technical / Functional (50 points):
    Procurement and sourcing: 20 points
    Inventory and demand planning: 15 points
    Logistics and operations: 15 points
  
  Business Acumen (30 points):
    Cost analysis and financial modeling: 10 points
    Supplier negotiation: 10 points
    Risk and compliance awareness: 10 points
  
  MBL Fit (20 points):
    THRIVE values alignment: 10 points
    Portfolio company context: 5 points
    Communication and speed: 5 points
```

## Output Format

```markdown
# Supply Chain Hiring Scorecard — <Candidate Name>
**Date:** <date> | **Interviewer:** Dr. John Lewis
**Role:** <Supply Chain Manager / Procurement Analyst / Logistics Coordinator>
**Entity:** <MBL / Allevio / HIVE / Column6>
**Interview round:** Screening / Technical / Final

---

## Section 1: Technical / Functional (50 points)

### 1A: Procurement and Sourcing (20 points)

**Competency questions:**

1. "Walk me through an RFQ/RFP you led. What was the category, how many suppliers did you engage, and what was the outcome?"
   - Excellent (18-20): Led multi-supplier competitive process; structured evaluation; measurable savings
   - Good (14-17): Has experience with RFQs; some structure; less rigorous evaluation
   - Adequate (10-13): Basic familiarity; primarily reactive buying experience
   - Poor (<10): No formal sourcing experience; order-taking mentality
   Score: ___/20

2. "How do you segment your supplier base? How does that affect how you manage them?"
   - Excellent: Describes ABC or strategic/preferred/spot tiering; different engagement models by tier
   - Good: Aware of segmentation; partial implementation
   - Poor: Treats all suppliers the same
   Score: ___/5

3. "Describe a negotiation where you achieved significant savings. What was your strategy?"
   - Excellent: Clear BATNA; preparation; leverage identification; specific outcome
   - Good: Negotiated but without structured approach
   - Poor: No meaningful negotiation experience
   Score: ___/5 [also scored in Business Acumen — flag if inconsistent]

**1A Score:** ___/20

---

### 1B: Inventory and Demand Planning (15 points)

**Competency questions:**

1. "How do you calculate safety stock? What inputs do you use?"
   - Excellent: Knows formula (service level × σ × √lead time); understands service level tradeoffs
   - Good: Knows safety stock concept; less rigorous calculation
   - Poor: "We just keep a few extra" — no systematic approach
   Score: ___/5

2. "Walk me through how you've built a demand forecast. What method did you use?"
   - Excellent: Uses driver-based or statistical methods; understands error tracking (MAPE)
   - Good: Basic trend extrapolation; some structure
   - Poor: No forecasting experience; reacts to demand rather than anticipating it
   Score: ___/5

3. "Describe how you handle a stockout. Walk me through the steps."
   - Excellent: Clear P0/P1/P2 triage; backup supplier protocol; stakeholder communication; root cause prevention
   - Good: Reactive containment; less systematic
   - Poor: Panics or escalates without a plan
   Score: ___/5

**1B Score:** ___/15

---

### 1C: Logistics and Operations (15 points)

**Competency questions:**

1. "What freight modes have you managed? How do you select between them?"
   - Excellent: Parcel/LTL/FTL/Specialized; systematic mode selection based on weight/distance/urgency/cost
   - Good: General freight experience; some mode selection
   - Poor: "We just use UPS" — no mode optimization
   Score: ___/5

2. "Have you managed temperature-controlled or hazmat logistics? What are the key requirements?"
   - Excellent: Knows cold chain requirements (Allevio relevance); DOT hazmat regulations (HIVE relevance); carrier certification requirements
   - Good: Aware of special handling; less detailed knowledge
   - Poor: No special handling experience
   Score: ___/5

3. "What does a 3-way match mean in procurement? Walk me through how it works."
   - Excellent: PO + receiving receipt + invoice; required before payment; catches billing errors
   - Good: Familiar with concept; partial implementation
   - Poor: Never heard of it; approval process is informal
   Score: ___/5

**1C Score:** ___/15

**Section 1 Total:** ___/50

---

## Section 2: Business Acumen (30 points)

### 2A: Cost Analysis and Financial Modeling (10 points)

"If you were evaluating two suppliers — one 10% cheaper per unit but with a 4-week longer lead time — how would you decide?"
- Excellent: Total cost of ownership analysis; carrying cost of additional inventory for 4-week lead time; stockout risk premium; not just unit price
- Good: Considers more than unit price; some structure
- Poor: Takes the cheaper option without further analysis
Score: ___/10

---

### 2B: Supplier Negotiation (10 points)

Live negotiation simulation (5 minutes): 
"You're negotiating a contract renewal with a supplier who's asking for a 10% price increase. Their raw material costs have gone up 5%. You have a competitor quote that's 3% lower than their current price. Walk me through how you would approach this conversation."
- Excellent: Acknowledges their cost pressure; uses market data (competitor quote) as anchor; aims for flat or better; has concessions ready; knows walk-away
- Good: Structured approach; uses some leverage
- Poor: Accepts the increase or gives no counter
Score: ___/10

---

### 2C: Risk and Compliance Awareness (10 points)

"What supply chain compliance requirements have you managed? What do you do to ensure compliance?"
- Excellent: HIPAA (if healthcare); OSHA (if industrial); audit trails; insurance certificates; contractor compliance; proactive monitoring
- Good: Aware of compliance; reactive management
- Poor: "Compliance is the legal team's problem"

For Allevio role — HIPAA BAA knowledge required:
"What is a Business Associate Agreement and when is it required?"
- Excellent: Knows BAA is required for any vendor handling PHI; execution required before data flows
- Fail for Allevio role: Has no knowledge of BAAs
Score: ___/10

**Section 2 Total:** ___/30

---

## Section 3: MBL Fit (20 points)

### THRIVE Values (10 points)

| THRIVE Value | Question | Score |
|------------|---------|-------|
| Truth | "Tell me about a time you delivered bad news to leadership. How did you do it?" | ___/2 |
| Hustle | "What's your approach when you have more on your plate than you can handle?" | ___/2 |
| Respect | "How do you manage a supplier relationship that's deteriorating?" | ___/2 |
| Integrity | "Have you ever been pressured to skip a compliance step? What did you do?" | ___/2 |
| Value | "What's the most significant cost savings you've achieved? How did you measure the impact?" | ___/2 |

**THRIVE Score:** ___/10

### Portfolio Context Fit (5 points)

"Our portfolio includes a healthcare company, an oil and gas company, and a technology company. How would your procurement approach differ across these industries?"
- Excellent: Understands industry-specific requirements (HIPAA, OSHA, SaaS vendor management)
- Good: General awareness; willing to learn
- Poor: Treats all industries the same
Score: ___/5

### Communication and Speed (5 points)

Assessment during interview:
- Clear, concise answers (not rambling): ___/2
- Responsive and decisive (vs. overly cautious): ___/2
- Executive communication capability (can this person brief Matt Mathison?): ___/1
Score: ___/5

**Section 3 Total:** ___/20

---

## Scorecard Summary

| Section | Weight | Score | Max |
|---------|--------|-------|-----|
| Technical / Functional | 50% | ___  | 50 |
| Business Acumen | 30% | ___ | 30 |
| MBL Fit | 20% | ___ | 20 |
| **TOTAL** | **100%** | **___** | **100** |

**Recommendation:** 
- 85-100: Hire — strong candidate; proceed immediately
- 70-84: Hire with conditions — strong in some areas; onboard with coaching plan
- 55-69: Pass — significant gaps; not recommended
- <55: Hard pass — fundamental skill gaps

**Top strengths:**
1. 
2. 

**Concerns:**
1.
2.

**Automatic disqualifiers:**
- HIPAA BAA knowledge (Allevio role): score 0/2 → Hard pass regardless of total
- No negotiation experience (manager role): score <5/10 → Pass
- THRIVE integrity question answered poorly → Hard pass
```

## Output Contract
- Score always calculated across all three dimensions — a technically excellent candidate with poor THRIVE alignment is not a hire
- Live negotiation simulation always included for manager-level roles — self-reported negotiation experience is unreliable; observe it live
- HIPAA BAA knowledge always tested for Allevio supply chain roles — ignorance of BAA requirements is disqualifying for healthcare supply chain
- Automatic disqualifiers always applied regardless of total score — a candidate who answers the integrity question poorly is not hired at MBL regardless of their procurement skills
- HITL required: Dr. Lewis conducts interviews and scores; Matt Mathison interviews finalists; hiring decision requires Dr. Lewis recommendation + Matt Mathison or entity CEO approval; offer extended by HR (or Matt Mathison for senior roles)

## System Dependencies
- **Reads from:** Job description, candidate resume/LinkedIn
- **Writes to:** Hiring scorecard (SharePoint/People/Recruiting); candidate comparison matrix
- **HITL Required:** Dr. Lewis scores; Matt Mathison final round for manager+; hiring decision: Dr. Lewis recommend + Matt Mathison or entity CEO approve; offer: HR or Matt Mathison

## Test Cases
1. **Golden path:** Supply chain manager interview for Allevio → Section 1: 43/50 (strong procurement and inventory; good logistics); Section 2: 27/30 (excellent negotiation simulation; clear cost analysis; knows HIPAA BAA); Section 3: 17/20 (strong THRIVE; good portfolio fit; clear communicator); Total: 87/100 → Hire; Matt Mathison final interview; offer extended
2. **Edge case:** Candidate is a great negotiator and has excellent references but has no HIPAA experience for the Allevio role → HIPAA knowledge can be learned; negotiation cannot; if the automatic disqualifier threshold isn't triggered (scored 1/2, not 0/2), proceed with a hiring plan that includes HIPAA training within 30 days; document in the onboarding plan
3. **Adversarial:** Matt Mathison has a personal recommendation for a candidate who scores 62/100 → below 70 = do not hire recommendation; brief Matt Mathison honestly: "Candidate X scored 62/100; our threshold is 70; the gaps are [specific areas]; I recommend we continue searching; I can explain the concerns in detail if helpful"; don't adjust the score retroactively to accommodate a preference

## Audit Log
Scorecards retained per candidate. Hiring decisions documented. Reference checks documented. Offer details in HR records.

## Deprecation
Retire when MBL has an HR platform with standardized competency frameworks and structured interview scorecards for each function.
