Profile: KLGatewayCareCompletedIntervention
Parent: Procedure
Id: klgateway-care-completed-intervention
Title: "CareCompletedIntervention"
Description: "Documentation for completed interventions (activities related to one and only one encounter) in Danish municipalities"
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* partOf ..0
* statusReason ..0
* category ..0
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains level2 1..1 and level3 0..1 MS
* code.coding[level2].system = "http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII"
* code.coding[level2] from FSIIICareInterventions
* code.coding[level3].system = "http://gateway.kl.dk/CodeSystem/LocallyDefinedInterventions"
* code.coding[level3].code 1..1
* code.coding[level3].display 1..1
* code.coding[level3] ^definition = "Shall contain locally defined code if it is a locally defined level 3 intervention"
* subject only Reference(KLGatewayCareCitizen)
* encounter ..0
* performed[x] only dateTime
* performedDateTime 1..
* recorder ..0
* asserter ..0
* performer ..0
* location ..0
* reasonCode ..0
* reasonReference ..0
* bodySite ..0
* outcome ..0
* report ..0
* complication ..0
* complicationDetail ..0
* followUp ..0
* note ..0
* focalDevice ..0
* usedReference ..0
* usedCode ..0

//Danish descriptions
* status ^short = "[DK] leveretIndsatsstatus (completed | entered-in-error)"
* subject ^short = "[DK] leveretIndsatsSubjekt"
* code.coding ^short = "[DK] leveretIndsatsKode"
* performedDateTime ^short = "[DK] leveretIndsatsStart"
