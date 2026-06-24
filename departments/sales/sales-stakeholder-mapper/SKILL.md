---
name: sales-stakeholder-mapper
description: "Map stakeholders in complex sales accounts to guide multi-stakeholder engagement. Use when the user says 'stakeholder', 'stakeholder map', 'stakeholder mapping', 'who are the stakeholders', 'stakeholder analysis', 'stakeholder engagement', 'stakeholder strategy', 'multi-stakeholder', 'multiple buyers', 'multiple decision makers', 'buying committee', 'who else is involved', 'who else do I need to talk to', 'who has influence', 'influencer', 'power map', 'political map', 'org chart', 'internal dynamics', 'who blocks', 'who approves', 'approval chain', 'who signs', 'signatory', 'who has veto', 'veto power', 'deal committee', 'decision committee', 'buying team', 'legal review', 'procurement', 'finance review', 'HR buy-in', 'IT approval', 'CFO approval', 'board approval', 'executive sponsor', 'executive alignment', 'Allevio stakeholders', 'Column6 stakeholders', 'HIVE stakeholders', 'employer stakeholders', 'agency stakeholders', or 'account stakeholders'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--account <name>] [--action <map|update|gap-analysis|engagement-plan>]"
---

# Sales Stakeholder Mapper

Map stakeholders in complex sales accounts to guide multi-stakeholder engagement — identifying who influences, who decides, who blocks, and who signs so the rep covers the right people in the right sequence. Complex deals die when a rep sells to one person, wins that person over, and then discovers there are three other people who weren't engaged and who have concerns that could have been addressed months earlier.

## When to Use
- Mapping a new complex opportunity before beginning active sales
- Identifying gaps in stakeholder coverage mid-deal
- Building an engagement plan when multiple decision makers are involved
- Preparing for a close meeting where multiple stakeholders will be present

## Stakeholder Mapping Framework

```
STAKEHOLDER CATEGORIES:

  Economic Buyer (EB): controls the budget; makes the final yes/no decision
    Allevio: CFO (budget) or CEO (small employer)
    Column6: VP Media or Director Media (for large IOs); Media Buyer (for smaller IOs)
    HIVE: seller (individual or estate representative)
    
  Champion (CH): internal advocate; wants entity to win; see sales-champion-builder
    Allevio: HR Director (most common)
    Column6: Media Buyer (most common)
    HIVE: N/A (direct with seller); estate attorney (for estate transactions)
    
  User/Influencer (UI): end users; have opinions; may influence EB even without formal authority
    Allevio: employees (anonymous aggregate; not individual-level); employee health committee; benefits broker
    Column6: ad operations team; agency account managers
    HIVE: N/A
    
  Technical Evaluator (TE): evaluates fit; can block on technical grounds
    Allevio: benefits broker (may evaluate Allevio against alternatives); IT (if integration required); legal (contract review)
    Column6: ad ops team (evaluates campaign spec; VAST compliance; trafficking); legal (IO review)
    HIVE: landman (reviews deed and production statement)
    
  Blocker (BL): has veto power; may oppose for various reasons
    Allevio: CFO who doesn't want to change benefits structure; CEO who hasn't heard of Allevio; legal who finds contract terms
    Column6: media director who prefers open exchange on CPM; procurement who adds payment terms complexity
    HIVE: co-heirs who disagree on whether to sell; seller's attorney who complicates terms
    
STAKEHOLDER INFLUENCE SCORING:
  Decision authority: 1 (no authority) to 5 (sole decision maker)
  Influence level: 1 (no influence on EB) to 5 (direct influence on EB)
  Current sentiment: 🟢 Positive / 🟡 Neutral / 🔴 Negative / ⬜ Unknown
  Coverage status: Met / Introduced / Not yet contacted
  
ALLEVIO STAKEHOLDER MAP (typical):
  CFO (EB): authority 5; influence 5; sentiment usually ⬜ or 🟡 at discovery; must be engaged by Stage 5
  HR Director (CH): authority 2; influence 4 (on CFO for benefits decisions); sentiment 🟢 if champion is real
  Benefits Broker (UI/TE): authority 1; influence 3 (HR Director relies on broker advice);
    sentiment: varies — may be neutral (independent broker) or negative (captive broker who loses if Allevio wins)
    ALWAYS ask: "Is your current benefits broker involved in this evaluation?"
  Legal/HR compliance (BL/TE): authority 2 (can delay or block); influence 2; contract review required
  
COLUMN6 STAKEHOLDER MAP (typical):
  VP Media (EB): authority 4; influence 4; must be in close meeting for >$100K IOs
  Media Buyer (CH): authority 2; influence 3 (VP Media trusts them on tactical execution); sentiment 🟢 if champion
  Ad Ops team (TE): authority 1; influence 2; evaluates technical execution; must approve creative spec
  Procurement (BL/TE): authority 3 (payment terms; vendor approval); added on larger IOs; can add 2-4 weeks
  
ENGAGEMENT SEQUENCING RULES:
  Start with champion; earn their trust; use them to access economic buyer
  Engage economic buyer by Stage 5 (or earlier if possible)
  Identify and neutralize blockers by Stage 4 (don't wait until close to discover them)
  Technical evaluators: engage in parallel with champion development; give them what they need to say yes
  
BENEFITS BROKER MANAGEMENT (Allevio-specific):
  Captive broker (tied to a specific carrier): potential blocker — if Allevio disrupts their revenue model
  Independent broker: potential influencer — if they see Allevio as a value-add for their client
  ALWAYS engage the broker early: "We'd love to include your broker in our conversations — they'll have important context"
  Captive broker neutralization: "Allevio supplements; it doesn't replace the broker's health plan recommendation"
  Never go around the broker without acknowledgment — it creates an enemy who has existing CFO access
  
STAKEHOLDER COVERAGE GAP ASSESSMENT:
  For every Stage 4+ deal: all decision-authority stakeholders must be at least "Introduced"
  Any stakeholder with authority ≥3 and sentiment ⬜ (Unknown) = coverage gap
  Coverage gaps at Stage 5 are the most common cause of late-stage deal surprises
```

