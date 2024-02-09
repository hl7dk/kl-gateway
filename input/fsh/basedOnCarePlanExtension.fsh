Extension: BasedOnCarePlanExtension
Title:     "basedOnCarePlanExtension"
Description: "Extension for pointing to the careplan describing why this encounter is taking place, will be part of R5 without needing the extension"
* value[x] 1..1
* value[x] only Reference(klgateway-care-planned-intervention)
* ^context.type = http://hl7.org/fhir/extension-context-type#element
* ^context.expression = "Encounter"