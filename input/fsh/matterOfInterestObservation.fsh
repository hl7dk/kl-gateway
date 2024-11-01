Profile: KLGatewayCareMatterOfInterestObservation
Parent: Observation
Id: klgateway-care-matter-of-interest-observation
Title: "CareMatterOfInterestObservation"
Description: "Matter or area of interest in relation to the care of the citizen."
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* code.coding 1..1
* code.coding from FSIIICareMatterOfInterests
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
* value[x] ^definition = "Shall contain 'B6 Ikke relevant' when the matter of interest is no longer in focus, otherwise the value shall not be set."
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
* extension contains klgateway-care-finding-context-at-risk-extension named findingContextAtRisk 0..

//Danish descriptions
* code ^short = "[DK] oplysningskode"
* subject ^short = "[DK] oplysningssubjekt"
* effective[x] ^short = "[DK] oplysningstid"
* status ^short = "[DK] oplysningsstatus"


Alias: $FSIII = urn:oid:1.2.208.176.2.21

Instance: EgensomsorgBegraensninger
InstanceOf: KLGatewayCareMatterOfInterestObservation
Description: "An observation that self-care is an area that is a matter of interest regarding the test person"
* status = #final
* code.coding = $FSIII#J1
* subject = Reference(TestPerson)
* effectiveDateTime = 2020-08-14

Instance: EgensomsorgBegraensningerOmkringKropspleje
InstanceOf: KLGatewayCareMatterOfInterestObservation
Description: "An observation that self-care is an area that is a matter of interest regarding the test person with potential problems around bodily care"
* status = #final
* code.coding = $FSIII#J1
* subject = Reference(TestPerson)
* effectiveDateTime = 2020-08-14
* extension[findingContextAtRisk].valueCoding = $FSIII#J1.2
