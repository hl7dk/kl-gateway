Alias: $FSIII = urn:oid:1.2.208.176.2.21

// ------------------------------------------------------------------------------------------------

Instance: d54206de-c95b-4c53-9517-6eb155dca99a
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-1"
Description: "Reporting of Peter Olsen after first encounter with the Acute Team"
* type = #collection
* timestamp = 2021-02-10T13:34:56Z
* insert CitizenEntry(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* insert ConditionEntry(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer
* insert ConditionEntry(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse
* insert CompletedInterventionEntry(a3062931-5443-4c2f-b1af-7426c23cd362) // Undersøgelse og måling af værdier 
* insert CompletedInterventionEntry(ac3d11f3-666e-4b66-b3d3-deb9b7d8dba9) // Supplerende udredning
* insert PlannedInterventionEntry(f99b219d-8b70-4423-a32f-d7e97d553305) // Respirationsbehandling
* insert EncounterEntry(0c4469c9-a8c2-4691-9994-d8493217f564) // 12/2-2021

// Conditions
Instance: a881788d-1b27-46e3-8b76-607bc49876fd
InstanceOf: KLGatewayCareCondition
Description: "Respirationsproblemer for Peter Olsen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $FSIII#I7.1 // Respirationsproblemer
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(0c4469c9-a8c2-4691-9994-d8493217f564) // 12/2-2021

Instance: ad506910-9030-4ddb-b8ce-7bb6a69d808e
InstanceOf: KLGatewayCareCondition
Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $FSIII#I2.1 // Problemer med mobilitet og bevægelse
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(0c4469c9-a8c2-4691-9994-d8493217f564) // 12/2-2021

// Completed interventions
Instance: a3062931-5443-4c2f-b1af-7426c23cd362
InstanceOf: KLGatewayCareCompletedIntervention
Description: "Completed intervention doing undersøgelse og måling af værdier for Peter Olsen"
Usage: #inline
* status = #completed
* code.coding[level2].system = "urn:oid:1.2.208.176.2.21"
* code.coding[level2].code = #G1.41 // Undersøgelse og måling af værdier
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* performedDateTime = 2021-02-10T13:00:00Z
* reasonReference = Reference(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer

Instance: ac3d11f3-666e-4b66-b3d3-deb9b7d8dba9
InstanceOf: KLGatewayCareCompletedIntervention
Description: "Completed intervention doing supplerende udredning for Peter Olsen"
Usage: #inline
* status = #completed
* code.coding[level2].system = "urn:oid:1.2.208.176.2.21"
* code.coding[level2].code = #G1.47 // Supplerende udredning
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* performedDateTime = 2021-02-10T13:00:00Z
* reasonReference = Reference(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer

// Planned interventions
Instance: f99b219d-8b70-4423-a32f-d7e97d553305
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing respirationsbehandling for Peter Olsen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-10
* activity.detail.code.coding[level2] = $FSIII#G1.29 // Respirationsbehandling
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse

// Followup encounters
Instance: 0c4469c9-a8c2-4691-9994-d8493217f564
InstanceOf: KLGatewayCareEncounter
Description: "Encounter for a follow-up for Peter Olsen on February 12th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-12

// ------------------------------------------------------------------------------------------------

Instance: abc81b1f-b3ba-41f0-9f4b-2fc4df5aaabb
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-2"
Description: "Reporting of Peter Olsen after second encounter with the Acute Team"
* type = #collection
* timestamp = 2021-02-12T12:46:48Z
* insert CitizenEntry(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* insert ConditionEntryVersion(a881788d-1b27-46e3-8b76-607bc49876fd, v2) // Respirationsproblemer
* insert ConditionEntryVersion(ad506910-9030-4ddb-b8ce-7bb6a69d808e, v2) // // Problemer med mobilitet og bevægelse
* insert FollowUpObservationEntry(ee421741-4e60-46f2-b4d6-fc60bf85c42b) // Fortsættes
* insert EncounterEntry(817de94d-84f0-47c3-839a-ae438075ec6f) // 14/2-2021

// Conditions
Instance: a881788d-1b27-46e3-8b76-607bc49876fd-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Respirationsproblemer for Peter Olsen"
Usage: #inline
* id = "a881788d-1b27-46e3-8b76-607bc49876fd" // Real id
* clinicalStatus = $ConditionClinical#inactive
* code = $FSIII#I7.1 // Respirationsproblemer
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(817de94d-84f0-47c3-839a-ae438075ec6f) // 14/2-2021

Instance: ad506910-9030-4ddb-b8ce-7bb6a69d808e-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
Usage: #inline
* id = "ad506910-9030-4ddb-b8ce-7bb6a69d808e" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $FSIII#I2.1 // Problemer med mobilitet og bevægelse
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(817de94d-84f0-47c3-839a-ae438075ec6f) // 14/2-2021

// Followup Observations
Instance: ee421741-4e60-46f2-b4d6-fc60bf85c42b
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that focus on respirationsproblemer should be continued unchanged for Jens Hansen"
Usage: #inline
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* focus[+] = Reference(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer
* focus[+] = Reference(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse
* effectiveDateTime = 2021-02-12
* valueCodeableConcept = $FSIII#E1 // Fortsættes uændret

// Followup encounters
Instance: 817de94d-84f0-47c3-839a-ae438075ec6f
InstanceOf: KLGatewayCareEncounter
Description: "Encounter for a follow-up for Peter Olsen on February 14th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-14

// ------------------------------------------------------------------------------------------------

Instance: 0c1112c3-77b5-4d85-965c-0c26228ec7ef
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-3"
Description: "Reporting of Peter Olsen after third encounter with the Acute Team"
* type = #collection
* timestamp = 2021-02-14T15:23:12Z
* insert CitizenEntry(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* insert ConditionEntryVersion(a881788d-1b27-46e3-8b76-607bc49876fd, v3) // Respirationsproblemer
* insert ConditionEntryVersion(ad506910-9030-4ddb-b8ce-7bb6a69d808e, v3) // // Problemer med mobilitet og bevægelse
* insert FollowUpObservationEntry(c0e46d1a-bcd2-4b4f-bc74-db1237157d4e) // Afsluttes
* insert FollowUpObservationEntry(4c160af3-dc6f-4405-a52a-b93447e06b68) // Ændres inden for rammen
* insert EncounterEntry(1fb0990d-aac7-4661-b976-874e051c5ae6) // 15/2-2021

// Conditions
Instance: a881788d-1b27-46e3-8b76-607bc49876fd-v3 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Respirationsproblemer for Peter Olsen"
Usage: #inline
* id = "a881788d-1b27-46e3-8b76-607bc49876fd" // Real id
* clinicalStatus = $ConditionClinical#inactive
* code = $FSIII#I7.1 // Respirationsproblemer
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10

Instance: ad506910-9030-4ddb-b8ce-7bb6a69d808e-v3 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
Usage: #inline
* id = "ad506910-9030-4ddb-b8ce-7bb6a69d808e" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $FSIII#I2.1 // Problemer med mobilitet og bevægelse
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(1fb0990d-aac7-4661-b976-874e051c5ae6) // 15/2-2021

// Follow-up observations
Instance: c0e46d1a-bcd2-4b4f-bc74-db1237157d4e
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that focus on respirationsproblemer should be continued unchanged for Jens Hansen"
Usage: #inline
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* focus[+] = Reference(a881788d-1b27-46e3-8b76-607bc49876fd) // Respirationsproblemer
* effectiveDateTime = 2021-02-12
* valueCodeableConcept = $FSIII#E3 // Afsluttes

Instance: 4c160af3-dc6f-4405-a52a-b93447e06b68
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that focus on respirationsproblemer should be changed (inden for rammen) for Jens Hansen"
Usage: #inline
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* focus[+] = Reference(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse
* effectiveDateTime = 2021-02-14
* valueCodeableConcept = $FSIII#E2 // Ændres inden for rammen


// Followup encounters
Instance: 1fb0990d-aac7-4661-b976-874e051c5ae6
InstanceOf: KLGatewayCareEncounter
Description: "Encounter for a follow-up for Peter Olsen on February 15th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-15

// ------------------------------------------------------------------------------------------------

Instance: 374484d0-00cb-4b63-94d1-a0d984afc339
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-4"
Description: "Reporting of Peter Olsen after first encounter with home nursing"
* type = #collection
* timestamp = 2021-02-15T08:17:19Z
* insert CitizenEntry(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* insert ConditionEntryVersion(ad506910-9030-4ddb-b8ce-7bb6a69d808e, v4) // Problemer med mobilitet og bevægelse
* insert ConditionEntry(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
* insert GoalEntry(08c1aa9d-ab60-423d-900b-1fc2eba0a2a7) // Ingen begrænsninger i at gå
* insert PlannedInterventionEntry(36ac2e9c-cbe4-4f2d-978e-7cccaf6750c2) // Vedligehold af færdigheder 
* insert EncounterEntry(99e5f54d-f9cd-44ea-9901-b6b5d6bf9285) // 17/2-2021
* insert EncounterEntry(f5b962ec-f815-4f12-a1d8-bbd504db79ed) // 6/4-2021

// Conditions
Instance: ad506910-9030-4ddb-b8ce-7bb6a69d808e-v4 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
Usage: #inline
* id = "ad506910-9030-4ddb-b8ce-7bb6a69d808e" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* code = $FSIII#I2.1 // Problemer med mobilitet og bevægelse
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(99e5f54d-f9cd-44ea-9901-b6b5d6bf9285) // 17/2-2021

Instance: 39869f95-3b5f-4cbf-9af9-79d1344791f6
InstanceOf: KLGatewayCareCondition
Description: "Gå, lette begrænsninger for Peter Olsen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B2 // Lette begrænsninger
* code = $FSIII#J3.8 // Gå
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-15
* extension[followUpEncounter].valueReference = Reference(f5b962ec-f815-4f12-a1d8-bbd504db79ed) // 6/4-2021

// Goals
Instance: 08c1aa9d-ab60-423d-900b-1fc2eba0a2a7
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, ingen eller ubetydelige begrænsninger i at gå for Peter Olsen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* startDate = 2021-02-15
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B1 // Ingen eller ubetydelige begrænsninger
* addresses = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå 

// Planned interventions
Instance: 36ac2e9c-cbe4-4f2d-978e-7cccaf6750c2
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing vedligehold af færdigheder for Peter Olsen"
Usage: #inline
* status = #completed
* intent = #plan
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-18
* activity.detail.code.coding[level2] = $FSIII#H6.1 // Vedligehold af færdigheder
* activity.detail.status = #completed
* activity.detail.reasonReference = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå

// Followup encounters
Instance: 99e5f54d-f9cd-44ea-9901-b6b5d6bf9285
InstanceOf: KLGatewayCareEncounter
Description: "Encounter for a follow-up for Peter Olsen on February 17th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-17

Instance: f5b962ec-f815-4f12-a1d8-bbd504db79ed
InstanceOf: KLGatewayCareEncounter
Description: "Encounter for a follow-up for Peter Olsen on April 6th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-04-06

// ------------------------------------------------------------------------------------------------

Instance: cc93afc5-7849-4895-84eb-00bb5c129c0b // End nursing condition and intervention
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-5"
Description: "Reporting of Peter Olsen after second encounter with home nursing"
* type = #collection
* timestamp = 2021-02-17T11:51:44Z
* insert CitizenEntry(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* insert ConditionEntryVersion(ad506910-9030-4ddb-b8ce-7bb6a69d808e, v5) // Problemer med mobilitet og bevægelse
* insert PlannedInterventionEntryVersion(f99b219d-8b70-4423-a32f-d7e97d553305, v5) // Respirationsbehandling
* insert FollowUpObservationEntry(d54367e4-c2c5-49f6-bd28-a154af029b36) // Afsluttes

// Conditions
Instance: ad506910-9030-4ddb-b8ce-7bb6a69d808e-v5 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Problemer med mobilitet og bevægelse for Peter Olsen"
Usage: #inline
* id = "ad506910-9030-4ddb-b8ce-7bb6a69d808e" // Real id
* clinicalStatus = $ConditionClinical#inactive
* code = $FSIII#I2.1 // Problemer med mobilitet og bevægelse
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* recordedDate = 2021-02-15

// Planned interventions
Instance: f99b219d-8b70-4423-a32f-d7e97d553305-v5 // Fake id
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing respirationsbehandling for Peter Olsen"
Usage: #inline
* id = "f99b219d-8b70-4423-a32f-d7e97d553305" // Real id
* status = #completed
* intent = #plan
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* period.start = 2021-02-10
* period.end = 2021-02-17
* activity.detail.code.coding[level2] = $FSIII#G1.30 // Respirationsbehandling
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse

// Follow-up observations
Instance: d54367e4-c2c5-49f6-bd28-a154af029b36
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that focus on problemer med mobilitet og bevægelse afsluttes for Peter Olsen"
Usage: #inline
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* focus[+] = Reference(ad506910-9030-4ddb-b8ce-7bb6a69d808e) // Problemer med mobilitet og bevægelse
* effectiveDateTime = 2021-02-17
* valueCodeableConcept = $FSIII#E3 // Afsluttes

// ------------------------------------------------------------------------------------------------

Instance: 1652f2a9-510a-4cd3-8fc4-8b69d0ffedae
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-PeterOlsen-6"
Description: "Reporting of Peter Olsen after first encounter with training"
* type = #collection
* timestamp = 2021-02-18T09:11:29Z
* insert CitizenEntry(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* insert ConditionEntry(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
* insert CitizensOwnObservationEntry(2d5aab71-9c3f-49b2-92e0-07619ae321e5) // Udfører selv
* insert CitizensOwnObservationEntry(f35aa1be-0ed2-4d86-8d62-178a7d20c923) // Oplever ikke begrænsninger
* insert EncounterEntry(f5b962ec-f815-4f12-a1d8-bbd504db79ed) // 6/4-2021

// Citizens own observations
Instance: 2d5aab71-9c3f-49b2-92e0-07619ae321e5
InstanceOf: KLGatewayCareCitizensOwnObservation
Description: "Peter Olsen udfører selv at gå"
Usage: #inline
* status = #final
* code = $FSIII#C // Udførelse
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* focus = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
* effectiveDateTime = 2020-08-21
* valueCodeableConcept = $FSIII#C1 // Udfører selv

Instance: f35aa1be-0ed2-4d86-8d62-178a7d20c923
InstanceOf: KLGatewayCareCitizensOwnObservation
Description: "Peter Olsen oplever ikke begrænsninger i at gå"
Usage: #inline
* status = #final
* code = $FSIII#D // Betydning
* subject = Reference(4a45e179-ace1-4ace-9991-8276c0ba490a) // Peter Olsen
* focus = Reference(39869f95-3b5f-4cbf-9af9-79d1344791f6) // Gå
* effectiveDateTime = 2020-08-21
* valueCodeableConcept = $FSIII#D1 // Oplever ikke begrænsninger

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