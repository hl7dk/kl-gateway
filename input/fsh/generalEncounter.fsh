Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $KLCommonCodes = http://fhir.kl.dk/term/CodeSystem/CareSocialCodes

Profile: KLGatewayCareGeneralEncounter
Parent: Encounter
Id: klgateway-care-general-encounter
Title: "CareGeneralEncounter"
Description: "Encounter for planned and completed meetings between citizens and care staff."
* identifier ..0
* statusHistory ..0
* class.version ..0
* class from EncounterClassCodes (required)
* class.userSelected ..0
* classHistory ..0
* type 1..*
* type from http://fhir.kl.dk/term/ValueSet/KLEncounterTypes (required)
* type.coding 1..1
* type.coding.version ..0
* type.coding.userSelected ..0
* type.text ..0
* serviceType ..0
* priority ..0
* subject 1..1
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* episodeOfCare ..0
* basedOn ..0
* participant ..0
* appointment ..0
* period 1..1
* period.start 1..1
* length ..0
* reasonCode ..0
* reasonReference 0..*
* reasonReference only Reference(klgateway-care-condition)
* diagnosis ..0
* account ..0
* hospitalization ..0
* location ..0
* serviceProvider ..0
* partOf ..0
* extension contains
   BasedOnInterventionExtension named basedOnIntervention 0..*
* extension[basedOnIntervention].valueReference ^type.aggregation = #bundled

//Danish descriptions
* status ^short = "[DK] kontaktstatus"
* type.coding ^short = "[DK] kontakttype"
* period.start ^short = "[DK] kontaktstart"
* period.end ^short = "[DK] kontaktslut"
* subject ^short = "[DK] kontaktsubjekt"
* class ^short = "[DK] kontaktklasse"
* extension[basedOnIntervention] ^short = "[DK] kontaktIndsats"
* reasonReference ^short = "[DK] kontaktTilstand"

Invariant: klgateway-follow-up-references-condition
Description: "The severity is mandatory for home care and not allowed for nursing conditions"
Severity: #error
Expression: "type.coding.exists(code = '9f03dfbb-7a97-45a5-94db-d4c3501714a9') implies reasonReference.exists()"
       
Extension: BasedOnInterventionExtension
Title:     "basedOnInterventionExtension"
Description: "Extension for pointing to the intervention describing why this encounter is taking place (will be part of R5 and comming FHIR versions without needing the extension)"
* value[x] 1..1
* value[x] only Reference(klgateway-care-planned-intervention)
* ^context.type = http://hl7.org/fhir/extension-context-type#element
* ^context.expression = "Encounter"

Instance: 24d69cec-9e2b-49d2-bf16-bbb229db9d41
InstanceOf: klgateway-care-general-encounter
Description: "General encounter used to document the next date for a follow-up"
* status = http://hl7.org/fhir/encounter-status#planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(TestPerson)
* period.start = 2020-08-14
* reasonReference[+] = Reference(VaskeSigLetteBegraensningerNy)

Instance: 9fe2cf67-7a0a-49f9-ad23-cb48167927d4
InstanceOf: klgateway-care-general-encounter
Description: "General encounter used to document delivery of an intervention"
* status = http://hl7.org/fhir/encounter-status#finished
* class = $v3-ActCode#HH
* type = $KLCommonCodes#784275f1-6822-4a88-b361-d958007d5253 "udførelse af planlagt indsats"
* subject = Reference(TestPerson)
* period.start = 2020-08-16
* extension[basedOnIntervention].valueReference = Reference(Dialyse)

