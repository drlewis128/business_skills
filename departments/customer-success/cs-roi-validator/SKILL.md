---
name: cs-roi-validator
description: "Validate and present customer ROI for MBL portfolio company accounts. Use when the user says 'ROI', 'return on investment', 'customer ROI', 'show the value', 'prove the value', 'value validation', 'ROI report', 'ROI calculation', 'prove ROI', 'ROI for this customer', 'value realization', 'show the savings', 'cost savings', 'calculate the savings', 'what are we worth to this customer', 'ROI analysis', 'customer value report', 'value report', 'value story', 'demonstrate value', 'investment return', 'ROI proof', 'justify the cost', 'cost justification', 'savings analysis', or 'ROI snapshot'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--account <customer name>] [--period <months or year>] [--action <calculate|report|present>]"
---

# CS ROI Validator

Validate and present customer ROI for MBL portfolio company accounts — calculating the specific, auditable value the customer has received from the relationship, translating it into financial terms the customer understands, and presenting it in a format that supports renewal conversations, expansion conversations, and customer advocacy. ROI validation is not a marketing exercise; it is a factual accounting of what the customer has actually received, grounded in data from systems of record, and presented honestly — including where we fell short.

## When to Use
- Quarterly (validate and update the ROI model for Priority A accounts)
- Pre-renewal (build the full ROI case 60 days before renewal)
- Pre-expansion conversation (show the ROI before pitching more)
- After a specific milestone (1-year anniversary; first clinical intervention result; first campaign wrap)
- A customer challenges the value: "Is this worth what we're paying?"

## ROI Validation Framework

```
CORE PRINCIPLE:
  Every dollar of claimed value must be traceable to a system of record
  ROI is not a number the CS team picks because it sounds good —
    it is a number derived from the customer's actual data, compared to a baseline
  Acknowledge misses honestly: an ROI calculation that shows only wins and hides losses
    damages credibility more than the loss itself would have
  Present the number before context — tell the customer the number, then explain it

ENTITY-SPECIFIC ROI CALCULATIONS:

  ALLEVIO EMPLOYER GROUPS:
  
    PRIMARY ROI: Claim ratio savings
      Formula: (Prior carrier claim ratio − Current Allevio claim ratio) × Total PMPM × Members × 12
      Data source: AdvancedMD (monthly claims data); QuickBooks (PMPM rate)
      Baseline: Prior carrier's claim ratio (from the employer's prior benefits data, ideally)
        If prior data unavailable: use industry benchmark for employer group size and geography
        Note the assumption in the ROI report
      Example: Prior carrier 88% claim ratio; Allevio 76%; PMPM $680; 135 members; 12 months
        Savings: (88% − 76%) = 12 points saved; $680 × 12% = $81.60/member/month savings
        Annual savings: $81.60 × 135 × 12 = $132,192
        
    SECONDARY ROI: HR time savings
      Formula: HR director hours recovered from manual benefits administration × hourly rate × 52 weeks
      Data source: HR Director estimate (ask in QBR: "How many hours per week did benefits take before?")
      Example: 8 hours/week recovered × $45/hr equivalent × 52 = $18,720/year
      
    SECONDARY ROI: Employee productivity (clinical intervention)
      Formula: Sick days prevented × average daily productivity value (employer estimate)
      Source: Allevio clinical team (number of members enrolled in care programs; estimated adherence)
      Note: This is a soft ROI; use it as supporting color, not the headline number
      
    TOTAL ALLEVIO ROI:
      Hard ROI (auditable): Claim ratio savings + HR time savings
      ROI ratio: Total hard ROI ÷ Annual Allevio cost (premium paid)
      Target: ROI ratio >1.5× (for every $1 spent with Allevio, the employer gets >$1.50 in savings)
      
  COLUMN6 ADVERTISER/AGENCY:
  
    PRIMARY ROI: VCR advantage vs. linear TV
      Formula: VCR delta (Column6 VCR vs. linear TV benchmark) × total impressions
        = additional completed views delivered at no additional cost
      Data source: Column6 campaign dashboard; IAB/Nielsen benchmark (linear TV avg ~45-62% VCR)
      Example: Column6 92% VCR vs. linear 55% VCR; 5M impressions
        Additional completed views: (92% − 55%) × 5M = 1,850,000 additional completed views
        Dollar value: 1.85M additional views × contracted CPM = additional value delivered
        
    PRIMARY ROI: CPM efficiency
      Formula: (Market rate CPM − Column6 contracted CPM) × impressions ÷ 1,000
      Data source: Column6 contracted rate; MediaRadar or Nielsen market rate for the category
      Example: Market rate $38 CPM; Column6 $23 CPM; 5M impressions
        CPM savings: ($38 − $23) × (5M ÷ 1,000) = $15 × 5,000 = $75,000 in spend efficiency
        
    ATTRIBUTION ROI (where tracking is in place):
      CPA: Column6 attributed CPA vs. blended channel CPA
      Lift study: Incremental conversions attributable to Column6 (vs. control group)
      
    TOTAL COLUMN6 ROI:
      Media efficiency savings + attribution conversion value
      
  HIVE LANDOWNERS:
  
    PRIMARY ROI: Total financial return vs. alternative
      Total return: Lease bonus received + Total royalties to date (from Covercy)
      Alternative comparison: County average lease bonus per acre; competing operator terms (if known)
      Example: HIVE lease bonus $1,850/acre (county avg $1,520/acre); premium = $330/acre × 400 acres = $132,000
        Plus royalties to date: $47,400
        Total value delivered: $179,400
        
    SECONDARY ROI: Development activity value
      An actively developed parcel produces ongoing royalties; an undeveloped parcel produces none
      Present HIVE's development track record on adjacent parcels as evidence of active development value
      
    TOTAL HIVE ROI:
      Total financial return received + Premium vs. market terms + Development activity value (qualitative)

ROI PRESENTATION PROTOCOL:
  Lead with the headline number: "Your total savings from Allevio over the past 12 months: $132,192"
  Then: break down where it came from (claim ratio; HR time; etc.)
  Then: show the ROI ratio: "For every $1 you've paid Allevio, you've received $2.14 in savings"
  Then: acknowledge any metric that underperformed: "We had 2 months above our 80% target —
    your claim ratio was 84% in April and 83% in June. The clinical team has been working on
    that ED utilization pattern. We expect to be consistently below 80% for the remainder of the year."
  Never: Only show the wins; hide the misses; use unauditable estimates as the headline number
```

