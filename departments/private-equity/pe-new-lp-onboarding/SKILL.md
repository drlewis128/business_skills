---
name: pe-new-lp-onboarding
description: "Onboard new limited partners into MBL Partners funds. Use when the user says 'new LP', 'new investor', 'new limited partner', 'onboarding LP', 'LP onboarding', 'investor onboarding', 'admitting an LP', 'new LP admission', 'LP subscription', 'LP subscription documents', 'subscription agreement', 'capital commitment', 'new capital commitment', 'closing a new LP', 'fund closing', 'first close', 'second close', 'final close', 'LP close', 'LP capital call first', 'initial capital call', 'first drawdown', 'LP KYC', 'KYC new investor', 'AML new investor', 'LP AML', 'accredited investor check', 'qualified purchaser check', 'QP verification', 'AI verification', 'OFAC check LP', 'investor qualification', 'LP qualification check', 'FATCA new LP', 'new LP FATCA', 'beneficial ownership LP', 'LP beneficial ownership', 'fund subscription process', 'LP welcome', 'onboarding call LP', 'LP introduction', 'LP bank account', 'LP wire instructions', 'LP contact setup', 'LP register new', or 'LP capital account setup'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--lp <lp-name>] [--commitment <$XM>] [--close <first|second|final>] [--action <kyc|subscribe|close|onboard|first-call>]"
---

# PE New LP Onboarding

Onboard new limited partners into MBL Partners funds — managing the subscription process, KYC/AML compliance, qualified investor verification, FATCA classification, capital account setup, and welcome communication for each new LP. New LP onboarding is the first operational impression MBL makes on an investor: a smooth, professional onboarding process signals that MBL is an organized, institutional-quality GP; an onboarding process full of missing documents, unclear instructions, and administrative gaps signals the opposite; every new LP relationship begins here; Dr. Lewis owns the onboarding process end-to-end.

## When to Use
- A new LP has committed to the fund
- A fund closing is occurring (first; second; final)
- Matt Mathison announces a new investor

## New LP Onboarding Framework

```
NEW LP ONBOARDING CHECKLIST:

  PHASE 1 — COMPLIANCE SCREENING (before subscription documents are accepted):
  
    1. QUALIFIED INVESTOR VERIFICATION:
       Qualified Purchaser (QP): $5M+ in investments (individuals) or $25M+ (entities)
       Accredited Investor (AI): $1M+ net worth (excluding primary residence) or $200K+ income (individual)
       Institution: registered investment adviser; bank; insurance company; registered broker-dealer
       Documents required: net worth attestation; most recent tax return or brokerage statement
       
    2. OFAC SCREENING:
       Screen LP name and all beneficial owners against OFAC SDN list
       Screen against PEP (Politically Exposed Person) list
       Hits → legal counsel review immediately; Matt Mathison briefed
       No proceed with subscription until OFAC clear
       
    3. BENEFICIAL OWNERSHIP:
       For legal entity LPs: identify all beneficial owners >25% (FinCEN standard)
       Verify identity of each beneficial owner
       Document beneficial ownership structure (org chart for complex entities)
       
    4. FATCA CLASSIFICATION:
       Determine LP's FATCA status (US person; PFFI; NFFE; exempt)
       Obtain W-9 (US LPs) or W-8BEN-E (foreign LPs)
       Forward FATCA documentation to fund administrator
       
    5. KYC DOCUMENTATION PACKAGE (per AML policy):
       Individual: government-issued photo ID; proof of address (utility bill; bank statement)
       Entity: certificate of formation; operating agreement or bylaws; EIN; authorized signatories
       Fund of funds: their KYC policy + pass-through certifications
       
  PHASE 2 — SUBSCRIPTION DOCUMENTS:
    Subscription agreement: LP signs; fund counsel reviews; countersigned by Matt Mathison
    Investor questionnaire: completed by LP (confirms qualification; risk disclosures)
    Signature pages: all LPA signature pages executed
    Escrow or capital account: set up before first capital call
    
  PHASE 3 — CAPITAL ACCOUNT SETUP:
    LP capital account created in fund accounting system (fund administrator)
    Commitment amount recorded
    First capital call percentage: per LPA (typically pro-rated to match other LPs at same closing)
    
  PHASE 4 — WELCOME ONBOARDING:
    Welcome letter from Matt Mathison (Dr. Lewis drafts; Matt signs)
    Fund documents package: signed LPA; side letter (if any); subscription agreement copies
    Quarterly report history: all prior quarterly reports provided to catch up new LP
    Contact setup: LP contact details in LP register; communication preferences noted
    Bank account setup: LP wire instructions obtained and verified (phone call required — BEC fraud risk)
    
  FIRST CAPITAL CALL TO NEW LP:
    New LPs at a subsequent close typically make a catch-up capital call to match existing LPs
    Catch-up amount: based on LPA provisions (may include interest on the pro-rated capital)
    Timing: 10 business day notice minimum (per LPA)
    pe-capital-call-manager handles the notice and wire tracking
    
SPECIAL LP TYPES:
    
  FOREIGN LPs:
    Additional consideration: ITAR/EAR restrictions if fund invests in defense-adjacent companies
    CFIUS: if fund may acquire US business, foreign LP investment may require review
    Legal counsel: always involved for foreign LP subscription
    
  INSTITUTIONAL LPs (pension funds; endowments; sovereign wealth funds):
    Investment policy review: does the LP's investment policy permit private equity?
    ERISA: if LP is an ERISA plan, fund must determine whether it triggers plan asset rules
    Side letter: common for institutional LPs; Dr. Lewis negotiates with legal counsel; Matt Mathison approves
```

