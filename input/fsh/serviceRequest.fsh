Profile:        KLGatewayCareServiceRequest
Parent:         ServiceRequest
Id:             klgateway-care-servicerequest
Title:          "KLGatewayCareServiceRequest"
Description:    "Referal used to represent information about the actute care referal from a hospital to a Danish municipality"
* requester 1..1
* requester only Reference(klgateway-care-organization) //organization used for people from the outside
* requester ^type.aggregation = #bundled
* code.coding from ServiceTypes
* orderDetail 0..*
* orderDetail from FSIIICareInterventions2
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* authoredOn 1..1
// * reasonReference only Reference(klgateway-care-focus-condition) //May be there
// * reasonReference ^type.aggregation = #bundled
* replaces 0..0
//* replaces only Reference(klgateway-care-servicerequest)
//* replaces ^type.aggregation = #bundled
* intent = http://hl7.org/fhir/request-status#plan
* occurrence[x] 0..1
* occurrenceDateTime 0..0
* occurrenceTiming 0..0
* occurrencePeriod 0..1
* occurrencePeriod.start 0..1
* occurrencePeriod.end 0..1

//Setting 0..0 cardinalities
* identifier 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* requisition 0..0
* priority 0..0
* doNotPerform 0..0
* quantity[x] 0..0
* encounter 0..0
* asNeeded[x] 0..0
* performerType 0..0
* performer 0..0
* locationCode 0..0
* locationReference 0..0
* reasonCode 0..0
* insurance 0..0
* supportingInfo 0..0
* specimen 0..0
* bodySite 0..0
* note 0..0
* patientInstruction 0..0
* relevantHistory 0..0

//Adding shorts for Danish descriptions
* requester ^short = "[DK] anledningAnsvarlig"
* status ^short = "[DK] anledningsStatus"
* intent ^short = "[DK] anledningsHensigt"
* code.coding ^short = "[DK] anledningsIndsats"
* reasonReference ^short = "[DK] anledningsbegrundelse"
* subject ^short = "[DK] anledningsSubjekt"
* authoredOn ^short = "[DK] anledningstid"
* occurrencePeriod.start ^short = "[DK] anledningTilbudtFørsteKontakt"
* occurrencePeriod.end ^short = "[DK] Anledningafslutningsdato"


// Instance: RuddiGGOPInformation
// InstanceOf: klgateway-140-servicerequest
// Title: "RuddiGGOPInformation"
// Description: "Information fra Ruddis GGOP, der er baggrunden for at igangsætte indsatsen i kommunen"
// Usage: #example
// * requester = Reference(AfsenderAfRuddisGGOP)
// * status = http://hl7.org/fhir/request-status#active
// * intent = http://hl7.org/fhir/request-status#plan
// * code.coding = $KLCommonCodes#7fc66c15-0cb3-4c89-9e18-f3a01e6a6592
// * category[0].coding = Tempcodes#ffd81f78-352e-4589-a195-5350dd1df2a4 "almen"
// * category[1].coding = Tempcodes#8b962281-2ab6-4b10-9c91-4bac592d6d49 "basal"
// * extension[dischargeDate].valueDate = 2022-05-24
// * reasonReference = Reference(RuddiAktionsdiagnoseGGOP)
// * subject = Reference(RuddiTestBerggren)
// * authoredOn = 2022-05-23
// * occurrencePeriod.start = 2022-05-28