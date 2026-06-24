---
name: sales-referral-program
description: "Build and manage referral programs for MBL portfolio company sales teams. Use when the user says 'referral program', 'referral', 'referrals', 'build a referral program', 'client referral', 'customer referral', 'employee referral', 'referral source', 'referral partner', 'referral network', 'referral strategy', 'referral pipeline', 'generate referrals', 'ask for referrals', 'referral request', 'referral outreach', 'referral incentive', 'referral fee', 'referral bonus', 'referral reward', 'referral commission', 'referral tracking', 'track referrals', 'referral management', 'referral cultivation', 'warm introduction', 'warm intro', 'intro request', 'ask for an introduction', 'network sourcing', 'network-based sourcing', 'net promoter', 'NPS sourcing', 'happy client sourcing', 'existing client sourcing', 'client as source', 'source from clients', 'source from network', 'source from partners', 'Allevio referral', 'Column6 referral', 'HIVE referral', 'broker referral', 'partner referral', 'peer referral', 'chamber referral', 'association referral', 'professional referral', 'customer introduction', 'customer referral program', 'how to get referrals', 'broker program', 'introduce me to', or 'word of mouth'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--source <client|broker|partner|network>] [--action <build|ask|track|pay>]"
---

# Sales Referral Program

Build and manage referral programs for MBL portfolio company sales teams — creating a systematic process for converting satisfied clients, partners, and network relationships into a consistent source of warm introductions. Referral-sourced deals close faster, at higher rates, and with less price pressure than cold outreach — because trust transfers. The rep who waits for referrals to arrive will get a few; the rep who systematically asks for them will build a pipeline.

## When to Use
- Building or reviewing the referral program for an entity
- Preparing a rep to ask for a referral from a satisfied client
- Tracking and managing referral sources and payments
- Identifying the highest-value referral source categories for each entity

## Referral Program Framework

```
REFERRAL TYPES AND SOURCES:

  ALLEVIO REFERRAL SOURCES:
    1. Existing employer clients (peer referrals):
       Best referrals: employers who have completed Year 1 with measurable results
       Referral ask timing: at the 30-day check-in (early adopter); at 6-month milestone;
                           at Year 1 renewal (peak satisfaction moment)
       Target introductions: other HR Directors; CEOs in their peer network; their benefits broker
       Incentive: no formal incentive (peer referral is goodwill; not transactional for employers)
       HIPAA: referral conversation cannot reference specific health results —
              "Our claims trend improved significantly" is the employer's to share about themselves;
              the rep does not share one client's results when asking another for a referral
              
    2. Benefits brokers (channel referrals):
       Full broker referral model: see sales-allevio-broker-channel
       Referral fee: signed agreement BEFORE any introduction; entity CEO + Dr. Lewis authorize each fee
       Never offer a fee to a broker who hasn't signed a referral fee agreement
       Fee structure: entity CEO defines (per new employer signed; per enrolled PMPM; or flat fee)
       
    3. Professional networks and associations (AZ HR associations; employer coalitions):
       No fee for network referrals — relationship-based
       Rep joins and participates: events; speaking; committee membership
       Ask timing: after demonstrating credibility (3-6 months of active participation)
       
  COLUMN6 REFERRAL SOURCES:
    1. Existing agency clients (peer referrals):
       Best referrals: agencies that have completed ≥2 campaigns with strong results
       Referral ask timing: after the second IO closes with strong performance
       Target introductions: other media buyers at different agencies; sister agencies within holding companies
       Incentive: Column6 entity CEO determines if any formal incentive applies (rarely transactional)
       Client confidentiality: rep does NOT share one agency's campaign results when asking for a referral
       ("One of our other clients' results" — OK; "Agency X's campaign produced these results" — NOT OK)
       
    2. Industry events and conference introductions:
       Conference referral: warm intro from existing agency contact to a new agency they know
       Rep: "If you know anyone at [Target Agency] — I'd love a quick intro"
       Incentive: none (professional courtesy)
       
  HIVE REFERRAL SOURCES:
    1. Mineral owners who have sold to HIVE (seller referrals):
       Target: sellers who were satisfied with the acquisition process
       Ask timing: 30 days after close (when proceeds are received)
       "Do you know any other mineral owners in the basin who might be open to exploring a sale?"
       Matt Mathison approves outreach approach for seller referral asks
       Incentive: no formal finder's fee for individual mineral owners (not compliant without proper licensing)
       
    2. Estate attorneys and landmen:
       Broker-type relationship: estate attorneys who advise clients on inherited mineral rights
       Not a formal referral fee arrangement for estates without legal review
       Dr. Lewis reviews any compensation arrangement before it's offered
       
REFERRAL ASK PROCESS (Allevio employer client):
  
  Step 1 — Identify the right moment:
    After 6-month milestone meeting where results are positive
    After annual renewal where client has renewed enthusiastically
    After a client makes an unsolicited positive comment ("This has been great...")
    
  Step 2 — Ask simply and specifically:
    "I really appreciate you sharing that — it means a lot. I'll be direct: we grow almost entirely
     through word of mouth from clients like you. Is there anyone in your network — another HR
     Director or CEO who's dealing with the same benefits cost pressure — who you think might
     benefit from even a short conversation with us?"
     
  Step 3 — Make the introduction easy:
    "If anyone comes to mind, I'm happy to draft a short intro email that you could forward — 
     all you'd need to do is hit send. Would that be helpful?"
     
  Step 4 — Follow up:
    If they give a name: follow up within 24 hours to get the introduction
    If they don't have anyone right now: "Totally understand — if anyone comes to mind down the road,
     we'd really appreciate it." Log in GHL as "referral ask: no leads; follow up in 3 months"
     
REFERRAL TRACKING:
  GHL: record all referral sources, introductions, and outcomes
  Fields: referral source (name; entity); referred prospect (name; entity); date introduced;
          outcome (meeting / pipeline / closed / not interested)
  Referral fee agreements: SharePoint → [Entity] → Sales → Referral-Fee-Agreements → [Source] → [Date]
  Fee payment: entity CEO + Dr. Lewis authorize each payment; recorded in entity financial system
  
REFERRAL PROGRAM PERFORMANCE:
  Track monthly: number of referral asks made; number of introductions received; referral-sourced pipeline
  Target: 20-30% of new pipeline sourced from referrals (entity CEO sets target)
  Report: included in monthly pipeline review for entity CEO
  Review: referral sources who produced zero introductions in 12 months → strategy review
```

