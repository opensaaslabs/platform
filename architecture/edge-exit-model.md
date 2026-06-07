# Edge Exit Model

The platform must not keep every loop trapped inside the core.

A loop becomes useful only when it can exit safely at the edge.

## Core Pattern

```text
Define in the source base.
Build in the runtime base.
Reconcile through the twin.
Exit at the edge.
```

## Meaning

The core platform owns models, state, events, evidence, reconciliation, and governance.

The edge owns interaction, publication, delivery, decision, and action.

The edge is where the platform becomes useful to humans, teams, agents, customers, vendors, and external systems.

## Architecture

```text
Source Base
  ↓
Model Layer
  ↓
Runtime / State Layer
  ↓
Digital Twin Layer
  ↓
Governance Layer
  ↓
Edge Exit Layer
```

## Edge Exit Layer

The Edge Exit Layer exposes governed outputs without exposing unsafe internal state.

It includes:

- UI views
- API responses
- published recommendations
- scorecards
- reports
- exports
- webhooks
- notifications
- issues / PRs / merge requests
- approval requests
- integration events
- agent handoffs
- human decisions

## Exit Contract

Nothing exits the platform unless it has:

- owner
- intent
- audience
- evidence
- conformance status
- policy status
- trace id
- timestamp
- rollback or correction path

## Edge Exit Types

| Exit Type | Destination | Example |
| --- | --- | --- |
| `human_decision` | user/team/admin | approve recommendation |
| `published_projection` | UI/API/report | adoption scorecard |
| `source_change` | Git issue/PR/MR | model update proposal |
| `runtime_action` | workflow/agent/system | recompute score |
| `external_signal` | webhook/integration | notify CRM or LMS |
| `artifact_release` | package/report/export | published benchmark |
| `governance_request` | reviewer/owner | evidence approval |

## Exit Flow

```text
Twin projection
  ↓
Conformance check
  ↓
Policy check
  ↓
Audience selection
  ↓
Edge contract validation
  ↓
Exit event emitted
  ↓
Delivery performed
  ↓
Receipt or acknowledgement captured
  ↓
Twin event updated
```

## Edge Safety Rule

The edge may expose projections, decisions, recommendations, and approved actions.

The edge must not expose:

- secrets
- raw private tenant state
- unapproved evidence
- internal credentials
- hidden policy context
- unresolved drift as truth
- unpublished model changes as canonical truth

## Exit Is Still Part of the Loop

Exit does not mean leaving governance.

Every exit creates an event:

```text
exit_requested
exit_validated
exit_delivered
exit_acknowledged
exit_failed
exit_corrected
```

Those events return to the twin so the loop remains closed.

## Complete Platform Loop

```text
Define Side
  Git / source base
  ↓
Build Side
  runtime / state base
  ↓
Twin Bridge
  reconciliation / projection
  ↓
Governance
  policy / evidence / approval
  ↓
Edge Exit
  publish / decide / notify / act
  ↓
Feedback
  acknowledgement / correction / issue / PR / event
  ↓
Define or Build side updated
```

## Final Rule

The platform core should be stable and protected.

The edge should be useful and expressive.

All exits must be governed, traceable, and reversible where possible.

```text
Core protects truth.
Twin reconciles truth.
Edge expresses truth.
Feedback corrects truth.
```
