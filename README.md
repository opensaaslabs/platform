# OpenSaaSLabs Platform

OpenSaaSLabs Platform is the shared software adoption intelligence base for OpenSaaSLabs.

It helps individuals, SMBs, teams, and institutions discover, learn, evaluate, adopt, and grow with the right enterprise software for their use case and maturity level.

## Source of Truth

The canonical OpenSaaSLabs ecosystem boundary is defined in `opensaaslabs/foundation`.

Platform follows the foundation model:

```text
One Platform
Two Tiers
One Shared Data Model

Platform = shared data model and software adoption intelligence base
Community = free public resources using the platform model
Enterprise = organization-focused educational enablement using the platform model
OpenSaaSApps = managed services and delivery
```

## Mission

Make enterprise software easier to understand, choose, learn, adopt, govern, and improve for everyone.

## Core Belief

Software brings order, efficiency, governance, and acceleration. When people and organizations choose the right software at the right maturity level, they can move faster toward their goals.

## Problem

There are thousands of software tools across CRM, ERP, HRMS, analytics, security, collaboration, automation, developer platforms, AI, data, and operations. Most individuals, SMBs, and institutions do not have analyst teams or enterprise architects to help them decide:

- What software category they need
- Which tool is right for their use case
- Whether they are mature enough to adopt it
- What to learn first
- How to implement safely
- How to govern and improve adoption

## Product Promise

Right software. Right stage. Right use case. Right maturity. Confident adoption.

## Platform Role

This repository owns the shared model used by both Community and Enterprise tiers:

- software catalog model
- software category model
- use case model
- maturity model
- recommendation model
- resource model
- review and trust model
- learning and adoption model
- schemas and product architecture

## Platform Pillars

1. Software Catalog
2. Software Category Knowledge Base
3. Use Case Mapping
4. Tool Comparison
5. Individual and Organization Maturity Assessment
6. Learning Paths
7. Adoption Playbooks
8. Implementation Readiness
9. Community Reviews
10. Recommendation Engine

## Boundary

Platform defines the shared intelligence base. It does not own all content.

- Free public resources belong in `opensaaslabs/community`.
- Organization-focused educational enablement belongs in `opensaaslabs/enterprise`.
- Reusable learning catalog belongs in `opensaaslabs/courses`.
- Managed services and delivery belong in OpenSaaSApps.

## Repository Structure

```text
docs/             Product vision, positioning, audience, operating model
architecture/     Domain model, capability map, maturity model, recommendation model
schemas/          JSON schemas for platform entities
catalog/          Software categories, tools, and use cases
maturity/         Maturity models and assessment dimensions
playbooks/        Evaluation, adoption, implementation, and governance playbooks
learning/         Learning paths and course links
governance/       Contribution, review, quality, and trust policies
examples/         Example profiles, recommendations, and adoption journeys
```

## Status

Bootstrap. This repository defines the initial platform foundation and shared data model.
