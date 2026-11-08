# REVERSE_ENGINEERING_REPORT — kl-gateway

## A. General diagnosis

### Architecture identified
FHIR Implementation Guide (IG) based on SUSHI for KL Gateway (HL7 Denmark / kl-gateway). Structure:

- `input/fsh/*.fsh`: 22 FSH files defining profiles, extensions, example instances (citizen.fsh, condition.fsh, deliveryReport.fsh, encounter.fsh, etc.)
- `ig.ini`: IG publisher configuration (template from GitHub hl7dk/ig-template-kl-dk)
- `Requirements-fromNarrative.json`: computable requirements consolidated from narrative
- `input/pagecontent/`: IG pages
- `input/images/`: images
- No `sushi-config.yaml` in root
- No Dockerfile, no CI workflow

### Technologies and dependencies
- SUSHI / fsh-sushi (FHIR Shorthand)
- FHIR R4
- No automated tests

### Maintenance state
Default branch: master. Repository: https://github.com/hl7dk/kl-gateway. Version tags 1.2.0, 1.3.0, 2.0.0.

### Existing testing mechanisms
No automated tests found.

### Investigation limitations
- SUSHI not installed; IG build not executed.
- REA 6.7.0 not operational; static analysis only.

## B. Problems found

| ID | Title | Severity | Status | Location |
|----|-------|----------|--------|----------|
| REA-klgateway-001 | No sushi-config.yaml | P3 | CONFIRMED | repo root |
| REA-klgateway-002 | No automated tests for FSH/StructureDefinitions | P3 | CONFIRMED | repo root |
| REA-klgateway-003 | No CI workflow configured | P3 | CONFIRMED | missing `.github/workflows` |

### Details of confirmed problems

**REA-klgateway-001 (P3, CONFIRMED)**: No `sushi-config.yaml` in the repository root. SUSHI configuration is not versioned in the repo.

**REA-klgateway-002 (P3, CONFIRMED)**: No automated tests to validate the 22 FHIR profiles defined in FSH nor generated StructureDefinitions.

**REA-klgateway-003 (P3, CONFIRMED)**: No `.github/workflows` directory — no CI for build, validation, or PR verification.

## C. Recurring problems
No recurring public issues found.

## D. Undocumented errors
All items in section B are problems not previously documented.

## E. Performance
Static IG build via SUSHI. No performance-sensitive operations.

## F. Technical improvements
- Add sushi-config.yaml (REA-klgateway-001)
- Add FSH tests (REA-klgateway-002)
- Add CI workflow (REA-klgateway-003)

## G. Execution plan
All independent and low risk.

## H. Expected outcome
More complete IG with versioned configuration, CI, and automated testing.

**Tools used:** git, gh, PowerShell, static code inspection.  
**Limitation:** SUSHI not installed.  
**Environment:** Windows, PowerShell 5.1, `C:\Users\User\audit-repos\kl-gateway` (clone of upstream, branch master).
