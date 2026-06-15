---
name: lp-communication-drafter
description: "Draft LP communications including quarterly updates, capital call notices, and distribution notices. Use when the user says 'LP communication', 'LP update', 'write to LPs', 'LP letter', 'capital call notice', 'distribution notice', 'investor communication', or 'draft LP quarterly update'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--type <quarterly|capital-call|distribution|special>] [--entity <HIVE|MBL>] [--period <YYYY-QN>]"
---

# LP Communication Drafter

Draft professional LP communications for HIVE Partners and MBL portfolio entities — quarterly updates, capital call notices, distribution notices, and special situation letters.

## When to Use
- Quarterly LP update (standard cadence — every 90 days)
- Capital call issued (LP contribution required)
- Distribution sent (LP receives cash)
- Material event (acquisition, portfolio company change, market development)
- In response to an LP inquiry

## Communication Types

### Quarterly Update Letter
Professional update on fund performance, portfolio, and outlook. Tone: measured, professional, honest.

Structure:
1. **Opening** — period summary (2-3 sentences)
2. **Portfolio / Operational Update** — entity-by-entity highlights
3. **Financial Summary** — NAV, distributions, performance vs. benchmark
4. **Market Context** — relevant macro or sector color
5. **Outlook** — next quarter priorities and expectations
6. **Closing** — contact for questions

### Capital Call Notice
Formal notice that LPs must contribute their pro-rata share of committed capital.

Required elements:
- Call amount (total and each LP's share)
- Purpose of the draw
- Payment due date (typically 10 business days)
- Wire instructions
- Signature line (Matt Mathison / GP)

### Distribution Notice
Formal notice that LPs will receive a cash distribution.

Required elements:
- Distribution amount (total and each LP's share)
- Source of distribution (operations / asset sale / recapitalization)
- Payment date
- Tax information (ordinary income vs. return of capital)

## Tone Standards
- **No puffery** — data over enthusiasm
- **Acknowledge challenges** directly but with context and mitigation
- **Forward-looking statements** use appropriate hedging language
- **HIVE-specific:** include production volumes and unit economics where relevant
- **Confidential** — HIVE and MBL LP communications are strictly confidential

## Output Format

```markdown
# [CONFIDENTIAL] LP Quarterly Update
**Fund:** HIVE Partners / MBL Portfolio
**Period:** Q<N> <Year>
**Date:** <date>

Dear Limited Partners,

[Quarterly update content following structure above]

Sincerely,

Matt Mathison
Managing Partner, MBL Partners / General Partner, HIVE Partners

---
*This communication is confidential and intended solely for the named recipients. Past performance is not indicative of future results. This is not an offer or solicitation.*
```

## Output Contract
- Always includes standard confidentiality and forward-looking statement disclaimers
- Capital call notices always include wire instructions and due date
- Distribution notices always note tax character of distribution
- HITL required (Tier 1 only — Matt Mathison) before any LP communication is distributed
- Draft only — legal/compliance review required for capital call and distribution notices

## System Dependencies
- **Reads from:** Financial statements, portfolio company updates, distribution ledger (Covercy for HIVE)
- **Writes to:** Nothing (draft only for Matt's review)
- **HITL Required:** Matt Mathison must review and approve before any LP communication is sent
- **Data sensitivity:** CONFIDENTIAL — Tier 1 only

## Test Cases
1. **Golden path:** Strong quarter for HIVE with production up → positive tone update acknowledging performance with production data
2. **Edge case:** Quarter with below-plan performance → honest framing with specific causes and remediation plan, no spin
3. **Adversarial:** Capital call notice drafted without wire instructions → skill flags as incomplete, will not output without required payment details

## Audit Log
All LP communications versioned, dated, and retained. Distribution list documented with send date.

## Deprecation
Retire when LP portal (Covercy or dedicated IR platform) provides templated communication workflow with approval routing.
