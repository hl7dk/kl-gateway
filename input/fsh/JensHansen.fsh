Alias: $KLTerminology = http://kl.dk/fhir/common/caresocial/CodeSystem/FSIII

// ------------------------------------------------------------------------------------------------

Instance: 3304e5f8-4b3f-4c19-8c68-e36c573f3f98
InstanceOf: KLGatewayCareDeliveryReport
Title: "DeliveryReport-FirstJensHansen"
Description: "Reporting Jens Hansen after first encounter with Home Care Assessor at the hospital"
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
// * insert BuildCondition(J1.3, B4, eec9e8e9-221d-4eae-a54d-cdd403661def, 2021-02-10, 4ca8acfb-1fd0-41b3-8a82-cac79ff9db51)
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B4 // Svære begrænsninger
* code = $KLTerminology#J1.3 // Af- og påklædning
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10 
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: 34665f6d-7573-46fb-8b4d-72f30641284b
InstanceOf: KLGatewayCareCondition
Description: "Udføre daglige rutiner, svære begrænsninger for Jens Hansen"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B4 // Svære begrænsninger
* code = $KLTerminology#J2.3 // Udføre daglige rutiner
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: 067e0542-1d8a-404d-b6db-f2bfa6a03c2e
InstanceOf: KLGatewayCareCondition
Description: "Lave mad, svære begrænsninger for Jens Hansen"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B4 // Svære begrænsninger
* code = $KLTerminology#J2.2 // Lave mad
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: cd8643fd-8a42-4ef8-81b4-bf5ec2253f14
InstanceOf: KLGatewayCareCondition
Description: "Lave husligt arbejde, svære begrænsninger for Jens Hansen"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B4 // Svære begrænsninger
* code = $KLTerminology#J2.1 // Lave husligt arbejde
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: 806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd
InstanceOf: KLGatewayCareCondition
Description: "Gå, moderate begrænsninger for Jens Hansen"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B3 // Moderate begrænsninger
* code = $KLTerminology#J3.8 // Gå
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: 5ad5649a-6317-41de-8cc4-364b9bafd298
InstanceOf: KLGatewayCareCondition
Description: "Bevæge sig omkring, moderate begrænsninger for Jens Hansen"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B3 // Moderate begrænsninger
* code = $KLTerminology#J3.2 // Bevæge sig omkring
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

Instance: fcc4040a-1803-434f-b633-8b354c5fbfb4
InstanceOf: KLGatewayCareCondition
Description: "Muskelstyrke, svære begrænsninger for Jens Hansen"
* clinicalStatus = $ConditionClinical#active
* category = $ConditionCategory#problem-list-item
* severity = $KLTerminology#B4 // Svære begrænsninger
* code = $KLTerminology#J3.7 // Muskelstyrke
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* recordedDate = 2021-02-10
* extension[followUpEncounter].valueReference = Reference(4ca8acfb-1fd0-41b3-8a82-cac79ff9db51) // 15/2-2021

// Goals
Instance: 91bed89f-4365-4878-849c-61554de55248
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i af- og påklædning for Jens Hansen"
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $KLTerminology#B3 // Moderate begrænsninger
* addresses = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

Instance: 33cd1262-c00f-440a-9e30-620166ff6b7a
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i at udføre daglige rutiner for Jens Hansen"
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $KLTerminology#B3 // Moderate begrænsninger
* addresses = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre daglige rutiner

Instance: a638744a-c6a9-49c5-940e-e16f94e806b9
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i at lave mad for Jens Hansen"
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $KLTerminology#B3 // Moderate begrænsninger
* addresses = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad

Instance: 1c62dbc4-91f7-4ad8-86be-783b7158c475
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i at lave husligt arbejde for Jens Hansen"
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $KLTerminology#B3 // Moderate begrænsninger
* addresses = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

Instance: cc6288f9-48d4-4aac-b640-b750a2dfeb0d
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, lette begrænsninger i at gå for Jens Hansen"
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $KLTerminology#B2 // Lette begrænsninger
* addresses = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå 

