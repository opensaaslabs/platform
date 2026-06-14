# Operations Policy

## Operational scope

This repository operates the shared OpenSaaSLabs Platform model. It is not yet a hosted runtime, but it must be operated with production discipline because downstream community, enterprise, and managed-service repositories depend on its definitions.

## Production responsibilities

| Area | Responsibility |
|---|---|
| Model ownership | Keep schemas, examples, and catalog structures coherent |
| Release management | Publish reviewed, traceable releases |
| Change control | Require review for platform boundary and schema changes |
| Incident handling | Correct invalid, unsafe, or misleading platform data quickly |
| Rollback | Revert bad schema or data changes through Git |

## Incident classes

| Class | Example | Response |
|---|---|---|
| P0 | Secret or private data committed | Remove, rotate, audit immediately |
| P1 | Broken schema or invalid examples on main | Patch or revert immediately |
| P2 | Misleading recommendation or unsupported claim | Correct and document |
| P3 | Documentation drift | Fix in next maintenance release |

## Rollback process

1. Identify the bad commit.
2. Revert the commit or apply a forward fix.
3. Re-run CI.
4. Publish corrective release notes if the issue reached a tagged release.

## Operational readiness checklist

- [ ] CI is passing.
- [ ] Schemas are valid.
- [ ] Examples validate.
- [ ] Release gate is complete.
- [ ] Rollback path is documented.
- [ ] Known limitations are documented.