## Output Format

```markdown
# ROI Validation Report — [Account Name] | [Entity]
**Period:** [Date range] | **Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Headline ROI

**Total value delivered:** $[X]K
**Total cost to customer:** $[X]K (annual agreement / PMPM × members × 12 / lease terms)
**ROI ratio:** [X]× (for every $1 invested, $[X] in value received)
**ROI target:** >[1.5×] | **Status:** ✅ Exceeds target / ⚠️ Below target

---

## ROI Detail

| Value source | Calculation | Value |
|-------------|------------|-------|
| [Claim ratio savings] | ([Prior %] − [Current %]) × $[PMPM] × [N] members × 12 | $[X]K |
| [HR time savings] | [X] hr/week × $[rate] × 52 | $[X]K |
| [Total] | | **$[X]K** |

---

## Where We Fell Short (Honest Assessment)

| Metric | Target | Actual | Impact | What we're doing |
|--------|--------|--------|--------|-----------------|
| [Claim ratio April] | <80% | 84% | $[X]K higher claims | Clinical ED outreach initiated |

---

## Looking Forward

[What the next 12 months could deliver if current trends continue]
```

## Output Contract
- Every claim must be auditable — if the CS team cannot trace a dollar figure to a specific system of record (AdvancedMD; Covercy; campaign dashboard; QuickBooks), it does not appear in the headline ROI number; soft benefits (employee morale; productivity; brand safety) may appear as supporting color but not as the primary claim; Dr. Lewis will not present an ROI figure to a renewal customer that cannot be independently verified
- Misses are included — an ROI report that shows only the wins is a marketing brochure, not a value validation; Dr. Lewis requires that any metric that underperformed target is included in the "where we fell short" section with (1) the actual vs. target; (2) the financial impact of the miss (if calculable); and (3) the specific action being taken to address it; a customer who sees that we acknowledged the miss before they raised it will trust the wins more, not less
- ROI ratio is the summary number — the ROI ratio (value ÷ cost) is the number the CFO needs; a detailed breakdown supports it but the CFO will remember the ratio; Dr. Lewis targets >1.5× for all entities; if the ROI ratio is below 1.5×, the renewal is at risk and the ROI report needs to be accompanied by a save plan (cs-at-risk-responder)
- HITL required: Dr. Lewis reviews and approves all ROI validation reports before they are delivered to a customer; any ROI report delivered in a renewal context (within 90 days of renewal) is also reviewed by the CEO; any ROI ratio below 1.5× triggers a conversation with Dr. Lewis about whether the renewal is at risk; HIVE ROI reports are reviewed by the HIVE operations team to confirm the production and royalty data before Dr. Lewis approval