## Output Format

```markdown
# New LP Onboarding — [LP Name] — [Date]
**Commitment:** $[X]M | **Close:** [First / Second / Final] | **Prepared by:** Dr. Lewis

---

## Compliance Screening Status

| Check | Status | Date | Notes |
|-------|--------|------|-------|
| Qualified investor verified | ✅ / ⏳ / 🔴 | [Date] | QP / AI / Institution |
| OFAC screening | ✅ / ⏳ / 🔴 | [Date] | — |
| Beneficial ownership | ✅ / ⏳ / 🔴 | [Date] | [N] beneficial owners identified |
| FATCA classification | ✅ / ⏳ / 🔴 | [Date] | W-9 / W-8BEN-E |
| KYC documentation | ✅ / ⏳ / 🔴 | [Date] | — |

---

## Subscription Document Status

| Document | Received | Countersigned | Filed |
|---------|---------|--------------|-------|
| Subscription agreement | ✅ / ⏳ | ✅ / ⏳ | ✅ / ⏳ |
| Investor questionnaire | ✅ / ⏳ | — | ✅ / ⏳ |
| LPA signature pages | ✅ / ⏳ | ✅ / ⏳ | ✅ / ⏳ |

---

## Capital Account Setup

**Commitment:** $[X]M
**Catch-up call amount:** $[X]M (pro-rated to [X]% of commitment — to match existing LPs)
**Capital call notice date:** [Date] | **Wire due date:** [Date]

---

## Welcome Checklist

- [ ] Welcome letter signed by Matt Mathison
- [ ] Fund document package delivered
- [ ] Prior quarterly reports sent
- [ ] Wire instructions obtained and verified (phone call ✅)
- [ ] LP added to distribution list
```

## Output Contract
- No capital is accepted before OFAC screening clears — an OFAC hit (SDN match or PEP concern) that is discovered after capital has been accepted creates a legal problem (potential sanctions violation or AML violation) that is far more expensive and damaging than the delay of screening first; Dr. Lewis runs OFAC and PEP screening before the subscription agreement is countersigned; if a screen produces a potential hit, legal counsel reviews immediately; Matt Mathison is briefed; no countersignature and no capital until legal counsel clears or the LP is rejected; a rejected LP receives a professional, neutral notification that MBL is unable to proceed — no explanation of the specific screening concern is provided (legal guidance)
- LP bank account wiring instructions are verified by phone call to the LP's primary contact, not just by email — business email compromise (BEC) is the most common fraud vector in LP-GP wire transactions; an attacker who intercepts an email and changes the wire instructions receives MBL's distribution or catch-up call proceeds; Dr. Lewis calls the LP's primary contact (number from the subscription agreement or onboarding form — not from an inbound email) to verify the wire instructions before any wire is sent; this phone verification is logged with the date; time; person called; and instructions confirmed; if an LP is frustrated by the phone verification requirement: "This is our standard anti-fraud control on all wire instructions. We've had wire fraud attempts in the industry and we verify instructions by phone for every LP regardless of the relationship."
- Institutional LP side letters are reviewed by legal counsel before countersignature — side letters grant LPs enhanced information rights; preferred fee terms; co-investment rights; or other privileges; a side letter that was not reviewed by legal counsel may inadvertently create obligations MBL cannot honor; may create an equal treatment obligation (what is granted to one LP may be required for all); or may conflict with the LPA; Dr. Lewis does not negotiate side letter terms without legal counsel present; Matt Mathison approves all side letter terms before countersignature
- HITL required: OFAC/AML screening → Dr. Lewis clears; any OFAC potential hit → Matt Mathison briefing + legal counsel review; subscription agreement countersignature → Matt Mathison signs; qualified investor verification → Dr. Lewis certifies; side letter terms → Matt Mathison approves; foreign LP subscription → legal counsel involved; wire instructions → Dr. Lewis phone-verifies and logs; first capital call to new LP → pe-capital-call-manager process with 10 business day notice; new LP added to LP register → Dr. Lewis records and confirms

