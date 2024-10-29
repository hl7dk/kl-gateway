Profile: KLGatewayCareDeliveryReport
Parent: Bundle
Id: klgateway-care-delivery-report
Title: "CareDeliveryReport"
Description: "Deliver report to deliver for each citizen."
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link ..0
* entry.resource 1..1
* entry.resource only
    KLGatewayCareCitizen or
    KLGatewayCareCondition or
    KLGatewayCareGoal or
    KLGatewayCarePlannedIntervention or
    KLGatewayCareCompletedIntervention or
    Observation or // KLGatewayCareCitizensOwnObservation or KLGatewayCareMatterOfInterestObservation or  KLGatewayCareFollowUpObservation
    Encounter //klgateway-care-general-encounter, KLGatewayCareEncounter
* entry.resource ^short = "Content constrained to known profiles (see also constraint gateway-care-report-1)"
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0
* obeys gateway-care-report-1
* obeys gateway-care-report-2


Invariant: gateway-care-report-1
Description: "All observation resources shall conform to either klgateway-care-citizens-own-observation profile, klgateway-care-matter-of-interest-observation, or klgateway-care-follow-up-observation"
Severity: #error
Expression: "entry.select(resource as Observation).all(
    $this.conformsTo('http://fhir.kl.dk/gateway/StructureDefinition/klgateway-care-citizens-own-observation')
    or $this.conformsTo('http://fhir.kl.dk/gateway/StructureDefinition/klgateway-care-matter-of-interest-observation')
    or $this.conformsTo('http://fhir.kl.dk/gateway/StructureDefinition/klgateway-care-follow-up-observation'))"

Invariant: gateway-care-report-2
Description: "All Encounter resources shall conform to profiles in this implementation guide"
Severity: #error
Expression: "entry.select(resource as Encounter).all(
    $this.conformsTo('http://fhir.kl.dk/gateway/StructureDefinition/klgateway-care-general-encounter')
    or $this.conformsTo('http://fhir.kl.dk/gateway/StructureDefinition/klgateway-care-encounter'))"


Instance: TestPersonReport
InstanceOf: KLGatewayCareDeliveryReport
Description: "Example of a delivery report for the test person"
* type = #collection
* timestamp = 2020-08-14T00:00:00Z
* entry[+].fullUrl = "https://test.fhir.dk/Patient/TestPerson"
* entry[=].resource = TestPerson
* entry[+].fullUrl = "https://test.fhir.dk/Condition/VaskeSigLetteBegraensninger"
* entry[=].resource = VaskeSigLetteBegraensninger 
* entry[+].fullUrl = "https://test.fhir.dk/Goal/ForventetIngenBegraensninger"
* entry[=].resource = ForventetIngenBegraensninger
* entry[+].fullUrl = "https://test.fhir.dk/Observation/OpleverIkkeBegraensningerMedVaskeSig"
* entry[=].resource = OpleverIkkeBegraensningerMedVaskeSig
* entry[+].fullUrl = "https://test.fhir.dk/Observation/UdfoererSelvVaskeSig"
* entry[=].resource = UdfoererSelvVaskeSig
* entry[+].fullUrl = "https://test.fhir.dk/Condition/ProblemerMedPersonligPleje"
* entry[=].resource = ProblemerMedPersonligPleje
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/PersonligHygiejne"
* entry[=].resource = PersonligHygiejne
* entry[+].fullUrl = "https://test.fhir.dk/CarePlan/Dialyse"
* entry[=].resource = Dialyse
* entry[+].fullUrl = "https://test.fhir.dk/Procedure/Saarbehandling"
* entry[=].resource = Saarbehandling    
* entry[+].fullUrl = "https://test.fhir.dk/Observation/EgensomsorgBegraensninger"
* entry[=].resource = EgensomsorgBegraensninger
* entry[+].fullUrl = "https://test.fhir.dk/Encounter/NaesteOpfoelgningsdato"
* entry[=].resource = NaesteOpfoelgningsdato
* entry[+].fullUrl = "https://test.fhir.dk/Observation/VaskeSigFortsaettes"
* entry[=].resource = VaskeSigFortsaettes
* entry[+].fullUrl = "https://test.fhir.dk/Observation/PersonligPlejeFortsaettes"
* entry[=].resource = PersonligPlejeFortsaettes
* entry[+].fullUrl = "https://test.fhir.dk/Observation/PersonligHygiejneFortsaettes"
* entry[=].resource = PersonligHygiejneFortsaettes
* entry[+].fullUrl = "https://test.fhir.dk/Observation/DialyseFortsaettes"
* entry[=].resource = DialyseFortsaettes
