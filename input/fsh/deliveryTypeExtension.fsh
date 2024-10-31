Extension: DeliveryType
Title: "DeliveryType"
Description: "Extension for a code that specifies some context of how a treatment-activity is delivered to a patient"
* value[x] only CodeableConcept
* ^context.type = http://hl7.org/fhir/extension-context-type#element
* ^context.expression = "CarePlan.activity.detail"