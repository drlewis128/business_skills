---
name: mktg-social-media-manager
description: "Manage social media strategy and content for MBL Partners portfolio entities. Use when the user says 'social media', 'LinkedIn', 'Twitter', 'social content', 'social posts', 'social strategy', 'post to LinkedIn', 'LinkedIn content plan', 'LinkedIn company page', 'social media calendar', 'social media management', 'posting schedule', 'social media engagement', 'followers', 'LinkedIn followers', 'social reach', 'social media analytics', 'social media report', 'social media presence', 'organic social', 'social media policy', 'employee social media', 'executive social media', 'Matt LinkedIn', 'Dr. Lewis LinkedIn', 'entity LinkedIn page', 'social media for Allevio', 'social media for Column6', 'social media for HIVE', or 'build our social presence'."
metadata:
  version: 1.0.0
  tier: marketing
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--platform <linkedin|twitter>] [--action <plan|draft|schedule|audit|report>] [--author <company-page|matt|dr-lewis|entity-ceo>]"
---

# Marketing Social Media Manager

Manage social media presence for MBL Partners portfolio entities — building LinkedIn company page content, executive personal brand posts, and social content that advances each entity's positioning. For B2B entities at MBL portfolio scale, LinkedIn is the primary platform; it is where employer HR leaders (Allevio), agency buyers (Column6), and PE peers (MBL Partners) discover expertise. Twitter/X is secondary for specific conversations (programmatic/ad-tech for Column6).

## When to Use
- Building or refreshing an entity's social media content plan
- Drafting specific social media posts
- Reviewing social media performance and adjusting strategy
- Establishing executive LinkedIn presence for Matt Mathison, Dr. Lewis, or entity CEOs

## Social Media Framework

```
PLATFORM PRIORITIES BY ENTITY:

  ALLEVIO:
    Primary: LinkedIn company page (employer HR/Benefits audience)
    Secondary: LinkedIn personal (Allevio CEO; occasional Dr. Lewis posts about healthcare AI)
    Not primary: Twitter/X; Facebook; Instagram (employer B2B audience not there)
    Cadence: 3 company page posts/week; Allevio CEO personal posts 2-3/week
    Content mix: 50% educational (care coordination; employer benefits tips); 30% company news; 20% culture/team
    HIPAA: no member health data; no patient references; aggregate employer outcome statistics only; Dr. Lewis reviews healthcare claim content before posting
    
  COLUMN6:
    Primary: LinkedIn company page (agency audience); Twitter/X (ad-tech community is active there)
    Secondary: LinkedIn personal (Column6 CEO; Column6 commercial team)
    Cadence: LinkedIn 3/week; Twitter/X daily (industry news commentary; data posts)
    Content mix: 60% data/insights (VCR; IVT; CTV benchmarks); 25% industry commentary; 15% company/culture
    Advertiser campaign data: never on social without advertiser written permission
    
  HIVE PARTNERS:
    Primary: LinkedIn (investor and landowner professional contacts)
    Secondary: minimal — landowner primary communication is direct (email/mail), not social
    Cadence: 1-2 LinkedIn posts/week; Basin operations updates; environmental stewardship notes
    Content: operational transparency; Basin news; landowner resource highlights
    Environmental: factual; DOGM references; no greenwashing; no speculative production claims
    
  MBL PARTNERS:
    Primary: LinkedIn company page; Matt Mathison personal; Dr. Lewis personal
    Secondary: none
    Cadence: company page 2/week; Matt 2-3/week; Dr. Lewis 3-4/week
    Content: THRIVE values; portfolio value creation; PE philosophy; AI strategy; operational excellence

EXECUTIVE LINKEDIN — POSTING STANDARDS:

  STRUCTURE:
    Hook (first 2 lines before "see more"):
      Must be a bold claim; a specific question; or a surprising data point
      Bad hook: "I've been thinking about something lately..."
      Good hook: "Most PE firms optimize for IRR. THRIVE firms optimize for the right deal. Different game."
      
    Body (3-6 short paragraphs or bullet points):
      Mobile-first formatting (short lines; spacing; bullets when listing)
      Evidence or story that supports the hook
      One concrete, usable insight for the reader
      
    Close:
      What's your take? / What's your experience? [if inviting engagement]
      Or: link to resource / action in FIRST comment (not post body — LinkedIn penalizes external links in post)
      
  FREQUENCY AND TIMING:
    Matt Mathison: 2-3/week; Tuesday-Thursday; 7-9 AM MST (PE audience morning readers)
    Dr. Lewis: 3-4/week; any day; AI/tech audience less time-dependent; OpenFang-related posts get GitHub link in first comment
    Entity CEOs: coached to 2-3/week minimum; Dr. Lewis provides topic suggestions monthly
    
  ENGAGEMENT:
    Respond to comments within 24 hours (or entity CEO does)
    Dr. Lewis monitors Matt's posts for substantive comments that warrant a detailed response
    Never engage in public arguments; take disagreements to DM
    
SOCIAL MEDIA POLICY (employee guidelines):
  Employees may post personal opinions on personal accounts; they do not speak for the entity
  Employees may not share client data, campaign performance, or proprietary information
  Allevio employees: no member health data on personal or company accounts (HIPAA)
  Media inquiries via social → route to entity CEO or Dr. Lewis (not employees)
  Column6: employees may not share campaign data on social without advertiser permission
```

## Output Format

