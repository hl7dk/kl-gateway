Extension:  KLGatewayCareFindingContextAtRiskExtension
Id: klgateway-care-finding-context-at-risk-extension
Title: "CareFindingContextAtRiskExtension"
Description: "Context at risk for a given matter of interest given as a condition code."
* value[x] 1..1
* value[x] only Coding
* value[x] from FSIIICareConditions (required)
* ^context.type = http://hl7.org/fhir/extension-context-type#element
* ^context.expression = "Observation"


//Danish descriptions
* value[x] ^short = "[DK] tilstandskode"
