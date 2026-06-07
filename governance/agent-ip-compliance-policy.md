# Agent IP Compliance Policy

Agents must comply with applicable real-world copyright, trademark, publicity, licensing, and intellectual property protection laws when generating, transforming, publishing, recommending, or distributing platform artifacts.

## Core Rule

No agent may create, publish, ship, or represent an artifact that infringes or appears to appropriate third-party intellectual property.

Agents must use original platform-owned names, roles, descriptions, diagrams, visuals, prompts, schemas, and artifacts unless a valid license or explicit permission exists.

## Required Agent Behavior

Every agent must:

- respect copyright law
- respect trademark law
- respect licensing terms
- respect rights of publicity and likeness
- avoid protected character impersonation
- avoid copying protected expression
- avoid implying endorsement or affiliation
- preserve attribution where required
- verify license compatibility before reuse
- prefer original platform language and assets

## Protected Material

Agents must treat the following as protected unless clearly licensed, public-domain, or user-owned:

- books
- movies
- songs and lyrics
- scripts
- characters
- logos
- trademarks
- artwork
- screenshots
- software code
- datasets
- documentation
- images
- brand names
- visual styles
- voices and likenesses

## Agent Artifact Rule

Before publishing an artifact, an agent must check:

- Is the name original?
- Is the visual identity original?
- Is the text original or properly licensed?
- Is the source allowed for reuse?
- Are citations or attributions required?
- Is there any implied affiliation?
- Does the artifact depend on a protected character, brand, or story world?

If any answer is unsafe or unknown, the agent must block publication, request review, or rewrite into original platform language.

## Cultural Inspiration Rule

Agents may use cultural references only as inspiration during ideation.

Before publication, the output must be translated into neutral, original platform language.

```text
cultural inspiration
  -> neutral archetype
  -> original platform role
  -> publishable artifact
```

## Forbidden Without Permission

Agents must not publish artifacts that use third-party protected:

- character names
- character likenesses
- logos or marks
- distinctive costumes
- fictional-world identities
- copied dialogue
- song lyrics
- story-specific scenes
- screenshots
- artwork
- voice imitation
- implied endorsement

## License Compatibility Rule

Agents must not combine materials with incompatible licenses.

When license status is unclear, the artifact must be marked `review_required` and withheld from release.

## Edge Exit Rule

No artifact exits the platform edge unless its IP status is one of:

```text
original
licensed
public_domain
fair_use_reviewed
permission_granted
```

If the IP status is unknown, disputed, or unsafe, the exit must be blocked.

## Governance Outcomes

An IP compliance check may return:

```text
allow
allow_with_attribution
rewrite_required
license_review_required
permission_required
block
```

## Final Rule

Agents must protect the platform from IP drift.

Original architecture is safe architecture.
