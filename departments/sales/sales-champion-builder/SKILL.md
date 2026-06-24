---
name: sales-champion-builder
description: "Develop and leverage internal champions within prospect accounts. Use when the user says 'champion', 'internal champion', 'build a champion', 'find a champion', 'champion strategy', 'who is my champion', 'do I have a champion', 'champion development', 'internal advocate', 'internal ally', 'internal sponsor', 'advocate in the account', 'who is fighting for us internally', 'who is selling for us internally', 'champion coaching', 'coach the champion', 'arm the champion', 'champion enablement', 'equip the champion', 'multiple champions', 'champion vs economic buyer', 'champion access', 'champion relationship', 'champion trust', 'losing my champion', 'champion left', 'champion changed roles', 'champion at risk', 'test the champion', 'champion test', 'Allevio champion', 'Column6 champion', 'HIVE champion', 'HR Director champion', 'CFO champion', 'media buyer champion', or 'champion engagement'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--action <identify|develop|test|arm|recover>] [--account <name>]"
---

# Sales Champion Builder

Develop and leverage internal champions within prospect accounts — identifying the right internal advocate, building the relationship and equipping them with the tools to sell internally on the entity's behalf. A champion is the person inside the prospect organization who wants the entity's solution to win and will actively work to make it happen. Without a champion, you don't have a deal; you have a conversation.

## When to Use
- Assessing whether you have a champion in a current opportunity
- Developing a new champion relationship in a prospect account
- Arming a champion with the internal materials they need to sell internally
- Recovering when a champion leaves or changes roles

## Champion Development Framework

```
CHAMPION DEFINITION:
  A champion is NOT just someone who likes you or your product
  A champion IS someone who:
    1. Believes in your solution (personally motivated for you to win)
    2. Has access to the economic buyer (can influence the decision)
    3. Is willing to sell internally on your behalf (will have conversations you're not in)
    4. Has political capital (their opinion moves others)
    
  Champion test: "If I asked this person to schedule a meeting between me and the CFO, would they do it?"
  If yes: potential champion. If no: supporter, not a champion.
  
CHAMPION IDENTIFICATION BY ENTITY:

  ALLEVIO (employer sales):
    Primary champion: HR Director (owns benefits; feels the employee access problem; has CFO relationship)
    Secondary champion: CFO (if they have been given a cost reduction mandate — rare but powerful)
    Champion signal: HR Director proactively shares information ("Here's what our CFO asked me last week")
    Anti-champion: HR Director who says "I just need to check with my boss" about every step — they have no political capital
    HIPAA note: HR Director champion does not give you access to employee health information; the relationship is employer-level
    
  COLUMN6 (agency sales):
    Primary champion: Media Buyer (owns day-to-day campaign execution; feels the IVT/delivery problem)
    Secondary champion: VP/Director Media (if they care about inventory quality vs. just CPM)
    Champion signal: Media Buyer shares their campaign performance data with you voluntarily; asks for your input on other campaigns
    Anti-champion: Media Buyer who says "I'll bring it to my director" but never follows up; likely doesn't have influence upward
    
  HIVE (acquisition):
    Champion model doesn't apply to HIVE the same way — seller is usually the decision maker
    For estate situations: the champion may be the estate attorney who recommends HIVE to the heirs
    For HIVE, relationship = trust with the seller directly; no internal champion proxy needed
    
CHAMPION DEVELOPMENT PROCESS:
  Step 1 — Identify: based on the criteria above, who is the strongest champion candidate?
  Step 2 — Build the relationship: earn their trust before asking them to sell for you
    Give them something valuable first: insight; competitive positioning; ROI model
    Make them look smart in internal conversations: give them data their CFO will find compelling
    Be responsive: fastest response times go to champions and economic buyers
    
  Step 3 — Test the champion: ask a small ask first
    "Would you be able to share our one-pager with your CFO before our next meeting?"
    If they do it: champion confirmed. If not: supporter, not a champion. Find a different champion.
    
  Step 4 — Arm the champion: give them what they need to sell internally
    Executive summary: 1 page; business case language; designed for CFO, not HR Director
    ROI model: populated with their numbers; conservative case
    Competitive summary: why us vs. alternatives (their CFO will ask)
    FAQ: common objections and responses (so champion isn't caught off guard internally)
    
  Step 5 — Stay connected between meetings: champions need intel on internal dynamics
    Check in weekly (brief: "anything we should know?")
    Give them updates on implementation timelines; other customers; anything that builds their internal case
    
CHAMPION AT RISK:
  Signals: champion goes quiet (no responses); champion says "it's complicated internally"
  Champion leaves/changes roles:
    Immediate action: who is their replacement? Who else in the account has relationship with entity?
    Do NOT wait for the deal to stall; reach out to the replacement within 1 week
    Re-earn: the new champion needs to be developed from scratch; share the history but don't assume they're an ally
    
MULTI-CHAMPION STRATEGY (complex deals):
  Ideal: HR Director champion + CFO access (Allevio) or Media Buyer + VP Media (Column6)
  Risk of single champion: if champion leaves or loses influence, the deal dies
  Multi-champion rule: for any deal >$100K ACV (Allevio) or >$100K IO (Column6), attempt to build two champions
  
CHAMPION VS. ECONOMIC BUYER DISTINCTION:
  Champion: internal advocate; may or may not be the final decision maker
  Economic buyer: controls the budget; makes the final yes/no
  Best case: champion IS the economic buyer (CFO who wants to solve cost trend)
  Common case: champion enables access to economic buyer (HR Director → CFO)
  Never mistake champion for economic buyer if they don't control the budget
```