## Output Format

```markdown
# Referral Program Status — [Entity] | [Period] | [Date]
**Owner:** Entity CEO | **Managed by:** Dr. Lewis + Rep

---

## Referral Source Pipeline
| Source | Type | Asks Made | Intros Received | Pipeline Created | Closed |
|--------|------|-----------|-----------------|-----------------|--------|
| [Name] | [Client/Broker/Network] | [N] | [N] | $[X] | $[X] |

---

## Referral Ask Queue (next 30 days)
| Client / Partner | Timing | Reason | Owner |
|-----------------|--------|--------|-------|
| [Name] | [When] | [Why now — milestone; renewal; positive signal] | [Rep] |

---

## Broker Fee Agreements (Allevio)
| Broker | Agreement signed | Fee structure | Referrals produced | Fees paid |
|--------|-----------------|---------------|-------------------|-----------|
| [Name] | [Date] | [Per deal / PMPM / flat] | [N] | $[X] |
```

## Output Contract
- Referral fee agreements must be signed before any introduction is received — offering to pay a fee after a broker has already made an introduction means the payment is an unauthorized retroactive compensation arrangement; the signed referral fee agreement (reviewed by entity CEO + Dr. Lewis) must exist before the rep tells any broker "we'll pay you for referrals"; if a broker asks "do you pay for referrals?" before an agreement exists, the rep says "we do have a referral program — let me get you the details from our team and we can discuss the structure" and brings it to entity CEO + Dr. Lewis before committing to any specific fee; Dr. Lewis authorizes each fee payment against the signed agreement before any money moves
- HIPAA prevents the rep from using one Allevio employer's clinical or health outcome results in the referral ask conversation with another employer — the rep can say "our clients typically see significant claims trend improvement in Year 1" (general statement); the rep cannot say "employer X reduced their claims from 14% to 4% — if you're dealing with a similar challenge, I'd love to introduce you" because that disclosure reveals employer X's aggregate health financial data without employer X's authorization for that specific use; the safe referral conversation focuses on the rep's track record in general terms; the employer's own results are theirs to share if they choose, in their own words
- HITL required: broker referral fee agreement → entity CEO + Dr. Lewis review before signing; each fee payment → entity CEO + Dr. Lewis authorization; HIPAA check on referral conversation content → Dr. Lewis for any content referencing health outcomes or claims data; HIVE referral compensation arrangement (estate attorney; landman) → Dr. Lewis legal review before offering; seller referral outreach (HIVE) → Matt Mathison approves approach; referral program KPIs → entity CEO reviews monthly; new referral source category (not in standard program) → entity CEO + Dr. Lewis decision before proceeding

