Instance: 4768772b-67f3-4468-9a2f-ee9a0254a323
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-1"
Description: "Reporting of Peter Olsen after first encounter with the Acute Team"
* type = #collection
* timestamp = 2021-02-10T13:34:56Z
* insert CitizenEntry(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* insert ConditionEntry(f8a70023-0688-4a93-9b74-21e5089dc365) // Respirationsproblemer
* insert ConditionEntry(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Problemer med mobilitet og bevægelse
* insert CompletedInterventionEntry(442929fc-46ab-446c-80ad-5ab70410f32d) // Undersøgelse og måling af værdier 
* insert CompletedInterventionEntry(6e1323cf-d73f-4394-ad4b-4a370c281495) // Supplerende udredning
* insert PlannedInterventionEntry(9a07e8ad-4e71-42c7-a67f-96f5944f51a6) // Respirationsbehandling
* insert EncounterEntry(6e7188a7-048d-4060-96fe-7ae7b4201739) // 12/2-2021

// Conditions
Instance: f8a70023-0688-4a93-9b74-21e5089dc365
InstanceOf: KLGatewayCareCondition
Description: "Respirationsproblemer for Peter Olsen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $FSIII#dae40f60-8dab-4bd3-ab72-b07d0f278692 "Respirationsproblemer"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* recordedDate = 2021-02-10

Instance: 9c818a37-6525-49bb-bcea-5fe5df01f6f4
InstanceOf: KLGatewayCareCondition
Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $FSIII#92caace8-60e3-4861-80ac-6e372a700e1d "Problemer med mobilitet og bevægelse"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* recordedDate = 2021-02-10

// Completed interventions
Instance: 442929fc-46ab-446c-80ad-5ab70410f32d
InstanceOf: KLGatewayCareCompletedIntervention
Description: "Completed intervention doing undersøgelser og måling af værdier for Peter Olsen"
Usage: #inline
* status = #completed
* code.coding[level2].system = "urn:oid:1.2.208.176.2.21"
* code.coding[level2].code = #34b8b9a0-41bf-4dce-88f6-409de21fb175 // Undersøgelse og måling af værdier
* code.coding[level2].display = "Undersøgelser og måling af værdier"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* performedDateTime = 2021-02-10T13:00:00Z
* reasonReference = Reference(f8a70023-0688-4a93-9b74-21e5089dc365) // Respirationsproblemer

Instance: 6e1323cf-d73f-4394-ad4b-4a370c281495
InstanceOf: KLGatewayCareCompletedIntervention
Description: "Completed intervention doing supplerende udredning for Peter Olsen"
Usage: #inline
* status = #completed
* code.coding[level2].system = "urn:oid:1.2.208.176.2.21"
* code.coding[level2].code = #b2634ff3-544b-46e8-8908-b056b3c4e27c // Supplerende udredning
* code.coding[level2].display = "Supplerende udredning"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* performedDateTime = 2021-02-10T13:00:00Z
* reasonReference = Reference(f8a70023-0688-4a93-9b74-21e5089dc365) // Respirationsproblemer

// Planned interventions
Instance: 9a07e8ad-4e71-42c7-a67f-96f5944f51a6
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing respirationsbehandling for Peter Olsen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-02-10
* activity.detail.code.coding[level2] = $FSIII#3198a6ba-879c-4d2e-914b-560ba1e0d63a "Respirationsbehandling"
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Problemer med mobilitet og bevægelse
* activity.detail.reasonReference = Reference(f8a70023-0688-4a93-9b74-21e5089dc365) // Respirationsproblemer

// Followup encounters
Instance: 6e7188a7-048d-4060-96fe-7ae7b4201739
InstanceOf: klgateway-care-general-encounter
Description: "General encounter for a follow-up for Peter Olsen on February 12th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-02-12
* reasonReference[+] = Reference(f8a70023-0688-4a93-9b74-21e5089dc365) // Respirationsporblem
* reasonReference[+] = Reference(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Mobilitet og bevægelse
// ------------------------------------------------------------------------------------------------

Instance: bad12c80-85ff-4b36-8396-414a1b58cd0d
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-2"
Description: "Reporting of Peter Olsen after second encounter with the Acute Team"
* type = #collection
* timestamp = 2021-02-12T12:46:48Z
* insert CitizenEntry(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* insert ConditionEntry(f8a70023-0688-4a93-9b74-21e5089dc365) // Respirationsproblemer
* insert ConditionEntry(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // // Problemer med mobilitet og bevægelse
* insert EncounterEntry(32488061-8263-4b39-b209-f6b38c1ba1d3) // 14/2-2021

// Conditions

// Followup encounters
Instance: 32488061-8263-4b39-b209-f6b38c1ba1d3
InstanceOf: klgateway-care-general-encounter
Description: "Encounter for a follow-up for Peter Olsen on February 14th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-02-14
* reasonReference[+] = Reference(f8a70023-0688-4a93-9b74-21e5089dc365) // Respirationsproblem
* reasonReference[+] = Reference(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Mobilitet og bevægelse
// // ------------------------------------------------------------------------------------------------
// 
Instance: 3c4919f9-aec9-485f-808a-3f9ff6c95786
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-3"
Description: "Reporting of Peter Olsen after third encounter with the Acute Team"
* type = #collection
* timestamp = 2021-02-14T15:23:12Z
* insert CitizenEntry(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* insert ConditionEntryVersion(f8a70023-0688-4a93-9b74-21e5089dc365, v2) // Respirationsproblemer
* insert ConditionEntry(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // // Problemer med mobilitet og bevægelse
* insert MatterOfInterestEntry(388a4c08-42a2-4ad9-a6bb-41b26a7c5e28) // Respiration og cirkulation
* insert EncounterEntry(1d2b1282-23fb-4238-930b-4d10b13e735a) // 15/2-2021
* insert PlannedInterventionEntryVersion(9a07e8ad-4e71-42c7-a67f-96f5944f51a6, v2)

// Conditions
Instance: f8a70023-0688-4a93-9b74-21e5089dc365-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Respirationsproblemer for Peter Olsen"
Usage: #inline
* id = "f8a70023-0688-4a93-9b74-21e5089dc365" // Real id
* clinicalStatus = $ConditionClinical#inactive
* code = $FSIII#dae40f60-8dab-4bd3-ab72-b07d0f278692 "Respirationsproblemer"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* recordedDate = 2021-02-10

// Matter of interest observations
Instance: 388a4c08-42a2-4ad9-a6bb-41b26a7c5e28
InstanceOf: KLGatewayCareMatterOfInterestObservation
Description: "Respiration og cirkulation area is not relevant for Peter Olsen"
Usage: #inline
* status = #final
* code.coding = $FSIII#01150cdb-6098-48ce-bb61-60967f6bcc37 "Respiration og cirkulation"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* effectiveDateTime = 2021-02-15
* valueCodeableConcept = $FSIII#d7ff926a-4955-478f-b300-0b0ec0785013 "9"

// Followup encounters
Instance: 1d2b1282-23fb-4238-930b-4d10b13e735a
InstanceOf: klgateway-care-general-encounter
Description: "Encounter for a follow-up for Peter Olsen on February 15th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-02-15
* reasonReference[+] = Reference(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Mobilitet og bevægelse

// Planned interventions
Instance: 9a07e8ad-4e71-42c7-a67f-96f5944f51a6-v2
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing respirationsbehandling for Peter Olsen"
Usage: #inline
* id = "9a07e8ad-4e71-42c7-a67f-96f5944f51a6"
* status = #active
* intent = #plan
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-02-10
* activity.detail.code.coding[level2] = $FSIII#3198a6ba-879c-4d2e-914b-560ba1e0d63a "Respirationsbehandling"
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Problemer med mobilitet og bevægelse

// // ------------------------------------------------------------------------------------------------

Instance: d85460fb-b39e-4cf7-9750-12be44417dfd
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-4"
Description: "Reporting of Peter Olsen after first encounter with home nursing"
* type = #collection
* timestamp = 2021-02-15T08:17:19Z
* insert CitizenEntry(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* insert ConditionEntry(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Problemer med mobilitet og bevægelse
* insert ConditionEntry(0031b906-9fec-44c9-bcf1-fd06aa41ab6d) // Mobilitet og bevægelse
* insert GoalEntry(222f728f-e484-4986-b00c-642b54354dae) // Ingen begrænsninger i at gå
* insert PlannedInterventionEntry(231ebab6-5e80-4ae7-82aa-f4e0dda9efce) // Vedligehold af færdigheder 
* insert EncounterEntry(712d1188-2704-4df1-8c48-c381c46e7bd2) // 17/2-2021
* insert EncounterEntry(23dbe07d-ddbd-4da5-b5d8-5defa7451c74) // 6/4-2021

// Conditions

Instance: 0031b906-9fec-44c9-bcf1-fd06aa41ab6d
InstanceOf: KLGatewayCareCondition
Description: "Mobilitet og bevægelse, lette begrænsninger for Peter Olsen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#fcc16cb1-41f0-4832-b834-110fba0aaabe "1"
* code = $FSIII#d8aa5f09-cd9c-4996-a853-1c95ee98f25c "Mobilitet og bevægelse"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* recordedDate = 2021-02-15

// Goals
Instance: 222f728f-e484-4986-b00c-642b54354dae
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, ingen eller ubetydelige begrænsninger i mobilitet og bevægelse for Peter Olsen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad "FSIII tilstandsmål"
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4 "Tilstand forsvinder, mindskes eller forbliver uændret"
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa "funktionsevneniveau"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* startDate = 2021-02-15
* target.detailCodeableConcept = $FSIII#9c5cfb57-a498-40e5-98a7-792bf5fb205b "0"
* addresses = Reference(0031b906-9fec-44c9-bcf1-fd06aa41ab6d) // Mobilitet og bevægelse 

// Planned interventions
Instance: 231ebab6-5e80-4ae7-82aa-f4e0dda9efce
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing vedligehold af færdigheder for Peter Olsen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-02-18
* activity.detail.code.coding[level2] = $FSIII#c7d79b23-a53d-4ad5-a536-24d7c7fe8e18 "Vedligehold af færdigheder"
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(0031b906-9fec-44c9-bcf1-fd06aa41ab6d) // Mobilitet og bevægelse, hjemmepleje

// Followup encounters
Instance: 712d1188-2704-4df1-8c48-c381c46e7bd2
InstanceOf: klgateway-care-general-encounter
Description: "Encounter for a follow-up for Peter Olsen on February 17th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-02-17
* reasonReference[+] = Reference(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Mobilitet og bevægelse, sygepleje


Instance: 23dbe07d-ddbd-4da5-b5d8-5defa7451c74
InstanceOf: klgateway-care-general-encounter
Description: "Encounter for a follow-up for Peter Olsen on April 6th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9 "opfølgning"
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-04-06
* reasonReference[+] = Reference(0031b906-9fec-44c9-bcf1-fd06aa41ab6d) // Mobilitet og bevægelse, hjemmepleje

// // ------------------------------------------------------------------------------------------------

Instance: 616ce3ef-b7e8-46e1-aefc-ff5bde81b153 // End nursing condition and intervention
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-5"
Description: "Reporting of Peter Olsen after second encounter with home nursing"
* type = #collection
* timestamp = 2021-02-17T11:51:44Z
* insert CitizenEntry(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* insert ConditionEntryVersion(9c818a37-6525-49bb-bcea-5fe5df01f6f4, v2) // Problemer med mobilitet og bevægelse
* insert PlannedInterventionEntryVersion(9a07e8ad-4e71-42c7-a67f-96f5944f51a6, v3) // Respirationsbehandling
* insert MatterOfInterestEntry(dcd2273d-426d-421a-b82e-155ce7cc7173) // Psykosociale forhold
* insert MatterOfInterestEntry(b2cff9f0-7b03-4f03-a443-70c17b1cd623) // Søvn og hvile

// Conditions
Instance: 9c818a37-6525-49bb-bcea-5fe5df01f6f4-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
Usage: #inline
* id = "9c818a37-6525-49bb-bcea-5fe5df01f6f4" // Real id
* clinicalStatus = $ConditionClinical#inactive
* code = $FSIII#92caace8-60e3-4861-80ac-6e372a700e1d "Problemer med mobilitet og bevægelse" // Problemer med mobilitet og bevægelse
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* recordedDate = 2021-02-15

// Planned interventions
Instance: 9a07e8ad-4e71-42c7-a67f-96f5944f51a6-v3 // Fake id
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing respirationsbehandling for Peter Olsen"
Usage: #inline
* id = "9a07e8ad-4e71-42c7-a67f-96f5944f51a6" // Real id
* status = #completed
* intent = #plan
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-02-10
* period.end = 2021-02-17
* activity.detail.code.coding[level2] = $FSIII#3198a6ba-879c-4d2e-914b-560ba1e0d63a "Respirationsbehandling"
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Problemer med mobilitet og bevægelse

// Matter of interest observations
Instance: dcd2273d-426d-421a-b82e-155ce7cc7173
InstanceOf: KLGatewayCareMatterOfInterestObservation
Description: "Psykosociale forhold area is a potential problem for Peter Olsen"
Usage: #inline
* status = #final
* code.coding = $FSIII#5bfe4bda-2358-41da-946e-1fdaa33d5fe8 // Psykosociale forhold
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* effectiveDateTime = 2021-02-17

Instance: b2cff9f0-7b03-4f03-a443-70c17b1cd623
InstanceOf: KLGatewayCareMatterOfInterestObservation
Description: "Søvn og hvile area is a potential problem for Peter Olsen"
Usage: #inline
* status = #final
* code.coding = $FSIII#8c539fd9-7f31-4b4e-8b30-8298c8ab640f // Søvn og hvile
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* effectiveDateTime = 2021-02-17

// Citizen
Instance: 17911a9f-69ff-4041-8dd0-6fc96864d04b
InstanceOf: KLGatewayCareCitizen
Description: "Citizen Peter Olsen"
Usage: #inline
* identifier.use = #official
* identifier.value = "0101570001"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"
* deceasedBoolean = false