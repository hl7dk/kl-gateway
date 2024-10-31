Profile: KLGatewayCareCitizen
Parent: http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient
Id: klgateway-care-citizen
Title: "CareCitizen"
Description: "Administrative information about a citizen receiving care or care related services."
* identifier 1..1
* identifier[x-ecpr] 0..0
* identifier[d-ecpr] 0..0
* identifier[cpr] 1..1
* deceasedDateTime 0..0
* deceasedBoolean 0..1 //should be changed to 1..1
* active ..1
* name[official] 0..0
* name ..0
* telecom ..0
* gender ..0
* birthDate ..0
* address ..0
* maritalStatus ..0
* multipleBirth[x] ..0
* photo ..0
* contact ..0
* communication ..0
* generalPractitioner[referencedSORUnit] 0..0
* generalPractitioner ..0
* managingOrganization 1..1
* managingOrganization.reference ..0
* managingOrganization.type ..0
* managingOrganization.identifier 1..1
* managingOrganization.identifier only dk-core-sor-identifier
* managingOrganization.display ..0
* link ..0
* obeys data-about-deceased-citizen-warning

* identifier ^short = "[DK] borgerCprNummer"
* deceasedBoolean ^short = "[DK] borgerErDød"
* managingOrganization ^short = "[DK] borgerJournalførendeOrganisation"
* active ^short = "[DK] harAktivJournal"

Instance: TestPerson
InstanceOf: KLGatewayCareCitizen
Description: "Test person used in the examples of the implementation guide."
* identifier.use = #official
* identifier.value = "0101010101"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"
* deceasedBoolean = false

Instance: TestPersonError
InstanceOf: KLGatewayCareCitizen
Description: "Test person used in the examples of the implementation guide."
* identifier.use = #official
* identifier.value = "0101010101"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"
* deceasedBoolean = true

Invariant: data-about-deceased-citizen-warning
Description: "Warning: Data about deceased citizen is reported to kl-gateway"
Severity: #warning //To be changed to error
Expression: "(deceased.empty()) or (deceased.ofType(boolean) = false)"


