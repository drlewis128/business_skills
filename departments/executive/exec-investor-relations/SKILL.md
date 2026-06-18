---
name: exec-investor-relations
description: "Manage LP and investor relationships for MBL Partners. Use when the user says 'investor relations', 'LP relations', 'LP relationship', 'manage investors', 'LP communication', 'investor communication', 'LP call', 'LP meeting', 'investor meeting', 'LP update', 'investor update', 'LP outreach', 'LP touchpoint', 'LP engagement', 'LP satisfaction', 'manage the LP relationship', 'LP conversation', 'investor conversation', 'LP question', 'investor question', 'what do LPs want to know', 'LP cadence', 'LP management', 'LP reporting relationship', 'LP annual meeting', 'investor annual meeting', 'LP feedback', or 'investor feedback'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--lp <name>] [--action <prepare|communicate|report|meeting|annual>] [--event <quarterly|annual|ad-hoc|escalation>]"
---

# Exec Investor Relations

Manage LP and investor relationships for MBL Partners — maintaining the trust, transparency, and communication cadence that LP relationships require at a private equity / holding company. LP relationships are MBL's most important long-term capital relationships; an LP who trusts MBL will continue to support the portfolio and may provide additional capital; an LP who feels surprised, uninformed, or misled will eventually withdraw. The standard at MBL is proactive honesty: communicate bad news before LPs discover it, and communicate good news with specifics, not generalities.

## When to Use
- Quarterly LP report is due (exec-lp-reporting)
- An LP requests an ad hoc call or update
- A significant portfolio event occurs (acquisition, entity underperformance, liquidity event)
- Annual LP meeting preparation
- A new LP is being onboarded to the MBL portfolio
- An LP is considering a follow-on investment

## Investor Relations Framework

```
LP RELATIONSHIP TIERS:

  Tier 1 — Strategic LPs (>20% of total capital; long-term relationship):
    Matt Mathison personal relationship; calls every 2-3 months minimum
    Dr. Lewis provides quarterly briefing packages
    Annual in-person meeting (ideally at a portfolio company tour)
    Any material portfolio event: Matt calls proactively within 24 hours
    
  Tier 2 — Core LPs (5-20% of total capital; established relationship):
    Quarterly report + semi-annual call with Matt
    Material portfolio events communicated in writing within 48 hours
    Annual meeting attendance (invited; not mandatory)
    
  Tier 3 — Portfolio LPs (<5% of total capital; ongoing relationship):
    Quarterly report
    Annual meeting (written summary sent if they can't attend)
    Material events communicated in writing within 5 business days
    
LP COMMUNICATION PRINCIPLES:

  1. Proactive beats reactive:
     An LP who reads about a portfolio problem in an industry newsletter before hearing
     from Matt Mathison has already lost some trust. Material events (entity underperformance
     vs. plan, M&A activity, management team changes) are communicated to Tier 1 LPs
     by Matt directly, proactively, before the event becomes public or reaches a material
     threshold. Tier 2 get written communication within 48 hours. Tier 3 get it in the quarterly.
     
  2. Honesty about underperformance earns more trust than optimistic spin:
     LPs at MBL's stage are sophisticated investors. They know portfolios miss plan.
     What they cannot tolerate is discovering that management knew about a miss and
     didn't communicate it, or communicated it with spin that obscured the severity.
     Every LP communication is reviewed against the THRIVE Truth filter: are we
     communicating the situation as it actually is?
     
  3. Specific > Vague:
     "Portfolio performance was solid" is not LP communication; it is a newsletter.
     "Allevio employer group GRR held at 93% vs. our 90% target; HIVE royalties distributed
     $285K this quarter on track vs. plan; Column6 VCR averaged 92.3% across all campaigns"
     is LP communication. LPs invested because they believe in specifics; generic language
     erodes that belief.
     
  4. One voice from MBL:
     All material LP communications go through Matt Mathison. Dr. Lewis prepares, drafts,
     and briefs; Matt delivers. LPs do not receive conflicting information from different
     MBL representatives. If a Dr. Lewis communication with an LP is needed, Matt
     Mathison is informed in advance.

LP CALL STRUCTURE (Tier 1 and Tier 2):

  Pre-call preparation (Dr. Lewis prepares; Matt uses):
    □ Last call summary: what was discussed; what we committed to; what has changed
    □ Current portfolio status (exec-kpi-dashboard Tier 1 metrics)
    □ One positive development since last call (specific; with numbers)
    □ One challenge and what we're doing about it (honest; with action)
    □ Any questions Matt expects from this LP (based on prior conversations)
    
  Call structure (30-45 min):
    1. Brief portfolio update (5-7 min): Matt covers BLUF on portfolio health
    2. LP question period (15-20 min): Matt answers with specifics; no deflection
    3. Forward look (5 min): What's coming next quarter; any decisions that may affect LP
    4. Close (2-3 min): Next communication, anything LP needs from MBL
    
  Post-call notes (Dr. Lewis logs within 24 hours):
    □ What was discussed
    □ What commitments were made (follow-up items → exec-action-tracker)
    □ LP sentiment (positive; neutral; concerned)
    □ Any follow-up items with due dates
```

## Output Format

```markdown
# LP Briefing Package — [LP Name] | Q[X] [YYYY]
**Tier:** [1/2/3] | **Contact:** Matt Mathison | **Date:** [Date]
**Next scheduled contact:** [Date]

---

## Portfolio Update for This LP

**BLUF:** [3 sentences: overall portfolio health; one win; one challenge being addressed]

**Portfolio metrics:**
| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Portfolio NRR | [X]% | >100% | 🟢/🟡/🔴 |
| Portfolio GRR | [X]% | >85% | 🟢/🟡/🔴 |

**Allevio:** [One-paragraph summary — what's working, what's not, what's next]
**HIVE:** [One-paragraph summary]
**Column6:** [One-paragraph summary]

---

## Open Items from Last Call

| Commitment | Status | Notes |
|-----------|--------|-------|
| [What Matt committed to] | ✅ Done / 🔄 In progress | [Update] |

---

## Expected Questions & Prepared Responses

| Question | Response |
|---------|---------|
| [Question this LP typically asks] | [Specific, data-backed response] |
```