## System Dependencies
- **Reads from:** GHL (client records — referral ask history; pipeline stage; satisfaction signals; referral tracking fields); referral fee agreement records (SharePoint → [Entity] → Sales → Referral-Fee-Agreements); broker tier records (Allevio broker channel — Tier 1/2/3; active status); pipeline review (referral-sourced % of total pipeline); commission records (Allevio broker fee payments)
- **Writes to:** GHL (referral ask logged; date; source; introduced prospect; outcome); referral fee payment request (entity CEO + Dr. Lewis authorization; entity financial system); referral program performance report (entity CEO monthly); referral fee agreement records (new agreements filed in SharePoint); HIVE referral outreach records (Matt Mathison approved; date; outcome)
- **HITL Required:** Broker fee agreement → entity CEO + Dr. Lewis before signing; each fee payment → entity CEO + Dr. Lewis authorization; HIPAA check → Dr. Lewis for health outcome references in referral conversations; HIVE compensation arrangements → Dr. Lewis legal review; HIVE seller referral outreach → Matt Mathison approves approach; referral program KPIs → entity CEO monthly review; new referral source category → entity CEO + Dr. Lewis decision

## Test Cases
1. **Golden path:** Allevio employer client — 6-month check-in; results positive (employer's HR Director says "our employees are actually using this and my CFO is happy"). Rep: "That's great to hear — it really means a lot. I'll be direct: most of our growth comes from clients like you sharing their experience. Is there anyone in your network — another HR Director or CEO dealing with benefits cost pressure — who you think might benefit from a conversation?" HR Director: "Actually, there's a colleague of mine at Phoenix Tech; she's been complaining about the same thing." Rep: "Would it be helpful if I drafted a short intro email you could forward? I can have something in your inbox tomorrow morning." HR Director: "That works." Rep drafts intro email within 24 hours. HR Director forwards. Phoenix Tech HR Director replies. New meeting booked. GHL: referral source = "Acme Industries HR Director"; referred prospect = "Phoenix Tech HR Director"; date introduced = [date]; outcome = "Meeting scheduled Stage 2."
2. **Edge case:** Broker approaches rep at a networking event and says "I have 3 employers who need exactly what you do — how much do you pay for referrals?" Rep: "We do have a referral program — I'd love to tell you more about it. Let me connect you with our team to walk through the structure and see if it's a good fit." Rep does not quote a fee number at the event. Rep notifies entity CEO and Dr. Lewis: "Broker [Name] from [Firm] asked about referral fees at [Event]; mentioned 3 potential employers; I deferred to the team." Entity CEO + Dr. Lewis: review broker's license; current tier; any existing relationship. Decision: if appropriate, invite broker to a 30-minute intro call; prepare referral fee agreement for review. If broker is already in the program: pull the existing agreement and confirm current fee structure with entity CEO before any conversation. Fee agreement signed → broker introductions received → fees paid when deal closes.
3. **Adversarial:** Rep tells a satisfied Allevio employer: "I was just telling another client about your results — they were really impressed" → Dr. Lewis: "You cannot share one employer's results with another employer without the first employer's explicit authorization for that specific use. Even if you didn't name the employer — 'another client in manufacturing in Phoenix who reduced their claims from 14% to 4%' — that is specific enough to be potentially identifiable, and it's using their aggregate health financial data for marketing without their consent. Correct this with the employer if you already said it: 'I want to clarify — I mentioned your results in general terms to illustrate what's possible; I did not share your name or any identifying details.' Then, if you want to use a client's results in referral conversations, get their explicit authorization: 'Would you be comfortable with us referencing your results (without naming you) when we talk to other employers?' Written consent is better. Absent that, use general market statistics, not client-specific results."

## Audit Log
Referral ask records (all asks; date; client or partner; rep; outcome; GHL). Referral introduction records (source; introduced prospect; date; pipeline outcome; close outcome; GHL). Broker referral fee agreement records (broker; agreement date; fee structure; entity CEO + Dr. Lewis approval; SharePoint). Referral fee payment records (deal; source; fee amount; entity CEO + Dr. Lewis authorization; date; entity financial system). HIPAA referral conversation records (content reviewed; Dr. Lewis approval; date). HIVE referral outreach records (Matt Mathison approval; date; seller contacted; response). New referral category records (entity CEO + Dr. Lewis decision; date; outcome).

## Deprecation
Referral program reviewed annually — fee structures updated when entity CEO changes compensation model. Referral ask scripts updated when ICP or value proposition changes. Broker fee agreement reviewed when broker relationship status changes. HIVE referral approach reviewed when Matt Mathison updates acquisition strategy. HIPAA guidance in referral program reviewed when HHS guidance changes.
