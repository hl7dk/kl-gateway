Instance: c0c4566c-06b1-4707-b468-54e1a6e858b5
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

Instance: 4a563a4d-eefd-4111-85b8-b7de59cb929a
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
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
* period.start = 2021-02-14
* reasonReference[+] = Reference(f8a70023-0688-4a93-9b74-21e5089dc365) // Respirationsproblem
* reasonReference[+] = Reference(9c818a37-6525-49bb-bcea-5fe5df01f6f4) // Mobilitet og bevægelse
// // ------------------------------------------------------------------------------------------------
// OBS - HUSK indsatsen skal med - den smider en tilstand
// Instance: 0c1112c3-77b5-4d85-965c-0c26228ec7ef
// InstanceOf: KLGatewayCareDeliveryReport
// Title: "DeliveryReport-PeterOlsen-3"
// Description: "Reporting of Peter Olsen after third encounter with the Acute Team"
// * type = #collection
// * timestamp = 2021-02-14T15:23:12Z
// * insert CitizenEntry(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * insert ConditionEntryVersion(a881788d-1b27-46e3-8b76-607bc49876fd, v3) // Respirationsproblemer
// * insert ConditionEntryVersion(ad506910-9030-4ddb-b8ce-7bb6a69d808e, v3) // // Problemer med mobilitet og bevægelse
// * insert MatterOfInterestEntry(c9c93481-f170-4653-b837-6e8eacd716ca) // Respiration og cirkulation
// * insert FollowUpObservationEntry(c0e46d1a-bcd2-4b4f-bc74-db1237157d4e) // Afsluttes
// * insert FollowUpObservationEntry(4c160af3-dc6f-4405-a52a-b93447e06b68) // Ændres inden for rammen
// * insert EncounterEntry(1fb0990d-aac7-4661-b976-874e051c5ae6) // 15/2-2021

// // Conditions
// Instance: a881788d-1b27-46e3-8b76-607bc49876fd-v3 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Respirationsproblemer for Peter Olsen"
// Usage: #inline
// * id = "a881788d-1b27-46e3-8b76-607bc49876fd" // Real id
// * clinicalStatus = $ConditionClinical#inactive
// * code = $FSIII#I7.1 // Respirationsproblemer
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * recordedDate = 2021-02-10

// Instance: ad506910-9030-4ddb-b8ce-7bb6a69d808e-v3 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
// Usage: #inline
// * id = "ad506910-9030-4ddb-b8ce-7bb6a69d808e" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * code = $FSIII#I2.1 // Problemer med mobilitet og bevægelse
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(1fb0990d-aac7-4661-b976-874e051c5ae6) // 15/2-2021

// // Matter of interest observations
// Instance: c9c93481-f170-4653-b837-6e8eacd716ca
// InstanceOf: KLGatewayCareMatterOfInterestObservation
// Description: "Respiration og cirkulation area is not relevant for Peter Olsen"
// Usage: #inline
// * status = #final
// * code.coding = $FSIII#I7 // Respiration og cirkulation
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * effectiveDateTime = 2021-02-15
// * valueCodeableConcept = $FSIII#B6 // Ikke relevant