## Output Format

```markdown
# Stakeholder Map — [Account Name] | [Date]
**Entity:** [Allevio/Column6/HIVE] | **AE:** [Name] | **Deal Stage:** [N] | **ACV:** $[X]

---

## Stakeholder Register
| Name | Title | Role | Authority (1-5) | Influence (1-5) | Sentiment | Coverage |
|------|-------|------|-----------------|-----------------|-----------|---------|
| [Name] | [Title] | EB/CH/UI/TE/BL | [N] | [N] | 🟢/🟡/🔴/⬜ | Met/Intro/None |

---

## Coverage Gap Analysis
| Stakeholder | Role | Gap | Priority |
|------------|------|-----|---------|
| [Name] | [Role] | [Not met / Sentiment unknown / Not engaged] | [High/Medium/Low] |

---

## Engagement Plan
| Stakeholder | Action | Owner | Target date |
|------------|--------|-------|------------|
| [Name] | [Specific action: meeting / call / material delivery] | [AE / Entity CEO] | [Date] |

---

## Deal Risk Assessment
- **Uncovered high-authority stakeholders:** [N]
- **Known blockers:** [Names + sentiment]
- **Economic buyer access:** [Direct / Through champion / Not yet]
- **Overall coverage:** [Complete / Gaps identified / Significant gaps]
```