Instance: dc40bf0d-4411-4317-b424-9bad5045836e
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, lette begrænsninger i at bevæge sig omkring for Jens Hansen"
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $KLTerminology#B2 // Lette begrænsninger
* addresses = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring

Instance: 1efb9aec-4e79-4ead-8502-50168f569a18
InstanceOf: KLGatewayCareGoal
Description: "Forventet tilstand, moderate begrænsninger i muskelstyrke for Jens Hansen"
* lifecycleStatus = #planned
* category = $KLCommonCodes#ca552020-6ed1-4cdc-b0d4-32697f1f27ad
* description = $KLTerminology#e182c5dc-9f91-474a-92e8-f62be3d498f4
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* startDate = 2021-02-10
* target.measure = $KLCommonCodes#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target.detailCodeableConcept = $KLTerminology#B3 // Moderate begrænsninger
* addresses = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

// Planned interventions
Instance: 9ace0320-a6bd-4d90-bfed-b6e5d219dba3
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing personal hygiene for Jens Hansen"
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $KLTerminology#H1.1 // Personlig hygiejne
* activity.detail.status = #in-progress
* activity.detail.reasonReference = Reference(d45b02d1-be76-4968-812b-6b32338ad8ad) // Af- og påklædning

Instance: 4f325b94-99fe-4781-9e05-97e27279f8ec
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing hverdagens aktiviteter for Jens Hansen"
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $KLTerminology#H1.5 // Hverdagens aktiviteter
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(34665f6d-7573-46fb-8b4d-72f30641284b) // Udføre dagelig rutiner
* activity.detail.reasonReference[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

Instance: 13c640c6-98d9-4066-abb3-ad7cd3072999
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing madservice for Jens Hansen"
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $KLTerminology#H1.11 // Madservice
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(067e0542-1d8a-404d-b6db-f2bfa6a03c2e) // Lave mad

Instance: 8a2e5904-ed0f-4d08-a9c2-fd75fa85cfb7
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing rengøring for Jens Hansen"
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $KLTerminology#H1.8 // Rengøring
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(cd8643fd-8a42-4ef8-81b4-bf5ec2253f14) // Lave husligt arbejde

Instance: d8130c0c-d8a1-47c7-acdf-d32f23c58db9
InstanceOf: KLGatewayCarePlannedIntervention
Description: "Planned intervention doing mobilitet for Jens Hansen"
* status = #active
* intent = #plan
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-12
* activity.detail.code.coding[level2] = $KLTerminology#H1.4 // Mobilitet
* activity.detail.status = #in-progress
* activity.detail.reasonReference[+] = Reference(806d1cf8-5a4a-4c0d-a020-8a3bb3eacebd) // Gå
* activity.detail.reasonReference[+] = Reference(5ad5649a-6317-41de-8cc4-364b9bafd298) // Bevæge sig omkring
* activity.detail.reasonReference[+] = Reference(fcc4040a-1803-434f-b633-8b354c5fbfb4) // Muskelstyrke

// Followup encounters
Instance: 4ca8acfb-1fd0-41b3-8a82-cac79ff9db51
InstanceOf: KLGatewayCareEncounter
Description: "Encounter for a follow-up for Jens Hansen on February 15th, 2021"
* status = #planned
* class = $v3-ActCode#HH
* type = $KLCommonCodes#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(eec9e8e9-221d-4eae-a54d-cdd403661def) // Jens Hansen
* period.start = 2021-02-15

// ------------------------------------------------------------------------------------------------

// Citizen
Instance: eec9e8e9-221d-4eae-a54d-cdd403661def
InstanceOf: KLGatewayCareCitizen
Description: "Citizen Jens Hansen"
* identifier.use = #official
* identifier.value = "0101410001"
* identifier.system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier.use = #official
* managingOrganization.identifier.value =  "123456789012345"
* managingOrganization.identifier.system = "urn:oid:1.2.208.176.1.1"