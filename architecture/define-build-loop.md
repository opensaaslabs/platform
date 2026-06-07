# Define-Build Reconciliation Loop

The OpenSaaSLabs platform closes the loop by separating definition from construction while keeping both synchronized through the digital twin.

## Core Pattern

```text
Define on one side.
Build on the other side.
Reconcile in a loop.
```

## The Two Sides

| Side | Role | System of Record |
| --- | --- | --- |
| Define Side | declares intent, model, policy, schema, contract, score, agent behavior | Git source base |
| Build Side | executes, observes, stores state, evaluates, scores, recommends, serves users | Runtime and state base |

## Define Side

The define side answers:

- What should exist?
- What model defines it?
- What policy governs it?
- What schema validates it?
- What score model evaluates it?
- What agent behavior is allowed?
- What release is stable?

The define side stores:

```text
schemas
architecture
score models
agent specs
policy rules
examples
conformance tests
release definitions
```

## Build Side

The build side answers:

- What exists now?
- What state was observed?
- What events happened?
- What evidence was collected?
- What score was computed?
- What recommendation was generated?
- What drift occurred?
- What action happened next?

The build side stores:

```text
twin state
twin events
runtime observations
evidence
scores
recommendations
assessments
workflow state
health state
```

## Closed Loop

```text
DEFINE SIDE
Git source base
  ↓
Declared model
  ↓
Conformance check
  ↓
Build instruction
  ↓

BUILD SIDE
Runtime execution
  ↓
Observed state
  ↓
Evidence captured
  ↓
Twin projection
  ↓
Drift detected
  ↓

RECONCILIATION
Compare declared vs observed
  ↓
Classify drift
  ↓
Decide action
  ↓

BACK TO DEFINE SIDE
Issue / PR / merge request
  ↓
Review / approval
  ↓
Commit
  ↓
Updated declared model
```

## Loop Actions

| Condition | Action |
| --- | --- |
| observed matches declared | keep running |
| observed violates schema | block or repair runtime state |
| observed reveals missing model | open issue or PR to update declared model |
| model changes | recompute affected projections |
| evidence becomes stale | request new evidence |
| policy violation occurs | block publication and require approval |
| runtime improves model | propose model update back to Git |

## Rule

No side is allowed to silently dominate the other.

- Git cannot claim reality unless runtime/state confirms it.
- Runtime cannot become canonical unless Git/model/governance accepts it.

## Digital Twin Role

The digital twin is the bridge between both sides.

```text
Twin = declared model + observed state + evidence + events + conformance + projection
```

It keeps the platform honest by making every mismatch visible, explainable, and actionable.

## Minimal Loop Unit

Every loop must produce one of these outcomes:

```text
no_change
runtime_repair
model_update_issue
model_update_pr
human_review_required
policy_block
publish_projection
```

## Architecture Summary

```text
Define Side              Twin Bridge                  Build Side
-----------              -----------                  ----------
Git model       <---->   reconciliation   <---->      runtime state
schema          <---->   conformance      <---->      observed event
policy          <---->   drift detection  <---->      evidence
agent spec      <---->   projection       <---->      score/recommendation
```

The platform becomes stable because definition and construction are separate, but neither is disconnected.