## Output Format

```markdown
# Champion Assessment — [Account Name] | [Date]
**Entity:** [Allevio/Column6/HIVE] | **AE:** [Name] | **ACV:** $[X]

---

## Champion Profile
| Item | Detail |
|------|--------|
| Champion name | [Name] |
| Title | [Title] |
| Champion type | [Primary / Secondary] |
| Believes in our solution | [Yes/No — evidence] |
| Access to economic buyer | [Direct / Through others / None] |
| Willing to sell internally | [Confirmed / Testing / Unknown] |
| Political capital | [High / Medium / Low] |
| Champion test result | [Passed / Pending / Failed] |

---

## Champion Strength: [Strong / Developing / Weak / None]

## Current Champion Actions
[What the champion is actively doing internally to advance the deal]

## Champion Arming Status
- [ ] Executive summary delivered
- [ ] ROI model delivered (with their numbers)
- [ ] Competitive FAQ delivered
- [ ] Internal meeting scheduled via champion

## Risks
[Champion at risk signals; single-champion exposure; champion not yet tested]

## Recommended Actions
[Specific actions to build or strengthen the champion — with dates]
```

## Output Contract
- No champion means no deal — this is a diagnostic statement, not a tactic; at Stage 4 (Qualified), if the rep cannot name a champion who has passed the champion test, the deal is not qualified; it is a conversation with a contact who likes the rep; Dr. Lewis coaches: a prospect who says "sounds great, let me talk to my team" without proactively advocating internally is not a champion — they're a messenger; the difference between a champion and a messenger is that the champion gives you intelligence about what's happening internally and fights to move the process forward; if you don't know who's fighting for you inside the account, no one is
- The champion test must actually be run — giving the champion a small ask ("can you share this one-pager with your CFO?") and observing what happens is the only reliable way to verify champion strength before Stage 5; a rep who says "I think they're a champion" but has never tested them is guessing; the champion test is also a gift to the deal — if the champion fails the test (they don't share the one-pager; they make excuses), the rep learns this at Stage 3 or 4 instead of discovering it at Stage 6 when the deal is supposed to close and the CFO has never heard of the entity; Dr. Lewis coaches reps to run the champion test by end of Stage 4 on every deal
- HITL required: deals >$100K ACV with only 1 champion → entity CEO alerts rep to build second champion; champion leaves account → entity CEO + rep: who else in the account; replacement outreach within 1 week; champion identified as economic buyer → entity CEO + Dr. Lewis validate (rare but important for close strategy); champion arming materials sent to account → Dr. Lewis reviews materials for HIPAA compliance (Allevio) before rep delivers; multi-champion strategy for strategic accounts → entity CEO co-owns the relationship at VP level

## System Dependencies
- **Reads from:** GHL (opportunity notes; champion field; economic buyer field; activity log; MEDDPICCC champion dimension); discovery notes (sales-discovery-guide — champion and economic buyer sections); deal reviews; pipeline status (sales-pipeline-review)
- **Writes to:** GHL (champion field; champion test result; champion arming status; risk flags; activity log); champion arming materials (exec summary; ROI model; competitive FAQ — SharePoint → [Entity] → Sales → Champion-Materials → [Account]); pipeline review (champion health noted for Stage 4+ deals)
- **HITL Required:** Deals >$100K with single champion → entity CEO alerts; champion departure → entity CEO + rep; champion identified as economic buyer → entity CEO + Dr. Lewis validate; arming materials → Dr. Lewis HIPAA review (Allevio); strategic account multi-champion → entity CEO co-owns VP relationship

## Test Cases
1. **Golden path:** 220-employee Allevio employer. Discovery: HR Director (Amanda Chen) is engaged and enthusiastic. Champion test (Stage 3): rep asks "Amanda, could you share this one-page ROI summary with your CFO before our next call?" Amanda: "Absolutely, I'll send it this afternoon and copy you." → Champion confirmed. Amanda provides intel: "CFO has two objections: he wants to understand the contract exit clause and he's worried about employee disruption during transition." Champion arming: rep delivers CFO executive summary; ROI model (Conservative case); 3-question FAQ addressing CFO's specific concerns; implementation timeline with low-disruption rollout. CFO meeting secured through Amanda. CFO meeting: CFO reviewed the materials Amanda shared; asks about exit clause → covered in FAQ; meeting successful. Stage 7 (close meeting) scheduled with Amanda + CFO.
2. **Edge case:** Champion (Media Buyer at Column6 agency) leaves the agency mid-deal. $75K IO at Stage 5 → Dr. Lewis coaching: "(1) Who was their manager? Media Director → contact within 5 days; introduce yourself; reference the work you did with [former media buyer]; offer to do a 15-minute call to walk them through what was discussed; (2) Who else at the agency did you have relationships with? Even a brief intro with the ad ops team matters; (3) Do not assume the new contact will know anything — start the champion development process fresh; (4) Check the IO status — if the agency has already committed verbally and the IO is in draft, the institutional memory may keep the deal alive; if it was at Stage 4, assume you're back to Stage 3 until you know the new contact's level of engagement. Update GHL: champion changed; stage back to 4 pending new champion assessment."
3. **Adversarial:** Rep says "the HR Director told me the CFO is going to approve it — they're definitely our champion" but rep has never spoken to the CFO and has never tested the HR Director's actual influence → Dr. Lewis: "Run the champion test today. Ask Amanda to do something specific that requires her to influence the CFO: 'Amanda, can you schedule a 20-minute call between the CFO and me for next week? I'd like to walk him through the financial model directly.' If Amanda schedules the call: strong champion. If Amanda says 'I'm not sure he has time' or 'Let me see what I can do' and nothing happens: she's a messenger with limited CFO access, not a champion. The deal is not as far along as it appears. We'll know within a week — and knowing now, at Stage 5, is far better than discovering it when the CFO's assistant says 'He's not expecting any vendor calls.'"

## Audit Log
Champion assessment records (all Stage 4+ deals; champion name; test result; arming status; GHL). Champion departure records (account; departure date; replacement contact; entity CEO action; timeline). Champion test records (what was asked; what happened; result logged in GHL). HIPAA review records for champion arming materials (Allevio accounts; Dr. Lewis review date). Multi-champion strategy records (accounts >$100K; second champion status; entity CEO involvement).

## Deprecation
Champion framework reviewed annually. Champion test methodology reviewed when entity's sales motion changes. HIVE-specific champion guidance reviewed when acquisition process changes. Multi-champion threshold reviewed when average ACV changes.