## System Dependencies
- **Reads from:** LPA (qualified investor requirements; capital call notice requirements; admission procedures; side letter framework); pe-lp-admin (LP register; existing LP contacts); pe-capital-call-manager (catch-up capital call coordination); pe-fund-compliance (qualified investor standards; OFAC policy; FATCA requirements); OFAC SDN list (external — government database); fund counsel (subscription document review; ERISA analysis; CFIUS if applicable)
- **Writes to:** LP register (pe-lp-admin); fund accounting system (capital account setup — fund administrator); subscription document file (SharePoint → Investor Relations → LPs → [LP Name]); KYC/AML compliance file; welcome letter; Matt Mathison LP relationship briefing
- **HITL Required:** OFAC clear → Dr. Lewis certifies; OFAC hit → Matt + legal review; subscription countersignature → Matt signs; QP/AI verification → Dr. Lewis certifies; side letter → Matt approves; foreign LP → legal involved; wire instructions → Dr. Lewis phone-verifies; first capital call → pe-capital-call-manager process

## Test Cases
1. **Golden path:** New LP — family office committing $2M to the fund at the second close. Dr. Lewis initiates: (1) QP verification — LP's investment office sends brokerage statement showing $8.2M in investments → QP confirmed; (2) OFAC screening — name and 2 beneficial owners screened → no hits; (3) FATCA — US entity; W-9 received; (4) KYC — certificate of formation; operating agreement; EIN confirmed; authorized signatory confirmed; (5) Subscription agreement sent; LP signs; Matt Mathison countersigns; (6) Capital account set up by fund administrator ($2M commitment); (7) Catch-up call: 40% of commitment ($800K) to match existing LPs at their current drawn percentage; notice sent (10 business day); wire received on time; (8) Welcome package sent; prior quarterly reports provided; wire instructions verified by phone call (logged).
2. **Edge case:** A foreign LP (entity based in Singapore) wants to commit $5M → Dr. Lewis: "Foreign LP requires additional steps: (1) Legal counsel engaged immediately — we need analysis of FATCA implications (W-8BEN-E classification), Singapore-specific beneficial ownership documentation, and whether this LP's investment would trigger CFIUS review (MBL's portfolio doesn't currently include defense-adjacent companies, but this should be confirmed); (2) If ERISA plan assets would make this fund a 'plan asset fund,' we need that determination before any foreign LP is admitted; (3) International wire verification protocol: we will need to coordinate with the LP's bank to verify wire instructions in a way that accounts for time zones. Matt Mathison briefing: foreign LP at $5M commitment — legal counsel engaged. I'll provide a complete compliance summary before we proceed to subscription documents."
3. **Adversarial:** An LP's wire instructions change via email 2 days before the catch-up call is due, and the LP claims it's because they switched banks → Dr. Lewis: "I received an email purporting to be from [LP contact] with updated wire instructions. I'm treating this as a potential BEC attempt regardless of who it appears to be from. Protocol: I will call [LP contact] directly at the phone number we have on file from the subscription agreement and verify: (1) that they sent this email; (2) the new wire instructions character-by-character. I will NOT send any wire to the new instructions until this phone verification is complete. If the contact confirms, I'll log the call and update the instructions. If the contact says they didn't send it, I'm treating it as a fraud attempt and reporting it to Matt Mathison and potentially law enforcement."

## Audit Log
All KYC/AML documentation retained per AML policy retention requirements. OFAC screening records retained (date; result; any hits and resolution). Subscription documents retained permanently. Beneficial ownership records retained. Wire instruction verification log retained (phone call; date; person called; instructions confirmed). Capital account setup records retained. Side letter records retained. Welcome package delivery records retained.

## Deprecation
New LP onboarding is required at each fund closing and for each secondary transfer of an LP interest. The compliance checklist is updated when AML regulations, FATCA guidance, or fund counsel recommendations change.
