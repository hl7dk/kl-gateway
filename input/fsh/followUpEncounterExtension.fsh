Extension:  KLGatewayCareFollowUpEncounterExtension
Id: klgateway-care-follow-up-encounter-extension
Title: "CareFollowUpEncounterExtension"
Description: "Encounter for following up on this information."
Context: Condition, CarePlan
* value[x] 1..
* value[x] only Reference(klgateway-care-encounter)
* value[x] ^type.aggregation = #bundled
// * ^context.type = http://hl7.org/fhir/extension-context-type#element
// * ^context.expression = "Condition"