```markdown
# Social Media Plan — [Entity] — [Month]
**Prepared by:** Marketing Lead | **Approved by:** Entity CEO

---

## Platform Focus
**Primary:** [Platform + audience]
**Company page cadence:** [X posts/week]
**Executive personal cadence:** [Author + frequency]

---

## Content Calendar

| Date | Author | Platform | Content type | Draft | Status |
|------|--------|----------|-------------|-------|--------|
| [Date] | [Company/Matt/Dr. Lewis] | LinkedIn | [Educational/News/Culture] | [Draft text or topic] | Draft/Approved/Posted |

---

## Post Draft

**Platform:** LinkedIn | **Author:** [Name or Company Page]
**Date/time:** [Scheduled]

**Hook:**
[First 2 lines — hook before "see more"]

**Body:**
[Short paragraphs / bullets]

**Close / CTA:**
[Engagement question or action]

**First comment (if external link):**
[Link + brief context]

---

## Performance Review

| Metric | This period | Prior period | Change |
|--------|------------|-------------|--------|
| Impressions | | | |
| Engagement rate | | | |
| Follower growth | | | |
| Top post (reach) | | | |
```

## Output Contract
- HIPAA review is required before any Allevio healthcare content is posted — even a short LinkedIn post from the Allevio CEO that says "our members are doing better this year because of care coordination" is a HIPAA-risk statement if it implies health outcomes; Dr. Lewis reviews all Allevio social posts that reference member outcomes, care quality, or clinical results before posting; the review is a 5-minute check, not a committee — Dr. Lewis provides a go/no-go on the specific post; if no-go, Dr. Lewis provides the revised version that makes the same point without the HIPAA risk
- Company page content is not executive content — an Allevio LinkedIn company page post and the Allevio CEO's personal LinkedIn post serve different purposes; company page builds brand awareness and creates a professional social proof record; executive personal posts build the individual's credibility and reach a different (often larger) audience; a CEO who only posts on the company page while their personal LinkedIn sits empty is leaving the most powerful channel unused; Dr. Lewis coaches entity CEOs to build their personal LinkedIn as their most powerful marketing tool
- Social is a commitment, not a one-time project — Dr. Lewis does not accept "let's set up our LinkedIn page" as a deliverable without a cadence commitment; a LinkedIn company page with 3 posts and then silence for 6 months damages credibility more than no page at all; before any social channel is activated, Dr. Lewis confirms: who posts, at what cadence, who reviews, who responds to comments; if those aren't answered, the channel doesn't launch until they are
- HITL required: social content with healthcare claims (Allevio) → Dr. Lewis HIPAA review before posting; executive posts (Matt Mathison) → Matt reviews draft before posting; MBL Partners company page → Dr. Lewis approves before posting; Column6 campaign performance data → advertiser permission required before any social use; employee social guidelines → entity CEO approves

## System Dependencies
- **Reads from:** mktg-content-strategist (editorial calendar — social derived from content pillars); mktg-thought-leadership-planner (executive post topics); mktg-messaging-matrix (social copy must carry brand messages); GoHighLevel (social scheduling tool if integrated); LinkedIn company page admin access (per entity)
- **Writes to:** Social content calendar (Monday.com → [Entity] → Marketing → Social); LinkedIn posts (company page; executive personal); Twitter/X posts (Column6); HIPAA review record (Allevio healthcare claims); social performance report (monthly)
- **HITL Required:** Allevio healthcare claims → Dr. Lewis HIPAA; Matt Mathison posts → Matt reviews draft; MBL company page → Dr. Lewis approves; Column6 campaign data → advertiser permission; entity CEO posts → CEO reviews before posting

## Test Cases
1. **Golden path:** Allevio Q3 LinkedIn company page plan. Week 1: educational post — "Why Arizona employers are rethinking their EAP [3 data points on EAP underutilization — aggregate, no PHI]." Dr. Lewis review: no PHI; data from published employer benefits survey (not Allevio member data). Approved. Hook: "Most employees never contact their EAP. Here's what happens when you offer something they actually use." Posted Tuesday 8 AM MST. Result: 42 impressions in 24 hours; 3 comments from HR professionals; 1 demo request click.
2. **Edge case:** Matt Mathison wants to share a LinkedIn post about a specific portfolio company acquisition before the deal is public → Dr. Lewis: "We can't post about a deal until it's closed and any applicable confidentiality period has passed. I'll build a post ready to go for the announcement date — you'll be able to post within 30 minutes of the deal going public. In the meantime, Matt can post a general PE philosophy post that indirectly sets up the announcement narrative without breaking the embargo."
3. **Adversarial:** Column6 commercial team member posts specific campaign VCR data from a named advertiser on their personal LinkedIn → Dr. Lewis: "This needs to come down immediately — it's a contract violation and a client trust issue. I'll ask [employee name] to remove the post now; I'll do it myself if they're not available. Then I need to: (1) determine if the advertiser has been notified; (2) review our social media policy to confirm this was a clear violation; (3) escalate to Column6 CEO for employee guidance; (4) tighten our employee social media policy to explicitly prohibit sharing client data. This is a THRIVE Integrity issue."

## Audit Log
Social content calendar versions retained. HIPAA review records (Allevio — all healthcare content). Executive post approval records (Matt Mathison). Social performance reports retained monthly. Policy violation records retained (date; platform; resolution). Matt Mathison approval records.

## Deprecation
Social strategy reviewed annually. HIPAA social content review process updated when HIPAA regulations change. Social media policy reviewed annually or when major platform changes affect employee conduct risk. Platform priorities updated when audience behavior shifts.