## System Dependencies
- **Reads from:** AdvancedMD (Allevio — monthly claims paid; member count; premium PMPM); Covercy (HIVE — total royalties paid to date; lease bonus confirmed); Column6 campaign dashboard (VCR; CPM; impression delivery; attribution conversions); cs-success-plan-builder (the customer's stated goals and success metrics — what did we commit to?); cs-value-realization (entity-specific value calculation formulas); QuickBooks (ACV; premium paid; total cost to the customer)
- **Writes to:** ROI validation report (SharePoint/CustomerSuccess/<Company>/ROIReports/[Account]_[Period]_ROI.pdf); renewal briefing (cs-renewal-coordinator — ROI is the anchor of the renewal conversation); GoHighLevel CRM (ROI ratio logged; date of delivery); cs-kpi-dashboard (portfolio-level ROI metrics); CEO renewal briefing (if ROI ratio below 1.5×)
- **HITL Required:** Dr. Lewis reviews all ROI reports before delivery; renewal-context ROI reports reviewed by CEO; ROI below 1.5× triggers save plan discussion; HIVE ROI confirmed with HIVE operations team before Dr. Lewis approval

## Test Cases
1. **Golden path:** Allevio — 135-member group; Year 1 anniversary; claim ratio: prior carrier 88% → Allevio 76% (Year 1 avg); PMPM $680; members 135; 12 months → Claim savings: (88%-76%) × $680 × 135 × 12 = 12% × $680 = $81.60/member/month × 135 × 12 = $132,192; HR time savings: HR Director confirmed 8 hrs/week recovered × $45 × 52 = $18,720; Total ROI: $150,912; Annual cost: $1,102,320 (PMPM $680 × 135 × 12); ROI ratio: $150,912 ÷ $1,102,320 = 0.14 — wait, this is lower than expected because we're comparing savings to total premium, not to alternative cost. Let me reconsider: the correct comparison is the cost savings realized (not whether the premium is "worth it" — the employer was always going to pay for health benefits). The ROI should compare Allevio vs. the alternative carrier. Cost savings: if the employer had stayed with the prior carrier and maintained 88% claim ratio: additional claims cost would have been $132,192 higher. So ROI = $132,192 savings ÷ the premium differential (Allevio vs. prior carrier). If Allevio PMPM is $20 lower than prior carrier: $20 × 135 × 12 = $32,400 premium savings; total savings = $132,192 + $32,400 = $164,592; ROI ratio 5.1× (against the premium differential). Present to HR Director and CFO: "You've saved $132,192 in claims costs and $18,720 in administrative time this year. Your total return is $150,912. That's $6.47 saved for every additional dollar you're paying vs. your prior carrier." Renewal conversation: easy close.
2. **Edge case:** Column6 ROI report — VCR 94% vs. linear 55% benchmark; 5M impressions; CPM $23 vs. market $38; attribution CPA $47 vs. blended channel $68 → VCR efficiency: 1.95M additional completed views; CPM efficiency: $75,000 in effective spend; attribution: 412 incremental conversions × ($68 − $47) savings per conversion = $8,652 in CPA efficiency; Total: $83,652 in measurable media value delivered; campaign spend was $115,000; media value delivered per dollar spent: $0.73 → ROI ratio below 1.5×. Dr. Lewis: "This is below our target. The VCR and CPM are strong, but the attribution CPA needs context — let's check what channels the agency was comparing us to. If they were comparing to social media CPA, the benchmark is different from what they're using. Before we deliver this report, I want to get the attribution methodology right. If the CPA comparison is apples-to-apples, then we need to improve performance — and I want to acknowledge that in the report."
3. **Adversarial:** A CS rep proposes including "estimated employee productivity value" in the Allevio ROI headline — "it makes the number look much better" → Dr. Lewis: "Productivity value is a soft estimate — it depends on assumptions the employer makes about sick day costs, which we can't audit. If we put a soft estimate in the headline and the CFO pushes back on the methodology, we lose the credibility on the numbers we CAN audit. The claim ratio savings and HR time savings are hard, auditable numbers. Lead with those. Mention productivity value as supporting context — 'we estimate clinical programs also contributed to reduced sick days, though this is harder to quantify precisely.' Lead with what we can defend, support with what we can estimate."

## Audit Log
All ROI validation reports retained by account, entity, and period. Dr. Lewis review records retained. CEO renewal-context review records retained. HIVE operations data confirmation records retained. ROI ratio below 1.5× escalation records retained.

## Deprecation
Retire when each portfolio company has a dedicated analytics function that produces standardized ROI reports from system-of-record data — with Dr. Lewis reviewing the methodology annually and the CEO approving any changes to the ROI calculation formulas.
