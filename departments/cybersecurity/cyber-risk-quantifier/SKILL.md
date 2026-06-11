---
name: cyber-risk-quantifier
description: "Quantify cybersecurity risk in financial terms. Use when the user says 'quantify risk', 'cyber risk quantification', 'how much could a breach cost us', 'FAIR model', 'risk in dollars', 'cyber risk in financial terms', 'expected loss', 'risk appetite', or 'board risk reporting'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "<risk-scenario> [--entity <name>] [--method <FAIR|ALE|simplified>] [--audience <exec|board|it>]"
---

# Cyber Risk Quantifier

Quantify cybersecurity risk in financial terms. "We have high risk" is not a message that moves decision-makers. "$2.4M expected loss from a ransomware incident" gets attention and budget. This skill converts qualitative risk assessments into financial risk language — annualized loss expectancy, risk reduction per dollar spent, and portfolio-level cyber risk exposure — for executive and board consumption.

## When to Use
- Board or executive cyber risk briefing
- Justifying a security investment (ROI in risk reduction terms)
- Cyber insurance coverage adequacy assessment
- Building a risk appetite statement for the board
- Post-incident — what did the incident actually cost?

## FAIR Model (Factor Analysis of Information Risk)

```
Risk = Probable Frequency × Probable Magnitude

Probable Frequency = How often will this loss occur?
  - Threat Event Frequency (TEF): How often do threat actors attempt this?
  - Vulnerability: How likely is an attempt to succeed?

Probable Magnitude = How much will it cost when it does?
  - Primary Loss: Direct costs (recovery, legal, notification)
  - Secondary Loss: Indirect costs (reputation, lost customers, regulatory)
```

## Simplified ALE Method

```
ALE = Annual Rate of Occurrence (ARO) × Single Loss Expectancy (SLE)

ARO = estimated probability per year
SLE = estimated cost of a single incident

Example:
- BEC (wire fraud) probability: 15% per year
- Average BEC loss: $150,000
- ALE = 15% × $150,000 = $22,500/year expected loss
```

## Output Format