## Output Contract
- An unknown-sentiment high-authority stakeholder is a ticking clock — a CFO who has authority 5 and sentiment ⬜ (you've never spoken to them) at Stage 5 is the most common reason enterprise deals die at close; the champion told the rep "the CFO will be fine with it" and the rep believed them; the CFO wasn't fine with it, or had questions that no one had anticipated, or had a competing priority that made the decision feel premature; by the time the rep discovers this, it's too late in the process to go back and build the CFO relationship from scratch; the stakeholder map's job is to surface these coverage gaps at Stage 4 — when there's still time to schedule the CFO introduction and address the concerns
- Benefits brokers are either your ally or your blocker at Allevio — ignoring them is how you lose deals where the CFO asks "what does our broker think about this?" and the broker says "I've never heard of them"; engaging them early lets the broker become an informed neutral (at minimum) or an active supporter (if they see Allevio as a value-add that makes their client stickier); the question is not whether to engage the broker — it is how to engage them in a way that respects their relationship with the employer client; Dr. Lewis coaches: call the broker in parallel with the HR Director; position Allevio as supplement, not replacement; offer to include the broker in the demo
- HITL required: high-authority stakeholder with negative sentiment discovered → entity CEO + Dr. Lewis strategy session; known blocker at Stage 5+ → entity CEO involvement to neutralize; CFO not yet engaged at Stage 5 → entity CEO may join the CFO introduction meeting; benefits broker engagement strategy → entity CEO approves approach; Column6 procurement added to deal → entity CEO + legal reviews IO terms before procurement review; HIVE estate attorney involvement → Dr. Lewis coordinates with Matt Mathison

## System Dependencies
- **Reads from:** GHL (opportunity notes; stakeholder fields; economic buyer field; champion field; MEDDPICCC decision criteria and paper process sections; activity log); discovery notes (sales-discovery-guide — stakeholder discovery questions); champion status (sales-champion-builder)
- **Writes to:** GHL (stakeholder fields; authority scores; sentiment; coverage status; gap flags; activity log); stakeholder map document (SharePoint → [Entity] → Sales → Opportunities → [Account] → Stakeholder-Map-[Date]); entity CEO briefing (high-authority coverage gaps; known blockers)
- **HITL Required:** High-authority negative sentiment → entity CEO + Dr. Lewis; known blocker Stage 5+ → entity CEO; CFO not engaged at Stage 5 → entity CEO may join introduction; broker engagement strategy → entity CEO approves; Column6 procurement → entity CEO + legal reviews; HIVE estate attorney → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** 180-employee Allevio employer. Discovery yields: HR Director (Amanda, champion, authority 2, sentiment 🟢), CFO (Bill, economic buyer, authority 5, sentiment ⬜), Benefits Broker (Kendra at ABC Benefits, authority 1, influence 3, sentiment ⬜). Coverage gap: CFO and broker both ⬜. Action plan: (1) Ask Amanda to introduce rep to Bill CFO next week → champion test; (2) Contact Kendra the broker directly: "Amanda mentioned you're their benefits advisor — we'd love to include you in our conversation; Allevio complements the health plan rather than replacing it." Kendra: "I've had one other client look at Allevio — they liked it. Sure, include me." Broker: 🟡 → 🟢. CFO introduction via Amanda: 🟡 after 15-minute call. Stage 5 stakeholder map: complete. All authority ≥3 stakeholders met and 🟡 or 🟢.
2. **Edge case:** Column6 deal at Stage 5 ($200K IO) — procurement added at last minute by VP Media. Rep didn't know procurement was involved → Dr. Lewis: "Procurement involvement on a $200K IO is common — it adds 2-4 weeks and will generate questions about payment terms (net 30 vs. 45/60), vendor approval process (W-9; insurance certificate; security questionnaire), and possibly contract language. Actions: (1) Entity CEO must review our standard IO for procurement-unfriendly terms before it goes to procurement; (2) Rep needs to get the VP Media champion to set a timeline with procurement ('What's procurement's typical review time? And can we get on their schedule for next Tuesday?') — without timeline pressure from the VP Media, procurement will deprioritize; (3) Close date should slip by 3-4 weeks; update GHL now. This was discoverable — the stakeholder map should have asked 'Is there a procurement or vendor approval process?' at Stage 3."
3. **Adversarial:** Rep wants to "skip" the benefits broker and go directly to the CFO — "the broker is complicated and might slow things down" → Dr. Lewis: "Going around the broker is a trap. Here's why: (1) The broker has an existing relationship with the CFO that predates your deal by years; (2) If the CFO asks 'Has your broker looked at this?' and the broker says 'I've never heard of it,' you've created suspicion — why didn't they include me?; (3) If the broker finds out you went around them, they have future influence with this client and every other employer they advise; you've made an enemy with a large network. The right move: call the broker before the CFO meeting. 'Kendra, we're going to be meeting with Bill CFO at [Company] next week — we wanted to loop you in so you're not caught off guard. Can we take 20 minutes to walk you through Allevio?' This makes the broker an informed neutral at minimum. Skipping them risks the deal and the broader relationship."

## Audit Log
Stakeholder map records (all Stage 4+ deals; maps by version; SharePoint → [Entity] → Sales → Opportunities → [Account]). Coverage gap records (high-authority gaps identified; entity CEO notification; action taken). Blocker records (blocker identity; neutralization approach; outcome). Broker engagement records (Allevio deals — broker name; contact date; outcome; sentiment). CFO engagement records (Allevio — date first engaged; introduction method; sentiment at close). Column6 procurement records (deal; procurement requirements; timeline impact; entity CEO review).

## Deprecation
Stakeholder category definitions reviewed annually. Broker management guidance reviewed when Allevio's benefits broker channel strategy changes. Column6 procurement guidance reviewed when typical IO size changes. HIVE stakeholder guidance reviewed when acquisition deal structure changes. MEDDPICCC integration reviewed when discovery process changes.
