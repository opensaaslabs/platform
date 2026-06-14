# Governance Policy

## Governance intent

OpenSaaSLabs Platform exists to help people and organizations understand, compare, adopt, and govern software responsibly. Governance protects trust, neutrality, quality, and clarity.

## Principles

- **Neutral by default**: recommendations must not hide commercial bias.
- **Evidence-first**: claims should be backed by public evidence, examples, or transparent reasoning.
- **Maturity-aware**: recommendations must consider user, organization, and implementation maturity.
- **Human at gate**: automation validates structure; reviewers validate meaning.
- **Traceable change**: production-impacting changes must be reviewable in Git.

## Review rules

Changes require review when they affect:

- platform boundary
- schemas
- recommendation logic
- maturity model
- trust model
- production readiness criteria
- public claims about tools, vendors, or categories

## Trust rules

A software recommendation should distinguish between:

- factual description
- community review
- editorial assessment
- implementation guidance
- paid or partner relationship

## Quality bar

Content should be:

- clear
- structured
- useful to the intended maturity level
- free from unsupported superiority claims
- actionable without forcing vendor lock-in

## Release governance

A production release requires:

1. CI passing.
2. Schema validation passing.
3. Security review passing.
4. Governance review passing.
5. Release gate approval.
