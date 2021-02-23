Alias: $KLTerminology = http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII

// ------------------------------------------------------------------------------------------------

Instance: d54206de-c95b-4c53-9517-6eb155dca99a
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-1"
Description: "Reporting of Peter Olsen after first encounter with the Acute Team"
* type = #collection
* timestamp = 2021-02-10T13:34:56Z
* insert CitizenEntry(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* insert ConditionEntry(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer
// * insert ConditionEntry(fb963049-8dbe-4a6a-8ad5-083cb420bbfd) // Sekretsugning
* insert ConditionEntry(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse
* insert PlannedInterventionEntry(a3062931-5443-4c2f-b1af-7426c23cd362) // Undersøgelse og måling af værdier 
* insert PlannedInterventionEntry(ac3d11f3-666e-4b66-b3d3-deb9b7d8dba9) // Supplerende udredning
* insert PlannedInterventionEntry(f99b219d-8b70-4423-a32f-d7e97d553305) // Respirationsbehandling

// Conditions
Instance: a881788d-1b27-46e3-8b76-607bc49876fd
InstanceOf: KLGatewayCareCondition
Description: "Respirationsproblemer for Peter Olsen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $KLTerminology#I7.1 // Respirationsproblemer
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10

// Instance: fb963049-8dbe-4a6a-8ad5-083cb420bbfd
// InstanceOf: KLGatewayCareCondition
// Description: "Sekretsugning for Peter Olsen"
// Usage: #inline
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * code = $KLTerminology# // Sekretsugning
// * subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
// * recordedDate = 2021-02-10

Instance: ad506910-9030-4ddb-b8ce-7bb6a69d808e
InstanceOf: KLGatewayCareCondition
Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $KLTerminology#I2.1 // Problemer med mobilitet og bevægelse
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10

// Planned interventions
Instance: a3062931-5443-4c2f-b1af-7426c23cd362
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing undersøgelse og måling af værdier for Peter Olsen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-11
* activity.detail.code.coding[level2] = $KLTerminology#G1.41 // Undersøgelse og måling af værdier
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer

Instance: ac3d11f3-666e-4b66-b3d3-deb9b7d8dba9
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing supplerende udredning for Peter Olsen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-11
* activity.detail.code.coding[level2] = $KLTerminology#G1.47 // Supplerende udredning
* activity.detail.status = #in-progress
// * activity.detail.reasonReference = Reference(fb963049-8dbe-4a6a-8ad5-083cb420bbfd) // Sekretsugning

Instance: f99b219d-8b70-4423-a32f-d7e97d553305
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing Respirationsbehandling for Peter Olsen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-11
* activity.detail.code.coding[level2] = $KLTerminology#G1.30 // Respirationsbehandling
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer
* activity.detail.reasonReference[+] = Reference(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse

// ------------------------------------------------------------------------------------------------

Instance: abc81b1f-b3ba-41f0-9f4b-2fc4df5aaabb
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-2"
Description: "Reporting of Peter Olsen after second encounter with the Acute Team"
* type = #collection
* timestamp = 2021-02-15T12:46:48Z
* insert CitizenEntry(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* insert ConditionEntryVersion(a881788d-1b27-46e3-8b76-607bc49876fd, v2) // Respirationsproblemer
* insert PlannedInterventionEntryVersion(a3062931-5443-4c2f-b1af-7426c23cd362, v2) // Undersøgelse og måling af værdier 
* insert MatterOfInterestEntry(c9c93481-f170-4653-b837-6e8eacd716ca) // Respiration og cirkulation

// Conditions
Instance: a881788d-1b27-46e3-8b76-607bc49876fd-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Respirationsproblemer for Peter Olsen"
Usage: #inline
* id = "a881788d-1b27-46e3-8b76-607bc49876fd" // Real id
* clinicalStatus = $ConditionClinical#inactive
* code = $KLTerminology#I7.1 // Respirationsproblemer
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10

// Planned interventions
Instance: a3062931-5443-4c2f-b1af-7426c23cd362-v2 // Fake id
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing undersøgelse og måling af værdier for Peter Olsen"
Usage: #inline
* id = "a3062931-5443-4c2f-b1af-7426c23cd362" // Real id
* status = #completed
* intent = #plan
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-11
* period.end = 2021-02-15
* activity.detail.code.coding[level2] = $KLTerminology#G1.41 // Undersøgelse og måling af værdier
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer

// Matter of interest observations
Instance: c9c93481-f170-4653-b837-6e8eacd716ca
InstanceOf: KLGatewayCareMatterOfInterestObservation
Description: "Respiration og cirkulation area is not relevant for Peter Olsen"
* status = #final
* code.coding = $KLTerminology#I7 // Respiration og cirkulation
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* effectiveDateTime = 2021-02-15
* valueCodeableConcept = $KLTerminology#B6 // Ikke relevant

// ------------------------------------------------------------------------------------------------

Instance: 374484d0-00cb-4b63-94d1-a0d984afc339
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-3"
Description: "Reporting of Peter Olsen after first encounter with home nursing"
* type = #collection
* timestamp = 2021-02-21T08:17:19Z
* insert CitizenEntry(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* insert ConditionEntry(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
* insert GoalEntry(08c1aa9d-ab60-423d-900b-1fc2eba0a2a7) // Ingen begrænsninger i at gå
* insert PlannedInterventionEntry(36ac2e9c-cbe4-4f2d-978e-7cccaf6750c2) // Vedligehold af færdigheder 
* insert CitizensOwnObservationEntry(2d5aab71-9c3f-49b2-92e0-07619ae321e5) // Udfører selv
* insert CitizensOwnObservationEntry(f35aa1be-0ed2-4d86-8d62-178a7d20c923) // Oplever ikke begrænsninger
* insert MatterOfInterestEntry(357d2a34-8a4d-4302-988d-de69c4bfe0de) // Psykosociale forhold
* insert MatterOfInterestEntry(f5c24a73-fac8-44c8-972e-7b4aa13c1c40) // Søvn og hvile

// Conditions
Instance: 39869f95-3b5f-4cbf-9af9-79d1344791f6
InstanceOf: KLGatewayCareCondition
Description: "Gå, lette begrænsninger for Peter Olsen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B2 // Lette begrænsninger
* code = $KLTerminology#J3.8 // Gå
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-21
// * extension[followUpEncounter].valueReference = Reference() // 15/2-2021

// Goals
Instance: 08c1aa9d-ab60-423d-900b-1fc2eba0a2a7
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, ingen eller ubetydelige begrænsninger i at gå for Peter Olsen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* startDate = 2021-02-21
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $KLTerminology#B1 // Ingen eller ubetydelige begrænsninger
* addresses = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå 

// Planned interventions
Instance: 36ac2e9c-cbe4-4f2d-978e-7cccaf6750c2
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing vedligehold af færdigheder for Peter Olsen"
Usage: #inline
* status = #completed
* intent = #plan
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-11
* activity.detail.code.coding[level2] = $KLTerminology#H6.1 // Vedligehold af færdigheder
* activity.detail.status = #completed
* activity.detail.reasonReference = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå

// Citizens own observations
Instance: 2d5aab71-9c3f-49b2-92e0-07619ae321e5
InstanceOf: KLGatewayCareCitizensOwnObservation
Description: "Peter Olsen udfører selv at gå"
* status = #final
* code = $KLTerminology#C // Udførelse
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* focus = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
* effectiveDateTime = 2020-08-21
* valueCodeableConcept = $KLTerminology#C1 // Udfører selv

Instance: f35aa1be-0ed2-4d86-8d62-178a7d20c923
InstanceOf: KLGatewayCareCitizensOwnObservation
Description: "Peter Olsen oplever ikke begrænsninger i at gå"
* status = #final
* code = $KLTerminology#D // Betydning
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* focus = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
* effectiveDateTime = 2020-08-21
* valueCodeableConcept = $KLTerminology#D1 // Oplever ikke begrænsninger

// Matter of interest observations
Instance: 357d2a34-8a4d-4302-988d-de69c4bfe0de
InstanceOf: KLGatewayCareMatterOfInterestObservation
Description: "Psykosociale forhold area is a potential problem for Peter Olsen"
* status = #final
* code.coding = $KLTerminology#I6 // Psykosociale forhold
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* effectiveDateTime = 2021-02-21

Instance: f5c24a73-fac8-44c8-972e-7b4aa13c1c40
InstanceOf: KLGatewayCareMatterOfInterestObservation
Description: "Søvn og hvile area is a potential problem for Peter Olsen"
* status = #final
* code.coding = $KLTerminology#I10 // Søvn og hvile
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* effectiveDateTime = 2021-02-21

// ------------------------------------------------------------------------------------------------

// Citizen
Instance: 4a45e179-ace1-4ace-9991-8276c0ba490a
InstanceOf: KLGatewayCareCitizen
Description: "Citizen Peter Olsen"
Usage: #inline
* identifier.use = #official
* identifier.value = "0101570001"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"