```markdown
# Cyber Risk Quantification — <Entity>
**Date:** <date> | **Entity:** <name>
**Audience:** Board / Executive / IT
**Prepared by:** Dr. John Lewis

---

## Portfolio Cyber Risk Summary (Executive / Board)

**Message:** The MBL portfolio faces approximately $<N>M in annual expected cyber losses. Current security investments mitigate an estimated $<N>M of that exposure. Key residual risks are transferred to cyber insurance ($<N>M coverage).

| Risk Scenario | Annual Expected Loss | Coverage | Net Exposure |
|-------------|---------------------|---------|-------------|
| Ransomware (all entities) | $<N>K/year | $<N>M cyber insurance | $<N>K (deductible) |
| BEC / Wire fraud (MBL, HIVE) | $<N>K/year | $<N>M sublimit | $<N>K net |
| Allevio PHI breach (HIPAA) | $<N>K/year | $<N>M cyber insurance | $<N>K + regulatory |
| Supply chain attack | $<N>K/year | Partial | $<N>K |
| **Total portfolio exposure** | **$<N>M/year** | | **$<N>K net** |

---

## Scenario Analysis

### Scenario 1: Ransomware — Allevio

| Factor | Estimate | Basis |
|--------|---------|-------|
| Probability per year | 8% | Healthcare sector attack rate (HHS HC3) |
| Recovery cost (IT) | $250,000 | IR firm + IT time + reimaging |
| Business interruption | $100,000 | 5 days downtime × ~$20K/day revenue |
| Legal / breach counsel | $75,000 | Estimated |
| HIPAA notification | $50,000 | 10,000 records × $5/record notification |
| HIPAA regulatory fine | $50,000 - $500,000 | Tiered by negligence level |
| **Single Loss Expectancy (SLE)** | **$525,000 - $975,000** | |
| **Annualized Loss Expectancy (ALE)** | **$42,000 - $78,000/year** | 8% × SLE range |

**Cyber insurance mitigation:**
- Coverage: $<N>M per incident
- Deductible: $<N>
- Net exposure after insurance: $<N> (deductible) + any uncovered legal costs

**Current controls reducing probability:**
- EDR: Reduces probability from 8% to ~4% (-50% via early detection)
- Immutable backups: Reduces recovery cost by ~40% (restore vs. pay)
- Security awareness training: Reduces initial access probability by ~30%
- Residual probability with controls: ~4%

---

### Scenario 2: BEC Wire Fraud — MBL Partners / HIVE

| Factor | Estimate | Basis |
|--------|---------|-------|
| Probability per year | 15% | PE sector targeting rate |
| Average transfer amount | $150,000 | PE sector average |
| Recovery rate (if reported within 72 hrs) | 30% | FBI financial crimes data |
| **Net expected loss per incident** | **$105,000** | $150K × (1 - 30% recovery) |
| **ALE** | **$15,750/year** | 15% × $105K |

**Controls reducing probability:**
- Finance team BEC awareness training: -30%
- Wire transfer dual-approval process: -40%
- Residual probability with controls: ~7%

---

## Risk Appetite Statement (Draft for Board)

> The MBL portfolio maintains a risk appetite for cyber incidents where:
> - Residual risk exposure (net of insurance) does not exceed **$500,000** per entity per year
> - No P1 incident occurs more than once per 3-year period
> - No HIPAA breach affecting >500 records occurs (Allevio)
>
> Current estimated residual exposure: **$<N>K/year** — within appetite

---

## Investment ROI Summary

| Control | Annual Cost | ALE Reduction | Net Annual Benefit | Payback |
|---------|-----------|-------------|------------------|--------|
| EDR (Defender for Endpoint) | $8,000 | $21,000 | $13,000 | <1 year |
| Security awareness training | $12,000 | $15,000 | $3,000 | <1 year |
| Cyber insurance | $35,000 | Risk transfer ($975K coverage) | Positive | Immediate |
| **Total security spend** | **$55,000** | **$36,000 ALE + risk transfer** | | |
```

## Output Contract
- Financial risk always expressed as expected loss ranges, not exact numbers — precision implies false certainty
- Insurance coverage and deductibles always factored in — gross exposure vs. net exposure
- ROI calculation always included — justifies security investment in terms executives understand
- Risk appetite always calibrated to organizational scale — $500K is a different number for MBL vs. a large enterprise
- HITL required: Dr. Lewis reviews risk quantification methodology; Matt Mathison reviews board-level summary; Legal reviews regulatory exposure estimates; Finance reviews coverage adequacy

## System Dependencies
- **Reads from:** Threat intelligence, cyber insurance policy terms, incident history, sector benchmarks (provided)
- **Writes to:** Risk quantification report (for HITL review)
- **HITL Required:** Dr. Lewis validates methodology and numbers; Legal reviews regulatory exposure; Finance reviews insurance adequacy; Matt Mathison approves board-level report

## Test Cases
1. **Golden path:** Annual board risk briefing → ransomware ALE for Allevio $60K/year (8% × $750K SLE), BEC ALE for MBL $16K/year, total portfolio ALE $120K/year, insurance covers $975K per incident, net exposure $120K/year within board-approved $500K risk appetite
2. **Edge case:** Post-incident cost accounting → actual ransomware incident costs $285K all-in, vs. pre-incident estimate $525K-$975K; update probability model with actual data; note that strong backup controls (immutable backups) reduced recovery cost by 60%
3. **Adversarial:** Board member argues cyber risk quantification is "just guessing" → risk quantification uses the same expected value methodology as insurance pricing and financial risk management; probabilities are based on sector data from FBI, HHS, insurance actuarial tables; no quantification is certain, but structured estimates are far better than "high/medium/low" for resource allocation

## Audit Log
Risk quantification reports retained by entity and year. Methodology documented. Insurance coverage vs. exposure tracked annually.

## Deprecation
Retire manual quantification when a cyber risk quantification platform (RiskLens, Axio) is deployed with automated FAIR model calculations and real-time threat intelligence integration.