// // Follow-up observations
// Instance: c0e46d1a-bcd2-4b4f-bc74-db1237157d4e
// InstanceOf: KLGatewayCareFollowUpObservation
// Description: "Follow-up observation documenting that focus on respirationsproblemer should be continued unchanged for Jens Hansen"
// Usage: #inline
// * status = #final
// * code = $SnomedCT#712744002
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * focus[+] = Reference(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer
// * effectiveDateTime = 2021-02-12
// * valueCodeableConcept = $FSIII#E3 // Afsluttes

// Instance: 4c160af3-dc6f-4405-a52a-b93447e06b68
// InstanceOf: KLGatewayCareFollowUpObservation
// Description: "Follow-up observation documenting that focus on respirationsproblemer should be changed (inden for rammen) for Jens Hansen"
// Usage: #inline
// * status = #final
// * code = $SnomedCT#712744002
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * focus[+] = Reference(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse
// * effectiveDateTime = 2021-02-14
// * valueCodeableConcept = $FSIII#E2 // Ændres inden for rammen


// // Followup encounters
// Instance: 1fb0990d-aac7-4661-b976-874e051c5ae6
// InstanceOf: KLGatewayCareEncounter
// Description: "Encounter for a follow-up for Peter Olsen on February 15th, 2021"
// Usage: #inline
// * status = #planned
// * class = $v3-ActCode#HH
// * type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * period.start = 2021-02-15

// // ------------------------------------------------------------------------------------------------

// Instance: 374484d0-00cb-4b63-94d1-a0d984afc339
// InstanceOf: KLGatewayCareDeliveryReport
// Title: "DeliveryReport-PeterOlsen-4"
// Description: "Reporting of Peter Olsen after first encounter with home nursing"
// * type = #collection
// * timestamp = 2021-02-15T08:17:19Z
// * insert CitizenEntry(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * insert ConditionEntryVersion(ad506910-9030-4ddb-b8ce-7bb6a69d808e, v4) // Problemer med mobilitet og bevægelse
// * insert ConditionEntry(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
// * insert GoalEntry(08c1aa9d-ab60-423d-900b-1fc2eba0a2a7) // Ingen begrænsninger i at gå
// * insert PlannedInterventionEntry(36ac2e9c-cbe4-4f2d-978e-7cccaf6750c2) // Vedligehold af færdigheder 
// * insert EncounterEntry(99e5f54d-f9cd-44ea-9901-b6b5d6bf9285) // 17/2-2021
// * insert EncounterEntry(f5b962ec-f815-4f12-a1d8-bbd504db79ed) // 6/4-2021

// // Conditions
// Instance: ad506910-9030-4ddb-b8ce-7bb6a69d808e-v4 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
// Usage: #inline
// * id = "ad506910-9030-4ddb-b8ce-7bb6a69d808e" // Real id
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * code = $FSIII#I2.1 // Problemer med mobilitet og bevægelse
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * recordedDate = 2021-02-10
// * extension[followUpEncounter].valueReference = Reference(99e5f54d-f9cd-44ea-9901-b6b5d6bf9285) // 17/2-2021

// Instance: 39869f95-3b5f-4cbf-9af9-79d1344791f6
// InstanceOf: KLGatewayCareCondition
// Description: "Gå, lette begrænsninger for Peter Olsen"
// Usage: #inline
// * clinicalStatus = $ConditionClinical#active
// * category = $ConditionCategory#problem-list-item
// * severity = $FSIII#B2 // Lette begrænsninger
// * code = $FSIII#J3.8 // Gå
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * recordedDate = 2021-02-15
// * extension[followUpEncounter].valueReference = Reference(f5b962ec-f815-4f12-a1d8-bbd504db79ed) // 6/4-2021

// // Goals
// Instance: 08c1aa9d-ab60-423d-900b-1fc2eba0a2a7
// InstanceOf: KLGatewayCareGoal
// Description: "Forventet tilstand, ingen eller ubetydelige begrænsninger i at gå for Peter Olsen"
// Usage: #inline
// * lifecycleStatus = #planned
// * category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
// * description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * startDate = 2021-02-15
// * target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
// * target.detailCodeableConcept = $FSIII#B1 // Ingen eller ubetydelige begrænsninger
// * addresses = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå 

// // Planned interventions
// Instance: 36ac2e9c-cbe4-4f2d-978e-7cccaf6750c2
// InstanceOf: KLGatewayCarePlannedIntervention
// Description: "Planned intervention doing vedligehold af færdigheder for Peter Olsen"
// Usage: #inline
// * status = #completed
// * intent = #plan
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * period.start = 2021-02-18
// * activity.detail.code.coding[level2] = $FSIII#H6.1 // Vedligehold af færdigheder
// * activity.detail.status = #completed
// * activity.detail.reasonReference = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå

// // Followup encounters
// Instance: 99e5f54d-f9cd-44ea-9901-b6b5d6bf9285
// InstanceOf: KLGatewayCareEncounter
// Description: "Encounter for a follow-up for Peter Olsen on February 17th, 2021"
// Usage: #inline
// * status = #planned
// * class = $v3-ActCode#HH
// * type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * period.start = 2021-02-17

// Instance: f5b962ec-f815-4f12-a1d8-bbd504db79ed
// InstanceOf: KLGatewayCareEncounter
// Description: "Encounter for a follow-up for Peter Olsen on April 6th, 2021"
// Usage: #inline
// * status = #planned
// * class = $v3-ActCode#HH
// * type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * period.start = 2021-04-06

// // ------------------------------------------------------------------------------------------------

// Instance: cc93afc5-7849-4895-84eb-00bb5c129c0b // End nursing condition and intervention
// InstanceOf: KLGatewayCareDeliveryReport
// Title: "DeliveryReport-PeterOlsen-5"
// Description: "Reporting of Peter Olsen after second encounter with home nursing"
// * type = #collection
// * timestamp = 2021-02-17T11:51:44Z
// * insert CitizenEntry(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * insert ConditionEntryVersion(ad506910-9030-4ddb-b8ce-7bb6a69d808e, v5) // Problemer med mobilitet og bevægelse
// * insert PlannedInterventionEntryVersion(f99b219d-8b70-4423-a32f-d7e97d553305, v5) // Respirationsbehandling
// * insert MatterOfInterestEntry(357d2a34-8a4d-4302-988d-de69c4bfe0de) // Psykosociale forhold
// * insert MatterOfInterestEntry(f5c24a73-fac8-44c8-972e-7b4aa13c1c40) // Søvn og hvile
// * insert FollowUpObservationEntry(d54367e4-c2c5-49f6-bd28-a154af029b36) // Afsluttes

// // Conditions
// Instance: ad506910-9030-4ddb-b8ce-7bb6a69d808e-v5 // Fake id
// InstanceOf: KLGatewayCareCondition
// Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
// Usage: #inline
// * id = "ad506910-9030-4ddb-b8ce-7bb6a69d808e" // Real id
// * clinicalStatus = $ConditionClinical#inactive
// * code = $FSIII#I2.1 // Problemer med mobilitet og bevægelse
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * recordedDate = 2021-02-15

// // Planned interventions
// Instance: f99b219d-8b70-4423-a32f-d7e97d553305-v5 // Fake id
// InstanceOf: KLGatewayCarePlannedIntervention
// Description: "Planned intervention doing respirationsbehandling for Peter Olsen"
// Usage: #inline
// * id = "f99b219d-8b70-4423-a32f-d7e97d553305" // Real id
// * status = #completed
// * intent = #plan
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * period.start = 2021-02-10
// * period.end = 2021-02-17
// * activity.detail.code.coding[level2] = $FSIII#G1.30 // Respirationsbehandling
// * activity.detail.status = #in-progress
// * activity.detail.reasonReference = Reference(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse

// // Matter of interest observations
// Instance: 357d2a34-8a4d-4302-988d-de69c4bfe0de
// InstanceOf: KLGatewayCareMatterOfInterestObservation
// Description: "Psykosociale forhold area is a potential problem for Peter Olsen"
// Usage: #inline
// * status = #final
// * code.coding = $FSIII#I6 // Psykosociale forhold
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * effectiveDateTime = 2021-02-17

// Instance: f5c24a73-fac8-44c8-972e-7b4aa13c1c40
// InstanceOf: KLGatewayCareMatterOfInterestObservation
// Description: "Søvn og hvile area is a potential problem for Peter Olsen"
// Usage: #inline
// * status = #final
// * code.coding = $FSIII#I10 // Søvn og hvile
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * effectiveDateTime = 2021-02-17

// // Follow-up observations
// Instance: d54367e4-c2c5-49f6-bd28-a154af029b36
// InstanceOf: KLGatewayCareFollowUpObservation
// Description: "Follow-up observation documenting that focus on problemer med mobilitet og bevægelse afsluttes for Peter Olsen"
// Usage: #inline
// * status = #final
// * code = $SnomedCT#712744002
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * focus[+] = Reference(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse
// * effectiveDateTime = 2021-02-17
// * valueCodeableConcept = $FSIII#E3 // Afsluttes

// // ------------------------------------------------------------------------------------------------

// Instance: 1652f2a9-510a-4cd3-8fc4-8b69d0ffedae
// InstanceOf: KLGatewayCareDeliveryReport
// Title: "DeliveryReport-PeterOlsen-6"
// Description: "Reporting of Peter Olsen after first encounter with training"
// * type = #collection
// * timestamp = 2021-02-18T09:11:29Z
// * insert CitizenEntry(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * insert ConditionEntry(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
// * insert CitizensOwnObservationEntry(2d5aab71-9c3f-49b2-92e0-07619ae321e5) // Udfører selv
// * insert CitizensOwnObservationEntry(f35aa1be-0ed2-4d86-8d62-178a7d20c923) // Oplever ikke begrænsninger
// * insert EncounterEntry(f5b962ec-f815-4f12-a1d8-bbd504db79ed) // 6/4-2021

// // Citizens own observations
// Instance: 2d5aab71-9c3f-49b2-92e0-07619ae321e5
// InstanceOf: KLGatewayCareCitizensOwnObservation
// Description: "Peter Olsen udfører selv at gå"
// Usage: #inline
// * status = #final
// * code = $FSIII#C // Udførelse
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * focus = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
// * effectiveDateTime = 2020-08-21
// * valueCodeableConcept = $FSIII#C1 // Udfører selv

// Instance: f35aa1be-0ed2-4d86-8d62-178a7d20c923
// InstanceOf: KLGatewayCareCitizensOwnObservation
// Description: "Peter Olsen oplever ikke begrænsninger i at gå"
// Usage: #inline
// * status = #final
// * code = $FSIII#D // Betydning
// * subject = Reference(17911a9f-69ff-4041-8dd0-6fc96864d04b) // Peter Olsen
// * focus = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
// * effectiveDateTime = 2020-08-21
// * valueCodeableConcept = $FSIII#D1 // Oplever ikke begrænsninger

// // ------------------------------------------------------------------------------------------------

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