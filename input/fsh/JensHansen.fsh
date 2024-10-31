Alias: $FSIII = urn:oid:1.2.208.176.2.21

// ------------------------------------------------------------------------------------------------

Instance: 3304e5f8-4b3f-4c19-8c68-e36c573f3f98
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-JensHansen-1"
Description: "Reporting of Jens Hansen after first encounter with Home Care Assessor at the hospital"
* type = #collection
* timestamp = 2021-02-10T11:14:09Z
* insert CitizenEntry(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* insert ConditionEntry(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning
* insert ConditionEntry(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner
* insert ConditionEntry(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad
* insert ConditionEntry(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde
* insert ConditionEntry(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
* insert ConditionEntry(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
* insert ConditionEntry(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke
* insert GoalEntry(91bed89f-4365-4878-849c-61554de55248) // Moderate begrænsninger i af- og påklædning
* insert GoalEntry(33cd1262-c00f-440a-9e30-620166ff6b7a) // Moderate begrænsninger i at udføre daglige rutiner
* insert GoalEntry(a638744a-c6a9-49c5-940e-e16f94e806b9) // Moderate begrænsninger i at lave mad
* insert GoalEntry(1c62dbc4-91f7-4ad8-86be-783b7158c475) // Moderate begrænsninger i at lave husligt arbejde
* insert GoalEntry(cc6288f9-48d4-4aac-b640-b750a2dfeb0d) // Lette begrænsninger i at gå
* insert GoalEntry(dc40bf0d-4411-4317-b424-9bad5045836e) // Lette begrænsninger i at bevæge sig omkring
* insert GoalEntry(1efb9aec-4e79-4ead-8502-50168f569a18) // Moderate begrænsninger i muskelstyrke
* insert PlannedInterventionEntry(9ace0320-a6bd-4d90-bfed-b6e5d219dba3) // Personlig hygiejne 
* insert PlannedInterventionEntry(4f325b94-99fe-4781-9e05-97e27279f8ec) // Hverdagens aktiviteter 
* insert PlannedInterventionEntry(13c640c6-98d9-4066-abb3-ad7cd3072999) // Madservice 
* insert PlannedInterventionEntry(8a2e5904-ed0f-4d08-a9c2-fd75fa85cfb7) // Rengøring 
* insert PlannedInterventionEntry(d8130c0c-d8a1-47c7-acdf-d32f23c58db9) // Mobilitet
* insert EncounterEntry(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

// Conditions
Instance: d45b02d1-be76-4968-812b-6b32338ad8ad
InstanceOf: KLGatewayCareCondition
Description: "Af- og påklædning, svære begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J1.3 // Af- og påklædning
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10 
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: 34665f6d-7573-46fb-8b4d-72f30641284b
InstanceOf: KLGatewayCareCondition
Description: "Udføre daglige rutiner, svære begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J2.3 // Udføre daglige rutiner
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: 067e0542-1d8a-404d-b6db-f2bfa6a03c2e
InstanceOf: KLGatewayCareCondition
Description: "Lave mad, svære begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J2.2 // Lave mad
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: cd8643fd-8a42-4ef8-81b4-bf5ec2253f14
InstanceOf: KLGatewayCareCondition
Description: "Lave husligt arbejde, svære begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J2.1 // Lave husligt arbejde
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: 806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd
InstanceOf: KLGatewayCareCondition
Description: "Gå, moderate begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J3.8 // Gå
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: 5ad5649a-6317-41de-8cc4-364b9bafd298
InstanceOf: KLGatewayCareCondition
Description: "Bevæge sig omkring, moderate begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J3.2 // Bevæge sig omkring
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: fcc4040a-1803-434f-b633-8b354c5fbfb4
InstanceOf: KLGatewayCareCondition
Description: "Muskelstyrke, svære begrænsninger for Jens Hansen"
Usage: #inline
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J3.7 // Muskelstyrke
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

// Goals
Instance: 91bed89f-4365-4878-849c-61554de55248
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i af- og påklædning for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B3 // Moderate begrænsninger
* addresses = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

Instance: 33cd1262-c00f-440a-9e30-620166ff6b7a
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i at udføre daglige rutiner for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B3 // Moderate begrænsninger
* addresses = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner

Instance: a638744a-c6a9-49c5-940e-e16f94e806b9
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i at lave mad for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B3 // Moderate begrænsninger
* addresses = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad

Instance: 1c62dbc4-91f7-4ad8-86be-783b7158c475
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i at lave husligt arbejde for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B3 // Moderate begrænsninger
* addresses = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

Instance: cc6288f9-48d4-4aac-b640-b750a2dfeb0d
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, lette begrænsninger i at gå for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B2 // Lette begrænsninger
* addresses = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå 

Instance: dc40bf0d-4411-4317-b424-9bad5045836e
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, lette begrænsninger i at bevæge sig omkring for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B2 // Lette begrænsninger
* addresses = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring

Instance: 1efb9aec-4e79-4ead-8502-50168f569a18
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i muskelstyrke for Jens Hansen"
Usage: #inline
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B3 // Moderate begrænsninger
* addresses = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

// Planned interventions
Instance: 9ace0320-a6bd-4d90-bfed-b6e5d219dba3
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing personal hygiene for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#H1.1 // Personlig hygiejne
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

Instance: 4f325b94-99fe-4781-9e05-97e27279f8ec
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing hverdagens aktiviteter for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#H1.5 // Hverdagens aktiviteter
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner
* activity.detail.reasonReference[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

Instance: 13c640c6-98d9-4066-abb3-ad7cd3072999
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing madservice for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#H1.11 // Madservice
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad

Instance: 8a2e5904-ed0f-4d08-a9c2-fd75fa85cfb7
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing rengøring for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#H1.8 // Rengøring
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

Instance: d8130c0c-d8a1-47c7-acdf-d32f23c58db9
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing mobilitet for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#H1.4 // Mobilitet
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
* activity.detail.reasonReference[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
* activity.detail.reasonReference[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

// Followup encounters
Instance: 4ca8acfb-1fd0-41b3-8a82-cac79ff9db51
InstanceOf: KLGatewayCareEncounter
Description: "Encounter for a follow-up for Jens Hansen on February 15th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-15

// ------------------------------------------------------------------------------------------------
Instance: b1c5348b-fe9f-4afc-96ff-8c42b6c6c7ff
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-JensHansen-2"
Description: "Reporting of Jens Hansen after second encounter with Home Care Assessor updating follow-up date"
* type = #collection
* timestamp = 2021-02-15T08:39:34Z
* insert CitizenEntry(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* insert ConditionEntryVersion(d45b02d1-be76-4968-812b-6b32338ad8ad, v2) // Af- og påklædning
* insert ConditionEntryVersion(34665f6d-7573-46fb-8b4d-72f30641284b, v2) // Udføre daglige rutiner
* insert ConditionEntryVersion(067e0542-1d8a-404d-b6db-f2bfa6a03c2e, v2) // Lave mad
* insert ConditionEntryVersion(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14, v2) // Lave husligt arbejde
* insert ConditionEntryVersion(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd, v2) // Gå
* insert ConditionEntryVersion(5ad5649a-6317-41de-8cc4-364b9bafd298, v2) // Bevæge sig omkring
* insert ConditionEntryVersion(fcc4040a-1803-434f-b633-8b354c5fbfb4, v2) // Muskelstyrke
* insert EncounterEntry(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021
* insert FollowUpObservationEntry(4438410f-c879-45ec-9626-75c85fa1449a) // Fortsættes uændret

// Conditions
Instance: d45b02d1-be76-4968-812b-6b32338ad8ad-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Af- og påklædning, svære begrænsninger for Jens Hansen"
Usage: #inline
* id = "d45b02d1-be76-4968-812b-6b32338ad8ad" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J1.3 // Af- og påklædning
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

Instance: 34665f6d-7573-46fb-8b4d-72f30641284b-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Udføre daglige rutiner, svære begrænsninger for Jens Hansen"
Usage: #inline
* id = "34665f6d-7573-46fb-8b4d-72f30641284b" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J2.3 // Udføre daglige rutiner
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

Instance: 067e0542-1d8a-404d-b6db-f2bfa6a03c2e-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Lave mad, svære begrænsninger for Jens Hansen"
Usage: #inline
* id = "067e0542-1d8a-404d-b6db-f2bfa6a03c2e" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J2.2 // Lave mad
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

Instance: cd8643fd-8a42-4ef8-81b4-bf5ec2253f14-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Lave husligt arbejde, svære begrænsninger for Jens Hansen"
Usage: #inline
* id = "cd8643fd-8a42-4ef8-81b4-bf5ec2253f14" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J2.1 // Lave husligt arbejde
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

Instance: 806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Gå, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J3.8 // Gå
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

Instance: 5ad5649a-6317-41de-8cc4-364b9bafd298-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Bevæge sig omkring, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "5ad5649a-6317-41de-8cc4-364b9bafd298" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J3.2 // Bevæge sig omkring
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

Instance: fcc4040a-1803-434f-b633-8b354c5fbfb4-v2 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Muskelstyrke, svære begrænsninger for Jens Hansen"
Usage: #inline
* id = "fcc4040a-1803-434f-b633-8b354c5fbfb4" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B4 // Svære begrænsninger
* code = $FSIII#J3.7 // Muskelstyrke
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b) // 24/2-2021

// Followup encounters
Instance: 56c8d2c3-5da1-4a33-a358-d3ecfb67ef3b
InstanceOf: KLGatewayCareEncounter
Description: "Encounter for a follow-up for Jens Hansen on February 15th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-24

// Followup Observations
Instance: 4438410f-c879-45ec-9626-75c85fa1449a
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that focus on all conditions should be continued unchanged for Jens Hansen"
Usage: #inline
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* focus[+] = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning
* focus[+] = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner
* focus[+] = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad
* focus[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde
* focus[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
* focus[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
* focus[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke
* effectiveDateTime = 2021-02-15
* valueCodeableConcept = $FSIII#E1 // Fortsættes uændret


// ------------------------------------------------------------------------------------------------

Instance: 643c3e42-ab90-4354-9b98-f01b4740d3d9
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-JensHansen-3"
Description: "Reporting of Jens Hansen after first encounter with Home Care Assessor at the hospital"
* type = #collection
* timestamp = 2021-02-24T08:46:36Z
* insert CitizenEntry(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* insert ConditionEntryVersion(d45b02d1-be76-4968-812b-6b32338ad8ad, v3) // Af- og påklædning
* insert ConditionEntryVersion(34665f6d-7573-46fb-8b4d-72f30641284b, v3) // Udføre daglige rutiner
* insert ConditionEntryVersion(067e0542-1d8a-404d-b6db-f2bfa6a03c2e, v3) // Lave mad
* insert ConditionEntryVersion(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14, v3) // Lave husligt arbejde
* insert ConditionEntryVersion(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd, v3) // Gå
* insert ConditionEntryVersion(5ad5649a-6317-41de-8cc4-364b9bafd298, v3) // Bevæge sig omkring
* insert ConditionEntryVersion(fcc4040a-1803-434f-b633-8b354c5fbfb4, v3) // Muskelstyrke
* insert GoalEntryVersion(91bed89f-4365-4878-849c-61554de55248, v3) //  Ingen begrænsninger i af- og påklædning
* insert GoalEntryVersion(33cd1262-c00f-440a-9e30-620166ff6b7a, v3) // Ingen begrænsninger i at udføre daglige rutiner
* insert GoalEntryVersion(a638744a-c6a9-49c5-940e-e16f94e806b9, v3) // Lette begrænsninger i at lave mad
* insert GoalEntryVersion(1c62dbc4-91f7-4ad8-86be-783b7158c475, v3) // Lette begrænsninger i at lave husligt arbejde
* insert GoalEntryVersion(cc6288f9-48d4-4aac-b640-b750a2dfeb0d, v3) // Ingen begrænsninger i at gå
* insert GoalEntryVersion(dc40bf0d-4411-4317-b424-9bad5045836e, v3) // Ingen begrænsninger i at bevæge sig omkring
* insert GoalEntryVersion(1efb9aec-4e79-4ead-8502-50168f569a18, v3) // Ingen begrænsninger i muskelstyrke
* insert PlannedInterventionEntryVersion(9ace0320-a6bd-4d90-bfed-b6e5d219dba3, v3) // Personlig hygiejne afslttet 
* insert PlannedInterventionEntryVersion(4f325b94-99fe-4781-9e05-97e27279f8ec, v3) // Hverdagens aktiviteter ændret
* insert PlannedInterventionEntryVersion(d8130c0c-d8a1-47c7-acdf-d32f23c58db9, v3) // Mobilitet afsluttet
* insert PlannedInterventionEntry(7c22ac66-f42b-476e-8d54-0607ea06f9bf) // RH Personlig hygiejne
* insert PlannedInterventionEntry(5eb9f137-bd44-481a-95b0-18dacdb4c757) // RH Hverdagens aktiviteter
* insert PlannedInterventionEntry(e353b5b7-5e03-4142-bb74-e49015d95c50) // RH Mobilitet
* insert EncounterEntry(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021
* insert FollowUpObservationEntry(e434699d-5f4e-491b-9f76-5c5dbd539edc) // Revisitation


// Conditions
Instance: d45b02d1-be76-4968-812b-6b32338ad8ad-v3 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Af- og påklædning, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "d45b02d1-be76-4968-812b-6b32338ad8ad" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J1.3 // Af- og påklædning
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10 
* extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

Instance: 34665f6d-7573-46fb-8b4d-72f30641284b-v3 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Udføre daglige rutiner, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "34665f6d-7573-46fb-8b4d-72f30641284b" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J2.3 // Udføre daglige rutiner
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

Instance: 067e0542-1d8a-404d-b6db-f2bfa6a03c2e-v3 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Lave mad, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "067e0542-1d8a-404d-b6db-f2bfa6a03c2e" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J2.2 // Lave mad
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

Instance: cd8643fd-8a42-4ef8-81b4-bf5ec2253f14-v3 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Lave husligt arbejde, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "cd8643fd-8a42-4ef8-81b4-bf5ec2253f14" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J2.1 // Lave husligt arbejde
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

Instance: 806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd-v3 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Gå, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J3.8 // Gå
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

Instance: 5ad5649a-6317-41de-8cc4-364b9bafd298-v3 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Bevæge sig omkring, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "5ad5649a-6317-41de-8cc4-364b9bafd298" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J3.2 // Bevæge sig omkring
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

Instance: fcc4040a-1803-434f-b633-8b354c5fbfb4-v3 // Fake id
InstanceOf: KLGatewayCareCondition
Description: "Muskelstyrke, moderate begrænsninger for Jens Hansen"
Usage: #inline
* id = "fcc4040a-1803-434f-b633-8b354c5fbfb4" // Real id
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $FSIII#B3 // Moderate begrænsninger
* code = $FSIII#J3.7 // Muskelstyrke
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(fbf243bb-9d70-489d-875d-87e14c980d7c) // 10/3-2021

// Goals
Instance: 91bed89f-4365-4878-849c-61554de55248-v3 // Fake id
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, ingen begrænsninger i af- og påklædning for Jens Hansen"
Usage: #inline
* id = "91bed89f-4365-4878-849c-61554de55248" // Real id
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
* addresses = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

Instance: 33cd1262-c00f-440a-9e30-620166ff6b7a-v3 // Fake id
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, ingen begrænsninger i at udføre daglige rutiner for Jens Hansen"
Usage: #inline
* id = "33cd1262-c00f-440a-9e30-620166ff6b7a" // Real id
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
* addresses = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner

Instance: a638744a-c6a9-49c5-940e-e16f94e806b9-v3 // Fake id
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, lette begrænsninger i at lave mad for Jens Hansen"
Usage: #inline
* id = "a638744a-c6a9-49c5-940e-e16f94e806b9" // Real id
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B2 // Lette begrænsninger
* addresses = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad

Instance: 1c62dbc4-91f7-4ad8-86be-783b7158c475-v3 // Fake id
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, lette begrænsninger i at lave husligt arbejde for Jens Hansen"
Usage: #inline
* id = "1c62dbc4-91f7-4ad8-86be-783b7158c475" // Real id
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B2 // Lette begrænsninger
* addresses = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

Instance: cc6288f9-48d4-4aac-b640-b750a2dfeb0d-v3 // Fake id
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, ingen begrænsninger i at gå for Jens Hansen"
Usage: #inline
* id = "cc6288f9-48d4-4aac-b640-b750a2dfeb0d" // Real id
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
* addresses = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå 

Instance: dc40bf0d-4411-4317-b424-9bad5045836e-v3 // Fake id
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, ingen begrænsninger i at bevæge sig omkring for Jens Hansen"
Usage: #inline
* id = "dc40bf0d-4411-4317-b424-9bad5045836e" // Real id
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
* addresses = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring

Instance: 1efb9aec-4e79-4ead-8502-50168f569a18-v3 // Fake id
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, ingen begrænsninger i muskelstyrke for Jens Hansen"
Usage: #inline
* id = "1efb9aec-4e79-4ead-8502-50168f569a18" // Real id
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $FSIII#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $FSIII#B1 // Ingen begrænsninger
* addresses = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

// Planned interventions
Instance: 9ace0320-a6bd-4d90-bfed-b6e5d219dba3-v3 // Fake id
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing personal hygiene for Jens Hansen"
Usage: #inline
* id = "9ace0320-a6bd-4d90-bfed-b6e5d219dba3" // Real id
* status = #completed
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* period.end = 2021-02-24
* activity.detail.code.coding[level2] = $FSIII#H1.1 // Personlig hygiejne
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

Instance: 4f325b94-99fe-4781-9e05-97e27279f8ec-v3 // Fake id
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing hverdagens aktiviteter for Jens Hansen"
Usage: #inline
* id = "4f325b94-99fe-4781-9e05-97e27279f8ec" // Real id
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $FSIII#H1.5 // Hverdagens aktiviteter
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

Instance: d8130c0c-d8a1-47c7-acdf-d32f23c58db9-v3 // Fake id
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing mobilitet for Jens Hansen"
Usage: #inline
* id = "d8130c0c-d8a1-47c7-acdf-d32f23c58db9" // Real id
* status = #completed
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* period.end = 2021-02-24
* activity.detail.code.coding[level2] = $FSIII#H1.4 // Mobilitet
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
* activity.detail.reasonReference[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
* activity.detail.reasonReference[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

Instance: 7c22ac66-f42b-476e-8d54-0607ea06f9bf
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing RH personlig hygiejne for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-25
* activity.detail.code.coding[level2] = $FSIII#H2.5 // RH Personlig hygiejne
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

Instance: 5eb9f137-bd44-481a-95b0-18dacdb4c757
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing RH hverdagens aktiviteter for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-25
* activity.detail.code.coding[level2] = $FSIII#H2.2 // RH Hverdagens aktiviteter
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner

Instance: e353b5b7-5e03-4142-bb74-e49015d95c50
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing RH mobilitet for Jens Hansen"
Usage: #inline
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-25
* activity.detail.code.coding[level2] = $FSIII#H2.4 // RH Mobilitet
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
* activity.detail.reasonReference[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
* activity.detail.reasonReference[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

// Followup encounters
Instance: fbf243bb-9d70-489d-875d-87e14c980d7c
InstanceOf: KLGatewayCareEncounter
Description: "Encounter for a follow-up for Jens Hansen on Martch 10th, 2021"
Usage: #inline
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-03-10

// Followup Observations
Instance: e434699d-5f4e-491b-9f76-5c5dbd539edc
InstanceOf: KLGatewayCareFollowUpObservation
Description: "Follow-up observation documenting that focus on all conditions should be continued unchanged for Jens Hansen"
Usage: #inline
* status = #final
* code = $SnomedCT#712744002
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* focus[+] = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning
* focus[+] = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner
* focus[+] = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad
* focus[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde
* focus[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
* focus[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
* focus[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke
* effectiveDateTime = 2021-02-24
* valueCodeableConcept = $FSIII#E4 // Revisitation

// ------------------------------------------------------------------------------------------------

// Citizen
Instance: eec9e8e9-221d-4eae-a54d-cdd403661def
InstanceOf: KLGatewayCareCitizen
Description: "Citizen Jens Hansen"
Usage: #inline
* identifier.use = #official
* identifier.value = "0101410001"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"