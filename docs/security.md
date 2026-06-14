# Security Policy

## Security posture

OpenSaaSLabs Platform is a public repository for platform models, schemas, examples, and adoption intelligence. It must not contain secrets, customer data, private credentials, or unsupported claims.

## Do not commit

- API keys
- tokens
- passwords
- private certificates
- customer data
- private emails or phone numbers
- non-public contracts
- confidential vendor information

## Review requirements

Every pull request should be reviewed for:

- accidental secrets
- private or sensitive data
- unsupported claims
- unsafe operational guidance
- license or attribution concerns

## Vulnerability handling

If a vulnerability or unsafe artifact is found:

1. Remove or rotate the affected secret or data source immediately.
2. Open a private remediation issue if possible.
3. Patch the repository.
4. Document the impact in release notes if the issue affected a public release.

## Production security gate

A release cannot be marked production-ready unless security review has passed.
