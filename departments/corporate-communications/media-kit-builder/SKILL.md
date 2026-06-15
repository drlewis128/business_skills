---
name: media-kit-builder
description: "Build a press kit or media kit for a company. Use when the user says 'build a media kit', 'press kit', 'press package', 'journalist package', 'company fact sheet for press', 'what goes in a media kit', 'build a press kit', 'media package for journalists', or 'PR kit'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--purpose <general|acquisition|launch|event>]"
---

# Media Kit Builder

Build a complete press kit (media kit) for MBL Partners or a portfolio company — providing journalists with everything they need to write about the company accurately and quickly. A good media kit reduces journalist friction, improves coverage accuracy, and signals organizational credibility. A bad one (or no kit) results in journalists writing from incomplete or incorrect information.

## When to Use
- Portfolio company is being announced publicly for the first time
- Preparing for a major news event (acquisition, funding, expansion)
- Company is entering a new market or launching a new product line
- A journalist has requested background materials
- Annual refresh of existing press materials

## Media Kit Components

```
Standard media kit includes:

1. Company fact sheet (1 page) — the "fast facts" reference
2. Boilerplate ("About Us") — standardized 100-word company description
3. Executive bios (CEO + 1-2 key leaders)
4. Executive headshots (high-res, 300 DPI minimum)
5. Company logo files (PNG transparent, SVG, white version)
6. Key statistics / data points (verifiable, dated)
7. Press releases (3 most recent)
8. Product/service description (for product companies)
9. Customer quotes (approved, with attribution)
10. Awards / recognition list
11. Media contact information

Optional (for specific situations):
- B-roll / photography (for broadcast)
- Case studies (for product/service companies)
- Financial highlights (for public companies or fundraising)
```

## Output Format

```markdown
# Media Kit — <Company Name>
**Entity:** <Company> | **Purpose:** General / Acquisition / Launch
**Date:** <date> | **Owner:** Dr. John Lewis
**Media contact:** Dr. John Lewis | jlewis@mblpartners.com | 602-880-6491

---

## Component 1: Company Fact Sheet

**Company:** <Name>
**Founded:** <Year>
**Headquarters:** <City, State>
**CEO:** <Name>
**Employees:** <N> (as of <date>)
**Revenue:** <Publicly shareable range or "private company — not disclosed">
**Ownership:** Private | Backed by MBL Partners (if applicable)

**What we do:** [1-2 sentence plain-English description — no jargon]

**Why we're different:** [1-2 sentence differentiation]

**By the numbers:**
- [Key stat 1: e.g., "Serves X patients across Y locations"]
- [Key stat 2: e.g., "X% average reduction in [key metric]"]
- [Key stat 3: e.g., "Operating in X states"]

**Industries served:** [List]
**Key products/services:** [List]
**Website:** [URL]

---

## Component 2: Company Boilerplate

*Use this exact text in all press releases and backgrounders. Do not modify without communications team approval.*

**Standard (100 words):**
> [Company name] is [category description] that [primary value proposition]. Based in [City], [Company] serves [audience description] across [geographic scope]. Founded in [year] by [founder or not mentioned if n/a], the company is [ownership description]. [One key differentiator sentence]. For more information, visit [website].

**Short (50 words):**
> [Compressed version for tight-space use]

---

## Component 3: Executive Bios

### [CEO Name] — Chief Executive Officer
[3-paragraph bio: professional background → company role and vision → personal/community (optional)]

**Photo file:** [File name] — available at [SharePoint link or "upon request"]
**LinkedIn:** [URL]

### [Key Leader] — [Title]
[2-paragraph bio]

---

## Component 4: Key Statistics

*All statistics must be sourced and dated. Do not use unverifiable figures.*

| Statistic | Value | Source | Date verified |
|-----------|-------|--------|--------------|
| [Stat 1] | [Value] | [Internal data / Third-party] | [Date] |
| [Stat 2] | [Value] | [Source] | [Date] |
| [Stat 3] | [Value] | [Source] | [Date] |

---

## Component 5: Awards & Recognition

| Award | Organization | Year | Notes |
|-------|-------------|------|-------|
| [Award name] | [Org] | [Year] | [Any context] |

*(None to date — remove section if not applicable)*

---

## Component 6: Logo & Visual Assets

| File | Format | Use case | Location |
|------|--------|---------|---------|
| Logo — full color | PNG (transparent) | Digital, white backgrounds | SharePoint/Brand/Logo |
| Logo — white | PNG (transparent) | Dark backgrounds | SharePoint/Brand/Logo |
| Logo — vector | SVG | Print, large format | SharePoint/Brand/Logo |
| CEO headshot | JPG (300 DPI) | Print and web | SharePoint/Brand/Photos |

---

## Component 7: Media Contact

**Primary media contact:**
Dr. John Lewis, Director of AI Strategy
MBL Partners
jlewis@mblpartners.com | 602-880-6491

*For urgent inquiries outside business hours: 602-880-6491*
```

## Output Contract
- Fact sheet is always one page when printed — if it exceeds one page, cut; the fact sheet is for quick journalist reference, not reading
- All statistics must be sourced and dated — unverifiable statistics will be questioned by journalists and undermine credibility; every number in the media kit has a source
- Boilerplate is locked text — the boilerplate should not be modified without communications review; it is the canonical company description; variation in press releases signals disorganization
- Headshots must be high-res — 72 DPI web images don't print; minimum 300 DPI; if good headshots don't exist, they need to be taken before the kit is distributed
- HITL required: Dr. Lewis builds the kit; CEO or company president must approve all content; Matt Mathison approves any MBL-level media kit; legal reviews any financial figures or legal claims before distribution; no media kit distributed without final approval

## System Dependencies
- **Reads from:** Company info, executive bios, brand assets, recent press releases, verified statistics
- **Writes to:** Media kit (SharePoint/Comms/Media Kit/<Company>); press release archive
- **HITL Required:** Dr. Lewis builds; CEO approves portfolio company kits; Matt Mathison approves MBL-level kit; legal reviews financial figures and legal claims

## Test Cases
1. **Golden path:** Allevio media kit for new market expansion → 1-page fact sheet (7 stats, all verified); 100-word boilerplate; CEO bio + CMO bio; logo files in 3 formats; 3 recent press releases attached; awards section empty (remove); media contact: Dr. Lewis; CEO approved; Dr. Lewis sends to requesting journalist within 24 hours
2. **Edge case:** Key statistic in the fact sheet is from 18 months ago and may be outdated → do not use stale statistics; either update the figure with current data or remove the statistic; a journalist who fact-checks and finds an outdated number will note it in the story and it damages credibility; every statistic in the media kit must be refreshed at least annually
3. **Adversarial:** Journalist requests a media kit but then publishes an article with incorrect company description despite having the boilerplate → reach out professionally to request a correction; provide the exact boilerplate text again; most publications will issue a correction for clear factual errors; update the media contact note to request review before publication when working with this outlet again

## Audit Log
Media kit versions tracked by date. All distribution logged. Correction requests tracked. Annual review date scheduled.

## Deprecation
Retire when portfolio companies hire marketing/PR teams with dedicated brand asset management systems (Cision ContentStudio, Bynder, Brandfolder).
