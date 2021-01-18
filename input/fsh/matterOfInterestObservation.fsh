Profile: KLGatewayCareMatterOfInterestObservation
Parent: Observation
Id: klgateway-care-matter-of-interest-observation
Title: "CareMatterOfInterestObservation"
Description: "Matter or area of interest in relation to the care of the citizen."
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #closed
* code.coding contains area 1..1 and local 0..1
* code.coding[area].system = "http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII"
* code.coding[area] from FSIIICareMatterOfInterests
* code.coding[local].system = "http://gateway.kl.dk/CodeSystem/LocallyDefinedMatterOfInterests"
* code.coding[local].code 1..1
* code.coding[local].display 1..1
* subject only Reference(klgateway-care-citizen)
* subject ^type.aggregation = #bundled
* focus ..0
* encounter ..0
* effective[x] 1..1
* effective[x] only dateTime
* issued ..0
* performer ..0

* value[x] MS
* value[x] only CodeableConcept
* value[x] from KLGatewayCareMatterOfInterestValues

* dataAbsentReason ..0
* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember 0..0
* derivedFrom ..0
* component ..0

//Danish descriptions
* code ^short = "[DK] oplysningskode"
* subject ^short = "[DK] oplysningssubjekt"
* effective[x] ^short = "[DK] oplysningstid"
* status ^short = "[DK] oplysningsstatus"


Alias: $KLTerminology = http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII

Instance: EgensomsorgBegraensninger
InstanceOf: KLGatewayCareMatterOfInterestObservation
Description: "An observation that self-care is an area that is a matter of interest regarding the test person"
* status = #final
* code.coding = $KLTerminology#J1
* subject = Reference(TestPerson)
* effectiveDateTime = 2020-08-14