## Output Contract
- Material events go to Tier 1 LPs within 24 hours — Matt Mathison makes the call; Dr. Lewis prepares the talking points (exec-talking-points-builder) within 2 hours of the event being confirmed; "material" means any event that would affect an LP's perception of the portfolio value or risk: entity underperformance vs. plan by >15%, management team departure, regulatory action, M&A activity, significant customer loss (GRR drop >5 pts); the test is "if an LP saw this in the news before hearing from Matt, would they be upset?" — if yes, it's material
- LP call commitments are logged and tracked — every commitment Matt makes on an LP call ("I'll send you the updated OKR progress by next week") is logged in exec-action-tracker with a due date; Dr. Lewis follows up weekly on open LP commitments; an LP commitment that misses its due date without proactive communication is a trust-eroding event
- All LP communications are reviewed for THRIVE Truth compliance — before any LP communication is sent, Dr. Lewis applies the Truth test: are we describing the portfolio situation honestly, or are we using language designed to minimize bad news? Words like "headwinds," "challenges," and "transition" are acceptable when they describe real situations with specific context; they are not acceptable as substitutes for "we missed our plan by X%" with an explanation
- HITL required: Matt Mathison delivers all material LP communications; Dr. Lewis prepares all LP briefing packages and talking points; all LP communication drafts reviewed by Matt before delivery; LP sentiment log reviewed by Matt quarterly; any follow-on investment conversation requires Matt Mathison lead; Dr. Lewis does not make portfolio performance representations to LPs without Matt Mathison's explicit preparation and approval

## System Dependencies
- **Reads from:** exec-kpi-dashboard (portfolio metrics for LP briefings); exec-lp-reporting (formal quarterly LP report — the briefing package supplements this); exec-portfolio-review (portfolio review data for LP updates); exec-action-tracker (open LP commitments); prior LP call notes (SharePoint/IRRelations/[LP]/CallLog/); exec-strategic-planning (forward plan for LP forward-look section)
- **Writes to:** LP briefing packages (SharePoint/IRRelations/[LP]/Briefings/[YYYY-Q]_BriefingPackage.pdf); LP call log (SharePoint/IRRelations/[LP]/CallLog/[Date]_CallNotes.pdf); exec-action-tracker (LP commitments with due dates); exec-lp-reporting (LP call outcomes inform the quarterly report)
- **HITL Required:** Matt Mathison delivers all material LP communications; Dr. Lewis prepares all briefing packages; all drafts reviewed by Matt; LP sentiment reviewed by Matt quarterly; follow-on investment conversations require Matt lead; Dr. Lewis does not make portfolio representations to LPs without Matt approval

## Test Cases
1. **Golden path:** Tier 1 LP quarterly call; Dr. Lewis prepares briefing package 3 days before; BLUF: "Portfolio is tracking to plan. Allevio had a strong retention quarter; HIVE royalties are on schedule; Column6 had one VCR dip that was addressed proactively." Open items from last call: all 2 items closed. Expected question: "How is the Column6 VCR issue resolved?" — response prepared with specific numbers. Matt calls; uses the package; addresses the VCR question with data; LP: "I appreciate that you flagged that proactively in the quarterly report and addressed it before I had to ask." Post-call log: positive sentiment; no new commitments. Next call scheduled for Q3.
2. **Edge case:** Allevio claim ratio spikes in March (+8 points month-over-month); Dr. Lewis identifies this as a material event — it's above the 5-point trigger threshold → Dr. Lewis: "Matt, I need 2 hours to prepare talking points. This is material — Tier 1 LPs should hear from you before the quarterly report. I'll have the talking points ready by 3 PM. The root cause is a flu season surge; it's temporary; clinical team is monitoring. The key message is: we saw it, we're watching it, we expect normalization in April. Here's what you don't want to say on that call..." Matt calls Tier 1 LPs by end of day; talking points in hand; LP: "I appreciate the call — I saw some news about flu hospitalizations in the Southwest, so I had a question. Good to know you're on top of it." Tier 2 LPs receive written update within 48 hours.
3. **Adversarial:** An LP reaches out to Dr. Lewis directly (bypassing Matt) asking for specific entity financial data → Dr. Lewis: "I appreciate you reaching out. For portfolio financial information, Matt Mathison is the right point of contact — he has the full picture and the authority to share portfolio-level data. I'll let him know you reached out and I'm sure he'll follow up shortly. Is there anything I can share context-wise on the technology or operational side that doesn't require the financial detail?" Dr. Lewis immediately informs Matt: "Tier 1 LP [Name] reached out directly asking for Allevio financials. I redirected to you. You should call them today — they may be concerned about something specific." Matt calls; situation resolved; Dr. Lewis logs the interaction and notes the LP's communication preference.

## Audit Log
All LP briefing packages retained by LP and quarter. LP call logs retained (date; attendees; topics; sentiment; commitments). LP commitment records retained with completion dates. Material event communication records retained (what happened; when LP was informed; how). Follow-on investment conversation records retained. LP sentiment trends retained quarterly.

## Deprecation
Retire when MBL has a dedicated Investor Relations function — with Matt Mathison retaining all Tier 1 LP relationships and Dr. Lewis retaining technology and AI strategy communications with LPs who have specific interest in those topics.
